module {
  hw.module @test_conditional_branch(in %arg0 : i1, in %arg0_valid : i1, in %arg1 : index, in %arg1_valid : i1, in %arg2 : i0, in %arg2_valid : i1, in %clk : i1, in %rst : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, out arg0_ready : i1, out arg1_ready : i1, out arg2_ready : i1, out out0 : index, out out0_valid : i1, out out1 : index, out out1_valid : i1, out out2 : i0, out out2_valid : i1) {
    %0 = comb.and %arg0_valid, %arg1_valid : i1
    %1 = comb.and %6, %0 : i1
    %2 = comb.and %arg0, %0 : i1
    %true = hw.constant true
    %3 = comb.xor %arg0, %true : i1
    %4 = comb.and %3, %0 : i1
    %5 = comb.mux %arg0, %out0_ready, %out1_ready : i1
    %6 = comb.and %5, %0 : i1
    hw.output %1, %1, %out2_ready, %arg1, %2, %arg1, %4, %arg2, %arg2_valid : i1, i1, i1, index, i1, index, i1, i0, i1
  }
}

