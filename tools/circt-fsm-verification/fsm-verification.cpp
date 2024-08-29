#include "circt/Dialect/Comb/CombOps.h"
#include "circt/Dialect/FSM/FSMOps.h"
#include "circt/Dialect/LTL/LTLDialect.h"
#include "circt/Dialect/LTL/LTLOps.h"
#include "fstream"
#include "iostream"
#include "mlir/IR/Builders.h"
#include "mlir/IR/Value.h"
#include "mlir/Parser/Parser.h"
#include "llvm/Support/raw_ostream.h"
#include <iostream>
#include <iterator>
#include <vector>
#include <z3++.h>
#include <z3_api.h>

#define V 1

using namespace llvm;
using namespace mlir;
using namespace circt;
using namespace std;
using namespace z3;

using z3Fun = std::function<expr(vector<expr>)>;

using z3FunA = std::function<vector<expr>(vector<expr>)>;

struct Transition {
  int from, to;
  z3Fun guard;
  bool isGuard, isAction, isOutput;
  z3FunA action, output;
};

/**
 * @brief Prints solver assertions
*/
void printSolverAssertions(z3::context &c, z3::solver &solver, const string& output,
                           vector<func_decl> &stateInvFun, vector<func_decl> &argInputs) {

  ofstream outfile;
  outfile.open(output);

  outfile << "(set-logic HORN)" << std::endl;

  z3::expr_vector assertions = solver.assertions();

  llvm::outs() << "assertions size: " << assertions.size() << "\n\n";

  for (const auto& fd : stateInvFun) {
    outfile << fd.to_string() << "\n";
  }

  for (const auto& fd : argInputs) {
    outfile << fd.to_string() << "\n";
  }
  for (unsigned i = 0; i < assertions.size(); ++i) {
    Z3_ast ast = assertions[i];
    outfile << "(assert " << Z3_ast_to_string(c, ast) << ")" << std::endl;
  }
  outfile << "(check-sat)" << std::endl;
  outfile << "(get-model)" << std::endl;


  outfile.close();
}

/**
 * @brief Prints FSM transition
*/
void printTransitions(vector<Transition> &transitions) {
  llvm::outs() << "\nPRINTING TRANSITIONS\n";
  for (const auto& t : transitions) {
    llvm::outs() << "\ntransition from " << t.from << " to " << t.to;
  }
}


/**
 * @brief Prints z3::expr-mlir::Value map
*/
void printExprValMap(vector<std::pair<expr, mlir::Value>> &exprMap) {
  llvm::outs() << "\n\nEXPR-VAL:";
  for (const auto& e : exprMap) {
    llvm::outs() << "\n\nexpr: " << e.first.to_string()
                 << ", value: " << e.second;
  }
  llvm::outs() << "END\n";
}

/**
 * @brief Returns FSM's initial state
 */
string getInitialState(Operation &mod) {
  for (Region &rg : mod.getRegions()) {
    for (Block &block : rg) {
      for (Operation &op : block) {
        if (auto machine = dyn_cast<fsm::MachineOp>(op)) {
          return machine.getInitialState().str();
        }
      }
    }
  }
  llvm::errs() << "Initial state does not exist\n";
  return "err";
}

/**
 * @brief Returns expression from Comb dialect operator
 */
expr manageCombExp(Operation &op, vector<expr> &vec, z3::context &c) {

  if (auto add = dyn_cast<comb::AddOp>(op)) {
    return to_expr(c, vec[0] + vec[1]);
  } if (auto andOp = dyn_cast<comb::AndOp>(op)) {
    return expr(vec[0] && vec[1]);
  } if (auto xorOp = dyn_cast<comb::XorOp>(op)) {
    return expr(vec[0] ^ vec[1]);
  } if (auto orOp = dyn_cast<comb::OrOp>(op)) {
    return expr(vec[0] | vec[1]);
  } if (auto mulOp = dyn_cast<comb::MulOp>(op)) {
    return expr(vec[0] * vec[1]);
  } if (auto icmp = dyn_cast<comb::ICmpOp>(op)) {
    circt::comb::ICmpPredicate predicate = icmp.getPredicate();
    switch (predicate) {
    case circt::comb::ICmpPredicate::eq:
      return expr(vec[0] == vec[1]);
    case circt::comb::ICmpPredicate::ne:
      return expr(vec[0] != vec[1]);
    case circt::comb::ICmpPredicate::slt:
      return expr(vec[0] < vec[1]);
    case circt::comb::ICmpPredicate::sle:
      return expr(vec[0] <= vec[1]);
    case circt::comb::ICmpPredicate::sgt:
      return expr(vec[0] > vec[1]);
    case circt::comb::ICmpPredicate::sge:
      return expr(vec[0] >= vec[1]);
    case circt::comb::ICmpPredicate::ult:
      return expr(vec[0] < vec[1]);
    case circt::comb::ICmpPredicate::ule:
      return expr(vec[0] <= vec[1]);
    case circt::comb::ICmpPredicate::ugt:
      return expr(vec[0] > vec[1]);
    case circt::comb::ICmpPredicate::uge:
      return expr(vec[0] >= vec[1]);
    case circt::comb::ICmpPredicate::ceq:
      return expr(vec[0] == vec[1]);
    case circt::comb::ICmpPredicate::cne:
      return expr(vec[0] != vec[1]);
    case circt::comb::ICmpPredicate::weq:
      return expr(vec[0] == vec[1]);
    case circt::comb::ICmpPredicate::wne:
      return expr(vec[0] != vec[1]);
    }
  }
  assert(false && "LLVM unreachable");
}

/**
 * @brief Returns expression from densemap or constant operator
 */
expr getExpr(mlir::Value v, vector<std::pair<expr, mlir::Value>> &exprMap,
             z3::context &c) {

  for (const auto& e : exprMap) {
    if (e.second == v)
      return e.first;
  }

  if (auto constop = dyn_cast<hw::ConstantOp>(v.getDefiningOp())) {
    if (constop.getType().getIntOrFloatBitWidth() > 1)
      return c.int_val(constop.getValue().getSExtValue());
          return c.bool_val(0);
  }
  llvm::errs() << "Expression not found.";
  return c.bool_val(false);
}

/**
 * @brief Returns guard expression for input region
 */
expr getGuardExpr(vector<std::pair<expr, mlir::Value>> &exprMap, Region &guard,
                  z3::context &c) {

  for (auto &op : guard.getOps()) {
    if (auto retop = dyn_cast<fsm::ReturnOp>(op)) {
      for (const auto& e : exprMap) {
        if (e.second == retop.getOperand()) {

          return e.first;
        }
      }
    }
    vector<expr> vec;
    for (auto operand : op.getOperands()) {
      vec.push_back(getExpr(operand, exprMap, c));
    }

    exprMap.push_back({manageCombExp(op, vec, c), op.getResult(0)});
  }
  return expr(c.bool_const("true"));
}

/**
 * @brief Returns actions for all expressions for the input region
 */
vector<expr> getActionExpr(Region &action, context &c,
                           vector<mlir::Value> &toUpdate,
                           vector<std::pair<expr, mlir::Value>> &exprMap) {
  vector<expr> updatedVec;
  for (auto v : toUpdate) {
    if(V)
       llvm::outs()<<"\nlooking for updates of "<<v;
    bool found = false;
    for (auto &op : action.getOps()) {
      if (!found) {
        if (auto updateop = dyn_cast<fsm::UpdateOp>(op)) {
          if (v == updateop.getOperands()[0]) {

            updatedVec.push_back(
                getExpr(updateop.getOperands()[1], exprMap, c));

            found = true;
          }
        } else {
          vector<expr> vec;
          for (auto operand : op.getOperands()) {

            vec.push_back(getExpr(operand, exprMap, c));
          }

          exprMap.emplace_back(manageCombExp(op, vec, c), op.getResult(0));
        }
      }
    }
    if (!found) {
      for (const auto& e : exprMap) {
        if (e.second == v){
          updatedVec.push_back(e.first);
        }
      }
    }
  }
  return updatedVec;
}

/**
 * @brief Parse FSM arguments and add them to the variable map
 */
int populateArgs(Operation &mod, vector<mlir::Value> &vecVal,
                 vector<std::pair<expr, mlir::Value>> &variables,
                 z3::context &c) {
  int numArgs = 0;
  for (Region &rg : mod.getRegions()) {
    for (Block &bl : rg) {
      for (Operation &op : bl) {
        if (auto machine = dyn_cast<fsm::MachineOp>(op)) {
          for (Region &rg : op.getRegions()) {
            for (Block &block : rg) {
              for (auto a : block.getArguments()) {
                expr input = c.bool_const(("arg" + to_string(numArgs)).c_str());
                if (a.getType().getIntOrFloatBitWidth() > 1) {
                  input = c.int_const(("arg" + to_string(numArgs)).c_str());
                } else {
                  input = c.bool_const(("arg" + to_string(numArgs)).c_str());
                }
                variables.push_back({input, a});
                vecVal.push_back(a);
                numArgs++;
              }
            }
          }
        }
      }
    }
  }
  return numArgs;
}

/**
 * @brief Parse FSM variables and add them to the variable map
 */
void populateVars(Operation &mod, vector<mlir::Value> &vecVal,
                  vector<std::pair<expr, mlir::Value>> &variables,
                  z3::context &c, int numArgs, vector<int> &initValues) {
  for (Region &rg : mod.getRegions()) {
    for (Block &bl : rg) {
      for (Operation &op : bl) {
        if (auto machine = dyn_cast<fsm::MachineOp>(op)) {
          for (Region &rg : op.getRegions()) {
            for (Block &block : rg) {
              for (Operation &op : block) {
                if (auto varOp = dyn_cast<fsm::VariableOp>(op)) {
                  vecVal.push_back(varOp.getResult());
                  int initValue = mlir::cast<IntegerAttr>(varOp.getInitValue()).getInt();
                  string varName = varOp.getName().str();
                  initValues.push_back(initValue);
                  if (varOp.getName().str().find("arg") != std::string::npos) {
                    // reserved keyword arg for arguments to avoid ambiguity
                    // when setting initial state values
                    varName = "var" + to_string(numArgs);
                    numArgs++;
                  }
                  expr input = c.bool_const(
                      (varName).c_str());

                  if (varOp.getResult().getType().getIntOrFloatBitWidth() > 1) {
                    input = c.int_const(
                        (varName).c_str());
                  }
                  variables.push_back({input, varOp.getResult()});
                }
              }
            }
          }
        }
      }
    }
  }
}

/**
 * @brief Insert state if not present, return position in vector otherwise
 */
int insertState(const string& state, vector<string> &stateInv) {
  for (auto [i,s] : llvm::enumerate(stateInv)) {
    // return index if present already
    if (s == state)
      return i;
  }
  stateInv.push_back(state);
  return stateInv.size() - 1;
}

/**
 * @brief Returns output expression for input region
 */
vector<expr> getOutputExpr(vector<std::pair<expr, mlir::Value>> &exprMap,
                           Region &guard, z3::context &c) {
  vector<expr> outputExp;
  // printExprValMap(exprMap);
  for (auto &op : guard.getOps()) {
    if (auto outop = dyn_cast<fsm::OutputOp>(op)) {
      for (auto opr : outop.getOperands()) {
        for (const auto& e : exprMap) {
          if (e.second == opr) {
            outputExp.push_back(e.first);
          }
        }
      }
      return outputExp;
    }
    vector<expr> vec;
    for (auto operand : op.getOperands()) {
      vec.push_back(getExpr(operand, exprMap, c));
    }
    exprMap.push_back({manageCombExp(op, vec, c), op.getResult(0)});
  }
  return outputExp;
}

/**
 * @brief Parse FSM states and add them to the state map
 */
void populateST(Operation &mod, context &c, vector<string> &stateInv,
                vector<Transition> &transitions, vector<mlir::Value> &vecVal,
                int numOutput) {
  for (Region &rg : mod.getRegions()) {
    for (Block &bl : rg) {
      for (Operation &op : bl) {
        if (auto machine = dyn_cast<fsm::MachineOp>(op)) {
          for (Region &rg : op.getRegions()) {
            for (Block &block : rg) {
              for (Operation &op : block) {
                if (auto state = dyn_cast<fsm::StateOp>(op)) {
                  string currentState = state.getName().str();
                  if (V) {
                    llvm::outs() << "inserting state " << currentState << "\n";
                  }
                  auto regions = state.getRegions();
                  bool existsOutput = false;
                  if (!regions[0]->empty())
                    existsOutput = true;
                  // transitions region
                  for (Block &bl1 : *regions[1]) {
                    for (Operation &op : bl1.getOperations()) {
                      if (auto transop = dyn_cast<fsm::TransitionOp>(op)) {
                        Transition t;
                        t.from = insertState(currentState, stateInv);
                        t.to =
                            insertState(transop.getNextState().str(), stateInv);
                        t.isGuard = false;
                        t.isAction = false;
                        t.isOutput = false;

                        auto trRegions = transop.getRegions();
                        string nextState = transop.getNextState().str();
                        // guard
                        if (!trRegions[0]->empty()) {
                          Region &r = *trRegions[0];
                          z3Fun g = [&r, &vecVal, &c](vector<expr> vec) {
                            vector<std::pair<expr, mlir::Value>> exprMapTmp;
                            for (auto [value, expr] : llvm::zip(vecVal, vec)) {
                              exprMapTmp.push_back({expr, value});
                            }
                            expr guardExpr = getGuardExpr(exprMapTmp, r, c);
                            return guardExpr;
                          };
                          t.guard = g;
                          t.isGuard = true;
                        }
                        // action
                        if (!trRegions[1]->empty()) {
                          Region &r = *trRegions[1];
                          z3FunA a = [&r, &vecVal,
                                      &c](vector<expr> vec) -> vector<expr> {
                            expr time = vec.back();
                            llvm::outs()<<"\ninside the action";
                            vector<std::pair<expr, mlir::Value>> tmpVar;
                            // problem: need to remove arguments from vecval
                            vector<mlir::Value> vecValNoArgs; 
                            copy(vecVal.begin()+(vecVal.size()-vec.size())+1, vecVal.end(), back_inserter(vecValNoArgs));
                            for (auto [value, expr] : llvm::zip(vecValNoArgs, vec)) {
                              llvm::outs()<<"\naction inserting "<<expr.to_string();
                              tmpVar.emplace_back(expr, value);
                            }
                            vector<expr> vec2 =
                                getActionExpr(r, c, vecValNoArgs, tmpVar);
                            vec2.push_back(time);
                            return vec2;
                          };
                          t.action = a;
                          t.isAction = true;
                        } else {
                            z3FunA a = [](vector<expr> vec) -> vector<expr> {
                            return vec;
                          };
                          t.action = a;
                          t.isAction = true;
                        }
                        if (existsOutput) {
                          Region &r2 = *regions[0];
                          z3FunA tf = [&r2, &vecVal,
                                       &c](vector<expr> vec) -> vector<expr> {
                            vector<std::pair<expr, mlir::Value>> tmpOut;
                            for (auto [value, expr] : llvm::zip(vecVal, vec)) {
                              tmpOut.emplace_back(expr, value);
                            }
                            vector<expr> outputExpr =
                                getOutputExpr(tmpOut, r2, c);
                            for (int j = 0; j < int(outputExpr.size()); j++) {
                              vec[vec.size() - 1 - outputExpr.size() + j] =
                                  outputExpr[j];
                            }
                            return vec;
                          };
                          t.output = tf;
                          t.isOutput = true;
                        }

                        transitions.push_back(t);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

/**
 * @brief Nest SMT assertion for all variables in the variables vector
 */
expr nestedForall(vector<expr> &solverVars, expr &body, int numArgs,
                  int numOutputs, z3::context &c) {
  z3::expr_vector univQ(c);

  for(const auto& sv: solverVars){
    llvm::outs()<<"\nuniv. quant. over "<<sv.to_string();
    univQ.push_back(sv);
  }

  expr ret = forall(univQ, body);

  return ret;
}


/**
 * @brief Build Z3 sort and expr vectors for the arguments of state functions
 */
void populateStateArgs(vector<std::pair<expr, mlir::Value>> &variables,
                      context &c, vector<expr> &solverVars,
                      vector<Z3_sort> &invInput, int numArgs, int numOutputs) {


  for (auto [i, e] : llvm::enumerate(variables)) {
    if (int(i) >= numArgs){
      string name = "var";
      expr input = c.bool_const((name + to_string(i)).c_str());
      z3::sort invIn = c.bool_sort();
      if (e.second.getType().getIntOrFloatBitWidth() > 1) {
        input = c.int_const((name + to_string(i)).c_str());
        invIn = c.int_sort();
      }
      solverVars.push_back(input);
      if (V) {
        llvm::outs() << "solverVars now: " << solverVars[i-numArgs].to_string() << "\n";
      }
      invInput.push_back(invIn);
    }
  }
}

/**
 * @brief Build Z3 sort and expr vectors for the arguments of guards functions
 */
void populateGuardArgs(vector<std::pair<expr, mlir::Value>> &variables,
                      context &c, vector<expr> &solverVars,
                      vector<Z3_sort> &invInput, int numArgs, int numOutputs) {
  for (auto [i, e] : llvm::enumerate(variables)) {
    string name = "var";
    if (numArgs != 0 && int(i) < numArgs) {
      name = "input";
    } else if (numOutputs != 0 && int(i) >= int(variables.size()) - numOutputs) {
      name = "output";
    }
    expr input = c.bool_const((name + to_string(i)).c_str());
    z3::sort invIn = c.bool_sort();
    if (e.second.getType().getIntOrFloatBitWidth() > 1) {
      input = c.int_const((name + to_string(i)).c_str());
      invIn = c.int_sort();
    }
    solverVars.push_back(input);
    if (V) {
      llvm::outs() << "solverVars now: " << solverVars[i].to_string() << "\n";
    }
    invInput.push_back(invIn);
  }
}

/**
 * @brief Parse LTL dialect file expressing property
 */
expr parseLTL(const string& inputFile, vector<expr> &solverVars,
              vector<string> &stateInv, vector<Transition> transitions,
              vector<func_decl> &statesActive, int numArgs, int numOutputs,
              context &c) {
  DialectRegistry registry;

  registry.insert<ltl::LTLDialect>();

  MLIRContext context(registry);

  // Parse the MLIR code into a module.
  OwningOpRef<ModuleOp> module =
      mlir::parseSourceFile<ModuleOp>(inputFile, &context);

  Operation &mod = module.get()[0];

  for (Region &rg : mod.getRegions()) {
    for (Block &bl : rg) {
      for (Operation &op : bl) {
        if (auto ev = dyn_cast<ltl::EventuallyOp>(op)) {
          auto attrDict = ev.getOperation()->getAttrs();
          if (attrDict.size() == 1) {
            // reachability
            auto a0 = (attrDict[0].getValue());
            string var;
            raw_string_ostream os0(var);
            a0.print(os0);
            os0.flush();
            var = var.substr(1, var.size() - 2);
            int id = stoi(var)-1;
            expr body = implies(statesActive.at(id)(
                int(solverVars.size()), solverVars.data()), false);
            expr ret = nestedForall(solverVars, body, numArgs, numOutputs, c);
            return ret;
          }
          llvm::outs() << "Reachability Property can not be parsed.";
        } else if (auto rep = dyn_cast<ltl::NotOp>(op)) {
          auto attrDict = rep.getOperation()->getAttrs();
          if (attrDict.size() == 3) {
            // combinational
            auto a0 = (attrDict[0].getValue());
            string state;
            raw_string_ostream os1(state);
            a0.print(os1);
            os1.flush();
            state = state.substr(1, state.size() - 2);
            int stateId = stoi(state)-1;

            auto a1 = (attrDict[1].getValue());
            string var;
            raw_string_ostream os2(var);
            a1.print(os2);
            os2.flush();
            var = var.substr(1, var.size() - 2);
            int id = stoi(var);

            auto a2 = (attrDict[2].getValue());
            string val;
            raw_string_ostream os3(val);
            a2.print(os3);
            os3.flush();
            val = val.substr(1, val.size() - 2);
            int v = stoi(val);

            if(V)
              llvm::outs()<<"\n\n\nTesting value "<<v<<" of variable at index "<<id<<" at transition "<<stateId;

            expr body = implies((statesActive[stateId](
                            int(solverVars.size()), solverVars.data())),
                        (solverVars[v] != id));


            expr r = nestedForall(solverVars, body, numArgs, numOutputs, c);



            return (r);
          } 
          llvm::outs() << "Comb Property can not be parsed.";
        } else if (auto impl = dyn_cast<ltl::ImplicationOp>(op)) {
          auto attrDict = impl.getOperation()->getAttrs();
          if (attrDict.size() == 4) {
            // error
            auto a3 = (attrDict[2].getValue());
            string state;
            raw_string_ostream os0(state);
            a3.print(os0);
            os0.flush();
            state = state.substr(1, state.size() - 2);
            int stateId = stoi(state);


            auto a0 = (attrDict[1].getValue());
            string sig;
            raw_string_ostream os1(sig);
            a0.print(os1);
            os1.flush();
            sig = sig.substr(1, sig.size() - 2);
            int signal = stoi(sig);

            auto a1 = (attrDict[0].getValue());
            string var;
            raw_string_ostream os2(var);
            a1.print(os2);
            os2.flush();
            var = var.substr(1, var.size() - 2);
            int input = stoi(var);

            auto a2 = (attrDict[0].getValue());
            string next;
            raw_string_ostream os3(var);
            a2.print(os3);
            os3.flush();
            var = var.substr(1, var.size() - 2);
            int nextId = stoi(var);

            vector<expr> solverVarsAfter;
            copy(solverVars.begin(), solverVars.end(), back_inserter(solverVarsAfter));
            
            if (transitions[stateId].isAction)
              solverVarsAfter = transitions[stateId].action(solverVars);

            solverVarsAfter.back()= solverVarsAfter.back() + 1;

            expr body = implies((solverVars[signal]==input) && (statesActive[stateId])(int(solverVars.size()), solverVars.data()), 
              (statesActive[nextId])(int(solverVarsAfter.size()), solverVarsAfter.data())
              );

            llvm::outs()<<body.to_string()<<"\n\n";


            return nestedForall(solverVars, body, numArgs, numOutputs, c);

          }
          llvm::outs() << "Error Management Property can not be parsed.";
          
        }
      }
    }
  }
  llvm::outs() << "Property can not be parsed.";
  return c.bool_val(true);
}

/**
 * @brief Parse FSM output and add them to the variable map
 */
int populateOutputs(Operation &mod, vector<mlir::Value> &vecVal,
                    vector<std::pair<expr, mlir::Value>> &variables,
                    z3::context &c, MLIRContext &context,
                    OwningOpRef<ModuleOp> &module) {
  int numOutput = 0;
  for (Region &rg : mod.getRegions()) {
    for (Block &bl : rg) {
      for (Operation &op : bl) {
        if (auto machine = dyn_cast<fsm::MachineOp>(op)) {
          for (auto opr : machine.getFunctionType().getResults()) {
            expr e = c.bool_const(("output_" + to_string(numOutput)).c_str());
            if (opr.getIntOrFloatBitWidth() > 1) {
              e = c.int_const(("output_" + to_string(numOutput)).c_str());
            }
            // is this conceptually correct?
            OpBuilder builder(&machine.getBody());

            auto loc = builder.getUnknownLoc();

            auto variable = builder.create<fsm::VariableOp>(
                loc, builder.getIntegerType(opr.getIntOrFloatBitWidth()),
                IntegerAttr::get(
                    builder.getIntegerType(opr.getIntOrFloatBitWidth()), 0),
                builder.getStringAttr("outputVal"));

            mlir::Value v = variable.getResult();

            vecVal.push_back(v);
            variables.push_back({e, v});
          }
        }
      }
    }
  }
  return numOutput;
}

/**
 * @brief Parse FSM and build SMT model
 */
void parseFSM(const string& input, const string& property, const string& output) {

  DialectRegistry registry;

  registry.insert<comb::CombDialect, fsm::FSMDialect, hw::HWDialect>();

  MLIRContext context(registry);

  // Parse the MLIR code into a module.
  OwningOpRef<ModuleOp> module =
      mlir::parseSourceFile<ModuleOp>(input, &context);

  Operation &mod = module.get()[0];

  z3::context c;

  Z3_set_ast_print_mode(c, Z3_PRINT_SMTLIB_FULL);

  solver s(c);

  vector<string> stateInv;

  vector<std::pair<expr, mlir::Value>> variables;

  vector<mlir::Value> vecVal;

  vector<Transition> transitions;

  insertState("supp", stateInv);

  string initialState = getInitialState(mod);

  // initial state is by default associated with id 0

  insertState(initialState, stateInv);

  Transition fake;
  fake.from = insertState("supp", stateInv);
  fake.to = insertState(initialState, stateInv);
  fake.isAction = false;
  fake.isGuard = false; 
  transitions.push_back(fake);

  if (V) {
    llvm::outs() << "initial state: " << initialState << "\n";
  }

  int numArgs = populateArgs(mod, vecVal, variables, c);

  vector<int> initValues;

  populateVars(mod, vecVal, variables, c, numArgs, initValues);

  int numOutputs = populateOutputs(mod, vecVal, variables, c, context, module);


  populateST(mod, c, stateInv, transitions, vecVal, numOutputs);

  vector<func_decl> statesActive;

  vector<expr> stateArgs;

  vector<Z3_sort> stateArgsSort;

  vector<expr> guardArgs;

  vector<Z3_sort> guardArgsSort;

  populateStateArgs(variables, c, stateArgs, stateArgsSort, numArgs, numOutputs);


  populateGuardArgs(variables, c, guardArgs, guardArgsSort, numArgs, numOutputs);

  expr time = c.int_const("time");

  stateArgs.push_back(time);

  Z3_sort timeSort = c.int_sort();

  stateArgsSort.push_back(timeSort);

  // initialize variables' values

  vector<expr> stateArgsInit;

  vector<expr> guardArgsInit;

  copy(stateArgs.begin(), stateArgs.end(), back_inserter(stateArgsInit));

  for (auto [idx, iv]: llvm::enumerate(initValues)){
    if(stateArgsInit[idx].is_bool())
      stateArgsInit[idx] = c.bool_val(iv);
    else 
      stateArgsInit[idx] = c.int_val(iv);
  }

  // enforce self-loops if none of the guards is respected
  vector<int> visited;

  for(auto [idx1, t1]: llvm::enumerate(transitions)){
    bool found = false;
    for (auto v: visited)
      if (t1.from == v)
        found = true;
    if (t1.isGuard && !found){
      visited.push_back(t1.from);
      vector<z3Fun> tmpGuards;
      tmpGuards.push_back(t1.guard);  
      for(auto [idx2, t2]: llvm::enumerate(transitions)){
        if(idx1!=idx2 && t1.from == t2.from && t2.isGuard)
          tmpGuards.push_back(t2.guard);
      }

      z3Fun tmpG = [tmpGuards, &c](const vector<expr>& vec) {
        expr neg = c.bool_val(true);
        for(const auto& tmp: tmpGuards){
          neg = neg && !tmp(vec);
        }
        return neg;
      };
      Transition t;
      t.from = t1.from;
      t.to = t1.from;
      t.isGuard = true;
      t.guard = tmpG;
      t.isAction = false;
      t.isOutput = false;
      transitions.push_back(t);
    }
  }

  // create uninterpreted function vec -> bool for each transition

  for (const auto& s: stateInv){
    const symbol cc = c.str_symbol((s).c_str());
    Z3_func_decl inv = Z3_mk_func_decl(c, cc, stateArgs.size(), stateArgsSort.data(), c.bool_sort());
    func_decl inv2 = func_decl(c, inv);
    statesActive.push_back(inv2);
  }

  // initial condition (fake transition with no action nor guards)

  expr tail = stateArgs.back()==-1;
  expr head = statesActive[0](stateArgsInit.size(), stateArgsInit.data());
  expr body = implies(tail, head);
  s.add(nestedForall(stateArgs, body, numArgs, numOutputs, c));

  // traverse all transitions and build implications from one to the other 

  for(auto [idx1, t1]: llvm::enumerate(transitions)){
    llvm::outs()<<"\nfrom "<<t1.from<<" to "<<t1.to;
    // build implication here (tail = lhs, head = rhs)
    vector<expr> stateArgsAfter(stateArgs);

    if(V)
      llvm::outs()<<"\n1size of saa: "<<stateArgsAfter.size();

    if(V)
    for(auto sa: stateArgs)
        llvm::outs()<<"\nsa: "<<sa.to_string();
    
    if (t1.isAction)
      stateArgsAfter = t1.action(stateArgs);

    if(V)
      llvm::outs()<<"\n2size of saa: "<<stateArgsAfter.size();
      
    // nb. there are no inputs in the arguments of actions and states

    stateArgsAfter.back() = stateArgsAfter.back() + 1;
    expr guard1 = c.bool_val(true);

    if(t1.isGuard)
      guard1 = t1.guard(guardArgs);
    llvm::outs()<<"guard is: "<<guard1.to_string();

    vector<expr> nestingVars(stateArgs);
    for(auto [i, ga]: llvm::enumerate(guardArgs)){
      if (int(i)<numArgs)
        nestingVars.push_back(ga);
    }

    if(V)
      for (const auto& saa: stateArgsAfter)
        llvm::outs()<<"\nsaa: "<<saa.to_string();

    expr tail = statesActive[t1.from](stateArgs.size(), stateArgs.data()) && guard1;
    if(V)
      llvm::outs()<<"\ntail: "<<tail.to_string();
    expr head = statesActive[t1.to](stateArgsAfter.size(), stateArgsAfter.data());
    if(V)
      llvm::outs()<<"\nhead: "<<head.to_string();
    expr body = implies(tail, head);
    if(V)
      llvm::outs()<<"\nbody: "<<body.to_string();

    expr imp = nestedForall(nestingVars, body, numArgs, numOutputs, c);
    s.add(imp);
  }

  vector<func_decl> argInputs;
  // mutual exclusion 

  for (const auto& sa1: statesActive){
    expr tail = sa1(stateArgs.size(), stateArgs.data());
    expr head = c.bool_val(true);
    for(const auto& sa2: statesActive)
      head = head && (!sa2(stateArgs.size(), stateArgs.data()));
    expr body = implies(tail, head);
    // do not change the 0 here 
    s.add(nestedForall(stateArgs, body, 0, numOutputs, c));
  }

  auto r = parseLTL(property, stateArgs, stateInv, transitions, statesActive, numArgs, numOutputs, c);
  s.add(r);

  printSolverAssertions(c, s, output, statesActive, argInputs);
}

int main(int argc, char **argv) {
  string input = argv[1];
  cout << "input file: " << input << endl;

  string prop = argv[2];
  cout << "property file: " << prop << endl;

  string output = argv[3];
  cout << "output file: " << output << endl;

  parseFSM(input, prop, output);

  return 0;
}