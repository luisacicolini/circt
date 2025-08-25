module {
  hw.module @add(in %a : !dc.value<i32>, out out0 : i32) {
    %false = hw.constant false
    %token, %output = dc.unpack %a : !dc.value<i32>
    dc.sink %token
    %0 = comb.extract %output from 0 : (i32) -> i31
    %1 = comb.concat %0, %false : i31, i1
    hw.output %1 : i32
  }
}

