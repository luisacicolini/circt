(set-logic HORN)
(declare-rel A (Int Int))
(declare-rel B (Int Int))
(declare-rel C (Int Int))
(declare-var input Int)
(declare-var time Int)

(rule (=> (= time 0) (A input time)))

(rule (=> (A input time) (B input (+ time 1))))

(rule (=> (and (B input time) (= input 1)) (C input (+ time 1))))

(rule (=> (and (B input time) (distinct input 1)) (B input (+ time 1))))

(rule (=> (and (C input time) (= input 1)) (A input (+ time 1))))

(rule (=> (and (C input time) (distinct input 1)) (C input (+ time 1))))

(query A :print-certificate true)
(query B :print-certificate true)
(query C :print-certificate true)
