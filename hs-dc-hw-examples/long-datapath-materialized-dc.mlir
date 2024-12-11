module {
  hw.module @ops(in %arg0 : !dc.value<i32>, in %arg1 : !dc.value<i32>, in %arg2 : !dc.value<i32>, in %arg3 : !dc.value<i32>, in %clk : !dc.value<i32>, in %rst : !dc.value<i32>, in %clk_0 : !seq.clock {dc.clock}, in %rst_0 : i1 {dc.reset}, out out0 : !dc.value<i32>, out out1 : !dc.token) {
    %token, %output = dc.unpack %rst : !dc.value<i32>
    dc.sink %token
    %token_0, %output_1 = dc.unpack %clk : !dc.value<i32>
    dc.sink %token_0
    %token_2, %output_3 = dc.unpack %arg3 : !dc.value<i32>
    dc.sink %token_2
    %token_4, %output_5 = dc.unpack %arg2 : !dc.value<i32>
    dc.sink %token_4
    %token_6, %output_7 = dc.unpack %arg0 : !dc.value<i32>
    %token_8, %output_9 = dc.unpack %arg1 : !dc.value<i32>
    %0 = dc.merge %token_6, %token_8
    %token_10, %output_11 = dc.unpack %0 : !dc.value<i1>
    %1 = arith.select %output_11, %output_7, %output_9 : i32
    %2 = dc.pack %token_10, %1 : i32
    %token_12, %output_13 = dc.unpack %2 : !dc.value<i32>
    %3:2 = dc.fork [2] %token_12 
    %4 = dc.pack %3#0, %output_13 : i32
    %5 = dc.pack %3#1, %output_13 : i32
    %token_14, %output_15 = dc.unpack %5 : !dc.value<i32>
    %6 = dc.join %token_14
    hw.output %4, %6 : !dc.value<i32>, !dc.token
  }
}