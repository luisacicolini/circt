// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vadd__02dwith__02dpack__02dexport.h for the primary calling header

#include "Vadd__02dwith__02dpack__02dexport__pch.h"
#include "Vadd__02dwith__02dpack__02dexport__Syms.h"
#include "Vadd__02dwith__02dpack__02dexport___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void Vadd__02dwith__02dpack__02dexport___024root___dump_triggers__ico(Vadd__02dwith__02dpack__02dexport___024root* vlSelf);
#endif  // VL_DEBUG

void Vadd__02dwith__02dpack__02dexport___024root___eval_triggers__ico(Vadd__02dwith__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dwith__02dpack__02dexport___024root___eval_triggers__ico\n"); );
    Vadd__02dwith__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__VicoTriggered.setBit(0U, (IData)(vlSelfRef.__VicoFirstIteration));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vadd__02dwith__02dpack__02dexport___024root___dump_triggers__ico(vlSelf);
    }
#endif
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vadd__02dwith__02dpack__02dexport___024root___dump_triggers__act(Vadd__02dwith__02dpack__02dexport___024root* vlSelf);
#endif  // VL_DEBUG

void Vadd__02dwith__02dpack__02dexport___024root___eval_triggers__act(Vadd__02dwith__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dwith__02dpack__02dexport___024root___eval_triggers__act\n"); );
    Vadd__02dwith__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vadd__02dwith__02dpack__02dexport___024root___dump_triggers__act(vlSelf);
    }
#endif
}
