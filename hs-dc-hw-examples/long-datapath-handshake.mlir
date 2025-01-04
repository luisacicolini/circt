handshake.func @ops(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %clk: i32, %rst: i32) -> (i32, i32, none) {
    %arg5 = merge %arg0, %arg1 : i32
    %arg6 = merge %arg2, %arg3 : i32
    %arg7 = merge %arg6, %arg4 : i32
    %arg10 = comb.sub %arg5, %arg7 : i32
    %arg11 = comb.sub %arg7, %arg10 : i32
    %arg12 = comb.mul %arg22, %arg11 : i32
    %arg13 = comb.divs %arg12, %arg11 : i32
    %arg14 = comb.divu %arg7, %arg13 : i32
    %arg15 = comb.divs %arg14, %arg13 : i32
    %arg16 = comb.divu %arg7, %arg15 : i32
    %arg18 = comb.mul %arg15, %arg16 : i32
    %arg19 = comb.divs %arg16, %arg18 : i32
    %arg20 = comb.and %arg18, %arg19 : i32
    %arg21 = comb.or %arg7, %arg19 : i32
    %arg22 = comb.xor %arg20, %arg21 : i32
    %arg23 = join %arg22 : i32
    return %arg22, %arg16, %arg23 : i32, i32, none
}