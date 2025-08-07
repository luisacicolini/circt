module {
  hw.module @mux(in %select : !esi.channel<i1>, in %a : !esi.channel<i64>, in %b : !esi.channel<i64>, in %clk : !seq.clock {dc.clock}, in %rst : i1 {dc.reset}, out out0 : !esi.channel<i64>) {
    %false = arith.constant false
    %rawOutput, %valid = esi.unwrap.vr %select, %ready : i1
    %c0_i0 = hw.constant 0 : i0
    %chanOutput, %ready = esi.wrap.vr %c0_i0, %valid : i0
    %rawOutput_0, %valid_1 = esi.unwrap.vr %a, %ready_4 : i64
    %c0_i0_2 = hw.constant 0 : i0
    %chanOutput_3, %ready_4 = esi.wrap.vr %c0_i0_2, %valid_1 : i0
    %rawOutput_5, %valid_6 = esi.unwrap.vr %b, %ready_9 : i64
    %c0_i0_7 = hw.constant 0 : i0
    %chanOutput_8, %ready_9 = esi.wrap.vr %c0_i0_7, %valid_6 : i0
    %0 = arith.cmpi eq, %rawOutput, %false : i1
    %1 = arith.select %0, %rawOutput_5, %rawOutput_0 : i64
    %rawOutput_10, %valid_11 = esi.unwrap.vr %chanOutput, %ready_13 : i0
    %chanOutput_12, %ready_13 = esi.wrap.vr %0, %valid_11 : i1
    %rawOutput_14, %valid_15 = esi.unwrap.vr %chanOutput_12, %6 : i1
    %rawOutput_16, %valid_17 = esi.unwrap.vr %chanOutput_8, %8 : i0
    %rawOutput_18, %valid_19 = esi.unwrap.vr %chanOutput_3, %10 : i0
    %c0_i0_20 = hw.constant 0 : i0
    %chanOutput_21, %ready_22 = esi.wrap.vr %c0_i0_20, %5 : i0
    %false_23 = hw.constant false
    %2 = comb.concat %false_23, %rawOutput_14 : i1, i1
    %c1_i2 = hw.constant 1 : i2
    %3 = comb.shl %c1_i2, %2 : i2
    %4 = comb.mux %rawOutput_14, %valid_19, %valid_17 : i1
    %5 = comb.and %4, %valid_15 : i1
    %6 = comb.and %5, %ready_22 : i1
    %7 = comb.extract %3 from 0 : (i2) -> i1
    %8 = comb.and %7, %6 : i1
    %9 = comb.extract %3 from 1 : (i2) -> i1
    %10 = comb.and %9, %6 : i1
    %rawOutput_24, %valid_25 = esi.unwrap.vr %chanOutput_21, %ready_27 : i0
    %chanOutput_26, %ready_27 = esi.wrap.vr %1, %valid_25 : i64
    hw.output %chanOutput_26 : !esi.channel<i64>
  }
}

