#include "fsm-dot.h"
#include "circt/Dialect/FSM/FSMGraph.h"
#include "mlir/IR/Value.h"
#include "mlir/Support/LLVM.h"
#include <iostream>
#include <vector>
#include "llvm/ADT/DenseMap.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/Support/raw_ostream.h"
#include "chrono"
#include "fstream"
#include "iostream"


#define VERBOSE 0

using namespace llvm;
using namespace mlir;
using namespace circt;
using namespace std;


void parseFSM(string input_file, string output_file){

  ofstream output;
  // output.open(output_file);

  DialectRegistry registry;
  // clang-format off
  registry.insert<
    comb::CombDialect,
    fsm::FSMDialect,
    hw::HWDialect
  >();

  MLIRContext context(registry);

  // Parse the MLIR code into a module.
  OwningOpRef<ModuleOp> module = mlir::parseSourceFile<ModuleOp>(input_file, &context);

  Operation& mod = module.get()[0];

  vector<transition> transitions;

  output<<"digraph A{\n";

  
  for (Region &rg: mod.getRegions()){
    for (Block &bl: rg){
      for (Operation &op: bl){
        if (auto machine = dyn_cast<fsm::MachineOp>(op)){
          for (Region &rg : op.getRegions()) {
            for (Block &block : rg) {
              for (Operation &op : block) {
                if (auto state = dyn_cast<fsm::StateOp>(op)){
                  llvm::StringRef currentState = state.getName();
                  if(VERBOSE){
                    llvm::outs()<<"inserting state "<<currentState<<"\n";
                  }
                  auto regions = state.getRegions();
                  bool existsOutput = false;
                  if(!regions[0]->empty()){
                    existsOutput = true;
                  }
                  Region &outreg = *regions[0];
                  // transitions region
                  for (Block &bl1: *regions[1]){
                    for (Operation &op: bl1.getOperations()){
                      if(auto transop = dyn_cast<fsm::TransitionOp>(op)){
                        transition t;
                        t.from = currentState;
                        t.to = transop.getNextState();
                        output<<t.from<<"->"<<t.to<<"\n";
                        output<<"[label=\"";
                        t.isGuard = false;
                        t.isOutput = existsOutput;
                        t.isAction = false;
                        auto trRegions = transop.getRegions();
                        string nextState = transop.getNextState().str();                        
                        // guard
                        if(!trRegions[0]->empty()){
                          Region &r = *trRegions[0];
                          for(auto &op: r.getOps()){
                            // output<<op.dump();

                          }
                          t.isGuard = true;
                        }
                        // action 
                        if(!trRegions[1]->empty()){
                          Region &r = *trRegions[1];
                          for(auto &op: r.getOps()){
                  //           ostream tmp;
                  //           tmp << op;
                  //           t.action.push_back(tmp.str());
                          }
                          t.isAction = true;
                          output<<"\"]";
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

  output<<"}";

  output.close();
}

int main(int argc, char **argv){

  string input = argv[1];

  string output = argv[2];

  parseFSM(input, output);

  return 0;

}
