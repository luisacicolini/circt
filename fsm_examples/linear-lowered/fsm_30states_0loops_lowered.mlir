module {
  hw.module @fsm30(in %clk : !seq.clock, in %rst : i1) {
    %c0_i5 = hw.constant 0 : i5
    %c1_i5 = hw.constant 1 : i5
    %c2_i5 = hw.constant 2 : i5
    %c3_i5 = hw.constant 3 : i5
    %c4_i5 = hw.constant 4 : i5
    %c5_i5 = hw.constant 5 : i5
    %c6_i5 = hw.constant 6 : i5
    %c7_i5 = hw.constant 7 : i5
    %c8_i5 = hw.constant 8 : i5
    %c9_i5 = hw.constant 9 : i5
    %c10_i5 = hw.constant 10 : i5
    %c11_i5 = hw.constant 11 : i5
    %c12_i5 = hw.constant 12 : i5
    %c13_i5 = hw.constant 13 : i5
    %c14_i5 = hw.constant 14 : i5
    %c15_i5 = hw.constant 15 : i5
    %c-16_i5 = hw.constant -16 : i5
    %c-15_i5 = hw.constant -15 : i5
    %c-14_i5 = hw.constant -14 : i5
    %c-13_i5 = hw.constant -13 : i5
    %c-12_i5 = hw.constant -12 : i5
    %c-11_i5 = hw.constant -11 : i5
    %c-10_i5 = hw.constant -10 : i5
    %c-9_i5 = hw.constant -9 : i5
    %c-8_i5 = hw.constant -8 : i5
    %c-7_i5 = hw.constant -7 : i5
    %c-6_i5 = hw.constant -6 : i5
    %c-5_i5 = hw.constant -5 : i5
    %c-4_i5 = hw.constant -4 : i5
    %c-3_i5 = hw.constant -3 : i5
    %c-2_i5 = hw.constant -2 : i5
    %state_reg = seq.compreg sym @state_reg  %121, %clk reset %rst, %c0_i5 powerOnValue %pon, %c0_i5: i5  
    %c0_i16 = hw.constant 0 : i16
    %x0 = seq.compreg sym @x0  %118, %clk reset %rst, %c0_i16 powerOnValue %pon, %c0_i16: i16  
    %c1_i16 = hw.constant 1 : i16
    %0 = comb.icmp bin eq %state_reg, %c0_i5 : i5
    %1 = comb.add bin %x0, %c1_i16 : i16
    %2 = comb.mux bin %0, %1, %118 : i16
    %3 = comb.mux bin %0, %c1_i5, %state_reg : i5
    %4 = comb.icmp bin eq %state_reg, %c1_i5 : i5
    %5 = comb.add bin %x0, %c1_i16 : i16
    %6 = comb.mux bin %4, %5, %2 : i16
    %7 = comb.mux bin %4, %c2_i5, %3 : i5
    %8 = comb.icmp bin eq %state_reg, %c2_i5 : i5
    %9 = comb.add bin %x0, %c1_i16 : i16
    %10 = comb.mux bin %8, %9, %6 : i16
    %11 = comb.mux bin %8, %c3_i5, %7 : i5
    %12 = comb.icmp bin eq %state_reg, %c3_i5 : i5
    %13 = comb.add bin %x0, %c1_i16 : i16
    %14 = comb.mux bin %12, %13, %10 : i16
    %15 = comb.mux bin %12, %c4_i5, %11 : i5
    %16 = comb.icmp bin eq %state_reg, %c4_i5 : i5
    %17 = comb.add bin %x0, %c1_i16 : i16
    %18 = comb.mux bin %16, %17, %14 : i16
    %19 = comb.mux bin %16, %c5_i5, %15 : i5
    %20 = comb.icmp bin eq %state_reg, %c5_i5 : i5
    %21 = comb.add bin %x0, %c1_i16 : i16
    %22 = comb.mux bin %20, %21, %18 : i16
    %23 = comb.mux bin %20, %c6_i5, %19 : i5
    %24 = comb.icmp bin eq %state_reg, %c6_i5 : i5
    %25 = comb.add bin %x0, %c1_i16 : i16
    %26 = comb.mux bin %24, %25, %22 : i16
    %27 = comb.mux bin %24, %c7_i5, %23 : i5
    %28 = comb.icmp bin eq %state_reg, %c7_i5 : i5
    %29 = comb.add bin %x0, %c1_i16 : i16
    %30 = comb.mux bin %28, %29, %26 : i16
    %31 = comb.mux bin %28, %c8_i5, %27 : i5
    %32 = comb.icmp bin eq %state_reg, %c8_i5 : i5
    %33 = comb.add bin %x0, %c1_i16 : i16
    %34 = comb.mux bin %32, %33, %30 : i16
    %35 = comb.mux bin %32, %c9_i5, %31 : i5
    %36 = comb.icmp bin eq %state_reg, %c9_i5 : i5
    %37 = comb.add bin %x0, %c1_i16 : i16
    %38 = comb.mux bin %36, %37, %34 : i16
    %39 = comb.mux bin %36, %c10_i5, %35 : i5
    %40 = comb.icmp bin eq %state_reg, %c10_i5 : i5
    %41 = comb.add bin %x0, %c1_i16 : i16
    %42 = comb.mux bin %40, %41, %38 : i16
    %43 = comb.mux bin %40, %c11_i5, %39 : i5
    %44 = comb.icmp bin eq %state_reg, %c11_i5 : i5
    %45 = comb.add bin %x0, %c1_i16 : i16
    %46 = comb.mux bin %44, %45, %42 : i16
    %47 = comb.mux bin %44, %c12_i5, %43 : i5
    %48 = comb.icmp bin eq %state_reg, %c12_i5 : i5
    %49 = comb.add bin %x0, %c1_i16 : i16
    %50 = comb.mux bin %48, %49, %46 : i16
    %51 = comb.mux bin %48, %c13_i5, %47 : i5
    %52 = comb.icmp bin eq %state_reg, %c13_i5 : i5
    %53 = comb.add bin %x0, %c1_i16 : i16
    %54 = comb.mux bin %52, %53, %50 : i16
    %55 = comb.mux bin %52, %c14_i5, %51 : i5
    %56 = comb.icmp bin eq %state_reg, %c14_i5 : i5
    %57 = comb.add bin %x0, %c1_i16 : i16
    %58 = comb.mux bin %56, %57, %54 : i16
    %59 = comb.mux bin %56, %c15_i5, %55 : i5
    %60 = comb.icmp bin eq %state_reg, %c15_i5 : i5
    %61 = comb.add bin %x0, %c1_i16 : i16
    %62 = comb.mux bin %60, %61, %58 : i16
    %63 = comb.mux bin %60, %c-16_i5, %59 : i5
    %64 = comb.icmp bin eq %state_reg, %c-16_i5 : i5
    %65 = comb.add bin %x0, %c1_i16 : i16
    %66 = comb.mux bin %64, %65, %62 : i16
    %67 = comb.mux bin %64, %c-15_i5, %63 : i5
    %68 = comb.icmp bin eq %state_reg, %c-15_i5 : i5
    %69 = comb.add bin %x0, %c1_i16 : i16
    %70 = comb.mux bin %68, %69, %66 : i16
    %71 = comb.mux bin %68, %c-14_i5, %67 : i5
    %72 = comb.icmp bin eq %state_reg, %c-14_i5 : i5
    %73 = comb.add bin %x0, %c1_i16 : i16
    %74 = comb.mux bin %72, %73, %70 : i16
    %75 = comb.mux bin %72, %c-13_i5, %71 : i5
    %76 = comb.icmp bin eq %state_reg, %c-13_i5 : i5
    %77 = comb.add bin %x0, %c1_i16 : i16
    %78 = comb.mux bin %76, %77, %74 : i16
    %79 = comb.mux bin %76, %c-12_i5, %75 : i5
    %80 = comb.icmp bin eq %state_reg, %c-12_i5 : i5
    %81 = comb.add bin %x0, %c1_i16 : i16
    %82 = comb.mux bin %80, %81, %78 : i16
    %83 = comb.mux bin %80, %c-11_i5, %79 : i5
    %84 = comb.icmp bin eq %state_reg, %c-11_i5 : i5
    %85 = comb.add bin %x0, %c1_i16 : i16
    %86 = comb.mux bin %84, %85, %82 : i16
    %87 = comb.mux bin %84, %c-10_i5, %83 : i5
    %88 = comb.icmp bin eq %state_reg, %c-10_i5 : i5
    %89 = comb.add bin %x0, %c1_i16 : i16
    %90 = comb.mux bin %88, %89, %86 : i16
    %91 = comb.mux bin %88, %c-9_i5, %87 : i5
    %92 = comb.icmp bin eq %state_reg, %c-9_i5 : i5
    %93 = comb.add bin %x0, %c1_i16 : i16
    %94 = comb.mux bin %92, %93, %90 : i16
    %95 = comb.mux bin %92, %c-8_i5, %91 : i5
    %96 = comb.icmp bin eq %state_reg, %c-8_i5 : i5
    %97 = comb.add bin %x0, %c1_i16 : i16
    %98 = comb.mux bin %96, %97, %94 : i16
    %99 = comb.mux bin %96, %c-7_i5, %95 : i5
    %100 = comb.icmp bin eq %state_reg, %c-7_i5 : i5
    %101 = comb.add bin %x0, %c1_i16 : i16
    %102 = comb.mux bin %100, %101, %98 : i16
    %103 = comb.mux bin %100, %c-6_i5, %99 : i5
    %104 = comb.icmp bin eq %state_reg, %c-6_i5 : i5
    %105 = comb.add bin %x0, %c1_i16 : i16
    %106 = comb.mux bin %104, %105, %102 : i16
    %107 = comb.mux bin %104, %c-5_i5, %103 : i5
    %108 = comb.icmp bin eq %state_reg, %c-5_i5 : i5
    %109 = comb.add bin %x0, %c1_i16 : i16
    %110 = comb.mux bin %108, %109, %106 : i16
    %111 = comb.mux bin %108, %c-4_i5, %107 : i5
    %112 = comb.icmp bin eq %state_reg, %c-4_i5 : i5
    %113 = comb.add bin %x0, %c1_i16 : i16
    %114 = comb.mux bin %112, %113, %110 : i16
    %115 = comb.mux bin %112, %c-3_i5, %111 : i5
    %116 = comb.icmp bin eq %state_reg, %c-3_i5 : i5
    %117 = comb.add bin %x0, %c1_i16 : i16
    %118 = comb.mux bin %116, %117, %114 : i16
    %119 = comb.mux bin %116, %c-2_i5, %115 : i5
    %120 = comb.icmp bin eq %state_reg, %c-2_i5 : i5
    %121 = comb.mux bin %120, %c-2_i5, %119 : i5
    // Assertion:
    %c-1_i1 = hw.constant -1 : i1
    %is_init_state = comb.icmp bin eq %state_reg, %c0_i5 : i5
    %cnt_zero = comb.icmp bin eq %x0, %c0_i16 : i16
    %not_init_state = comb.xor bin %is_init_state, %c-1_i1 : i1
    %prop = comb.or bin %not_init_state, %cnt_zero : i1
    sv.assert %prop : i1
    hw.output
  }
}

