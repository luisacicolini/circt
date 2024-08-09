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
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_0 var0 time)
              true
              (= var0_p (+ var0 1))
              true
              (= (+ time 1) time_p))
         (_1 var0_p time_p))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_1 var0 time)
              true
              (= var0_p (+ var0 1))
              true
              (= (+ time 1) time_p))
         (_2 var0_p time_p))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_2 var0 time)
              true
              (= var0_p (+ var0 1))
              true
              (= (+ time 1) time_p))
         (_3 var0_p time_p))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_3 var0 time)
              true
              (= var0_p (+ var0 1))
              true
              (= (+ time 1) time_p))
         (_4 var0_p time_p))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_4 var0 time)
              true
              (= var0_p (+ var0 1))
              true
              (= (+ time 1) time_p))
         (_5 var0_p time_p))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_5 var0 time)
              (distinct var0 5)
              true
              (= var0_p (+ var0 1))
              true
              (= (+ time 1) time_p))
         (_6 var0_p time_p))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_5 var0 time)
              (= var0 5)
              true
              (= var0_p (+ var0 1))
              true
              (= (+ time 1) time_p))
         (_7 var0_p time_p))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_6 var0 time)
              true
              (= var0_p (+ var0 1))
              true
              (= (+ time 1) time_p))
         (_8 var0_p time_p))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_7 var0 time)
              true
              (= var0_p (+ var0 1))
              true
              (= (+ time 1) time_p))
         (_8 var0_p time_p))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_8 var0 time)
              true
              (= var0_p (+ var0 1))
              true
              (= (+ time 1) time_p))
         (_9 var0_p time_p))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_9 var0 time)
              true
              (= var0_p (+ var0 1))
              true
              (= (+ time 1) time_p))
         (_10 var0_p time_p))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_5 var0 time)
              true
              true
              (not (distinct var0 5))
              (not (= var0 5))
              (= (+ time 1) time_p))
         (_5 var0_p time_p))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (_0 var0 time)
         (and true
              (not (_1 var0_p time))
              (not (_2 var0_p time))
              (not (_3 var0_p time))
              (not (_4 var0_p time))
              (not (_5 var0_p time))
              (not (_6 var0_p time))
              (not (_7 var0_p time))
              (not (_8 var0_p time))
              (not (_9 var0_p time))
              (not (_10 var0_p time))))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_0 var0 time) true (distinct var0 var0_p))
         (not (_0 var0_p time)))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (_1 var0 time)
         (and true
              (not (_0 var0_p time))
              (not (_2 var0_p time))
              (not (_3 var0_p time))
              (not (_4 var0_p time))
              (not (_5 var0_p time))
              (not (_6 var0_p time))
              (not (_7 var0_p time))
              (not (_8 var0_p time))
              (not (_9 var0_p time))
              (not (_10 var0_p time))))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_1 var0 time) true (distinct var0 var0_p))
         (not (_1 var0_p time)))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (_2 var0 time)
         (and true
              (not (_0 var0_p time))
              (not (_1 var0_p time))
              (not (_3 var0_p time))
              (not (_4 var0_p time))
              (not (_5 var0_p time))
              (not (_6 var0_p time))
              (not (_7 var0_p time))
              (not (_8 var0_p time))
              (not (_9 var0_p time))
              (not (_10 var0_p time))))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_2 var0 time) true (distinct var0 var0_p))
         (not (_2 var0_p time)))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (_3 var0 time)
         (and true
              (not (_0 var0_p time))
              (not (_1 var0_p time))
              (not (_2 var0_p time))
              (not (_4 var0_p time))
              (not (_5 var0_p time))
              (not (_6 var0_p time))
              (not (_7 var0_p time))
              (not (_8 var0_p time))
              (not (_9 var0_p time))
              (not (_10 var0_p time))))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_3 var0 time) true (distinct var0 var0_p))
         (not (_3 var0_p time)))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (_4 var0 time)
         (and true
              (not (_0 var0_p time))
              (not (_1 var0_p time))
              (not (_2 var0_p time))
              (not (_3 var0_p time))
              (not (_5 var0_p time))
              (not (_6 var0_p time))
              (not (_7 var0_p time))
              (not (_8 var0_p time))
              (not (_9 var0_p time))
              (not (_10 var0_p time))))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_4 var0 time) true (distinct var0 var0_p))
         (not (_4 var0_p time)))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (_5 var0 time)
         (and true
              (not (_0 var0_p time))
              (not (_1 var0_p time))
              (not (_2 var0_p time))
              (not (_3 var0_p time))
              (not (_4 var0_p time))
              (not (_6 var0_p time))
              (not (_7 var0_p time))
              (not (_8 var0_p time))
              (not (_9 var0_p time))
              (not (_10 var0_p time))))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_5 var0 time) true (distinct var0 var0_p))
         (not (_5 var0_p time)))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (_6 var0 time)
         (and true
              (not (_0 var0_p time))
              (not (_1 var0_p time))
              (not (_2 var0_p time))
              (not (_3 var0_p time))
              (not (_4 var0_p time))
              (not (_5 var0_p time))
              (not (_7 var0_p time))
              (not (_8 var0_p time))
              (not (_9 var0_p time))
              (not (_10 var0_p time))))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_6 var0 time) true (distinct var0 var0_p))
         (not (_6 var0_p time)))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (_7 var0 time)
         (and true
              (not (_0 var0_p time))
              (not (_1 var0_p time))
              (not (_2 var0_p time))
              (not (_3 var0_p time))
              (not (_4 var0_p time))
              (not (_5 var0_p time))
              (not (_6 var0_p time))
              (not (_8 var0_p time))
              (not (_9 var0_p time))
              (not (_10 var0_p time))))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_7 var0 time) true (distinct var0 var0_p))
         (not (_7 var0_p time)))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (_8 var0 time)
         (and true
              (not (_0 var0_p time))
              (not (_1 var0_p time))
              (not (_2 var0_p time))
              (not (_3 var0_p time))
              (not (_4 var0_p time))
              (not (_5 var0_p time))
              (not (_6 var0_p time))
              (not (_7 var0_p time))
              (not (_9 var0_p time))
              (not (_10 var0_p time))))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_8 var0 time) true (distinct var0 var0_p))
         (not (_8 var0_p time)))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (_9 var0 time)
         (and true
              (not (_0 var0_p time))
              (not (_1 var0_p time))
              (not (_2 var0_p time))
              (not (_3 var0_p time))
              (not (_4 var0_p time))
              (not (_5 var0_p time))
              (not (_6 var0_p time))
              (not (_7 var0_p time))
              (not (_8 var0_p time))
              (not (_10 var0_p time))))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_9 var0 time) true (distinct var0 var0_p))
         (not (_9 var0_p time)))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (_10 var0 time)
         (and true
              (not (_0 var0_p time))
              (not (_1 var0_p time))
              (not (_2 var0_p time))
              (not (_3 var0_p time))
              (not (_4 var0_p time))
              (not (_5 var0_p time))
              (not (_6 var0_p time))
              (not (_7 var0_p time))
              (not (_8 var0_p time))
              (not (_9 var0_p time))))
     :weight 0)))
(assert (forall ((var0 Int) (time Int) (var0_p Int) (time_p Int))
  (! (=> (and (_10 var0 time) true (distinct var0 var0_p))
         (not (_10 var0_p time)))
     :weight 0)))
(assert (forall ((var0 Int) (time Int)) (! (=> (_6 var0 time) false) :weight 0)))
(check-sat)
