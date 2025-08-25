#include "Vadd__02dno__02dpack__02dexport.h"
#include "verilated.h"
#include <stdio.h>

int main(int argc, char** argv) {
    VerilatedContext* contextp = new VerilatedContext;
    contextp->commandArgs(argc, argv);
    Vadd__02dno__02dpack__02dexport* top = new Vadd__02dno__02dpack__02dexport{contextp};
    for (int i = 0; i < 10; i++){
        printf("Evaluating circuit with input %d\n", i);
        top->a = i;
        top->a_valid = 1;
        top->eval(); 
        printf("Output: %d\n", top->out0);
    }
    delete top;
    delete contextp;
    return 0;
}