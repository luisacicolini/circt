fsm.machine @fsm8() -> () {initialState = "0"} {
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


	fsm.state @0 output {
	} transitions {
		fsm.transition @1 guard {
				%tmp = comb.icmp sle 3 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul 5 : i16
				fsm.update x3, %tmp : i16
			}
		fsm.transition @1 guard {
				%tmp = comb.icmp eq x0, 4 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add x2, 7 : i16
				fsm.update x3, %tmp : i16
			}
	}

	fsm.state @1 output {
	} transitions {
		fsm.transition @2 guard {
				%tmp = comb.icmp ne 0 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add 0 : i16
				fsm.update x2, %tmp : i16
			}
		fsm.transition @2 guard {
				%tmp = comb.icmp slt x3, 8 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add x1, 1 : i16
				fsm.update x3, %tmp : i16
			}
	}

	fsm.state @2 output {
	} transitions {
		fsm.transition @3 guard {
				%tmp = comb.icmp eq 5 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul 2 : i16
				fsm.update x2, %tmp : i16
			}
		fsm.transition @3 guard {
				%tmp = comb.icmp eq x1, 9 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul x3, 4 : i16
				fsm.update x2, %tmp : i16
			}
	}

	fsm.state @3 output {
	} transitions {
		fsm.transition @4 guard {
				%tmp = comb.icmp slt 9 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add 2 : i16
				fsm.update x2, %tmp : i16
			}
		fsm.transition @4 guard {
				%tmp = comb.icmp eq x2, 1 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul x3, 8 : i16
				fsm.update x3, %tmp : i16
			}
	}

	fsm.state @4 output {
	} transitions {
		fsm.transition @5 guard {
				%tmp = comb.icmp slt 3 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul 1 : i16
				fsm.update x0, %tmp : i16
			}
		fsm.transition @5 guard {
				%tmp = comb.icmp ne x3, 7 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul x2, 9 : i16
				fsm.update x0, %tmp : i16
			}
	}

	fsm.state @5 output {
	} transitions {
		fsm.transition @6 guard {
				%tmp = comb.icmp ne 4 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul 2 : i16
				fsm.update x2, %tmp : i16
			}
		fsm.transition @6 guard {
				%tmp = comb.icmp ne x2, 6 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul x2, 6 : i16
				fsm.update x3, %tmp : i16
			}
	}

	fsm.state @6 output {
	} transitions {
		fsm.transition @7 guard {
				%tmp = comb.icmp ne 1 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add 0 : i16
				fsm.update x0, %tmp : i16
			}
	}

	fsm.state @7 output {
	} transitions {
		fsm.transition @8 guard {
				%tmp = comb.icmp slt 7 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.mul 8 : i16
				fsm.update x2, %tmp : i16
			}
	}

	fsm.state @8 output {
	} transitions {
		fsm.transition @9 guard {
				%tmp = comb.icmp sle 6 : i16
				fsm.return %tmp
			} action {
				%tmp = comb.add 9 : i16
				fsm.update x1, %tmp : i16
			}
	}

	fsm.state @9 output {
	} transitions {
	}
}