module {
  hw.module @test_conditional_branch(in %arg0 : !esi.channel<i1>, in %arg1 : !esi.channel<index>, in %arg2 : !esi.channel<i0>, in %clk : !seq.clock {dc.clock}, in %rst : i1 {dc.reset}, out out0 : !esi.channel<index>, out out1 : !esi.channel<index>, out out2 : !esi.channel<i0>) {
    %rawOutput, %valid = esi.unwrap.vr %arg0, %ready : i1
    %c0_i0 = hw.constant 0 : i0
    %chanOutput, %ready = esi.wrap.vr %c0_i0, %valid : i0
    %rawOutput_0, %valid_1 = esi.unwrap.vr %arg1, %ready_4 : index
    %c0_i0_2 = hw.constant 0 : i0
    %chanOutput_3, %ready_4 = esi.wrap.vr %c0_i0_2, %valid_1 : i0
    %rawOutput_5, %valid_6 = esi.unwrap.vr %chanOutput, %1 : i0
    %rawOutput_7, %valid_8 = esi.unwrap.vr %chanOutput_3, %1 : i0
    %c0_i0_9 = hw.constant 0 : i0
    %chanOutput_10, %ready_11 = esi.wrap.vr %c0_i0_9, %0 : i0
    %0 = comb.and %valid_6, %valid_8 : i1
    %1 = comb.and %ready_11, %0 : i1
    %rawOutput_12, %valid_13 = esi.unwrap.vr %chanOutput_10, %ready_15 : i0
    %chanOutput_14, %ready_15 = esi.wrap.vr %rawOutput, %valid_13 : i1
    %rawOutput_16, %valid_17 = esi.unwrap.vr %chanOutput_14, %6 : i1
    %c0_i0_18 = hw.constant 0 : i0
    %chanOutput_19, %ready_20 = esi.wrap.vr %c0_i0_18, %2 : i0
    %c0_i0_21 = hw.constant 0 : i0
    %chanOutput_22, %ready_23 = esi.wrap.vr %c0_i0_21, %4 : i0
    %2 = comb.and %rawOutput_16, %valid_17 : i1
    %true = hw.constant true
    %3 = comb.xor %rawOutput_16, %true : i1
    %4 = comb.and %3, %valid_17 : i1
    %5 = comb.mux %rawOutput_16, %ready_20, %ready_23 : i1
    %6 = comb.and %5, %valid_17 : i1
    %rawOutput_24, %valid_25 = esi.unwrap.vr %chanOutput_19, %ready_27 : i0
    %chanOutput_26, %ready_27 = esi.wrap.vr %rawOutput_0, %valid_25 : index
    %rawOutput_28, %valid_29 = esi.unwrap.vr %chanOutput_22, %ready_31 : i0
    %chanOutput_30, %ready_31 = esi.wrap.vr %rawOutput_0, %valid_29 : index
    hw.output %chanOutput_26, %chanOutput_30, %arg2 : !esi.channel<index>, !esi.channel<index>, !esi.channel<i0>
  }
}

