; 
(set-info :status unknown)
(declare-fun _0 (Int Int) Bool)
(declare-fun _1 (Int Int) Bool)
(declare-fun _2 (Int Int) Bool)
(declare-fun _3 (Int Int) Bool)
(declare-fun _4 (Int Int) Bool)
(declare-fun _5 (Int Int) Bool)
(declare-fun _6 (Int Int) Bool)
(declare-fun _7 (Int Int) Bool)
(declare-fun _8 (Int Int) Bool)
(declare-fun _9 (Int Int) Bool)
(declare-fun _10 (Int Int) Bool)
(push)
(assert
 (forall ((var0 Int) )(_0 0 0))
 )
(check-sat)
(pop)

(push)
(assert
 (forall ((var0 Int) )(_0 0 0))
 )
(assert
 (forall ((time Int) )(let (($x53 (forall ((var0 Int) )(let (($x51 (_0 var0 time)))
 (=> $x51 (_1 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x53)))))
 )
(check-sat)
(pop)

(push)
(assert
 (forall ((var0 Int) )(_0 0 0))
 )
(assert
 (forall ((time Int) )(let (($x53 (forall ((var0 Int) )(let (($x51 (_0 var0 time)))
 (=> $x51 (_1 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x53)))))
 )
 (assert
 (forall ((time Int) )(let (($x74 (forall ((var0 Int) )(let (($x60 (_1 var0 time)))
 (=> $x60 (_2 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x74)))))
 )
(check-sat)
(pop)

(push)
(assert
 (forall ((var0 Int) )(_0 0 0))
 )
(assert
 (forall ((time Int) )(let (($x53 (forall ((var0 Int) )(let (($x51 (_0 var0 time)))
 (=> $x51 (_1 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x53)))))
 )
 (assert
 (forall ((time Int) )(let (($x74 (forall ((var0 Int) )(let (($x60 (_1 var0 time)))
 (=> $x60 (_2 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x74)))))
 )
 (assert
 (forall ((time Int) )(let (($x86 (forall ((var0 Int) )(let (($x78 (_2 var0 time)))
 (=> $x78 (_3 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x86)))))
 )
(check-sat)
(pop)

(push)
(assert
 (forall ((var0 Int) )(_0 0 0))
 )
(assert
 (forall ((time Int) )(let (($x53 (forall ((var0 Int) )(let (($x51 (_0 var0 time)))
 (=> $x51 (_1 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x53)))))
 )
 (assert
 (forall ((time Int) )(let (($x74 (forall ((var0 Int) )(let (($x60 (_1 var0 time)))
 (=> $x60 (_2 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x74)))))
 )
 (assert
 (forall ((time Int) )(let (($x86 (forall ((var0 Int) )(let (($x78 (_2 var0 time)))
 (=> $x78 (_3 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x86)))))
 )
 (assert
 (forall ((time Int) )(let (($x98 (forall ((var0 Int) )(let (($x90 (_3 var0 time)))
 (=> $x90 (_4 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x98)))))
 )
(check-sat)
(pop)

(push)
(assert
 (forall ((var0 Int) )(_0 0 0))
 )
(assert
 (forall ((time Int) )(let (($x53 (forall ((var0 Int) )(let (($x51 (_0 var0 time)))
 (=> $x51 (_1 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x53)))))
 )
 (assert
 (forall ((time Int) )(let (($x74 (forall ((var0 Int) )(let (($x60 (_1 var0 time)))
 (=> $x60 (_2 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x74)))))
 )
 (assert
 (forall ((time Int) )(let (($x86 (forall ((var0 Int) )(let (($x78 (_2 var0 time)))
 (=> $x78 (_3 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x86)))))
 )
 (assert
 (forall ((time Int) )(let (($x98 (forall ((var0 Int) )(let (($x90 (_3 var0 time)))
 (=> $x90 (_4 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x98)))))
 )
 (assert
 (forall ((time Int) )(let (($x110 (forall ((var0 Int) )(let (($x102 (_4 var0 time)))
 (=> $x102 (_5 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x110)))))
 )
(check-sat)
(pop)

(push)
(assert
 (forall ((var0 Int) )(_0 0 0))
 )
(assert
 (forall ((time Int) )(let (($x53 (forall ((var0 Int) )(let (($x51 (_0 var0 time)))
 (=> $x51 (_1 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x53)))))
 )
 (assert
 (forall ((time Int) )(let (($x74 (forall ((var0 Int) )(let (($x60 (_1 var0 time)))
 (=> $x60 (_2 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x74)))))
 )
 (assert
 (forall ((time Int) )(let (($x86 (forall ((var0 Int) )(let (($x78 (_2 var0 time)))
 (=> $x78 (_3 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x86)))))
 )
 (assert
 (forall ((time Int) )(let (($x98 (forall ((var0 Int) )(let (($x90 (_3 var0 time)))
 (=> $x90 (_4 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x98)))))
 )
 (assert
 (forall ((time Int) )(let (($x110 (forall ((var0 Int) )(let (($x102 (_4 var0 time)))
 (=> $x102 (_5 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x110)))))
 )
 (assert
 (forall ((time Int) )(let (($x122 (forall ((var0 Int) )(let (($x114 (_5 var0 time)))
 (=> $x114 (_6 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x122)))))
 )
(check-sat)
(pop)



(push)
(assert
 (forall ((var0 Int) )(_0 0 0))
 )
(assert
 (forall ((time Int) )(let (($x53 (forall ((var0 Int) )(let (($x51 (_0 var0 time)))
 (=> $x51 (_1 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x53)))))
 )
 (assert
 (forall ((time Int) )(let (($x74 (forall ((var0 Int) )(let (($x60 (_1 var0 time)))
 (=> $x60 (_2 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x74)))))
 )
 (assert
 (forall ((time Int) )(let (($x86 (forall ((var0 Int) )(let (($x78 (_2 var0 time)))
 (=> $x78 (_3 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x86)))))
 )
 (assert
 (forall ((time Int) )(let (($x98 (forall ((var0 Int) )(let (($x90 (_3 var0 time)))
 (=> $x90 (_4 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x98)))))
 )
 (assert
 (forall ((time Int) )(let (($x110 (forall ((var0 Int) )(let (($x102 (_4 var0 time)))
 (=> $x102 (_5 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x110)))))
 )
 (assert
 (forall ((time Int) )(let (($x122 (forall ((var0 Int) )(let (($x114 (_5 var0 time)))
 (=> $x114 (_6 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x122)))))
 )
 (assert
 (forall ((time Int) )(let (($x134 (forall ((var0 Int) )(let (($x126 (_6 var0 time)))
 (=> $x126 (_7 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x134)))))
 )
(assert
 (forall ((time Int) )(let (($x146 (forall ((var0 Int) )(let (($x138 (_7 var0 time)))
 (=> $x138 (_8 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x146)))))
 )
(check-sat)
(pop)





(push)
(assert
 (forall ((var0 Int) )(_0 0 0))
 )
(assert
 (forall ((time Int) )(let (($x53 (forall ((var0 Int) )(let (($x51 (_0 var0 time)))
 (=> $x51 (_1 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x53)))))
 )
 (assert
 (forall ((time Int) )(let (($x74 (forall ((var0 Int) )(let (($x60 (_1 var0 time)))
 (=> $x60 (_2 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x74)))))
 )
 (assert
 (forall ((time Int) )(let (($x86 (forall ((var0 Int) )(let (($x78 (_2 var0 time)))
 (=> $x78 (_3 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x86)))))
 )
 (assert
 (forall ((time Int) )(let (($x98 (forall ((var0 Int) )(let (($x90 (_3 var0 time)))
 (=> $x90 (_4 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x98)))))
 )
 (assert
 (forall ((time Int) )(let (($x110 (forall ((var0 Int) )(let (($x102 (_4 var0 time)))
 (=> $x102 (_5 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x110)))))
 )
 (assert
 (forall ((time Int) )(let (($x122 (forall ((var0 Int) )(let (($x114 (_5 var0 time)))
 (=> $x114 (_6 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x122)))))
 )
 (assert
 (forall ((time Int) )(let (($x134 (forall ((var0 Int) )(let (($x126 (_6 var0 time)))
 (=> $x126 (_7 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x134)))))
 )
(assert
 (forall ((time Int) )(let (($x146 (forall ((var0 Int) )(let (($x138 (_7 var0 time)))
 (=> $x138 (_8 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x146)))))
 )

 (assert
 (forall ((time Int) )(let (($x158 (forall ((var0 Int) )(let (($x150 (_8 var0 time)))
 (=> $x150 (_9 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x158)))))
 )
(assert
 (forall ((time Int) )(let (($x170 (forall ((var0 Int) )(let (($x162 (_9 var0 time)))
 (=> $x162 (_10 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x170)))))
 )
(check-sat)
(pop)



(push)
(assert
 (forall ((var0 Int) )(_0 0 0))
 )
(assert
 (forall ((time Int) )(let (($x53 (forall ((var0 Int) )(let (($x51 (_0 var0 time)))
 (=> $x51 (_1 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x53)))))
 )
 (assert
 (forall ((time Int) )(let (($x74 (forall ((var0 Int) )(let (($x60 (_1 var0 time)))
 (=> $x60 (_2 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x74)))))
 )
 (assert
 (forall ((time Int) )(let (($x86 (forall ((var0 Int) )(let (($x78 (_2 var0 time)))
 (=> $x78 (_3 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x86)))))
 )
 (assert
 (forall ((time Int) )(let (($x98 (forall ((var0 Int) )(let (($x90 (_3 var0 time)))
 (=> $x90 (_4 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x98)))))
 )
 (assert
 (forall ((time Int) )(let (($x110 (forall ((var0 Int) )(let (($x102 (_4 var0 time)))
 (=> $x102 (_5 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x110)))))
 )
 (assert
 (forall ((time Int) )(let (($x122 (forall ((var0 Int) )(let (($x114 (_5 var0 time)))
 (=> $x114 (_6 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x122)))))
 )
 (assert
 (forall ((time Int) )(let (($x134 (forall ((var0 Int) )(let (($x126 (_6 var0 time)))
 (=> $x126 (_7 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x134)))))
 )
(assert
 (forall ((time Int) )(let (($x146 (forall ((var0 Int) )(let (($x138 (_7 var0 time)))
 (=> $x138 (_8 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x146)))))
 )

 (assert
 (forall ((time Int) )(let (($x158 (forall ((var0 Int) )(let (($x150 (_8 var0 time)))
 (=> $x150 (_9 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x158)))))
 )
(assert
 (forall ((time Int) )(let (($x170 (forall ((var0 Int) )(let (($x162 (_9 var0 time)))
 (=> $x162 (_10 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x170)))))
 )
 (assert
 (forall ((time Int) )(let (($x43 (forall ((var0 Int) )(let (($x162 (_9 var0 time)))
 (not $x162)))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 20))))
 (=> $x56 $x43)))))
 )
(check-sat)

(check-sat)
(pop)
