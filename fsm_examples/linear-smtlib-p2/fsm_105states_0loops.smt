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
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x664 (= ?x51 55)))
 (=> $x664 (and (= (time-to-state (+ time 1)) 56) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x675 (= ?x51 56)))
 (=> $x675 (and (= (time-to-state (+ time 1)) 57) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x686 (= ?x51 57)))
 (=> $x686 (and (= (time-to-state (+ time 1)) 58) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x697 (= ?x51 58)))
 (=> $x697 (and (= (time-to-state (+ time 1)) 59) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x708 (= ?x51 59)))
 (=> $x708 (and (= (time-to-state (+ time 1)) 60) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x719 (= ?x51 60)))
 (=> $x719 (and (= (time-to-state (+ time 1)) 61) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x730 (= ?x51 61)))
 (=> $x730 (and (= (time-to-state (+ time 1)) 62) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x741 (= ?x51 62)))
 (=> $x741 (and (= (time-to-state (+ time 1)) 63) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x752 (= ?x51 63)))
 (=> $x752 (and (= (time-to-state (+ time 1)) 64) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x763 (= ?x51 64)))
 (=> $x763 (and (= (time-to-state (+ time 1)) 65) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x774 (= ?x51 65)))
 (=> $x774 (and (= (time-to-state (+ time 1)) 66) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x785 (= ?x51 66)))
 (=> $x785 (and (= (time-to-state (+ time 1)) 67) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x796 (= ?x51 67)))
 (=> $x796 (and (= (time-to-state (+ time 1)) 68) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x807 (= ?x51 68)))
 (=> $x807 (and (= (time-to-state (+ time 1)) 69) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x818 (= ?x51 69)))
 (=> $x818 (and (= (time-to-state (+ time 1)) 70) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x829 (= ?x51 70)))
 (=> $x829 (and (= (time-to-state (+ time 1)) 71) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x840 (= ?x51 71)))
 (=> $x840 (and (= (time-to-state (+ time 1)) 72) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x851 (= ?x51 72)))
 (=> $x851 (and (= (time-to-state (+ time 1)) 73) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x862 (= ?x51 73)))
 (=> $x862 (and (= (time-to-state (+ time 1)) 74) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x873 (= ?x51 74)))
 (=> $x873 (and (= (time-to-state (+ time 1)) 75) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x884 (= ?x51 75)))
 (=> $x884 (and (= (time-to-state (+ time 1)) 76) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x895 (= ?x51 76)))
 (=> $x895 (and (= (time-to-state (+ time 1)) 77) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x906 (= ?x51 77)))
 (=> $x906 (and (= (time-to-state (+ time 1)) 78) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x917 (= ?x51 78)))
 (=> $x917 (and (= (time-to-state (+ time 1)) 79) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x928 (= ?x51 79)))
 (=> $x928 (and (= (time-to-state (+ time 1)) 80) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x939 (= ?x51 80)))
 (=> $x939 (and (= (time-to-state (+ time 1)) 81) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x950 (= ?x51 81)))
 (=> $x950 (and (= (time-to-state (+ time 1)) 82) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x961 (= ?x51 82)))
 (=> $x961 (and (= (time-to-state (+ time 1)) 83) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x972 (= ?x51 83)))
 (=> $x972 (and (= (time-to-state (+ time 1)) 84) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x983 (= ?x51 84)))
 (=> $x983 (and (= (time-to-state (+ time 1)) 85) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x994 (= ?x51 85)))
 (=> $x994 (and (= (time-to-state (+ time 1)) 86) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x1005 (= ?x51 86)))
 (=> $x1005 (and (= (time-to-state (+ time 1)) 87) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x1016 (= ?x51 87)))
 (=> $x1016 (and (= (time-to-state (+ time 1)) 88) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x1027 (= ?x51 88)))
 (=> $x1027 (and (= (time-to-state (+ time 1)) 89) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x1038 (= ?x51 89)))
 (=> $x1038 (and (= (time-to-state (+ time 1)) 90) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x1049 (= ?x51 90)))
 (=> $x1049 (and (= (time-to-state (+ time 1)) 91) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x1060 (= ?x51 91)))
 (=> $x1060 (and (= (time-to-state (+ time 1)) 92) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x1071 (= ?x51 92)))
 (=> $x1071 (and (= (time-to-state (+ time 1)) 93) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x1082 (= ?x51 93)))
 (=> $x1082 (and (= (time-to-state (+ time 1)) 94) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x1093 (= ?x51 94)))
 (=> $x1093 (and (= (time-to-state (+ time 1)) 95) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x1104 (= ?x51 95)))
 (=> $x1104 (and (= (time-to-state (+ time 1)) 96) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x1115 (= ?x51 96)))
 (=> $x1115 (and (= (time-to-state (+ time 1)) 97) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x1126 (= ?x51 97)))
 (=> $x1126 (and (= (time-to-state (+ time 1)) 98) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x1137 (= ?x51 98)))
 (=> $x1137 (and (= (time-to-state (+ time 1)) 99) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x1148 (= ?x51 99)))
 (=> $x1148 (and (= (time-to-state (+ time 1)) 100) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x1159 (= ?x51 100)))
 (=> $x1159 (and (= (time-to-state (+ time 1)) 101) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x1170 (= ?x51 101)))
 (=> $x1170 (and (= (time-to-state (+ time 1)) 102) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x1181 (= ?x51 102)))
 (=> $x1181 (and (= (time-to-state (+ time 1)) 103) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x1192 (= ?x51 103)))
 (=> $x1192 (and (= (time-to-state (+ time 1)) 104) $x47))))))
 )
(assert
 (forall ((time Int) )(let (($x47 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let ((?x51 (time-to-state time)))
 (let (($x1203 (= ?x51 104)))
 (=> $x1203 (and (= (time-to-state (+ time 1)) 105) $x47))))))
 )
(assert
 (forall ((time Int) )(let ((?x51 (time-to-state time)))
 (let (($x1203 (= ?x51 104)))
 (= $x1203 (and (distinct (var0_0 time) 104) true)))))
 )
(check-sat)
