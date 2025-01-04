module {
  handshake.func @ops(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32, ...) -> (i32, i32, none) attributes {argNames = ["arg0", "arg1", "arg2", "arg3", "arg4", "clk", "rst"], resNames = ["out0", "out1", "out2"]} {
    sink %arg6 : i32
    sink %arg5 : i32
    %0 = merge %arg0, %arg1 : i32
    %1 = merge %arg2, %arg3 : i32
    %2 = merge %1, %arg4 : i32
    %3:5 = fork [5] %2 : i32
    %4 = comb.sub %0, %3#4 : i32
    %5 = comb.sub %3#3, %4 : i32
    %6:2 = fork [2] %5 : i32
    %7 = comb.mul %22#2, %6#1 : i32
    %8 = comb.divs %7, %6#0 : i32
    %9:2 = fork [2] %8 : i32
    %10 = comb.divu %3#2, %9#1 : i32
    %11 = comb.divs %10, %9#0 : i32
    %12:2 = fork [2] %11 : i32
    %13 = comb.divu %3#1, %12#1 : i32
    %14:3 = fork [3] %13 : i32
    %15 = comb.mul %12#0, %14#2 : i32
    %16:2 = fork [2] %15 : i32
    %17 = comb.divs %14#1, %16#1 : i32
    %18:2 = fork [2] %17 : i32
    %19 = comb.and %16#0, %18#1 : i32
    %20 = comb.or %3#0, %18#0 : i32
    %21 = comb.xor %19, %20 : i32
    %22:3 = fork [3] %21 : i32
    %23 = join %22#1 : i32
    return %22#0, %14#0, %23 : i32, i32, none
  }
}

