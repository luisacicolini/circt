module {
  hw.module @test_control_merge(in %0 "" : i64, in %_valid : i1, out _ready : i1, out out0 : i64) {
    %true = hw.constant true
    hw.output %true, %0 : i1, i64
  }
}

