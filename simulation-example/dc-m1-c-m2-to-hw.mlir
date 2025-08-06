module {
  hw.module @test_control_merge(in %arg0 : !esi.channel<i0>, in %arg1 : !esi.channel<i0>, in %clk : !seq.clock {dc.clock}, in %rst : i1 {dc.reset}, out out0 : !esi.channel<i0>, out out1 : !esi.channel<index>) {
    %rawOutput, %valid = esi.unwrap.vr %arg0, %3 : i0
    %rawOutput_0, %valid_1 = esi.unwrap.vr %arg1, %4 : i0
    %chanOutput, %ready = esi.wrap.vr %1, %0 : i1
    %0 = comb.or %valid, %valid_1 : i1
    %true = hw.constant true
    %1 = comb.xor %valid, %true : i1
    %2 = comb.and %0, %ready : i1
    %3 = comb.and %2, %valid : i1
    %4 = comb.and %2, %1 : i1
    %rawOutput_2, %valid_3 = esi.unwrap.vr %chanOutput, %ready_5 : i1
    %c0_i0 = hw.constant 0 : i0
    %chanOutput_4, %ready_5 = esi.wrap.vr %c0_i0, %valid_3 : i0
    %rawOutput_6, %valid_7 = esi.unwrap.vr %chanOutput_4, %17 : i0
    %c0_i0_8 = hw.constant 0 : i0
    %chanOutput_9, %ready_10 = esi.wrap.vr %c0_i0_8, %8 : i0
    %c0_i0_11 = hw.constant 0 : i0
    %chanOutput_12, %ready_13 = esi.wrap.vr %c0_i0_11, %14 : i0
    %false = hw.constant false
    %true_14 = hw.constant true
    %5 = comb.xor %17, %true_14 : i1
    %6 = comb.and %10, %5 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %6, %clk reset %rst, %false : i1  
    %7 = comb.xor %emitted_0, %true_14 : i1
    %8 = comb.and %7, %valid_7 : i1
    %9 = comb.and %ready_10, %8 : i1
    %10 = comb.or %9, %emitted_0 {sv.namehint = "done0"} : i1
    %11 = comb.xor %17, %true_14 : i1
    %12 = comb.and %16, %11 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %12, %clk reset %rst, %false : i1  
    %13 = comb.xor %emitted_1, %true_14 : i1
    %14 = comb.and %13, %valid_7 : i1
    %15 = comb.and %ready_13, %14 : i1
    %16 = comb.or %15, %emitted_1 {sv.namehint = "done1"} : i1
    %17 = comb.and %10, %16 {sv.namehint = "allDone"} : i1
    %18 = arith.index_cast %rawOutput_2 : i1 to index
    %rawOutput_15, %valid_16 = esi.unwrap.vr %chanOutput_9, %ready_18 : i0
    %chanOutput_17, %ready_18 = esi.wrap.vr %18, %valid_16 : index
    hw.output %chanOutput_12, %chanOutput_17 : !esi.channel<i0>, !esi.channel<index>
  }
}

