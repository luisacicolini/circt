; 
(set-info :status unknown)
(declare-fun _0 (Int Int Int) Bool)
(declare-fun input-arg0 (Int) Int)
(declare-fun _1 (Int Int Int) Bool)
(declare-fun ERR (Int Int Int) Bool)
(declare-fun _2 (Int Int Int) Bool)
(declare-fun _3 (Int Int Int) Bool)
(declare-fun _4 (Int Int Int) Bool)
(declare-fun _5 (Int Int Int) Bool)
(declare-fun _6 (Int Int Int) Bool)
(declare-fun _7 (Int Int Int) Bool)
(declare-fun _8 (Int Int Int) Bool)
(declare-fun _9 (Int Int Int) Bool)
(declare-fun _10 (Int Int Int) Bool)
(declare-fun _11 (Int Int Int) Bool)
(declare-fun _12 (Int Int Int) Bool)
(declare-fun _13 (Int Int Int) Bool)
(declare-fun _14 (Int Int Int) Bool)
(declare-fun _15 (Int Int Int) Bool)
(declare-fun _16 (Int Int Int) Bool)
(declare-fun _17 (Int Int Int) Bool)
(declare-fun _18 (Int Int Int) Bool)
(declare-fun _19 (Int Int Int) Bool)
(declare-fun _20 (Int Int Int) Bool)
(declare-fun _21 (Int Int Int) Bool)
(declare-fun _22 (Int Int Int) Bool)
(declare-fun _23 (Int Int Int) Bool)
(declare-fun _24 (Int Int Int) Bool)
(declare-fun _25 (Int Int Int) Bool)
(declare-fun _26 (Int Int Int) Bool)
(declare-fun _27 (Int Int Int) Bool)
(declare-fun _28 (Int Int Int) Bool)
(declare-fun _29 (Int Int Int) Bool)
(declare-fun _30 (Int Int Int) Bool)
(assert
 (forall ((var1 Int) )(let ((?x15 (input-arg0 0)))
 (_0 ?x15 0 0)))
 )
(assert
 (forall ((time Int) )(let (($x67 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x64 (_0 ?x62 var1 time)))
 (=> (and $x64 $x63) (_1 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x67)))))
 )
(assert
 (forall ((time Int) )(let (($x92 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x64 (_0 ?x62 var1 time)))
 (let (($x74 (and $x64 $x73)))
 (=> $x74 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x92)))))
 )
(assert
 (forall ((time Int) )(let (($x106 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x103 (_1 ?x62 var1 time)))
 (=> (and $x103 $x63) (_2 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x106)))))
 )
(assert
 (forall ((time Int) )(let (($x110 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x103 (_1 ?x62 var1 time)))
 (let (($x95 (and $x103 $x73)))
 (=> $x95 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x110)))))
 )
(assert
 (forall ((time Int) )(let (($x130 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x127 (_2 ?x62 var1 time)))
 (=> (and $x127 $x63) (_3 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x130)))))
 )
(assert
 (forall ((time Int) )(let (($x134 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x127 (_2 ?x62 var1 time)))
 (let (($x120 (and $x127 $x73)))
 (=> $x120 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x134)))))
 )
(assert
 (forall ((time Int) )(let (($x154 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x151 (_3 ?x62 var1 time)))
 (=> (and $x151 $x63) (_4 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x154)))))
 )
(assert
 (forall ((time Int) )(let (($x158 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x151 (_3 ?x62 var1 time)))
 (let (($x144 (and $x151 $x73)))
 (=> $x144 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x158)))))
 )
(assert
 (forall ((time Int) )(let (($x178 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x175 (_4 ?x62 var1 time)))
 (=> (and $x175 $x63) (_5 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x178)))))
 )
(assert
 (forall ((time Int) )(let (($x182 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x175 (_4 ?x62 var1 time)))
 (let (($x168 (and $x175 $x73)))
 (=> $x168 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x182)))))
 )
(assert
 (forall ((time Int) )(let (($x202 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x199 (_5 ?x62 var1 time)))
 (=> (and $x199 $x63) (_6 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x202)))))
 )
(assert
 (forall ((time Int) )(let (($x206 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x199 (_5 ?x62 var1 time)))
 (let (($x192 (and $x199 $x73)))
 (=> $x192 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x206)))))
 )
(assert
 (forall ((time Int) )(let (($x226 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x223 (_6 ?x62 var1 time)))
 (=> (and $x223 $x63) (_7 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x226)))))
 )
(assert
 (forall ((time Int) )(let (($x230 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x223 (_6 ?x62 var1 time)))
 (let (($x216 (and $x223 $x73)))
 (=> $x216 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x230)))))
 )
(assert
 (forall ((time Int) )(let (($x250 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x247 (_7 ?x62 var1 time)))
 (=> (and $x247 $x63) (_8 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x250)))))
 )
(assert
 (forall ((time Int) )(let (($x254 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x247 (_7 ?x62 var1 time)))
 (let (($x240 (and $x247 $x73)))
 (=> $x240 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x254)))))
 )
(assert
 (forall ((time Int) )(let (($x274 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x271 (_8 ?x62 var1 time)))
 (=> (and $x271 $x63) (_9 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x274)))))
 )
(assert
 (forall ((time Int) )(let (($x278 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x271 (_8 ?x62 var1 time)))
 (let (($x264 (and $x271 $x73)))
 (=> $x264 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x278)))))
 )
(assert
 (forall ((time Int) )(let (($x298 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x295 (_9 ?x62 var1 time)))
 (=> (and $x295 $x63) (_10 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x298)))))
 )
(assert
 (forall ((time Int) )(let (($x302 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x295 (_9 ?x62 var1 time)))
 (let (($x288 (and $x295 $x73)))
 (=> $x288 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x302)))))
 )
(assert
 (forall ((time Int) )(let (($x322 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x319 (_10 ?x62 var1 time)))
 (=> (and $x319 $x63) (_11 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x322)))))
 )
(assert
 (forall ((time Int) )(let (($x326 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x319 (_10 ?x62 var1 time)))
 (let (($x312 (and $x319 $x73)))
 (=> $x312 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x326)))))
 )
(assert
 (forall ((time Int) )(let (($x346 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x343 (_11 ?x62 var1 time)))
 (=> (and $x343 $x63) (_12 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x346)))))
 )
(assert
 (forall ((time Int) )(let (($x350 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x343 (_11 ?x62 var1 time)))
 (let (($x336 (and $x343 $x73)))
 (=> $x336 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x350)))))
 )
(assert
 (forall ((time Int) )(let (($x370 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x367 (_12 ?x62 var1 time)))
 (=> (and $x367 $x63) (_13 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x370)))))
 )
(assert
 (forall ((time Int) )(let (($x374 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x367 (_12 ?x62 var1 time)))
 (let (($x360 (and $x367 $x73)))
 (=> $x360 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x374)))))
 )
(assert
 (forall ((time Int) )(let (($x394 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x391 (_13 ?x62 var1 time)))
 (=> (and $x391 $x63) (_14 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x394)))))
 )
(assert
 (forall ((time Int) )(let (($x398 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x391 (_13 ?x62 var1 time)))
 (let (($x384 (and $x391 $x73)))
 (=> $x384 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x398)))))
 )
(assert
 (forall ((time Int) )(let (($x418 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x415 (_14 ?x62 var1 time)))
 (=> (and $x415 $x63) (_15 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x418)))))
 )
(assert
 (forall ((time Int) )(let (($x422 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x415 (_14 ?x62 var1 time)))
 (let (($x408 (and $x415 $x73)))
 (=> $x408 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x422)))))
 )
(assert
 (forall ((time Int) )(let (($x442 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x439 (_15 ?x62 var1 time)))
 (=> (and $x439 $x63) (_16 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x442)))))
 )
(assert
 (forall ((time Int) )(let (($x446 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x439 (_15 ?x62 var1 time)))
 (let (($x432 (and $x439 $x73)))
 (=> $x432 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x446)))))
 )
(assert
 (forall ((time Int) )(let (($x466 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x463 (_16 ?x62 var1 time)))
 (=> (and $x463 $x63) (_17 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x466)))))
 )
(assert
 (forall ((time Int) )(let (($x470 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x463 (_16 ?x62 var1 time)))
 (let (($x456 (and $x463 $x73)))
 (=> $x456 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x470)))))
 )
(assert
 (forall ((time Int) )(let (($x490 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x487 (_17 ?x62 var1 time)))
 (=> (and $x487 $x63) (_18 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x490)))))
 )
(assert
 (forall ((time Int) )(let (($x494 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x487 (_17 ?x62 var1 time)))
 (let (($x480 (and $x487 $x73)))
 (=> $x480 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x494)))))
 )
(assert
 (forall ((time Int) )(let (($x514 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x511 (_18 ?x62 var1 time)))
 (=> (and $x511 $x63) (_19 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x514)))))
 )
(assert
 (forall ((time Int) )(let (($x518 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x511 (_18 ?x62 var1 time)))
 (let (($x504 (and $x511 $x73)))
 (=> $x504 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x518)))))
 )
(assert
 (forall ((time Int) )(let (($x538 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x535 (_19 ?x62 var1 time)))
 (=> (and $x535 $x63) (_20 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x538)))))
 )
(assert
 (forall ((time Int) )(let (($x542 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x535 (_19 ?x62 var1 time)))
 (let (($x528 (and $x535 $x73)))
 (=> $x528 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x542)))))
 )
(assert
 (forall ((time Int) )(let (($x562 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x559 (_20 ?x62 var1 time)))
 (=> (and $x559 $x63) (_21 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x562)))))
 )
(assert
 (forall ((time Int) )(let (($x566 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x559 (_20 ?x62 var1 time)))
 (let (($x552 (and $x559 $x73)))
 (=> $x552 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x566)))))
 )
(assert
 (forall ((time Int) )(let (($x586 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x583 (_21 ?x62 var1 time)))
 (=> (and $x583 $x63) (_22 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x586)))))
 )
(assert
 (forall ((time Int) )(let (($x590 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x583 (_21 ?x62 var1 time)))
 (let (($x576 (and $x583 $x73)))
 (=> $x576 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x590)))))
 )
(assert
 (forall ((time Int) )(let (($x610 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x607 (_22 ?x62 var1 time)))
 (=> (and $x607 $x63) (_23 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x610)))))
 )
(assert
 (forall ((time Int) )(let (($x614 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x607 (_22 ?x62 var1 time)))
 (let (($x600 (and $x607 $x73)))
 (=> $x600 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x614)))))
 )
(assert
 (forall ((time Int) )(let (($x634 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x631 (_23 ?x62 var1 time)))
 (=> (and $x631 $x63) (_24 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x634)))))
 )
(assert
 (forall ((time Int) )(let (($x638 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x631 (_23 ?x62 var1 time)))
 (let (($x624 (and $x631 $x73)))
 (=> $x624 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x638)))))
 )
(assert
 (forall ((time Int) )(let (($x658 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x655 (_24 ?x62 var1 time)))
 (=> (and $x655 $x63) (_25 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x658)))))
 )
(assert
 (forall ((time Int) )(let (($x662 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x655 (_24 ?x62 var1 time)))
 (let (($x648 (and $x655 $x73)))
 (=> $x648 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x662)))))
 )
(assert
 (forall ((time Int) )(let (($x682 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x679 (_25 ?x62 var1 time)))
 (=> (and $x679 $x63) (_26 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x682)))))
 )
(assert
 (forall ((time Int) )(let (($x686 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x679 (_25 ?x62 var1 time)))
 (let (($x672 (and $x679 $x73)))
 (=> $x672 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x686)))))
 )
(assert
 (forall ((time Int) )(let (($x706 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x703 (_26 ?x62 var1 time)))
 (=> (and $x703 $x63) (_27 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x706)))))
 )
(assert
 (forall ((time Int) )(let (($x710 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x703 (_26 ?x62 var1 time)))
 (let (($x696 (and $x703 $x73)))
 (=> $x696 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x710)))))
 )
(assert
 (forall ((time Int) )(let (($x730 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x727 (_27 ?x62 var1 time)))
 (=> (and $x727 $x63) (_28 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x730)))))
 )
(assert
 (forall ((time Int) )(let (($x734 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x727 (_27 ?x62 var1 time)))
 (let (($x720 (and $x727 $x73)))
 (=> $x720 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x734)))))
 )
(assert
 (forall ((time Int) )(let (($x754 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x751 (_28 ?x62 var1 time)))
 (=> (and $x751 $x63) (_29 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x754)))))
 )
(assert
 (forall ((time Int) )(let (($x758 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x751 (_28 ?x62 var1 time)))
 (let (($x744 (and $x751 $x73)))
 (=> $x744 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x758)))))
 )
(assert
 (forall ((time Int) )(let (($x778 (forall ((var1 Int) )(let ((?x62 (input-arg0 time)))
 (let (($x63 (and (distinct ?x62 0) true)))
 (let (($x775 (_29 ?x62 var1 time)))
 (=> (and $x775 $x63) (_30 (input-arg0 (+ time 1)) (+ var1 1) (+ time 1)))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x778)))))
 )
(assert
 (forall ((time Int) )(let (($x782 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x775 (_29 ?x62 var1 time)))
 (let (($x768 (and $x775 $x73)))
 (=> $x768 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x782)))))
 )
(assert
 (forall ((time Int) )(let (($x782 (forall ((var1 Int) )(let ((?x59 (+ time 1)))
 (let ((?x60 (input-arg0 ?x59)))
 (let (($x57 (ERR ?x60 var1 ?x59)))
 (let ((?x62 (input-arg0 time)))
 (let (($x73 (= ?x62 1)))
 (let (($x775 (_29 ?x62 var1 time)))
 (let (($x768 (and $x775 $x73)))
 (=> $x768 $x57)))))))))
 ))
 (let (($x69 (>= time 0)))
 (let (($x70 (and $x69 (< time 40))))
 (=> $x70 $x782)))))
 )
(check-sat)
