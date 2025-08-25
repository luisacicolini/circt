module {
  hw.module @add(in %a : !dc.value<i32>, in %b : !dc.value<i32>, in %clk : !seq.clock {dc.clock}, in %rst : i1 {dc.reset}, out out0 : !dc.value<i32>) {
    %token, %output = dc.unpack %b : !dc.value<i32>
    dc.sink %token
    %token_0, %output_1 = dc.unpack %a : !dc.value<i32>
    %0 = comb.add %output_1, %output_1 : i32
    %1 = dc.pack %token_0, %0 : i32
    hw.output %1 : !dc.value<i32>
  }
}

