module {
  hw.module @test_control_merge(in %arg0 : i0, in %arg0_valid : i1, in %arg1 : i0, in %arg1_valid : i1, in %clk : !seq.clock, in %rst : i1, in %out0_ready : i1, in %out1_ready : i1, out arg0_ready : i1, out arg1_ready : i1, out out0 : i0, out out0_valid : i1, out out1 : i1, out out1_valid : i1) {
    %chanOutput, %ready = esi.wrap.vr %arg1, %arg1_valid : i0
    %chanOutput_0, %ready_1 = esi.wrap.vr %arg0, %arg0_valid : i0
    %rawOutput, %valid = esi.unwrap.vr %chanOutput_0, %3 : i0
    %rawOutput_2, %valid_3 = esi.unwrap.vr %chanOutput, %4 : i0
    %chanOutput_4, %ready_5 = esi.wrap.vr %1, %0 : i1
    %0 = comb.or %valid, %valid_3 : i1
    %true = hw.constant true
    %1 = comb.xor %valid, %true : i1
    %2 = comb.and %0, %ready_5 : i1
    %3 = comb.and %2, %valid : i1
    %4 = comb.and %2, %1 : i1
    %rawOutput_6, %valid_7 = esi.unwrap.vr %chanOutput_4, %ready_9 : i1
    %c0_i0 = hw.constant 0 : i0
    %chanOutput_8, %ready_9 = esi.wrap.vr %c0_i0, %valid_7 : i0
    %rawOutput_10, %valid_11 = esi.unwrap.vr %chanOutput_8, %17 : i0
    %c0_i0_12 = hw.constant 0 : i0
    %chanOutput_13, %ready_14 = esi.wrap.vr %c0_i0_12, %8 : i0
    %c0_i0_15 = hw.constant 0 : i0
    %chanOutput_16, %ready_17 = esi.wrap.vr %c0_i0_15, %14 : i0
    %false = hw.constant false
    %true_18 = hw.constant true
    %5 = comb.xor %17, %true_18 : i1
    %6 = comb.and %10, %5 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %6, %clk reset %rst, %false : i1  
    %7 = comb.xor %emitted_0, %true_18 : i1
    %8 = comb.and %7, %valid_11 : i1
    %9 = comb.and %ready_14, %8 : i1
    %10 = comb.or %9, %emitted_0 {sv.namehint = "done0"} : i1
    %11 = comb.xor %17, %true_18 : i1
    %12 = comb.and %16, %11 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %12, %clk reset %rst, %false : i1  
    %13 = comb.xor %emitted_1, %true_18 : i1
    %14 = comb.and %13, %valid_11 : i1
    %15 = comb.and %ready_17, %14 : i1
    %16 = comb.or %15, %emitted_1 {sv.namehint = "done1"} : i1
    %17 = comb.and %10, %16 {sv.namehint = "allDone"} : i1
    %rawOutput_19, %valid_20 = esi.unwrap.vr %chanOutput_13, %ready_22 : i0
    %chanOutput_21, %ready_22 = esi.wrap.vr %rawOutput_6, %valid_20 : i1
    %rawOutput_23, %valid_24 = esi.unwrap.vr %chanOutput_16, %out0_ready : i0
    %rawOutput_25, %valid_26 = esi.unwrap.vr %chanOutput_21, %out1_ready : i1
    hw.output %ready_1, %ready, %rawOutput_23, %valid_24, %rawOutput_25, %valid_26 : i1, i1, i0, i1, i1, i1
  }
}

