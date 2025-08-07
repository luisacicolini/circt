module {
  hw.module @mux(in %select : !dc.value<i1>, in %a : !dc.value<i64>, in %b : !dc.value<i64>, in %clk : !seq.clock {dc.clock}, in %rst : i1 {dc.reset}, out out0 : !dc.value<i64>) {
    %false = arith.constant false
    %token, %output = dc.unpack %select : !dc.value<i1>
    %token_0, %output_1 = dc.unpack %a : !dc.value<i64>
    %token_2, %output_3 = dc.unpack %b : !dc.value<i64>
    %0 = arith.cmpi eq, %output, %false : i1
    %1 = arith.select %0, %output_3, %output_1 : i64
    %2 = dc.pack %token, %0 : i1
    %3 = dc.select %2, %token_2, %token_0
    %4 = dc.pack %3, %1 : i64
    hw.output %4 : !dc.value<i64>
  }
}

