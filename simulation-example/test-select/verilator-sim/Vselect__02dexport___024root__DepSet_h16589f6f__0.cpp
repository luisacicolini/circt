// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vselect__02dexport.h for the primary calling header

#include "verilated.h"

#include "Vselect__02dexport__Syms.h"
#include "Vselect__02dexport___024root.h"

VL_INLINE_OPT void Vselect__02dexport___024root___ico_sequent__TOP__0(Vselect__02dexport___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vselect__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vselect__02dexport___024root___ico_sequent__TOP__0\n"); );
    // Body
    vlSelf->out0 = ((IData)(vlSelf->select) ? vlSelf->a
                     : vlSelf->b);
    vlSelf->out0_valid = (((IData)(vlSelf->select) ? (IData)(vlSelf->b_valid)
                            : (IData)(vlSelf->a_valid)) 
                          & (IData)(vlSelf->select_valid));
    vlSelf->select_ready = ((IData)(vlSelf->out0_valid) 
                            & (IData)(vlSelf->out0_ready));
    vlSelf->a_ready = ((IData)(vlSelf->select_ready) 
                       & (((IData)(1U) << (1U & (~ (IData)(vlSelf->select)))) 
                          >> 1U));
    vlSelf->b_ready = (((IData)(1U) << (1U & (~ (IData)(vlSelf->select)))) 
                       & (IData)(vlSelf->select_ready));
}

void Vselect__02dexport___024root___eval_ico(Vselect__02dexport___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vselect__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vselect__02dexport___024root___eval_ico\n"); );
    // Body
    if ((1ULL & vlSelf->__VicoTriggered.word(0U))) {
        Vselect__02dexport___024root___ico_sequent__TOP__0(vlSelf);
    }
}

void Vselect__02dexport___024root___eval_act(Vselect__02dexport___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vselect__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vselect__02dexport___024root___eval_act\n"); );
}

void Vselect__02dexport___024root___eval_nba(Vselect__02dexport___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vselect__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vselect__02dexport___024root___eval_nba\n"); );
}

void Vselect__02dexport___024root___eval_triggers__ico(Vselect__02dexport___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void Vselect__02dexport___024root___dump_triggers__ico(Vselect__02dexport___024root* vlSelf);
#endif  // VL_DEBUG
void Vselect__02dexport___024root___eval_triggers__act(Vselect__02dexport___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void Vselect__02dexport___024root___dump_triggers__act(Vselect__02dexport___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vselect__02dexport___024root___dump_triggers__nba(Vselect__02dexport___024root* vlSelf);
#endif  // VL_DEBUG

void Vselect__02dexport___024root___eval(Vselect__02dexport___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vselect__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vselect__02dexport___024root___eval\n"); );
    // Init
    CData/*0:0*/ __VicoContinue;
    VlTriggerVec<0> __VpreTriggered;
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    vlSelf->__VicoIterCount = 0U;
    __VicoContinue = 1U;
    while (__VicoContinue) {
        __VicoContinue = 0U;
        Vselect__02dexport___024root___eval_triggers__ico(vlSelf);
        if (vlSelf->__VicoTriggered.any()) {
            __VicoContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VicoIterCount))) {
#ifdef VL_DEBUG
                Vselect__02dexport___024root___dump_triggers__ico(vlSelf);
#endif
                VL_FATAL_MT("test-select/select-export.v", 2, "", "Input combinational region did not converge.");
            }
            vlSelf->__VicoIterCount = ((IData)(1U) 
                                       + vlSelf->__VicoIterCount);
            Vselect__02dexport___024root___eval_ico(vlSelf);
        }
    }
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        __VnbaContinue = 0U;
        vlSelf->__VnbaTriggered.clear();
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            vlSelf->__VactContinue = 0U;
            Vselect__02dexport___024root___eval_triggers__act(vlSelf);
            if (vlSelf->__VactTriggered.any()) {
                vlSelf->__VactContinue = 1U;
                if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                    Vselect__02dexport___024root___dump_triggers__act(vlSelf);
#endif
                    VL_FATAL_MT("test-select/select-export.v", 2, "", "Active region did not converge.");
                }
                vlSelf->__VactIterCount = ((IData)(1U) 
                                           + vlSelf->__VactIterCount);
                __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
                vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
                Vselect__02dexport___024root___eval_act(vlSelf);
            }
        }
        if (vlSelf->__VnbaTriggered.any()) {
            __VnbaContinue = 1U;
            if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
                Vselect__02dexport___024root___dump_triggers__nba(vlSelf);
#endif
                VL_FATAL_MT("test-select/select-export.v", 2, "", "NBA region did not converge.");
            }
            __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
            Vselect__02dexport___024root___eval_nba(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
void Vselect__02dexport___024root___eval_debug_assertions(Vselect__02dexport___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vselect__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vselect__02dexport___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->select & 0xfeU))) {
        Verilated::overWidthError("select");}
    if (VL_UNLIKELY((vlSelf->select_valid & 0xfeU))) {
        Verilated::overWidthError("select_valid");}
    if (VL_UNLIKELY((vlSelf->a_valid & 0xfeU))) {
        Verilated::overWidthError("a_valid");}
    if (VL_UNLIKELY((vlSelf->b_valid & 0xfeU))) {
        Verilated::overWidthError("b_valid");}
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->rst & 0xfeU))) {
        Verilated::overWidthError("rst");}
    if (VL_UNLIKELY((vlSelf->out0_ready & 0xfeU))) {
        Verilated::overWidthError("out0_ready");}
}
#endif  // VL_DEBUG
