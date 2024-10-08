//===- FSMToSMT.cpp -----------------------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
#include "circt/Dialect/Comb/CombOps.h"
#include "circt/Conversion/FSMToSMT.h"
#include "circt/Dialect/Comb/CombOps.h"
#include "circt/Dialect/FSM/FSMOps.h"
#include "circt/Dialect/FSM/FSMOps.h"
#include "circt/Dialect/HW/HWOps.h"
#include "circt/Dialect/SMT/SMTOps.h"
#include "circt/Support/BackedgeBuilder.h"
#include "mlir/Conversion/ReconcileUnrealizedCasts/ReconcileUnrealizedCasts.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/BuiltinAttributes.h"
#include "mlir/IR/MLIRContext.h"
#include "mlir/IR/Operation.h"
#include "mlir/IR/Operation.h"
#include "mlir/IR/Region.h"
#include "mlir/IR/Value.h"
#include "mlir/IR/Value.h"
#include "mlir/Parser/Parser.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassManager.h"
#include "llvm/ADT/SmallVector.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Transforms/DialectConversion.h"
#include <algorithm>
#include <circt/Dialect/HW/HWTypes.h>
#include <cstdlib>
#include <memory>
#include <utility>

namespace circt {
#define GEN_PASS_DEF_CONVERTFSMTOSMT
#include "circt/Conversion/Passes.h.inc"
} // namespace circt

using namespace mlir;
using namespace circt;
using namespace fsm;


//===----------------------------------------------------------------------===//
// Convert FSM to SMT pass
//===----------------------------------------------------------------------===//

namespace {

class MachineOpConverter{
  public: 
    MachineOpConverter(OpBuilder &builder, MachineOp machineOp)
      : machineOp(machineOp), b(builder){}
    LogicalResult dispatch();
  private: 
    MachineOp machineOp;
    OpBuilder &b;
};
} //namespace 

struct Transition{
  int from;
  int to;
  bool hasGuard, hasAction, hasOutput;
  Region *guard, *action, *output;
};


void printFsmArgVals (const llvm::SmallVector<std::pair<mlir::Value, mlir::Value>>& fsmArgVals){
  for (auto [v1, v2] : fsmArgVals)
    llvm::outs()<<"\nv1: "<<v1<<", v2: "<<v2;
}


int insertStates(llvm::SmallVector<std::string> &states, const std::string& st){
  for(auto [id, s]: llvm::enumerate(states)){
    if(s == st)
      return id;
  }
  states.push_back(st);
  return states.size()-1;
}

circt::smt::IntPredicate getSmtPred(circt::comb::ICmpPredicate cmpPredicate){
  switch (cmpPredicate) {
      case comb::ICmpPredicate::slt:
          return smt::IntPredicate::lt;
      case comb::ICmpPredicate::sle:
          return smt::IntPredicate::le;
      case comb::ICmpPredicate::sgt:
          return smt::IntPredicate::gt;
      case comb::ICmpPredicate::sge:
          return smt::IntPredicate::ge;
      case comb::ICmpPredicate::ult:
          return smt::IntPredicate::lt;
      case comb::ICmpPredicate::ule:
          return smt::IntPredicate::le;
      case comb::ICmpPredicate::ugt:
          return smt::IntPredicate::gt;
      case comb::ICmpPredicate::uge:
          return smt::IntPredicate::ge;
  }
}

mlir::Value getCombValue(Operation &op, Location &loc, OpBuilder &b, llvm::SmallVector<mlir::Value> args){

  if (auto addOp = llvm::dyn_cast<comb::AddOp>(op))
    return b.create<smt::IntAddOp>(loc, b.getType<smt::IntType>(), args);
  if (auto andOp = llvm::dyn_cast<comb::AndOp>(op))
    return b.create<smt::AndOp>(loc, b.getType<smt::BoolType>(), args);
  if (auto xorOp = llvm::dyn_cast<comb::XorOp>(op))
    return b.create<smt::XOrOp>(loc, b.getType<smt::BoolType>(), args);
  if (auto orOp = llvm::dyn_cast<comb::OrOp>(op))
    return b.create<smt::OrOp>(loc, b.getType<smt::BoolType>(), args);
  if (auto mulOp = llvm::dyn_cast<comb::MulOp>(op))
    return b.create<smt::IntMulOp>(loc, b.getType<smt::IntType>(), args);
  if (auto icmp = llvm::dyn_cast<comb::ICmpOp>(op)){
    if(icmp.getPredicate() == circt::comb::ICmpPredicate::eq)
      return b.create<smt::EqOp>(loc, args);
    if(icmp.getPredicate() == circt::comb::ICmpPredicate::ne){
      return b.create<smt::DistinctOp>(loc, args);
    auto predicate = getSmtPred(icmp.getPredicate());
    return b.create<smt::IntCmpOp>(loc, predicate, args[0], args[1]);
    }
  }
}

mlir::Value getSmtValue(mlir::Value op, const llvm::SmallVector<std::pair<mlir::Value, mlir::Value>>& fsmArgVals, OpBuilder &b, Location &loc){
  // op can be an arg/var of the fsm
  for (auto fav: fsmArgVals)
    if (op == fav.first){
      return fav.second;
    } 
  // op can be a constant
  if (auto constop = dyn_cast<hw::ConstantOp>(op.getDefiningOp())){
    // this is why bools wont work. cant mix them up in operations
    if (constop.getType().getIntOrFloatBitWidth()==1){
      // this is prob a very stupid way to do this
      // printFsmArgVals(fsmArgVals);
      bool bval = constop.getValueAttr().getValue().getBoolValue();
      return b.create<smt::BoolConstantOp>(loc, bval);
    }
    return b.create<smt::IntConstantOp>(loc, constop.getValueAttr());
  }
  if (op.getDefiningOp()->getName().getDialect()->getNamespace() == "comb"){
    // op can be the result of a comb operation 
    auto op1 = getSmtValue(op.getDefiningOp()->getOperand(0), fsmArgVals, b, loc);
    auto op2 = getSmtValue(op.getDefiningOp()->getOperand(1), fsmArgVals, b, loc);
    llvm::SmallVector<mlir::Value> combArgs = {op1, op2};
    return getCombValue(*op.getDefiningOp(), loc, b, combArgs);
  }
}


Transition parseTransition(fsm::TransitionOp t, int from, llvm::SmallVector<std::string> &states, 
    Location &loc, OpBuilder &b){
  Transition tr = {.from = from, .to = insertStates(states, t.getNextState().str())};
  if (!t.getGuard().empty()){
    tr.hasGuard = true;
    tr.guard = &t.getGuard();
  }
  if(!t.getAction().empty()){
    tr.hasAction = true;
    tr.action = &t.getAction();
  }
  // todo: output
  return tr;
}


LogicalResult MachineOpConverter::dispatch(){
  b.setInsertionPoint(machineOp);
  auto loc = machineOp.getLoc();
  auto args = machineOp.getArguments();
  llvm::SmallVector<mlir::Type> argVarTypes;
  llvm::SmallVector<mlir::Value> argVars;
  int numArgs = 0;
  int numOut = 0;


  mlir::TypeRange typeRange;
  mlir::ValueRange valueRange; 

  auto solver = b.create<smt::SolverOp>(loc, typeRange, valueRange);

  solver.getBodyRegion().emplaceBlock();

  b.setInsertionPointToStart(solver.getBody());

  // fsm arguments
  for (auto a : args){
    if (a.getType().getIntOrFloatBitWidth()==1){
      auto intVal = b.getType<smt::BoolType>();
      argVarTypes.push_back(intVal);
      argVars.push_back(a);
    } else {
      auto intVal = b.getType<smt::IntType>();
      argVarTypes.push_back(intVal);
      argVars.push_back(a);
    }
    numArgs++;
  }

  // fsm outputs
  if (machineOp.getResultTypes().size() > 0){
    for (auto o : machineOp.getResultTypes()){
      if (o.getIntOrFloatBitWidth() == 1 ){
        auto intVal = b.getType<smt::BoolType>();
        argVarTypes.push_back(intVal);
        mlir::BoolAttr intAttr = b.getBoolAttr(false);
        auto ov = b.create<smt::BoolConstantOp>(loc, intAttr);
        argVars.push_back(ov);
      } else {
        auto intVal = b.getType<smt::IntType>();
        argVarTypes.push_back(intVal);
        mlir::IntegerAttr intAttr = b.getI32IntegerAttr(0);
        auto ov = b.create<smt::IntConstantOp>(loc, intAttr);
        argVars.push_back(ov);
      }
      numOut++;
    }
  }

  llvm::SmallVector<int> varInitValues;

  for (auto variableOp : machineOp.front().getOps<fsm::VariableOp>()) {
    auto intVal = b.getType<smt::IntType>();
    auto initVal = variableOp.getInitValueAttr();
    if (auto intAttr = initVal.dyn_cast<mlir::IntegerAttr>())
      varInitValues.push_back(intAttr.getInt());
    argVarTypes.push_back(intVal);
    argVars.push_back(variableOp->getOpResult(0));
  }

  llvm::SmallVector<Transition> transitions;
  llvm::SmallVector<mlir::Value> stateFunctions;
  llvm::SmallVector<std::string> states;

  // populate states vector, each state has its unique index that is used to populate transitions, too
  
  // the first state is a support one we add to ensure that there is one unique initial transition activated
  // as initial condition of the fsm
  std::string initialState = machineOp.getInitialState().str();

  insertStates(states, initialState);


  llvm::SmallVector<mlir::Type> stateFunTypes;

  for (auto [j, avt]: llvm::enumerate(argVarTypes))
    if (int(j) >= numArgs) 
      stateFunTypes.push_back(avt);

  // time (only needed in state functions)
  argVarTypes.push_back(b.getType<smt::IntType>());
  stateFunTypes.push_back(b.getType<smt::IntType>());

  // populate state functions and transitions vector

  for (auto stateOp : machineOp.front().getOps<fsm::StateOp>()) {
    auto fromState = insertStates(states, stateOp.getName().str());
    mlir::StringAttr acFunName = b.getStringAttr(("F_"+stateOp.getName().str()));
    auto range = b.getType<smt::BoolType>();
    smt::DeclareFunOp acFun = b.create<smt::DeclareFunOp>(loc, b.getType<smt::SMTFuncType>(stateFunTypes, range), acFunName);
    stateFunctions.push_back(acFun);
    
    if (!stateOp.getTransitions().empty()){
      for (auto tr: stateOp.getTransitions().front().getOps<fsm::TransitionOp>()){
        auto t = parseTransition(tr, fromState, states, loc, b);
        if (!stateOp.getOutput().empty()){
          t.hasOutput = true;
          t.output = &stateOp.getOutput();
        } else {
          t.hasOutput = false;
        }
        transitions.push_back(t);
      }
    }
  }

  // initial condition

  auto forall = b.create<smt::ForallOp>(loc, argVarTypes, [&varInitValues, &stateFunctions, &numArgs, &numOut](OpBuilder &b, Location loc, ValueRange args) -> mlir::Value { 
    llvm::SmallVector<mlir::Value> initArgs;
    // nb. args also has the time 
    for(auto [i, a]: llvm::enumerate(args)){
      if (i != args.size()-1){
        if (int(i) >= (numArgs + numOut)){
          if (auto smtInt = llvm::dyn_cast<smt::IntType>(a.getType())){
            // initialize all variables that are not time 
            mlir::IntegerAttr intAttr = b.getI32IntegerAttr(varInitValues[int(i)-numArgs-numOut]);
            auto initVarVal = b.create<smt::IntConstantOp>(loc, intAttr);
            initArgs.push_back(initVarVal);
          } else {
            // initialize all variables that are not time 
            mlir::BoolAttr intAttr = b.getBoolAttr(bool(varInitValues[int(i)-numArgs-numOut]));
            auto initVarVal = b.create<smt::BoolConstantOp>(loc, intAttr);
            initArgs.push_back(initVarVal);
          }
          
        } else if (int(i)>=numArgs){
          if (auto smtInt = llvm::dyn_cast<smt::IntType>(a.getType())){
            // initialize all variables that are not time 
            mlir::IntegerAttr intAttr = b.getI32IntegerAttr(0);
            auto initVarVal = b.create<smt::IntConstantOp>(loc, intAttr);
            initArgs.push_back(initVarVal);
          } else {
            // initialize all variables that are not time 
            mlir::BoolAttr intAttr = b.getBoolAttr(false);
            auto initVarVal = b.create<smt::BoolConstantOp>(loc, intAttr);
            initArgs.push_back(initVarVal);
          }
        }
      }
    }
    initArgs.push_back(args.back());

    mlir::IntegerAttr intAttr = b.getI32IntegerAttr(0);
    auto initTime = b.create<smt::IntConstantOp>(loc, intAttr);
    auto lhs = b.create<smt::EqOp>(loc, args.back(), initTime);
    auto rhs = b.create<smt::ApplyFuncOp>(loc, stateFunctions[0], initArgs);
    return b.create<smt::ImpliesOp>(loc, lhs, rhs); 
  });

  b.create<smt::AssertOp>(loc, forall);

  // create solver region

  for(auto [id1, t1] : llvm::enumerate(transitions)){
    // each implication op is in the same region


    auto action = [&t1, &loc, this, &argVars, &numArgs, &numOut](llvm::SmallVector<mlir::Value> args) -> llvm::SmallVector<mlir::Value> {
      // args includes the time, argvars does not
      // update outputs if possible first

      if (t1.hasOutput){
        llvm::SmallVector<std::pair<mlir::Value, mlir::Value>> avToSmt;
        llvm::SmallVector<mlir::Value> outputSmtValues;
        for(auto [id, av] : llvm::enumerate(argVars))
          avToSmt.push_back({av, args[id]});
        
        for (auto [j, uv]: llvm::enumerate(avToSmt)){
          if(int(j) >=  numArgs && int(j) < numArgs+numOut){ // only output variables are updated at this stage 
            // look for updates in the region
            bool found = false;
            for(auto &op: t1.output->getOps()){
              // todo: check that updates requiring inputs for operations work
              if (auto outputOp = dyn_cast<fsm::OutputOp>(op)){
                for (auto outs : outputOp->getResults()){
                  if (outs==uv.first){
                  auto toRet = getSmtValue(outs, avToSmt, b, loc);
                  outputSmtValues.push_back(toRet);
                  found = true;
                  }
                }
              }
            }
            if (!found){
              outputSmtValues.push_back(uv.second);
            }
          }
        }

      }

      if (t1.hasAction) {
        llvm::SmallVector<std::pair<mlir::Value, mlir::Value>> avToSmt;
        llvm::SmallVector<mlir::Value> updatedSmtValues;
        // argvars has both inputs and time
        for(auto [id, av] : llvm::enumerate(argVars))
          avToSmt.push_back({av, args[id]});
        
        for (auto [j, uv]: llvm::enumerate(avToSmt)){
          if(int(j) >=  numArgs){ // only variables can be updated and time is updated separately
            bool found = false;
            // look for updates in the region
            for(auto &op: t1.action->getOps()){
              // todo: check that updates requiring inputs for operations work
              if (auto updateOp = dyn_cast<fsm::UpdateOp>(op)){
                if (updateOp->getOperand(0)==uv.first){
                  auto updatedVal = getSmtValue(updateOp->getOperand(1), avToSmt, b, loc);
                  updatedSmtValues.push_back(updatedVal);
                  found = true;
                }
              }
            }
            if(!found) // the value is not updated in the region 
              updatedSmtValues.push_back(uv.second);
          }
        }

        // update time 
        mlir::IntegerAttr intAttr = b.getI32IntegerAttr(1);
        auto c1 = b.create<smt::IntConstantOp>(loc, intAttr);
        llvm::SmallVector<mlir::Value> timeArgs = {args.back(), c1};
        auto newTime = b.create<smt::IntAddOp>(loc, b.getType<smt::IntType>(), timeArgs);
        updatedSmtValues.push_back(newTime);

        return updatedSmtValues;
      } 
      llvm::SmallVector<std::pair<mlir::Value, mlir::Value>> avToSmt;
      llvm::SmallVector<mlir::Value> updatedSmtValues;

      for(auto [id, av] : llvm::enumerate(argVars))
        avToSmt.push_back({av, args[id]});

      for (auto [j, uv]: llvm::enumerate(avToSmt)){
        if(int(j) >= numArgs)
          updatedSmtValues.push_back(uv.second);
      }
      //update time 
      mlir::IntegerAttr intAttr = b.getI32IntegerAttr(1);
      auto c1 = b.create<smt::IntConstantOp>(loc, intAttr);
      llvm::SmallVector<mlir::Value> timeArgs = {args.back(), c1};
      auto newTime = b.create<smt::IntAddOp>(loc, b.getType<smt::IntType>(), timeArgs);
      updatedSmtValues.push_back(newTime);
      return updatedSmtValues;
    };

    auto guard1 = [&t1, &loc, this, &argVars](llvm::SmallVector<mlir::Value> args) -> mlir::Value {
      if (t1.hasGuard){
        llvm::SmallVector<std::pair<mlir::Value, mlir::Value>> avToSmt;
        for(auto [av, a] : llvm::zip(argVars, args))
          avToSmt.push_back({av, a});
        for(auto &op: t1.guard->getOps())
          if (auto retOp = dyn_cast<fsm::ReturnOp>(op))
            return getSmtValue(retOp->getOperand(0), avToSmt, b, loc);
      } else {
        return b.create<smt::BoolConstantOp>(loc, true);
      }
    };


    auto forall = b.create<smt::ForallOp>(loc, argVarTypes, [&guard1, &action, &t1, &stateFunctions, &numArgs, &numOut](OpBuilder &b, Location loc, ValueRange args) { 
      // split new and old arguments

      llvm::SmallVector<mlir::Value> stateArgs;
      llvm::SmallVector<mlir::Value> guardArgs;
      // again arg has time 

      for(auto [i, a]: llvm::enumerate(args)){
        if (int(i)  < numArgs){
          guardArgs.push_back(a);
        } else {
          guardArgs.push_back(a);
          stateArgs.push_back(a);
        }
      }

      auto t1ac = b.create<smt::ApplyFuncOp>(loc, stateFunctions[t1.from], stateArgs);
      auto actionedArgs = action(guardArgs);
      auto rhs = b.create<smt::ApplyFuncOp>(loc, stateFunctions[t1.to], actionedArgs);
      auto lhs = b.create<smt::AndOp>(loc, t1ac, guard1(args));
      return b.create<smt::ImpliesOp>(loc, lhs, rhs); 
    });

    b.create<smt::AssertOp>(loc, forall);

  }

  
  
  llvm::SmallVector<int> visitedTransitions;;

  // add self-loops in case no guard is satisfied

  
  for(auto [id1, t1] : llvm::enumerate(transitions)){

    if (!std::any_of(visitedTransitions.begin(), visitedTransitions.end(), [t1](int x){return (x == t1.from);}) && t1.hasGuard){
      llvm::SmallVector<int> trSameStartingState;
      trSameStartingState.push_back(id1);

      for(auto [id2, t2] : llvm::enumerate(transitions)){
        if (id1!=id2 && t2.from == t1.from && !std::any_of(trSameStartingState.begin(), trSameStartingState.end(), [t1](int x){return (x == t1.from);})){
        trSameStartingState.push_back(id2);
        }
      }

      // for all the transition starting from the same state, create self-loop whose guard is the negation of all the other guards

      llvm::SmallVector<std::function<mlir::Value(llvm::SmallVector<mlir::Value>)>> allGuards;

      for (auto id: trSameStartingState){

        auto t = transitions[id];

        auto g = [&t, &loc, this, &argVars](llvm::SmallVector<mlir::Value> args) -> mlir::Value {
          if (t.hasGuard){
            llvm::SmallVector<std::pair<mlir::Value, mlir::Value>> avToSmt;
            for(auto [av, a] : llvm::zip(argVars, args))
              avToSmt.push_back({av, a});
            for(auto &op: t.guard->getOps())
              if (auto retOp = dyn_cast<fsm::ReturnOp>(op)){
                // return negation in this case 
                return b.create<smt::NotOp>(loc, getSmtValue(retOp->getOperand(0), avToSmt, b, loc));
              }
          } else {
            // if one of the transitions has a guard all the others must, too
            abort();
          }
        };

        allGuards.push_back(g);

        auto forall = b.create<smt::ForallOp>(loc, argVarTypes, [&allGuards, &t1, &stateFunctions, &numArgs](OpBuilder &b, Location loc, ValueRange args) { 
          // split new and old arguments

          llvm::SmallVector<mlir::Value> stateArgs;
          llvm::SmallVector<mlir::Value> guardArgs;
          llvm::SmallVector<mlir::Value> actionArgs;


          for(auto [i, a]: llvm::enumerate(args)){
            if (int(i)  < numArgs){
              guardArgs.push_back(a);
              actionArgs.push_back(a);
            } else if (int(i)!=int(args.size())-1){
              guardArgs.push_back(a);
              stateArgs.push_back(a);
              actionArgs.push_back(a);
            } else {
              guardArgs.push_back(a);
              stateArgs.push_back(a);
              actionArgs.push_back(a);
            }
          }

          llvm::SmallVector<mlir::Value> stateArgsAfter(stateArgs);
          mlir::IntegerAttr intAttr = b.getI32IntegerAttr(1);
          auto c1 = b.create<smt::IntConstantOp>(loc, intAttr);
          llvm::SmallVector<mlir::Value> timeArgs = {args.back(), c1};
          auto newTime = b.create<smt::IntAddOp>(loc, b.getType<smt::IntType>(), timeArgs);
          stateArgsAfter.back() = newTime;

          if (allGuards.size() > 1){
            auto tmp = b.create<smt::AndOp>(loc, allGuards[0](guardArgs), allGuards[1](guardArgs));
            
            for (auto [id, ag] : llvm::enumerate(allGuards)){
              if (id > 1){
                auto guardChain = b.create<smt::AndOp>(loc, tmp, allGuards[id](guardArgs));
                tmp = guardChain; 
              }
            }

            auto t1ac = b.create<smt::ApplyFuncOp>(loc, stateFunctions[t1.from], stateArgs);
            auto rhs = b.create<smt::ApplyFuncOp>(loc, stateFunctions[t1.from], stateArgsAfter);
            auto lhs = b.create<smt::AndOp>(loc, t1ac, tmp);
            return b.create<smt::ImpliesOp>(loc, lhs, rhs); 

          }              
          auto t1ac = b.create<smt::ApplyFuncOp>(loc, stateFunctions[t1.from], stateArgs);
          auto rhs = b.create<smt::ApplyFuncOp>(loc, stateFunctions[t1.from], stateArgs);
          auto lhs = b.create<smt::AndOp>(loc, t1ac, allGuards[0](guardArgs));
          return b.create<smt::ImpliesOp>(loc, lhs, rhs); 
          
        });

        b.create<smt::AssertOp>(loc, forall);

      }

      visitedTransitions.push_back(id1);
    }

  }


  // // mutual exclusion

  // for(auto [id1, t1] : llvm::enumerate(transitions)){
  //   for(auto [id2, t2] : llvm::enumerate(transitions)){
  //     if(id1!=id2){
  //       auto forall = b.create<smt::ForallOp>(loc, argVarTypes, [&t1, &t2, &numArgs](OpBuilder &b, Location loc, ValueRange args) { 
  //         llvm::SmallVector<mlir::Value> oldArgs;
  //         llvm::SmallVector<mlir::Value> newArgs;

  //         for(auto [i, a]: llvm::enumerate(args)){
  //           if (i < numArgs*2 && i%2 == 0){
  //             oldArgs.push_back(a);
  //           } else if (i < numArgs*2 && i%2 == 1){
  //             newArgs.push_back(a);
  //           } else {
  //             oldArgs.push_back(a);
  //             newArgs.push_back(a);
  //           }
  //         }

  //         auto lhs = b.create<smt::ApplyFuncOp>(loc, t1.activeFun, oldArgs);
  //         auto t2Fun = b.create<smt::ApplyFuncOp>(loc, t2.activeFun, oldArgs);
  //         auto rhs = b.create<smt::NotOp>(loc, t2Fun);
  //         return b.create<smt::ImpliesOp>(loc, lhs, rhs); 
  //       });

  //       b.create<smt::AssertOp>(loc, forall);

  //     }
  //   }
  // }

  b.create<smt::YieldOp>(loc, typeRange, valueRange);

  b.getBlock()->dump();

  machineOp.erase();

  return success();
}

namespace {
struct FSMToSMTPass : public circt::impl::ConvertFSMToSMTBase<FSMToSMTPass> {
  void runOnOperation() override;
};


void FSMToSMTPass::runOnOperation() {

  auto module = getOperation();
  auto b = OpBuilder(module);

  // // only continue if at least one fsm exists

  auto machineOps = to_vector(module.getOps<fsm::MachineOp>());
  if (machineOps.empty()) {
    markAllAnalysesPreserved();
    return;
  }

  for (auto machine : llvm::make_early_inc_range(module.getOps<MachineOp>())) {
    MachineOpConverter converter(b, machine);

    if (failed(converter.dispatch())) {
      signalPassFailure();
      return;
    }
  }

}
} // namespace

std::unique_ptr<mlir::Pass> circt::createConvertFSMToSMTPass() {
  return std::make_unique<FSMToSMTPass>();
}