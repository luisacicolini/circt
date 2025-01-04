module {
  hw.module @handshake_sink_in_ui32(in %in0 : !esi.channel<i32>) {
    %rawOutput, %valid = esi.unwrap.vr %in0, %true : i32
    %true = hw.constant true
    hw.output
  }
  hw.module @handshake_merge_in_ui32_ui32_out_ui32(in %in0 : !esi.channel<i32>, in %in1 : !esi.channel<i32>, out out0 : !esi.channel<i32>) {
    %rawOutput, %valid = esi.unwrap.vr %in0, %9 : i32
    %rawOutput_0, %valid_1 = esi.unwrap.vr %in1, %10 : i32
    %chanOutput, %ready = esi.wrap.vr %6, %2 : i32
    %c0_i2 = hw.constant 0 : i2
    %0 = comb.extract %4 from 0 : (i2) -> i1
    %1 = comb.extract %4 from 1 : (i2) -> i1
    %2 = comb.or %0, %1 : i1
    %c-2_i2 = hw.constant -2 : i2
    %3 = comb.mux %valid_1, %c-2_i2, %c0_i2 : i2
    %c1_i2 = hw.constant 1 : i2
    %4 = comb.mux %valid, %c1_i2, %3 : i2
    %c0_i32 = hw.constant 0 : i32
    %5 = comb.extract %4 from 1 : (i2) -> i1
    %6 = comb.mux %5, %rawOutput_0, %c0_i32 : i32
    %7 = comb.and %2, %ready : i1
    %8 = comb.mux %7, %4, %c0_i2 : i2
    %9 = comb.icmp eq %8, %c1_i2 : i2
    %10 = comb.icmp eq %8, %c-2_i2 : i2
    hw.output %chanOutput : !esi.channel<i32>
  }
  hw.module @handshake_fork_in_ui32_out_ui32_ui32_ui32_ui32_ui32(in %in0 : !esi.channel<i32>, in %clock : !seq.clock, in %reset : i1, out out0 : !esi.channel<i32>, out out1 : !esi.channel<i32>, out out2 : !esi.channel<i32>, out out3 : !esi.channel<i32>, out out4 : !esi.channel<i32>) {
    %rawOutput, %valid = esi.unwrap.vr %in0, %30 : i32
    %chanOutput, %ready = esi.wrap.vr %rawOutput, %3 : i32
    %chanOutput_0, %ready_1 = esi.wrap.vr %rawOutput, %9 : i32
    %chanOutput_2, %ready_3 = esi.wrap.vr %rawOutput, %15 : i32
    %chanOutput_4, %ready_5 = esi.wrap.vr %rawOutput, %21 : i32
    %chanOutput_6, %ready_7 = esi.wrap.vr %rawOutput, %27 : i32
    %false = hw.constant false
    %true = hw.constant true
    %0 = comb.xor %30, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %valid : i1
    %4 = comb.and %ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %30, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %valid : i1
    %10 = comb.and %ready_1, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %30, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %valid : i1
    %16 = comb.and %ready_3, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.xor %30, %true : i1
    %19 = comb.and %23, %18 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %19, %clock reset %reset, %false : i1  
    %20 = comb.xor %emitted_3, %true : i1
    %21 = comb.and %20, %valid : i1
    %22 = comb.and %ready_5, %21 : i1
    %23 = comb.or %22, %emitted_3 {sv.namehint = "done3"} : i1
    %24 = comb.xor %30, %true : i1
    %25 = comb.and %29, %24 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %25, %clock reset %reset, %false : i1  
    %26 = comb.xor %emitted_4, %true : i1
    %27 = comb.and %26, %valid : i1
    %28 = comb.and %ready_7, %27 : i1
    %29 = comb.or %28, %emitted_4 {sv.namehint = "done4"} : i1
    %30 = comb.and %5, %11, %17, %23, %29 {sv.namehint = "allDone"} : i1
    hw.output %chanOutput, %chanOutput_0, %chanOutput_2, %chanOutput_4, %chanOutput_6 : !esi.channel<i32>, !esi.channel<i32>, !esi.channel<i32>, !esi.channel<i32>, !esi.channel<i32>
  }
  hw.module @handshake_fork_in_ui32_out_ui32_ui32(in %in0 : !esi.channel<i32>, in %clock : !seq.clock, in %reset : i1, out out0 : !esi.channel<i32>, out out1 : !esi.channel<i32>) {
    %rawOutput, %valid = esi.unwrap.vr %in0, %12 : i32
    %chanOutput, %ready = esi.wrap.vr %rawOutput, %3 : i32
    %chanOutput_0, %ready_1 = esi.wrap.vr %rawOutput, %9 : i32
    %false = hw.constant false
    %true = hw.constant true
    %0 = comb.xor %12, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %valid : i1
    %4 = comb.and %ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %12, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %valid : i1
    %10 = comb.and %ready_1, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.and %5, %11 {sv.namehint = "allDone"} : i1
    hw.output %chanOutput, %chanOutput_0 : !esi.channel<i32>, !esi.channel<i32>
  }
  hw.module @handshake_fork_in_ui32_out_ui32_ui32_ui32(in %in0 : !esi.channel<i32>, in %clock : !seq.clock, in %reset : i1, out out0 : !esi.channel<i32>, out out1 : !esi.channel<i32>, out out2 : !esi.channel<i32>) {
    %rawOutput, %valid = esi.unwrap.vr %in0, %18 : i32
    %chanOutput, %ready = esi.wrap.vr %rawOutput, %3 : i32
    %chanOutput_0, %ready_1 = esi.wrap.vr %rawOutput, %9 : i32
    %chanOutput_2, %ready_3 = esi.wrap.vr %rawOutput, %15 : i32
    %false = hw.constant false
    %true = hw.constant true
    %0 = comb.xor %18, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %valid : i1
    %4 = comb.and %ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %18, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %valid : i1
    %10 = comb.and %ready_1, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %18, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %valid : i1
    %16 = comb.and %ready_3, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.and %5, %11, %17 {sv.namehint = "allDone"} : i1
    hw.output %chanOutput, %chanOutput_0, %chanOutput_2 : !esi.channel<i32>, !esi.channel<i32>, !esi.channel<i32>
  }
  hw.module @handshake_join_in_ui32_1ins_1outs_ctrl(in %in0 : !esi.channel<i32>, out out0 : !esi.channel<i0>) {
    %rawOutput, %valid = esi.unwrap.vr %in0, %0 : i32
    %chanOutput, %ready = esi.wrap.vr %c0_i0, %valid : i0
    %0 = comb.and %ready, %valid : i1
    %c0_i0 = hw.constant 0 : i0
    hw.output %chanOutput : !esi.channel<i0>
  }
  hw.module @ops(in %arg0 : !esi.channel<i32>, in %arg1 : !esi.channel<i32>, in %arg2 : !esi.channel<i32>, in %arg3 : !esi.channel<i32>, in %arg4 : !esi.channel<i32>, in %clk : !esi.channel<i32>, in %rst : !esi.channel<i32>, in %clock : !seq.clock, in %reset : i1, out out0 : !esi.channel<i32>, out out1 : !esi.channel<i32>, out out2 : !esi.channel<i0>) {
    hw.instance "handshake_sink0" @handshake_sink_in_ui32(in0: %rst: !esi.channel<i32>) -> ()
    hw.instance "handshake_sink1" @handshake_sink_in_ui32(in0: %clk: !esi.channel<i32>) -> ()
    %handshake_merge0.out0 = hw.instance "handshake_merge0" @handshake_merge_in_ui32_ui32_out_ui32(in0: %arg0: !esi.channel<i32>, in1: %arg1: !esi.channel<i32>) -> (out0: !esi.channel<i32>)
    %0 = builtin.unrealized_conversion_cast %handshake_merge0.out0 : !esi.channel<i32> to i32
    %handshake_merge1.out0 = hw.instance "handshake_merge1" @handshake_merge_in_ui32_ui32_out_ui32(in0: %arg2: !esi.channel<i32>, in1: %arg3: !esi.channel<i32>) -> (out0: !esi.channel<i32>)
    %handshake_merge2.out0 = hw.instance "handshake_merge2" @handshake_merge_in_ui32_ui32_out_ui32(in0: %handshake_merge1.out0: !esi.channel<i32>, in1: %arg4: !esi.channel<i32>) -> (out0: !esi.channel<i32>)
    %handshake_fork0.out0, %handshake_fork0.out1, %handshake_fork0.out2, %handshake_fork0.out3, %handshake_fork0.out4 = hw.instance "handshake_fork0" @handshake_fork_in_ui32_out_ui32_ui32_ui32_ui32_ui32(in0: %handshake_merge2.out0: !esi.channel<i32>, clock: %clock: !seq.clock, reset: %reset: i1) -> (out0: !esi.channel<i32>, out1: !esi.channel<i32>, out2: !esi.channel<i32>, out3: !esi.channel<i32>, out4: !esi.channel<i32>)
    %1 = builtin.unrealized_conversion_cast %handshake_fork0.out4 : !esi.channel<i32> to i32
    %2 = builtin.unrealized_conversion_cast %handshake_fork0.out3 : !esi.channel<i32> to i32
    %3 = builtin.unrealized_conversion_cast %handshake_fork0.out2 : !esi.channel<i32> to i32
    %4 = builtin.unrealized_conversion_cast %handshake_fork0.out1 : !esi.channel<i32> to i32
    %5 = builtin.unrealized_conversion_cast %handshake_fork0.out0 : !esi.channel<i32> to i32
    %6 = comb.sub %0, %1 : i32
    %7 = comb.sub %2, %6 : i32
    %8 = builtin.unrealized_conversion_cast %7 : i32 to !esi.channel<i32>
    %handshake_fork1.out0, %handshake_fork1.out1 = hw.instance "handshake_fork1" @handshake_fork_in_ui32_out_ui32_ui32(in0: %8: !esi.channel<i32>, clock: %clock: !seq.clock, reset: %reset: i1) -> (out0: !esi.channel<i32>, out1: !esi.channel<i32>)
    %9 = builtin.unrealized_conversion_cast %handshake_fork1.out1 : !esi.channel<i32> to i32
    %10 = builtin.unrealized_conversion_cast %handshake_fork1.out0 : !esi.channel<i32> to i32
    %11 = comb.mul %37, %9 : i32
    %12 = comb.divs %11, %10 : i32
    %13 = builtin.unrealized_conversion_cast %12 : i32 to !esi.channel<i32>
    %handshake_fork2.out0, %handshake_fork2.out1 = hw.instance "handshake_fork2" @handshake_fork_in_ui32_out_ui32_ui32(in0: %13: !esi.channel<i32>, clock: %clock: !seq.clock, reset: %reset: i1) -> (out0: !esi.channel<i32>, out1: !esi.channel<i32>)
    %14 = builtin.unrealized_conversion_cast %handshake_fork2.out1 : !esi.channel<i32> to i32
    %15 = builtin.unrealized_conversion_cast %handshake_fork2.out0 : !esi.channel<i32> to i32
    %16 = comb.divu %3, %14 : i32
    %17 = comb.divs %16, %15 : i32
    %18 = builtin.unrealized_conversion_cast %17 : i32 to !esi.channel<i32>
    %handshake_fork3.out0, %handshake_fork3.out1 = hw.instance "handshake_fork3" @handshake_fork_in_ui32_out_ui32_ui32(in0: %18: !esi.channel<i32>, clock: %clock: !seq.clock, reset: %reset: i1) -> (out0: !esi.channel<i32>, out1: !esi.channel<i32>)
    %19 = builtin.unrealized_conversion_cast %handshake_fork3.out1 : !esi.channel<i32> to i32
    %20 = builtin.unrealized_conversion_cast %handshake_fork3.out0 : !esi.channel<i32> to i32
    %21 = comb.divu %4, %19 : i32
    %22 = builtin.unrealized_conversion_cast %21 : i32 to !esi.channel<i32>
    %handshake_fork4.out0, %handshake_fork4.out1, %handshake_fork4.out2 = hw.instance "handshake_fork4" @handshake_fork_in_ui32_out_ui32_ui32_ui32(in0: %22: !esi.channel<i32>, clock: %clock: !seq.clock, reset: %reset: i1) -> (out0: !esi.channel<i32>, out1: !esi.channel<i32>, out2: !esi.channel<i32>)
    %23 = builtin.unrealized_conversion_cast %handshake_fork4.out2 : !esi.channel<i32> to i32
    %24 = builtin.unrealized_conversion_cast %handshake_fork4.out1 : !esi.channel<i32> to i32
    %25 = comb.mul %20, %23 : i32
    %26 = builtin.unrealized_conversion_cast %25 : i32 to !esi.channel<i32>
    %handshake_fork5.out0, %handshake_fork5.out1 = hw.instance "handshake_fork5" @handshake_fork_in_ui32_out_ui32_ui32(in0: %26: !esi.channel<i32>, clock: %clock: !seq.clock, reset: %reset: i1) -> (out0: !esi.channel<i32>, out1: !esi.channel<i32>)
    %27 = builtin.unrealized_conversion_cast %handshake_fork5.out1 : !esi.channel<i32> to i32
    %28 = builtin.unrealized_conversion_cast %handshake_fork5.out0 : !esi.channel<i32> to i32
    %29 = comb.divs %24, %27 : i32
    %30 = builtin.unrealized_conversion_cast %29 : i32 to !esi.channel<i32>
    %handshake_fork6.out0, %handshake_fork6.out1 = hw.instance "handshake_fork6" @handshake_fork_in_ui32_out_ui32_ui32(in0: %30: !esi.channel<i32>, clock: %clock: !seq.clock, reset: %reset: i1) -> (out0: !esi.channel<i32>, out1: !esi.channel<i32>)
    %31 = builtin.unrealized_conversion_cast %handshake_fork6.out1 : !esi.channel<i32> to i32
    %32 = builtin.unrealized_conversion_cast %handshake_fork6.out0 : !esi.channel<i32> to i32
    %33 = comb.and %28, %31 : i32
    %34 = comb.or %5, %32 : i32
    %35 = comb.xor %33, %34 : i32
    %36 = builtin.unrealized_conversion_cast %35 : i32 to !esi.channel<i32>
    %handshake_fork7.out0, %handshake_fork7.out1, %handshake_fork7.out2 = hw.instance "handshake_fork7" @handshake_fork_in_ui32_out_ui32_ui32_ui32(in0: %36: !esi.channel<i32>, clock: %clock: !seq.clock, reset: %reset: i1) -> (out0: !esi.channel<i32>, out1: !esi.channel<i32>, out2: !esi.channel<i32>)
    %37 = builtin.unrealized_conversion_cast %handshake_fork7.out2 : !esi.channel<i32> to i32
    %handshake_join0.out0 = hw.instance "handshake_join0" @handshake_join_in_ui32_1ins_1outs_ctrl(in0: %handshake_fork7.out1: !esi.channel<i32>) -> (out0: !esi.channel<i0>)
    hw.output %handshake_fork7.out0, %handshake_fork4.out0, %handshake_join0.out0 : !esi.channel<i32>, !esi.channel<i32>, !esi.channel<i0>
  }
}

