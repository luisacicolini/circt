module {
  hw.module @ops(in %arg0 : i32, in %arg0_valid : i1, in %arg1 : i32, in %arg1_valid : i1, in %arg2 : i32, in %arg2_valid : i1, in %arg3 : i32, in %arg3_valid : i1, in %arg4 : i32, in %arg4_valid : i1, in %clk : i32, in %clk_valid : i1, in %rst : i32, in %rst_valid : i1, in %clk_0 : !seq.clock, in %rst_0 : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, out arg0_ready : i1, out arg1_ready : i1, out arg2_ready : i1, out arg3_ready : i1, out arg4_ready : i1, out clk_ready : i1, out rst_ready : i1, out out0 : i32, out out0_valid : i1, out out1 : i32, out out1_valid : i1, out out2 : i0, out out2_valid : i1) {
    %c0_i0 = hw.constant 0 : i0
    %true = hw.constant true
    %c0_i0_0 = hw.constant 0 : i0
    %true_1 = hw.constant true
    %c0_i0_2 = hw.constant 0 : i0
    %c0_i0_3 = hw.constant 0 : i0
    %0 = comb.or %arg0_valid, %arg1_valid : i1
    %true_4 = hw.constant true
    %1 = comb.xor %arg0_valid, %true_4 : i1
    %2 = comb.and %0, %51 : i1
    %3 = comb.and %2, %arg0_valid : i1
    %4 = comb.and %2, %1 : i1
    %c0_i0_5 = hw.constant 0 : i0
    %5 = comb.mux %1, %arg0, %arg1 : i32
    %c0_i0_6 = hw.constant 0 : i0
    %c0_i0_7 = hw.constant 0 : i0
    %6 = comb.or %arg2_valid, %arg3_valid : i1
    %true_8 = hw.constant true
    %7 = comb.xor %arg2_valid, %true_8 : i1
    %8 = comb.and %6, %15 : i1
    %9 = comb.and %8, %arg2_valid : i1
    %10 = comb.and %8, %7 : i1
    %c0_i0_9 = hw.constant 0 : i0
    %11 = comb.mux %7, %arg2, %arg3 : i32
    %c0_i0_10 = hw.constant 0 : i0
    %12 = comb.or %6, %arg4_valid : i1
    %true_11 = hw.constant true
    %13 = comb.xor %6, %true_11 : i1
    %14 = comb.and %12, %48 : i1
    %15 = comb.and %14, %6 : i1
    %16 = comb.and %14, %13 : i1
    %c0_i0_12 = hw.constant 0 : i0
    %17 = comb.mux %13, %11, %arg4 : i32
    %c0_i0_13 = hw.constant 0 : i0
    %c0_i0_14 = hw.constant 0 : i0
    %c0_i0_15 = hw.constant 0 : i0
    %c0_i0_16 = hw.constant 0 : i0
    %c0_i0_17 = hw.constant 0 : i0
    %false = hw.constant false
    %true_18 = hw.constant true
    %18 = comb.xor %48, %true_18 : i1
    %19 = comb.and %23, %18 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %19, %clk_0 reset %rst_0, %false : i1  
    %20 = comb.xor %emitted_0, %true_18 : i1
    %21 = comb.and %20, %12 : i1
    %22 = comb.and %157, %21 : i1
    %23 = comb.or %22, %emitted_0 {sv.namehint = "done0"} : i1
    %24 = comb.xor %48, %true_18 : i1
    %25 = comb.and %29, %24 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %25, %clk_0 reset %rst_0, %false : i1  
    %26 = comb.xor %emitted_1, %true_18 : i1
    %27 = comb.and %26, %12 : i1
    %28 = comb.and %101, %27 : i1
    %29 = comb.or %28, %emitted_1 {sv.namehint = "done1"} : i1
    %30 = comb.xor %48, %true_18 : i1
    %31 = comb.and %35, %30 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %31, %clk_0 reset %rst_0, %false : i1  
    %32 = comb.xor %emitted_2, %true_18 : i1
    %33 = comb.and %32, %12 : i1
    %34 = comb.and %85, %33 : i1
    %35 = comb.or %34, %emitted_2 {sv.namehint = "done2"} : i1
    %36 = comb.xor %48, %true_18 : i1
    %37 = comb.and %41, %36 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %37, %clk_0 reset %rst_0, %false : i1  
    %38 = comb.xor %emitted_3, %true_18 : i1
    %39 = comb.and %38, %12 : i1
    %40 = comb.and %51, %39 : i1
    %41 = comb.or %40, %emitted_3 {sv.namehint = "done3"} : i1
    %42 = comb.xor %48, %true_18 : i1
    %43 = comb.and %47, %42 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %43, %clk_0 reset %rst_0, %false : i1  
    %44 = comb.xor %emitted_4, %true_18 : i1
    %45 = comb.and %44, %12 : i1
    %46 = comb.and %51, %45 : i1
    %47 = comb.or %46, %emitted_4 {sv.namehint = "done4"} : i1
    %48 = comb.and %23, %29, %35, %41, %47 {sv.namehint = "allDone"} : i1
    %49 = comb.sub %5, %17 : i32
    %c0_i0_19 = hw.constant 0 : i0
    %50 = comb.and %39, %0, %45 : i1
    %51 = comb.and %65, %50 : i1
    %52 = comb.sub %17, %49 : i32
    %c0_i0_20 = hw.constant 0 : i0
    %c0_i0_21 = hw.constant 0 : i0
    %false_22 = hw.constant false
    %true_23 = hw.constant true
    %53 = comb.xor %65, %true_23 : i1
    %54 = comb.and %58, %53 : i1
    %emitted_0_24 = seq.compreg sym @emitted_0 name "emitted_0" %54, %clk_0 reset %rst_0, %false_22 : i1  
    %55 = comb.xor %emitted_0_24, %true_23 : i1
    %56 = comb.and %55, %50 : i1
    %57 = comb.and %68, %56 : i1
    %58 = comb.or %57, %emitted_0_24 {sv.namehint = "done0"} : i1
    %59 = comb.xor %65, %true_23 : i1
    %60 = comb.and %64, %59 : i1
    %emitted_1_25 = seq.compreg sym @emitted_1 name "emitted_1" %60, %clk_0 reset %rst_0, %false_22 : i1  
    %61 = comb.xor %emitted_1_25, %true_23 : i1
    %62 = comb.and %61, %50 : i1
    %63 = comb.and %68, %62 : i1
    %64 = comb.or %63, %emitted_1_25 {sv.namehint = "done1"} : i1
    %65 = comb.and %58, %64 {sv.namehint = "allDone"} : i1
    %66 = comb.mul %158, %52 : i32
    %c0_i0_26 = hw.constant 0 : i0
    %67 = comb.and %56, %174, %62 : i1
    %68 = comb.and %82, %67 : i1
    %69 = comb.divs %66, %52 : i32
    %c0_i0_27 = hw.constant 0 : i0
    %c0_i0_28 = hw.constant 0 : i0
    %false_29 = hw.constant false
    %true_30 = hw.constant true
    %70 = comb.xor %82, %true_30 : i1
    %71 = comb.and %75, %70 : i1
    %emitted_0_31 = seq.compreg sym @emitted_0 name "emitted_0" %71, %clk_0 reset %rst_0, %false_29 : i1  
    %72 = comb.xor %emitted_0_31, %true_30 : i1
    %73 = comb.and %72, %67 : i1
    %74 = comb.and %85, %73 : i1
    %75 = comb.or %74, %emitted_0_31 {sv.namehint = "done0"} : i1
    %76 = comb.xor %82, %true_30 : i1
    %77 = comb.and %81, %76 : i1
    %emitted_1_32 = seq.compreg sym @emitted_1 name "emitted_1" %77, %clk_0 reset %rst_0, %false_29 : i1  
    %78 = comb.xor %emitted_1_32, %true_30 : i1
    %79 = comb.and %78, %67 : i1
    %80 = comb.and %85, %79 : i1
    %81 = comb.or %80, %emitted_1_32 {sv.namehint = "done1"} : i1
    %82 = comb.and %75, %81 {sv.namehint = "allDone"} : i1
    %83 = comb.divu %17, %69 : i32
    %c0_i0_33 = hw.constant 0 : i0
    %84 = comb.and %73, %33, %79 : i1
    %85 = comb.and %99, %84 : i1
    %86 = comb.divs %83, %69 : i32
    %c0_i0_34 = hw.constant 0 : i0
    %c0_i0_35 = hw.constant 0 : i0
    %false_36 = hw.constant false
    %true_37 = hw.constant true
    %87 = comb.xor %99, %true_37 : i1
    %88 = comb.and %92, %87 : i1
    %emitted_0_38 = seq.compreg sym @emitted_0 name "emitted_0" %88, %clk_0 reset %rst_0, %false_36 : i1  
    %89 = comb.xor %emitted_0_38, %true_37 : i1
    %90 = comb.and %89, %84 : i1
    %91 = comb.and %123, %90 : i1
    %92 = comb.or %91, %emitted_0_38 {sv.namehint = "done0"} : i1
    %93 = comb.xor %99, %true_37 : i1
    %94 = comb.and %98, %93 : i1
    %emitted_1_39 = seq.compreg sym @emitted_1 name "emitted_1" %94, %clk_0 reset %rst_0, %false_36 : i1  
    %95 = comb.xor %emitted_1_39, %true_37 : i1
    %96 = comb.and %95, %84 : i1
    %97 = comb.and %101, %96 : i1
    %98 = comb.or %97, %emitted_1_39 {sv.namehint = "done1"} : i1
    %99 = comb.and %92, %98 {sv.namehint = "allDone"} : i1
    %c0_i0_40 = hw.constant 0 : i0
    %100 = comb.and %27, %96 : i1
    %101 = comb.and %121, %100 : i1
    %102 = comb.divu %17, %86 : i32
    %c0_i0_41 = hw.constant 0 : i0
    %c0_i0_42 = hw.constant 0 : i0
    %c0_i0_43 = hw.constant 0 : i0
    %false_44 = hw.constant false
    %true_45 = hw.constant true
    %103 = comb.xor %121, %true_45 : i1
    %104 = comb.and %108, %103 : i1
    %emitted_0_46 = seq.compreg sym @emitted_0 name "emitted_0" %104, %clk_0 reset %rst_0, %false_44 : i1  
    %105 = comb.xor %emitted_0_46, %true_45 : i1
    %106 = comb.and %105, %100 : i1
    %107 = comb.and %out1_ready, %106 : i1
    %108 = comb.or %107, %emitted_0_46 {sv.namehint = "done0"} : i1
    %109 = comb.xor %121, %true_45 : i1
    %110 = comb.and %114, %109 : i1
    %emitted_1_47 = seq.compreg sym @emitted_1 name "emitted_1" %110, %clk_0 reset %rst_0, %false_44 : i1  
    %111 = comb.xor %emitted_1_47, %true_45 : i1
    %112 = comb.and %111, %100 : i1
    %113 = comb.and %139, %112 : i1
    %114 = comb.or %113, %emitted_1_47 {sv.namehint = "done1"} : i1
    %115 = comb.xor %121, %true_45 : i1
    %116 = comb.and %120, %115 : i1
    %emitted_2_48 = seq.compreg sym @emitted_2 name "emitted_2" %116, %clk_0 reset %rst_0, %false_44 : i1  
    %117 = comb.xor %emitted_2_48, %true_45 : i1
    %118 = comb.and %117, %100 : i1
    %119 = comb.and %123, %118 : i1
    %120 = comb.or %119, %emitted_2_48 {sv.namehint = "done2"} : i1
    %121 = comb.and %108, %114, %120 {sv.namehint = "allDone"} : i1
    %c0_i0_49 = hw.constant 0 : i0
    %122 = comb.and %90, %118 : i1
    %123 = comb.and %137, %122 : i1
    %124 = comb.mul %86, %102 : i32
    %c0_i0_50 = hw.constant 0 : i0
    %c0_i0_51 = hw.constant 0 : i0
    %false_52 = hw.constant false
    %true_53 = hw.constant true
    %125 = comb.xor %137, %true_53 : i1
    %126 = comb.and %130, %125 : i1
    %emitted_0_54 = seq.compreg sym @emitted_0 name "emitted_0" %126, %clk_0 reset %rst_0, %false_52 : i1  
    %127 = comb.xor %emitted_0_54, %true_53 : i1
    %128 = comb.and %127, %122 : i1
    %129 = comb.and %157, %128 : i1
    %130 = comb.or %129, %emitted_0_54 {sv.namehint = "done0"} : i1
    %131 = comb.xor %137, %true_53 : i1
    %132 = comb.and %136, %131 : i1
    %emitted_1_55 = seq.compreg sym @emitted_1 name "emitted_1" %132, %clk_0 reset %rst_0, %false_52 : i1  
    %133 = comb.xor %emitted_1_55, %true_53 : i1
    %134 = comb.and %133, %122 : i1
    %135 = comb.and %139, %134 : i1
    %136 = comb.or %135, %emitted_1_55 {sv.namehint = "done1"} : i1
    %137 = comb.and %130, %136 {sv.namehint = "allDone"} : i1
    %c0_i0_56 = hw.constant 0 : i0
    %138 = comb.and %112, %134 : i1
    %139 = comb.and %153, %138 : i1
    %140 = comb.divs %102, %124 : i32
    %c0_i0_57 = hw.constant 0 : i0
    %c0_i0_58 = hw.constant 0 : i0
    %false_59 = hw.constant false
    %true_60 = hw.constant true
    %141 = comb.xor %153, %true_60 : i1
    %142 = comb.and %146, %141 : i1
    %emitted_0_61 = seq.compreg sym @emitted_0 name "emitted_0" %142, %clk_0 reset %rst_0, %false_59 : i1  
    %143 = comb.xor %emitted_0_61, %true_60 : i1
    %144 = comb.and %143, %138 : i1
    %145 = comb.and %157, %144 : i1
    %146 = comb.or %145, %emitted_0_61 {sv.namehint = "done0"} : i1
    %147 = comb.xor %153, %true_60 : i1
    %148 = comb.and %152, %147 : i1
    %emitted_1_62 = seq.compreg sym @emitted_1 name "emitted_1" %148, %clk_0 reset %rst_0, %false_59 : i1  
    %149 = comb.xor %emitted_1_62, %true_60 : i1
    %150 = comb.and %149, %138 : i1
    %151 = comb.and %157, %150 : i1
    %152 = comb.or %151, %emitted_1_62 {sv.namehint = "done1"} : i1
    %153 = comb.and %146, %152 {sv.namehint = "allDone"} : i1
    %154 = comb.and %124, %140 : i32
    %155 = comb.or %17, %140 : i32
    %c0_i0_63 = hw.constant 0 : i0
    %156 = comb.and %128, %150, %21, %144 : i1
    %157 = comb.and %177, %156 : i1
    %158 = comb.xor %154, %155 : i32
    %c0_i0_64 = hw.constant 0 : i0
    %c0_i0_65 = hw.constant 0 : i0
    %c0_i0_66 = hw.constant 0 : i0
    %false_67 = hw.constant false
    %true_68 = hw.constant true
    %159 = comb.xor %177, %true_68 : i1
    %160 = comb.and %164, %159 : i1
    %emitted_0_69 = seq.compreg sym @emitted_0 name "emitted_0" %160, %clk_0 reset %rst_0, %false_67 : i1  
    %161 = comb.xor %emitted_0_69, %true_68 : i1
    %162 = comb.and %161, %156 : i1
    %163 = comb.and %out0_ready, %162 : i1
    %164 = comb.or %163, %emitted_0_69 {sv.namehint = "done0"} : i1
    %165 = comb.xor %177, %true_68 : i1
    %166 = comb.and %170, %165 : i1
    %emitted_1_70 = seq.compreg sym @emitted_1 name "emitted_1" %166, %clk_0 reset %rst_0, %false_67 : i1  
    %167 = comb.xor %emitted_1_70, %true_68 : i1
    %168 = comb.and %167, %156 : i1
    %169 = comb.and %out2_ready, %168 : i1
    %170 = comb.or %169, %emitted_1_70 {sv.namehint = "done1"} : i1
    %171 = comb.xor %177, %true_68 : i1
    %172 = comb.and %176, %171 : i1
    %emitted_2_71 = seq.compreg sym @emitted_2 name "emitted_2" %172, %clk_0 reset %rst_0, %false_67 : i1  
    %173 = comb.xor %emitted_2_71, %true_68 : i1
    %174 = comb.and %173, %156 : i1
    %175 = comb.and %68, %174 : i1
    %176 = comb.or %175, %emitted_2_71 {sv.namehint = "done2"} : i1
    %177 = comb.and %164, %170, %176 {sv.namehint = "allDone"} : i1
    hw.output %3, %4, %9, %10, %16, %true_1, %true, %158, %162, %102, %106, %c0_i0_65, %168 : i1, i1, i1, i1, i1, i1, i1, i32, i1, i32, i1, i0, i1
  }
}

