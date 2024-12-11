module {
  hw.module @ops(in %arg0 : !dc.value<i32>, in %arg1 : !dc.value<i32>, in %arg2 : !dc.value<i32>, in %arg3 : !dc.value<i32>, in %arg4 : !dc.value<i32>, in %clk : !dc.value<i32>, in %rst : !dc.value<i32>, in %clk_0 : !seq.clock {dc.clock}, in %rst_0 : i1 {dc.reset}, out out0 : !dc.value<i32>, out out1 : !dc.value<i32>, out out2 : !dc.token) {
    %token, %output = dc.unpack %rst : !dc.value<i32>
    dc.sink %token
    %token_0, %output_1 = dc.unpack %clk : !dc.value<i32>
    dc.sink %token_0
    %token_2, %output_3 = dc.unpack %arg0 : !dc.value<i32>
    %token_4, %output_5 = dc.unpack %arg1 : !dc.value<i32>
    %0 = dc.merge %token_2, %token_4
    %token_6, %output_7 = dc.unpack %0 : !dc.value<i1>
    %1 = arith.select %output_7, %output_3, %output_5 : i32
    %token_8, %output_9 = dc.unpack %arg2 : !dc.value<i32>
    %token_10, %output_11 = dc.unpack %arg3 : !dc.value<i32>
    %2 = dc.merge %token_8, %token_10
    %token_12, %output_13 = dc.unpack %2 : !dc.value<i1>
    %3 = arith.select %output_13, %output_9, %output_11 : i32
    %token_14, %output_15 = dc.unpack %arg4 : !dc.value<i32>
    %4 = dc.merge %token_12, %token_14
    %token_16, %output_17 = dc.unpack %4 : !dc.value<i1>
    %5 = arith.select %output_17, %3, %output_15 : i32
    %6:5 = dc.fork [5] %token_16 
    %7 = arith.subi %1, %5 : i32
    %8 = dc.join %6#3, %token_6, %6#4
    %9 = arith.subi %5, %7 : i32
    %10:2 = dc.fork [2] %8 
    %11 = arith.muli %32, %9 : i32
    %12 = dc.join %10#0, %33#2, %10#1
    %13 = arith.divsi %11, %9 : i32
    %14:2 = dc.fork [2] %12 
    %15 = arith.divui %5, %13 : i32
    %16 = dc.join %14#0, %6#2, %14#1
    %17 = arith.remsi %15, %13 : i32
    %18:2 = dc.fork [2] %16 
    %19 = dc.join %6#1, %18#1
    %20 = arith.remui %5, %17 : i32
    %21:3 = dc.fork [3] %19 
    %22 = dc.pack %21#0, %20 : i32
    %23 = dc.join %18#0, %21#2
    %24 = arith.muli %17, %20 : i32
    %25:2 = dc.fork [2] %23 
    %26 = dc.join %21#1, %25#1
    %27 = arith.remui %20, %24 : i32
    %28:2 = dc.fork [2] %26 
    %29 = arith.andi %24, %27 : i32
    %30 = arith.ori %5, %27 : i32
    %31 = dc.join %25#0, %28#1, %6#0, %28#0
    %32 = arith.xori %29, %30 : i32
    %33:3 = dc.fork [3] %31 
    %34 = dc.pack %33#0, %32 : i32
    hw.output %34, %22, %33#1 : !dc.value<i32>, !dc.value<i32>, !dc.token
  }
}

