module {
  hw.module @handshake_sink_in_ui32(in %in0 : i32, in %in0_valid : i1, out in0_ready : i1) {
    %chanOutput, %ready = esi.wrap.vr %in0, %in0_valid : i32
    %rawOutput, %valid = esi.unwrap.vr %chanOutput, %true : i32
    %true = hw.constant true
    hw.output %ready : i1
  }
  hw.module @handshake_merge_in_ui32_ui32_out_ui32(in %in0 : i32, in %in0_valid : i1, in %in1 : i32, in %in1_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out out0 : i32, out out0_valid : i1) {
    %chanOutput, %ready = esi.wrap.vr %in1, %in1_valid : i32
    %chanOutput_0, %ready_1 = esi.wrap.vr %in0, %in0_valid : i32
    %rawOutput, %valid = esi.unwrap.vr %chanOutput_0, %9 : i32
    %rawOutput_2, %valid_3 = esi.unwrap.vr %chanOutput, %10 : i32
    %chanOutput_4, %ready_5 = esi.wrap.vr %6, %2 : i32
    %c0_i2 = hw.constant 0 : i2
    %0 = comb.extract %4 from 0 : (i2) -> i1
    %1 = comb.extract %4 from 1 : (i2) -> i1
    %2 = comb.or %0, %1 : i1
    %c-2_i2 = hw.constant -2 : i2
    %3 = comb.mux %valid_3, %c-2_i2, %c0_i2 : i2
    %c1_i2 = hw.constant 1 : i2
    %4 = comb.mux %valid, %c1_i2, %3 : i2
    %c0_i32 = hw.constant 0 : i32
    %5 = comb.extract %4 from 1 : (i2) -> i1
    %6 = comb.mux %5, %rawOutput_2, %c0_i32 : i32
    %7 = comb.and %2, %ready_5 : i1
    %8 = comb.mux %7, %4, %c0_i2 : i2
    %9 = comb.icmp eq %8, %c1_i2 : i2
    %10 = comb.icmp eq %8, %c-2_i2 : i2
    %rawOutput_6, %valid_7 = esi.unwrap.vr %chanOutput_4, %out0_ready : i32
    hw.output %ready_1, %ready, %rawOutput_6, %valid_7 : i1, i1, i32, i1
  }
  hw.module @handshake_fork_in_ui32_out_ui32_ui32_ui32_ui32_ui32(in %in0 : i32, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, in %out4_ready : i1, out in0_ready : i1, out out0 : i32, out out0_valid : i1, out out1 : i32, out out1_valid : i1, out out2 : i32, out out2_valid : i1, out out3 : i32, out out3_valid : i1, out out4 : i32, out out4_valid : i1) {
    %chanOutput, %ready = esi.wrap.vr %in0, %in0_valid : i32
    %rawOutput, %valid = esi.unwrap.vr %chanOutput, %30 : i32
    %chanOutput_0, %ready_1 = esi.wrap.vr %rawOutput, %3 : i32
    %chanOutput_2, %ready_3 = esi.wrap.vr %rawOutput, %9 : i32
    %chanOutput_4, %ready_5 = esi.wrap.vr %rawOutput, %15 : i32
    %chanOutput_6, %ready_7 = esi.wrap.vr %rawOutput, %21 : i32
    %chanOutput_8, %ready_9 = esi.wrap.vr %rawOutput, %27 : i32
    %false = hw.constant false
    %true = hw.constant true
    %0 = comb.xor %30, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %valid : i1
    %4 = comb.and %ready_1, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %30, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %valid : i1
    %10 = comb.and %ready_3, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %30, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %valid : i1
    %16 = comb.and %ready_5, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.xor %30, %true : i1
    %19 = comb.and %23, %18 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %19, %clock reset %reset, %false : i1  
    %20 = comb.xor %emitted_3, %true : i1
    %21 = comb.and %20, %valid : i1
    %22 = comb.and %ready_7, %21 : i1
    %23 = comb.or %22, %emitted_3 {sv.namehint = "done3"} : i1
    %24 = comb.xor %30, %true : i1
    %25 = comb.and %29, %24 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %25, %clock reset %reset, %false : i1  
    %26 = comb.xor %emitted_4, %true : i1
    %27 = comb.and %26, %valid : i1
    %28 = comb.and %ready_9, %27 : i1
    %29 = comb.or %28, %emitted_4 {sv.namehint = "done4"} : i1
    %30 = comb.and %5, %11, %17, %23, %29 {sv.namehint = "allDone"} : i1
    %rawOutput_10, %valid_11 = esi.unwrap.vr %chanOutput_0, %out0_ready : i32
    %rawOutput_12, %valid_13 = esi.unwrap.vr %chanOutput_2, %out1_ready : i32
    %rawOutput_14, %valid_15 = esi.unwrap.vr %chanOutput_4, %out2_ready : i32
    %rawOutput_16, %valid_17 = esi.unwrap.vr %chanOutput_6, %out3_ready : i32
    %rawOutput_18, %valid_19 = esi.unwrap.vr %chanOutput_8, %out4_ready : i32
    hw.output %ready, %rawOutput_10, %valid_11, %rawOutput_12, %valid_13, %rawOutput_14, %valid_15, %rawOutput_16, %valid_17, %rawOutput_18, %valid_19 : i1, i32, i1, i32, i1, i32, i1, i32, i1, i32, i1
  }
  hw.module @handshake_fork_in_ui32_out_ui32_ui32(in %in0 : i32, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, out in0_ready : i1, out out0 : i32, out out0_valid : i1, out out1 : i32, out out1_valid : i1) {
    %chanOutput, %ready = esi.wrap.vr %in0, %in0_valid : i32
    %rawOutput, %valid = esi.unwrap.vr %chanOutput, %12 : i32
    %chanOutput_0, %ready_1 = esi.wrap.vr %rawOutput, %3 : i32
    %chanOutput_2, %ready_3 = esi.wrap.vr %rawOutput, %9 : i32
    %false = hw.constant false
    %true = hw.constant true
    %0 = comb.xor %12, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %valid : i1
    %4 = comb.and %ready_1, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %12, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %valid : i1
    %10 = comb.and %ready_3, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.and %5, %11 {sv.namehint = "allDone"} : i1
    %rawOutput_4, %valid_5 = esi.unwrap.vr %chanOutput_0, %out0_ready : i32
    %rawOutput_6, %valid_7 = esi.unwrap.vr %chanOutput_2, %out1_ready : i32
    hw.output %ready, %rawOutput_4, %valid_5, %rawOutput_6, %valid_7 : i1, i32, i1, i32, i1
  }
  hw.module @handshake_fork_in_ui32_out_ui32_ui32_ui32(in %in0 : i32, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, out in0_ready : i1, out out0 : i32, out out0_valid : i1, out out1 : i32, out out1_valid : i1, out out2 : i32, out out2_valid : i1) {
    %chanOutput, %ready = esi.wrap.vr %in0, %in0_valid : i32
    %rawOutput, %valid = esi.unwrap.vr %chanOutput, %18 : i32
    %chanOutput_0, %ready_1 = esi.wrap.vr %rawOutput, %3 : i32
    %chanOutput_2, %ready_3 = esi.wrap.vr %rawOutput, %9 : i32
    %chanOutput_4, %ready_5 = esi.wrap.vr %rawOutput, %15 : i32
    %false = hw.constant false
    %true = hw.constant true
    %0 = comb.xor %18, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %valid : i1
    %4 = comb.and %ready_1, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %18, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %valid : i1
    %10 = comb.and %ready_3, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %18, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %valid : i1
    %16 = comb.and %ready_5, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.and %5, %11, %17 {sv.namehint = "allDone"} : i1
    %rawOutput_6, %valid_7 = esi.unwrap.vr %chanOutput_0, %out0_ready : i32
    %rawOutput_8, %valid_9 = esi.unwrap.vr %chanOutput_2, %out1_ready : i32
    %rawOutput_10, %valid_11 = esi.unwrap.vr %chanOutput_4, %out2_ready : i32
    hw.output %ready, %rawOutput_6, %valid_7, %rawOutput_8, %valid_9, %rawOutput_10, %valid_11 : i1, i32, i1, i32, i1, i32, i1
  }
  hw.module @handshake_join_in_ui32_1ins_1outs_ctrl(in %in0 : i32, in %in0_valid : i1, in %out0_ready : i1, out in0_ready : i1, out out0 : i0, out out0_valid : i1) {
    %chanOutput, %ready = esi.wrap.vr %in0, %in0_valid : i32
    %rawOutput, %valid = esi.unwrap.vr %chanOutput, %0 : i32
    %chanOutput_0, %ready_1 = esi.wrap.vr %c0_i0, %valid : i0
    %0 = comb.and %ready_1, %valid : i1
    %c0_i0 = hw.constant 0 : i0
    %rawOutput_2, %valid_3 = esi.unwrap.vr %chanOutput_0, %out0_ready : i0
    hw.output %ready, %rawOutput_2, %valid_3 : i1, i0, i1
  }
  hw.module @ops(in %arg0 : i32, in %arg0_valid : i1, in %arg1 : i32, in %arg1_valid : i1, in %arg2 : i32, in %arg2_valid : i1, in %arg3 : i32, in %arg3_valid : i1, in %arg4 : i32, in %arg4_valid : i1, in %clk : i32, in %clk_valid : i1, in %rst : i32, in %rst_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, out arg0_ready : i1, out arg1_ready : i1, out arg2_ready : i1, out arg3_ready : i1, out arg4_ready : i1, out clk_ready : i1, out rst_ready : i1, out out0 : i32, out out0_valid : i1, out out1 : i32, out out1_valid : i1, out out2 : i0, out out2_valid : i1) {
    %chanOutput, %ready = esi.wrap.vr %rst, %rst_valid : i32
    %chanOutput_0, %ready_1 = esi.wrap.vr %clk, %clk_valid : i32
    %chanOutput_2, %ready_3 = esi.wrap.vr %arg4, %arg4_valid : i32
    %chanOutput_4, %ready_5 = esi.wrap.vr %arg3, %arg3_valid : i32
    %chanOutput_6, %ready_7 = esi.wrap.vr %arg2, %arg2_valid : i32
    %chanOutput_8, %ready_9 = esi.wrap.vr %arg1, %arg1_valid : i32
    %chanOutput_10, %ready_11 = esi.wrap.vr %arg0, %arg0_valid : i32
    %rawOutput, %valid = esi.unwrap.vr %chanOutput, %handshake_sink0.in0_ready : i32
    %handshake_sink0.in0_ready = hw.instance "handshake_sink0" @handshake_sink_in_ui32(in0: %rawOutput: i32, in0_valid: %valid: i1) -> (in0_ready: i1)
    %rawOutput_12, %valid_13 = esi.unwrap.vr %chanOutput_0, %handshake_sink1.in0_ready : i32
    %handshake_sink1.in0_ready = hw.instance "handshake_sink1" @handshake_sink_in_ui32(in0: %rawOutput_12: i32, in0_valid: %valid_13: i1) -> (in0_ready: i1)
    %rawOutput_14, %valid_15 = esi.unwrap.vr %chanOutput_10, %handshake_merge0.in0_ready : i32
    %rawOutput_16, %valid_17 = esi.unwrap.vr %chanOutput_8, %handshake_merge0.in1_ready : i32
    %chanOutput_18, %ready_19 = esi.wrap.vr %handshake_merge0.out0, %handshake_merge0.out0_valid : i32
    %handshake_merge0.in0_ready, %handshake_merge0.in1_ready, %handshake_merge0.out0, %handshake_merge0.out0_valid = hw.instance "handshake_merge0" @handshake_merge_in_ui32_ui32_out_ui32(in0: %rawOutput_14: i32, in0_valid: %valid_15: i1, in1: %rawOutput_16: i32, in1_valid: %valid_17: i1, out0_ready: %ready_19: i1) -> (in0_ready: i1, in1_ready: i1, out0: i32, out0_valid: i1)
    %0 = builtin.unrealized_conversion_cast %chanOutput_18 : !esi.channel<i32> to i32
    %rawOutput_20, %valid_21 = esi.unwrap.vr %chanOutput_6, %handshake_merge1.in0_ready : i32
    %rawOutput_22, %valid_23 = esi.unwrap.vr %chanOutput_4, %handshake_merge1.in1_ready : i32
    %chanOutput_24, %ready_25 = esi.wrap.vr %handshake_merge1.out0, %handshake_merge1.out0_valid : i32
    %handshake_merge1.in0_ready, %handshake_merge1.in1_ready, %handshake_merge1.out0, %handshake_merge1.out0_valid = hw.instance "handshake_merge1" @handshake_merge_in_ui32_ui32_out_ui32(in0: %rawOutput_20: i32, in0_valid: %valid_21: i1, in1: %rawOutput_22: i32, in1_valid: %valid_23: i1, out0_ready: %ready_25: i1) -> (in0_ready: i1, in1_ready: i1, out0: i32, out0_valid: i1)
    %rawOutput_26, %valid_27 = esi.unwrap.vr %chanOutput_24, %handshake_merge2.in0_ready : i32
    %rawOutput_28, %valid_29 = esi.unwrap.vr %chanOutput_2, %handshake_merge2.in1_ready : i32
    %chanOutput_30, %ready_31 = esi.wrap.vr %handshake_merge2.out0, %handshake_merge2.out0_valid : i32
    %handshake_merge2.in0_ready, %handshake_merge2.in1_ready, %handshake_merge2.out0, %handshake_merge2.out0_valid = hw.instance "handshake_merge2" @handshake_merge_in_ui32_ui32_out_ui32(in0: %rawOutput_26: i32, in0_valid: %valid_27: i1, in1: %rawOutput_28: i32, in1_valid: %valid_29: i1, out0_ready: %ready_31: i1) -> (in0_ready: i1, in1_ready: i1, out0: i32, out0_valid: i1)
    %rawOutput_32, %valid_33 = esi.unwrap.vr %chanOutput_30, %handshake_fork0.in0_ready : i32
    %chanOutput_34, %ready_35 = esi.wrap.vr %handshake_fork0.out0, %handshake_fork0.out0_valid : i32
    %chanOutput_36, %ready_37 = esi.wrap.vr %handshake_fork0.out1, %handshake_fork0.out1_valid : i32
    %chanOutput_38, %ready_39 = esi.wrap.vr %handshake_fork0.out2, %handshake_fork0.out2_valid : i32
    %chanOutput_40, %ready_41 = esi.wrap.vr %handshake_fork0.out3, %handshake_fork0.out3_valid : i32
    %chanOutput_42, %ready_43 = esi.wrap.vr %handshake_fork0.out4, %handshake_fork0.out4_valid : i32
    %handshake_fork0.in0_ready, %handshake_fork0.out0, %handshake_fork0.out0_valid, %handshake_fork0.out1, %handshake_fork0.out1_valid, %handshake_fork0.out2, %handshake_fork0.out2_valid, %handshake_fork0.out3, %handshake_fork0.out3_valid, %handshake_fork0.out4, %handshake_fork0.out4_valid = hw.instance "handshake_fork0" @handshake_fork_in_ui32_out_ui32_ui32_ui32_ui32_ui32(in0: %rawOutput_32: i32, in0_valid: %valid_33: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %ready_35: i1, out1_ready: %ready_37: i1, out2_ready: %ready_39: i1, out3_ready: %ready_41: i1, out4_ready: %ready_43: i1) -> (in0_ready: i1, out0: i32, out0_valid: i1, out1: i32, out1_valid: i1, out2: i32, out2_valid: i1, out3: i32, out3_valid: i1, out4: i32, out4_valid: i1)
    %1 = builtin.unrealized_conversion_cast %chanOutput_42 : !esi.channel<i32> to i32
    %2 = builtin.unrealized_conversion_cast %chanOutput_40 : !esi.channel<i32> to i32
    %3 = builtin.unrealized_conversion_cast %chanOutput_38 : !esi.channel<i32> to i32
    %4 = builtin.unrealized_conversion_cast %chanOutput_36 : !esi.channel<i32> to i32
    %5 = builtin.unrealized_conversion_cast %chanOutput_34 : !esi.channel<i32> to i32
    %6 = comb.sub %0, %1 : i32
    %7 = comb.sub %2, %6 : i32
    %8 = builtin.unrealized_conversion_cast %7 : i32 to !esi.channel<i32>
    %rawOutput_44, %valid_45 = esi.unwrap.vr %8, %handshake_fork1.in0_ready : i32
    %chanOutput_46, %ready_47 = esi.wrap.vr %handshake_fork1.out0, %handshake_fork1.out0_valid : i32
    %chanOutput_48, %ready_49 = esi.wrap.vr %handshake_fork1.out1, %handshake_fork1.out1_valid : i32
    %handshake_fork1.in0_ready, %handshake_fork1.out0, %handshake_fork1.out0_valid, %handshake_fork1.out1, %handshake_fork1.out1_valid = hw.instance "handshake_fork1" @handshake_fork_in_ui32_out_ui32_ui32(in0: %rawOutput_44: i32, in0_valid: %valid_45: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %ready_47: i1, out1_ready: %ready_49: i1) -> (in0_ready: i1, out0: i32, out0_valid: i1, out1: i32, out1_valid: i1)
    %9 = builtin.unrealized_conversion_cast %chanOutput_48 : !esi.channel<i32> to i32
    %10 = builtin.unrealized_conversion_cast %chanOutput_46 : !esi.channel<i32> to i32
    %11 = comb.mul %37, %9 : i32
    %12 = comb.divs %11, %10 : i32
    %13 = builtin.unrealized_conversion_cast %12 : i32 to !esi.channel<i32>
    %rawOutput_50, %valid_51 = esi.unwrap.vr %13, %handshake_fork2.in0_ready : i32
    %chanOutput_52, %ready_53 = esi.wrap.vr %handshake_fork2.out0, %handshake_fork2.out0_valid : i32
    %chanOutput_54, %ready_55 = esi.wrap.vr %handshake_fork2.out1, %handshake_fork2.out1_valid : i32
    %handshake_fork2.in0_ready, %handshake_fork2.out0, %handshake_fork2.out0_valid, %handshake_fork2.out1, %handshake_fork2.out1_valid = hw.instance "handshake_fork2" @handshake_fork_in_ui32_out_ui32_ui32(in0: %rawOutput_50: i32, in0_valid: %valid_51: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %ready_53: i1, out1_ready: %ready_55: i1) -> (in0_ready: i1, out0: i32, out0_valid: i1, out1: i32, out1_valid: i1)
    %14 = builtin.unrealized_conversion_cast %chanOutput_54 : !esi.channel<i32> to i32
    %15 = builtin.unrealized_conversion_cast %chanOutput_52 : !esi.channel<i32> to i32
    %16 = comb.divu %3, %14 : i32
    %17 = comb.divs %16, %15 : i32
    %18 = builtin.unrealized_conversion_cast %17 : i32 to !esi.channel<i32>
    %rawOutput_56, %valid_57 = esi.unwrap.vr %18, %handshake_fork3.in0_ready : i32
    %chanOutput_58, %ready_59 = esi.wrap.vr %handshake_fork3.out0, %handshake_fork3.out0_valid : i32
    %chanOutput_60, %ready_61 = esi.wrap.vr %handshake_fork3.out1, %handshake_fork3.out1_valid : i32
    %handshake_fork3.in0_ready, %handshake_fork3.out0, %handshake_fork3.out0_valid, %handshake_fork3.out1, %handshake_fork3.out1_valid = hw.instance "handshake_fork3" @handshake_fork_in_ui32_out_ui32_ui32(in0: %rawOutput_56: i32, in0_valid: %valid_57: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %ready_59: i1, out1_ready: %ready_61: i1) -> (in0_ready: i1, out0: i32, out0_valid: i1, out1: i32, out1_valid: i1)
    %19 = builtin.unrealized_conversion_cast %chanOutput_60 : !esi.channel<i32> to i32
    %20 = builtin.unrealized_conversion_cast %chanOutput_58 : !esi.channel<i32> to i32
    %21 = comb.divu %4, %19 : i32
    %22 = builtin.unrealized_conversion_cast %21 : i32 to !esi.channel<i32>
    %rawOutput_62, %valid_63 = esi.unwrap.vr %22, %handshake_fork4.in0_ready : i32
    %chanOutput_64, %ready_65 = esi.wrap.vr %handshake_fork4.out0, %handshake_fork4.out0_valid : i32
    %chanOutput_66, %ready_67 = esi.wrap.vr %handshake_fork4.out1, %handshake_fork4.out1_valid : i32
    %chanOutput_68, %ready_69 = esi.wrap.vr %handshake_fork4.out2, %handshake_fork4.out2_valid : i32
    %handshake_fork4.in0_ready, %handshake_fork4.out0, %handshake_fork4.out0_valid, %handshake_fork4.out1, %handshake_fork4.out1_valid, %handshake_fork4.out2, %handshake_fork4.out2_valid = hw.instance "handshake_fork4" @handshake_fork_in_ui32_out_ui32_ui32_ui32(in0: %rawOutput_62: i32, in0_valid: %valid_63: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %ready_65: i1, out1_ready: %ready_67: i1, out2_ready: %ready_69: i1) -> (in0_ready: i1, out0: i32, out0_valid: i1, out1: i32, out1_valid: i1, out2: i32, out2_valid: i1)
    %23 = builtin.unrealized_conversion_cast %chanOutput_68 : !esi.channel<i32> to i32
    %24 = builtin.unrealized_conversion_cast %chanOutput_66 : !esi.channel<i32> to i32
    %25 = comb.mul %20, %23 : i32
    %26 = builtin.unrealized_conversion_cast %25 : i32 to !esi.channel<i32>
    %rawOutput_70, %valid_71 = esi.unwrap.vr %26, %handshake_fork5.in0_ready : i32
    %chanOutput_72, %ready_73 = esi.wrap.vr %handshake_fork5.out0, %handshake_fork5.out0_valid : i32
    %chanOutput_74, %ready_75 = esi.wrap.vr %handshake_fork5.out1, %handshake_fork5.out1_valid : i32
    %handshake_fork5.in0_ready, %handshake_fork5.out0, %handshake_fork5.out0_valid, %handshake_fork5.out1, %handshake_fork5.out1_valid = hw.instance "handshake_fork5" @handshake_fork_in_ui32_out_ui32_ui32(in0: %rawOutput_70: i32, in0_valid: %valid_71: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %ready_73: i1, out1_ready: %ready_75: i1) -> (in0_ready: i1, out0: i32, out0_valid: i1, out1: i32, out1_valid: i1)
    %27 = builtin.unrealized_conversion_cast %chanOutput_74 : !esi.channel<i32> to i32
    %28 = builtin.unrealized_conversion_cast %chanOutput_72 : !esi.channel<i32> to i32
    %29 = comb.divs %24, %27 : i32
    %30 = builtin.unrealized_conversion_cast %29 : i32 to !esi.channel<i32>
    %rawOutput_76, %valid_77 = esi.unwrap.vr %30, %handshake_fork6.in0_ready : i32
    %chanOutput_78, %ready_79 = esi.wrap.vr %handshake_fork6.out0, %handshake_fork6.out0_valid : i32
    %chanOutput_80, %ready_81 = esi.wrap.vr %handshake_fork6.out1, %handshake_fork6.out1_valid : i32
    %handshake_fork6.in0_ready, %handshake_fork6.out0, %handshake_fork6.out0_valid, %handshake_fork6.out1, %handshake_fork6.out1_valid = hw.instance "handshake_fork6" @handshake_fork_in_ui32_out_ui32_ui32(in0: %rawOutput_76: i32, in0_valid: %valid_77: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %ready_79: i1, out1_ready: %ready_81: i1) -> (in0_ready: i1, out0: i32, out0_valid: i1, out1: i32, out1_valid: i1)
    %31 = builtin.unrealized_conversion_cast %chanOutput_80 : !esi.channel<i32> to i32
    %32 = builtin.unrealized_conversion_cast %chanOutput_78 : !esi.channel<i32> to i32
    %33 = comb.and %28, %31 : i32
    %34 = comb.or %5, %32 : i32
    %35 = comb.xor %33, %34 : i32
    %36 = builtin.unrealized_conversion_cast %35 : i32 to !esi.channel<i32>
    %rawOutput_82, %valid_83 = esi.unwrap.vr %36, %handshake_fork7.in0_ready : i32
    %chanOutput_84, %ready_85 = esi.wrap.vr %handshake_fork7.out0, %handshake_fork7.out0_valid : i32
    %chanOutput_86, %ready_87 = esi.wrap.vr %handshake_fork7.out1, %handshake_fork7.out1_valid : i32
    %chanOutput_88, %ready_89 = esi.wrap.vr %handshake_fork7.out2, %handshake_fork7.out2_valid : i32
    %handshake_fork7.in0_ready, %handshake_fork7.out0, %handshake_fork7.out0_valid, %handshake_fork7.out1, %handshake_fork7.out1_valid, %handshake_fork7.out2, %handshake_fork7.out2_valid = hw.instance "handshake_fork7" @handshake_fork_in_ui32_out_ui32_ui32_ui32(in0: %rawOutput_82: i32, in0_valid: %valid_83: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %ready_85: i1, out1_ready: %ready_87: i1, out2_ready: %ready_89: i1) -> (in0_ready: i1, out0: i32, out0_valid: i1, out1: i32, out1_valid: i1, out2: i32, out2_valid: i1)
    %37 = builtin.unrealized_conversion_cast %chanOutput_88 : !esi.channel<i32> to i32
    %rawOutput_90, %valid_91 = esi.unwrap.vr %chanOutput_86, %handshake_join0.in0_ready : i32
    %chanOutput_92, %ready_93 = esi.wrap.vr %handshake_join0.out0, %handshake_join0.out0_valid : i0
    %handshake_join0.in0_ready, %handshake_join0.out0, %handshake_join0.out0_valid = hw.instance "handshake_join0" @handshake_join_in_ui32_1ins_1outs_ctrl(in0: %rawOutput_90: i32, in0_valid: %valid_91: i1, out0_ready: %ready_93: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %rawOutput_94, %valid_95 = esi.unwrap.vr %chanOutput_84, %out0_ready : i32
    %rawOutput_96, %valid_97 = esi.unwrap.vr %chanOutput_64, %out1_ready : i32
    %rawOutput_98, %valid_99 = esi.unwrap.vr %chanOutput_92, %out2_ready : i0
    hw.output %ready_11, %ready_9, %ready_7, %ready_5, %ready_3, %ready_1, %ready, %rawOutput_94, %valid_95, %rawOutput_96, %valid_97, %rawOutput_98, %valid_99 : i1, i1, i1, i1, i1, i1, i1, i32, i1, i32, i1, i0, i1
  }
}

