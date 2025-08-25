module {
  hw.module @test_control_merge(in %arg0 : !dc.token, in %arg1 : !dc.token, in %clk : !seq.clock {dc.clock}, in %rst : i1 {dc.reset}, out out0 : !dc.token, out out1 : !dc.value<i1>) {
    %0 = dc.merge %arg0, %arg1
    %token, %output = dc.unpack %0 : !dc.value<i1>
    %token_0, %output_1 = dc.unpack %0 : !dc.value<i1>
    %2 = dc.pack %token_0, %output_1 : i1
    hw.output %token, %2 : !dc.token, !dc.value<i1>
  }
}

