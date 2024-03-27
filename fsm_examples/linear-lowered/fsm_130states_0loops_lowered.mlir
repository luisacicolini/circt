module {
  hw.module @fsm130(in %clk : !seq.clock, in %rst : i1) {
    %c0_i8 = hw.constant 0 : i8
    %c1_i8 = hw.constant 1 : i8
    %c2_i8 = hw.constant 2 : i8
    %c3_i8 = hw.constant 3 : i8
    %c4_i8 = hw.constant 4 : i8
    %c5_i8 = hw.constant 5 : i8
    %c6_i8 = hw.constant 6 : i8
    %c7_i8 = hw.constant 7 : i8
    %c8_i8 = hw.constant 8 : i8
    %c9_i8 = hw.constant 9 : i8
    %c10_i8 = hw.constant 10 : i8
    %c11_i8 = hw.constant 11 : i8
    %c12_i8 = hw.constant 12 : i8
    %c13_i8 = hw.constant 13 : i8
    %c14_i8 = hw.constant 14 : i8
    %c15_i8 = hw.constant 15 : i8
    %c16_i8 = hw.constant 16 : i8
    %c17_i8 = hw.constant 17 : i8
    %c18_i8 = hw.constant 18 : i8
    %c19_i8 = hw.constant 19 : i8
    %c20_i8 = hw.constant 20 : i8
    %c21_i8 = hw.constant 21 : i8
    %c22_i8 = hw.constant 22 : i8
    %c23_i8 = hw.constant 23 : i8
    %c24_i8 = hw.constant 24 : i8
    %c25_i8 = hw.constant 25 : i8
    %c26_i8 = hw.constant 26 : i8
    %c27_i8 = hw.constant 27 : i8
    %c28_i8 = hw.constant 28 : i8
    %c29_i8 = hw.constant 29 : i8
    %c30_i8 = hw.constant 30 : i8
    %c31_i8 = hw.constant 31 : i8
    %c32_i8 = hw.constant 32 : i8
    %c33_i8 = hw.constant 33 : i8
    %c34_i8 = hw.constant 34 : i8
    %c35_i8 = hw.constant 35 : i8
    %c36_i8 = hw.constant 36 : i8
    %c37_i8 = hw.constant 37 : i8
    %c38_i8 = hw.constant 38 : i8
    %c39_i8 = hw.constant 39 : i8
    %c40_i8 = hw.constant 40 : i8
    %c41_i8 = hw.constant 41 : i8
    %c42_i8 = hw.constant 42 : i8
    %c43_i8 = hw.constant 43 : i8
    %c44_i8 = hw.constant 44 : i8
    %c45_i8 = hw.constant 45 : i8
    %c46_i8 = hw.constant 46 : i8
    %c47_i8 = hw.constant 47 : i8
    %c48_i8 = hw.constant 48 : i8
    %c49_i8 = hw.constant 49 : i8
    %c50_i8 = hw.constant 50 : i8
    %c51_i8 = hw.constant 51 : i8
    %c52_i8 = hw.constant 52 : i8
    %c53_i8 = hw.constant 53 : i8
    %c54_i8 = hw.constant 54 : i8
    %c55_i8 = hw.constant 55 : i8
    %c56_i8 = hw.constant 56 : i8
    %c57_i8 = hw.constant 57 : i8
    %c58_i8 = hw.constant 58 : i8
    %c59_i8 = hw.constant 59 : i8
    %c60_i8 = hw.constant 60 : i8
    %c61_i8 = hw.constant 61 : i8
    %c62_i8 = hw.constant 62 : i8
    %c63_i8 = hw.constant 63 : i8
    %c64_i8 = hw.constant 64 : i8
    %c65_i8 = hw.constant 65 : i8
    %c66_i8 = hw.constant 66 : i8
    %c67_i8 = hw.constant 67 : i8
    %c68_i8 = hw.constant 68 : i8
    %c69_i8 = hw.constant 69 : i8
    %c70_i8 = hw.constant 70 : i8
    %c71_i8 = hw.constant 71 : i8
    %c72_i8 = hw.constant 72 : i8
    %c73_i8 = hw.constant 73 : i8
    %c74_i8 = hw.constant 74 : i8
    %c75_i8 = hw.constant 75 : i8
    %c76_i8 = hw.constant 76 : i8
    %c77_i8 = hw.constant 77 : i8
    %c78_i8 = hw.constant 78 : i8
    %c79_i8 = hw.constant 79 : i8
    %c80_i8 = hw.constant 80 : i8
    %c81_i8 = hw.constant 81 : i8
    %c82_i8 = hw.constant 82 : i8
    %c83_i8 = hw.constant 83 : i8
    %c84_i8 = hw.constant 84 : i8
    %c85_i8 = hw.constant 85 : i8
    %c86_i8 = hw.constant 86 : i8
    %c87_i8 = hw.constant 87 : i8
    %c88_i8 = hw.constant 88 : i8
    %c89_i8 = hw.constant 89 : i8
    %c90_i8 = hw.constant 90 : i8
    %c91_i8 = hw.constant 91 : i8
    %c92_i8 = hw.constant 92 : i8
    %c93_i8 = hw.constant 93 : i8
    %c94_i8 = hw.constant 94 : i8
    %c95_i8 = hw.constant 95 : i8
    %c96_i8 = hw.constant 96 : i8
    %c97_i8 = hw.constant 97 : i8
    %c98_i8 = hw.constant 98 : i8
    %c99_i8 = hw.constant 99 : i8
    %c100_i8 = hw.constant 100 : i8
    %c101_i8 = hw.constant 101 : i8
    %c102_i8 = hw.constant 102 : i8
    %c103_i8 = hw.constant 103 : i8
    %c104_i8 = hw.constant 104 : i8
    %c105_i8 = hw.constant 105 : i8
    %c106_i8 = hw.constant 106 : i8
    %c107_i8 = hw.constant 107 : i8
    %c108_i8 = hw.constant 108 : i8
    %c109_i8 = hw.constant 109 : i8
    %c110_i8 = hw.constant 110 : i8
    %c111_i8 = hw.constant 111 : i8
    %c112_i8 = hw.constant 112 : i8
    %c113_i8 = hw.constant 113 : i8
    %c114_i8 = hw.constant 114 : i8
    %c115_i8 = hw.constant 115 : i8
    %c116_i8 = hw.constant 116 : i8
    %c117_i8 = hw.constant 117 : i8
    %c118_i8 = hw.constant 118 : i8
    %c119_i8 = hw.constant 119 : i8
    %c120_i8 = hw.constant 120 : i8
    %c121_i8 = hw.constant 121 : i8
    %c122_i8 = hw.constant 122 : i8
    %c123_i8 = hw.constant 123 : i8
    %c124_i8 = hw.constant 124 : i8
    %c125_i8 = hw.constant 125 : i8
    %c126_i8 = hw.constant 126 : i8
    %c127_i8 = hw.constant 127 : i8
    %c-128_i8 = hw.constant -128 : i8
    %c-127_i8 = hw.constant -127 : i8
    %c-126_i8 = hw.constant -126 : i8
    %state_reg = seq.compreg sym @state_reg  %521, %clk reset %rst, %c0_i8 powerOnValue %pon, %c0_i8: i8  
    %c0_i16 = hw.constant 0 : i16
    %x0 = seq.compreg sym @x0  %518, %clk reset %rst, %c0_i16 powerOnValue %pon, %c0_i16: i16  
    %c1_i16 = hw.constant 1 : i16
    %0 = comb.icmp bin eq %state_reg, %c0_i8 : i8
    %1 = comb.add bin %x0, %c1_i16 : i16
    %2 = comb.mux bin %0, %1, %518 : i16
    %3 = comb.mux bin %0, %c1_i8, %state_reg : i8
    %4 = comb.icmp bin eq %state_reg, %c1_i8 : i8
    %5 = comb.add bin %x0, %c1_i16 : i16
    %6 = comb.mux bin %4, %5, %2 : i16
    %7 = comb.mux bin %4, %c2_i8, %3 : i8
    %8 = comb.icmp bin eq %state_reg, %c2_i8 : i8
    %9 = comb.add bin %x0, %c1_i16 : i16
    %10 = comb.mux bin %8, %9, %6 : i16
    %11 = comb.mux bin %8, %c3_i8, %7 : i8
    %12 = comb.icmp bin eq %state_reg, %c3_i8 : i8
    %13 = comb.add bin %x0, %c1_i16 : i16
    %14 = comb.mux bin %12, %13, %10 : i16
    %15 = comb.mux bin %12, %c4_i8, %11 : i8
    %16 = comb.icmp bin eq %state_reg, %c4_i8 : i8
    %17 = comb.add bin %x0, %c1_i16 : i16
    %18 = comb.mux bin %16, %17, %14 : i16
    %19 = comb.mux bin %16, %c5_i8, %15 : i8
    %20 = comb.icmp bin eq %state_reg, %c5_i8 : i8
    %21 = comb.add bin %x0, %c1_i16 : i16
    %22 = comb.mux bin %20, %21, %18 : i16
    %23 = comb.mux bin %20, %c6_i8, %19 : i8
    %24 = comb.icmp bin eq %state_reg, %c6_i8 : i8
    %25 = comb.add bin %x0, %c1_i16 : i16
    %26 = comb.mux bin %24, %25, %22 : i16
    %27 = comb.mux bin %24, %c7_i8, %23 : i8
    %28 = comb.icmp bin eq %state_reg, %c7_i8 : i8
    %29 = comb.add bin %x0, %c1_i16 : i16
    %30 = comb.mux bin %28, %29, %26 : i16
    %31 = comb.mux bin %28, %c8_i8, %27 : i8
    %32 = comb.icmp bin eq %state_reg, %c8_i8 : i8
    %33 = comb.add bin %x0, %c1_i16 : i16
    %34 = comb.mux bin %32, %33, %30 : i16
    %35 = comb.mux bin %32, %c9_i8, %31 : i8
    %36 = comb.icmp bin eq %state_reg, %c9_i8 : i8
    %37 = comb.add bin %x0, %c1_i16 : i16
    %38 = comb.mux bin %36, %37, %34 : i16
    %39 = comb.mux bin %36, %c10_i8, %35 : i8
    %40 = comb.icmp bin eq %state_reg, %c10_i8 : i8
    %41 = comb.add bin %x0, %c1_i16 : i16
    %42 = comb.mux bin %40, %41, %38 : i16
    %43 = comb.mux bin %40, %c11_i8, %39 : i8
    %44 = comb.icmp bin eq %state_reg, %c11_i8 : i8
    %45 = comb.add bin %x0, %c1_i16 : i16
    %46 = comb.mux bin %44, %45, %42 : i16
    %47 = comb.mux bin %44, %c12_i8, %43 : i8
    %48 = comb.icmp bin eq %state_reg, %c12_i8 : i8
    %49 = comb.add bin %x0, %c1_i16 : i16
    %50 = comb.mux bin %48, %49, %46 : i16
    %51 = comb.mux bin %48, %c13_i8, %47 : i8
    %52 = comb.icmp bin eq %state_reg, %c13_i8 : i8
    %53 = comb.add bin %x0, %c1_i16 : i16
    %54 = comb.mux bin %52, %53, %50 : i16
    %55 = comb.mux bin %52, %c14_i8, %51 : i8
    %56 = comb.icmp bin eq %state_reg, %c14_i8 : i8
    %57 = comb.add bin %x0, %c1_i16 : i16
    %58 = comb.mux bin %56, %57, %54 : i16
    %59 = comb.mux bin %56, %c15_i8, %55 : i8
    %60 = comb.icmp bin eq %state_reg, %c15_i8 : i8
    %61 = comb.add bin %x0, %c1_i16 : i16
    %62 = comb.mux bin %60, %61, %58 : i16
    %63 = comb.mux bin %60, %c16_i8, %59 : i8
    %64 = comb.icmp bin eq %state_reg, %c16_i8 : i8
    %65 = comb.add bin %x0, %c1_i16 : i16
    %66 = comb.mux bin %64, %65, %62 : i16
    %67 = comb.mux bin %64, %c17_i8, %63 : i8
    %68 = comb.icmp bin eq %state_reg, %c17_i8 : i8
    %69 = comb.add bin %x0, %c1_i16 : i16
    %70 = comb.mux bin %68, %69, %66 : i16
    %71 = comb.mux bin %68, %c18_i8, %67 : i8
    %72 = comb.icmp bin eq %state_reg, %c18_i8 : i8
    %73 = comb.add bin %x0, %c1_i16 : i16
    %74 = comb.mux bin %72, %73, %70 : i16
    %75 = comb.mux bin %72, %c19_i8, %71 : i8
    %76 = comb.icmp bin eq %state_reg, %c19_i8 : i8
    %77 = comb.add bin %x0, %c1_i16 : i16
    %78 = comb.mux bin %76, %77, %74 : i16
    %79 = comb.mux bin %76, %c20_i8, %75 : i8
    %80 = comb.icmp bin eq %state_reg, %c20_i8 : i8
    %81 = comb.add bin %x0, %c1_i16 : i16
    %82 = comb.mux bin %80, %81, %78 : i16
    %83 = comb.mux bin %80, %c21_i8, %79 : i8
    %84 = comb.icmp bin eq %state_reg, %c21_i8 : i8
    %85 = comb.add bin %x0, %c1_i16 : i16
    %86 = comb.mux bin %84, %85, %82 : i16
    %87 = comb.mux bin %84, %c22_i8, %83 : i8
    %88 = comb.icmp bin eq %state_reg, %c22_i8 : i8
    %89 = comb.add bin %x0, %c1_i16 : i16
    %90 = comb.mux bin %88, %89, %86 : i16
    %91 = comb.mux bin %88, %c23_i8, %87 : i8
    %92 = comb.icmp bin eq %state_reg, %c23_i8 : i8
    %93 = comb.add bin %x0, %c1_i16 : i16
    %94 = comb.mux bin %92, %93, %90 : i16
    %95 = comb.mux bin %92, %c24_i8, %91 : i8
    %96 = comb.icmp bin eq %state_reg, %c24_i8 : i8
    %97 = comb.add bin %x0, %c1_i16 : i16
    %98 = comb.mux bin %96, %97, %94 : i16
    %99 = comb.mux bin %96, %c25_i8, %95 : i8
    %100 = comb.icmp bin eq %state_reg, %c25_i8 : i8
    %101 = comb.add bin %x0, %c1_i16 : i16
    %102 = comb.mux bin %100, %101, %98 : i16
    %103 = comb.mux bin %100, %c26_i8, %99 : i8
    %104 = comb.icmp bin eq %state_reg, %c26_i8 : i8
    %105 = comb.add bin %x0, %c1_i16 : i16
    %106 = comb.mux bin %104, %105, %102 : i16
    %107 = comb.mux bin %104, %c27_i8, %103 : i8
    %108 = comb.icmp bin eq %state_reg, %c27_i8 : i8
    %109 = comb.add bin %x0, %c1_i16 : i16
    %110 = comb.mux bin %108, %109, %106 : i16
    %111 = comb.mux bin %108, %c28_i8, %107 : i8
    %112 = comb.icmp bin eq %state_reg, %c28_i8 : i8
    %113 = comb.add bin %x0, %c1_i16 : i16
    %114 = comb.mux bin %112, %113, %110 : i16
    %115 = comb.mux bin %112, %c29_i8, %111 : i8
    %116 = comb.icmp bin eq %state_reg, %c29_i8 : i8
    %117 = comb.add bin %x0, %c1_i16 : i16
    %118 = comb.mux bin %116, %117, %114 : i16
    %119 = comb.mux bin %116, %c30_i8, %115 : i8
    %120 = comb.icmp bin eq %state_reg, %c30_i8 : i8
    %121 = comb.add bin %x0, %c1_i16 : i16
    %122 = comb.mux bin %120, %121, %118 : i16
    %123 = comb.mux bin %120, %c31_i8, %119 : i8
    %124 = comb.icmp bin eq %state_reg, %c31_i8 : i8
    %125 = comb.add bin %x0, %c1_i16 : i16
    %126 = comb.mux bin %124, %125, %122 : i16
    %127 = comb.mux bin %124, %c32_i8, %123 : i8
    %128 = comb.icmp bin eq %state_reg, %c32_i8 : i8
    %129 = comb.add bin %x0, %c1_i16 : i16
    %130 = comb.mux bin %128, %129, %126 : i16
    %131 = comb.mux bin %128, %c33_i8, %127 : i8
    %132 = comb.icmp bin eq %state_reg, %c33_i8 : i8
    %133 = comb.add bin %x0, %c1_i16 : i16
    %134 = comb.mux bin %132, %133, %130 : i16
    %135 = comb.mux bin %132, %c34_i8, %131 : i8
    %136 = comb.icmp bin eq %state_reg, %c34_i8 : i8
    %137 = comb.add bin %x0, %c1_i16 : i16
    %138 = comb.mux bin %136, %137, %134 : i16
    %139 = comb.mux bin %136, %c35_i8, %135 : i8
    %140 = comb.icmp bin eq %state_reg, %c35_i8 : i8
    %141 = comb.add bin %x0, %c1_i16 : i16
    %142 = comb.mux bin %140, %141, %138 : i16
    %143 = comb.mux bin %140, %c36_i8, %139 : i8
    %144 = comb.icmp bin eq %state_reg, %c36_i8 : i8
    %145 = comb.add bin %x0, %c1_i16 : i16
    %146 = comb.mux bin %144, %145, %142 : i16
    %147 = comb.mux bin %144, %c37_i8, %143 : i8
    %148 = comb.icmp bin eq %state_reg, %c37_i8 : i8
    %149 = comb.add bin %x0, %c1_i16 : i16
    %150 = comb.mux bin %148, %149, %146 : i16
    %151 = comb.mux bin %148, %c38_i8, %147 : i8
    %152 = comb.icmp bin eq %state_reg, %c38_i8 : i8
    %153 = comb.add bin %x0, %c1_i16 : i16
    %154 = comb.mux bin %152, %153, %150 : i16
    %155 = comb.mux bin %152, %c39_i8, %151 : i8
    %156 = comb.icmp bin eq %state_reg, %c39_i8 : i8
    %157 = comb.add bin %x0, %c1_i16 : i16
    %158 = comb.mux bin %156, %157, %154 : i16
    %159 = comb.mux bin %156, %c40_i8, %155 : i8
    %160 = comb.icmp bin eq %state_reg, %c40_i8 : i8
    %161 = comb.add bin %x0, %c1_i16 : i16
    %162 = comb.mux bin %160, %161, %158 : i16
    %163 = comb.mux bin %160, %c41_i8, %159 : i8
    %164 = comb.icmp bin eq %state_reg, %c41_i8 : i8
    %165 = comb.add bin %x0, %c1_i16 : i16
    %166 = comb.mux bin %164, %165, %162 : i16
    %167 = comb.mux bin %164, %c42_i8, %163 : i8
    %168 = comb.icmp bin eq %state_reg, %c42_i8 : i8
    %169 = comb.add bin %x0, %c1_i16 : i16
    %170 = comb.mux bin %168, %169, %166 : i16
    %171 = comb.mux bin %168, %c43_i8, %167 : i8
    %172 = comb.icmp bin eq %state_reg, %c43_i8 : i8
    %173 = comb.add bin %x0, %c1_i16 : i16
    %174 = comb.mux bin %172, %173, %170 : i16
    %175 = comb.mux bin %172, %c44_i8, %171 : i8
    %176 = comb.icmp bin eq %state_reg, %c44_i8 : i8
    %177 = comb.add bin %x0, %c1_i16 : i16
    %178 = comb.mux bin %176, %177, %174 : i16
    %179 = comb.mux bin %176, %c45_i8, %175 : i8
    %180 = comb.icmp bin eq %state_reg, %c45_i8 : i8
    %181 = comb.add bin %x0, %c1_i16 : i16
    %182 = comb.mux bin %180, %181, %178 : i16
    %183 = comb.mux bin %180, %c46_i8, %179 : i8
    %184 = comb.icmp bin eq %state_reg, %c46_i8 : i8
    %185 = comb.add bin %x0, %c1_i16 : i16
    %186 = comb.mux bin %184, %185, %182 : i16
    %187 = comb.mux bin %184, %c47_i8, %183 : i8
    %188 = comb.icmp bin eq %state_reg, %c47_i8 : i8
    %189 = comb.add bin %x0, %c1_i16 : i16
    %190 = comb.mux bin %188, %189, %186 : i16
    %191 = comb.mux bin %188, %c48_i8, %187 : i8
    %192 = comb.icmp bin eq %state_reg, %c48_i8 : i8
    %193 = comb.add bin %x0, %c1_i16 : i16
    %194 = comb.mux bin %192, %193, %190 : i16
    %195 = comb.mux bin %192, %c49_i8, %191 : i8
    %196 = comb.icmp bin eq %state_reg, %c49_i8 : i8
    %197 = comb.add bin %x0, %c1_i16 : i16
    %198 = comb.mux bin %196, %197, %194 : i16
    %199 = comb.mux bin %196, %c50_i8, %195 : i8
    %200 = comb.icmp bin eq %state_reg, %c50_i8 : i8
    %201 = comb.add bin %x0, %c1_i16 : i16
    %202 = comb.mux bin %200, %201, %198 : i16
    %203 = comb.mux bin %200, %c51_i8, %199 : i8
    %204 = comb.icmp bin eq %state_reg, %c51_i8 : i8
    %205 = comb.add bin %x0, %c1_i16 : i16
    %206 = comb.mux bin %204, %205, %202 : i16
    %207 = comb.mux bin %204, %c52_i8, %203 : i8
    %208 = comb.icmp bin eq %state_reg, %c52_i8 : i8
    %209 = comb.add bin %x0, %c1_i16 : i16
    %210 = comb.mux bin %208, %209, %206 : i16
    %211 = comb.mux bin %208, %c53_i8, %207 : i8
    %212 = comb.icmp bin eq %state_reg, %c53_i8 : i8
    %213 = comb.add bin %x0, %c1_i16 : i16
    %214 = comb.mux bin %212, %213, %210 : i16
    %215 = comb.mux bin %212, %c54_i8, %211 : i8
    %216 = comb.icmp bin eq %state_reg, %c54_i8 : i8
    %217 = comb.add bin %x0, %c1_i16 : i16
    %218 = comb.mux bin %216, %217, %214 : i16
    %219 = comb.mux bin %216, %c55_i8, %215 : i8
    %220 = comb.icmp bin eq %state_reg, %c55_i8 : i8
    %221 = comb.add bin %x0, %c1_i16 : i16
    %222 = comb.mux bin %220, %221, %218 : i16
    %223 = comb.mux bin %220, %c56_i8, %219 : i8
    %224 = comb.icmp bin eq %state_reg, %c56_i8 : i8
    %225 = comb.add bin %x0, %c1_i16 : i16
    %226 = comb.mux bin %224, %225, %222 : i16
    %227 = comb.mux bin %224, %c57_i8, %223 : i8
    %228 = comb.icmp bin eq %state_reg, %c57_i8 : i8
    %229 = comb.add bin %x0, %c1_i16 : i16
    %230 = comb.mux bin %228, %229, %226 : i16
    %231 = comb.mux bin %228, %c58_i8, %227 : i8
    %232 = comb.icmp bin eq %state_reg, %c58_i8 : i8
    %233 = comb.add bin %x0, %c1_i16 : i16
    %234 = comb.mux bin %232, %233, %230 : i16
    %235 = comb.mux bin %232, %c59_i8, %231 : i8
    %236 = comb.icmp bin eq %state_reg, %c59_i8 : i8
    %237 = comb.add bin %x0, %c1_i16 : i16
    %238 = comb.mux bin %236, %237, %234 : i16
    %239 = comb.mux bin %236, %c60_i8, %235 : i8
    %240 = comb.icmp bin eq %state_reg, %c60_i8 : i8
    %241 = comb.add bin %x0, %c1_i16 : i16
    %242 = comb.mux bin %240, %241, %238 : i16
    %243 = comb.mux bin %240, %c61_i8, %239 : i8
    %244 = comb.icmp bin eq %state_reg, %c61_i8 : i8
    %245 = comb.add bin %x0, %c1_i16 : i16
    %246 = comb.mux bin %244, %245, %242 : i16
    %247 = comb.mux bin %244, %c62_i8, %243 : i8
    %248 = comb.icmp bin eq %state_reg, %c62_i8 : i8
    %249 = comb.add bin %x0, %c1_i16 : i16
    %250 = comb.mux bin %248, %249, %246 : i16
    %251 = comb.mux bin %248, %c63_i8, %247 : i8
    %252 = comb.icmp bin eq %state_reg, %c63_i8 : i8
    %253 = comb.add bin %x0, %c1_i16 : i16
    %254 = comb.mux bin %252, %253, %250 : i16
    %255 = comb.mux bin %252, %c64_i8, %251 : i8
    %256 = comb.icmp bin eq %state_reg, %c64_i8 : i8
    %257 = comb.add bin %x0, %c1_i16 : i16
    %258 = comb.mux bin %256, %257, %254 : i16
    %259 = comb.mux bin %256, %c65_i8, %255 : i8
    %260 = comb.icmp bin eq %state_reg, %c65_i8 : i8
    %261 = comb.add bin %x0, %c1_i16 : i16
    %262 = comb.mux bin %260, %261, %258 : i16
    %263 = comb.mux bin %260, %c66_i8, %259 : i8
    %264 = comb.icmp bin eq %state_reg, %c66_i8 : i8
    %265 = comb.add bin %x0, %c1_i16 : i16
    %266 = comb.mux bin %264, %265, %262 : i16
    %267 = comb.mux bin %264, %c67_i8, %263 : i8
    %268 = comb.icmp bin eq %state_reg, %c67_i8 : i8
    %269 = comb.add bin %x0, %c1_i16 : i16
    %270 = comb.mux bin %268, %269, %266 : i16
    %271 = comb.mux bin %268, %c68_i8, %267 : i8
    %272 = comb.icmp bin eq %state_reg, %c68_i8 : i8
    %273 = comb.add bin %x0, %c1_i16 : i16
    %274 = comb.mux bin %272, %273, %270 : i16
    %275 = comb.mux bin %272, %c69_i8, %271 : i8
    %276 = comb.icmp bin eq %state_reg, %c69_i8 : i8
    %277 = comb.add bin %x0, %c1_i16 : i16
    %278 = comb.mux bin %276, %277, %274 : i16
    %279 = comb.mux bin %276, %c70_i8, %275 : i8
    %280 = comb.icmp bin eq %state_reg, %c70_i8 : i8
    %281 = comb.add bin %x0, %c1_i16 : i16
    %282 = comb.mux bin %280, %281, %278 : i16
    %283 = comb.mux bin %280, %c71_i8, %279 : i8
    %284 = comb.icmp bin eq %state_reg, %c71_i8 : i8
    %285 = comb.add bin %x0, %c1_i16 : i16
    %286 = comb.mux bin %284, %285, %282 : i16
    %287 = comb.mux bin %284, %c72_i8, %283 : i8
    %288 = comb.icmp bin eq %state_reg, %c72_i8 : i8
    %289 = comb.add bin %x0, %c1_i16 : i16
    %290 = comb.mux bin %288, %289, %286 : i16
    %291 = comb.mux bin %288, %c73_i8, %287 : i8
    %292 = comb.icmp bin eq %state_reg, %c73_i8 : i8
    %293 = comb.add bin %x0, %c1_i16 : i16
    %294 = comb.mux bin %292, %293, %290 : i16
    %295 = comb.mux bin %292, %c74_i8, %291 : i8
    %296 = comb.icmp bin eq %state_reg, %c74_i8 : i8
    %297 = comb.add bin %x0, %c1_i16 : i16
    %298 = comb.mux bin %296, %297, %294 : i16
    %299 = comb.mux bin %296, %c75_i8, %295 : i8
    %300 = comb.icmp bin eq %state_reg, %c75_i8 : i8
    %301 = comb.add bin %x0, %c1_i16 : i16
    %302 = comb.mux bin %300, %301, %298 : i16
    %303 = comb.mux bin %300, %c76_i8, %299 : i8
    %304 = comb.icmp bin eq %state_reg, %c76_i8 : i8
    %305 = comb.add bin %x0, %c1_i16 : i16
    %306 = comb.mux bin %304, %305, %302 : i16
    %307 = comb.mux bin %304, %c77_i8, %303 : i8
    %308 = comb.icmp bin eq %state_reg, %c77_i8 : i8
    %309 = comb.add bin %x0, %c1_i16 : i16
    %310 = comb.mux bin %308, %309, %306 : i16
    %311 = comb.mux bin %308, %c78_i8, %307 : i8
    %312 = comb.icmp bin eq %state_reg, %c78_i8 : i8
    %313 = comb.add bin %x0, %c1_i16 : i16
    %314 = comb.mux bin %312, %313, %310 : i16
    %315 = comb.mux bin %312, %c79_i8, %311 : i8
    %316 = comb.icmp bin eq %state_reg, %c79_i8 : i8
    %317 = comb.add bin %x0, %c1_i16 : i16
    %318 = comb.mux bin %316, %317, %314 : i16
    %319 = comb.mux bin %316, %c80_i8, %315 : i8
    %320 = comb.icmp bin eq %state_reg, %c80_i8 : i8
    %321 = comb.add bin %x0, %c1_i16 : i16
    %322 = comb.mux bin %320, %321, %318 : i16
    %323 = comb.mux bin %320, %c81_i8, %319 : i8
    %324 = comb.icmp bin eq %state_reg, %c81_i8 : i8
    %325 = comb.add bin %x0, %c1_i16 : i16
    %326 = comb.mux bin %324, %325, %322 : i16
    %327 = comb.mux bin %324, %c82_i8, %323 : i8
    %328 = comb.icmp bin eq %state_reg, %c82_i8 : i8
    %329 = comb.add bin %x0, %c1_i16 : i16
    %330 = comb.mux bin %328, %329, %326 : i16
    %331 = comb.mux bin %328, %c83_i8, %327 : i8
    %332 = comb.icmp bin eq %state_reg, %c83_i8 : i8
    %333 = comb.add bin %x0, %c1_i16 : i16
    %334 = comb.mux bin %332, %333, %330 : i16
    %335 = comb.mux bin %332, %c84_i8, %331 : i8
    %336 = comb.icmp bin eq %state_reg, %c84_i8 : i8
    %337 = comb.add bin %x0, %c1_i16 : i16
    %338 = comb.mux bin %336, %337, %334 : i16
    %339 = comb.mux bin %336, %c85_i8, %335 : i8
    %340 = comb.icmp bin eq %state_reg, %c85_i8 : i8
    %341 = comb.add bin %x0, %c1_i16 : i16
    %342 = comb.mux bin %340, %341, %338 : i16
    %343 = comb.mux bin %340, %c86_i8, %339 : i8
    %344 = comb.icmp bin eq %state_reg, %c86_i8 : i8
    %345 = comb.add bin %x0, %c1_i16 : i16
    %346 = comb.mux bin %344, %345, %342 : i16
    %347 = comb.mux bin %344, %c87_i8, %343 : i8
    %348 = comb.icmp bin eq %state_reg, %c87_i8 : i8
    %349 = comb.add bin %x0, %c1_i16 : i16
    %350 = comb.mux bin %348, %349, %346 : i16
    %351 = comb.mux bin %348, %c88_i8, %347 : i8
    %352 = comb.icmp bin eq %state_reg, %c88_i8 : i8
    %353 = comb.add bin %x0, %c1_i16 : i16
    %354 = comb.mux bin %352, %353, %350 : i16
    %355 = comb.mux bin %352, %c89_i8, %351 : i8
    %356 = comb.icmp bin eq %state_reg, %c89_i8 : i8
    %357 = comb.add bin %x0, %c1_i16 : i16
    %358 = comb.mux bin %356, %357, %354 : i16
    %359 = comb.mux bin %356, %c90_i8, %355 : i8
    %360 = comb.icmp bin eq %state_reg, %c90_i8 : i8
    %361 = comb.add bin %x0, %c1_i16 : i16
    %362 = comb.mux bin %360, %361, %358 : i16
    %363 = comb.mux bin %360, %c91_i8, %359 : i8
    %364 = comb.icmp bin eq %state_reg, %c91_i8 : i8
    %365 = comb.add bin %x0, %c1_i16 : i16
    %366 = comb.mux bin %364, %365, %362 : i16
    %367 = comb.mux bin %364, %c92_i8, %363 : i8
    %368 = comb.icmp bin eq %state_reg, %c92_i8 : i8
    %369 = comb.add bin %x0, %c1_i16 : i16
    %370 = comb.mux bin %368, %369, %366 : i16
    %371 = comb.mux bin %368, %c93_i8, %367 : i8
    %372 = comb.icmp bin eq %state_reg, %c93_i8 : i8
    %373 = comb.add bin %x0, %c1_i16 : i16
    %374 = comb.mux bin %372, %373, %370 : i16
    %375 = comb.mux bin %372, %c94_i8, %371 : i8
    %376 = comb.icmp bin eq %state_reg, %c94_i8 : i8
    %377 = comb.add bin %x0, %c1_i16 : i16
    %378 = comb.mux bin %376, %377, %374 : i16
    %379 = comb.mux bin %376, %c95_i8, %375 : i8
    %380 = comb.icmp bin eq %state_reg, %c95_i8 : i8
    %381 = comb.add bin %x0, %c1_i16 : i16
    %382 = comb.mux bin %380, %381, %378 : i16
    %383 = comb.mux bin %380, %c96_i8, %379 : i8
    %384 = comb.icmp bin eq %state_reg, %c96_i8 : i8
    %385 = comb.add bin %x0, %c1_i16 : i16
    %386 = comb.mux bin %384, %385, %382 : i16
    %387 = comb.mux bin %384, %c97_i8, %383 : i8
    %388 = comb.icmp bin eq %state_reg, %c97_i8 : i8
    %389 = comb.add bin %x0, %c1_i16 : i16
    %390 = comb.mux bin %388, %389, %386 : i16
    %391 = comb.mux bin %388, %c98_i8, %387 : i8
    %392 = comb.icmp bin eq %state_reg, %c98_i8 : i8
    %393 = comb.add bin %x0, %c1_i16 : i16
    %394 = comb.mux bin %392, %393, %390 : i16
    %395 = comb.mux bin %392, %c99_i8, %391 : i8
    %396 = comb.icmp bin eq %state_reg, %c99_i8 : i8
    %397 = comb.add bin %x0, %c1_i16 : i16
    %398 = comb.mux bin %396, %397, %394 : i16
    %399 = comb.mux bin %396, %c100_i8, %395 : i8
    %400 = comb.icmp bin eq %state_reg, %c100_i8 : i8
    %401 = comb.add bin %x0, %c1_i16 : i16
    %402 = comb.mux bin %400, %401, %398 : i16
    %403 = comb.mux bin %400, %c101_i8, %399 : i8
    %404 = comb.icmp bin eq %state_reg, %c101_i8 : i8
    %405 = comb.add bin %x0, %c1_i16 : i16
    %406 = comb.mux bin %404, %405, %402 : i16
    %407 = comb.mux bin %404, %c102_i8, %403 : i8
    %408 = comb.icmp bin eq %state_reg, %c102_i8 : i8
    %409 = comb.add bin %x0, %c1_i16 : i16
    %410 = comb.mux bin %408, %409, %406 : i16
    %411 = comb.mux bin %408, %c103_i8, %407 : i8
    %412 = comb.icmp bin eq %state_reg, %c103_i8 : i8
    %413 = comb.add bin %x0, %c1_i16 : i16
    %414 = comb.mux bin %412, %413, %410 : i16
    %415 = comb.mux bin %412, %c104_i8, %411 : i8
    %416 = comb.icmp bin eq %state_reg, %c104_i8 : i8
    %417 = comb.add bin %x0, %c1_i16 : i16
    %418 = comb.mux bin %416, %417, %414 : i16
    %419 = comb.mux bin %416, %c105_i8, %415 : i8
    %420 = comb.icmp bin eq %state_reg, %c105_i8 : i8
    %421 = comb.add bin %x0, %c1_i16 : i16
    %422 = comb.mux bin %420, %421, %418 : i16
    %423 = comb.mux bin %420, %c106_i8, %419 : i8
    %424 = comb.icmp bin eq %state_reg, %c106_i8 : i8
    %425 = comb.add bin %x0, %c1_i16 : i16
    %426 = comb.mux bin %424, %425, %422 : i16
    %427 = comb.mux bin %424, %c107_i8, %423 : i8
    %428 = comb.icmp bin eq %state_reg, %c107_i8 : i8
    %429 = comb.add bin %x0, %c1_i16 : i16
    %430 = comb.mux bin %428, %429, %426 : i16
    %431 = comb.mux bin %428, %c108_i8, %427 : i8
    %432 = comb.icmp bin eq %state_reg, %c108_i8 : i8
    %433 = comb.add bin %x0, %c1_i16 : i16
    %434 = comb.mux bin %432, %433, %430 : i16
    %435 = comb.mux bin %432, %c109_i8, %431 : i8
    %436 = comb.icmp bin eq %state_reg, %c109_i8 : i8
    %437 = comb.add bin %x0, %c1_i16 : i16
    %438 = comb.mux bin %436, %437, %434 : i16
    %439 = comb.mux bin %436, %c110_i8, %435 : i8
    %440 = comb.icmp bin eq %state_reg, %c110_i8 : i8
    %441 = comb.add bin %x0, %c1_i16 : i16
    %442 = comb.mux bin %440, %441, %438 : i16
    %443 = comb.mux bin %440, %c111_i8, %439 : i8
    %444 = comb.icmp bin eq %state_reg, %c111_i8 : i8
    %445 = comb.add bin %x0, %c1_i16 : i16
    %446 = comb.mux bin %444, %445, %442 : i16
    %447 = comb.mux bin %444, %c112_i8, %443 : i8
    %448 = comb.icmp bin eq %state_reg, %c112_i8 : i8
    %449 = comb.add bin %x0, %c1_i16 : i16
    %450 = comb.mux bin %448, %449, %446 : i16
    %451 = comb.mux bin %448, %c113_i8, %447 : i8
    %452 = comb.icmp bin eq %state_reg, %c113_i8 : i8
    %453 = comb.add bin %x0, %c1_i16 : i16
    %454 = comb.mux bin %452, %453, %450 : i16
    %455 = comb.mux bin %452, %c114_i8, %451 : i8
    %456 = comb.icmp bin eq %state_reg, %c114_i8 : i8
    %457 = comb.add bin %x0, %c1_i16 : i16
    %458 = comb.mux bin %456, %457, %454 : i16
    %459 = comb.mux bin %456, %c115_i8, %455 : i8
    %460 = comb.icmp bin eq %state_reg, %c115_i8 : i8
    %461 = comb.add bin %x0, %c1_i16 : i16
    %462 = comb.mux bin %460, %461, %458 : i16
    %463 = comb.mux bin %460, %c116_i8, %459 : i8
    %464 = comb.icmp bin eq %state_reg, %c116_i8 : i8
    %465 = comb.add bin %x0, %c1_i16 : i16
    %466 = comb.mux bin %464, %465, %462 : i16
    %467 = comb.mux bin %464, %c117_i8, %463 : i8
    %468 = comb.icmp bin eq %state_reg, %c117_i8 : i8
    %469 = comb.add bin %x0, %c1_i16 : i16
    %470 = comb.mux bin %468, %469, %466 : i16
    %471 = comb.mux bin %468, %c118_i8, %467 : i8
    %472 = comb.icmp bin eq %state_reg, %c118_i8 : i8
    %473 = comb.add bin %x0, %c1_i16 : i16
    %474 = comb.mux bin %472, %473, %470 : i16
    %475 = comb.mux bin %472, %c119_i8, %471 : i8
    %476 = comb.icmp bin eq %state_reg, %c119_i8 : i8
    %477 = comb.add bin %x0, %c1_i16 : i16
    %478 = comb.mux bin %476, %477, %474 : i16
    %479 = comb.mux bin %476, %c120_i8, %475 : i8
    %480 = comb.icmp bin eq %state_reg, %c120_i8 : i8
    %481 = comb.add bin %x0, %c1_i16 : i16
    %482 = comb.mux bin %480, %481, %478 : i16
    %483 = comb.mux bin %480, %c121_i8, %479 : i8
    %484 = comb.icmp bin eq %state_reg, %c121_i8 : i8
    %485 = comb.add bin %x0, %c1_i16 : i16
    %486 = comb.mux bin %484, %485, %482 : i16
    %487 = comb.mux bin %484, %c122_i8, %483 : i8
    %488 = comb.icmp bin eq %state_reg, %c122_i8 : i8
    %489 = comb.add bin %x0, %c1_i16 : i16
    %490 = comb.mux bin %488, %489, %486 : i16
    %491 = comb.mux bin %488, %c123_i8, %487 : i8
    %492 = comb.icmp bin eq %state_reg, %c123_i8 : i8
    %493 = comb.add bin %x0, %c1_i16 : i16
    %494 = comb.mux bin %492, %493, %490 : i16
    %495 = comb.mux bin %492, %c124_i8, %491 : i8
    %496 = comb.icmp bin eq %state_reg, %c124_i8 : i8
    %497 = comb.add bin %x0, %c1_i16 : i16
    %498 = comb.mux bin %496, %497, %494 : i16
    %499 = comb.mux bin %496, %c125_i8, %495 : i8
    %500 = comb.icmp bin eq %state_reg, %c125_i8 : i8
    %501 = comb.add bin %x0, %c1_i16 : i16
    %502 = comb.mux bin %500, %501, %498 : i16
    %503 = comb.mux bin %500, %c126_i8, %499 : i8
    %504 = comb.icmp bin eq %state_reg, %c126_i8 : i8
    %505 = comb.add bin %x0, %c1_i16 : i16
    %506 = comb.mux bin %504, %505, %502 : i16
    %507 = comb.mux bin %504, %c127_i8, %503 : i8
    %508 = comb.icmp bin eq %state_reg, %c127_i8 : i8
    %509 = comb.add bin %x0, %c1_i16 : i16
    %510 = comb.mux bin %508, %509, %506 : i16
    %511 = comb.mux bin %508, %c-128_i8, %507 : i8
    %512 = comb.icmp bin eq %state_reg, %c-128_i8 : i8
    %513 = comb.add bin %x0, %c1_i16 : i16
    %514 = comb.mux bin %512, %513, %510 : i16
    %515 = comb.mux bin %512, %c-127_i8, %511 : i8
    %516 = comb.icmp bin eq %state_reg, %c-127_i8 : i8
    %517 = comb.add bin %x0, %c1_i16 : i16
    %518 = comb.mux bin %516, %517, %514 : i16
    %519 = comb.mux bin %516, %c-126_i8, %515 : i8
    %520 = comb.icmp bin eq %state_reg, %c-126_i8 : i8
    %521 = comb.mux bin %520, %c-126_i8, %519 : i8
    // Assertion:
    %c-1_i1 = hw.constant -1 : i1
    %is_init_state = comb.icmp bin eq %state_reg, %c0_i8 : i8
    %cnt_zero = comb.icmp bin eq %x0, %c0_i16 : i16
    %not_init_state = comb.xor bin %is_init_state, %c-1_i1 : i1
    %prop = comb.or bin %not_init_state, %cnt_zero : i1
    sv.assert %prop : i1
    hw.output
  }
}

