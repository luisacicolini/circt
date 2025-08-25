// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vadd__02dno__02dpack__02dexport.h for the primary calling header

#include "Vadd__02dno__02dpack__02dexport__pch.h"
#include "Vadd__02dno__02dpack__02dexport___024root.h"

VL_ATTR_COLD void Vadd__02dno__02dpack__02dexport___024root___eval_static(Vadd__02dno__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dno__02dpack__02dexport___024root___eval_static\n"); );
    Vadd__02dno__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

VL_ATTR_COLD void Vadd__02dno__02dpack__02dexport___024root___eval_initial__TOP(Vadd__02dno__02dpack__02dexport___024root* vlSelf);

VL_ATTR_COLD void Vadd__02dno__02dpack__02dexport___024root___eval_initial(Vadd__02dno__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dno__02dpack__02dexport___024root___eval_initial\n"); );
    Vadd__02dno__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    Vadd__02dno__02dpack__02dexport___024root___eval_initial__TOP(vlSelf);
}

VL_ATTR_COLD void Vadd__02dno__02dpack__02dexport___024root___eval_initial__TOP(Vadd__02dno__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dno__02dpack__02dexport___024root___eval_initial__TOP\n"); );
    Vadd__02dno__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.a_ready = 1U;
}

VL_ATTR_COLD void Vadd__02dno__02dpack__02dexport___024root___eval_final(Vadd__02dno__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dno__02dpack__02dexport___024root___eval_final\n"); );
    Vadd__02dno__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vadd__02dno__02dpack__02dexport___024root___dump_triggers__stl(Vadd__02dno__02dpack__02dexport___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vadd__02dno__02dpack__02dexport___024root___eval_phase__stl(Vadd__02dno__02dpack__02dexport___024root* vlSelf);

VL_ATTR_COLD void Vadd__02dno__02dpack__02dexport___024root___eval_settle(Vadd__02dno__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dno__02dpack__02dexport___024root___eval_settle\n"); );
    Vadd__02dno__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VstlIterCount;
    CData/*0:0*/ __VstlContinue;
    // Body
    __VstlIterCount = 0U;
    vlSelfRef.__VstlFirstIteration = 1U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        if (VL_UNLIKELY(((0x64U < __VstlIterCount)))) {
#ifdef VL_DEBUG
            Vadd__02dno__02dpack__02dexport___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("add-no-pack-export.v", 2, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vadd__02dno__02dpack__02dexport___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelfRef.__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vadd__02dno__02dpack__02dexport___024root___dump_triggers__stl(Vadd__02dno__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dno__02dpack__02dexport___024root___dump_triggers__stl\n"); );
    Vadd__02dno__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VstlTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

void Vadd__02dno__02dpack__02dexport___024root___ico_sequent__TOP__0(Vadd__02dno__02dpack__02dexport___024root* vlSelf);

VL_ATTR_COLD void Vadd__02dno__02dpack__02dexport___024root___eval_stl(Vadd__02dno__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dno__02dpack__02dexport___024root___eval_stl\n"); );
    Vadd__02dno__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VstlTriggered.word(0U))) {
        Vadd__02dno__02dpack__02dexport___024root___ico_sequent__TOP__0(vlSelf);
    }
}

VL_ATTR_COLD void Vadd__02dno__02dpack__02dexport___024root___eval_triggers__stl(Vadd__02dno__02dpack__02dexport___024root* vlSelf);

VL_ATTR_COLD bool Vadd__02dno__02dpack__02dexport___024root___eval_phase__stl(Vadd__02dno__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dno__02dpack__02dexport___024root___eval_phase__stl\n"); );
    Vadd__02dno__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vadd__02dno__02dpack__02dexport___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelfRef.__VstlTriggered.any();
    if (__VstlExecute) {
        Vadd__02dno__02dpack__02dexport___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vadd__02dno__02dpack__02dexport___024root___dump_triggers__ico(Vadd__02dno__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dno__02dpack__02dexport___024root___dump_triggers__ico\n"); );
    Vadd__02dno__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VicoTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VicoTriggered.word(0U))) {
        VL_DBG_MSGF("         'ico' region trigger index 0 is active: Internal 'ico' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vadd__02dno__02dpack__02dexport___024root___dump_triggers__act(Vadd__02dno__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dno__02dpack__02dexport___024root___dump_triggers__act\n"); );
    Vadd__02dno__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VactTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vadd__02dno__02dpack__02dexport___024root___dump_triggers__nba(Vadd__02dno__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dno__02dpack__02dexport___024root___dump_triggers__nba\n"); );
    Vadd__02dno__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VnbaTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vadd__02dno__02dpack__02dexport___024root___ctor_var_reset(Vadd__02dno__02dpack__02dexport___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadd__02dno__02dpack__02dexport___024root___ctor_var_reset\n"); );
    Vadd__02dno__02dpack__02dexport__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    const uint64_t __VscopeHash = VL_MURMUR64_HASH(vlSelf->name());
    vlSelf->a = VL_SCOPED_RAND_RESET_I(32, __VscopeHash, 510903276987443985ull);
    vlSelf->a_valid = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 5999066857457713185ull);
    vlSelf->a_ready = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 3935154664531327546ull);
    vlSelf->out0 = VL_SCOPED_RAND_RESET_I(32, __VscopeHash, 3479339022578516965ull);
}
