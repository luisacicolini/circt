module {
  hw.module @test_control_merge(in %arg0 : !dc.token, in %arg1 : !dc.token, in %clk : !seq.clock {dc.clock}, in %rst : i1 {dc.reset}, out out0 : !dc.token, out out1 : !dc.value<i1>) {
    %0 = dc.merge %arg0, %arg1
    %token, %output = dc.unpack %0 : !dc.value<i1>
    %1:2 = dc.fork [2] %token 
    %2 = dc.pack %1#0, %output : i1
    hw.output %1#1, %2 : !dc.token, !dc.value<i1>
  }
}

