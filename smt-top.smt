(set-logic HORN)
(declare-fun t01 (Int Int) Bool)
(declare-fun t12 (Int Int) Bool)
(declare-fun t23 (Int Int) Bool)
(declare-fun t22 (Int Int) Bool)
(declare-fun t31 (Int Int) Bool)
(declare-fun t32 (Int Int) Bool)
(assert (forall ((tmp Int) (tmp_0 Int) (tmp_1 Int))
        (=> (= tmp_1 -1) (t01 tmp tmp_1))))
(assert (forall ((tmp_2 Int) (tmp_3 Int) (tmp_4 Int))
        (=> (and (and (t01 tmp_2 tmp_4) true) true) (t12 tmp_3 (+ tmp_4 1)))))
(assert (forall ((tmp_5 Int) (tmp_6 Int) (tmp_7 Int))
        (=> (and (and (t12 tmp_5 tmp_7) true) (= tmp_6 1)) (t23 tmp_6 (+ tmp_7 1)))))
(assert (forall ((tmp_8 Int) (tmp_9 Int) (tmp_10 Int))
        (=> (and (and (t12 tmp_8 tmp_10) true) (distinct tmp_9 1)) (t22 tmp_9 (+ tmp_10 1)))))
(assert (forall ((tmp_11 Int) (tmp_12 Int) (tmp_13 Int))
        (=> (and (and (t23 tmp_11 tmp_13) (= tmp_11 1)) (= tmp_12 1)) (t31 tmp_12 (+ tmp_13 1)))))
(assert (forall ((tmp_14 Int) (tmp_15 Int) (tmp_16 Int))
        (=> (and (and (t23 tmp_14 tmp_16) (= tmp_14 1)) (distinct tmp_15 1)) (t32 tmp_15 (+ tmp_16 1)))))
(assert (forall ((tmp_17 Int) (tmp_18 Int) (tmp_19 Int))
        (=> (and (and (t22 tmp_17 tmp_19) (distinct tmp_17 1)) (= tmp_18 1)) (t23 tmp_18 (+ tmp_19 1)))))
(assert (forall ((tmp_20 Int) (tmp_21 Int) (tmp_22 Int))
        (=> (and (and (t31 tmp_20 tmp_22) (= tmp_20 1)) true) (t12 tmp_21 (+ tmp_22 1)))))
(assert (forall ((tmp_23 Int) (tmp_24 Int) (tmp_25 Int))
        (=> (and (and (t32 tmp_23 tmp_25) (distinct tmp_23 1)) (= tmp_24 1)) (t23 tmp_24 (+ tmp_25 1)))))
(assert (forall ((tmp_26 Int) (tmp_27 Int) (tmp_28 Int))
        (=> (and (and (t32 tmp_26 tmp_28) (distinct tmp_26 1)) (distinct tmp_27 1)) (t22 tmp_27 (+ tmp_28 1)))))
(assert (forall ((tmp_29 Int) (tmp_30 Int) (tmp_31 Int))
        (=> (t01 tmp_29 tmp_31) (not (t12 tmp_29 tmp_31)))))
(assert (forall ((tmp_32 Int) (tmp_33 Int) (tmp_34 Int))
        (=> (t01 tmp_32 tmp_34) (not (t23 tmp_32 tmp_34)))))
(assert (forall ((tmp_35 Int) (tmp_36 Int) (tmp_37 Int))
        (=> (t01 tmp_35 tmp_37) (not (t22 tmp_35 tmp_37)))))
(assert (forall ((tmp_38 Int) (tmp_39 Int) (tmp_40 Int))
        (=> (t01 tmp_38 tmp_40) (not (t31 tmp_38 tmp_40)))))
(assert (forall ((tmp_41 Int) (tmp_42 Int) (tmp_43 Int))
        (=> (t01 tmp_41 tmp_43) (not (t32 tmp_41 tmp_43)))))
(assert (forall ((tmp_44 Int) (tmp_45 Int) (tmp_46 Int))
        (=> (t12 tmp_44 tmp_46) (not (t01 tmp_44 tmp_46)))))
(assert (forall ((tmp_47 Int) (tmp_48 Int) (tmp_49 Int))
        (=> (t12 tmp_47 tmp_49) (not (t23 tmp_47 tmp_49)))))
(assert (forall ((tmp_50 Int) (tmp_51 Int) (tmp_52 Int))
        (=> (t12 tmp_50 tmp_52) (not (t22 tmp_50 tmp_52)))))
(assert (forall ((tmp_53 Int) (tmp_54 Int) (tmp_55 Int))
        (=> (t12 tmp_53 tmp_55) (not (t31 tmp_53 tmp_55)))))
(assert (forall ((tmp_56 Int) (tmp_57 Int) (tmp_58 Int))
        (=> (t12 tmp_56 tmp_58) (not (t32 tmp_56 tmp_58)))))
(assert (forall ((tmp_59 Int) (tmp_60 Int) (tmp_61 Int))
        (=> (t23 tmp_59 tmp_61) (not (t01 tmp_59 tmp_61)))))
(assert (forall ((tmp_62 Int) (tmp_63 Int) (tmp_64 Int))
        (=> (t23 tmp_62 tmp_64) (not (t12 tmp_62 tmp_64)))))
(assert (forall ((tmp_65 Int) (tmp_66 Int) (tmp_67 Int))
        (=> (t23 tmp_65 tmp_67) (not (t22 tmp_65 tmp_67)))))
(assert (forall ((tmp_68 Int) (tmp_69 Int) (tmp_70 Int))
        (=> (t23 tmp_68 tmp_70) (not (t31 tmp_68 tmp_70)))))
(assert (forall ((tmp_71 Int) (tmp_72 Int) (tmp_73 Int))
        (=> (t23 tmp_71 tmp_73) (not (t32 tmp_71 tmp_73)))))
(assert (forall ((tmp_74 Int) (tmp_75 Int) (tmp_76 Int))
        (=> (t22 tmp_74 tmp_76) (not (t01 tmp_74 tmp_76)))))
(assert (forall ((tmp_77 Int) (tmp_78 Int) (tmp_79 Int))
        (=> (t22 tmp_77 tmp_79) (not (t12 tmp_77 tmp_79)))))
(assert (forall ((tmp_80 Int) (tmp_81 Int) (tmp_82 Int))
        (=> (t22 tmp_80 tmp_82) (not (t23 tmp_80 tmp_82)))))
(assert (forall ((tmp_83 Int) (tmp_84 Int) (tmp_85 Int))
        (=> (t22 tmp_83 tmp_85) (not (t31 tmp_83 tmp_85)))))
(assert (forall ((tmp_86 Int) (tmp_87 Int) (tmp_88 Int))
        (=> (t22 tmp_86 tmp_88) (not (t32 tmp_86 tmp_88)))))
(assert (forall ((tmp_89 Int) (tmp_90 Int) (tmp_91 Int))
        (=> (t31 tmp_89 tmp_91) (not (t01 tmp_89 tmp_91)))))
(assert (forall ((tmp_92 Int) (tmp_93 Int) (tmp_94 Int))
        (=> (t31 tmp_92 tmp_94) (not (t12 tmp_92 tmp_94)))))
(assert (forall ((tmp_95 Int) (tmp_96 Int) (tmp_97 Int))
        (=> (t31 tmp_95 tmp_97) (not (t23 tmp_95 tmp_97)))))
(assert (forall ((tmp_98 Int) (tmp_99 Int) (tmp_100 Int))
        (=> (t31 tmp_98 tmp_100) (not (t22 tmp_98 tmp_100)))))
(assert (forall ((tmp_101 Int) (tmp_102 Int) (tmp_103 Int))
        (=> (t31 tmp_101 tmp_103) (not (t32 tmp_101 tmp_103)))))
(assert (forall ((tmp_104 Int) (tmp_105 Int) (tmp_106 Int))
        (=> (t32 tmp_104 tmp_106) (not (t01 tmp_104 tmp_106)))))
(assert (forall ((tmp_107 Int) (tmp_108 Int) (tmp_109 Int))
        (=> (t32 tmp_107 tmp_109) (not (t12 tmp_107 tmp_109)))))
(assert (forall ((tmp_110 Int) (tmp_111 Int) (tmp_112 Int))
        (=> (t32 tmp_110 tmp_112) (not (t23 tmp_110 tmp_112)))))
(assert (forall ((tmp_113 Int) (tmp_114 Int) (tmp_115 Int))
        (=> (t32 tmp_113 tmp_115) (not (t22 tmp_113 tmp_115)))))
(assert (forall ((tmp_116 Int) (tmp_117 Int) (tmp_118 Int))
        (=> (t32 tmp_116 tmp_118) (not (t31 tmp_116 tmp_118)))))
(reset)