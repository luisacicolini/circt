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
(declare-fun _41 (Int Int) Bool)
(declare-fun _42 (Int Int) Bool)
(declare-fun _43 (Int Int) Bool)
(declare-fun _44 (Int Int) Bool)
(declare-fun _45 (Int Int) Bool)
(declare-fun _46 (Int Int) Bool)
(declare-fun _47 (Int Int) Bool)
(declare-fun _48 (Int Int) Bool)
(declare-fun _49 (Int Int) Bool)
(declare-fun _50 (Int Int) Bool)
(declare-fun _51 (Int Int) Bool)
(declare-fun _52 (Int Int) Bool)
(declare-fun _53 (Int Int) Bool)
(declare-fun _54 (Int Int) Bool)
(declare-fun _55 (Int Int) Bool)
(declare-fun _56 (Int Int) Bool)
(declare-fun _57 (Int Int) Bool)
(declare-fun _58 (Int Int) Bool)
(declare-fun _59 (Int Int) Bool)
(declare-fun _60 (Int Int) Bool)
(declare-fun _61 (Int Int) Bool)
(declare-fun _62 (Int Int) Bool)
(declare-fun _63 (Int Int) Bool)
(declare-fun _64 (Int Int) Bool)
(declare-fun _65 (Int Int) Bool)
(declare-fun _66 (Int Int) Bool)
(declare-fun _67 (Int Int) Bool)
(declare-fun _68 (Int Int) Bool)
(declare-fun _69 (Int Int) Bool)
(declare-fun _70 (Int Int) Bool)
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (= time 0) true (= var0 0)) (_0 var0 time)) :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (= time 0) true (= var0 0)) (_0 var0 time)) :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_0 var0 time) (_1 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_1 var0 time) (_2 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_2 var0 time) (_3 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_3 var0 time) (_4 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_4 var0 time) (_5 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_5 var0 time) (_6 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_6 var0 time) (_7 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_7 var0 time) (_8 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_8 var0 time) (_9 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_9 var0 time) (_10 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_10 var0 time) (_11 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_11 var0 time) (_12 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_12 var0 time) (_13 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_13 var0 time) (_14 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_14 var0 time) (_15 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_15 var0 time) (_16 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_16 var0 time) (_17 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_17 var0 time) (_18 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_18 var0 time) (_19 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_19 var0 time) (_20 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_20 var0 time) (_21 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_21 var0 time) (_22 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_22 var0 time) (_23 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_23 var0 time) (_24 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_24 var0 time) (_25 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_25 var0 time) (_26 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_26 var0 time) (_27 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_27 var0 time) (_28 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_28 var0 time) (_29 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_29 var0 time) (_30 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_30 var0 time) (_31 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_31 var0 time) (_32 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_32 var0 time) (_33 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_33 var0 time) (_34 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_34 var0 time) (_35 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_35 var0 time) (_36 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_36 var0 time) (_37 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_37 var0 time) (_38 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_38 var0 time) (_39 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_39 var0 time) (_40 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_40 var0 time) (_41 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_41 var0 time) (_42 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_42 var0 time) (_43 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_43 var0 time) (_44 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_44 var0 time) (_45 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_45 var0 time) (_46 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_46 var0 time) (_47 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_47 var0 time) (_48 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_48 var0 time) (_49 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_49 var0 time) (_50 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_50 var0 time) (_51 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_51 var0 time) (_52 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_52 var0 time) (_53 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_53 var0 time) (_54 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_54 var0 time) (_55 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_55 var0 time) (_56 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_56 var0 time) (_57 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_57 var0 time) (_58 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_58 var0 time) (_59 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_59 var0 time) (_60 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_60 var0 time) (_61 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_61 var0 time) (_62 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_62 var0 time) (_63 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_63 var0 time) (_64 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_64 var0 time) (_65 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_65 var0 time) (_66 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_66 var0 time) (_67 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_67 var0 time) (_68 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_68 var0 time) (_69 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 80))
              (=> (_69 var0 time) (_70 (+ var0 1) (+ time 1))))
          :weight 0))
     :weight 0)))
(assert (forall ((time Int))
  (! (forall ((var0 Int))
       (! (=> (and (>= time 0) (< time 79)) (= (_69 var0 time) (= var0 69)))
          :weight 0))
     :weight 0)))
(check-sat)
