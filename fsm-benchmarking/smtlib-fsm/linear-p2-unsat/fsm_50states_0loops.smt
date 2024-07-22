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
 (=> (and (> time2 time) (= (time-to-state time) 50)) $x38))))
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
 (let (($x339 (= ?x37 19)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x339) (and (= (time-to-state (+ time 1)) 20) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x352 (= ?x37 20)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x352) (and (= (time-to-state (+ time 1)) 21) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x365 (= ?x37 21)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x365) (and (= (time-to-state (+ time 1)) 22) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x378 (= ?x37 22)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x378) (and (= (time-to-state (+ time 1)) 23) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x391 (= ?x37 23)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x391) (and (= (time-to-state (+ time 1)) 24) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x404 (= ?x37 24)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x404) (and (= (time-to-state (+ time 1)) 25) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x417 (= ?x37 25)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x417) (and (= (time-to-state (+ time 1)) 26) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x430 (= ?x37 26)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x430) (and (= (time-to-state (+ time 1)) 27) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x443 (= ?x37 27)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x443) (and (= (time-to-state (+ time 1)) 28) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x456 (= ?x37 28)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x456) (and (= (time-to-state (+ time 1)) 29) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x469 (= ?x37 29)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x469) (and (= (time-to-state (+ time 1)) 30) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x482 (= ?x37 30)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x482) (and (= (time-to-state (+ time 1)) 31) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x495 (= ?x37 31)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x495) (and (= (time-to-state (+ time 1)) 32) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x508 (= ?x37 32)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x508) (and (= (time-to-state (+ time 1)) 33) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x521 (= ?x37 33)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x521) (and (= (time-to-state (+ time 1)) 34) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x534 (= ?x37 34)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x534) (and (= (time-to-state (+ time 1)) 35) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x547 (= ?x37 35)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x547) (and (= (time-to-state (+ time 1)) 36) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x560 (= ?x37 36)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x560) (and (= (time-to-state (+ time 1)) 37) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x573 (= ?x37 37)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x573) (and (= (time-to-state (+ time 1)) 38) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x586 (= ?x37 38)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x586) (and (= (time-to-state (+ time 1)) 39) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x599 (= ?x37 39)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x599) (and (= (time-to-state (+ time 1)) 40) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x612 (= ?x37 40)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x612) (and (= (time-to-state (+ time 1)) 41) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x625 (= ?x37 41)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x625) (and (= (time-to-state (+ time 1)) 42) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x638 (= ?x37 42)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x638) (and (= (time-to-state (+ time 1)) 43) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x651 (= ?x37 43)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x651) (and (= (time-to-state (+ time 1)) 44) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x664 (= ?x37 44)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x664) (and (= (time-to-state (+ time 1)) 45) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x677 (= ?x37 45)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x677) (and (= (time-to-state (+ time 1)) 46) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x690 (= ?x37 46)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x690) (and (= (time-to-state (+ time 1)) 47) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x703 (= ?x37 47)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x703) (and (= (time-to-state (+ time 1)) 48) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x716 (= ?x37 48)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x716) (and (= (time-to-state (+ time 1)) 49) $x78))))))))
 )
(assert
 (forall ((time Int) )(let (($x78 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x37 (time-to-state time)))
 (let (($x728 (= ?x37 49)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> (and $x84 $x728) (and (= (time-to-state (+ time 1)) 50) $x78))))))))
 )
(assert
 (exists ((time Int) )(let ((?x37 (time-to-state time)))
 (let (($x728 (= ?x37 49)))
 (let (($x35 (>= time 0)))
 (let (($x84 (and $x35 (< time 500))))
 (=> $x84 (and (distinct $x728 (and (distinct (var0_0 time) 49) true)) true)))))))
 )
(check-sat)
