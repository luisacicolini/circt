module {
  hw.module @add(in %a : i32, in %a_valid : i1, in %b : i32, in %b_valid : i1, in %clk : i1, in %rst : i1, in %out0_ready : i1, out a_ready : i1, out b_ready : i1, out out0 : i32, out out0_valid : i1) {
    %false = hw.constant false
    %false_0 = hw.constant false
    %true = hw.constant true
    %0 = comb.xor %21, %true : i1
    %1 = comb.and %6, %0 : i1
    %emitted_0 = sv.reg sym @emitted_0 : !hw.inout<i1> 
    %2 = sv.read_inout %emitted_0 : !hw.inout<i1>
    sv.alwaysff(posedge %clk) {
      sv.passign %emitted_0, %1 : i1
    }(syncreset : posedge %rst) {
      sv.passign %emitted_0, %false_0 : i1
    }
    %3 = comb.xor %2, %true : i1
    %4 = comb.and %3, %a_valid : i1
    %5 = comb.and %25, %4 : i1
    %6 = comb.or %5, %2 {sv.namehint = "done0"} : i1
    %7 = comb.xor %21, %true : i1
    %8 = comb.and %13, %7 : i1
    %emitted_1 = sv.reg sym @emitted_1 : !hw.inout<i1> 
    %9 = sv.read_inout %emitted_1 : !hw.inout<i1>
    sv.alwaysff(posedge %clk) {
      sv.passign %emitted_1, %8 : i1
    }(syncreset : posedge %rst) {
      sv.passign %emitted_1, %false_0 : i1
    }
    %10 = comb.xor %9, %true : i1
    %11 = comb.and %10, %a_valid : i1
    %12 = comb.and %25, %11 : i1
    %13 = comb.or %12, %9 {sv.namehint = "done1"} : i1
    %14 = comb.xor %21, %true : i1
    %15 = comb.and %20, %14 : i1
    %emitted_2 = sv.reg sym @emitted_2 : !hw.inout<i1> 
    %16 = sv.read_inout %emitted_2 : !hw.inout<i1>
    sv.alwaysff(posedge %clk) {
      sv.passign %emitted_2, %15 : i1
    }(syncreset : posedge %rst) {
      sv.passign %emitted_2, %false_0 : i1
    }
    %17 = comb.xor %16, %true : i1
    %18 = comb.and %17, %a_valid : i1
    %19 = comb.and %25, %18 : i1
    %20 = comb.or %19, %16 {sv.namehint = "done2"} : i1
    %21 = comb.and %6, %13, %20 {sv.namehint = "allDone"} : i1
    %22 = comb.extract %a from 0 : (i32) -> i31
    %23 = comb.concat %22, %false : i31, i1
    %24 = comb.and %4, %b_valid, %18, %11 : i1
    %25 = comb.and %out0_ready, %24 : i1
    %26 = comb.add %23, %a : i32
    hw.output %21, %25, %26, %24 : i1, i1, i32, i1
  }
}

