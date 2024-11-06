//===- FSMToSMT.cpp -----------------------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
#include "circt/Conversion/FSMToSMTLiveness.h"
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
#include <string>
#include <utility>

namespace circt {
#define GEN_PASS_DEF_CONVERTFSMTOSMTLIVENESS
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
  if (isa<smt::BoolType>(args[0].getType())) {
    a1 = args[0];
  } else {
    mlir::Value cmpVal = b.create<smt::BVConstantOp>(
        loc, 1, (dyn_cast<smt::BitVectorType>(args[0].getType())).getWidth());
    a1 = b.create<smt::EqOp>(loc, args[0], cmpVal);
  }
  if (isa<smt::BoolType>(args[1].getType())) {
    a2 = args[1];
  } else {
    mlir::Value cmpVal = b.create<smt::BVConstantOp>(
        loc, 1, (dyn_cast<smt::BitVectorType>(args[1].getType())).getWidth());
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
    const llvm::SmallVector<mlir::Value> &inputFunctions,
    const llvm::SmallVector<mlir::Value> &args, mlir::Value time, OpBuilder &b,
    Location &loc) {
  // op can be an arg of the fsm
  for (auto [idx, av] : llvm::enumerate(args)) {
    if (op == av) {
      // invoke corresponding function in inputFunctions
      return b.create<smt::ApplyFuncOp>(loc, inputFunctions[idx], time);
    }
  }
  // op can be an var of the fsm
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
    //   return b.create<smt::BVConstantOp>(loc, bval, 1);
    // }
    return b.create<smt::BVConstantOp>(
        loc, constop.getValueAttr().getInt(),
        constop.getType().getIntOrFloatBitWidth());
  }
  // op can be the result of a comb operation
  if (op.getDefiningOp()->getName().getDialect()->getNamespace() == "comb") {

    auto op1 = getSmtValue(op.getDefiningOp()->getOperand(0), fsmVarVals,
                           inputFunctions, args, time, b, loc);
    auto op2 = getSmtValue(op.getDefiningOp()->getOperand(1), fsmVarVals,
                           inputFunctions, args, time, b, loc);

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

  llvm::SmallVector<mlir::Type> varTypes;

  llvm::SmallVector<mlir::Value> vars;
  llvm::SmallVector<mlir::Value> args;

  int numArgs = 0;
  int numOut = 0;

  mlir::TypeRange typeRange;
  mlir::ValueRange valueRange;

  auto solver = b.create<smt::SolverOp>(loc, typeRange, valueRange);

  solver.getBodyRegion().emplaceBlock();

  b.setInsertionPointToStart(solver.getBody());
  // fsm arguments
  for (auto a : machineArgs) {
    if (a.getType().getIntOrFloatBitWidth() == 1) {
      args.push_back(a);
      numArgs++;
    } else {
      abort();
    }
  }

  // state
  varTypes.push_back(b.getType<smt::BitVectorType>(32));

  // fsm outputs
  if (machineOp.getResultTypes().size() > 0) {
    for (auto o : machineOp.getResultTypes()) {
      // if (o.getIntOrFloatBitWidth() == 1 ){
      //   auto intVal = b.getType<smt::BitVectorType>();
      //   varTypes.push_back(intVal);
      //   mlir::BoolAttr intAttr = b.getBoolAttr(false);
      //   auto ov = b.create<smt::BVConstantOp>(loc, intAttr);
      //   vars.push_back(ov);
      // } else {
      auto intVal = b.getType<smt::BitVectorType>(o.getIntOrFloatBitWidth());
      varTypes.push_back(intVal);
      auto ov = b.create<smt::BVConstantOp>(loc, 0, o.getIntOrFloatBitWidth());
      vars.push_back(ov);
      // }
      numOut++;
    }
  }

  llvm::SmallVector<int> varInitValues;
  // fsm variables
  for (auto variableOp : machineOp.front().getOps<fsm::VariableOp>()) {
    // if (variableOp.getType().getIntOrFloatBitWidth()==1){
    //   auto intVal = b.getType<smt::BoolType>();
    //   auto initVal = variableOp.getInitValueAttr();
    //   if (auto intAttr = initVal.dyn_cast<mlir::IntegerAttr>())
    //     varInitValues.push_back(intAttr.getInt());
    //   varTypes.push_back(intVal);
    //   vars.push_back(variableOp->getOpResult(0));
    // } else {
    auto intVal = b.getType<smt::BitVectorType>(
        variableOp.getType().getIntOrFloatBitWidth());
    auto initVal = variableOp.getInitValueAttr();
    if (auto intAttr = initVal.dyn_cast<mlir::IntegerAttr>())
      varInitValues.push_back(intAttr.getInt());
    varTypes.push_back(intVal);
    vars.push_back(variableOp->getOpResult(0));

    // }
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

  // time (only needed in state functions)
  varTypes.push_back(b.getType<smt::BitVectorType>(32));

  // populate state functions and transitions vector

  for (auto stateOp : machineOp.front().getOps<fsm::StateOp>()) {
    std::string stateName = stateOp.getName().str();
    insertStates(states, stateName);
  }

  mlir::StringAttr acFunName = b.getStringAttr(("transitionFunction"));
  auto range = b.getType<smt::BoolType>();
  smt::DeclareFunOp transitionFunction = b.create<smt::DeclareFunOp>(
      loc, b.getType<smt::SMTFuncType>(varTypes, range), acFunName);

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

  // generate functions for boolean inputs

  for (auto [idx, a] : llvm::enumerate(args)) {
    mlir::StringAttr funName = b.getStringAttr(("In_" + std::to_string(idx)));
    auto range = b.getType<smt::BitVectorType>(1);
    smt::DeclareFunOp inFun = b.create<smt::DeclareFunOp>(
        loc, b.getType<smt::SMTFuncType>(varTypes.back(), range), funName);
    inputFunctions.push_back(inFun);
  }

  // initial condition

  auto forall = b.create<smt::ForallOp>(
      loc, varTypes,
      [&varInitValues, &states, &initialState, &transitionFunction, &numArgs,
       &numOut, &args, &inputFunctions](OpBuilder &b, Location loc,
                                        ValueRange forallArgs) -> mlir::Value {
        llvm::SmallVector<mlir::Value> initArgs;
        // nb. args also has the time
        initArgs.push_back(b.create<smt::BVConstantOp>(
            loc, insertStates(states, initialState), 32)); // initial state
        for (auto [i, a] : llvm::enumerate(forallArgs)) {
          if (i != forallArgs.size() - 1 && i >= 1) {
            if (int(i) >= numOut + 1) {
              auto castA = llvm::dyn_cast<smt::BitVectorType>(a.getType());
              auto initVarVal = b.create<smt::BVConstantOp>(
                  loc, varInitValues[int(i) - numOut - 1], castA.getWidth());
              initArgs.push_back(initVarVal);
            } else {
              auto castA = llvm::dyn_cast<smt::BitVectorType>(a.getType());
              auto initVarVal =
                  b.create<smt::BVConstantOp>(loc, 0, castA.getWidth());
              initArgs.push_back(initVarVal);
            }
          }
        }
        initArgs.push_back(forallArgs.back());
        auto initTime = b.create<smt::BVConstantOp>(loc, 0, 32);
        auto lhs = b.create<smt::EqOp>(loc, forallArgs.back(), initTime);
        auto rhs =
            b.create<smt::ApplyFuncOp>(loc, transitionFunction, initArgs);
        return b.create<smt::ImpliesOp>(loc, lhs, rhs);
      });

  b.create<smt::AssertOp>(loc, forall);

  // create solver region

  for (auto [id1, t1] : llvm::enumerate(transitions)) {
    // each implication op is in the same region
    auto action = [&t1, &loc, this, &vars, &numArgs, &numOut, &states,
                   &inputFunctions,
                   &args](llvm::SmallVector<mlir::Value> actionArgsInt)
        -> llvm::SmallVector<mlir::Value> {
      // args includes the time, argvars does not
      // update outputs if possible first
      llvm::SmallVector<mlir::Value> outputSmtValues;
      llvm::SmallVector<mlir::Value> actionArgs;
      for (auto [id, aai] : llvm::enumerate(actionArgsInt))
        if (id >= 1)
          actionArgs.push_back(aai);

      llvm::SmallVector<mlir::Value> updatedSmtValues;
      updatedSmtValues.push_back(
          b.create<smt::BVConstantOp>(loc, t1.to, 32)); // new state
      if (t1.hasOutput) {
        llvm::SmallVector<std::pair<mlir::Value, mlir::Value>> avToSmt;
        llvm::SmallVector<mlir::Value> outputSmtValues;
        for (auto [id, av] : llvm::enumerate(vars))
          avToSmt.push_back({av, actionArgs[id]});

        for (auto [j, uv] : llvm::enumerate(avToSmt)) {
          if (int(j) >= numArgs &&
              int(j) < numArgs + numOut) { // only output variables are updated
                                           // at this stage
            // look for updates in the region
            bool found = false;
            for (auto &op : t1.output->getOps()) {
              // todo: check that updates requiring inputs for operations work
              if (auto outputOp = dyn_cast<fsm::OutputOp>(op)) {
                for (auto outs : outputOp->getResults()) {
                  if (outs == uv.first) {
                    auto toRet = getSmtValue(outs, avToSmt, inputFunctions,
                                             args, actionArgs.back(), b, loc);
                    outputSmtValues.push_back(toRet);
                    found = true;
                  }
                }
              }
            }
            if (!found) {
              outputSmtValues.push_back(uv.second);
            }
          }
        }
      }

      if (t1.hasAction) {
        llvm::SmallVector<std::pair<mlir::Value, mlir::Value>> avToSmt;
        // vars has time
        for (auto [id, av] : llvm::enumerate(vars))
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
                                              inputFunctions, args,
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
        // mlir::IntegerAttr intAttr = b.getI32IntegerAttr(1);
        auto c1 = b.create<smt::BVConstantOp>(loc, 1, 32);
        llvm::SmallVector<mlir::Value> timeArgs = {actionArgs.back(), c1};
        auto newTime = b.create<smt::BVAddOp>(
            loc, b.getType<smt::BitVectorType>(32), timeArgs);
        updatedSmtValues.push_back(newTime);

        return updatedSmtValues;
      }
      llvm::SmallVector<std::pair<mlir::Value, mlir::Value>> avToSmt;

      for (auto [id, av] : llvm::enumerate(vars))
        avToSmt.push_back({av, actionArgs[id]});

      for (auto [j, uv] : llvm::enumerate(avToSmt)) {
        updatedSmtValues.push_back(uv.second);
      }
      // update time
      //  mlir::IntegerAttr intAttr = b.getI32IntegerAttr(1);
      auto c1 = b.create<smt::BVConstantOp>(loc, 1, 32);
      llvm::SmallVector<mlir::Value> timeArgs = {actionArgs.back(), c1};
      auto newTime = b.create<smt::BVAddOp>(
          loc, b.getType<smt::BitVectorType>(32), timeArgs);
      updatedSmtValues.push_back(newTime);
      return updatedSmtValues;
    };

    auto guard1 =
        [&t1, &loc, this, &vars, &inputFunctions,
         &args](llvm::SmallVector<mlir::Value> guardArgsInt) -> mlir::Value {
      llvm::SmallVector<mlir::Value> guardArgs;
      for (auto [id, ga] : llvm::enumerate(guardArgsInt))
        if (id >= 1)
          guardArgs.push_back(ga);
      if (t1.hasGuard) {
        llvm::SmallVector<std::pair<mlir::Value, mlir::Value>> avToSmt;
        for (auto [av, a] : llvm::zip(vars, guardArgs))
          avToSmt.push_back({av, a});
        for (auto &op : t1.guard->getOps())
          if (auto retOp = dyn_cast<fsm::ReturnOp>(op)) {
            auto tmp =
                getSmtValue(retOp->getOperand(0), avToSmt, inputFunctions, args,
                            guardArgs.back(), b, loc);
            return tmp;
          }
      } else {
        return b.create<smt::BoolConstantOp>(loc, true);
      }
    };

    auto forall = b.create<smt::ForallOp>(
        loc, varTypes,
        [&guard1, &action, &t1, &transitionFunction, &numArgs,
         &numOut](OpBuilder &b, Location loc, ValueRange forallArgs) {
          // split new and old arguments

          auto t1ac = b.create<smt::AndOp>(
              loc,
              b.create<smt::ApplyFuncOp>(loc, transitionFunction, forallArgs),
              b.create<smt::EqOp>(
                  loc, forallArgs[0],
                  b.create<smt::BVConstantOp>(loc, t1.from, 32)));
          auto actionedArgs = action(forallArgs);
          auto rhs =
              b.create<smt::ApplyFuncOp>(loc, transitionFunction, actionedArgs);
          auto lhs = b.create<smt::AndOp>(loc, t1ac, guard1(forallArgs));
          return b.create<smt::ImpliesOp>(loc, lhs, rhs);
        });

    b.create<smt::AssertOp>(loc, forall);
  }

  // add self-loops in case no guard is satisfied
  // for(auto [id1, t1] : llvm::enumerate(transitions)){
  //   if (!std::any_of(visitedTransitions.begin(), visitedTransitions.end(),
  //   [t1](int x){return (x == t1.from);}) && t1.hasGuard){
  //     llvm::SmallVector<int> trSameStartingState;
  //     trSameStartingState.push_back(id1);
  //     for(auto [id2, t2] : llvm::enumerate(transitions)){
  //       if (id1!=id2 && t2.from == t1.from &&
  //       !std::any_of(trSameStartingState.begin(), trSameStartingState.end(),
  //       [t1](int x){return (x == t1.from);})){
  //       trSameStartingState.push_back(id2);
  //       }
  //     }
  //     // for all the transition starting from the same state, create
  //     self-loop whose guard is the negation of all the other guards
  //     llvm::SmallVector<std::function<mlir::Value(llvm::SmallVector<mlir::Value>)>>
  //     allGuards; for (auto id: trSameStartingState){
  //       auto t = transitions[id];
  //       auto g = [&t, &loc, this, &vars, &inputFunctions,
  //       &args](llvm::SmallVector<mlir::Value> guardArgs) -> mlir::Value {
  //         if (t.hasGuard){
  //           llvm::SmallVector<std::pair<mlir::Value, mlir::Value>> avToSmt;
  //           for(auto [av, a] : llvm::zip(vars, guardArgs))
  //             avToSmt.push_back({av, a});
  //           for(auto &op: t.guard->getOps())
  //             if (auto retOp = dyn_cast<fsm::ReturnOp>(op)){
  //               // return negation in this case
  //               return b.create<smt::NotOp>(loc,
  //               getSmtValue(retOp->getOperand(0), avToSmt, inputFunctions,
  //               args, guardArgs.back(), b, loc));
  //             }
  //         } else {
  //           // if one of the transitions has a guard all the others must, too
  //           llvm::outs()<<"\ntransition from "<<t.from<<" to "<<t.to;
  //           return b.create<smt::BoolConstantOp>(loc, false);
  //         }
  //       };
  //       allGuards.push_back(g);
  //       auto forall = b.create<smt::ForallOp>(loc, varTypes, [&allGuards,
  //       &t1, &stateFunctions, &numArgs](OpBuilder &b, Location loc,
  //       ValueRange forallArgs) {
  //         // split new and old argument
  //         llvm::SmallVector<mlir::Value> stateArgsAfter(forallArgs);
  //         // mlir::IntegerAttr intAttr = b.getI32IntegerAttr(1);
  //         auto c1 = b.create<smt::BVConstantOp>(loc, 1, 32);
  //         llvm::SmallVector<mlir::Value> timeArgs = {forallArgs.back(), c1};
  //         auto newTime = b.create<smt::BVAddOp>(loc,
  //         b.getType<smt::BitVectorType>(32), timeArgs); stateArgsAfter.back()
  //         = newTime; if (allGuards.size() > 1){
  //           auto tmp = b.create<smt::AndOp>(loc, allGuards[0](forallArgs),
  //           allGuards[1](forallArgs)); for (auto [id, ag] :
  //           llvm::enumerate(allGuards)){
  //             if (id > 1){
  //               auto guardChain = b.create<smt::AndOp>(loc, tmp,
  //               allGuards[id](forallArgs)); tmp = guardChain;
  //             }
  //           }
  //           auto t1ac = b.create<smt::ApplyFuncOp>(loc,
  //           stateFunctions[t1.from], forallArgs); auto rhs =
  //           b.create<smt::ApplyFuncOp>(loc, stateFunctions[t1.from],
  //           stateArgsAfter); auto lhs = b.create<smt::AndOp>(loc, t1ac, tmp);
  //           return b.create<smt::ImpliesOp>(loc, lhs, rhs);
  //         }
  //         auto t1ac = b.create<smt::ApplyFuncOp>(loc,
  //         stateFunctions[t1.from], forallArgs); auto rhs =
  //         b.create<smt::ApplyFuncOp>(loc, stateFunctions[t1.from],
  //         forallArgs); auto lhs = b.create<smt::AndOp>(loc, t1ac,
  //         allGuards[0](forallArgs)); return b.create<smt::ImpliesOp>(loc,
  //         lhs, rhs);
  //       });
  //       b.create<smt::AssertOp>(loc, forall);
  //     }
  //     visitedTransitions.push_back(id1);
  //   }
  // }

  // mutual exclusion of states

  llvm::SmallVector<mlir::Type> MutexcTypes;
  MutexcTypes.push_back(b.getType<smt::BitVectorType>(32));

  for (auto vt : varTypes) {
    MutexcTypes.push_back(vt);
  }

  auto forallMutex = b.create<smt::ForallOp>(
      loc, MutexcTypes,
      [&transitionFunction, &numArgs](OpBuilder &b, Location loc,
                                      ValueRange forallArgs) {
        llvm::SmallVector<mlir::Value> functionArgs1;
        llvm::SmallVector<mlir::Value> functionArgs2;
        for (auto [id, fa] : llvm::enumerate(forallArgs)) {
          if (id >= 1)
            functionArgs1.push_back(fa);
          if (id != 1)
            functionArgs2.push_back(fa);
        }

        auto lhs = b.create<smt::AndOp>(
            loc,
            b.create<smt::ApplyFuncOp>(loc, transitionFunction, functionArgs1),
            b.create<smt::DistinctOp>(loc, forallArgs[0], forallArgs[1]));

        auto rhs = b.create<smt::NotOp>(
            loc,
            b.create<smt::ApplyFuncOp>(loc, transitionFunction, functionArgs2));

        return b.create<smt::ImpliesOp>(loc, lhs, rhs);
      });

  b.create<smt::AssertOp>(loc, forallMutex);

  b.create<smt::YieldOp>(loc, typeRange, valueRange);

  machineOp.erase();

  return success();
}

namespace {
struct FSMToSMTLivenessPass
    : public circt::impl::ConvertFSMToSMTLivenessBase<FSMToSMTLivenessPass> {
  void runOnOperation() override;
};

void FSMToSMTLivenessPass::runOnOperation() {

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

std::unique_ptr<mlir::Pass> circt::createConvertFSMToSMTLivenessPass() {
  return std::make_unique<FSMToSMTLivenessPass>();
}