fsm.machine @fsm1() -> () attributes {initialState = "_0"} {
	%x0 = fsm.variable "%x0" {initValue = 0 : i16} : i16
	%c1 = hw.constant 1 : i16
	%c29 = hw.constant 29 : i16


	fsm.state @_0 output {
	} transitions {
		fsm.transition @_1
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_1 output {
	} transitions {
		fsm.transition @_2
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_2 output {
	} transitions {
		fsm.transition @_3
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_3 output {
	} transitions {
		fsm.transition @_4
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_4 output {
	} transitions {
		fsm.transition @_5
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_5 output {
	} transitions {
		fsm.transition @_6
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_6 output {
	} transitions {
		fsm.transition @_7
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_7 output {
	} transitions {
		fsm.transition @_8
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_8 output {
	} transitions {
		fsm.transition @_9
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_9 output {
	} transitions {
		fsm.transition @_10
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_10 output {
	} transitions {
		fsm.transition @_11
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_11 output {
	} transitions {
		fsm.transition @_12
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_12 output {
	} transitions {
		fsm.transition @_13
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_13 output {
	} transitions {
		fsm.transition @_14
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_14 output {
	} transitions {
		fsm.transition @_15
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_15 output {
	} transitions {
		fsm.transition @_16
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_16 output {
	} transitions {
		fsm.transition @_17
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_17 output {
	} transitions {
		fsm.transition @_18
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_18 output {
	} transitions {
		fsm.transition @_19
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_19 output {
	} transitions {
		fsm.transition @_20
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_20 output {
	} transitions {
		fsm.transition @_21
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_21 output {
	} transitions {
		fsm.transition @_22
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_22 output {
	} transitions {
		fsm.transition @_23
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_23 output {
	} transitions {
		fsm.transition @_24
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_24 output {
	} transitions {
		fsm.transition @_25
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_25 output {
	} transitions {
		fsm.transition @_26
			guard {
				%tmp = comb.icmp uge %x0, %c29 : i16
				fsm.return %tmp
			} action {
			}
		fsm.transition @_11
			guard {
				%tmp = comb.icmp ult %x0, %c29 : i16
				fsm.return %tmp
			} action {
			}
	}

	fsm.state @_26 output {
	} transitions {
		fsm.transition @_27
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_27 output {
	} transitions {
		fsm.transition @_28
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_28 output {
	} transitions {
		fsm.transition @_29
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_29 output {
	} transitions {
		fsm.transition @_30
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_30 output {
	} transitions {
		fsm.transition @_31
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_31 output {
	} transitions {
		fsm.transition @_32
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_32 output {
	} transitions {
		fsm.transition @_33
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_33 output {
	} transitions {
		fsm.transition @_34
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_34 output {
	} transitions {
		fsm.transition @_35
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_35 output {
	} transitions {
		fsm.transition @_36
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_36 output {
	} transitions {
		fsm.transition @_37
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_37 output {
	} transitions {
		fsm.transition @_38
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_38 output {
	} transitions {
		fsm.transition @_39
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_39 output {
	} transitions {
		fsm.transition @_40
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_40 output {
	} transitions {
		fsm.transition @_41
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_41 output {
	} transitions {
		fsm.transition @_42
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_42 output {
	} transitions {
		fsm.transition @_43
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_43 output {
	} transitions {
		fsm.transition @_44
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_44 output {
	} transitions {
		fsm.transition @_45
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_45 output {
	} transitions {
		fsm.transition @_46
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_46 output {
	} transitions {
		fsm.transition @_47
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_47 output {
	} transitions {
		fsm.transition @_48
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_48 output {
	} transitions {
		fsm.transition @_49
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_49 output {
	} transitions {
		fsm.transition @_50
		action {
				%tmp0 = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp0 : i16
			}
	}

	fsm.state @_50 output {
	} transitions {
	}
}