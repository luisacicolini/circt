module {
  handshake.func @ops(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32, ...) -> (i32, i32, none) attributes {argNames = ["arg0", "arg1", "arg2", "arg3", "arg4", "clk", "rst"], resNames = ["out0", "out1", "out2"]} {
    %0 = merge %arg0, %arg1 : i32
    %1 = merge %arg2, %arg3 : i32
    %2 = merge %1, %arg4 : i32
    %3 = comb.sub %0, %2 : i32
    %4 = comb.sub %2, %3 : i32
    %5 = comb.mul %14, %4 : i32
    %6 = comb.divs %5, %4 : i32
    %7 = comb.divu %2, %6 : i32
    %8 = comb.divs %7, %6 : i32
    %9 = comb.divu %2, %8 : i32
    %10 = comb.mul %8, %9 : i32
    %11 = comb.divs %9, %10 : i32
    %12 = comb.and %10, %11 : i32
    %13 = comb.or %2, %11 : i32
    %14 = comb.xor %12, %13 : i32
    %15 = join %14 : i32
    return %14, %9, %15 : i32, i32, none
  }
}

