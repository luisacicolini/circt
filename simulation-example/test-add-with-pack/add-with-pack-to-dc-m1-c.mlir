module {
  hw.module @add(in %a : !dc.value<i32>, in %b : !dc.value<i32>, in %clk : !seq.clock {dc.clock}, in %rst : i1 {dc.reset}, out out0 : !dc.value<i32>) {
    %false = hw.constant false
    %token, %output = dc.unpack %a : !dc.value<i32>
    %0 = comb.extract %output from 0 : (i32) -> i31
    %1 = comb.concat %0, %false : i31, i1
    %2 = dc.pack %token, %1 : i32
    hw.output %2 : !dc.value<i32>
  }
}

