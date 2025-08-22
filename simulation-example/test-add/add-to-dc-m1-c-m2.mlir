module {
  hw.module @add(in %a : !dc.value<i32>, in %b : !dc.value<i32>, in %clk : !seq.clock {dc.clock}, in %rst : i1 {dc.reset}, out out0 : !dc.value<i32>) {
    %false = hw.constant false
    %token, %output = dc.unpack %a : !dc.value<i32>
    %0:3 = dc.fork [3] %token 
    %1 = comb.extract %output from 0 : (i32) -> i31
    %2 = comb.concat %1, %false : i31, i1
    %token_0, %output_1 = dc.unpack %b : !dc.value<i32>
    %3 = dc.join %0#0, %token_0, %0#2, %0#1
    %4 = comb.add %2, %output : i32
    %5 = dc.pack %3, %4 : i32
    hw.output %5 : !dc.value<i32>
  }
}

