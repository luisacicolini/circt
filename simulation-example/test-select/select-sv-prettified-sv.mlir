module {
  hw.module @mux(in %select : i1, in %select_valid : i1, in %a : i64, in %a_valid : i1, in %b : i64, in %b_valid : i1, in %clk : i1, in %rst : i1, in %out0_ready : i1, out select_ready : i1, out a_ready : i1, out b_ready : i1, out out0 : i64, out out0_valid : i1) {
    %false = hw.constant false
    %0 = comb.icmp eq %select, %false : i1
    %1 = comb.mux %0, %b, %a : i64
    %false_0 = hw.constant false
    %2 = comb.concat %false_0, %0 : i1, i1
    %c1_i2 = hw.constant 1 : i2
    %3 = comb.shl %c1_i2, %2 : i2
    %4 = comb.mux %0, %a_valid, %b_valid : i1
    %5 = comb.and %4, %select_valid : i1
    %6 = comb.and %5, %out0_ready : i1
    %7 = comb.extract %3 from 0 : (i2) -> i1
    %8 = comb.and %7, %6 : i1
    %9 = comb.extract %3 from 1 : (i2) -> i1
    %10 = comb.and %9, %6 : i1
    hw.output %6, %10, %8, %1, %5 : i1, i1, i1, i64, i1
  }
}

