; 
(set-info :status unknown)
(declare-fun time-to-state (Int) Int)
(declare-fun var0_0 (Int) Int)
(assert
 (forall ((time Int) )(let (($x348 (<= time 160)))
 (let (($x356 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let (($x10 (= (var0_0 0) 0)))
 (let (($x518 (and (and (and (= (time-to-state 0) 0) $x10) $x10) (and (= (time-to-state (+ time 1)) 1) $x356))))
 (let (($x520 (and (and $x518 (and (= (time-to-state (+ time 1)) 2) $x356)) (and (= (time-to-state (+ time 1)) 3) $x356))))
 (let (($x522 (and (and $x520 (and (= (time-to-state (+ time 1)) 4) $x356)) (and (= (time-to-state (+ time 1)) 5) $x356))))
 (let (($x524 (and (and $x522 (and (= (time-to-state (+ time 1)) 6) $x356)) (and (= (time-to-state (+ time 1)) 7) $x356))))
 (let (($x526 (and (and $x524 (and (= (time-to-state (+ time 1)) 8) $x356)) (and (= (time-to-state (+ time 1)) 9) $x356))))
 (let (($x528 (and (and $x526 (and (= (time-to-state (+ time 1)) 10) $x356)) (and (= (time-to-state (+ time 1)) 11) $x356))))
 (let (($x530 (and (and $x528 (and (= (time-to-state (+ time 1)) 12) $x356)) (and (= (time-to-state (+ time 1)) 13) $x356))))
 (let (($x532 (and (and $x530 (and (= (time-to-state (+ time 1)) 14) $x356)) (and (= (time-to-state (+ time 1)) 15) $x356))))
 (let (($x534 (and (and $x532 (and (= (time-to-state (+ time 1)) 16) $x356)) (and (= (time-to-state (+ time 1)) 17) $x356))))
 (let (($x536 (and (and $x534 (and (= (time-to-state (+ time 1)) 18) $x356)) (and (= (time-to-state (+ time 1)) 19) $x356))))
 (let (($x538 (and (and $x536 (and (= (time-to-state (+ time 1)) 20) $x356)) (and (= (time-to-state (+ time 1)) 21) $x356))))
 (let (($x540 (and (and $x538 (and (= (time-to-state (+ time 1)) 22) $x356)) (and (= (time-to-state (+ time 1)) 23) $x356))))
 (let (($x542 (and (and $x540 (and (= (time-to-state (+ time 1)) 24) $x356)) (and (= (time-to-state (+ time 1)) 25) $x356))))
 (let (($x544 (and (and $x542 (and (= (time-to-state (+ time 1)) 26) $x356)) (and (= (time-to-state (+ time 1)) 27) $x356))))
 (let (($x546 (and (and $x544 (and (= (time-to-state (+ time 1)) 28) $x356)) (and (= (time-to-state (+ time 1)) 29) $x356))))
 (let (($x548 (and (and $x546 (and (= (time-to-state (+ time 1)) 30) $x356)) (and (= (time-to-state (+ time 1)) 31) $x356))))
 (let (($x550 (and (and $x548 (and (= (time-to-state (+ time 1)) 32) $x356)) (and (= (time-to-state (+ time 1)) 33) $x356))))
 (let (($x552 (and (and $x550 (and (= (time-to-state (+ time 1)) 34) $x356)) (and (= (time-to-state (+ time 1)) 35) $x356))))
 (let (($x554 (and (and $x552 (and (= (time-to-state (+ time 1)) 36) $x356)) (and (= (time-to-state (+ time 1)) 37) $x356))))
 (let (($x556 (and (and $x554 (and (= (time-to-state (+ time 1)) 38) $x356)) (and (= (time-to-state (+ time 1)) 39) $x356))))
 (let (($x558 (and (and $x556 (and (= (time-to-state (+ time 1)) 40) $x356)) (and (= (time-to-state (+ time 1)) 41) $x356))))
 (let (($x560 (and (and $x558 (and (= (time-to-state (+ time 1)) 42) $x356)) (and (= (time-to-state (+ time 1)) 43) $x356))))
 (let (($x562 (and (and $x560 (and (= (time-to-state (+ time 1)) 44) $x356)) (and (= (time-to-state (+ time 1)) 45) $x356))))
 (let (($x564 (and (and $x562 (and (= (time-to-state (+ time 1)) 46) $x356)) (and (= (time-to-state (+ time 1)) 47) $x356))))
 (let (($x566 (and (and $x564 (and (= (time-to-state (+ time 1)) 48) $x356)) (and (= (time-to-state (+ time 1)) 49) $x356))))
 (let (($x568 (and (and $x566 (and (= (time-to-state (+ time 1)) 50) $x356)) (and (= (time-to-state (+ time 1)) 51) $x356))))
 (let (($x570 (and (and $x568 (and (= (time-to-state (+ time 1)) 52) $x356)) (and (= (time-to-state (+ time 1)) 53) $x356))))
 (let (($x572 (and (and $x570 (and (= (time-to-state (+ time 1)) 54) $x356)) (and (= (time-to-state (+ time 1)) 55) $x356))))
 (let (($x574 (and (and $x572 (and (= (time-to-state (+ time 1)) 56) $x356)) (and (= (time-to-state (+ time 1)) 57) $x356))))
 (let (($x576 (and (and $x574 (and (= (time-to-state (+ time 1)) 58) $x356)) (and (= (time-to-state (+ time 1)) 59) $x356))))
 (let (($x578 (and (and $x576 (and (= (time-to-state (+ time 1)) 60) $x356)) (and (= (time-to-state (+ time 1)) 61) $x356))))
 (let (($x580 (and (and $x578 (and (= (time-to-state (+ time 1)) 62) $x356)) (and (= (time-to-state (+ time 1)) 63) $x356))))
 (let (($x582 (and (and $x580 (and (= (time-to-state (+ time 1)) 64) $x356)) (and (= (time-to-state (+ time 1)) 65) $x356))))
 (let (($x584 (and (and $x582 (and (= (time-to-state (+ time 1)) 66) $x356)) (and (= (time-to-state (+ time 1)) 67) $x356))))
 (let (($x586 (and (and $x584 (and (= (time-to-state (+ time 1)) 68) $x356)) (and (= (time-to-state (+ time 1)) 69) $x356))))
 (let (($x588 (and (and $x586 (and (= (time-to-state (+ time 1)) 70) $x356)) (and (= (time-to-state (+ time 1)) 71) $x356))))
 (let (($x590 (and (and $x588 (and (= (time-to-state (+ time 1)) 72) $x356)) (and (= (time-to-state (+ time 1)) 73) $x356))))
 (let (($x592 (and (and $x590 (and (= (time-to-state (+ time 1)) 74) $x356)) (and (= (time-to-state (+ time 1)) 75) $x356))))
 (let (($x594 (and (and $x592 (and (= (time-to-state (+ time 1)) 76) $x356)) (and (= (time-to-state (+ time 1)) 77) $x356))))
 (let (($x596 (and (and $x594 (and (= (time-to-state (+ time 1)) 78) $x356)) (and (= (time-to-state (+ time 1)) 79) $x356))))
 (let (($x598 (and (and $x596 (and (= (time-to-state (+ time 1)) 80) $x356)) (and (distinct (time-to-state time) 79) true))))
 (and (and $x598 (> time 0)) $x348))))))))))))))))))))))))))))))))))))))))))))))
 )
(check-sat)
