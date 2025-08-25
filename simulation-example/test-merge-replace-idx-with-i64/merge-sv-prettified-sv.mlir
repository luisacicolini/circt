module {
  hw.module @test_control_merge(in %arg0 : i0, in %arg0_valid : i1, in %arg1 : i0, in %arg1_valid : i1, in %clk : i1, in %rst : i1, in %out0_ready : i1, in %out1_ready : i1, out arg0_ready : i1, out arg1_ready : i1, out out0 : i0, out out0_valid : i1, out out1 : i1, out out1_valid : i1) {
    %0 = comb.or %arg0_valid, %arg1_valid : i1
    %true = hw.constant true
    %1 = comb.and %0, %19 : i1
    %2 = comb.and %1, %arg0_valid : i1
    %3 = comb.xor %arg0_valid, %true : i1
    %4 = comb.and %1, %3 : i1
    %c0_i0 = hw.constant 0 : i0
    %false = hw.constant false
    %true_0 = hw.constant true
    %5 = comb.xor %19, %true_0 : i1
    %6 = comb.and %11, %5 : i1
    %emitted_0 = sv.reg sym @emitted_0 : !hw.inout<i1> 
    %7 = sv.read_inout %emitted_0 : !hw.inout<i1>
    sv.alwaysff(posedge %clk) {
      sv.passign %emitted_0, %6 : i1
    }(syncreset : posedge %rst) {
      sv.passign %emitted_0, %false : i1
    }
    %8 = comb.xor %7, %true_0 : i1
    %9 = comb.and %8, %0 : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %7 {sv.namehint = "done0"} : i1
    %12 = comb.xor %19, %true_0 : i1
    %13 = comb.and %18, %12 : i1
    %emitted_1 = sv.reg sym @emitted_1 : !hw.inout<i1> 
    %14 = sv.read_inout %emitted_1 : !hw.inout<i1>
    sv.alwaysff(posedge %clk) {
      sv.passign %emitted_1, %13 : i1
    }(syncreset : posedge %rst) {
      sv.passign %emitted_1, %false : i1
    }
    %15 = comb.xor %14, %true_0 : i1
    %16 = comb.and %15, %0 : i1
    %17 = comb.and %out0_ready, %16 : i1
    %18 = comb.or %17, %14 {sv.namehint = "done1"} : i1
    %19 = comb.and %11, %18 {sv.namehint = "allDone"} : i1
    %20 = comb.xor %arg0_valid, %true : i1
    hw.output %2, %4, %c0_i0, %16, %20, %9 : i1, i1, i0, i1, i1, i1
  }
}

