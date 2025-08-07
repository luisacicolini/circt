handshake.func @mux(%select : i1, %a : i64, %b : i64) -> i64{
  %0 = handshake.mux %select [%a, %b] : i1, i64
  return %0 : i64
}