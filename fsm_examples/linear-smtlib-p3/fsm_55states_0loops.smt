; 
(set-info :status unknown)
(declare-fun var0_0 (Int) Int)
(declare-fun time-to-state (Int) Int)
(assert
 (let (($x10 (= (var0_0 0) 0)))
 (let (($x8 (= (time-to-state 0) 0)))
 (and $x8 $x10))))
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x52 (= ?x51 0)))
 (=> $x52 (and (= (time-to-state (+ time 1)) 1) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x70 (= ?x51 1)))
 (=> $x70 (and (= (time-to-state (+ time 1)) 2) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x81 (= ?x51 2)))
 (=> $x81 (and (= (time-to-state (+ time 1)) 3) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x92 (= ?x51 3)))
 (=> $x92 (and (= (time-to-state (+ time 1)) 4) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x103 (= ?x51 4)))
 (=> $x103 (and (= (time-to-state (+ time 1)) 5) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x114 (= ?x51 5)))
 (=> $x114 (and (= (time-to-state (+ time 1)) 6) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x125 (= ?x51 6)))
 (=> $x125 (and (= (time-to-state (+ time 1)) 7) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x136 (= ?x51 7)))
 (=> $x136 (and (= (time-to-state (+ time 1)) 8) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x147 (= ?x51 8)))
 (=> $x147 (and (= (time-to-state (+ time 1)) 9) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x158 (= ?x51 9)))
 (=> $x158 (and (= (time-to-state (+ time 1)) 10) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x169 (= ?x51 10)))
 (=> $x169 (and (= (time-to-state (+ time 1)) 11) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x180 (= ?x51 11)))
 (=> $x180 (and (= (time-to-state (+ time 1)) 12) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x191 (= ?x51 12)))
 (=> $x191 (and (= (time-to-state (+ time 1)) 13) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x202 (= ?x51 13)))
 (=> $x202 (and (= (time-to-state (+ time 1)) 14) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x213 (= ?x51 14)))
 (=> $x213 (and (= (time-to-state (+ time 1)) 15) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x224 (= ?x51 15)))
 (=> $x224 (and (= (time-to-state (+ time 1)) 16) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x235 (= ?x51 16)))
 (=> $x235 (and (= (time-to-state (+ time 1)) 17) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x246 (= ?x51 17)))
 (=> $x246 (and (= (time-to-state (+ time 1)) 18) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x257 (= ?x51 18)))
 (=> $x257 (and (= (time-to-state (+ time 1)) 19) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x268 (= ?x51 19)))
 (=> $x268 (and (= (time-to-state (+ time 1)) 20) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x279 (= ?x51 20)))
 (=> $x279 (and (= (time-to-state (+ time 1)) 21) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x290 (= ?x51 21)))
 (=> $x290 (and (= (time-to-state (+ time 1)) 22) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x301 (= ?x51 22)))
 (=> $x301 (and (= (time-to-state (+ time 1)) 23) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x312 (= ?x51 23)))
 (=> $x312 (and (= (time-to-state (+ time 1)) 24) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x323 (= ?x51 24)))
 (=> $x323 (and (= (time-to-state (+ time 1)) 25) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x334 (= ?x51 25)))
 (=> $x334 (and (= (time-to-state (+ time 1)) 26) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x345 (= ?x51 26)))
 (=> $x345 (and (= (time-to-state (+ time 1)) 27) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x356 (= ?x51 27)))
 (=> $x356 (and (= (time-to-state (+ time 1)) 28) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x367 (= ?x51 28)))
 (=> $x367 (and (= (time-to-state (+ time 1)) 29) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x378 (= ?x51 29)))
 (=> $x378 (and (= (time-to-state (+ time 1)) 30) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x389 (= ?x51 30)))
 (=> $x389 (and (= (time-to-state (+ time 1)) 31) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x400 (= ?x51 31)))
 (=> $x400 (and (= (time-to-state (+ time 1)) 32) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x411 (= ?x51 32)))
 (=> $x411 (and (= (time-to-state (+ time 1)) 33) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x422 (= ?x51 33)))
 (=> $x422 (and (= (time-to-state (+ time 1)) 34) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x433 (= ?x51 34)))
 (=> $x433 (and (= (time-to-state (+ time 1)) 35) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x444 (= ?x51 35)))
 (=> $x444 (and (= (time-to-state (+ time 1)) 36) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x455 (= ?x51 36)))
 (=> $x455 (and (= (time-to-state (+ time 1)) 37) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x466 (= ?x51 37)))
 (=> $x466 (and (= (time-to-state (+ time 1)) 38) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x477 (= ?x51 38)))
 (=> $x477 (and (= (time-to-state (+ time 1)) 39) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x488 (= ?x51 39)))
 (=> $x488 (and (= (time-to-state (+ time 1)) 40) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x499 (= ?x51 40)))
 (=> $x499 (and (= (time-to-state (+ time 1)) 41) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x510 (= ?x51 41)))
 (=> $x510 (and (= (time-to-state (+ time 1)) 42) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x521 (= ?x51 42)))
 (=> $x521 (and (= (time-to-state (+ time 1)) 43) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x532 (= ?x51 43)))
 (=> $x532 (and (= (time-to-state (+ time 1)) 44) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x543 (= ?x51 44)))
 (=> $x543 (and (= (time-to-state (+ time 1)) 45) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x554 (= ?x51 45)))
 (=> $x554 (and (= (time-to-state (+ time 1)) 46) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x565 (= ?x51 46)))
 (=> $x565 (and (= (time-to-state (+ time 1)) 47) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x576 (= ?x51 47)))
 (=> $x576 (and (= (time-to-state (+ time 1)) 48) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x587 (= ?x51 48)))
 (=> $x587 (and (= (time-to-state (+ time 1)) 49) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x598 (= ?x51 49)))
 (=> $x598 (and (= (time-to-state (+ time 1)) 50) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x609 (= ?x51 50)))
 (=> $x609 (and (= (time-to-state (+ time 1)) 51) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x620 (= ?x51 51)))
 (=> $x620 (and (= (time-to-state (+ time 1)) 52) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x631 (= ?x51 52)))
 (=> $x631 (and (= (time-to-state (+ time 1)) 53) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x642 (= ?x51 53)))
 (=> $x642 (and (= (time-to-state (+ time 1)) 54) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x653 (= ?x51 54)))
 (=> $x653 (and (= (time-to-state (+ time 1)) 55) $x47))))))
 )
(assert
 (forall ((time Int) )(let ((?x51 (time-to-state time)))
 (let (($x657 (= ?x51 56)))
 (and $x657 (and (distinct (var0_0 time) 1) true)))))
 )
(check-sat)
