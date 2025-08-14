handshake.func @add(%a : i32, %b : i32, %none: none) -> i32{
  %add1 = comb.add %a, %a : i32
  %syncadd:3 = handshake.sync %none, %add1, %b : none, i32, i32 
  %add2 = comb.add %syncadd#1, %a : i32
  return %add2: i32
}