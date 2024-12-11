handshake.func @ops(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %clk: i32, %rst: i32) -> (i32, i32, none) {
    %arg5 = merge %arg0, %arg1 : i32
    %arg6 = merge %arg2, %arg3 : i32
    %arg7 = merge %arg6, %arg4 : i32
    %arg10 = arith.subi %arg5, %arg7 : i32
    %arg11 = arith.subi %arg7, %arg10 : i32
    %arg12 = arith.muli %arg22, %arg11 : i32
    %arg13 = arith.divsi %arg12, %arg11 : i32
    %arg14 = arith.divui %arg7, %arg13 : i32
    %arg15 = arith.remsi %arg14, %arg13 : i32
    %arg16 = arith.remui %arg7, %arg15 : i32
    %arg18 = arith.muli %arg15, %arg16 : i32
    %arg19 = arith.remui %arg16, %arg18 : i32
    %arg20 = arith.andi %arg18, %arg19 : i32
    %arg21 = arith.ori %arg7, %arg19 : i32
    %arg22 = arith.xori %arg20, %arg21 : i32
    %arg23 = join %arg22 : i32
    return %arg22, %arg16, %arg23 : i32, i32, none
}