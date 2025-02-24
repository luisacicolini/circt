module {
  smt.solver() : () -> () {
    %F__0 = smt.declare_fun "F__0" : !smt.func<(!smt.int) !smt.bool>
    %F__1 = smt.declare_fun "F__1" : !smt.func<(!smt.int) !smt.bool>
    %F__2 = smt.declare_fun "F__2" : !smt.func<(!smt.int) !smt.bool>
    %F__3 = smt.declare_fun "F__3" : !smt.func<(!smt.int) !smt.bool>
    %F__4 = smt.declare_fun "F__4" : !smt.func<(!smt.int) !smt.bool>
    %F__5 = smt.declare_fun "F__5" : !smt.func<(!smt.int) !smt.bool>
    %F__6 = smt.declare_fun "F__6" : !smt.func<(!smt.int) !smt.bool>
    %F__7 = smt.declare_fun "F__7" : !smt.func<(!smt.int) !smt.bool>
    %F__8 = smt.declare_fun "F__8" : !smt.func<(!smt.int) !smt.bool>
    %F__9 = smt.declare_fun "F__9" : !smt.func<(!smt.int) !smt.bool>
    %F__10 = smt.declare_fun "F__10" : !smt.func<(!smt.int) !smt.bool>
    %0 = smt.forall {
    ^bb0(%arg0: !smt.int):
      %c0 = smt.int.constant 0
      %11 = smt.apply_func %F__0(%c0) : !smt.func<(!smt.int) !smt.bool>
      smt.yield %11 : !smt.bool
    }
    smt.assert %0
    %1 = smt.forall {
    ^bb0(%arg0: !smt.int):
      %11 = smt.apply_func %F__0(%arg0) : !smt.func<(!smt.int) !smt.bool>
      %c1 = smt.int.constant 1
      %12 = smt.int.add %arg0, %c1
      %c65536 = smt.int.constant 65536
      %13 = smt.int.mod %12, %c65536
      %14 = smt.apply_func %F__1(%13) : !smt.func<(!smt.int) !smt.bool>
      %true = smt.constant true
      %15 = smt.and %11, %true
      %16 = smt.implies %15, %14
      smt.yield %16 : !smt.bool
    }
    smt.assert %1
    %2 = smt.forall {
    ^bb0(%arg0: !smt.int):
      %11 = smt.apply_func %F__1(%arg0) : !smt.func<(!smt.int) !smt.bool>
      %c1 = smt.int.constant 1
      %12 = smt.int.add %arg0, %c1
      %c65536 = smt.int.constant 65536
      %13 = smt.int.mod %12, %c65536
      %14 = smt.apply_func %F__2(%13) : !smt.func<(!smt.int) !smt.bool>
      %true = smt.constant true
      %15 = smt.and %11, %true
      %16 = smt.implies %15, %14
      smt.yield %16 : !smt.bool
    }
    smt.assert %2
    %3 = smt.forall {
    ^bb0(%arg0: !smt.int):
      %11 = smt.apply_func %F__2(%arg0) : !smt.func<(!smt.int) !smt.bool>
      %c1 = smt.int.constant 1
      %12 = smt.int.add %arg0, %c1
      %c65536 = smt.int.constant 65536
      %13 = smt.int.mod %12, %c65536
      %14 = smt.apply_func %F__3(%13) : !smt.func<(!smt.int) !smt.bool>
      %true = smt.constant true
      %15 = smt.and %11, %true
      %16 = smt.implies %15, %14
      smt.yield %16 : !smt.bool
    }
    smt.assert %3
    %4 = smt.forall {
    ^bb0(%arg0: !smt.int):
      %11 = smt.apply_func %F__3(%arg0) : !smt.func<(!smt.int) !smt.bool>
      %c1 = smt.int.constant 1
      %12 = smt.int.add %arg0, %c1
      %c65536 = smt.int.constant 65536
      %13 = smt.int.mod %12, %c65536
      %14 = smt.apply_func %F__4(%13) : !smt.func<(!smt.int) !smt.bool>
      %true = smt.constant true
      %15 = smt.and %11, %true
      %16 = smt.implies %15, %14
      smt.yield %16 : !smt.bool
    }
    smt.assert %4
    %5 = smt.forall {
    ^bb0(%arg0: !smt.int):
      %11 = smt.apply_func %F__4(%arg0) : !smt.func<(!smt.int) !smt.bool>
      %c1 = smt.int.constant 1
      %12 = smt.int.add %arg0, %c1
      %c65536 = smt.int.constant 65536
      %13 = smt.int.mod %12, %c65536
      %14 = smt.apply_func %F__5(%13) : !smt.func<(!smt.int) !smt.bool>
      %true = smt.constant true
      %15 = smt.and %11, %true
      %16 = smt.implies %15, %14
      smt.yield %16 : !smt.bool
    }
    smt.assert %5
    %6 = smt.forall {
    ^bb0(%arg0: !smt.int):
      %11 = smt.apply_func %F__5(%arg0) : !smt.func<(!smt.int) !smt.bool>
      %c1 = smt.int.constant 1
      %12 = smt.int.add %arg0, %c1
      %c65536 = smt.int.constant 65536
      %13 = smt.int.mod %12, %c65536
      %14 = smt.apply_func %F__6(%13) : !smt.func<(!smt.int) !smt.bool>
      %true = smt.constant true
      %15 = smt.and %11, %true
      %16 = smt.implies %15, %14
      smt.yield %16 : !smt.bool
    }
    smt.assert %6
    %7 = smt.forall {
    ^bb0(%arg0: !smt.int):
      %11 = smt.apply_func %F__6(%arg0) : !smt.func<(!smt.int) !smt.bool>
      %c1 = smt.int.constant 1
      %12 = smt.int.add %arg0, %c1
      %c65536 = smt.int.constant 65536
      %13 = smt.int.mod %12, %c65536
      %14 = smt.apply_func %F__7(%13) : !smt.func<(!smt.int) !smt.bool>
      %true = smt.constant true
      %15 = smt.and %11, %true
      %16 = smt.implies %15, %14
      smt.yield %16 : !smt.bool
    }
    smt.assert %7
    %8 = smt.forall {
    ^bb0(%arg0: !smt.int):
      %11 = smt.apply_func %F__7(%arg0) : !smt.func<(!smt.int) !smt.bool>
      %c1 = smt.int.constant 1
      %12 = smt.int.add %arg0, %c1
      %c65536 = smt.int.constant 65536
      %13 = smt.int.mod %12, %c65536
      %14 = smt.apply_func %F__8(%13) : !smt.func<(!smt.int) !smt.bool>
      %true = smt.constant true
      %15 = smt.and %11, %true
      %16 = smt.implies %15, %14
      smt.yield %16 : !smt.bool
    }
    smt.assert %8
    %9 = smt.forall {
    ^bb0(%arg0: !smt.int):
      %11 = smt.apply_func %F__8(%arg0) : !smt.func<(!smt.int) !smt.bool>
      %c1 = smt.int.constant 1
      %12 = smt.int.add %arg0, %c1
      %c65536 = smt.int.constant 65536
      %13 = smt.int.mod %12, %c65536
      %14 = smt.apply_func %F__9(%13) : !smt.func<(!smt.int) !smt.bool>
      %true = smt.constant true
      %15 = smt.and %11, %true
      %16 = smt.implies %15, %14
      smt.yield %16 : !smt.bool
    }
    smt.assert %9
    %10 = smt.forall {
    ^bb0(%arg0: !smt.int):
      %11 = smt.apply_func %F__9(%arg0) : !smt.func<(!smt.int) !smt.bool>
      %c1 = smt.int.constant 1
      %12 = smt.int.add %arg0, %c1
      %c65536 = smt.int.constant 65536
      %13 = smt.int.mod %12, %c65536
      %14 = smt.apply_func %F__10(%13) : !smt.func<(!smt.int) !smt.bool>
      %true = smt.constant true
      %15 = smt.and %11, %true
      %16 = smt.implies %15, %14
      smt.yield %16 : !smt.bool
    }
    smt.assert %10
  }
}

