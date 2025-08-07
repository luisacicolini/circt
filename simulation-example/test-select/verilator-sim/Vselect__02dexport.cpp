// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vselect__02dexport.h"
#include "Vselect__02dexport__Syms.h"

//============================================================
// Constructors

Vselect__02dexport::Vselect__02dexport(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new Vselect__02dexport__Syms(contextp(), _vcname__, this)}
    , select{vlSymsp->TOP.select}
    , select_valid{vlSymsp->TOP.select_valid}
    , a_valid{vlSymsp->TOP.a_valid}
    , b_valid{vlSymsp->TOP.b_valid}
    , clk{vlSymsp->TOP.clk}
    , rst{vlSymsp->TOP.rst}
    , out0_ready{vlSymsp->TOP.out0_ready}
    , select_ready{vlSymsp->TOP.select_ready}
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

Vselect__02dexport::Vselect__02dexport(const char* _vcname__)
    : Vselect__02dexport(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

Vselect__02dexport::~Vselect__02dexport() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void Vselect__02dexport___024root___eval_debug_assertions(Vselect__02dexport___024root* vlSelf);
#endif  // VL_DEBUG
void Vselect__02dexport___024root___eval_static(Vselect__02dexport___024root* vlSelf);
void Vselect__02dexport___024root___eval_initial(Vselect__02dexport___024root* vlSelf);
void Vselect__02dexport___024root___eval_settle(Vselect__02dexport___024root* vlSelf);
void Vselect__02dexport___024root___eval(Vselect__02dexport___024root* vlSelf);

void Vselect__02dexport::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vselect__02dexport::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vselect__02dexport___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        Vselect__02dexport___024root___eval_static(&(vlSymsp->TOP));
        Vselect__02dexport___024root___eval_initial(&(vlSymsp->TOP));
        Vselect__02dexport___024root___eval_settle(&(vlSymsp->TOP));
    }
    // MTask 0 start
    VL_DEBUG_IF(VL_DBG_MSGF("MTask0 starting\n"););
    Verilated::mtaskId(0);
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    Vselect__02dexport___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfThreadMTask(vlSymsp->__Vm_evalMsgQp);
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool Vselect__02dexport::eventsPending() { return false; }

uint64_t Vselect__02dexport::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "%Error: No delays in the design");
    return 0;
}

//============================================================
// Utilities

const char* Vselect__02dexport::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void Vselect__02dexport___024root___eval_final(Vselect__02dexport___024root* vlSelf);

VL_ATTR_COLD void Vselect__02dexport::final() {
    Vselect__02dexport___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* Vselect__02dexport::hierName() const { return vlSymsp->name(); }
const char* Vselect__02dexport::modelName() const { return "Vselect__02dexport"; }
unsigned Vselect__02dexport::threads() const { return 1; }
void Vselect__02dexport::prepareClone() const { contextp()->prepareClone(); }
void Vselect__02dexport::atClone() const {
    contextp()->threadPoolpOnClone();
}
