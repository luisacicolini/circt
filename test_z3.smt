; 
(set-info :status unknown)
(declare-fun _0 (Int Int) Bool)
(declare-fun output () Bool)
(declare-fun _1 (Int Int) Bool)
(declare-fun _2 (Int Int) Bool)
(declare-fun _3 (Int Int) Bool)
(declare-fun _4 (Int Int) Bool)
(declare-fun _5 (Int Int) Bool)
(assert
 (let (($x10 (_0 0 0)))
 (let (($x12 (= output false)))
 (and $x12 $x10))))
(assert
 (let (($x63 (forall ((time Int) )(let (($x58 (forall ((arg0 Int) )(let (($x56 (_0 arg0 time)))
 (=> $x56 (_1 (+ arg0 1) (+ time 1)))))
 ))
 (let (($x60 (>= time 0)))
 (let (($x61 (and $x60 (< time 2))))
 (=> $x61 $x58)))))
 ))
 (let (($x36 (= arg0 5)))
 (let (($x41 (= output $x36)))
 (and $x41 $x63)))))
(assert
 (let (($x82 (forall ((time Int) )(let (($x80 (forall ((arg0 Int) )(let (($x66 (_1 arg0 time)))
 (=> $x66 (_2 (+ arg0 1) (+ time 1)))))
 ))
 (let (($x60 (>= time 0)))
 (let (($x61 (and $x60 (< time 2))))
 (=> $x61 $x80)))))
 ))
 (let (($x36 (= arg0 5)))
 (let (($x41 (= output $x36)))
 (and $x41 $x82)))))
(assert
 (let (($x95 (forall ((time Int) )(let (($x93 (forall ((arg0 Int) )(let (($x85 (_2 arg0 time)))
 (=> $x85 (_3 (+ arg0 1) (+ time 1)))))
 ))
 (let (($x60 (>= time 0)))
 (let (($x61 (and $x60 (< time 2))))
 (=> $x61 $x93)))))
 ))
 (let (($x36 (= arg0 5)))
 (let (($x41 (= output $x36)))
 (and $x41 $x95)))))
(assert
 (let (($x108 (forall ((time Int) )(let (($x106 (forall ((arg0 Int) )(let (($x98 (_3 arg0 time)))
 (=> $x98 (_4 (+ arg0 1) (+ time 1)))))
 ))
 (let (($x60 (>= time 0)))
 (let (($x61 (and $x60 (< time 2))))
 (=> $x61 $x106)))))
 ))
 (let (($x36 (= arg0 5)))
 (let (($x41 (= output $x36)))
 (and $x41 $x108)))))
(assert
 (let (($x121 (forall ((time Int) )(let (($x119 (forall ((arg0 Int) )(let (($x111 (_4 arg0 time)))
 (=> $x111 (_5 (+ arg0 1) (+ time 1)))))
 ))
 (let (($x60 (>= time 0)))
 (let (($x61 (and $x60 (< time 2))))
 (=> $x61 $x119)))))
 ))
 (let (($x36 (= arg0 5)))
 (let (($x41 (= output $x36)))
 (and $x41 $x121)))))
(check-sat)
