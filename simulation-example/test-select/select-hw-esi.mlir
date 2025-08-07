module {
  hw.module @mux(in %select : i1, in %select_valid : i1, in %a : i64, in %a_valid : i1, in %b : i64, in %b_valid : i1, in %clk : !seq.clock, in %rst : i1, in %out0_ready : i1, out select_ready : i1, out a_ready : i1, out b_ready : i1, out out0 : i64, out out0_valid : i1) {
    %chanOutput, %ready = esi.wrap.vr %b, %b_valid : i64
    %chanOutput_0, %ready_1 = esi.wrap.vr %a, %a_valid : i64
    %chanOutput_2, %ready_3 = esi.wrap.vr %select, %select_valid : i1
    %false = arith.constant false
    %rawOutput, %valid = esi.unwrap.vr %chanOutput_2, %ready_5 : i1
    %c0_i0 = hw.constant 0 : i0
    %chanOutput_4, %ready_5 = esi.wrap.vr %c0_i0, %valid : i0
    %rawOutput_6, %valid_7 = esi.unwrap.vr %chanOutput_0, %ready_10 : i64
    %c0_i0_8 = hw.constant 0 : i0
    %chanOutput_9, %ready_10 = esi.wrap.vr %c0_i0_8, %valid_7 : i0
    %rawOutput_11, %valid_12 = esi.unwrap.vr %chanOutput, %ready_15 : i64
    %c0_i0_13 = hw.constant 0 : i0
    %chanOutput_14, %ready_15 = esi.wrap.vr %c0_i0_13, %valid_12 : i0
    %0 = arith.cmpi eq, %rawOutput, %false : i1
    %1 = arith.select %0, %rawOutput_11, %rawOutput_6 : i64
    %rawOutput_16, %valid_17 = esi.unwrap.vr %chanOutput_4, %ready_19 : i0
    %chanOutput_18, %ready_19 = esi.wrap.vr %0, %valid_17 : i1
    %rawOutput_20, %valid_21 = esi.unwrap.vr %chanOutput_18, %6 : i1
    %rawOutput_22, %valid_23 = esi.unwrap.vr %chanOutput_14, %8 : i0
    %rawOutput_24, %valid_25 = esi.unwrap.vr %chanOutput_9, %10 : i0
    %c0_i0_26 = hw.constant 0 : i0
    %chanOutput_27, %ready_28 = esi.wrap.vr %c0_i0_26, %5 : i0
    %false_29 = hw.constant false
    %2 = comb.concat %false_29, %rawOutput_20 : i1, i1
    %c1_i2 = hw.constant 1 : i2
    %3 = comb.shl %c1_i2, %2 : i2
    %4 = comb.mux %rawOutput_20, %valid_25, %valid_23 : i1
    %5 = comb.and %4, %valid_21 : i1
    %6 = comb.and %5, %ready_28 : i1
    %7 = comb.extract %3 from 0 : (i2) -> i1
    %8 = comb.and %7, %6 : i1
    %9 = comb.extract %3 from 1 : (i2) -> i1
    %10 = comb.and %9, %6 : i1
    %rawOutput_30, %valid_31 = esi.unwrap.vr %chanOutput_27, %ready_33 : i0
    %chanOutput_32, %ready_33 = esi.wrap.vr %1, %valid_31 : i64
    %rawOutput_34, %valid_35 = esi.unwrap.vr %chanOutput_32, %out0_ready : i64
    hw.output %ready_3, %ready_1, %ready, %rawOutput_34, %valid_35 : i1, i1, i1, i64, i1
  }
}

