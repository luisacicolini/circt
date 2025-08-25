module {
  hw.module @test_control_merge(in %0 "" : i64, in %_valid : i1, in %out0_ready : i1, out _ready : i1, out out0 : i0, out out0_valid : i1) {
    %chanOutput, %ready = esi.wrap.vr %0, %_valid : i64
    %rawOutput, %valid = esi.unwrap.vr %chanOutput, %ready_1 : i64
    %c0_i0 = hw.constant 0 : i0
    %chanOutput_0, %ready_1 = esi.wrap.vr %c0_i0, %valid : i0
    %rawOutput_2, %valid_3 = esi.unwrap.vr %chanOutput_0, %out0_ready : i0
    hw.output %ready, %rawOutput_2, %valid_3 : i1, i0, i1
  }
}

