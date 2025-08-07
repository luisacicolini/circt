module {
  hw.module @test_conditional_branch(in %arg0 : i1, in %arg0_valid : i1, in %arg1 : index, in %arg1_valid : i1, in %arg2 : i0, in %arg2_valid : i1, in %clk : !seq.clock, in %rst : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, out arg0_ready : i1, out arg1_ready : i1, out arg2_ready : i1, out out0 : index, out out0_valid : i1, out out1 : index, out out1_valid : i1, out out2 : i0, out out2_valid : i1) {
    %chanOutput, %ready = esi.wrap.vr %arg2, %arg2_valid : i0
    %chanOutput_0, %ready_1 = esi.wrap.vr %arg1, %arg1_valid : index
    %chanOutput_2, %ready_3 = esi.wrap.vr %arg0, %arg0_valid : i1
    %rawOutput, %valid = esi.unwrap.vr %chanOutput_2, %ready_5 : i1
    %c0_i0 = hw.constant 0 : i0
    %chanOutput_4, %ready_5 = esi.wrap.vr %c0_i0, %valid : i0
    %rawOutput_6, %valid_7 = esi.unwrap.vr %chanOutput_0, %ready_10 : index
    %c0_i0_8 = hw.constant 0 : i0
    %chanOutput_9, %ready_10 = esi.wrap.vr %c0_i0_8, %valid_7 : i0
    %rawOutput_11, %valid_12 = esi.unwrap.vr %chanOutput_4, %1 : i0
    %rawOutput_13, %valid_14 = esi.unwrap.vr %chanOutput_9, %1 : i0
    %c0_i0_15 = hw.constant 0 : i0
    %chanOutput_16, %ready_17 = esi.wrap.vr %c0_i0_15, %0 : i0
    %0 = comb.and %valid_12, %valid_14 : i1
    %1 = comb.and %ready_17, %0 : i1
    %rawOutput_18, %valid_19 = esi.unwrap.vr %chanOutput_16, %ready_21 : i0
    %chanOutput_20, %ready_21 = esi.wrap.vr %rawOutput, %valid_19 : i1
    %rawOutput_22, %valid_23 = esi.unwrap.vr %chanOutput_20, %6 : i1
    %c0_i0_24 = hw.constant 0 : i0
    %chanOutput_25, %ready_26 = esi.wrap.vr %c0_i0_24, %2 : i0
    %c0_i0_27 = hw.constant 0 : i0
    %chanOutput_28, %ready_29 = esi.wrap.vr %c0_i0_27, %4 : i0
    %2 = comb.and %rawOutput_22, %valid_23 : i1
    %true = hw.constant true
    %3 = comb.xor %rawOutput_22, %true : i1
    %4 = comb.and %3, %valid_23 : i1
    %5 = comb.mux %rawOutput_22, %ready_26, %ready_29 : i1
    %6 = comb.and %5, %valid_23 : i1
    %rawOutput_30, %valid_31 = esi.unwrap.vr %chanOutput_25, %ready_33 : i0
    %chanOutput_32, %ready_33 = esi.wrap.vr %rawOutput_6, %valid_31 : index
    %rawOutput_34, %valid_35 = esi.unwrap.vr %chanOutput_28, %ready_37 : i0
    %chanOutput_36, %ready_37 = esi.wrap.vr %rawOutput_6, %valid_35 : index
    %rawOutput_38, %valid_39 = esi.unwrap.vr %chanOutput_32, %out0_ready : index
    %rawOutput_40, %valid_41 = esi.unwrap.vr %chanOutput_36, %out1_ready : index
    %rawOutput_42, %valid_43 = esi.unwrap.vr %chanOutput, %out2_ready : i0
    hw.output %ready_3, %ready_1, %ready, %rawOutput_38, %valid_39, %rawOutput_40, %valid_41, %rawOutput_42, %valid_43 : i1, i1, i1, index, i1, index, i1, i0, i1
  }
}

