handshake.func @add(%a : i32, %b : i32) -> i32{
  %add1 = comb.add %a, %a : i32
  %syncadd:2 = handshake.sync %add1, %b : i32, i32 
  %add2 = comb.add %syncadd#0, %a : i32
  return %add2: i32
}