module {
  hw.module @test_control_merge(in %arg0 : i0, in %arg0_valid : i1, in %arg1 : i0, in %arg1_valid : i1, in %clk : !seq.clock, in %rst : i1, in %out0_ready : i1, in %out1_ready : i1, out arg0_ready : i1, out arg1_ready : i1, out out0 : i0, out out0_valid : i1, out out1 : index, out out1_valid : i1) {
    %0 = comb.or %arg0_valid, %arg1_valid : i1
    %true = hw.constant true
    %1 = comb.and %0, %17 : i1
    %2 = comb.and %1, %arg0_valid : i1
    %3 = comb.xor %arg0_valid, %true : i1
    %4 = comb.and %1, %3 : i1
    %c0_i0 = hw.constant 0 : i0
    %false = hw.constant false
    %true_0 = hw.constant true
    %5 = comb.xor %17, %true_0 : i1
    %6 = comb.and %10, %5 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %6, %clk reset %rst, %false : i1  
    %7 = comb.xor %emitted_0, %true_0 : i1
    %8 = comb.and %7, %0 : i1
    %9 = comb.and %out1_ready, %8 : i1
    %10 = comb.or %9, %emitted_0 {sv.namehint = "done0"} : i1
    %11 = comb.xor %17, %true_0 : i1
    %12 = comb.and %16, %11 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %12, %clk reset %rst, %false : i1  
    %13 = comb.xor %emitted_1, %true_0 : i1
    %14 = comb.and %13, %0 : i1
    %15 = comb.and %out0_ready, %14 : i1
    %16 = comb.or %15, %emitted_1 {sv.namehint = "done1"} : i1
    %17 = comb.and %10, %16 {sv.namehint = "allDone"} : i1
    %18 = comb.xor %arg0_valid, %true : i1
    %19 = arith.index_cast %18 : i1 to index
    hw.output %2, %4, %c0_i0, %14, %19, %8 : i1, i1, i0, i1, index, i1
  }
}

