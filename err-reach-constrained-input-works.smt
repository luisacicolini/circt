(set-logic HORN)
(declare-fun _0 (Int Int Int) Bool)
(declare-fun _1 (Int Int Int) Bool)
(declare-fun ERR (Int Int Int) Bool)
(declare-fun _2 (Int Int Int) Bool)
(declare-fun _3 (Int Int Int) Bool)
(declare-fun _4 (Int Int Int) Bool)
(declare-fun _5 (Int Int Int) Bool)
(declare-fun _6 (Int Int Int) Bool)
(declare-fun _7 (Int Int Int) Bool)
(declare-fun _8 (Int Int Int) Bool)
(declare-fun _9 (Int Int Int) Bool)
(declare-fun _10 (Int Int Int) Bool)
(declare-fun input_arg0 (Int Int Int Int Int Int) Bool)
(assert (forall ((input0 Int) (var1 Int) (time Int))
  (! (=> (= time 0) (_0 input0 0 time)) :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (= time 0) (input_arg0 0 input0_p 0 var1_p time time_p)) :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (> time 0) (input_arg0 input0 input0_p var1 var1_p time time_p)) :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_0 input0 var1 time)
              (distinct input0 1)
              true
              (= var1_p (+ var1 1))
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              (= (+ time 1) time_p))
         (_1 input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_0 input0 var1 time)
              (= input0 1)
              true
              (= var1_p var1)
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              (= (+ time 1) time_p))
         (ERR input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_1 input0 var1 time)
              (distinct input0 1)
              true
              (= var1_p (+ var1 1))
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              (= (+ time 1) time_p))
         (_2 input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_1 input0 var1 time)
              (= input0 1)
              true
              (= var1_p var1)
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              (= (+ time 1) time_p))
         (ERR input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_2 input0 var1 time)
              (distinct input0 1)
              true
              (= var1_p (+ var1 1))
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              (= (+ time 1) time_p))
         (_3 input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_2 input0 var1 time)
              (= input0 1)
              true
              (= var1_p var1)
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              (= (+ time 1) time_p))
         (ERR input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_3 input0 var1 time)
              (distinct input0 1)
              true
              (= var1_p (+ var1 1))
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              (= (+ time 1) time_p))
         (_4 input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_3 input0 var1 time)
              (= input0 1)
              true
              (= var1_p var1)
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              (= (+ time 1) time_p))
         (ERR input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_4 input0 var1 time)
              (distinct input0 1)
              true
              (= var1_p (+ var1 1))
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              (= (+ time 1) time_p))
         (_5 input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_4 input0 var1 time)
              (= input0 1)
              true
              (= var1_p var1)
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              (= (+ time 1) time_p))
         (ERR input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_5 input0 var1 time)
              (distinct input0 1)
              true
              (= var1_p (+ var1 1))
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              (= (+ time 1) time_p))
         (_6 input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_5 input0 var1 time)
              (= input0 1)
              true
              (= var1_p var1)
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              (= (+ time 1) time_p))
         (ERR input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_6 input0 var1 time)
              (distinct input0 1)
              true
              (= var1_p (+ var1 1))
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              (= (+ time 1) time_p))
         (_7 input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_6 input0 var1 time)
              (= input0 1)
              true
              (= var1_p var1)
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              (= (+ time 1) time_p))
         (ERR input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_7 input0 var1 time)
              (distinct input0 1)
              true
              (= var1_p (+ var1 1))
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              (= (+ time 1) time_p))
         (_8 input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_7 input0 var1 time)
              (= input0 1)
              true
              (= var1_p var1)
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              (= (+ time 1) time_p))
         (ERR input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_8 input0 var1 time)
              (distinct input0 1)
              true
              (= var1_p (+ var1 1))
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              (= (+ time 1) time_p))
         (_9 input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_8 input0 var1 time)
              (= input0 1)
              true
              (= var1_p var1)
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              (= (+ time 1) time_p))
         (ERR input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_9 input0 var1 time)
              (distinct input0 1)
              true
              (= var1_p (+ var1 1))
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              (= (+ time 1) time_p))
         (_10 input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_9 input0 var1 time)
              (= input0 1)
              true
              (= var1_p var1)
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              (= (+ time 1) time_p))
         (ERR input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_0 input0 var1 time)
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              true
              (not (distinct input0 1))
              (not (= input0 1))
              (= (+ time 1) time_p))
         (_0 input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_1 input0 var1 time)
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              true
              (not (distinct input0 1))
              (not (= input0 1))
              (= (+ time 1) time_p))
         (_1 input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_2 input0 var1 time)
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              true
              (not (distinct input0 1))
              (not (= input0 1))
              (= (+ time 1) time_p))
         (_2 input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_3 input0 var1 time)
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              true
              (not (distinct input0 1))
              (not (= input0 1))
              (= (+ time 1) time_p))
         (_3 input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_4 input0 var1 time)
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              true
              (not (distinct input0 1))
              (not (= input0 1))
              (= (+ time 1) time_p))
         (_4 input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_5 input0 var1 time)
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              true
              (not (distinct input0 1))
              (not (= input0 1))
              (= (+ time 1) time_p))
         (_5 input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_6 input0 var1 time)
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              true
              (not (distinct input0 1))
              (not (= input0 1))
              (= (+ time 1) time_p))
         (_6 input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_7 input0 var1 time)
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              true
              (not (distinct input0 1))
              (not (= input0 1))
              (= (+ time 1) time_p))
         (_7 input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_8 input0 var1 time)
              true
              (input_arg0 input0 input0_p var1 var1_p time time_p)
              true
              (not (distinct input0 1))
              (not (= input0 1))
              (= (+ time 1) time_p))
         (_8 input0_p var1_p time_p))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (_0 input0 var1 time)
         (and true
              (not (_1 input0_p var1_p time))
              (not (ERR input0_p var1_p time))
              (not (_2 input0_p var1_p time))
              (not (_3 input0_p var1_p time))
              (not (_4 input0_p var1_p time))
              (not (_5 input0_p var1_p time))
              (not (_6 input0_p var1_p time))
              (not (_7 input0_p var1_p time))
              (not (_8 input0_p var1_p time))
              (not (_9 input0_p var1_p time))
              (not (_10 input0_p var1_p time))))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_0 input0 var1 time)
              true
              (distinct input0 input0_p)
              (distinct var1 var1_p))
         (not (_0 input0_p var1_p time)))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (_1 input0 var1 time)
         (and true
              (not (_0 input0_p var1_p time))
              (not (ERR input0_p var1_p time))
              (not (_2 input0_p var1_p time))
              (not (_3 input0_p var1_p time))
              (not (_4 input0_p var1_p time))
              (not (_5 input0_p var1_p time))
              (not (_6 input0_p var1_p time))
              (not (_7 input0_p var1_p time))
              (not (_8 input0_p var1_p time))
              (not (_9 input0_p var1_p time))
              (not (_10 input0_p var1_p time))))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_1 input0 var1 time)
              true
              (distinct input0 input0_p)
              (distinct var1 var1_p))
         (not (_1 input0_p var1_p time)))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (ERR input0 var1 time)
         (and true
              (not (_0 input0_p var1_p time))
              (not (_1 input0_p var1_p time))
              (not (_2 input0_p var1_p time))
              (not (_3 input0_p var1_p time))
              (not (_4 input0_p var1_p time))
              (not (_5 input0_p var1_p time))
              (not (_6 input0_p var1_p time))
              (not (_7 input0_p var1_p time))
              (not (_8 input0_p var1_p time))
              (not (_9 input0_p var1_p time))
              (not (_10 input0_p var1_p time))))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (ERR input0 var1 time)
              true
              (distinct input0 input0_p)
              (distinct var1 var1_p))
         (not (ERR input0_p var1_p time)))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (_2 input0 var1 time)
         (and true
              (not (_0 input0_p var1_p time))
              (not (_1 input0_p var1_p time))
              (not (ERR input0_p var1_p time))
              (not (_3 input0_p var1_p time))
              (not (_4 input0_p var1_p time))
              (not (_5 input0_p var1_p time))
              (not (_6 input0_p var1_p time))
              (not (_7 input0_p var1_p time))
              (not (_8 input0_p var1_p time))
              (not (_9 input0_p var1_p time))
              (not (_10 input0_p var1_p time))))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_2 input0 var1 time)
              true
              (distinct input0 input0_p)
              (distinct var1 var1_p))
         (not (_2 input0_p var1_p time)))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (_3 input0 var1 time)
         (and true
              (not (_0 input0_p var1_p time))
              (not (_1 input0_p var1_p time))
              (not (ERR input0_p var1_p time))
              (not (_2 input0_p var1_p time))
              (not (_4 input0_p var1_p time))
              (not (_5 input0_p var1_p time))
              (not (_6 input0_p var1_p time))
              (not (_7 input0_p var1_p time))
              (not (_8 input0_p var1_p time))
              (not (_9 input0_p var1_p time))
              (not (_10 input0_p var1_p time))))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_3 input0 var1 time)
              true
              (distinct input0 input0_p)
              (distinct var1 var1_p))
         (not (_3 input0_p var1_p time)))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (_4 input0 var1 time)
         (and true
              (not (_0 input0_p var1_p time))
              (not (_1 input0_p var1_p time))
              (not (ERR input0_p var1_p time))
              (not (_2 input0_p var1_p time))
              (not (_3 input0_p var1_p time))
              (not (_5 input0_p var1_p time))
              (not (_6 input0_p var1_p time))
              (not (_7 input0_p var1_p time))
              (not (_8 input0_p var1_p time))
              (not (_9 input0_p var1_p time))
              (not (_10 input0_p var1_p time))))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_4 input0 var1 time)
              true
              (distinct input0 input0_p)
              (distinct var1 var1_p))
         (not (_4 input0_p var1_p time)))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (_5 input0 var1 time)
         (and true
              (not (_0 input0_p var1_p time))
              (not (_1 input0_p var1_p time))
              (not (ERR input0_p var1_p time))
              (not (_2 input0_p var1_p time))
              (not (_3 input0_p var1_p time))
              (not (_4 input0_p var1_p time))
              (not (_6 input0_p var1_p time))
              (not (_7 input0_p var1_p time))
              (not (_8 input0_p var1_p time))
              (not (_9 input0_p var1_p time))
              (not (_10 input0_p var1_p time))))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_5 input0 var1 time)
              true
              (distinct input0 input0_p)
              (distinct var1 var1_p))
         (not (_5 input0_p var1_p time)))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (_6 input0 var1 time)
         (and true
              (not (_0 input0_p var1_p time))
              (not (_1 input0_p var1_p time))
              (not (ERR input0_p var1_p time))
              (not (_2 input0_p var1_p time))
              (not (_3 input0_p var1_p time))
              (not (_4 input0_p var1_p time))
              (not (_5 input0_p var1_p time))
              (not (_7 input0_p var1_p time))
              (not (_8 input0_p var1_p time))
              (not (_9 input0_p var1_p time))
              (not (_10 input0_p var1_p time))))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_6 input0 var1 time)
              true
              (distinct input0 input0_p)
              (distinct var1 var1_p))
         (not (_6 input0_p var1_p time)))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (_7 input0 var1 time)
         (and true
              (not (_0 input0_p var1_p time))
              (not (_1 input0_p var1_p time))
              (not (ERR input0_p var1_p time))
              (not (_2 input0_p var1_p time))
              (not (_3 input0_p var1_p time))
              (not (_4 input0_p var1_p time))
              (not (_5 input0_p var1_p time))
              (not (_6 input0_p var1_p time))
              (not (_8 input0_p var1_p time))
              (not (_9 input0_p var1_p time))
              (not (_10 input0_p var1_p time))))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_7 input0 var1 time)
              true
              (distinct input0 input0_p)
              (distinct var1 var1_p))
         (not (_7 input0_p var1_p time)))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (_8 input0 var1 time)
         (and true
              (not (_0 input0_p var1_p time))
              (not (_1 input0_p var1_p time))
              (not (ERR input0_p var1_p time))
              (not (_2 input0_p var1_p time))
              (not (_3 input0_p var1_p time))
              (not (_4 input0_p var1_p time))
              (not (_5 input0_p var1_p time))
              (not (_6 input0_p var1_p time))
              (not (_7 input0_p var1_p time))
              (not (_9 input0_p var1_p time))
              (not (_10 input0_p var1_p time))))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_8 input0 var1 time)
              true
              (distinct input0 input0_p)
              (distinct var1 var1_p))
         (not (_8 input0_p var1_p time)))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (_9 input0 var1 time)
         (and true
              (not (_0 input0_p var1_p time))
              (not (_1 input0_p var1_p time))
              (not (ERR input0_p var1_p time))
              (not (_2 input0_p var1_p time))
              (not (_3 input0_p var1_p time))
              (not (_4 input0_p var1_p time))
              (not (_5 input0_p var1_p time))
              (not (_6 input0_p var1_p time))
              (not (_7 input0_p var1_p time))
              (not (_8 input0_p var1_p time))
              (not (_10 input0_p var1_p time))))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_9 input0 var1 time)
              true
              (distinct input0 input0_p)
              (distinct var1 var1_p))
         (not (_9 input0_p var1_p time)))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (_10 input0 var1 time)
         (and true
              (not (_0 input0_p var1_p time))
              (not (_1 input0_p var1_p time))
              (not (ERR input0_p var1_p time))
              (not (_2 input0_p var1_p time))
              (not (_3 input0_p var1_p time))
              (not (_4 input0_p var1_p time))
              (not (_5 input0_p var1_p time))
              (not (_6 input0_p var1_p time))
              (not (_7 input0_p var1_p time))
              (not (_8 input0_p var1_p time))
              (not (_9 input0_p var1_p time))))
     :weight 0)))
(assert (forall ((input0 Int)
         (var1 Int)
         (time Int)
         (input0_p Int)
         (var1_p Int)
         (time_p Int))
  (! (=> (and (_10 input0 var1 time)
              true
              (distinct input0 input0_p)
              (distinct var1 var1_p))
         (not (_10 input0_p var1_p time)))
     :weight 0)))
     
;(assert (forall ((input0 Int) (var1 Int) (time Int))
;  (! (=> (and (_1 input0 var1 time) (distinct var1 1)) false) :weight 0)))

; reachability -> works as expected with constrained inputs
; need to relax those constraints
;(assert (forall ((input0 Int) (var1 Int) (time Int))
;     (=>  (and (_5 input0 var1 time) (distinct input0 1))
;          false
;     )))

(check-sat)
(get-model)