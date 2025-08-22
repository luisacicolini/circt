module {
  hw.module @add(in %a : !dc.value<i32>, in %b : !dc.value<i32>, in %clk : !seq.clock {dc.clock}, in %rst : i1 {dc.reset}, out out0 : !dc.value<i32>) {
    %token, %output = dc.unpack %a : !dc.value<i32>
    %0:3 = dc.fork [3] %token 
    %1 = dc.pack %0#0, %output : i32
    %2 = dc.pack %0#1, %output : i32
    %3 = dc.pack %0#2, %output : i32
    %token_0, %output_1 = dc.unpack %3 : !dc.value<i32>
    %token_2, %output_3 = dc.unpack %2 : !dc.value<i32>
    %4 = dc.join %token_0, %token_2
    %5 = comb.add %output_1, %output_3 : i32
    %6 = dc.pack %4, %5 : i32
    %token_4, %output_5 = dc.unpack %6 : !dc.value<i32>
    %token_6, %output_7 = dc.unpack %b : !dc.value<i32>
    %7 = dc.join %token_4, %token_6
    %8:2 = dc.fork [2] %7 
    %9 = dc.pack %8#1, %output_5 : i32
    %10 = dc.pack %8#0, %output_7 : i32
    %token_8, %output_9 = dc.unpack %10 : !dc.value<i32>
    dc.sink %token_8
    %token_10, %output_11 = dc.unpack %9 : !dc.value<i32>
    %token_12, %output_13 = dc.unpack %1 : !dc.value<i32>
    %11 = dc.join %token_10, %token_12
    %12 = comb.add %output_11, %output_13 : i32
    %13 = dc.pack %11, %12 : i32
    hw.output %13 : !dc.value<i32>
  }
}

