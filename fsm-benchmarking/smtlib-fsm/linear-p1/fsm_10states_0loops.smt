(set-logic HORN)
(declare-fun _0 (Int Int) Bool)
(declare-fun _1 (Int Int) Bool)
(declare-fun _2 (Int Int) Bool)
(declare-fun _3 (Int Int) Bool)
(declare-fun _4 (Int Int) Bool)
(declare-fun _5 (Int Int) Bool)
(declare-fun _6 (Int Int) Bool)
(declare-fun _7 (Int Int) Bool)
(declare-fun _8 (Int Int) Bool)
(declare-fun _9 (Int Int) Bool)
(declare-fun _10 (Int Int) Bool)
(assert (forall ((var0 Int) (time Int)) (! (=> (= time 0) (_0 0 time)) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_0 var0 time) (_1 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_1 var0 time) (_2 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_2 var0 time) (_3 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_3 var0 time) (_4 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_4 var0 time) (_5 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_5 var0 time) (_6 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_6 var0 time) (_7 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_7 var0 time) (_8 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_8 var0 time) (_9 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_9 var0 time) (_10 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int)) (! (=> (_9 var0 time) false) :weight 0)))
(check-sat)
