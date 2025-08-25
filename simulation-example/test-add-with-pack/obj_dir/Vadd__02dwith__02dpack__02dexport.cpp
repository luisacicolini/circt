// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vadd__02dwith__02dpack__02dexport__pch.h"

//============================================================
// Constructors

Vadd__02dwith__02dpack__02dexport::Vadd__02dwith__02dpack__02dexport(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new Vadd__02dwith__02dpack__02dexport__Syms(contextp(), _vcname__, this)}
    , a_valid{vlSymsp->TOP.a_valid}
    , b_valid{vlSymsp->TOP.b_valid}
    , clk{vlSymsp->TOP.clk}
    , rst{vlSymsp->TOP.rst}
    , out0_ready{vlSymsp->TOP.out0_ready}
    , a_ready{vlSymsp->TOP.a_ready}
    , b_ready{vlSymsp->TOP.b_ready}
    , out0_valid{vlSymsp->TOP.out0_valid}
    , a{vlSymsp->TOP.a}
    , b{vlSymsp->TOP.b}
    , out0{vlSymsp->TOP.out0}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
}

Vadd__02dwith__02dpack__02dexport::Vadd__02dwith__02dpack__02dexport(const char* _vcname__)
    : Vadd__02dwith__02dpack__02dexport(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

Vadd__02dwith__02dpack__02dexport::~Vadd__02dwith__02dpack__02dexport() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void Vadd__02dwith__02dpack__02dexport___024root___eval_debug_assertions(Vadd__02dwith__02dpack__02dexport___024root* vlSelf);
#endif  // VL_DEBUG
void Vadd__02dwith__02dpack__02dexport___024root___eval_static(Vadd__02dwith__02dpack__02dexport___024root* vlSelf);
void Vadd__02dwith__02dpack__02dexport___024root___eval_initial(Vadd__02dwith__02dpack__02dexport___024root* vlSelf);
void Vadd__02dwith__02dpack__02dexport___024root___eval_settle(Vadd__02dwith__02dpack__02dexport___024root* vlSelf);
void Vadd__02dwith__02dpack__02dexport___024root___eval(Vadd__02dwith__02dpack__02dexport___024root* vlSelf);

void Vadd__02dwith__02dpack__02dexport::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vadd__02dwith__02dpack__02dexport::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vadd__02dwith__02dpack__02dexport___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        Vadd__02dwith__02dpack__02dexport___024root___eval_static(&(vlSymsp->TOP));
        Vadd__02dwith__02dpack__02dexport___024root___eval_initial(&(vlSymsp->TOP));
        Vadd__02dwith__02dpack__02dexport___024root___eval_settle(&(vlSymsp->TOP));
    }
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    Vadd__02dwith__02dpack__02dexport___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool Vadd__02dwith__02dpack__02dexport::eventsPending() { return false; }

uint64_t Vadd__02dwith__02dpack__02dexport::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "No delays in the design");
    return 0;
}

//============================================================
// Utilities

const char* Vadd__02dwith__02dpack__02dexport::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void Vadd__02dwith__02dpack__02dexport___024root___eval_final(Vadd__02dwith__02dpack__02dexport___024root* vlSelf);

VL_ATTR_COLD void Vadd__02dwith__02dpack__02dexport::final() {
    Vadd__02dwith__02dpack__02dexport___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* Vadd__02dwith__02dpack__02dexport::hierName() const { return vlSymsp->name(); }
const char* Vadd__02dwith__02dpack__02dexport::modelName() const { return "Vadd__02dwith__02dpack__02dexport"; }
unsigned Vadd__02dwith__02dpack__02dexport::threads() const { return 1; }
void Vadd__02dwith__02dpack__02dexport::prepareClone() const { contextp()->prepareClone(); }
void Vadd__02dwith__02dpack__02dexport::atClone() const {
    contextp()->threadPoolpOnClone();
}
