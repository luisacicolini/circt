; 
(set-info :status unknown)
(declare-fun _0 (Int Int) Bool)
(declare-fun _1 (Int Int) Bool)
(declare-fun _2 (Int Int) Bool)
(declare-fun _3 (Int Int) Bool)
(declare-fun _4 (Int Int) Bool)
(declare-fun _5 (Int Int) Bool)
(assert
 (_0 0 0))
(assert
 (forall ((time Int) )(let (($x52 (forall ((var0 Int) )(let (($x50 (_0 var0 time)))
 (=> $x50 (_1 (+ var0 1) (+ time 1)))))
 ))
 (let (($x54 (>= time 0)))
 (let (($x55 (and $x54 (< time 10))))
 (=> $x55 $x52)))))
 )
(assert
 (forall ((time Int) )(let (($x73 (forall ((var0 Int) )(let (($x59 (_1 var0 time)))
 (=> $x59 (_2 (+ var0 1) (+ time 1)))))
 ))
 (let (($x54 (>= time 0)))
 (let (($x55 (and $x54 (< time 10))))
 (=> $x55 $x73)))))
 )
(assert
 (forall ((time Int) )(let (($x85 (forall ((var0 Int) )(let (($x77 (_2 var0 time)))
 (=> $x77 (_3 (+ var0 1) (+ time 1)))))
 ))
 (let (($x54 (>= time 0)))
 (let (($x55 (and $x54 (< time 10))))
 (=> $x55 $x85)))))
 )
(assert
 (forall ((time Int) )(let (($x97 (forall ((var0 Int) )(let (($x89 (_3 var0 time)))
 (=> $x89 (_4 (+ var0 1) (+ time 1)))))
 ))
 (let (($x54 (>= time 0)))
 (let (($x55 (and $x54 (< time 10))))
 (=> $x55 $x97)))))
 )
(assert
 (forall ((time Int) )(let (($x109 (forall ((var0 Int) )(let (($x101 (_4 var0 time)))
 (=> $x101 (_5 (+ var0 1) (+ time 1)))))
 ))
 (let (($x54 (>= time 0)))
 (let (($x55 (and $x54 (< time 10))))
 (=> $x55 $x109)))))
 )
(assert
 (forall ((time Int) )(let (($x109 (forall ((var0 Int) )(let (($x101 (_1 var0 time)))
 (=> $x101 (_3 (+ var0 1) (+ time 2)))))
 ))
 (let (($x54 (>= time 0)))
 (let (($x55 (and $x54 (< time 10))))
 (=> $x55 $x109)))))
 )
(check-sat)
(get-model)
