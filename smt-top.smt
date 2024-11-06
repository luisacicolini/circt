(declare-fun F_A (Int) Bool)
(declare-fun F_B (Int) Bool)
(declare-fun F_C (Int) Bool)
(assert (forall ((tmp Int) (tmp_0 Int))
        (=> (= tmp_0 0) (F_A tmp_0))))
(assert (forall ((tmp_1 Int) (tmp_2 Int))
        (=> (and (F_A tmp_2) true) (F_B (+ tmp_2 1)))))
(assert (forall ((tmp_3 Int) (tmp_4 Int))
        (=> (and (F_B tmp_4) (= tmp_3 1)) (F_C (+ tmp_4 1)))))
(assert (forall ((tmp_5 Int) (tmp_6 Int))
        (=> (and (F_B tmp_6) (distinct tmp_5 1)) (F_B (+ tmp_6 1)))))
(assert (forall ((tmp_7 Int) (tmp_8 Int))
        (=> (and (F_C tmp_8) (= tmp_7 1)) (F_A (+ tmp_8 1)))))
(assert (forall ((tmp_9 Int) (tmp_10 Int))
        (=> (and (F_C tmp_10) (distinct tmp_9 1)) (F_B (+ tmp_10 1)))))
(reset)