module {
  hw.module @add(in %a : i32, in %a_valid : i1, in %b : i32, in %b_valid : i1, in %clk : !seq.clock, in %rst : i1, in %out0_ready : i1, out a_ready : i1, out b_ready : i1, out out0 : i32, out out0_valid : i1) {
    %false = hw.constant false
    %c0_i0 = hw.constant 0 : i0
    %c0_i0_0 = hw.constant 0 : i0
    %c0_i0_1 = hw.constant 0 : i0
    %c0_i0_2 = hw.constant 0 : i0
    %false_3 = hw.constant false
    %true = hw.constant true
    %0 = comb.xor %18, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clk reset %rst, %false_3 : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %a_valid : i1
    %4 = comb.and %22, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %18, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clk reset %rst, %false_3 : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %a_valid : i1
    %10 = comb.and %22, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %18, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clk reset %rst, %false_3 : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %a_valid : i1
    %16 = comb.and %22, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.and %5, %11, %17 {sv.namehint = "allDone"} : i1
    %19 = comb.extract %a from 0 : (i32) -> i31
    %20 = comb.concat %19, %false : i31, i1
    %c0_i0_4 = hw.constant 0 : i0
    %c0_i0_5 = hw.constant 0 : i0
    %21 = comb.and %3, %b_valid, %15, %9 : i1
    %22 = comb.and %out0_ready, %21 : i1
    %23 = comb.add %20, %a : i32
    hw.output %18, %22, %23, %21 : i1, i1, i32, i1
  }
}

