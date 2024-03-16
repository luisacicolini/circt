set(LLVM_LINK_COMPONENTS Support)

add_circt_tool(fsm-sync fsm-sync.cpp)
target_link_libraries(fsm-sync
  PRIVATE
  CIRCTFSM
  CIRCTCombToArith
  MLIRBuiltinToLLVMIRTranslation
  MLIRFuncInlinerExtension
  MLIRLLVMIRTransforms
  MLIRLLVMToLLVMIRTranslation
  MLIRParser
  MLIRTargetLLVMIRExport
)

llvm_update_compile_flags(fsm-sync)
mlir_check_all_link_libraries(fsm-sync)