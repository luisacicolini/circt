module {
  hw.module @add(in %a : !esi.channel<i32>, out out0 : i32) {
    %false = hw.constant false
    %rawOutput, %valid = esi.unwrap.vr %a, %ready : i32
    %c0_i0 = hw.constant 0 : i0
    %chanOutput, %ready = esi.wrap.vr %c0_i0, %valid : i0
    %rawOutput_0, %valid_1 = esi.unwrap.vr %chanOutput, %true : i0
    %true = hw.constant true
    %0 = comb.extract %rawOutput from 0 : (i32) -> i31
    %1 = comb.concat %0, %false : i31, i1
    hw.output %1 : i32
  }
}

