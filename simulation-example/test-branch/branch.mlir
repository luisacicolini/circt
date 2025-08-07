handshake.func @test_conditional_branch(%arg0: i1, %arg1: index, %arg2: none, ...) -> (index, index, none) {
  %0:2 = cond_br %arg0, %arg1 : index
  return %0#0, %0#1, %arg2 : index, index, none
}