// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VADD__02DWITH__02DPACK__02DEXPORT__SYMS_H_
#define VERILATED_VADD__02DWITH__02DPACK__02DEXPORT__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "Vadd__02dwith__02dpack__02dexport.h"

// INCLUDE MODULE CLASSES
#include "Vadd__02dwith__02dpack__02dexport___024root.h"

// SYMS CLASS (contains all model state)
class alignas(VL_CACHE_LINE_BYTES)Vadd__02dwith__02dpack__02dexport__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vadd__02dwith__02dpack__02dexport* const __Vm_modelp;
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vadd__02dwith__02dpack__02dexport___024root TOP;

    // CONSTRUCTORS
    Vadd__02dwith__02dpack__02dexport__Syms(VerilatedContext* contextp, const char* namep, Vadd__02dwith__02dpack__02dexport* modelp);
    ~Vadd__02dwith__02dpack__02dexport__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
};

#endif  // guard
