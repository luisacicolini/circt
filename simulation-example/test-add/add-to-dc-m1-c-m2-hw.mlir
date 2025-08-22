module {
  hw.module @add(in %a : !esi.channel<i32>, in %b : !esi.channel<i32>, in %clk : !seq.clock {dc.clock}, in %rst : i1 {dc.reset}, out out0 : !esi.channel<i32>) {
    %false = hw.constant false
    %rawOutput, %valid = esi.unwrap.vr %a, %ready : i32
    %c0_i0 = hw.constant 0 : i0
    %chanOutput, %ready = esi.wrap.vr %c0_i0, %valid : i0
    %rawOutput_0, %valid_1 = esi.unwrap.vr %chanOutput, %18 : i0
    %c0_i0_2 = hw.constant 0 : i0
    %chanOutput_3, %ready_4 = esi.wrap.vr %c0_i0_2, %3 : i0
    %c0_i0_5 = hw.constant 0 : i0
    %chanOutput_6, %ready_7 = esi.wrap.vr %c0_i0_5, %9 : i0
    %c0_i0_8 = hw.constant 0 : i0
    %chanOutput_9, %ready_10 = esi.wrap.vr %c0_i0_8, %15 : i0
    %false_11 = hw.constant false
    %true = hw.constant true
    %0 = comb.xor %18, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clk reset %rst, %false_11 : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %valid_1 : i1
    %4 = comb.and %ready_4, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %18, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clk reset %rst, %false_11 : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %valid_1 : i1
    %10 = comb.and %ready_7, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %18, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clk reset %rst, %false_11 : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %valid_1 : i1
    %16 = comb.and %ready_10, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.and %5, %11, %17 {sv.namehint = "allDone"} : i1
    %19 = comb.extract %rawOutput from 0 : (i32) -> i31
    %20 = comb.concat %19, %false : i31, i1
    %rawOutput_12, %valid_13 = esi.unwrap.vr %b, %ready_16 : i32
    %c0_i0_14 = hw.constant 0 : i0
    %chanOutput_15, %ready_16 = esi.wrap.vr %c0_i0_14, %valid_13 : i0
    %rawOutput_17, %valid_18 = esi.unwrap.vr %chanOutput_3, %22 : i0
    %rawOutput_19, %valid_20 = esi.unwrap.vr %chanOutput_15, %22 : i0
    %rawOutput_21, %valid_22 = esi.unwrap.vr %chanOutput_9, %22 : i0
    %rawOutput_23, %valid_24 = esi.unwrap.vr %chanOutput_6, %22 : i0
    %c0_i0_25 = hw.constant 0 : i0
    %chanOutput_26, %ready_27 = esi.wrap.vr %c0_i0_25, %21 : i0
    %21 = comb.and %valid_18, %valid_20, %valid_22, %valid_24 : i1
    %22 = comb.and %ready_27, %21 : i1
    %23 = comb.add %20, %rawOutput : i32
    %rawOutput_28, %valid_29 = esi.unwrap.vr %chanOutput_26, %ready_31 : i0
    %chanOutput_30, %ready_31 = esi.wrap.vr %23, %valid_29 : i32
    hw.output %chanOutput_30 : !esi.channel<i32>
  }
}

