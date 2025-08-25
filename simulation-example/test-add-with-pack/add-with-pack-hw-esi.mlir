module {
  hw.module @add(in %a : i32, in %a_valid : i1, in %b : i32, in %b_valid : i1, in %clk : !seq.clock, in %rst : i1, in %out0_ready : i1, out a_ready : i1, out b_ready : i1, out out0 : i32, out out0_valid : i1) {
    %chanOutput, %ready = esi.wrap.vr %b, %b_valid : i32
    %chanOutput_0, %ready_1 = esi.wrap.vr %a, %a_valid : i32
    %rawOutput, %valid = esi.unwrap.vr %chanOutput, %ready_3 : i32
    %c0_i0 = hw.constant 0 : i0
    %chanOutput_2, %ready_3 = esi.wrap.vr %c0_i0, %valid : i0
    %rawOutput_4, %valid_5 = esi.unwrap.vr %chanOutput_2, %true : i0
    %true = hw.constant true
    %false = hw.constant false
    %rawOutput_6, %valid_7 = esi.unwrap.vr %chanOutput_0, %ready_10 : i32
    %c0_i0_8 = hw.constant 0 : i0
    %chanOutput_9, %ready_10 = esi.wrap.vr %c0_i0_8, %valid_7 : i0
    %0 = comb.extract %rawOutput_6 from 0 : (i32) -> i31
    %1 = comb.concat %0, %false : i31, i1
    %rawOutput_11, %valid_12 = esi.unwrap.vr %chanOutput_9, %ready_14 : i0
    %chanOutput_13, %ready_14 = esi.wrap.vr %1, %valid_12 : i32
    %rawOutput_15, %valid_16 = esi.unwrap.vr %chanOutput_13, %out0_ready : i32
    hw.output %ready_1, %ready, %rawOutput_15, %valid_16 : i1, i1, i32, i1
  }
}

