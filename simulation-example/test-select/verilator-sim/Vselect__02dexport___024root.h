// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vselect__02dexport.h for the primary calling header

#ifndef VERILATED_VSELECT__02DEXPORT___024ROOT_H_
#define VERILATED_VSELECT__02DEXPORT___024ROOT_H_  // guard

#include "verilated.h"


class Vselect__02dexport__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vselect__02dexport___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(select,0,0);
    VL_IN8(select_valid,0,0);
    VL_IN8(a_valid,0,0);
    VL_IN8(b_valid,0,0);
    VL_IN8(clk,0,0);
    VL_IN8(rst,0,0);
    VL_IN8(out0_ready,0,0);
    VL_OUT8(select_ready,0,0);
    VL_OUT8(a_ready,0,0);
    VL_OUT8(b_ready,0,0);
    VL_OUT8(out0_valid,0,0);
    CData/*0:0*/ __VactContinue;
    IData/*31:0*/ __VstlIterCount;
    IData/*31:0*/ __VicoIterCount;
    IData/*31:0*/ __VactIterCount;
    VL_IN64(a,63,0);
    VL_IN64(b,63,0);
    VL_OUT64(out0,63,0);
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<0> __VactTriggered;
    VlTriggerVec<0> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vselect__02dexport__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vselect__02dexport___024root(Vselect__02dexport__Syms* symsp, const char* v__name);
    ~Vselect__02dexport___024root();
    VL_UNCOPYABLE(Vselect__02dexport___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
