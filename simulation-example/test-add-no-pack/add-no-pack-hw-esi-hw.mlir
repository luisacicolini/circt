module {
  hw.module @add(in %a : i32, in %a_valid : i1, out a_ready : i1, out out0 : i32) {
    %false = hw.constant false
    %c0_i0 = hw.constant 0 : i0
    %true = hw.constant true
    %0 = comb.extract %a from 0 : (i32) -> i31
    %1 = comb.concat %0, %false : i31, i1
    hw.output %true, %1 : i1, i32
  }
}

