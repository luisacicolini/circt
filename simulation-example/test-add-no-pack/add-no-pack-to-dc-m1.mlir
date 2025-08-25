module {
  hw.module @add(in %a : !dc.value<i32>, out out0 : i32) {
    %token, %output = dc.unpack %a : !dc.value<i32>
    dc.sink %token
    %0 = comb.add %output, %output : i32
    hw.output %0 : i32
  }
}

