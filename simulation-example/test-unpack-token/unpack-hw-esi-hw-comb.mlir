module {
  hw.module @test_control_merge(in %0 "" : i64, in %_valid : i1, in %out0_ready : i1, out _ready : i1, out out0 : i0, out out0_valid : i1) {
    %c0_i0 = hw.constant 0 : i0
    hw.output %out0_ready, %c0_i0, %_valid : i1, i0, i1
  }
}

