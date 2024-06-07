#include "circt/Dialect/FSM/FSMGraph.h"
#include "circt/Dialect/Comb/CombOps.h"
#include "circt/Dialect/FSM/FSMOps.h"
#include "circt/Dialect/LTL/LTLDialect.h"
#include "circt/Dialect/LTL/LTLOps.h"
#include <z3++.h>
#include <iostream>
#include <vector>
#include "mlir/IR/Builders.h"
#include "mlir/IR/Value.h"
#include "mlir/Parser/Parser.h"
#include "chrono"
#include "fstream"
#include "iostream"
#include "llvm/Support/raw_ostream.h"

#define V 1

using namespace llvm;
using namespace mlir;
using namespace circt;
using namespace std;
using namespace z3; 

using z3Fun = std::function <expr (vector<expr>)>;

using z3FunA = std::function <vector<expr> (vector<expr>)>;

struct transition{
  int from, to;
  z3Fun guard;
  bool isGuard, isAction, isOutput;
  z3FunA action, output;
};


/**
 * @brief Prints solver assertions
 
*/
void printSolverAssertions(z3::solver &solver) {

  if(V){
    llvm::outs()<<"---------------------------- SOLVER ----------------------------"<<"\n";
    llvm::outs()<<solver.to_smt2()<<"\n";
    llvm::outs()<<"------------------------ SOLVER RETURNS ------------------------"<<"\n";
    llvm::outs()<<solver.check()<<"\n";
  }
  const auto start{std::chrono::steady_clock::now()};
  int sat = solver.check();
  const auto end{std::chrono::steady_clock::now()};
  if(!V)
    llvm::outs()<<sat<<"\n";


  const std::chrono::duration<double> elapsed_seconds{end - start};

  if(V){
    llvm::outs()<<"--------------------------- INVARIANT --------------------------"<<"\n";
    llvm::outs()<<solver.get_model().to_string()<<"\n";
    llvm::outs()<<"-------------------------- END -------------------------------"<<"\n";
    llvm::outs()<<"Time taken: "<<elapsed_seconds.count()<<"s\n";
  }

	ofstream outfile;
	outfile.open("output.txt", ios::app);
	outfile << elapsed_seconds.count()<<","<<sat << endl;
	outfile.close();
}

void printTransitions(vector<transition> &transitions){
  llvm::outs()<<"\nPRINTING TRANSITIONS\n";
  for(auto t: transitions){
    llvm::outs()<<"\ntransition from "<<t.from<<" to "<<t.to<<"\n";
  }
}

void printExprValMap(vector<std::pair<expr, mlir::Value>> &expr_map){
  llvm::outs()<<"\n\nEXPR-VAL:";
  for(auto e: expr_map){
    llvm::outs()<<"\n\nexpr: "<<e.first.to_string()<<", value: "<<e.second;
  } 
  llvm::outs()<<"END\n";

}

/**
 * @brief Returns FSM's initial state
*/
string getInitialState(Operation &mod){
  for (Region &rg : mod.getRegions()) {
    for (Block &block : rg) {
      for (Operation &op : block) {
        if (auto machine = dyn_cast<fsm::MachineOp>(op)){
          return machine.getInitialState().str();
        }
      }
    }
  }
  llvm::errs()<<"Initial state does not exist\n";

}

/**
 * @brief Returns list of values to be updated within an action region
*/
vector<mlir::Value> actionsCounter(Region& action){
  vector<mlir::Value> to_update;
  for(auto &op: action.getOps()){
    if (auto updateop = dyn_cast<fsm::UpdateOp>(op)){
      to_update.push_back(updateop.getOperands()[0]);
    }
  }
  return to_update;
}

/**
 * @brief Returns expression from Comb dialect operator
*/
expr manage_comb_exp(Operation &op, vector<expr> &vec, z3::context &c){

  if(auto add = dyn_cast<comb::AddOp>(op)){
    return to_expr(c, vec[0] + vec[1]);
  } 
  else if(auto and_op = dyn_cast<comb::AndOp>(op)){
    return expr(vec[0] && vec[1]);
    }
  else if(auto xor_op = dyn_cast<comb::XorOp>(op)){
    return expr(vec[0] ^ vec[1]);
  }
  else if(auto or_op = dyn_cast<comb::OrOp>(op)){
    return expr(vec[0] | vec[1]);
  }
  else if(auto mul_op = dyn_cast<comb::MulOp>(op)){
    return expr(vec[0]* vec[1]);
  }
  else if(auto icmp = dyn_cast<comb::ICmpOp>(op)){
    circt::comb::ICmpPredicate predicate = icmp.getPredicate();
    switch (predicate){
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
expr getExpr(mlir::Value v, vector<std::pair<expr, mlir::Value>> &expr_map, z3::context &c){

  for(auto e: expr_map){
    if (e.second==v)
      return e.first;
  }

  if(auto constop = dyn_cast<hw::ConstantOp>(v.getDefiningOp())){
    if(constop.getType().getIntOrFloatBitWidth()>1)
      return c.int_val(constop.getValue().getSExtValue());
    else
      return c.bool_val(0);
  }
  llvm::errs()<<"Expression not found.";
}

/**
 * @brief Returns guard expression for input region
*/
expr getGuardExpr(vector<std::pair<expr, mlir::Value>> &expr_map, Region &guard, z3::context &c){

  for(auto &op: guard.getOps()){
    if (auto retop = dyn_cast<fsm::ReturnOp>(op)){
      for(auto e: expr_map){
        if (e.second==retop.getOperand()){

          return e.first;
          
        }
      }
    } 
    vector<expr> vec;
    for (auto operand: op.getOperands()){
      vec.push_back(getExpr(operand, expr_map, c));


    }


    expr_map.push_back({manage_comb_exp(op, vec, c), op.getResult(0)});
    printExprValMap(expr_map);

  }
  return expr(c.bool_const("true"));
}

/**
 * @brief Returns output expression for input region
*/
vector<expr> getOutputExpr(vector<std::pair<expr, mlir::Value>> &expr_map, Region &guard, z3::context &c){
  vector<expr> outputExp; 
  printExprValMap(expr_map);
  for(auto &op: guard.getOps()){
    if (auto outop = dyn_cast<fsm::OutputOp>(op)){
      for (auto opr: outop.getOperands()){
        for(auto e: expr_map){
          if (e.second==opr){
            llvm::outs()<<"\npushing "<<e.second;
            outputExp.push_back(e.first);
          }
        }
      }
      return outputExp;
    } 
    vector<expr> vec;
    for (auto operand: op.getOperands()){
      vec.push_back(getExpr(operand, expr_map, c));
    }
    expr_map.push_back({manage_comb_exp(op, vec, c), op.getResult(0)});
  }

}

/**
 * @brief Returns actions for all expressions for the input region
*/
vector<expr> getActionExpr(Region &action, context &c, vector<mlir::Value> &to_update, vector<std::pair<expr, mlir::Value>> &expr_map){
  vector<expr> updated_vec;
  for (auto v: to_update){
    bool found = false;
    for(auto &op: action.getOps()){
      if(!found){
        if (auto updateop = dyn_cast<fsm::UpdateOp>(op)){
          if(v == updateop.getOperands()[0]){

            updated_vec.push_back(getExpr(updateop.getOperands()[1], expr_map, c));

            found = true;

          }
        } else {
          vector<expr> vec;
          for (auto operand: op.getOperands()){

            vec.push_back(getExpr(operand, expr_map, c));


          }


          expr_map.push_back({manage_comb_exp(op, vec, c), op.getResult(0)});
        }
      }
    }
    if(!found){
      for(auto e: expr_map){
        if (e.second==v)
          updated_vec.push_back(e.first);
      }
    }
  }
  return updated_vec;
}

/**
 * @brief Parse FSM arguments and add them to the variable map
*/
int populateArgs(Operation &mod, vector<mlir::Value> &vecVal, vector<std::pair<expr, mlir::Value>> &variables, z3::context &c){
  int numArgs = 0;
  for(Region &rg: mod.getRegions()){
      for(Block &bl: rg){
        for(Operation &op: bl){
          if(auto machine = dyn_cast<fsm::MachineOp>(op)){
            for (Region &rg : op.getRegions()) {
              for (Block &block : rg) {
                for(auto a: block.getArguments()){
                  expr input = c.bool_const(("arg"+to_string(numArgs)).c_str());
                  if(a.getType().getIntOrFloatBitWidth()>1){ 
                    input = c.int_const(("arg"+to_string(numArgs)).c_str());
                  } else {
                    input = c.bool_const(("arg"+to_string(numArgs)).c_str());
                  }
                  variables.push_back({input, a});
                  // varMap->exprs.push_back(input);
                  // varMap->values.push_back(a);
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

int populateOutputs(Operation &mod, vector<mlir::Value> &vecVal, vector<std::pair<expr, mlir::Value>> &variables, z3::context &c, MLIRContext &context, OwningOpRef<ModuleOp> &module){
  int numOutput = 0;
  for(Region &rg: mod.getRegions()){
    for(Block &bl: rg){
      for(Operation &op: bl){
        if(auto machine = dyn_cast<fsm::MachineOp>(op)){
          for (auto opr: machine.getFunctionType().getResults()) {
            expr e = c.bool_const(("output_"+to_string(numOutput)).c_str());
            if(opr.getIntOrFloatBitWidth()>1){ 
              e = c.int_const(("output_"+to_string(numOutput)).c_str());
            }
            // is this conceptually correct?
            OpBuilder builder(&machine.getBody());

            auto loc = builder.getUnknownLoc();

            auto variable = builder.create<fsm::VariableOp>(loc, builder.getIntegerType(opr.getIntOrFloatBitWidth()), IntegerAttr::get(builder.getIntegerType(opr.getIntOrFloatBitWidth()), 0), builder.getStringAttr("outputVal"));

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
 * @brief Parse FSM variables and add them to the variable map
*/
void populateVars(Operation &mod, vector<mlir::Value> &vecVal, vector<std::pair<expr, mlir::Value>> &variables, z3::context &c, int numArgs){
  for(Region &rg: mod.getRegions()){
    for(Block &bl: rg){
      for(Operation &op: bl){
        if(auto machine = dyn_cast<fsm::MachineOp>(op)){
          for (Region &rg : op.getRegions()) {
            for (Block &block : rg) {
              for(Operation &op: block){ 
                if(auto varOp = dyn_cast<fsm::VariableOp>(op)){
                  vecVal.push_back(varOp.getResult());
                  int initValue = varOp.getInitValue().cast<IntegerAttr>().getInt();
                  string varName = varOp.getName().str();
                  if(varOp.getName().str().find("arg") != std::string::npos){
                    // reserved keyword arg for arguments to avoid ambiguity when setting initial state values
                    varName = "var"+to_string(numArgs);
                    numArgs++;
                  }
                  expr input = c.bool_const((varName+"_"+to_string(initValue)).c_str());
                  if(varOp.getResult().getType().getIntOrFloatBitWidth()>1){ 
                    input = c.int_const((varName+"_"+to_string(initValue)).c_str());
                  }
                  variables.push_back({input, varOp.getResult()});
                  // varMap->insert(input, varOp.getResult());
                  // varMap->exprs.push_back(input);
                  // varMap->values.push_back(varOp.getResult());
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
int insertState(string state, vector<string> &stateInv){
  int i=0;
  for(auto s: stateInv){
    // return index
    if (s == state)
      return i;
    i++;
  }
  stateInv.push_back(state);
  return stateInv.size()-1;
}

/**
 * @brief Parse FSM states and add them to the state map
*/
void populateST(Operation &mod, context &c, vector<string> &stateInv, vector<transition> &transitions, vector<mlir::Value> &vecVal, int numOutput){
  for (Region &rg: mod.getRegions()){
    for (Block &bl: rg){
      for (Operation &op: bl){
        if (auto machine = dyn_cast<fsm::MachineOp>(op)){
          for (Region &rg : op.getRegions()) {
            for (Block &block : rg) {
              int numState = 0;
              for (Operation &op : block) {
                if (auto state = dyn_cast<fsm::StateOp>(op)){
                  string currentState = state.getName().str();
                  insertState(currentState, stateInv);
                  numState++;
                  if(V){
                    llvm::outs()<<"inserting state "<<currentState<<"\n";
                  }
                  auto regions = state.getRegions();
                  bool existsOutput = false;
                  if(!regions[0]->empty())
                    existsOutput = true;
                  // transitions region
                  for (Block &bl1: *regions[1]){
                    for (Operation &op: bl1.getOperations()){
                      if(auto transop = dyn_cast<fsm::TransitionOp>(op)){
                        transition t;
                        t.from = insertState(currentState, stateInv);
                        t.to = insertState(transop.getNextState().str(), stateInv);
                        t.isGuard = false;
                        t.isAction = false;
                        auto trRegions = transop.getRegions();
                        string nextState = transop.getNextState().str();                        
                        // guard
                        if(!trRegions[0]->empty()){
                          Region &r = *trRegions[0];
                          z3Fun g = [&r, &vecVal, &c](vector<expr> vec) {
                            vector<std::pair<expr, mlir::Value>> expr_map_tmp;
                            for(auto [value, expr]: llvm::zip(vecVal, vec)){
                              expr_map_tmp.push_back({expr, value});
                            }
                            expr guard_expr = getGuardExpr(expr_map_tmp, r, c);
                            return guard_expr;
                          };                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
                          t.guard = g;
                          t.isGuard = true;
                        }
                        // action 
                        if(!trRegions[1]->empty()){
                            Region &r = *trRegions[1];
                            vector<mlir::Value> to_update = actionsCounter(r);
                            z3FunA a = [&r, &vecVal, &c](vector<expr> vec) -> vector<expr> {
                              expr time = vec[vec.size()-1];
                              vector<std::pair<expr, mlir::Value>> tmp_var;
                              for(auto [value, expr]: llvm::zip(vecVal, vec)){
                                tmp_var.push_back({expr, value});
                              }
                              vector<expr> vec2 =getActionExpr(r, c, vecVal, tmp_var); 
                              vec2.push_back(time);
                              return vec2;
                            };
                            t.action = a;
                            t.isAction = true;
                        }
                        if(existsOutput){
                            Region &r2 = *regions[0];
                            z3FunA a = [&r2, &numOutput, &vecVal, &c](vector<expr> vec) -> vector<expr> {
                              vector<std::pair<expr, mlir::Value>> tmp_out;
                              for(auto [value, expr]: llvm::zip(vecVal, vec)){
                                tmp_out.push_back({expr, value});
                              }
                              vector<expr> output_expr = getOutputExpr(tmp_out, r2, c);
                              // todo: update output val in vec2
                              for (int j=0; j<output_expr.size(); j++){
                                vec[vec.size()-output_expr.size()+j]=output_expr[j];
                              }
                              return vec;
                            };
                            t.output = a;
                            t.isOutput = true;
                        }

                        llvm::outs()<<"\nwtf2\n";

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
expr nestedForall(vector<expr> &solver_vars, expr &body, long unsigned i, int numOutputs){
  llvm::outs()<<"\n\ncall "<<i<<", body: "<<body.to_string();

  if(i==solver_vars.size()-numOutputs-1){ // last elements (outputs and time) are separately as a special case


  llvm::outs()<<"\nreturning "<<i<<", body: "<<body.to_string();

    return body;
  } else {
    expr tmp2 = nestedForall(solver_vars, body, i+1, numOutputs);
    llvm::outs()<<"\ntmp2: "<<tmp2.to_string();
    for(auto sv: solver_vars)
      llvm::outs()<<"\nsv: "<<sv.to_string();

    expr tmp = forall(solver_vars[i], tmp2);
    llvm::outs()<<"\ntmp: "<<tmp.to_string();
    return tmp;
  }
}

/**
 * @brief Build Z3 boolean function for each state in the state map
*/
void populateStateInvMap(vector<string> &stateInv, context &c, vector<Z3_sort> &invInput, vector<func_decl> &stateInvFun){
  for(auto s: stateInv){
    const symbol cc = c.str_symbol(s.c_str());
    Z3_func_decl I = Z3_mk_func_decl(c, cc, invInput.size(), invInput.data(), c.bool_sort());
    func_decl I2 = func_decl(c, I);
    stateInvFun.push_back(I2);
  }
}

/**
 * @brief Build Z3 function for each input argument
*/
void populateInvInput(vector<std::pair<expr, mlir::Value>> &variables, context &c, vector<expr> &solverVars, vector<Z3_sort> &invInput){

  int i=0;

  for(auto e: variables){
    llvm::outs()<<"\nexp: "<<e.first.to_string();
    llvm::outs()<<"\nval: "<<e.second;

    expr input = c.bool_const(("arg"+to_string(i)).c_str());
    z3::sort invIn = c.bool_sort();
    if(e.second.getType().getIntOrFloatBitWidth()>1){ 

      llvm::outs()<<"\nadding int expression "<<(e.first).to_string()<<" with value "<<(e.second)<<"\n";

      input = c.int_const(("arg"+to_string(i)).c_str());
      invIn = c.int_sort(); 
    } else {
      llvm::outs()<<"\nadding bool expression "<<(e.first).to_string()<<" with value "<<(e.second)<<"\n";
    }
    solverVars.push_back(input);
    if(V){
      llvm::outs()<<"solverVars now: "<<solverVars[i].to_string()<<"\n";
    }
    i++;
    invInput.push_back(invIn);
  }


}

expr parseLTL(string inputFile){
  DialectRegistry registry;

  registry.insert<ltl::LTLDialect>();

  MLIRContext context(registry);

  // Parse the MLIR code into a module.
  OwningOpRef<ModuleOp> module = mlir::parseSourceFile<ModuleOp>(inputFile, &context);

  Operation& mod = module.get()[0];

  for (Region &rg: mod.getRegions()){
    for (Block &bl: rg){
      for (Operation &op: bl){ 
        if (auto ev = dyn_cast<ltl::EventuallyOp>(op)){
          auto attr_dict = ev.getOperation()->getAttrDictionary();
          if(attr_dict.size()==1){
            // reachability

          }else if(attr_dict.size()==2){
            // comb

          }
          else{
            llvm::outs()<<"\nunknown property.\n";
          }
        } else if (auto imp = dyn_cast<ltl::ImplicationOp>(op)){
          auto attr_dict = ev.getOperation()->getAttrDictionary();
          if(attr_dict.size()==2){
            // error sig triggers error state 
          }
          else{
            llvm::outs()<<"\nunknown property.\n";
          }
        } else{
          llvm::outs()<<"\nunknown property.\n";
        }
      }
    }
  }
}

expr getInvariant(int id, vector<expr> &solverVars, vector<func_decl> &invFun){

  auto vr = invFun.at(id)(solverVars.size(), solverVars.data());

  assert(vr.is_bool());

  return vr;
}

/**
 * @brief Parse FSM and build SMT model 
*/
void parse_fsm(string input, string property, int time, string arg1, string arg2, string arg3){

  DialectRegistry registry;

  registry.insert<
    comb::CombDialect,
    fsm::FSMDialect,
    hw::HWDialect
  >();

  MLIRContext context(registry);

  // Parse the MLIR code into a module.
  OwningOpRef<ModuleOp> module = mlir::parseSourceFile<ModuleOp>(input, &context);

  Operation& mod = module.get()[0];

  z3::context c;

  solver s(c);

  vector<string> stateInv;

  vector<std::pair<expr, mlir::Value>> variables;

  vector<mlir::Value> vecVal;

  vector<transition> transitions;
  
  string initialState = getInitialState(mod);

  // initial state is by default associated with id 0

  insertState(initialState, stateInv);

  if(V){
    llvm::outs()<<"initial state: "<<initialState<<"\n";
  }

  int numArgs = populateArgs(mod, vecVal, variables, c);

  populateVars(mod, vecVal, variables, c, numArgs);

  int numOutputs = populateOutputs(mod, vecVal, variables, c, context, module);

  populateST(mod, c, stateInv, transitions, vecVal, numOutputs);

  // preparing the model
  printTransitions(transitions);

  vector<expr> solverVars;

  vector<Z3_sort> invInput;

  vector<func_decl> argInputs;

  vector<func_decl> stateInvFun;

  populateInvInput(variables, c, solverVars, invInput);

  expr time_var = c.int_const("time");
  z3::sort timeInv = c.int_sort();
  
  solverVars.push_back(time_var);
  invInput.push_back(timeInv);

  // generate functions for inputs
  if(V)
    llvm::outs()<<"number of args: "<<numArgs<<"\n\n";

  for(int i=0; i<numArgs; i++){
      const symbol cc = c.str_symbol(("input-arg"+to_string(i)).c_str());
      llvm::outs()<<"domain: "<<&invInput[i]<<"\n";
      Z3_func_decl I = Z3_mk_func_decl(c, cc, 1, &invInput[invInput.size()-1], c.int_sort());
      func_decl I2 = func_decl(c, I);
      argInputs.push_back(I2);
  }

  populateStateInvMap(stateInv, c, invInput, stateInvFun);

  if(V){
    llvm::outs()<<"number of variables + args: "<<solverVars.size()<<"\n";
    for (auto v: solverVars){
      llvm::outs()<<"variable: "<<v.to_string()<<"\n";
    }
  }

  int j=0;

  vector<expr> solverVarsInit;
  copy(solverVars.begin(), solverVars.end(), back_inserter(solverVarsInit));  

  llvm::outs()<<"variables size: "<<variables.size();

  for(int i=numArgs; i<int(variables.size()); i++){
    if(i==1){
      bool init_value = false;//stoi(variables[i].first.to_string().substr(variables[i].first.to_string().find("_")+1));
      llvm::outs()<<"\ninit value of "<<variables[i].first.to_string()<<" is "<<init_value;
      solverVarsInit.at(i) = c.bool_val(init_value);
    } else { 
      int init_value = stoi(variables[i].first.to_string().substr(variables[i].first.to_string().find("_")+1));
      llvm::outs()<<"\ninit value of "<<variables[i].first.to_string()<<" is "<<init_value;
      solverVarsInit.at(i) = c.int_val(init_value);
    }
  }
  solverVarsInit.at(solverVarsInit.size()-1) = c.int_val(0);
  for(int i=0; i<numArgs; i++){
    solverVarsInit[i] = argInputs[i](0);
  }

  for(auto sv: solverVarsInit){
    llvm::outs()<<"\nsvI[i]: "<<sv.to_string();
  }
  llvm::outs()<<"\n\n";

  printTransitions(transitions);

  // initialize time to 0
  expr body = stateInvFun.at(transitions.at(0).from)(solverVarsInit.size(), solverVarsInit.data());
  // initial condition

  llvm::outs()<<"\n\nbody fun: "<<body.to_string();

  llvm::outs()<<"\n\nnumOutputs: "<<numOutputs;

  expr nested = nestedForall(solverVars, body, numArgs, numOutputs);
  llvm::outs()<<"\n\nouts: "<<nested.to_string();

  // initial conditions
  // s.add(implies(solverVars[2]==0, (solverVars[0]==0)));
  // s.add(implies(solverVars[2]==0, (!solverVars[1])));

  // s.add(implies(solverVars[2]==0, (stateInvFun.at(transitions.at(0).from)(solverVars.size(), solverVars.data()))));


  s.add(nested);

  // vector<func_decl> outputFuns;

  // for(int i=0; i<outputs.size(); i++){
  //     const symbol cc = c.str_symbol(("output-res"+to_string(i)).c_str());
  //     llvm::outs()<<"domain: "<<&invInput[i]<<"\n";
  //     Z3_func_decl I = Z3_mk_func_decl(c, cc, 1, &invInput[invInput.size()-1], c.int_sort());
  //     func_decl I2 = func_decl(c, I);
  //     outputFuns.push_back(I2);
  // }

  for(auto t: transitions){

    llvm::outs()<<"TRANSITION\n";

    vector<expr> solverVarsAfter;

    for(int i=0; i<int(argInputs.size()); i++){
      solverVars[i] = argInputs[i](solverVars[solverVars.size()-1]);
    }

    copy(solverVars.begin(), solverVars.end(), back_inserter(solverVarsAfter));
    solverVarsAfter.at(solverVarsAfter.size()-1) = solverVars[solverVars.size()-1]+1;

    for(int i=0; i<int(argInputs.size()); i++){
      solverVarsAfter[i] = argInputs[i](solverVarsAfter.at(solverVarsAfter.size()-1));
    }

    for(auto sv: solverVarsAfter){
      llvm::outs()<<"\nsvA[i]: "<<sv.to_string();
    }
    llvm::outs()<<"\n";

    for(auto sv: solverVars){
      llvm::outs()<<"\nsv[i]: "<<sv.to_string();
    }
    llvm::outs()<<"\n";



    if(t.isOutput){
      if(t.isGuard && t.isAction){
        vector<expr> afterAct = t.action(solverVarsAfter);
        for(auto aa: afterAct)
          llvm::outs()<<"\n1after act: "<<aa.to_string();
        vector<expr> afterOut = t.output(afterAct);
        for(auto ao: afterOut)
          llvm::outs()<<"\n1after out: "<<ao.to_string();
        expr body = implies((stateInvFun[t.from](solverVars.size(), solverVars.data())) && t.guard(solverVars), stateInvFun[t.to](t.output(t.action(solverVarsAfter)).size(), t.output(t.action(solverVarsAfter)).data()));
        s.add(forall(solverVars[solverVars.size()-1], implies((solverVars[solverVars.size()-1]>=0 && solverVars[solverVars.size()-1]<time), ((nestedForall(solverVars, body, numArgs, numOutputs))))));
      } 
      else if (t.isGuard){
        vector<expr> afterOut = t.output(solverVarsAfter);
        for(auto ao: afterOut)
          llvm::outs()<<"\n2after out: "<<ao.to_string();
        expr body = implies((stateInvFun[t.from](solverVars.size(), solverVars.data()) && t.guard(solverVars)), stateInvFun[t.to](t.output(t.action(solverVarsAfter)).size(), t.output(t.action(solverVarsAfter)).data()));
        s.add(forall(solverVars[solverVars.size()-1], implies((solverVars[solverVars.size()-1]>=0 && solverVars[solverVars.size()-1]<time), ((nestedForall(solverVars, body,numArgs, numOutputs))))));
      } else if (t.isAction){
        vector<expr> afterAct = t.action(solverVarsAfter);
        for(auto aa: afterAct)
          llvm::outs()<<"\n3after act: "<<aa.to_string();
        vector<expr> afterOut = t.output(afterAct);
        for(auto ao: afterOut)
          llvm::outs()<<"\n3after out: "<<ao.to_string();
        expr body = implies(stateInvFun[t.from](solverVars.size(), solverVars.data()), stateInvFun[t.to](t.output(t.action(solverVarsAfter)).size(), t.output(t.action(solverVarsAfter)).data()));
        s.add(forall(solverVars[solverVars.size()-1], implies((solverVars[solverVars.size()-1]>=0 && solverVars[solverVars.size()-1]<time), ((nestedForall(solverVars, body, numArgs, numOutputs))))));
      } else {
        vector<expr> afterOut = t.output(solverVarsAfter);
        for(auto ao: afterOut)
          llvm::outs()<<"\n4after out: "<<ao.to_string();
        expr body = implies((stateInvFun[t.from](solverVars.size(), solverVars.data())), stateInvFun[t.to](t.output(solverVarsAfter).size(), t.output(solverVarsAfter).data()));
        s.add(forall(solverVars[solverVars.size()-1],  implies((solverVars[solverVars.size()-1]>=0 && solverVars[solverVars.size()-1]<time), ((nestedForall(solverVars, body, numArgs, numOutputs))))));
      }
    } else {
      if(t.isGuard && t.isAction){
        assert(stateInvFun[t.to](t.action(solverVarsAfter).size(), t.action(solverVarsAfter).data()).is_bool());
        expr body = implies((stateInvFun[t.from](solverVars.size(), solverVars.data())) && t.guard(solverVars), stateInvFun[t.to]((t.action(solverVarsAfter)).size(), (t.action(solverVarsAfter)).data()));
        s.add(forall(solverVars[solverVars.size()-1], implies((solverVars[solverVars.size()-1]>=0 && solverVars[solverVars.size()-1]<time), ((nestedForall(solverVars, body, numArgs, numOutputs))))));
      } 
      else if (t.isGuard){
        expr body = implies((stateInvFun[t.from](solverVars.size(), solverVars.data()) && t.guard(solverVars)), stateInvFun[t.to]((t.action(solverVarsAfter)).size(), (t.action(solverVarsAfter)).data()));
        s.add(forall(solverVars[solverVars.size()-1], implies((solverVars[solverVars.size()-1]>=0 && solverVars[solverVars.size()-1]<time), ((nestedForall(solverVars, body,numArgs, numOutputs))))));
      } else if (t.isAction){
        expr body = implies(stateInvFun[t.from](solverVars.size(), solverVars.data()), stateInvFun[t.to]((t.action(solverVarsAfter)).size(), (t.action(solverVarsAfter)).data()));
        s.add(forall(solverVars[solverVars.size()-1], implies((solverVars[solverVars.size()-1]>=0 && solverVars[solverVars.size()-1]<time), ((nestedForall(solverVars, body, numArgs, numOutputs))))));
      } else {
        expr body = implies((stateInvFun[t.from](solverVars.size(), solverVars.data())), stateInvFun[t.to]((solverVarsAfter).size(), (solverVarsAfter).data()));
        s.add(forall(solverVars[solverVars.size()-1],  implies((solverVars[solverVars.size()-1]>=0 && solverVars[solverVars.size()-1]<time), ((nestedForall(solverVars, body, numArgs, numOutputs))))));
      }
    }



  }

  // p1

  // llvm::outs()<<"property to test: "<<property<<"\n";

  // llvm::outs()<<"\nTesting reachability of state "<<arg1<<" indexed at \n";
  // llvm::outs()<<insertState(arg1, stateInv);
  // for(int i=0; i<int(argInputs.size()); i++){
  //   solverVars[i] = argInputs[i](solverVars[solverVars.size()-1]);
  // }
  // body = !stateInvFun.at(insertState(arg1, stateInv))(solverVars.size(), solverVars.data());
  // s.add(forall(solverVars[solverVars.size()-1],  implies((solverVars[solverVars.size()-1]>=0 && solverVars[solverVars.size()-1]<time), nestedForall(solverVars,body,numArgs))));
  // slow alternative: reachability sat
  // body = (findMyFun(to_check, stateInvFun)(solverVars.size(), solverVars.data()));
  // s.add(exists(solverVars[solverVars.size()-1],  implies((solverVars[solverVars.size()-1]>=0 && solverVars[solverVars.size()-1]<time), nestedForall(solverVars,body,0))));
  
  // p2

      
  // int var = stoi(arg2);
  // int value = stoi(arg3);
  // for(int i=0; i<int(argInputs.size()); i++){
  //   solverVars[i] = argInputs[i](solverVars[solverVars.size()-1]);
  // }
  // llvm::outs()<<"\nTesting value "<<value<<" of variable "<<var<<" at state "<<arg1<<"\n";
  // if (var>=int(solverVars.size())-1){
  //   llvm::errs()<<"Tested variable does not exist\n";
  //   return;
  // }
  // expr body = ((stateInvFun.at(insertState(arg1, stateInv))(solverVars.size(), solverVars.data())) && (solverVars.at(var)!=value));
  // s.add(exists(solverVars[solverVars.size()-1],  nestedForall(solverVars, body, 0)));
      
  // p3

  //   vector<expr> *solverVarsAfter = new vector<expr>;
  //   for(int i=0; i<int(argInputs.size()); i++){
  //     solverVars[i] = argInputs[i](solverVars[solverVars.size()-1]);
  //   }
  //   copy(solverVars.begin(), solverVars.end(), back_inserter(*solverVarsAfter));
  //   for(int i=0; i<int(argInputs.size()); i++){
  //     solverVarsAfter[i] = argInputs[i](solverVarsAfter.at(solverVarsAfter.size()-1));
  //   }
  //   expr bodyErr = !(stateInvFun.at(insertState(arg1, stateInv))(solverVarsAfter.size(), solverVarsAfter.data()));
  //   body = argInputs.at(0)(solverVars[solverVars.size()-1]) && implies(solverVarsAfter.at(solverVarsAfter.size()-1)>solverVars[solverVars.size()-1] && solverVarsAfter.at(solverVarsAfter.size()-1)<time, nestedForall(solverVarsAfter, body, numArgs));
  //   s.add(forall(solverVars[solverVars.size()-1], implies((solverVars[solverVars.size()-1]>=0 && solverVars[solverVars.size()-1]<time-1), nestedForall(solverVars, body, numArgs))));
  //   break;

  // p4


  body = (solverVars[0]!=0);
  s.add(forall(solverVars[solverVars.size()-1], implies((solverVars[solverVars.size()-1]>=0 && solverVars[solverVars.size()-1]<time-1), body)));

  // parseLTL(property);

  printSolverAssertions(s);

}


int main(int argc, char **argv){

  string input = argv[1];

  string property = argv[2];

  int time = stoi(argv[3]);

  string arg1 = argv[4];

  string arg2 = argv[5];

  string arg3 = argv[6];

  cout << "input file: " << input << endl;

  ofstream outfile;
  outfile.open("output.txt", ios::app);
	outfile << input << endl;
	outfile.close();

  parse_fsm(input, property, time, arg1, arg2, arg3);

}