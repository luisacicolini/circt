module {
  hw.module @add(in %a : i32, in %a_valid : i1, out a_ready : i1, out out0 : i32) {
    %chanOutput, %ready = esi.wrap.vr %a, %a_valid : i32
    %false = hw.constant false
    %rawOutput, %valid = esi.unwrap.vr %chanOutput, %ready_1 : i32
    %c0_i0 = hw.constant 0 : i0
    %chanOutput_0, %ready_1 = esi.wrap.vr %c0_i0, %valid : i0
    %rawOutput_2, %valid_3 = esi.unwrap.vr %chanOutput_0, %true : i0
    %true = hw.constant true
    %0 = comb.extract %rawOutput from 0 : (i32) -> i31
    %1 = comb.concat %0, %false : i31, i1
    hw.output %ready, %1 : i1, i32
  }
}

