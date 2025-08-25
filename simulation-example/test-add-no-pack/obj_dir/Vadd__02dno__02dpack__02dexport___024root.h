// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vadd__02dno__02dpack__02dexport.h for the primary calling header

#ifndef VERILATED_VADD__02DNO__02DPACK__02DEXPORT___024ROOT_H_
#define VERILATED_VADD__02DNO__02DPACK__02DEXPORT___024ROOT_H_  // guard

#include "verilated.h"


class Vadd__02dno__02dpack__02dexport__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vadd__02dno__02dpack__02dexport___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(a_valid,0,0);
    VL_OUT8(a_ready,0,0);
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __VicoFirstIteration;
    CData/*0:0*/ __VactContinue;
    VL_IN(a,31,0);
    VL_OUT(out0,31,0);
    IData/*31:0*/ __VactIterCount;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<0> __VactTriggered;
    VlTriggerVec<0> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vadd__02dno__02dpack__02dexport__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vadd__02dno__02dpack__02dexport___024root(Vadd__02dno__02dpack__02dexport__Syms* symsp, const char* v__name);
    ~Vadd__02dno__02dpack__02dexport___024root();
    VL_UNCOPYABLE(Vadd__02dno__02dpack__02dexport___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
