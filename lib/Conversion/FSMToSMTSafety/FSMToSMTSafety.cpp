//===- FSMToSMT.cpp -----------------------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
#include "circt/Conversion/FSMToSMTSafety.h"
#include "circt/Dialect/Comb/CombOps.h"
#include "circt/Dialect/FSM/FSMOps.h"
#include "circt/Dialect/HW/HWOps.h"
#include "circt/Dialect/SMT/SMTOps.h"
#include "circt/Support/BackedgeBuilder.h"
#include "mlir/Conversion/ReconcileUnrealizedCasts/ReconcileUnrealizedCasts.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/BuiltinAttributes.h"
#include "mlir/IR/MLIRContext.h"
#include "mlir/IR/Operation.h"
#include "mlir/IR/Region.h"
#include "mlir/IR/Value.h"
#include "mlir/Parser/Parser.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassManager.h"
#include "mlir/Transforms/DialectConversion.h"
#include "llvm/ADT/SmallVector.h"
#include <algorithm>
#include <circt/Dialect/HW/HWTypes.h>
#include <cstdlib>
#include <memory>
#include <regex.h>
#include <string>
#include <utility>

namespace circt {
#define GEN_PASS_DEF_CONVERTFSMTOSMTSAFETY
#include "circt/Conversion/Passes.h.inc"
} // namespace circt

using namespace mlir;
using namespace circt;
using namespace fsm;

//===----------------------------------------------------------------------===//
// Convert FSM to SMT pass
//===----------------------------------------------------------------------===//

namespace {

class MachineOpConverter {
public:
  MachineOpConverter(OpBuilder &builder, MachineOp machineOp)
      : machineOp(machineOp), b(builder) {}
  LogicalResult dispatch();

private:
  MachineOp machineOp;
  OpBuilder &b;
};
} // namespace

struct Transition {
  int from;
  int to;
  bool hasGuard, hasAction, hasOutput;
  Region *guard, *action, *output;
};

void printFsmArgVals(
    const llvm::SmallVector<std::pair<mlir::Value, mlir::Value>> &fsmArgVals) {
  for (auto [v1, v2] : fsmArgVals)
    llvm::outs() << "\nv1: " << v1 << ", v2: " << v2;
}

int insertStates(llvm::SmallVector<std::string> &states, std::string &st) {
  for (auto [id, s] : llvm::enumerate(states)) {
    if (s == st) {
      return id;
    }
  }
  states.push_back(st);
  return states.size() - 1;
}

circt::smt::IntPredicate getSmtPred(circt::comb::ICmpPredicate cmpPredicate) {
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

mlir::Value getCombValue(Operation &op, Location &loc, OpBuilder &b,
                         llvm::SmallVector<mlir::Value> args) {
  mlir::Value a1, a2;
  // bitvecs need to be converted to bools 
  if (isa<smt::BoolType>(args[0].getType())){
    a1 = args[0];
  } else {
    mlir::Value cmpVal = b.create<smt::BVConstantOp>(loc, 1, (dyn_cast<smt::BitVectorType>(args[0].getType())).getWidth());
    a1 = b.create<smt::EqOp>(loc, args[0], cmpVal);
  }
  if (isa<smt::BoolType>(args[1].getType())){
    a2 = args[1];
  } else {
    mlir::Value cmpVal = b.create<smt::BVConstantOp>(loc, 1, (dyn_cast<smt::BitVectorType>(args[1].getType())).getWidth());
    a1 = b.create<smt::EqOp>(loc, args[1], cmpVal);
  }
  if (auto addOp = llvm::dyn_cast<comb::AddOp>(op))
    return b.create<smt::BVAddOp>(loc, args[0], args[1]);
  if (auto andOp = llvm::dyn_cast<comb::AndOp>(op))
    return b.create<smt::AndOp>(loc, a1, a2);
  if (auto xorOp = llvm::dyn_cast<comb::XorOp>(op))
    return b.create<smt::XOrOp>(loc, a1, a2);
  if (auto orOp = llvm::dyn_cast<comb::OrOp>(op))
    return b.create<smt::OrOp>(loc, a1, a2);
  if (auto mulOp = llvm::dyn_cast<comb::MulOp>(op))
    return b.create<smt::BVMulOp>(loc, args[0], args[0]);
  if (auto icmp = llvm::dyn_cast<comb::ICmpOp>(op)) {
    if (icmp.getPredicate() == circt::comb::ICmpPredicate::eq) {
      return b.create<smt::EqOp>(loc, b.getType<smt::BoolType>(), args);
    }
    if (icmp.getPredicate() == circt::comb::ICmpPredicate::ne) {
      return b.create<smt::DistinctOp>(loc, b.getType<smt::BoolType>(), args);
    }
    smt::IntPredicate predicate = getSmtPred(icmp.getPredicate());
    return b.create<smt::IntCmpOp>(loc, predicate, args[0], args[1]);
  }
}

mlir::Value getSmtValue(
    mlir::Value op,
    const llvm::SmallVector<std::pair<mlir::Value, mlir::Value>> &fsmVarVals,
    mlir::Value time, OpBuilder &b, Location &loc) {
  // op can be an input or var of the fsm
  for (auto fv : fsmVarVals)
    if (op == fv.first) {
      return fv.second;
    }
  // op can be a constant
  if (auto constop = dyn_cast<hw::ConstantOp>(op.getDefiningOp())) {
    // this is why bools wont work. cant mix them up in operations
    // if (constop.getType().getIntOrFloatBitWidth()==1){
    //   // this is prob a very stupid way to do this
    //   // printFsmArgVals(fsmArgVals);
    //   bool bval = constop.getValueAttr().getValue().getBoolValue();
    //   return b.create<smt::BoolConstantOp>(loc, bval);
    // }
    return b.create<smt::BVConstantOp>(
        loc, constop.getValueAttr().getInt(),
        constop.getType().getIntOrFloatBitWidth());
  }
  // op can be the result of a comb operation
  if (op.getDefiningOp()->getName().getDialect()->getNamespace() == "comb") {

    auto op1 = getSmtValue(op.getDefiningOp()->getOperand(0), fsmVarVals, time,
                           b, loc);
    auto op2 = getSmtValue(op.getDefiningOp()->getOperand(1), fsmVarVals, time,
                           b, loc);

    llvm::SmallVector<mlir::Value> combArgs = {op1, op2};
    return getCombValue(*op.getDefiningOp(), loc, b, combArgs);
  }
}

Transition parseTransition(fsm::TransitionOp t, int from,
                           llvm::SmallVector<std::string> &states,
                           Location &loc, OpBuilder &b) {
  std::string nextState = t.getNextState().str();
  // llvm::outs()<<"\n\ntransition from "<<states[from]<<" to
  // "<<states[insertStates(states, nextState)]; t->dump();
  Transition tr = {.from = from, .to = insertStates(states, nextState)};
  if (!t.getGuard().empty()) {
    tr.hasGuard = true;
    tr.guard = &t.getGuard();
  }
  if (!t.getAction().empty()) {
    tr.hasAction = true;
    tr.action = &t.getAction();
  }
  // todo: output
  return tr;
}

LogicalResult MachineOpConverter::dispatch() {

  b.setInsertionPoint(machineOp);
  auto loc = machineOp.getLoc();
  auto machineArgs = machineOp.getArguments();

  llvm::SmallVector<mlir::Type> argVarTypes;

  argVarTypes.push_back(b.getType<smt::BitVectorType>(32)); // first argument encodes the state and is an int

  llvm::SmallVector<mlir::Value> argVars;

  // argVars.push_back(b.create<smt::BVConstantOp>(loc, 0, 32));

  int numArgs = 0;
  int numOut = 0;

  mlir::TypeRange typeRange;
  mlir::ValueRange valueRange;

  auto solver = b.create<smt::SolverOp>(loc, typeRange, valueRange);

  solver.getBodyRegion().emplaceBlock();

  b.setInsertionPointToStart(solver.getBody());
  // fsm arguments
  for (auto a : machineArgs) {
    auto intVal =
        b.getType<smt::BitVectorType>(a.getType().getIntOrFloatBitWidth());
    argVarTypes.push_back(intVal);
    argVars.push_back(a);
    numArgs++;
  }

  // fsm outputs
  if (machineOp.getResultTypes().size() > 0) {
    for (auto o : machineOp.getResultTypes()) {
      auto intVal = b.getType<smt::BitVectorType>(o.getIntOrFloatBitWidth());
      argVarTypes.push_back(intVal);
      auto ov = b.create<smt::BVConstantOp>(loc, 0, o.getIntOrFloatBitWidth());
      argVars.push_back(ov);
      numOut++;
    }
  }

  llvm::SmallVector<int> varInitValues;
  // fsm variables
  for (auto variableOp : machineOp.front().getOps<fsm::VariableOp>()) {
    auto intVal = b.getType<smt::BitVectorType>(
        variableOp.getType().getIntOrFloatBitWidth());
    auto initVal = variableOp.getInitValueAttr();
    if (auto intAttr = initVal.dyn_cast<mlir::IntegerAttr>())
      varInitValues.push_back(intAttr.getInt());
    argVarTypes.push_back(intVal);
    argVars.push_back(variableOp->getOpResult(0));
  }

  llvm::SmallVector<Transition> transitions;
  llvm::SmallVector<mlir::Value> inputFunctions;

  llvm::SmallVector<std::string> states;

  // populate states vector, each state has its unique index that is used to
  // populate transitions, too

  // the first state is a support one we add to ensure that there is one unique
  // initial transition activated as initial condition of the fsm
  std::string initialState = machineOp.getInitialState().str();

  insertStates(states, initialState);

  // time is a bitvec 32
  argVarTypes.push_back(b.getType<smt::BitVectorType>(32));

  // populate state functions and transitions vector

  for (auto stateOp : machineOp.front().getOps<fsm::StateOp>()) {
    std::string stateName = stateOp.getName().str();
    insertStates(states, stateName);
  }


  mlir::StringAttr acFunName = b.getStringAttr(("transitionFunction"));
  auto range = b.getType<smt::BoolType>();
  smt::DeclareFunOp transitionFunction = b.create<smt::DeclareFunOp>(
        loc, b.getType<smt::SMTFuncType>(argVarTypes, range), acFunName);

  for (auto stateOp : machineOp.front().getOps<fsm::StateOp>()) {
    std::string stateName = stateOp.getName().str();
    auto fromState = insertStates(states, stateName);
    if (!stateOp.getTransitions().empty()) {
      for (auto tr :
           stateOp.getTransitions().front().getOps<fsm::TransitionOp>()) {
        auto t = parseTransition(tr, fromState, states, loc, b);
        if (!stateOp.getOutput().empty()) {
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

  auto forall = b.create<smt::ForallOp>(
      loc, argVarTypes,
      [&varInitValues, &transitionFunction, &numOut, &argVars, &numArgs, &states, &initialState,
       &inputFunctions](OpBuilder &b, Location loc,
                        ValueRange forallArgs) -> mlir::Value {
        llvm::SmallVector<mlir::Value> initArgs;
        // nb. args also has the time
        initArgs.push_back(b.create<smt::BVConstantOp>(loc, insertStates(states, initialState), 32));
        for (auto [i, a] : llvm::enumerate(forallArgs)) {
          if (int(i) >= numOut + numArgs + 1 && int(i) < forallArgs.size() - 1) {
            auto castA = llvm::dyn_cast<smt::BitVectorType>(a.getType());
            auto initVarVal = b.create<smt::BVConstantOp>(loc, varInitValues[i - numOut - numArgs - 1],
                                                          castA.getWidth());
            initArgs.push_back(initVarVal);
          } else if (int(i) >= 1){
            initArgs.push_back(a);
          }
        }
        auto initTime = b.create<smt::BVConstantOp>(loc, 0, 32);
        auto lhs = b.create<smt::EqOp>(loc, forallArgs.back(), initTime);
        auto rhs = b.create<smt::ApplyFuncOp>(loc, transitionFunction, initArgs);

        return b.create<smt::ImpliesOp>(loc, lhs, rhs);
      });

  b.create<smt::AssertOp>(loc, forall);


  // create solver region

  for (auto [id1, t1] : llvm::enumerate(transitions)) {
    //   // each implication op is in the same region
    auto action = [&t1, &loc, this, &numOut, &inputFunctions, &argVars,
                   &numArgs, &numOut](llvm::SmallVector<mlir::Value> actionArgsInt)
        -> llvm::SmallVector<mlir::Value> {
      // args includes the time, argvars does not
      // update outputs if possible first
      llvm::SmallVector<mlir::Value> outputSmtValues;
      llvm::SmallVector<mlir::Value> actionArgs;

      // remove first element
      for(auto [id, aai] : llvm::enumerate(actionArgsInt))
        if (id >= 1)
          actionArgs.push_back(aai);
      llvm::SmallVector<mlir::Value> updatedSmtValues;
      // push new element 
      updatedSmtValues.push_back(b.create<smt::BVConstantOp>(loc, t1.to, 32));
          
      // treat outputs normally
      if (t1.hasOutput) {
        llvm::SmallVector<std::pair<mlir::Value, mlir::Value>> avToSmt;
        for (auto [id, av] : llvm::enumerate(actionArgs))
          avToSmt.push_back({av, actionArgs[id]});
        for (auto &op : t1.output->getOps()) {
          // todo: check that updates requiring inputs for operations work
          if (auto outputOp = dyn_cast<fsm::OutputOp>(op)) {
            for (auto outs : outputOp->getResults()) {
              auto toRet =
                  getSmtValue(outs, avToSmt, actionArgs.back(), b, loc);
              outputSmtValues.push_back(toRet);
            }
          }
        }
      }

      if (t1.hasAction) {
        llvm::SmallVector<std::pair<mlir::Value, mlir::Value>> avToSmt;
        
        // argvars has both inputs and time
        // argvars has no state input and no time 
        for (auto [id, av] : llvm::enumerate(argVars))
          avToSmt.push_back({av, actionArgs[id]});
        for (auto [j, uv] : llvm::enumerate(avToSmt)) {
          // only variables can be updated and time is updated separately
          bool found = false;
          // look for updates in the region
          for (auto &op : t1.action->getOps()) {
            // todo: check that updates requiring inputs for operations work
            if (auto updateOp = dyn_cast<fsm::UpdateOp>(op)) {
              if (updateOp->getOperand(0) == uv.first) {
                auto updatedVal = getSmtValue(updateOp->getOperand(1), avToSmt,
                                              actionArgs.back(), b, loc);
                updatedSmtValues.push_back(updatedVal);
                found = true;
              }
            }
          }
          if (!found) // the value is not updated in the region
            updatedSmtValues.push_back(uv.second);
        }

        // update time
        auto c1 = b.create<smt::BVConstantOp>(loc, 1, 32);
        llvm::SmallVector<mlir::Value> timeArgs = {actionArgs.back(), c1};
        auto newTime = b.create<smt::BVAddOp>(
            loc, b.getType<smt::BitVectorType>(32), timeArgs);
        updatedSmtValues.push_back(newTime);
        // push output values
        for (auto [i, outputVal] : llvm::enumerate(outputSmtValues)) {
          updatedSmtValues[1 + numArgs + i] = outputVal;
        }
        return updatedSmtValues;
      }
      llvm::SmallVector<std::pair<mlir::Value, mlir::Value>> avToSmtNoOut;

      for (auto [id, av] : llvm::enumerate(argVars))
        avToSmtNoOut.push_back({av, actionArgs[id]});
      for (auto [j, uv] : llvm::enumerate(avToSmtNoOut)) {
        updatedSmtValues.push_back(uv.second);
      }
      // update time
      // mlir::IntegerAttr intAttr = b.getI32IntegerAttr(1);
      auto c1 = b.create<smt::BVConstantOp>(loc, 1, 32);
      llvm::SmallVector<mlir::Value> timeArgs = {actionArgs.back(), c1};
      auto newTime = b.create<smt::BVAddOp>(
          loc, b.getType<smt::BitVectorType>(32), timeArgs);
      updatedSmtValues.push_back(newTime);
      // push output values
      for (auto [i, outputVal] : llvm::enumerate(outputSmtValues)) {
        updatedSmtValues[1 + numArgs + i] = outputVal;
      }
      return updatedSmtValues;
    };

    auto guard1 = [&t1, &loc, this, &argVars, &inputFunctions](
                      llvm::SmallVector<mlir::Value> guardArgsInt) -> mlir::Value {
      // remove first element and push it back after
      llvm::SmallVector<mlir::Value> guardArgs;
      for(auto [id, ga]: llvm::enumerate(guardArgsInt))
        if(id >= 1)
          guardArgs.push_back(ga);
      if (t1.hasGuard) {
        llvm::SmallVector<std::pair<mlir::Value, mlir::Value>> avToSmt;
        for (auto [av, a] : llvm::zip(argVars, guardArgs))
          avToSmt.push_back({av, a});
        for (auto &op : t1.guard->getOps())
          if (auto retOp = dyn_cast<fsm::ReturnOp>(op)) {
            auto tmp = getSmtValue(retOp->getOperand(0), avToSmt,
                                   guardArgs.back(), b, loc);
            return tmp;
          }
      } else {
        return b.create<smt::BoolConstantOp>(loc, true);
      }
    };

    auto forall = b.create<smt::ForallOp>(
        loc, argVarTypes,
        [&guard1, &action, &t1, &transitionFunction, &numArgs,
         &numOut](OpBuilder &b, Location loc, ValueRange forallArgs) {
          // split new and old arguments
          auto t1ac = b.create<smt::AndOp>(loc, b.create<smt::ApplyFuncOp>(loc, transitionFunction,
                                                 forallArgs), b.create<smt::EqOp>(loc, forallArgs[0], b.create<smt::BVConstantOp>(loc, t1.from, 32)));
          auto actionedArgs = action(forallArgs);
          auto rhs = b.create<smt::ApplyFuncOp>(loc, transitionFunction,
                                                actionedArgs);
          auto guard = guard1(forallArgs);
          if (dyn_cast<smt::BoolType>(guard.getType())) {
            
            auto lhs = b.create<smt::AndOp>(loc, t1ac, guard);
            auto ret = b.create<smt::ImpliesOp>(loc, lhs, rhs);
            return ret;
          } else {
            auto boolGuard = b.create<smt::EqOp>(
                loc, guard,
                b.create<smt::BVConstantOp>(
                    loc, 1, 1)); // turn the bitvec result into bool
            auto lhs = b.create<smt::AndOp>(loc, t1ac, boolGuard);
            auto ret = b.create<smt::ImpliesOp>(loc, lhs, rhs);
            return ret;
          }
        });

    b.create<smt::AssertOp>(loc, forall);
  }

  b.getBlock()->dump();

  b.create<smt::YieldOp>(loc, typeRange, valueRange);

  machineOp.erase();

  return success();
}

namespace {
struct FSMToSMTSafetyPass : public circt::impl::ConvertFSMToSMTSafetyBase<FSMToSMTSafetyPass> {
  void runOnOperation() override;
};

void FSMToSMTSafetyPass::runOnOperation() {

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

std::unique_ptr<mlir::Pass> circt::createConvertFSMToSMTSafetyPass() {
  return std::make_unique<FSMToSMTSafetyPass>();
}