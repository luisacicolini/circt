fsm.machine @fsm5() -> () attributes {initialState = "_0"} {
	%x0 = fsm.variable "x0" {initValue = 0 : i16} : i16
	%c5 = hw.constant 5 : i16
	%c1 = hw.constant 1 : i16
	


	fsm.state @_0 output {
	} transitions {
		fsm.transition @_0
			guard {
				%tmp = comb.icmp ult %x0, %c5 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add %x0, %c1 : i16
				fsm.update %x0, %tmp : i16
			}
		fsm.transition @_1
			guard {
				%tmp = comb.icmp uge %x0, %c5 : i16
				fsm.return %tmp
			}
	}

	fsm.state @_1 output {
	} transitions {
		
	}

}