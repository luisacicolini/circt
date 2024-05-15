smt.solver () : () -> () {

  %true = smt.constant true
  %6 = smt.exists no_pattern {
    ^bb0(%arg2: !smt.int, %arg3: !smt.int):
    %4 = smt.eq %arg2, %arg3 : !smt.int
    %5 = smt.implies %4, %true
    smt.yield %5 : !smt.bool
  } 
  smt.assert %6
}