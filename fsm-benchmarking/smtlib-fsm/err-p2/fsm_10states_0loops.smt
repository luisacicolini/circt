; 
(set-info :status unknown)
(declare-fun var1_0 (Int) Int)
(declare-fun input-arg0 (Int) Int)
(declare-fun time-to-state (Int) Int)
(assert
 (let (($x14 (= (var1_0 0) 0)))
 (let (($x11 (= (input-arg0 0) 0)))
 (let (($x9 (= (time-to-state 0) 0)))
 (let (($x12 (and $x9 $x11)))
 (and $x12 $x14))))))
(assert
 (forall ((time Int) )(let (($x54 (= (var1_0 (+ time 1)) (+ (var1_0 time) 1))))
 (=> (and (= (time-to-state time) 0) (and (distinct (input-arg0 time) 0) true)) (and (= (time-to-state (+ time 1)) 1) $x54))))
 )
(assert
 (forall ((time Int) )(let ((?x52 (+ time 1)))
 (let ((?x55 (time-to-state ?x52)))
 (let (($x76 (= ?x55 2)))
 (let ((?x58 (input-arg0 time)))
 (let (($x77 (= ?x58 1)))
 (let ((?x60 (time-to-state time)))
 (let (($x61 (= ?x60 0)))
 (let (($x78 (and $x61 $x77)))
 (=> $x78 $x76))))))))))
 )
(assert
 (forall ((time Int) )(let (($x54 (= (var1_0 (+ time 1)) (+ (var1_0 time) 1))))
 (=> (and (= (time-to-state time) 1) (and (distinct (input-arg0 time) 0) true)) (and (= (time-to-state (+ time 1)) 3) $x54))))
 )
(assert
 (forall ((time Int) )(let ((?x52 (+ time 1)))
 (let ((?x55 (time-to-state ?x52)))
 (let (($x76 (= ?x55 2)))
 (let ((?x58 (input-arg0 time)))
 (let (($x77 (= ?x58 1)))
 (let ((?x60 (time-to-state time)))
 (let (($x93 (= ?x60 1)))
 (let (($x98 (and $x93 $x77)))
 (=> $x98 $x76))))))))))
 )
(assert
 (forall ((time Int) )(let (($x54 (= (var1_0 (+ time 1)) (+ (var1_0 time) 1))))
 (=> (and (= (time-to-state time) 3) (and (distinct (input-arg0 time) 0) true)) (and (= (time-to-state (+ time 1)) 4) $x54))))
 )
(assert
 (forall ((time Int) )(let ((?x52 (+ time 1)))
 (let ((?x55 (time-to-state ?x52)))
 (let (($x76 (= ?x55 2)))
 (let ((?x58 (input-arg0 time)))
 (let (($x77 (= ?x58 1)))
 (let ((?x60 (time-to-state time)))
 (let (($x112 (= ?x60 3)))
 (let (($x117 (and $x112 $x77)))
 (=> $x117 $x76))))))))))
 )
(assert
 (forall ((time Int) )(let (($x54 (= (var1_0 (+ time 1)) (+ (var1_0 time) 1))))
 (=> (and (= (time-to-state time) 4) (and (distinct (input-arg0 time) 0) true)) (and (= (time-to-state (+ time 1)) 5) $x54))))
 )
(assert
 (forall ((time Int) )(let ((?x52 (+ time 1)))
 (let ((?x55 (time-to-state ?x52)))
 (let (($x76 (= ?x55 2)))
 (let ((?x58 (input-arg0 time)))
 (let (($x77 (= ?x58 1)))
 (let ((?x60 (time-to-state time)))
 (let (($x131 (= ?x60 4)))
 (let (($x136 (and $x131 $x77)))
 (=> $x136 $x76))))))))))
 )
(assert
 (forall ((time Int) )(let (($x54 (= (var1_0 (+ time 1)) (+ (var1_0 time) 1))))
 (=> (and (= (time-to-state time) 5) (and (distinct (input-arg0 time) 0) true)) (and (= (time-to-state (+ time 1)) 6) $x54))))
 )
(assert
 (forall ((time Int) )(let ((?x52 (+ time 1)))
 (let ((?x55 (time-to-state ?x52)))
 (let (($x76 (= ?x55 2)))
 (let ((?x58 (input-arg0 time)))
 (let (($x77 (= ?x58 1)))
 (let ((?x60 (time-to-state time)))
 (let (($x150 (= ?x60 5)))
 (let (($x155 (and $x150 $x77)))
 (=> $x155 $x76))))))))))
 )
(assert
 (forall ((time Int) )(let (($x54 (= (var1_0 (+ time 1)) (+ (var1_0 time) 1))))
 (=> (and (= (time-to-state time) 6) (and (distinct (input-arg0 time) 0) true)) (and (= (time-to-state (+ time 1)) 7) $x54))))
 )
(assert
 (forall ((time Int) )(let ((?x52 (+ time 1)))
 (let ((?x55 (time-to-state ?x52)))
 (let (($x76 (= ?x55 2)))
 (let ((?x58 (input-arg0 time)))
 (let (($x77 (= ?x58 1)))
 (let ((?x60 (time-to-state time)))
 (let (($x169 (= ?x60 6)))
 (let (($x174 (and $x169 $x77)))
 (=> $x174 $x76))))))))))
 )
(assert
 (forall ((time Int) )(let (($x54 (= (var1_0 (+ time 1)) (+ (var1_0 time) 1))))
 (=> (and (= (time-to-state time) 7) (and (distinct (input-arg0 time) 0) true)) (and (= (time-to-state (+ time 1)) 8) $x54))))
 )
(assert
 (forall ((time Int) )(let ((?x52 (+ time 1)))
 (let ((?x55 (time-to-state ?x52)))
 (let (($x76 (= ?x55 2)))
 (let ((?x58 (input-arg0 time)))
 (let (($x77 (= ?x58 1)))
 (let ((?x60 (time-to-state time)))
 (let (($x188 (= ?x60 7)))
 (let (($x193 (and $x188 $x77)))
 (=> $x193 $x76))))))))))
 )
(assert
 (forall ((time Int) )(let (($x54 (= (var1_0 (+ time 1)) (+ (var1_0 time) 1))))
 (=> (and (= (time-to-state time) 8) (and (distinct (input-arg0 time) 0) true)) (and (= (time-to-state (+ time 1)) 9) $x54))))
 )
(assert
 (forall ((time Int) )(let ((?x52 (+ time 1)))
 (let ((?x55 (time-to-state ?x52)))
 (let (($x76 (= ?x55 2)))
 (let ((?x58 (input-arg0 time)))
 (let (($x77 (= ?x58 1)))
 (let ((?x60 (time-to-state time)))
 (let (($x207 (= ?x60 8)))
 (let (($x212 (and $x207 $x77)))
 (=> $x212 $x76))))))))))
 )
(assert
 (forall ((time Int) )(let (($x54 (= (var1_0 (+ time 1)) (+ (var1_0 time) 1))))
 (=> (and (= (time-to-state time) 9) (and (distinct (input-arg0 time) 0) true)) (and (= (time-to-state (+ time 1)) 10) $x54))))
 )
(assert
 (forall ((time Int) )(let ((?x52 (+ time 1)))
 (let ((?x55 (time-to-state ?x52)))
 (let (($x76 (= ?x55 2)))
 (let ((?x58 (input-arg0 time)))
 (let (($x77 (= ?x58 1)))
 (let ((?x60 (time-to-state time)))
 (let (($x226 (= ?x60 9)))
 (let (($x231 (and $x226 $x77)))
 (=> $x231 $x76))))))))))
 )
(assert
 (forall ((time Int) )(let (($x54 (= (var1_0 (+ time 1)) (+ (var1_0 time) 1))))
 (=> (and (= (time-to-state time) 10) (and (distinct (input-arg0 time) 0) true)) (and (= (time-to-state (+ time 1)) 11) $x54))))
 )
(assert
 (forall ((time Int) )(let ((?x52 (+ time 1)))
 (let ((?x55 (time-to-state ?x52)))
 (let (($x76 (= ?x55 2)))
 (let ((?x58 (input-arg0 time)))
 (let (($x77 (= ?x58 1)))
 (let ((?x60 (time-to-state time)))
 (let (($x245 (= ?x60 10)))
 (let (($x250 (and $x245 $x77)))
 (=> $x250 $x76))))))))))
 )
(assert
 (forall ((time Int) )(exists ((time Int) )(and (and (>= time 0) (< time 21)) (and (distinct (= (time-to-state time) 10) (= (input-arg0 time) 9)) true)))
 )
 )
(check-sat)
