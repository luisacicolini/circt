(set-logic HORN)
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
(declare-fun _121 (Int Int) Bool)
(declare-fun _122 (Int Int) Bool)
(declare-fun _123 (Int Int) Bool)
(declare-fun _124 (Int Int) Bool)
(declare-fun _125 (Int Int) Bool)
(declare-fun _126 (Int Int) Bool)
(declare-fun _127 (Int Int) Bool)
(declare-fun _128 (Int Int) Bool)
(declare-fun _129 (Int Int) Bool)
(declare-fun _130 (Int Int) Bool)
(declare-fun _131 (Int Int) Bool)
(declare-fun _132 (Int Int) Bool)
(declare-fun _133 (Int Int) Bool)
(declare-fun _134 (Int Int) Bool)
(declare-fun _135 (Int Int) Bool)
(declare-fun _136 (Int Int) Bool)
(declare-fun _137 (Int Int) Bool)
(declare-fun _138 (Int Int) Bool)
(declare-fun _139 (Int Int) Bool)
(declare-fun _140 (Int Int) Bool)
(assert (forall ((var0 Int) (time Int)) (! (=> (= time 0) (_0 0 time)) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_0 var0 time) (_1 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_1 var0 time) (_2 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_2 var0 time) (_3 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_3 var0 time) (_4 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_4 var0 time) (_5 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_5 var0 time) (_6 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_6 var0 time) (_7 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_7 var0 time) (_8 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_8 var0 time) (_9 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_9 var0 time) (_10 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_10 var0 time) (_11 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_11 var0 time) (_12 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_12 var0 time) (_13 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_13 var0 time) (_14 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_14 var0 time) (_15 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_15 var0 time) (_16 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_16 var0 time) (_17 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_17 var0 time) (_18 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_18 var0 time) (_19 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_19 var0 time) (_20 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_20 var0 time) (_21 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_21 var0 time) (_22 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_22 var0 time) (_23 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_23 var0 time) (_24 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_24 var0 time) (_25 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_25 var0 time) (_26 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_26 var0 time) (_27 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_27 var0 time) (_28 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_28 var0 time) (_29 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_29 var0 time) (_30 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_30 var0 time) (_31 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_31 var0 time) (_32 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_32 var0 time) (_33 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_33 var0 time) (_34 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_34 var0 time) (_35 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_35 var0 time) (_36 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_36 var0 time) (_37 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_37 var0 time) (_38 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_38 var0 time) (_39 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_39 var0 time) (_40 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_40 var0 time) (_41 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_41 var0 time) (_42 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_42 var0 time) (_43 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_43 var0 time) (_44 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_44 var0 time) (_45 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_45 var0 time) (_46 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_46 var0 time) (_47 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_47 var0 time) (_48 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_48 var0 time) (_49 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_49 var0 time) (_50 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_50 var0 time) (_51 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_51 var0 time) (_52 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_52 var0 time) (_53 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_53 var0 time) (_54 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_54 var0 time) (_55 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_55 var0 time) (_56 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_56 var0 time) (_57 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_57 var0 time) (_58 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_58 var0 time) (_59 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_59 var0 time) (_60 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_60 var0 time) (_61 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_61 var0 time) (_62 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_62 var0 time) (_63 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_63 var0 time) (_64 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_64 var0 time) (_65 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_65 var0 time) (_66 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_66 var0 time) (_67 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_67 var0 time) (_68 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_68 var0 time) (_69 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_69 var0 time) (_70 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_70 var0 time) (_71 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_71 var0 time) (_72 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_72 var0 time) (_73 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_73 var0 time) (_74 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_74 var0 time) (_75 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_75 var0 time) (_76 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_76 var0 time) (_77 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_77 var0 time) (_78 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_78 var0 time) (_79 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_79 var0 time) (_80 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_80 var0 time) (_81 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_81 var0 time) (_82 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_82 var0 time) (_83 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_83 var0 time) (_84 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_84 var0 time) (_85 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_85 var0 time) (_86 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_86 var0 time) (_87 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_87 var0 time) (_88 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_88 var0 time) (_89 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_89 var0 time) (_90 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_90 var0 time) (_91 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_91 var0 time) (_92 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_92 var0 time) (_93 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_93 var0 time) (_94 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_94 var0 time) (_95 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_95 var0 time) (_96 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_96 var0 time) (_97 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_97 var0 time) (_98 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_98 var0 time) (_99 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_99 var0 time) (_100 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_100 var0 time) (_101 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_101 var0 time) (_102 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_102 var0 time) (_103 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_103 var0 time) (_104 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_104 var0 time) (_105 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_105 var0 time) (_106 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_106 var0 time) (_107 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_107 var0 time) (_108 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_108 var0 time) (_109 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_109 var0 time) (_110 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_110 var0 time) (_111 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_111 var0 time) (_112 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_112 var0 time) (_113 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_113 var0 time) (_114 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_114 var0 time) (_115 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_115 var0 time) (_116 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_116 var0 time) (_117 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_117 var0 time) (_118 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_118 var0 time) (_119 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_119 var0 time) (_120 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_120 var0 time) (_121 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_121 var0 time) (_122 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_122 var0 time) (_123 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_123 var0 time) (_124 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_124 var0 time) (_125 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_125 var0 time) (_126 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_126 var0 time) (_127 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_127 var0 time) (_128 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_128 var0 time) (_129 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_129 var0 time) (_130 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_130 var0 time) (_131 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_131 var0 time) (_132 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_132 var0 time) (_133 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_133 var0 time) (_134 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_134 var0 time) (_135 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_135 var0 time) (_136 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_136 var0 time) (_137 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_137 var0 time) (_138 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_138 var0 time) (_139 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int))
  (! (=> (_139 var0 time) (_140 (+ var0 1) (+ time 1))) :weight 0)))
(assert (forall ((var0 Int) (time Int)) (! (=> (_139 var0 time) false) :weight 0)))
(check-sat)
