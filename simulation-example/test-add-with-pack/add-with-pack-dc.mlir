module {
  hw.module @add(in %a : !dc.value<i32>, in %b : !dc.value<i32>, in %clk : !seq.clock {dc.clock}, in %rst : i1 {dc.reset}, out out0 : !dc.value<i32>) {
    %token, %output = dc.unpack %a : !dc.value<i32>
    %1 = comb.add %output, %output : i32
    %2 = dc.pack %token, %1 : i32
    hw.output %2 : !dc.value<i32>
  }
}

