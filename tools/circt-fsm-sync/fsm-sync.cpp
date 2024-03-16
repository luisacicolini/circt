#include "fsm-sync.h"
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
#include <boost/algorithm/string.hpp>


#define VERBOSE 0

using namespace llvm;
using namespace mlir;
using namespace circt;
using namespace std;

void printParallel(vector<transition> par){

  llvm::outs()<<"printing parallel FSM:\n";
  for(auto t: par){
    llvm::outs()<<"from "<<t.from<<" to "<<t.to<<"\n";
    llvm::outs()<<"guard: ";
    for(auto g: t.guard){
    }
    llvm::outs()<<"action: ";
    for(auto a: t.action){
    }
  }
}


vector<transition> parseFSM(string input_file){


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
                        t.isGuard = false;
                        t.isOutput = existsOutput;
                        t.isAction = false;
                        auto trRegions = transop.getRegions();
                        string nextState = transop.getNextState().str();                        
                        // guard
                        if(!trRegions[0]->empty()){
                          Region *r = trRegions[0];
                          t.guard.push_back(r);// =  r;
                          t.isGuard = true;
                        }
                        // action 
                        if(!trRegions[1]->empty()){
                          Region *r = trRegions[1];
                          t.action.push_back(r);// = r;
                          t.isAction = true;
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

  return transitions;

}


vector<string> getStates(vector<transition> fsm){
  vector<string> states;
  for(auto t: fsm){
    int ff = 0;
    for (auto s: states){
      if (s == t.from)
        ff = 1;
    }
    if(!ff)
      states.push_back(t.from);
    ff=0;
    for (auto s: states){
      if (s == t.to)
        ff = 1;
    }
    if(!ff)
      states.push_back(t.to);
  }
  return states;
}


vector<transition> parComp(vector<transition> fsm1, vector<transition> fsm2){

  vector<transition> parallelFsm;

  vector<string> states1 = getStates(fsm1);

  vector<string> states2 = getStates(fsm2);


  vector<string> parStates;

  for(auto s1: states1){
    for(auto s2: states2){
      // if self loop exists for either s1 or s2 
      parStates.push_back(s1+"."+s2);
      llvm::outs()<<"parallel states: "<<s1+"."+s2<<"\n";
    }
  } 

  // add self-loops from fsm1 to each state with corresponding first state in parStates;
  vector<int> toDel;
  int id = 0;
  for(int i = fsm1.size()-1; i>=0; i--){
    if (fsm1[i].to==fsm1[i].from){
      for(auto sp: parStates){
        string tmp;
        stringstream str(sp);
        getline(str, tmp, '.');
        if(fsm1[i].to == tmp){
          transition newT;
          newT.to = sp;
          newT.from = sp;
          if(fsm1[i].isAction){
            newT.action=(fsm1[i].action);
            newT.isAction = 1;
          }
          if(fsm1[i].isGuard){
            newT.guard=(fsm1[i].guard);
            newT.isGuard = 1;
            newT.neg.push_back(0);
          }
          parallelFsm.push_back(newT);
        }
      }
      fsm1.erase(fsm1.begin()+i);
    }
  }
  for(int i = fsm2.size()-1; i>=0; i--){
    if (fsm2[i].to==fsm2[i].from){
      for(auto sp: parStates){
        string tmp;
        stringstream str(sp);
        getline(str, tmp, '.');
        getline(str, tmp, '.');
        if(fsm2[i].to == tmp){
          transition newT;
          newT.to = sp;
          newT.from = sp;
          if(fsm2[i].isAction){
            newT.action = fsm2[i].action;
            newT.isAction = 1;
          }
          if(fsm2[i].isGuard){
            newT.guard = fsm2[i].guard;
            newT.isGuard = 1;
            newT.neg.push_back(0);
          }
          parallelFsm.push_back(newT);
        }
      }
      fsm2.erase(fsm2.begin()+i);
    }
  }

  printParallel(parallelFsm);

  for(auto t1: fsm1){
    for(auto t2: fsm2){
      // if g1 && g2
      transition tBoth;
      tBoth.from = t1.from+'.'+t2.from;
      tBoth.to = t1.to+'.'+t2.to;
      tBoth.isGuard=0;
      if(t1.isGuard || t2.isGuard){
        tBoth.isGuard = 1;
        if(t1.isGuard)
          tBoth.guard = t1.guard;
        tBoth.neg.push_back(0);
        if(t2.isGuard)
          tBoth.guard.push_back(t2.guard[0]);
        tBoth.neg.push_back(0);
      }
      if(t1.isAction || t2.isAction){
        tBoth.isAction = 1;
        if(t1.isAction)
          tBoth.action = t1.action;
        if(t2.isAction)
          tBoth.guard.push_back(t2.action[0]);
      }
      parallelFsm.push_back(tBoth);
      // if g1 && !g2
      transition tFirst;
      tFirst.from = t1.from+'.'+t2.from;
      tFirst.to = t1.to+'.'+t2.from;
      tFirst.isGuard=0;
      if(t1.isGuard || t2.isGuard){
        tFirst.isGuard = 1;
        if(t1.isGuard)
          tFirst.guard = t1.guard;
        if(t2.isGuard)
          tFirst.guard.push_back(t2.guard[0]);
        tFirst.neg.push_back(0);
        tFirst.neg.push_back(1);
      }
      if(t1.isAction || t2.isAction){
        tFirst.isAction = 1;
        if(t1.isAction)
          tFirst.action = t1.action;
        if(t2.isAction)
          tFirst.guard.push_back(t2.action[0]);
      }
      parallelFsm.push_back(tFirst);
      // if !g1 && g2
      transition tSec;
      tSec.from = t1.from+'.'+t2.from;
      tSec.to = t1.from+'.'+t2.to;
      tSec.isGuard=0;
      if(t1.isGuard || t2.isGuard){
        tSec.isGuard = 1;
        if(t1.isGuard)
          tSec.guard = t1.guard;
        if(t2.isGuard)
          tSec.guard.push_back(t2.guard[0]);
        tSec.neg.push_back(1);
        tSec.neg.push_back(0);
      }
      if(t1.isAction || t2.isAction){
        tSec.isAction = 1;
        if(t1.isAction)
          tSec.action = t1.action;
        if(t2.isAction)
          tSec.guard.push_back(t2.action[0]);
      }
      parallelFsm.push_back(tSec);
    } 
  }

  printParallel(parallelFsm);

  return parallelFsm;

}

int main(int argc, char **argv){

  string input1 = argv[1];

  string input2 = argv[2];

  vector<transition> fsm1 = parseFSM(input1);

  vector<transition> fsm2 = parseFSM(input2);

  vector<transition> parFsm = parComp(fsm1, fsm2);

  return 0;

}
