module {
  hw.module @add(in %a : i32, in %a_valid : i1, in %b : i32, in %b_valid : i1, in %clk : !seq.clock, in %rst : i1, in %out0_ready : i1, out a_ready : i1, out b_ready : i1, out out0 : i32, out out0_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.extract %a from 0 : (i32) -> i31
    %1 = comb.concat %0, %false : i31, i1
    hw.output %out0_ready, %true, %1, %a_valid : i1, i1, i32, i1
  }
}

