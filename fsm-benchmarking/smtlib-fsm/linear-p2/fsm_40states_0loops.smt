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
(declare-fun _11 (Int Int) Bool)
(declare-fun _12 (Int Int) Bool)
(declare-fun _13 (Int Int) Bool)
(declare-fun _14 (Int Int) Bool)
(declare-fun _15 (Int Int) Bool)
(declare-fun _16 (Int Int) Bool)
(declare-fun _17 (Int Int) Bool)
(declare-fun _18 (Int Int) Bool)
(declare-fun _19 (Int Int) Bool)
(declare-fun _20 (Int Int) Bool)
(declare-fun _21 (Int Int) Bool)
(declare-fun _22 (Int Int) Bool)
(declare-fun _23 (Int Int) Bool)
(declare-fun _24 (Int Int) Bool)
(declare-fun _25 (Int Int) Bool)
(declare-fun _26 (Int Int) Bool)
(declare-fun _27 (Int Int) Bool)
(declare-fun _28 (Int Int) Bool)
(declare-fun _29 (Int Int) Bool)
(declare-fun _30 (Int Int) Bool)
(declare-fun _31 (Int Int) Bool)
(declare-fun _32 (Int Int) Bool)
(declare-fun _33 (Int Int) Bool)
(declare-fun _34 (Int Int) Bool)
(declare-fun _35 (Int Int) Bool)
(declare-fun _36 (Int Int) Bool)
(declare-fun _37 (Int Int) Bool)
(declare-fun _38 (Int Int) Bool)
(declare-fun _39 (Int Int) Bool)
(declare-fun _40 (Int Int) Bool)
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
(assert (forall ((var0 Int) (time Int))
  (! (=> (_10 var0 time) (_11 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_11 var0 time) (_12 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_12 var0 time) (_13 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_13 var0 time) (_14 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_14 var0 time) (_15 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_15 var0 time) (_16 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_16 var0 time) (_17 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_17 var0 time) (_18 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_18 var0 time) (_19 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_19 var0 time) (_20 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_20 var0 time) (_21 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_21 var0 time) (_22 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_22 var0 time) (_23 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_23 var0 time) (_24 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_24 var0 time) (_25 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_25 var0 time) (_26 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_26 var0 time) (_27 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_27 var0 time) (_28 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_28 var0 time) (_29 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_29 var0 time) (_30 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_30 var0 time) (_31 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_31 var0 time) (_32 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_32 var0 time) (_33 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_33 var0 time) (_34 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_34 var0 time) (_35 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_35 var0 time) (_36 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_36 var0 time) (_37 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_37 var0 time) (_38 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_38 var0 time) (_39 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_39 var0 time) (_40 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (and (_39 var0 time) (distinct var0 39)) false) :weight 0)))
(check-sat)
