module {
  hw.module @test_conditional_branch(in %arg0 : !dc.value<i1>, in %arg1 : !dc.value<index>, in %arg2 : !dc.token, in %clk : !seq.clock {dc.clock}, in %rst : i1 {dc.reset}, out out0 : !dc.value<index>, out out1 : !dc.value<index>, out out2 : !dc.token) {
    %token, %output = dc.unpack %arg0 : !dc.value<i1>
    %token_0, %output_1 = dc.unpack %arg1 : !dc.value<index>
    %0 = dc.join %token, %token_0
    %1 = dc.pack %0, %output : i1
    %trueToken, %falseToken = dc.branch %1
    %2 = dc.pack %trueToken, %output_1 : index
    %3 = dc.pack %falseToken, %output_1 : index
    hw.output %2, %3, %arg2 : !dc.value<index>, !dc.value<index>, !dc.token
  }
}

