smt.solver () : () -> () {

  %true = smt.constant true
  %three = smt.int.constant 3
  %four = smt.int.constant 4

  %8 = smt.exists {
    ^bb0(%arg2: !smt.int, %arg3: !smt.int):
    %4 = smt.eq %arg2, %three: !smt.int
    %5 = smt.eq %arg3, %four: !smt.int
    %9 = smt.eq %4, %5: !smt.bool
    smt.yield %9 : !smt.bool
  } patterns {
    ^bb0(%arg2: !smt.int, %arg3: !smt.int):
    %4 = smt.eq %arg2, %three: !smt.int
    %5 = smt.eq %arg3, %four: !smt.int
    smt.yield %4, %5: !smt.bool, !smt.bool
  }
  smt.assert %8

  smt.check sat {} unknown {} unsat {}
}