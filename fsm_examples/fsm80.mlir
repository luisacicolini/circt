fsm.machine @fsm80() -> () attributes {initialState = "_0"} {
	%x0 = fsm.variable "x0" {initValue = 0 : i16} : i16
	%x1 = fsm.variable "x1" {initValue = 0 : i16} : i16
	%x2 = fsm.variable "x2" {initValue = 0 : i16} : i16
	%x3 = fsm.variable "x3" {initValue = 0 : i16} : i16
	%c0 = hw.constant 0 : i16
	%c1 = hw.constant 1 : i16
	%c2 = hw.constant 2 : i16
	%c3 = hw.constant 3 : i16
	%c4 = hw.constant 4 : i16
	%c5 = hw.constant 5 : i16
	%c6 = hw.constant 6 : i16
	%c7 = hw.constant 7 : i16
	%c8 = hw.constant 8 : i16
	%c9 = hw.constant 9 : i16


	fsm.state @_0 output {
	} transitions {
		fsm.transition @_1 guard {
				%tmp = comb.icmp ne %x0, %c3 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x0, %c5 : i16
				fsm.update %x2, %tmp : i16
			}
	}

	fsm.state @_1 output {
	} transitions {
		fsm.transition @_2 guard {
				%tmp = comb.icmp ne %x3, %c2 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x1, %c2 : i16
				fsm.update %x0, %tmp : i16
			}
	}

	fsm.state @_2 output {
	} transitions {
		fsm.transition @_3 guard {
				%tmp = comb.icmp eq %x2, %c5 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x3, %c9 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_3 output {
	} transitions {
		fsm.transition @_4 guard {
				%tmp = comb.icmp eq %x0, %c4 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x2, %c9 : i16
				fsm.update %x2, %tmp : i16
			}
	}

	fsm.state @_4 output {
	} transitions {
		fsm.transition @_5 guard {
				%tmp = comb.icmp ne %x1, %c1 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x3, %c2 : i16
				fsm.update %x0, %tmp : i16
			}
	}

	fsm.state @_5 output {
	} transitions {
		fsm.transition @_6 guard {
				%tmp = comb.icmp ne %x1, %c3 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x1, %c8 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_6 output {
	} transitions {
		fsm.transition @_7 guard {
				%tmp = comb.icmp eq %x0, %c9 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x2, %c8 : i16
				fsm.update %x0, %tmp : i16
			}
	}

	fsm.state @_7 output {
	} transitions {
		fsm.transition @_8 guard {
				%tmp = comb.icmp ne %x3, %c0 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x0, %c4 : i16
				fsm.update %x2, %tmp : i16
			}
	}

	fsm.state @_8 output {
	} transitions {
		fsm.transition @_9 guard {
				%tmp = comb.icmp ne %x2, %c1 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x3, %c9 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_9 output {
	} transitions {
		fsm.transition @_10 guard {
				%tmp = comb.icmp ne %x2, %c2 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x2, %c0 : i16
				fsm.update %x0, %tmp : i16
			}
	}

	fsm.state @_10 output {
	} transitions {
		fsm.transition @_11 guard {
				%tmp = comb.icmp ne %x2, %c1 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x2, %c5 : i16
				fsm.update %x0, %tmp : i16
			}
	}

	fsm.state @_11 output {
	} transitions {
		fsm.transition @_12 guard {
				%tmp = comb.icmp eq %x1, %c5 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x1, %c9 : i16
				fsm.update %x2, %tmp : i16
			}
	}

	fsm.state @_12 output {
	} transitions {
		fsm.transition @_13 guard {
				%tmp = comb.icmp eq %x0, %c6 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x3, %c7 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_13 output {
	} transitions {
		fsm.transition @_14 guard {
				%tmp = comb.icmp eq %x3, %c5 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x0, %c6 : i16
				fsm.update %x0, %tmp : i16
			}
	}

	fsm.state @_14 output {
	} transitions {
		fsm.transition @_15 guard {
				%tmp = comb.icmp ne %x0, %c5 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x0, %c8 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_15 output {
	} transitions {
		fsm.transition @_16 guard {
				%tmp = comb.icmp eq %x3, %c1 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x1, %c4 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_16 output {
	} transitions {
		fsm.transition @_17 guard {
				%tmp = comb.icmp ne %x0, %c4 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x1, %c1 : i16
				fsm.update %x3, %tmp : i16
			}
	}

	fsm.state @_17 output {
	} transitions {
		fsm.transition @_18 guard {
				%tmp = comb.icmp ne %x2, %c6 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x0, %c5 : i16
				fsm.update %x3, %tmp : i16
			}
	}

	fsm.state @_18 output {
	} transitions {
		fsm.transition @_19 guard {
				%tmp = comb.icmp ne %x2, %c3 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x2, %c2 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_19 output {
	} transitions {
		fsm.transition @_20 guard {
				%tmp = comb.icmp ne %x2, %c5 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x3, %c3 : i16
				fsm.update %x3, %tmp : i16
			}
	}

	fsm.state @_20 output {
	} transitions {
		fsm.transition @_21 guard {
				%tmp = comb.icmp eq %x3, %c4 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x2, %c8 : i16
				fsm.update %x2, %tmp : i16
			}
	}

	fsm.state @_21 output {
	} transitions {
		fsm.transition @_22 guard {
				%tmp = comb.icmp eq %x2, %c8 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x3, %c1 : i16
				fsm.update %x3, %tmp : i16
			}
	}

	fsm.state @_22 output {
	} transitions {
		fsm.transition @_23 guard {
				%tmp = comb.icmp eq %x0, %c3 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x3, %c3 : i16
				fsm.update %x0, %tmp : i16
			}
	}

	fsm.state @_23 output {
	} transitions {
		fsm.transition @_24 guard {
				%tmp = comb.icmp eq %x1, %c8 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x2, %c5 : i16
				fsm.update %x2, %tmp : i16
			}
	}

	fsm.state @_24 output {
	} transitions {
		fsm.transition @_25 guard {
				%tmp = comb.icmp eq %x3, %c4 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x1, %c6 : i16
				fsm.update %x3, %tmp : i16
			}
	}

	fsm.state @_25 output {
	} transitions {
		fsm.transition @_26 guard {
				%tmp = comb.icmp eq %x0, %c7 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x0, %c9 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_26 output {
	} transitions {
		fsm.transition @_27 guard {
				%tmp = comb.icmp ne %x0, %c3 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x0, %c1 : i16
				fsm.update %x3, %tmp : i16
			}
	}

	fsm.state @_27 output {
	} transitions {
		fsm.transition @_28 guard {
				%tmp = comb.icmp ne %x2, %c4 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x3, %c6 : i16
				fsm.update %x2, %tmp : i16
			}
	}

	fsm.state @_28 output {
	} transitions {
		fsm.transition @_29 guard {
				%tmp = comb.icmp ne %x3, %c1 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x0, %c1 : i16
				fsm.update %x3, %tmp : i16
			}
	}

	fsm.state @_29 output {
	} transitions {
		fsm.transition @_30 guard {
				%tmp = comb.icmp ne %x0, %c6 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x2, %c9 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_30 output {
	} transitions {
		fsm.transition @_31 guard {
				%tmp = comb.icmp eq %x3, %c6 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x0, %c7 : i16
				fsm.update %x0, %tmp : i16
			}
	}

	fsm.state @_31 output {
	} transitions {
		fsm.transition @_32 guard {
				%tmp = comb.icmp ne %x1, %c2 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x2, %c3 : i16
				fsm.update %x3, %tmp : i16
			}
	}

	fsm.state @_32 output {
	} transitions {
		fsm.transition @_33 guard {
				%tmp = comb.icmp eq %x0, %c3 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x0, %c9 : i16
				fsm.update %x3, %tmp : i16
			}
	}

	fsm.state @_33 output {
	} transitions {
		fsm.transition @_34 guard {
				%tmp = comb.icmp eq %x2, %c7 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x2, %c4 : i16
				fsm.update %x2, %tmp : i16
			}
	}

	fsm.state @_34 output {
	} transitions {
		fsm.transition @_35 guard {
				%tmp = comb.icmp eq %x0, %c4 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x1, %c6 : i16
				fsm.update %x3, %tmp : i16
			}
	}

	fsm.state @_35 output {
	} transitions {
		fsm.transition @_36 guard {
				%tmp = comb.icmp ne %x0, %c3 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x1, %c5 : i16
				fsm.update %x2, %tmp : i16
			}
	}

	fsm.state @_36 output {
	} transitions {
		fsm.transition @_37 guard {
				%tmp = comb.icmp eq %x2, %c3 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x1, %c7 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_37 output {
	} transitions {
		fsm.transition @_38 guard {
				%tmp = comb.icmp ne %x2, %c3 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x3, %c0 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_38 output {
	} transitions {
		fsm.transition @_39 guard {
				%tmp = comb.icmp ne %x3, %c5 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x0, %c8 : i16
				fsm.update %x0, %tmp : i16
			}
	}

	fsm.state @_39 output {
	} transitions {
		fsm.transition @_40 guard {
				%tmp = comb.icmp ne %x2, %c1 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x3, %c3 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_40 output {
	} transitions {
		fsm.transition @_41 guard {
				%tmp = comb.icmp eq %x0, %c8 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x3, %c5 : i16
				fsm.update %x3, %tmp : i16
			}
	}

	fsm.state @_41 output {
	} transitions {
		fsm.transition @_42 guard {
				%tmp = comb.icmp eq %x0, %c5 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x0, %c5 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_42 output {
	} transitions {
		fsm.transition @_43 guard {
				%tmp = comb.icmp ne %x3, %c0 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x1, %c4 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_43 output {
	} transitions {
		fsm.transition @_44 guard {
				%tmp = comb.icmp eq %x0, %c2 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x2, %c2 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_44 output {
	} transitions {
		fsm.transition @_45 guard {
				%tmp = comb.icmp eq %x3, %c9 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x1, %c9 : i16
				fsm.update %x3, %tmp : i16
			}
	}

	fsm.state @_45 output {
	} transitions {
		fsm.transition @_46 guard {
				%tmp = comb.icmp ne %x3, %c7 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x2, %c3 : i16
				fsm.update %x3, %tmp : i16
			}
		fsm.transition @_44 guard {
				%tmp = comb.icmp ne %x3, %c0 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x3, %c6 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_46 output {
	} transitions {
		fsm.transition @_47 guard {
				%tmp = comb.icmp eq %x2, %c5 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x3, %c9 : i16
				fsm.update %x3, %tmp : i16
			}
	}

	fsm.state @_47 output {
	} transitions {
		fsm.transition @_48 guard {
				%tmp = comb.icmp ne %x2, %c1 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x3, %c9 : i16
				fsm.update %x0, %tmp : i16
			}
	}

	fsm.state @_48 output {
	} transitions {
		fsm.transition @_49 guard {
				%tmp = comb.icmp eq %x1, %c3 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x3, %c8 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_49 output {
	} transitions {
		fsm.transition @_50 guard {
				%tmp = comb.icmp ne %x1, %c8 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x0, %c5 : i16
				fsm.update %x2, %tmp : i16
			}
	}

	fsm.state @_50 output {
	} transitions {
		fsm.transition @_51 guard {
				%tmp = comb.icmp eq %x1, %c2 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x0, %c5 : i16
				fsm.update %x0, %tmp : i16
			}
	}

	fsm.state @_51 output {
	} transitions {
		fsm.transition @_52 guard {
				%tmp = comb.icmp ne %x0, %c8 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x0, %c4 : i16
				fsm.update %x0, %tmp : i16
			}
	}

	fsm.state @_52 output {
	} transitions {
		fsm.transition @_53 guard {
				%tmp = comb.icmp eq %x2, %c0 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x2, %c8 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_53 output {
	} transitions {
		fsm.transition @_54 guard {
				%tmp = comb.icmp ne %x1, %c2 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x0, %c5 : i16
				fsm.update %x2, %tmp : i16
			}
	}

	fsm.state @_54 output {
	} transitions {
		fsm.transition @_55 guard {
				%tmp = comb.icmp ne %x3, %c3 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x3, %c0 : i16
				fsm.update %x3, %tmp : i16
			}
	}

	fsm.state @_55 output {
	} transitions {
		fsm.transition @_56 guard {
				%tmp = comb.icmp eq %x2, %c2 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x0, %c5 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_56 output {
	} transitions {
		fsm.transition @_57 guard {
				%tmp = comb.icmp eq %x3, %c6 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x2, %c7 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_57 output {
	} transitions {
		fsm.transition @_58 guard {
				%tmp = comb.icmp ne %x3, %c4 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x0, %c3 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_58 output {
	} transitions {
		fsm.transition @_59 guard {
				%tmp = comb.icmp eq %x0, %c9 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x2, %c7 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_59 output {
	} transitions {
		fsm.transition @_60 guard {
				%tmp = comb.icmp eq %x2, %c1 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x0, %c0 : i16
				fsm.update %x2, %tmp : i16
			}
	}

	fsm.state @_60 output {
	} transitions {
		fsm.transition @_61 guard {
				%tmp = comb.icmp eq %x1, %c1 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x1, %c8 : i16
				fsm.update %x3, %tmp : i16
			}
	}

	fsm.state @_61 output {
	} transitions {
		fsm.transition @_62 guard {
				%tmp = comb.icmp eq %x3, %c7 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x0, %c4 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_62 output {
	} transitions {
		fsm.transition @_63 guard {
				%tmp = comb.icmp ne %x0, %c5 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x0, %c8 : i16
				fsm.update %x0, %tmp : i16
			}
	}

	fsm.state @_63 output {
	} transitions {
		fsm.transition @_64 guard {
				%tmp = comb.icmp ne %x3, %c0 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x0, %c2 : i16
				fsm.update %x2, %tmp : i16
			}
	}

	fsm.state @_64 output {
	} transitions {
		fsm.transition @_65 guard {
				%tmp = comb.icmp ne %x3, %c5 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x2, %c6 : i16
				fsm.update %x2, %tmp : i16
			}
	}

	fsm.state @_65 output {
	} transitions {
		fsm.transition @_66 guard {
				%tmp = comb.icmp ne %x2, %c5 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x0, %c8 : i16
				fsm.update %x3, %tmp : i16
			}
	}

	fsm.state @_66 output {
	} transitions {
		fsm.transition @_67 guard {
				%tmp = comb.icmp eq %x0, %c6 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x1, %c3 : i16
				fsm.update %x3, %tmp : i16
			}
	}

	fsm.state @_67 output {
	} transitions {
		fsm.transition @_68 guard {
				%tmp = comb.icmp ne %x3, %c3 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x1, %c0 : i16
				fsm.update %x2, %tmp : i16
			}
	}

	fsm.state @_68 output {
	} transitions {
		fsm.transition @_69 guard {
				%tmp = comb.icmp eq %x3, %c3 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x0, %c0 : i16
				fsm.update %x0, %tmp : i16
			}
	}

	fsm.state @_69 output {
	} transitions {
		fsm.transition @_70 guard {
				%tmp = comb.icmp ne %x3, %c7 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x1, %c2 : i16
				fsm.update %x0, %tmp : i16
			}
	}

	fsm.state @_70 output {
	} transitions {
		fsm.transition @_71 guard {
				%tmp = comb.icmp ne %x0, %c3 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x1, %c5 : i16
				fsm.update %x3, %tmp : i16
			}
	}

	fsm.state @_71 output {
	} transitions {
		fsm.transition @_72 guard {
				%tmp = comb.icmp eq %x2, %c7 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x3, %c1 : i16
				fsm.update %x0, %tmp : i16
			}
	}

	fsm.state @_72 output {
	} transitions {
		fsm.transition @_73 guard {
				%tmp = comb.icmp eq %x1, %c1 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x0, %c7 : i16
				fsm.update %x2, %tmp : i16
			}
	}

	fsm.state @_73 output {
	} transitions {
		fsm.transition @_74 guard {
				%tmp = comb.icmp eq %x1, %c5 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x3, %c4 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_74 output {
	} transitions {
		fsm.transition @_75 guard {
				%tmp = comb.icmp ne %x1, %c3 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x0, %c5 : i16
				fsm.update %x3, %tmp : i16
			}
	}

	fsm.state @_75 output {
	} transitions {
		fsm.transition @_76 guard {
				%tmp = comb.icmp eq %x3, %c8 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x3, %c6 : i16
				fsm.update %x2, %tmp : i16
			}
	}

	fsm.state @_76 output {
	} transitions {
		fsm.transition @_77 guard {
				%tmp = comb.icmp eq %x2, %c0 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x1, %c1 : i16
				fsm.update %x1, %tmp : i16
			}
	}

	fsm.state @_77 output {
	} transitions {
		fsm.transition @_78 guard {
				%tmp = comb.icmp eq %x0, %c4 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x1, %c0 : i16
				fsm.update %x3, %tmp : i16
			}
	}

	fsm.state @_78 output {
	} transitions {
		fsm.transition @_79 guard {
				%tmp = comb.icmp eq %x2, %c9 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul %x3, %c6 : i16
				fsm.update %x0, %tmp : i16
			}
	}

	fsm.state @_79 output {
	} transitions {
	}
}