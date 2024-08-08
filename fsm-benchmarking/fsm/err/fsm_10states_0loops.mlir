fsm.machine @fsm10(%err: i1) -> () attributes {initialState = "_0"} {
	%x0 = fsm.variable "x0" {initValue = 0 : i16} : i16
	%c1 = hw.constant 1 : i16
	%c11 = hw.constant 1 : i1

	%c0 = hw.constant 0 : i16


	fsm.state @_0 output {
	} transitions {
		fsm.transition @_1
			guard {

			} action {
				%tmp = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp : i16
			}

	}

	fsm.state @_1 output {
	} transitions {
		fsm.transition @_2
			guard {

			} action {
				%tmp = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp : i16
			}
	}

	fsm.state @_2 output {
	} transitions {
		fsm.transition @_3
			guard {
				%tmp1 = comb.icmp ne %err, %c11 : i1
				fsm.return %tmp1
			} action {
				%tmp = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp : i16
			}
		fsm.transition @_3
			guard {
				%tmp1 = comb.icmp eq %err, %c11 : i1
				fsm.return %tmp1
			}
	}

	fsm.state @_3 output {
	} transitions {
		fsm.transition @_4
			guard {

			} action {
				%tmp = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp : i16
			}

	}

	fsm.state @_4 output {
	} transitions {

	}
} 
