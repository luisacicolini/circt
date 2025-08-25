module {
  hw.module @add(in %a : !esi.channel<i32>, in %b : !esi.channel<i32>, in %clk : !seq.clock {dc.clock}, in %rst : i1 {dc.reset}, out out0 : !esi.channel<i32>) {
    %rawOutput, %valid = esi.unwrap.vr %b, %ready : i32
    %c0_i0 = hw.constant 0 : i0
    %chanOutput, %ready = esi.wrap.vr %c0_i0, %valid : i0
    %rawOutput_0, %valid_1 = esi.unwrap.vr %chanOutput, %true : i0
    %true = hw.constant true
    %false = hw.constant false
    %rawOutput_2, %valid_3 = esi.unwrap.vr %a, %ready_6 : i32
    %c0_i0_4 = hw.constant 0 : i0
    %chanOutput_5, %ready_6 = esi.wrap.vr %c0_i0_4, %valid_3 : i0
    %0 = comb.extract %rawOutput_2 from 0 : (i32) -> i31
    %1 = comb.concat %0, %false : i31, i1
    %rawOutput_7, %valid_8 = esi.unwrap.vr %chanOutput_5, %ready_10 : i0
    %chanOutput_9, %ready_10 = esi.wrap.vr %1, %valid_8 : i32
    hw.output %chanOutput_9 : !esi.channel<i32>
  }
}

