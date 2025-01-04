module {
  hw.module @ops(in %arg0 : i32, in %arg0_valid : i1, in %arg1 : i32, in %arg1_valid : i1, in %arg2 : i32, in %arg2_valid : i1, in %arg3 : i32, in %arg3_valid : i1, in %arg4 : i32, in %arg4_valid : i1, in %clk : i32, in %clk_valid : i1, in %rst : i32, in %rst_valid : i1, in %clk_0 : !seq.clock, in %rst_0 : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, out arg0_ready : i1, out arg1_ready : i1, out arg2_ready : i1, out arg3_ready : i1, out arg4_ready : i1, out clk_ready : i1, out rst_ready : i1, out out0 : i32, out out0_valid : i1, out out1 : i32, out out1_valid : i1, out out2 : i0, out out2_valid : i1) {
    %true = hw.constant true
    %true_0 = hw.constant true
    %0 = comb.or %arg0_valid, %arg1_valid : i1
    %true_1 = hw.constant true
    %1 = comb.and %0, %54 : i1
    %2 = comb.and %1, %arg0_valid : i1
    %3 = comb.xor %arg0_valid, %true_1 : i1
    %4 = comb.and %1, %3 : i1
    %5 = comb.xor %arg0_valid, %true_1 : i1
    %6 = comb.mux %5, %arg0, %arg1 : i32
    %7 = comb.or %arg2_valid, %arg3_valid : i1
    %true_2 = hw.constant true
    %8 = comb.and %7, %16 : i1
    %9 = comb.and %8, %arg2_valid : i1
    %10 = comb.xor %arg2_valid, %true_2 : i1
    %11 = comb.and %8, %10 : i1
    %12 = comb.xor %arg2_valid, %true_2 : i1
    %13 = comb.mux %12, %arg2, %arg3 : i32
    %14 = comb.or %7, %arg4_valid : i1
    %true_3 = hw.constant true
    %15 = comb.and %14, %51 : i1
    %16 = comb.and %15, %7 : i1
    %17 = comb.xor %7, %true_3 : i1
    %18 = comb.and %15, %17 : i1
    %19 = comb.xor %7, %true_3 : i1
    %20 = comb.mux %19, %13, %arg4 : i32
    %false = hw.constant false
    %true_4 = hw.constant true
    %21 = comb.xor %51, %true_4 : i1
    %22 = comb.and %26, %21 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %22, %clk_0 reset %rst_0, %false : i1  
    %23 = comb.xor %emitted_0, %true_4 : i1
    %24 = comb.and %23, %14 : i1
    %25 = comb.and %160, %24 : i1
    %26 = comb.or %25, %emitted_0 {sv.namehint = "done0"} : i1
    %27 = comb.xor %51, %true_4 : i1
    %28 = comb.and %32, %27 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %28, %clk_0 reset %rst_0, %false : i1  
    %29 = comb.xor %emitted_1, %true_4 : i1
    %30 = comb.and %29, %14 : i1
    %31 = comb.and %104, %30 : i1
    %32 = comb.or %31, %emitted_1 {sv.namehint = "done1"} : i1
    %33 = comb.xor %51, %true_4 : i1
    %34 = comb.and %38, %33 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %34, %clk_0 reset %rst_0, %false : i1  
    %35 = comb.xor %emitted_2, %true_4 : i1
    %36 = comb.and %35, %14 : i1
    %37 = comb.and %88, %36 : i1
    %38 = comb.or %37, %emitted_2 {sv.namehint = "done2"} : i1
    %39 = comb.xor %51, %true_4 : i1
    %40 = comb.and %44, %39 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %40, %clk_0 reset %rst_0, %false : i1  
    %41 = comb.xor %emitted_3, %true_4 : i1
    %42 = comb.and %41, %14 : i1
    %43 = comb.and %54, %42 : i1
    %44 = comb.or %43, %emitted_3 {sv.namehint = "done3"} : i1
    %45 = comb.xor %51, %true_4 : i1
    %46 = comb.and %50, %45 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %46, %clk_0 reset %rst_0, %false : i1  
    %47 = comb.xor %emitted_4, %true_4 : i1
    %48 = comb.and %47, %14 : i1
    %49 = comb.and %54, %48 : i1
    %50 = comb.or %49, %emitted_4 {sv.namehint = "done4"} : i1
    %51 = comb.and %26, %32, %38, %44, %50 {sv.namehint = "allDone"} : i1
    %52 = comb.sub %6, %20 : i32
    %53 = comb.and %42, %0, %48 : i1
    %54 = comb.and %68, %53 : i1
    %55 = comb.sub %20, %52 : i32
    %false_5 = hw.constant false
    %true_6 = hw.constant true
    %56 = comb.xor %68, %true_6 : i1
    %57 = comb.and %61, %56 : i1
    %emitted_0_7 = seq.compreg sym @emitted_0 name "emitted_0" %57, %clk_0 reset %rst_0, %false_5 : i1  
    %58 = comb.xor %emitted_0_7, %true_6 : i1
    %59 = comb.and %58, %53 : i1
    %60 = comb.and %71, %59 : i1
    %61 = comb.or %60, %emitted_0_7 {sv.namehint = "done0"} : i1
    %62 = comb.xor %68, %true_6 : i1
    %63 = comb.and %67, %62 : i1
    %emitted_1_8 = seq.compreg sym @emitted_1 name "emitted_1" %63, %clk_0 reset %rst_0, %false_5 : i1  
    %64 = comb.xor %emitted_1_8, %true_6 : i1
    %65 = comb.and %64, %53 : i1
    %66 = comb.and %71, %65 : i1
    %67 = comb.or %66, %emitted_1_8 {sv.namehint = "done1"} : i1
    %68 = comb.and %61, %67 {sv.namehint = "allDone"} : i1
    %69 = comb.mul %161, %55 : i32
    %70 = comb.and %59, %177, %65 : i1
    %71 = comb.and %85, %70 : i1
    %72 = comb.divs %69, %55 : i32
    %false_9 = hw.constant false
    %true_10 = hw.constant true
    %73 = comb.xor %85, %true_10 : i1
    %74 = comb.and %78, %73 : i1
    %emitted_0_11 = seq.compreg sym @emitted_0 name "emitted_0" %74, %clk_0 reset %rst_0, %false_9 : i1  
    %75 = comb.xor %emitted_0_11, %true_10 : i1
    %76 = comb.and %75, %70 : i1
    %77 = comb.and %88, %76 : i1
    %78 = comb.or %77, %emitted_0_11 {sv.namehint = "done0"} : i1
    %79 = comb.xor %85, %true_10 : i1
    %80 = comb.and %84, %79 : i1
    %emitted_1_12 = seq.compreg sym @emitted_1 name "emitted_1" %80, %clk_0 reset %rst_0, %false_9 : i1  
    %81 = comb.xor %emitted_1_12, %true_10 : i1
    %82 = comb.and %81, %70 : i1
    %83 = comb.and %88, %82 : i1
    %84 = comb.or %83, %emitted_1_12 {sv.namehint = "done1"} : i1
    %85 = comb.and %78, %84 {sv.namehint = "allDone"} : i1
    %86 = comb.divu %20, %72 : i32
    %87 = comb.and %76, %36, %82 : i1
    %88 = comb.and %102, %87 : i1
    %89 = comb.divs %86, %72 : i32
    %false_13 = hw.constant false
    %true_14 = hw.constant true
    %90 = comb.xor %102, %true_14 : i1
    %91 = comb.and %95, %90 : i1
    %emitted_0_15 = seq.compreg sym @emitted_0 name "emitted_0" %91, %clk_0 reset %rst_0, %false_13 : i1  
    %92 = comb.xor %emitted_0_15, %true_14 : i1
    %93 = comb.and %92, %87 : i1
    %94 = comb.and %126, %93 : i1
    %95 = comb.or %94, %emitted_0_15 {sv.namehint = "done0"} : i1
    %96 = comb.xor %102, %true_14 : i1
    %97 = comb.and %101, %96 : i1
    %emitted_1_16 = seq.compreg sym @emitted_1 name "emitted_1" %97, %clk_0 reset %rst_0, %false_13 : i1  
    %98 = comb.xor %emitted_1_16, %true_14 : i1
    %99 = comb.and %98, %87 : i1
    %100 = comb.and %104, %99 : i1
    %101 = comb.or %100, %emitted_1_16 {sv.namehint = "done1"} : i1
    %102 = comb.and %95, %101 {sv.namehint = "allDone"} : i1
    %103 = comb.and %30, %99 : i1
    %104 = comb.and %124, %103 : i1
    %105 = comb.divu %20, %89 : i32
    %false_17 = hw.constant false
    %true_18 = hw.constant true
    %106 = comb.xor %124, %true_18 : i1
    %107 = comb.and %111, %106 : i1
    %emitted_0_19 = seq.compreg sym @emitted_0 name "emitted_0" %107, %clk_0 reset %rst_0, %false_17 : i1  
    %108 = comb.xor %emitted_0_19, %true_18 : i1
    %109 = comb.and %108, %103 : i1
    %110 = comb.and %out1_ready, %109 : i1
    %111 = comb.or %110, %emitted_0_19 {sv.namehint = "done0"} : i1
    %112 = comb.xor %124, %true_18 : i1
    %113 = comb.and %117, %112 : i1
    %emitted_1_20 = seq.compreg sym @emitted_1 name "emitted_1" %113, %clk_0 reset %rst_0, %false_17 : i1  
    %114 = comb.xor %emitted_1_20, %true_18 : i1
    %115 = comb.and %114, %103 : i1
    %116 = comb.and %142, %115 : i1
    %117 = comb.or %116, %emitted_1_20 {sv.namehint = "done1"} : i1
    %118 = comb.xor %124, %true_18 : i1
    %119 = comb.and %123, %118 : i1
    %emitted_2_21 = seq.compreg sym @emitted_2 name "emitted_2" %119, %clk_0 reset %rst_0, %false_17 : i1  
    %120 = comb.xor %emitted_2_21, %true_18 : i1
    %121 = comb.and %120, %103 : i1
    %122 = comb.and %126, %121 : i1
    %123 = comb.or %122, %emitted_2_21 {sv.namehint = "done2"} : i1
    %124 = comb.and %111, %117, %123 {sv.namehint = "allDone"} : i1
    %125 = comb.and %93, %121 : i1
    %126 = comb.and %140, %125 : i1
    %127 = comb.mul %89, %105 : i32
    %false_22 = hw.constant false
    %true_23 = hw.constant true
    %128 = comb.xor %140, %true_23 : i1
    %129 = comb.and %133, %128 : i1
    %emitted_0_24 = seq.compreg sym @emitted_0 name "emitted_0" %129, %clk_0 reset %rst_0, %false_22 : i1  
    %130 = comb.xor %emitted_0_24, %true_23 : i1
    %131 = comb.and %130, %125 : i1
    %132 = comb.and %160, %131 : i1
    %133 = comb.or %132, %emitted_0_24 {sv.namehint = "done0"} : i1
    %134 = comb.xor %140, %true_23 : i1
    %135 = comb.and %139, %134 : i1
    %emitted_1_25 = seq.compreg sym @emitted_1 name "emitted_1" %135, %clk_0 reset %rst_0, %false_22 : i1  
    %136 = comb.xor %emitted_1_25, %true_23 : i1
    %137 = comb.and %136, %125 : i1
    %138 = comb.and %142, %137 : i1
    %139 = comb.or %138, %emitted_1_25 {sv.namehint = "done1"} : i1
    %140 = comb.and %133, %139 {sv.namehint = "allDone"} : i1
    %141 = comb.and %115, %137 : i1
    %142 = comb.and %156, %141 : i1
    %143 = comb.divs %105, %127 : i32
    %false_26 = hw.constant false
    %true_27 = hw.constant true
    %144 = comb.xor %156, %true_27 : i1
    %145 = comb.and %149, %144 : i1
    %emitted_0_28 = seq.compreg sym @emitted_0 name "emitted_0" %145, %clk_0 reset %rst_0, %false_26 : i1  
    %146 = comb.xor %emitted_0_28, %true_27 : i1
    %147 = comb.and %146, %141 : i1
    %148 = comb.and %160, %147 : i1
    %149 = comb.or %148, %emitted_0_28 {sv.namehint = "done0"} : i1
    %150 = comb.xor %156, %true_27 : i1
    %151 = comb.and %155, %150 : i1
    %emitted_1_29 = seq.compreg sym @emitted_1 name "emitted_1" %151, %clk_0 reset %rst_0, %false_26 : i1  
    %152 = comb.xor %emitted_1_29, %true_27 : i1
    %153 = comb.and %152, %141 : i1
    %154 = comb.and %160, %153 : i1
    %155 = comb.or %154, %emitted_1_29 {sv.namehint = "done1"} : i1
    %156 = comb.and %149, %155 {sv.namehint = "allDone"} : i1
    %157 = comb.and %127, %143 : i32
    %158 = comb.or %20, %143 : i32
    %159 = comb.and %131, %153, %24, %147 : i1
    %160 = comb.and %180, %159 : i1
    %161 = comb.xor %157, %158 : i32
    %c0_i0 = hw.constant 0 : i0
    %false_30 = hw.constant false
    %true_31 = hw.constant true
    %162 = comb.xor %180, %true_31 : i1
    %163 = comb.and %167, %162 : i1
    %emitted_0_32 = seq.compreg sym @emitted_0 name "emitted_0" %163, %clk_0 reset %rst_0, %false_30 : i1  
    %164 = comb.xor %emitted_0_32, %true_31 : i1
    %165 = comb.and %164, %159 : i1
    %166 = comb.and %out0_ready, %165 : i1
    %167 = comb.or %166, %emitted_0_32 {sv.namehint = "done0"} : i1
    %168 = comb.xor %180, %true_31 : i1
    %169 = comb.and %173, %168 : i1
    %emitted_1_33 = seq.compreg sym @emitted_1 name "emitted_1" %169, %clk_0 reset %rst_0, %false_30 : i1  
    %170 = comb.xor %emitted_1_33, %true_31 : i1
    %171 = comb.and %170, %159 : i1
    %172 = comb.and %out2_ready, %171 : i1
    %173 = comb.or %172, %emitted_1_33 {sv.namehint = "done1"} : i1
    %174 = comb.xor %180, %true_31 : i1
    %175 = comb.and %179, %174 : i1
    %emitted_2_34 = seq.compreg sym @emitted_2 name "emitted_2" %175, %clk_0 reset %rst_0, %false_30 : i1  
    %176 = comb.xor %emitted_2_34, %true_31 : i1
    %177 = comb.and %176, %159 : i1
    %178 = comb.and %71, %177 : i1
    %179 = comb.or %178, %emitted_2_34 {sv.namehint = "done2"} : i1
    %180 = comb.and %167, %173, %179 {sv.namehint = "allDone"} : i1
    hw.output %2, %4, %9, %11, %18, %true_0, %true, %161, %165, %105, %109, %c0_i0, %171 : i1, i1, i1, i1, i1, i1, i1, i32, i1, i32, i1, i0, i1
  }
}

