// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vadd__02dwith__02dpack__02dexport.h for the primary calling header

#include "Vadd__02dwith__02dpack__02dexport__pch.h"
#include "Vadd__02dwith__02dpack__02dexport___024root.h"

void Vadd__02dwith__02dpack__02dexport___024root___ico_sequent__TOP__0(Vadd__02dwith__02dpack__02dexport___024root* vlSelf);

void Vadd__02dwith__02dpack__02dexport___024root___eval_ico(Vadd__02dwith__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dwith__02dpack__02dexport___024root___eval_ico\n"); );
    Vadd__02dwith__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VicoTriggered.word(0U))) {
        Vadd__02dwith__02dpack__02dexport___024root___ico_sequent__TOP__0(vlSelf);
    }
}

VL_INLINE_OPT void Vadd__02dwith__02dpack__02dexport___024root___ico_sequent__TOP__0(Vadd__02dwith__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dwith__02dpack__02dexport___024root___ico_sequent__TOP__0\n"); );
    Vadd__02dwith__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.out0 = VL_SHIFTL_III(32,32,32, vlSelfRef.a, 1U);
    vlSelfRef.out0_valid = vlSelfRef.a_valid;
    vlSelfRef.a_ready = vlSelfRef.out0_ready;
}

void Vadd__02dwith__02dpack__02dexport___024root___eval_triggers__ico(Vadd__02dwith__02dpack__02dexport___024root* vlSelf);

bool Vadd__02dwith__02dpack__02dexport___024root___eval_phase__ico(Vadd__02dwith__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dwith__02dpack__02dexport___024root___eval_phase__ico\n"); );
    Vadd__02dwith__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VicoExecute;
    // Body
    Vadd__02dwith__02dpack__02dexport___024root___eval_triggers__ico(vlSelf);
    __VicoExecute = vlSelfRef.__VicoTriggered.any();
    if (__VicoExecute) {
        Vadd__02dwith__02dpack__02dexport___024root___eval_ico(vlSelf);
    }
    return (__VicoExecute);
}

void Vadd__02dwith__02dpack__02dexport___024root___eval_act(Vadd__02dwith__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dwith__02dpack__02dexport___024root___eval_act\n"); );
    Vadd__02dwith__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

void Vadd__02dwith__02dpack__02dexport___024root___eval_nba(Vadd__02dwith__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dwith__02dpack__02dexport___024root___eval_nba\n"); );
    Vadd__02dwith__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

void Vadd__02dwith__02dpack__02dexport___024root___eval_triggers__act(Vadd__02dwith__02dpack__02dexport___024root* vlSelf);

bool Vadd__02dwith__02dpack__02dexport___024root___eval_phase__act(Vadd__02dwith__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dwith__02dpack__02dexport___024root___eval_phase__act\n"); );
    Vadd__02dwith__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    VlTriggerVec<0> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vadd__02dwith__02dpack__02dexport___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelfRef.__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelfRef.__VactTriggered, vlSelfRef.__VnbaTriggered);
        vlSelfRef.__VnbaTriggered.thisOr(vlSelfRef.__VactTriggered);
        Vadd__02dwith__02dpack__02dexport___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vadd__02dwith__02dpack__02dexport___024root___eval_phase__nba(Vadd__02dwith__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dwith__02dpack__02dexport___024root___eval_phase__nba\n"); );
    Vadd__02dwith__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelfRef.__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vadd__02dwith__02dpack__02dexport___024root___eval_nba(vlSelf);
        vlSelfRef.__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vadd__02dwith__02dpack__02dexport___024root___dump_triggers__ico(Vadd__02dwith__02dpack__02dexport___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vadd__02dwith__02dpack__02dexport___024root___dump_triggers__nba(Vadd__02dwith__02dpack__02dexport___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vadd__02dwith__02dpack__02dexport___024root___dump_triggers__act(Vadd__02dwith__02dpack__02dexport___024root* vlSelf);
#endif  // VL_DEBUG

void Vadd__02dwith__02dpack__02dexport___024root___eval(Vadd__02dwith__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dwith__02dpack__02dexport___024root___eval\n"); );
    Vadd__02dwith__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VicoIterCount;
    CData/*0:0*/ __VicoContinue;
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VicoIterCount = 0U;
    vlSelfRef.__VicoFirstIteration = 1U;
    __VicoContinue = 1U;
    while (__VicoContinue) {
        if (VL_UNLIKELY(((0x64U < __VicoIterCount)))) {
#ifdef VL_DEBUG
            Vadd__02dwith__02dpack__02dexport___024root___dump_triggers__ico(vlSelf);
#endif
            VL_FATAL_MT("add-with-pack-export.v", 2, "", "Input combinational region did not converge.");
        }
        __VicoIterCount = ((IData)(1U) + __VicoIterCount);
        __VicoContinue = 0U;
        if (Vadd__02dwith__02dpack__02dexport___024root___eval_phase__ico(vlSelf)) {
            __VicoContinue = 1U;
        }
        vlSelfRef.__VicoFirstIteration = 0U;
    }
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY(((0x64U < __VnbaIterCount)))) {
#ifdef VL_DEBUG
            Vadd__02dwith__02dpack__02dexport___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("add-with-pack-export.v", 2, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelfRef.__VactIterCount = 0U;
        vlSelfRef.__VactContinue = 1U;
        while (vlSelfRef.__VactContinue) {
            if (VL_UNLIKELY(((0x64U < vlSelfRef.__VactIterCount)))) {
#ifdef VL_DEBUG
                Vadd__02dwith__02dpack__02dexport___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("add-with-pack-export.v", 2, "", "Active region did not converge.");
            }
            vlSelfRef.__VactIterCount = ((IData)(1U) 
                                         + vlSelfRef.__VactIterCount);
            vlSelfRef.__VactContinue = 0U;
            if (Vadd__02dwith__02dpack__02dexport___024root___eval_phase__act(vlSelf)) {
                vlSelfRef.__VactContinue = 1U;
            }
        }
        if (Vadd__02dwith__02dpack__02dexport___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vadd__02dwith__02dpack__02dexport___024root___eval_debug_assertions(Vadd__02dwith__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dwith__02dpack__02dexport___024root___eval_debug_assertions\n"); );
    Vadd__02dwith__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if (VL_UNLIKELY(((vlSelfRef.a_valid & 0xfeU)))) {
        Verilated::overWidthError("a_valid");}
    if (VL_UNLIKELY(((vlSelfRef.b_valid & 0xfeU)))) {
        Verilated::overWidthError("b_valid");}
    if (VL_UNLIKELY(((vlSelfRef.clk & 0xfeU)))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY(((vlSelfRef.rst & 0xfeU)))) {
        Verilated::overWidthError("rst");}
    if (VL_UNLIKELY(((vlSelfRef.out0_ready & 0xfeU)))) {
        Verilated::overWidthError("out0_ready");}
}
#endif  // VL_DEBUG
