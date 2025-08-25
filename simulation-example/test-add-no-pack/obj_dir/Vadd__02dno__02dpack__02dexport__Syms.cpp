// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vadd__02dno__02dpack__02dexport__pch.h"
#include "Vadd__02dno__02dpack__02dexport.h"
#include "Vadd__02dno__02dpack__02dexport___024root.h"

// FUNCTIONS
Vadd__02dno__02dpack__02dexport__Syms::~Vadd__02dno__02dpack__02dexport__Syms()
{
}

Vadd__02dno__02dpack__02dexport__Syms::Vadd__02dno__02dpack__02dexport__Syms(VerilatedContext* contextp, const char* namep, Vadd__02dno__02dpack__02dexport* modelp)
    : VerilatedSyms{contextp}
    // Setup internal state of the Syms class
    , __Vm_modelp{modelp}
    // Setup module instances
    , TOP{this, namep}
{
        // Check resources
        Verilated::stackCheck(25);
    // Configure time unit / time precision
    _vm_contextp__->timeunit(-12);
    _vm_contextp__->timeprecision(-12);
    // Setup each module's pointers to their submodules
    // Setup each module's pointer back to symbol table (for public functions)
    TOP.__Vconfigure(true);
}
