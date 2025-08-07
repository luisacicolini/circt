// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VSELECT__02DEXPORT__SYMS_H_
#define VERILATED_VSELECT__02DEXPORT__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "Vselect__02dexport.h"

// INCLUDE MODULE CLASSES
#include "Vselect__02dexport___024root.h"

// SYMS CLASS (contains all model state)
class alignas(VL_CACHE_LINE_BYTES)Vselect__02dexport__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vselect__02dexport* const __Vm_modelp;
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vselect__02dexport___024root   TOP;

    // CONSTRUCTORS
    Vselect__02dexport__Syms(VerilatedContext* contextp, const char* namep, Vselect__02dexport* modelp);
    ~Vselect__02dexport__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
};

#endif  // guard
