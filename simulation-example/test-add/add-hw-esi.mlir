module {
  hw.module @add(in %a : i32, in %a_valid : i1, in %b : i32, in %b_valid : i1, in %none : i0, in %none_valid : i1, in %clk : !seq.clock, in %rst : i1, in %out0_ready : i1, out a_ready : i1, out b_ready : i1, out none_ready : i1, out out0 : i32, out out0_valid : i1) {
    %chanOutput, %ready = esi.wrap.vr %none, %none_valid : i0
    %chanOutput_0, %ready_1 = esi.wrap.vr %b, %b_valid : i32
    %chanOutput_2, %ready_3 = esi.wrap.vr %a, %a_valid : i32
    %false = hw.constant false
    %rawOutput, %valid = esi.unwrap.vr %chanOutput_2, %ready_5 : i32
    %c0_i0 = hw.constant 0 : i0
    %chanOutput_4, %ready_5 = esi.wrap.vr %c0_i0, %valid : i0
    %rawOutput_6, %valid_7 = esi.unwrap.vr %chanOutput_4, %18 : i0
    %c0_i0_8 = hw.constant 0 : i0
    %chanOutput_9, %ready_10 = esi.wrap.vr %c0_i0_8, %3 : i0
    %c0_i0_11 = hw.constant 0 : i0
    %chanOutput_12, %ready_13 = esi.wrap.vr %c0_i0_11, %9 : i0
    %c0_i0_14 = hw.constant 0 : i0
    %chanOutput_15, %ready_16 = esi.wrap.vr %c0_i0_14, %15 : i0
    %false_17 = hw.constant false
    %true = hw.constant true
    %0 = comb.xor %18, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clk reset %rst, %false_17 : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %valid_7 : i1
    %4 = comb.and %ready_10, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %18, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clk reset %rst, %false_17 : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %valid_7 : i1
    %10 = comb.and %ready_13, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %18, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clk reset %rst, %false_17 : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %valid_7 : i1
    %16 = comb.and %ready_16, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.and %5, %11, %17 {sv.namehint = "allDone"} : i1
    %19 = comb.extract %rawOutput from 0 : (i32) -> i31
    %20 = comb.concat %19, %false : i31, i1
    %rawOutput_18, %valid_19 = esi.unwrap.vr %chanOutput_0, %ready_22 : i32
    %c0_i0_20 = hw.constant 0 : i0
    %chanOutput_21, %ready_22 = esi.wrap.vr %c0_i0_20, %valid_19 : i0
    %rawOutput_23, %valid_24 = esi.unwrap.vr %chanOutput_9, %22 : i0
    %rawOutput_25, %valid_26 = esi.unwrap.vr %chanOutput, %22 : i0
    %rawOutput_27, %valid_28 = esi.unwrap.vr %chanOutput_21, %22 : i0
    %rawOutput_29, %valid_30 = esi.unwrap.vr %chanOutput_15, %22 : i0
    %rawOutput_31, %valid_32 = esi.unwrap.vr %chanOutput_12, %22 : i0
    %c0_i0_33 = hw.constant 0 : i0
    %chanOutput_34, %ready_35 = esi.wrap.vr %c0_i0_33, %21 : i0
    %21 = comb.and %valid_24, %valid_26, %valid_28, %valid_30, %valid_32 : i1
    %22 = comb.and %ready_35, %21 : i1
    %23 = comb.add %20, %rawOutput : i32
    %rawOutput_36, %valid_37 = esi.unwrap.vr %chanOutput_34, %ready_39 : i0
    %chanOutput_38, %ready_39 = esi.wrap.vr %23, %valid_37 : i32
    %rawOutput_40, %valid_41 = esi.unwrap.vr %chanOutput_38, %out0_ready : i32
    hw.output %ready_3, %ready_1, %ready, %rawOutput_40, %valid_41 : i1, i1, i1, i32, i1
  }
}

