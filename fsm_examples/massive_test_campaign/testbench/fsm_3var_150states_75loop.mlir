fsm.machine @fsm3() -> () attributes {initialState = "_0"} {
	%x0 = fsm.variable "%x0" {initValue = 0 : i16} : i16
	%x1 = fsm.variable "%x1" {initValue = 0 : i16} : i16
	%x2 = fsm.variable "%x2" {initValue = 0 : i16} : i16
	%c1 = hw.constant 1 : i16
	%c143 = hw.constant 143 : i16


	fsm.state @_0 output {
	} transitions {
		fsm.transition @_1
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_1 output {
	} transitions {
		fsm.transition @_2
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_2 output {
	} transitions {
		fsm.transition @_3
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_3 output {
	} transitions {
		fsm.transition @_4
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_4 output {
	} transitions {
		fsm.transition @_5
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_5 output {
	} transitions {
		fsm.transition @_6
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_6 output {
	} transitions {
		fsm.transition @_7
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_7 output {
	} transitions {
		fsm.transition @_8
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_8 output {
	} transitions {
		fsm.transition @_9
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_9 output {
	} transitions {
		fsm.transition @_10
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_10 output {
	} transitions {
		fsm.transition @_11
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_11 output {
	} transitions {
		fsm.transition @_12
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_12 output {
	} transitions {
		fsm.transition @_13
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_13 output {
	} transitions {
		fsm.transition @_14
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_14 output {
	} transitions {
		fsm.transition @_15
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_15 output {
	} transitions {
		fsm.transition @_16
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_16 output {
	} transitions {
		fsm.transition @_17
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_17 output {
	} transitions {
		fsm.transition @_18
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_18 output {
	} transitions {
		fsm.transition @_19
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_19 output {
	} transitions {
		fsm.transition @_20
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_20 output {
	} transitions {
		fsm.transition @_21
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_21 output {
	} transitions {
		fsm.transition @_22
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_22 output {
	} transitions {
		fsm.transition @_23
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_23 output {
	} transitions {
		fsm.transition @_24
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_24 output {
	} transitions {
		fsm.transition @_25
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_25 output {
	} transitions {
		fsm.transition @_26
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_26 output {
	} transitions {
		fsm.transition @_27
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_27 output {
	} transitions {
		fsm.transition @_28
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_28 output {
	} transitions {
		fsm.transition @_29
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_29 output {
	} transitions {
		fsm.transition @_30
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_30 output {
	} transitions {
		fsm.transition @_31
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_31 output {
	} transitions {
		fsm.transition @_32
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_32 output {
	} transitions {
		fsm.transition @_33
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_33 output {
	} transitions {
		fsm.transition @_34
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_34 output {
	} transitions {
		fsm.transition @_35
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_35 output {
	} transitions {
		fsm.transition @_36
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_36 output {
	} transitions {
		fsm.transition @_37
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_37 output {
	} transitions {
		fsm.transition @_38
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_38 output {
	} transitions {
		fsm.transition @_39
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_39 output {
	} transitions {
		fsm.transition @_40
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_40 output {
	} transitions {
		fsm.transition @_41
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_41 output {
	} transitions {
		fsm.transition @_42
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_42 output {
	} transitions {
		fsm.transition @_43
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_43 output {
	} transitions {
		fsm.transition @_44
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_44 output {
	} transitions {
		fsm.transition @_45
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_45 output {
	} transitions {
		fsm.transition @_46
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_46 output {
	} transitions {
		fsm.transition @_47
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_47 output {
	} transitions {
		fsm.transition @_48
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_48 output {
	} transitions {
		fsm.transition @_49
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_49 output {
	} transitions {
		fsm.transition @_50
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_50 output {
	} transitions {
		fsm.transition @_51
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_51 output {
	} transitions {
		fsm.transition @_52
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_52 output {
	} transitions {
		fsm.transition @_53
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_53 output {
	} transitions {
		fsm.transition @_54
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_54 output {
	} transitions {
		fsm.transition @_55
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_55 output {
	} transitions {
		fsm.transition @_56
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_56 output {
	} transitions {
		fsm.transition @_57
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_57 output {
	} transitions {
		fsm.transition @_58
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_58 output {
	} transitions {
		fsm.transition @_59
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_59 output {
	} transitions {
		fsm.transition @_60
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_60 output {
	} transitions {
		fsm.transition @_61
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_61 output {
	} transitions {
		fsm.transition @_62
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_62 output {
	} transitions {
		fsm.transition @_63
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_63 output {
	} transitions {
		fsm.transition @_64
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_64 output {
	} transitions {
		fsm.transition @_65
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_65 output {
	} transitions {
		fsm.transition @_66
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_66 output {
	} transitions {
		fsm.transition @_67
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_67 output {
	} transitions {
		fsm.transition @_68
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_68 output {
	} transitions {
		fsm.transition @_69
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_69 output {
	} transitions {
		fsm.transition @_70
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_70 output {
	} transitions {
		fsm.transition @_71
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_71 output {
	} transitions {
		fsm.transition @_72
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_72 output {
	} transitions {
		fsm.transition @_73
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_73 output {
	} transitions {
		fsm.transition @_74
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_74 output {
	} transitions {
		fsm.transition @_75
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_75 output {
	} transitions {
		fsm.transition @_76
			guard {
				%tmp = comb.icmp uge %x0, %c143 : i16
				fsm.return %tmp
			} action {
			}
		fsm.transition @_8
			guard {
				%tmp = comb.icmp ult %x0, %c143 : i16
				fsm.return %tmp
			} action {
			}
	}

	fsm.state @_76 output {
	} transitions {
		fsm.transition @_77
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_77 output {
	} transitions {
		fsm.transition @_78
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_78 output {
	} transitions {
		fsm.transition @_79
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_79 output {
	} transitions {
		fsm.transition @_80
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_80 output {
	} transitions {
		fsm.transition @_81
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_81 output {
	} transitions {
		fsm.transition @_82
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_82 output {
	} transitions {
		fsm.transition @_83
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_83 output {
	} transitions {
		fsm.transition @_84
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_84 output {
	} transitions {
		fsm.transition @_85
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_85 output {
	} transitions {
		fsm.transition @_86
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_86 output {
	} transitions {
		fsm.transition @_87
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_87 output {
	} transitions {
		fsm.transition @_88
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_88 output {
	} transitions {
		fsm.transition @_89
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_89 output {
	} transitions {
		fsm.transition @_90
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_90 output {
	} transitions {
		fsm.transition @_91
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_91 output {
	} transitions {
		fsm.transition @_92
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_92 output {
	} transitions {
		fsm.transition @_93
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_93 output {
	} transitions {
		fsm.transition @_94
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_94 output {
	} transitions {
		fsm.transition @_95
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_95 output {
	} transitions {
		fsm.transition @_96
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_96 output {
	} transitions {
		fsm.transition @_97
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_97 output {
	} transitions {
		fsm.transition @_98
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_98 output {
	} transitions {
		fsm.transition @_99
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_99 output {
	} transitions {
		fsm.transition @_100
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_100 output {
	} transitions {
		fsm.transition @_101
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_101 output {
	} transitions {
		fsm.transition @_102
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_102 output {
	} transitions {
		fsm.transition @_103
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_103 output {
	} transitions {
		fsm.transition @_104
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_104 output {
	} transitions {
		fsm.transition @_105
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_105 output {
	} transitions {
		fsm.transition @_106
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_106 output {
	} transitions {
		fsm.transition @_107
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_107 output {
	} transitions {
		fsm.transition @_108
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_108 output {
	} transitions {
		fsm.transition @_109
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_109 output {
	} transitions {
		fsm.transition @_110
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_110 output {
	} transitions {
		fsm.transition @_111
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_111 output {
	} transitions {
		fsm.transition @_112
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_112 output {
	} transitions {
		fsm.transition @_113
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_113 output {
	} transitions {
		fsm.transition @_114
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_114 output {
	} transitions {
		fsm.transition @_115
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_115 output {
	} transitions {
		fsm.transition @_116
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_116 output {
	} transitions {
		fsm.transition @_117
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_117 output {
	} transitions {
		fsm.transition @_118
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_118 output {
	} transitions {
		fsm.transition @_119
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_119 output {
	} transitions {
		fsm.transition @_120
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_120 output {
	} transitions {
		fsm.transition @_121
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_121 output {
	} transitions {
		fsm.transition @_122
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_122 output {
	} transitions {
		fsm.transition @_123
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_123 output {
	} transitions {
		fsm.transition @_124
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_124 output {
	} transitions {
		fsm.transition @_125
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_125 output {
	} transitions {
		fsm.transition @_126
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_126 output {
	} transitions {
		fsm.transition @_127
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_127 output {
	} transitions {
		fsm.transition @_128
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_128 output {
	} transitions {
		fsm.transition @_129
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_129 output {
	} transitions {
		fsm.transition @_130
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_130 output {
	} transitions {
		fsm.transition @_131
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_131 output {
	} transitions {
		fsm.transition @_132
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_132 output {
	} transitions {
		fsm.transition @_133
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_133 output {
	} transitions {
		fsm.transition @_134
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_134 output {
	} transitions {
		fsm.transition @_135
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_135 output {
	} transitions {
		fsm.transition @_136
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_136 output {
	} transitions {
		fsm.transition @_137
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_137 output {
	} transitions {
		fsm.transition @_138
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_138 output {
	} transitions {
		fsm.transition @_139
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_139 output {
	} transitions {
		fsm.transition @_140
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_140 output {
	} transitions {
		fsm.transition @_141
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_141 output {
	} transitions {
		fsm.transition @_142
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_142 output {
	} transitions {
		fsm.transition @_143
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_143 output {
	} transitions {
		fsm.transition @_144
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_144 output {
	} transitions {
		fsm.transition @_145
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_145 output {
	} transitions {
		fsm.transition @_146
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_146 output {
	} transitions {
		fsm.transition @_147
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_147 output {
	} transitions {
		fsm.transition @_148
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_148 output {
	} transitions {
		fsm.transition @_149
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_149 output {
	} transitions {
		fsm.transition @_150
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
				%tmp1 = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp1 : i16
				%tmp2 = comb.add %x2, %c1 : i16
				fsm.update %x2, %tmp2 : i16
			}
	}

	fsm.state @_150 output {
	} transitions {
	}
}