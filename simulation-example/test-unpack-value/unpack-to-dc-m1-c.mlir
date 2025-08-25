module {
  hw.module @test_control_merge(in %0 "" : !dc.value<i64>, out out0 : i64) {
    %token, %output = dc.unpack %0 : !dc.value<i64>
    hw.output %output : i64
  }
}

