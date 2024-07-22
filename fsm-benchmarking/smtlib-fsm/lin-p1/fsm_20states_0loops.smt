; 
(set-info :status unknown)
(declare-fun var0_0 (Int) Int)
(declare-fun time-to-state (Int) Int)
(assert
 (let (($x11 (= (var0_0 0) 0)))
 (let (($x9 (= (time-to-state 0) 0)))
 (and $x9 $x11))))
(assert
 (forall ((time Int) )(let ((?x37 (time-to-state time)))
 (let (($x38 (= ?x37 (- 1))))
 (=> (< time 0) $x38))))
 )
(assert
 (forall ((time Int) (time2 Int) )(let ((?x37 (time-to-state time2)))
 (let (($x38 (= ?x37 (- 1))))
 (=> (and (> time2 time) (= (time-to-state time) 20)) $x38))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x82 (= ?x37 0)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x82) (and (= (time-to-state (+ time 1)) 1) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x105 (= ?x37 1)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x105) (and (= (time-to-state (+ time 1)) 2) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x118 (= ?x37 2)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x118) (and (= (time-to-state (+ time 1)) 3) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x131 (= ?x37 3)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x131) (and (= (time-to-state (+ time 1)) 4) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x144 (= ?x37 4)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x144) (and (= (time-to-state (+ time 1)) 5) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x157 (= ?x37 5)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x157) (and (= (time-to-state (+ time 1)) 6) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x170 (= ?x37 6)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x170) (and (= (time-to-state (+ time 1)) 7) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x183 (= ?x37 7)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x183) (and (= (time-to-state (+ time 1)) 8) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x196 (= ?x37 8)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x196) (and (= (time-to-state (+ time 1)) 9) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x209 (= ?x37 9)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x209) (and (= (time-to-state (+ time 1)) 10) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x222 (= ?x37 10)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x222) (and (= (time-to-state (+ time 1)) 11) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x235 (= ?x37 11)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x235) (and (= (time-to-state (+ time 1)) 12) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x248 (= ?x37 12)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x248) (and (= (time-to-state (+ time 1)) 13) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x261 (= ?x37 13)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x261) (and (= (time-to-state (+ time 1)) 14) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x274 (= ?x37 14)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x274) (and (= (time-to-state (+ time 1)) 15) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x287 (= ?x37 15)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x287) (and (= (time-to-state (+ time 1)) 16) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x300 (= ?x37 16)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x300) (and (= (time-to-state (+ time 1)) 17) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x313 (= ?x37 17)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x313) (and (= (time-to-state (+ time 1)) 18) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x326 (= ?x37 18)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x326) (and (= (time-to-state (+ time 1)) 19) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x338 (= ?x37 19)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x338) (and (= (time-to-state (+ time 1)) 20) $x78))))))))
 )
(assert
 (forall ((time Int) )(let ((?x37 (time-to-state time)))
 (and (distinct ?x37 19) true)))
 )
(check-sat)
