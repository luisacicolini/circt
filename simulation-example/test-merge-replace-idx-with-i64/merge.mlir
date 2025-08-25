handshake.func @test_control_merge(%arg0 : none, %arg1 : none) -> (none, index) {
  %out, %idx = control_merge %arg0, %arg1 : none, index
  return %out, %idx : none, index
}