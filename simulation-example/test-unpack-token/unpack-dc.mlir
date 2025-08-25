module {
  hw.module @test_control_merge(in %0 : !dc.value<i64>, out out0 : !dc.token) {
    %token, %output = dc.unpack %0 : !dc.value<i64>
    hw.output %token : !dc.token
  }
}

