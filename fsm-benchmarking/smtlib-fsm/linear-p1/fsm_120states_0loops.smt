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
(declare-fun _11 (Int Int) Bool)
(declare-fun _12 (Int Int) Bool)
(declare-fun _13 (Int Int) Bool)
(declare-fun _14 (Int Int) Bool)
(declare-fun _15 (Int Int) Bool)
(declare-fun _16 (Int Int) Bool)
(declare-fun _17 (Int Int) Bool)
(declare-fun _18 (Int Int) Bool)
(declare-fun _19 (Int Int) Bool)
(declare-fun _20 (Int Int) Bool)
(declare-fun _21 (Int Int) Bool)
(declare-fun _22 (Int Int) Bool)
(declare-fun _23 (Int Int) Bool)
(declare-fun _24 (Int Int) Bool)
(declare-fun _25 (Int Int) Bool)
(declare-fun _26 (Int Int) Bool)
(declare-fun _27 (Int Int) Bool)
(declare-fun _28 (Int Int) Bool)
(declare-fun _29 (Int Int) Bool)
(declare-fun _30 (Int Int) Bool)
(declare-fun _31 (Int Int) Bool)
(declare-fun _32 (Int Int) Bool)
(declare-fun _33 (Int Int) Bool)
(declare-fun _34 (Int Int) Bool)
(declare-fun _35 (Int Int) Bool)
(declare-fun _36 (Int Int) Bool)
(declare-fun _37 (Int Int) Bool)
(declare-fun _38 (Int Int) Bool)
(declare-fun _39 (Int Int) Bool)
(declare-fun _40 (Int Int) Bool)
(declare-fun _41 (Int Int) Bool)
(declare-fun _42 (Int Int) Bool)
(declare-fun _43 (Int Int) Bool)
(declare-fun _44 (Int Int) Bool)
(declare-fun _45 (Int Int) Bool)
(declare-fun _46 (Int Int) Bool)
(declare-fun _47 (Int Int) Bool)
(declare-fun _48 (Int Int) Bool)
(declare-fun _49 (Int Int) Bool)
(declare-fun _50 (Int Int) Bool)
(declare-fun _51 (Int Int) Bool)
(declare-fun _52 (Int Int) Bool)
(declare-fun _53 (Int Int) Bool)
(declare-fun _54 (Int Int) Bool)
(declare-fun _55 (Int Int) Bool)
(declare-fun _56 (Int Int) Bool)
(declare-fun _57 (Int Int) Bool)
(declare-fun _58 (Int Int) Bool)
(declare-fun _59 (Int Int) Bool)
(declare-fun _60 (Int Int) Bool)
(declare-fun _61 (Int Int) Bool)
(declare-fun _62 (Int Int) Bool)
(declare-fun _63 (Int Int) Bool)
(declare-fun _64 (Int Int) Bool)
(declare-fun _65 (Int Int) Bool)
(declare-fun _66 (Int Int) Bool)
(declare-fun _67 (Int Int) Bool)
(declare-fun _68 (Int Int) Bool)
(declare-fun _69 (Int Int) Bool)
(declare-fun _70 (Int Int) Bool)
(declare-fun _71 (Int Int) Bool)
(declare-fun _72 (Int Int) Bool)
(declare-fun _73 (Int Int) Bool)
(declare-fun _74 (Int Int) Bool)
(declare-fun _75 (Int Int) Bool)
(declare-fun _76 (Int Int) Bool)
(declare-fun _77 (Int Int) Bool)
(declare-fun _78 (Int Int) Bool)
(declare-fun _79 (Int Int) Bool)
(declare-fun _80 (Int Int) Bool)
(declare-fun _81 (Int Int) Bool)
(declare-fun _82 (Int Int) Bool)
(declare-fun _83 (Int Int) Bool)
(declare-fun _84 (Int Int) Bool)
(declare-fun _85 (Int Int) Bool)
(declare-fun _86 (Int Int) Bool)
(declare-fun _87 (Int Int) Bool)
(declare-fun _88 (Int Int) Bool)
(declare-fun _89 (Int Int) Bool)
(declare-fun _90 (Int Int) Bool)
(declare-fun _91 (Int Int) Bool)
(declare-fun _92 (Int Int) Bool)
(declare-fun _93 (Int Int) Bool)
(declare-fun _94 (Int Int) Bool)
(declare-fun _95 (Int Int) Bool)
(declare-fun _96 (Int Int) Bool)
(declare-fun _97 (Int Int) Bool)
(declare-fun _98 (Int Int) Bool)
(declare-fun _99 (Int Int) Bool)
(declare-fun _100 (Int Int) Bool)
(declare-fun _101 (Int Int) Bool)
(declare-fun _102 (Int Int) Bool)
(declare-fun _103 (Int Int) Bool)
(declare-fun _104 (Int Int) Bool)
(declare-fun _105 (Int Int) Bool)
(declare-fun _106 (Int Int) Bool)
(declare-fun _107 (Int Int) Bool)
(declare-fun _108 (Int Int) Bool)
(declare-fun _109 (Int Int) Bool)
(declare-fun _110 (Int Int) Bool)
(declare-fun _111 (Int Int) Bool)
(declare-fun _112 (Int Int) Bool)
(declare-fun _113 (Int Int) Bool)
(declare-fun _114 (Int Int) Bool)
(declare-fun _115 (Int Int) Bool)
(declare-fun _116 (Int Int) Bool)
(declare-fun _117 (Int Int) Bool)
(declare-fun _118 (Int Int) Bool)
(declare-fun _119 (Int Int) Bool)
(declare-fun _120 (Int Int) Bool)
(assert
 (forall ((var0 Int) )(_0 0 0))
 )
(assert
 (forall ((time Int) )(let (($x53 (forall ((var0 Int) )(let (($x51 (_0 var0 time)))
 (=> $x51 (_1 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x53)))))
 )
(assert
 (forall ((time Int) )(let (($x74 (forall ((var0 Int) )(let (($x60 (_1 var0 time)))
 (=> $x60 (_2 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x74)))))
 )
(assert
 (forall ((time Int) )(let (($x86 (forall ((var0 Int) )(let (($x78 (_2 var0 time)))
 (=> $x78 (_3 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x86)))))
 )
(assert
 (forall ((time Int) )(let (($x98 (forall ((var0 Int) )(let (($x90 (_3 var0 time)))
 (=> $x90 (_4 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x98)))))
 )
(assert
 (forall ((time Int) )(let (($x110 (forall ((var0 Int) )(let (($x102 (_4 var0 time)))
 (=> $x102 (_5 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x110)))))
 )
(assert
 (forall ((time Int) )(let (($x122 (forall ((var0 Int) )(let (($x114 (_5 var0 time)))
 (=> $x114 (_6 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x122)))))
 )
(assert
 (forall ((time Int) )(let (($x134 (forall ((var0 Int) )(let (($x126 (_6 var0 time)))
 (=> $x126 (_7 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x134)))))
 )
(assert
 (forall ((time Int) )(let (($x146 (forall ((var0 Int) )(let (($x138 (_7 var0 time)))
 (=> $x138 (_8 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x146)))))
 )
(assert
 (forall ((time Int) )(let (($x158 (forall ((var0 Int) )(let (($x150 (_8 var0 time)))
 (=> $x150 (_9 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x158)))))
 )
(assert
 (forall ((time Int) )(let (($x170 (forall ((var0 Int) )(let (($x162 (_9 var0 time)))
 (=> $x162 (_10 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x170)))))
 )
(assert
 (forall ((time Int) )(let (($x182 (forall ((var0 Int) )(let (($x174 (_10 var0 time)))
 (=> $x174 (_11 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x182)))))
 )
(assert
 (forall ((time Int) )(let (($x194 (forall ((var0 Int) )(let (($x186 (_11 var0 time)))
 (=> $x186 (_12 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x194)))))
 )
(assert
 (forall ((time Int) )(let (($x206 (forall ((var0 Int) )(let (($x198 (_12 var0 time)))
 (=> $x198 (_13 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x206)))))
 )
(assert
 (forall ((time Int) )(let (($x218 (forall ((var0 Int) )(let (($x210 (_13 var0 time)))
 (=> $x210 (_14 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x218)))))
 )
(assert
 (forall ((time Int) )(let (($x230 (forall ((var0 Int) )(let (($x222 (_14 var0 time)))
 (=> $x222 (_15 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x230)))))
 )
(assert
 (forall ((time Int) )(let (($x242 (forall ((var0 Int) )(let (($x234 (_15 var0 time)))
 (=> $x234 (_16 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x242)))))
 )
(assert
 (forall ((time Int) )(let (($x254 (forall ((var0 Int) )(let (($x246 (_16 var0 time)))
 (=> $x246 (_17 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x254)))))
 )
(assert
 (forall ((time Int) )(let (($x266 (forall ((var0 Int) )(let (($x258 (_17 var0 time)))
 (=> $x258 (_18 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x266)))))
 )
(assert
 (forall ((time Int) )(let (($x278 (forall ((var0 Int) )(let (($x270 (_18 var0 time)))
 (=> $x270 (_19 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x278)))))
 )
(assert
 (forall ((time Int) )(let (($x290 (forall ((var0 Int) )(let (($x282 (_19 var0 time)))
 (=> $x282 (_20 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x290)))))
 )
(assert
 (forall ((time Int) )(let (($x302 (forall ((var0 Int) )(let (($x294 (_20 var0 time)))
 (=> $x294 (_21 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x302)))))
 )
(assert
 (forall ((time Int) )(let (($x314 (forall ((var0 Int) )(let (($x306 (_21 var0 time)))
 (=> $x306 (_22 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x314)))))
 )
(assert
 (forall ((time Int) )(let (($x326 (forall ((var0 Int) )(let (($x318 (_22 var0 time)))
 (=> $x318 (_23 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x326)))))
 )
(assert
 (forall ((time Int) )(let (($x338 (forall ((var0 Int) )(let (($x330 (_23 var0 time)))
 (=> $x330 (_24 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x338)))))
 )
(assert
 (forall ((time Int) )(let (($x350 (forall ((var0 Int) )(let (($x342 (_24 var0 time)))
 (=> $x342 (_25 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x350)))))
 )
(assert
 (forall ((time Int) )(let (($x362 (forall ((var0 Int) )(let (($x354 (_25 var0 time)))
 (=> $x354 (_26 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x362)))))
 )
(assert
 (forall ((time Int) )(let (($x374 (forall ((var0 Int) )(let (($x366 (_26 var0 time)))
 (=> $x366 (_27 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x374)))))
 )
(assert
 (forall ((time Int) )(let (($x386 (forall ((var0 Int) )(let (($x378 (_27 var0 time)))
 (=> $x378 (_28 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x386)))))
 )
(assert
 (forall ((time Int) )(let (($x398 (forall ((var0 Int) )(let (($x390 (_28 var0 time)))
 (=> $x390 (_29 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x398)))))
 )
(assert
 (forall ((time Int) )(let (($x410 (forall ((var0 Int) )(let (($x402 (_29 var0 time)))
 (=> $x402 (_30 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x410)))))
 )
(assert
 (forall ((time Int) )(let (($x422 (forall ((var0 Int) )(let (($x414 (_30 var0 time)))
 (=> $x414 (_31 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x422)))))
 )
(assert
 (forall ((time Int) )(let (($x434 (forall ((var0 Int) )(let (($x426 (_31 var0 time)))
 (=> $x426 (_32 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x434)))))
 )
(assert
 (forall ((time Int) )(let (($x446 (forall ((var0 Int) )(let (($x438 (_32 var0 time)))
 (=> $x438 (_33 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x446)))))
 )
(assert
 (forall ((time Int) )(let (($x458 (forall ((var0 Int) )(let (($x450 (_33 var0 time)))
 (=> $x450 (_34 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x458)))))
 )
(assert
 (forall ((time Int) )(let (($x470 (forall ((var0 Int) )(let (($x462 (_34 var0 time)))
 (=> $x462 (_35 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x470)))))
 )
(assert
 (forall ((time Int) )(let (($x482 (forall ((var0 Int) )(let (($x474 (_35 var0 time)))
 (=> $x474 (_36 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x482)))))
 )
(assert
 (forall ((time Int) )(let (($x494 (forall ((var0 Int) )(let (($x486 (_36 var0 time)))
 (=> $x486 (_37 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x494)))))
 )
(assert
 (forall ((time Int) )(let (($x506 (forall ((var0 Int) )(let (($x498 (_37 var0 time)))
 (=> $x498 (_38 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x506)))))
 )
(assert
 (forall ((time Int) )(let (($x518 (forall ((var0 Int) )(let (($x510 (_38 var0 time)))
 (=> $x510 (_39 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x518)))))
 )
(assert
 (forall ((time Int) )(let (($x530 (forall ((var0 Int) )(let (($x522 (_39 var0 time)))
 (=> $x522 (_40 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x530)))))
 )
(assert
 (forall ((time Int) )(let (($x542 (forall ((var0 Int) )(let (($x534 (_40 var0 time)))
 (=> $x534 (_41 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x542)))))
 )
(assert
 (forall ((time Int) )(let (($x554 (forall ((var0 Int) )(let (($x546 (_41 var0 time)))
 (=> $x546 (_42 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x554)))))
 )
(assert
 (forall ((time Int) )(let (($x566 (forall ((var0 Int) )(let (($x558 (_42 var0 time)))
 (=> $x558 (_43 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x566)))))
 )
(assert
 (forall ((time Int) )(let (($x578 (forall ((var0 Int) )(let (($x570 (_43 var0 time)))
 (=> $x570 (_44 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x578)))))
 )
(assert
 (forall ((time Int) )(let (($x590 (forall ((var0 Int) )(let (($x582 (_44 var0 time)))
 (=> $x582 (_45 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x590)))))
 )
(assert
 (forall ((time Int) )(let (($x602 (forall ((var0 Int) )(let (($x594 (_45 var0 time)))
 (=> $x594 (_46 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x602)))))
 )
(assert
 (forall ((time Int) )(let (($x614 (forall ((var0 Int) )(let (($x606 (_46 var0 time)))
 (=> $x606 (_47 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x614)))))
 )
(assert
 (forall ((time Int) )(let (($x626 (forall ((var0 Int) )(let (($x618 (_47 var0 time)))
 (=> $x618 (_48 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x626)))))
 )
(assert
 (forall ((time Int) )(let (($x638 (forall ((var0 Int) )(let (($x630 (_48 var0 time)))
 (=> $x630 (_49 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x638)))))
 )
(assert
 (forall ((time Int) )(let (($x650 (forall ((var0 Int) )(let (($x642 (_49 var0 time)))
 (=> $x642 (_50 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x650)))))
 )
(assert
 (forall ((time Int) )(let (($x662 (forall ((var0 Int) )(let (($x654 (_50 var0 time)))
 (=> $x654 (_51 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x662)))))
 )
(assert
 (forall ((time Int) )(let (($x674 (forall ((var0 Int) )(let (($x666 (_51 var0 time)))
 (=> $x666 (_52 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x674)))))
 )
(assert
 (forall ((time Int) )(let (($x686 (forall ((var0 Int) )(let (($x678 (_52 var0 time)))
 (=> $x678 (_53 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x686)))))
 )
(assert
 (forall ((time Int) )(let (($x698 (forall ((var0 Int) )(let (($x690 (_53 var0 time)))
 (=> $x690 (_54 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x698)))))
 )
(assert
 (forall ((time Int) )(let (($x710 (forall ((var0 Int) )(let (($x702 (_54 var0 time)))
 (=> $x702 (_55 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x710)))))
 )
(assert
 (forall ((time Int) )(let (($x722 (forall ((var0 Int) )(let (($x714 (_55 var0 time)))
 (=> $x714 (_56 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x722)))))
 )
(assert
 (forall ((time Int) )(let (($x734 (forall ((var0 Int) )(let (($x726 (_56 var0 time)))
 (=> $x726 (_57 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x734)))))
 )
(assert
 (forall ((time Int) )(let (($x746 (forall ((var0 Int) )(let (($x738 (_57 var0 time)))
 (=> $x738 (_58 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x746)))))
 )
(assert
 (forall ((time Int) )(let (($x758 (forall ((var0 Int) )(let (($x750 (_58 var0 time)))
 (=> $x750 (_59 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x758)))))
 )
(assert
 (forall ((time Int) )(let (($x770 (forall ((var0 Int) )(let (($x762 (_59 var0 time)))
 (=> $x762 (_60 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x770)))))
 )
(assert
 (forall ((time Int) )(let (($x782 (forall ((var0 Int) )(let (($x774 (_60 var0 time)))
 (=> $x774 (_61 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x782)))))
 )
(assert
 (forall ((time Int) )(let (($x794 (forall ((var0 Int) )(let (($x786 (_61 var0 time)))
 (=> $x786 (_62 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x794)))))
 )
(assert
 (forall ((time Int) )(let (($x806 (forall ((var0 Int) )(let (($x798 (_62 var0 time)))
 (=> $x798 (_63 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x806)))))
 )
(assert
 (forall ((time Int) )(let (($x818 (forall ((var0 Int) )(let (($x810 (_63 var0 time)))
 (=> $x810 (_64 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x818)))))
 )
(assert
 (forall ((time Int) )(let (($x830 (forall ((var0 Int) )(let (($x822 (_64 var0 time)))
 (=> $x822 (_65 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x830)))))
 )
(assert
 (forall ((time Int) )(let (($x842 (forall ((var0 Int) )(let (($x834 (_65 var0 time)))
 (=> $x834 (_66 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x842)))))
 )
(assert
 (forall ((time Int) )(let (($x854 (forall ((var0 Int) )(let (($x846 (_66 var0 time)))
 (=> $x846 (_67 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x854)))))
 )
(assert
 (forall ((time Int) )(let (($x866 (forall ((var0 Int) )(let (($x858 (_67 var0 time)))
 (=> $x858 (_68 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x866)))))
 )
(assert
 (forall ((time Int) )(let (($x878 (forall ((var0 Int) )(let (($x870 (_68 var0 time)))
 (=> $x870 (_69 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x878)))))
 )
(assert
 (forall ((time Int) )(let (($x890 (forall ((var0 Int) )(let (($x882 (_69 var0 time)))
 (=> $x882 (_70 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x890)))))
 )
(assert
 (forall ((time Int) )(let (($x902 (forall ((var0 Int) )(let (($x894 (_70 var0 time)))
 (=> $x894 (_71 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x902)))))
 )
(assert
 (forall ((time Int) )(let (($x914 (forall ((var0 Int) )(let (($x906 (_71 var0 time)))
 (=> $x906 (_72 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x914)))))
 )
(assert
 (forall ((time Int) )(let (($x926 (forall ((var0 Int) )(let (($x918 (_72 var0 time)))
 (=> $x918 (_73 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x926)))))
 )
(assert
 (forall ((time Int) )(let (($x938 (forall ((var0 Int) )(let (($x930 (_73 var0 time)))
 (=> $x930 (_74 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x938)))))
 )
(assert
 (forall ((time Int) )(let (($x950 (forall ((var0 Int) )(let (($x942 (_74 var0 time)))
 (=> $x942 (_75 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x950)))))
 )
(assert
 (forall ((time Int) )(let (($x962 (forall ((var0 Int) )(let (($x954 (_75 var0 time)))
 (=> $x954 (_76 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x962)))))
 )
(assert
 (forall ((time Int) )(let (($x974 (forall ((var0 Int) )(let (($x966 (_76 var0 time)))
 (=> $x966 (_77 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x974)))))
 )
(assert
 (forall ((time Int) )(let (($x986 (forall ((var0 Int) )(let (($x978 (_77 var0 time)))
 (=> $x978 (_78 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x986)))))
 )
(assert
 (forall ((time Int) )(let (($x998 (forall ((var0 Int) )(let (($x990 (_78 var0 time)))
 (=> $x990 (_79 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x998)))))
 )
(assert
 (forall ((time Int) )(let (($x1010 (forall ((var0 Int) )(let (($x1002 (_79 var0 time)))
 (=> $x1002 (_80 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1010)))))
 )
(assert
 (forall ((time Int) )(let (($x1022 (forall ((var0 Int) )(let (($x1014 (_80 var0 time)))
 (=> $x1014 (_81 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1022)))))
 )
(assert
 (forall ((time Int) )(let (($x1034 (forall ((var0 Int) )(let (($x1026 (_81 var0 time)))
 (=> $x1026 (_82 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1034)))))
 )
(assert
 (forall ((time Int) )(let (($x1046 (forall ((var0 Int) )(let (($x1038 (_82 var0 time)))
 (=> $x1038 (_83 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1046)))))
 )
(assert
 (forall ((time Int) )(let (($x1058 (forall ((var0 Int) )(let (($x1050 (_83 var0 time)))
 (=> $x1050 (_84 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1058)))))
 )
(assert
 (forall ((time Int) )(let (($x1070 (forall ((var0 Int) )(let (($x1062 (_84 var0 time)))
 (=> $x1062 (_85 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1070)))))
 )
(assert
 (forall ((time Int) )(let (($x1082 (forall ((var0 Int) )(let (($x1074 (_85 var0 time)))
 (=> $x1074 (_86 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1082)))))
 )
(assert
 (forall ((time Int) )(let (($x1094 (forall ((var0 Int) )(let (($x1086 (_86 var0 time)))
 (=> $x1086 (_87 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1094)))))
 )
(assert
 (forall ((time Int) )(let (($x1106 (forall ((var0 Int) )(let (($x1098 (_87 var0 time)))
 (=> $x1098 (_88 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1106)))))
 )
(assert
 (forall ((time Int) )(let (($x1118 (forall ((var0 Int) )(let (($x1110 (_88 var0 time)))
 (=> $x1110 (_89 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1118)))))
 )
(assert
 (forall ((time Int) )(let (($x1130 (forall ((var0 Int) )(let (($x1122 (_89 var0 time)))
 (=> $x1122 (_90 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1130)))))
 )
(assert
 (forall ((time Int) )(let (($x1142 (forall ((var0 Int) )(let (($x1134 (_90 var0 time)))
 (=> $x1134 (_91 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1142)))))
 )
(assert
 (forall ((time Int) )(let (($x1154 (forall ((var0 Int) )(let (($x1146 (_91 var0 time)))
 (=> $x1146 (_92 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1154)))))
 )
(assert
 (forall ((time Int) )(let (($x1166 (forall ((var0 Int) )(let (($x1158 (_92 var0 time)))
 (=> $x1158 (_93 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1166)))))
 )
(assert
 (forall ((time Int) )(let (($x1178 (forall ((var0 Int) )(let (($x1170 (_93 var0 time)))
 (=> $x1170 (_94 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1178)))))
 )
(assert
 (forall ((time Int) )(let (($x1190 (forall ((var0 Int) )(let (($x1182 (_94 var0 time)))
 (=> $x1182 (_95 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1190)))))
 )
(assert
 (forall ((time Int) )(let (($x1202 (forall ((var0 Int) )(let (($x1194 (_95 var0 time)))
 (=> $x1194 (_96 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1202)))))
 )
(assert
 (forall ((time Int) )(let (($x1214 (forall ((var0 Int) )(let (($x1206 (_96 var0 time)))
 (=> $x1206 (_97 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1214)))))
 )
(assert
 (forall ((time Int) )(let (($x1226 (forall ((var0 Int) )(let (($x1218 (_97 var0 time)))
 (=> $x1218 (_98 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1226)))))
 )
(assert
 (forall ((time Int) )(let (($x1238 (forall ((var0 Int) )(let (($x1230 (_98 var0 time)))
 (=> $x1230 (_99 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1238)))))
 )
(assert
 (forall ((time Int) )(let (($x1250 (forall ((var0 Int) )(let (($x1242 (_99 var0 time)))
 (=> $x1242 (_100 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1250)))))
 )
(assert
 (forall ((time Int) )(let (($x1262 (forall ((var0 Int) )(let (($x1254 (_100 var0 time)))
 (=> $x1254 (_101 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1262)))))
 )
(assert
 (forall ((time Int) )(let (($x1274 (forall ((var0 Int) )(let (($x1266 (_101 var0 time)))
 (=> $x1266 (_102 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1274)))))
 )
(assert
 (forall ((time Int) )(let (($x1286 (forall ((var0 Int) )(let (($x1278 (_102 var0 time)))
 (=> $x1278 (_103 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1286)))))
 )
(assert
 (forall ((time Int) )(let (($x1298 (forall ((var0 Int) )(let (($x1290 (_103 var0 time)))
 (=> $x1290 (_104 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1298)))))
 )
(assert
 (forall ((time Int) )(let (($x1310 (forall ((var0 Int) )(let (($x1302 (_104 var0 time)))
 (=> $x1302 (_105 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1310)))))
 )
(assert
 (forall ((time Int) )(let (($x1322 (forall ((var0 Int) )(let (($x1314 (_105 var0 time)))
 (=> $x1314 (_106 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1322)))))
 )
(assert
 (forall ((time Int) )(let (($x1334 (forall ((var0 Int) )(let (($x1326 (_106 var0 time)))
 (=> $x1326 (_107 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1334)))))
 )
(assert
 (forall ((time Int) )(let (($x1346 (forall ((var0 Int) )(let (($x1338 (_107 var0 time)))
 (=> $x1338 (_108 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1346)))))
 )
(assert
 (forall ((time Int) )(let (($x1358 (forall ((var0 Int) )(let (($x1350 (_108 var0 time)))
 (=> $x1350 (_109 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1358)))))
 )
(assert
 (forall ((time Int) )(let (($x1370 (forall ((var0 Int) )(let (($x1362 (_109 var0 time)))
 (=> $x1362 (_110 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1370)))))
 )
(assert
 (forall ((time Int) )(let (($x1382 (forall ((var0 Int) )(let (($x1374 (_110 var0 time)))
 (=> $x1374 (_111 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1382)))))
 )
(assert
 (forall ((time Int) )(let (($x1394 (forall ((var0 Int) )(let (($x1386 (_111 var0 time)))
 (=> $x1386 (_112 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1394)))))
 )
(assert
 (forall ((time Int) )(let (($x1406 (forall ((var0 Int) )(let (($x1398 (_112 var0 time)))
 (=> $x1398 (_113 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1406)))))
 )
(assert
 (forall ((time Int) )(let (($x1418 (forall ((var0 Int) )(let (($x1410 (_113 var0 time)))
 (=> $x1410 (_114 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1418)))))
 )
(assert
 (forall ((time Int) )(let (($x1430 (forall ((var0 Int) )(let (($x1422 (_114 var0 time)))
 (=> $x1422 (_115 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1430)))))
 )
(assert
 (forall ((time Int) )(let (($x1442 (forall ((var0 Int) )(let (($x1434 (_115 var0 time)))
 (=> $x1434 (_116 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1442)))))
 )
(assert
 (forall ((time Int) )(let (($x1454 (forall ((var0 Int) )(let (($x1446 (_116 var0 time)))
 (=> $x1446 (_117 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1454)))))
 )
(assert
 (forall ((time Int) )(let (($x1466 (forall ((var0 Int) )(let (($x1458 (_117 var0 time)))
 (=> $x1458 (_118 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1466)))))
 )
(assert
 (forall ((time Int) )(let (($x1478 (forall ((var0 Int) )(let (($x1470 (_118 var0 time)))
 (=> $x1470 (_119 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1478)))))
 )
(assert
 (forall ((time Int) )(let (($x1490 (forall ((var0 Int) )(let (($x1482 (_119 var0 time)))
 (=> $x1482 (_120 (+ var0 1) (+ time 1)))))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1490)))))
 )
(assert
 (forall ((time Int) )(let (($x1851 (forall ((var0 Int) )(let (($x1482 (_119 var0 time)))
 (not $x1482)))
 ))
 (let (($x55 (>= time 0)))
 (let (($x56 (and $x55 (< time 130))))
 (=> $x56 $x1851)))))
 )
(check-sat)
