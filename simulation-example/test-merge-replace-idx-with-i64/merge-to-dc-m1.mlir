module {
  hw.module @test_control_merge(in %arg0 : !dc.token, in %arg1 : !dc.token, in %clk : !seq.clock {dc.clock}, in %rst : i1 {dc.reset}, out out0 : !dc.token, out out1 : !dc.value<i1>) {
    %0 = dc.merge %arg0, %arg1
    %token, %output = dc.unpack %0 : !dc.value<i1>
    %1:2 = dc.fork [2] %token 
    %2 = dc.pack %1#0, %output : i1
    %3 = dc.pack %1#1, %output : i1
    %token_0, %output_1 = dc.unpack %3 : !dc.value<i1>
    %token_2, %output_3 = dc.unpack %2 : !dc.value<i1>
    %4 = dc.pack %token_2, %output_3 : i1
    hw.output %token_0, %4 : !dc.token, !dc.value<i1>
  }
}

