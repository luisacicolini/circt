module {
  hw.module @ops(in %arg0 : i32, in %arg0_valid : i1, in %arg1 : i32, in %arg1_valid : i1, in %arg2 : i32, in %arg2_valid : i1, in %arg3 : i32, in %arg3_valid : i1, in %arg4 : i32, in %arg4_valid : i1, in %clk : i32, in %clk_valid : i1, in %rst : i32, in %rst_valid : i1, in %clk_0 : i1, in %rst_0 : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, out arg0_ready : i1, out arg1_ready : i1, out arg2_ready : i1, out arg3_ready : i1, out arg4_ready : i1, out clk_ready : i1, out rst_ready : i1, out out0 : i32, out out0_valid : i1, out out1 : i32, out out1_valid : i1, out out2 : i0, out out2_valid : i1) {
    %true = hw.constant true
    %true_0 = hw.constant true
    %0 = comb.or %arg0_valid, %arg1_valid : i1
    %true_1 = hw.constant true
    %1 = comb.and %0, %59 : i1
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
    %15 = comb.and %14, %56 : i1
    %16 = comb.and %15, %7 : i1
    %17 = comb.xor %7, %true_3 : i1
    %18 = comb.and %15, %17 : i1
    %19 = comb.xor %7, %true_3 : i1
    %20 = comb.mux %19, %13, %arg4 : i32
    %false = hw.constant false
    %true_4 = hw.constant true
    %21 = comb.xor %56, %true_4 : i1
    %22 = comb.and %27, %21 : i1
    %emitted_0 = sv.reg sym @emitted_0 : !hw.inout<i1> 
    %23 = sv.read_inout %emitted_0 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_0, %22 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_0, %false : i1
    }
    %24 = comb.xor %23, %true_4 : i1
    %25 = comb.and %24, %14 : i1
    %26 = comb.and %178, %25 : i1
    %27 = comb.or %26, %23 {sv.namehint = "done0"} : i1
    %28 = comb.xor %56, %true_4 : i1
    %29 = comb.and %34, %28 : i1
    %emitted_1 = sv.reg sym @emitted_1 : !hw.inout<i1> 
    %30 = sv.read_inout %emitted_1 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_1, %29 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_1, %false : i1
    }
    %31 = comb.xor %30, %true_4 : i1
    %32 = comb.and %31, %14 : i1
    %33 = comb.and %115, %32 : i1
    %34 = comb.or %33, %30 {sv.namehint = "done1"} : i1
    %35 = comb.xor %56, %true_4 : i1
    %36 = comb.and %41, %35 : i1
    %emitted_2 = sv.reg sym @emitted_2 : !hw.inout<i1> 
    %37 = sv.read_inout %emitted_2 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_2, %36 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_2, %false : i1
    }
    %38 = comb.xor %37, %true_4 : i1
    %39 = comb.and %38, %14 : i1
    %40 = comb.and %97, %39 : i1
    %41 = comb.or %40, %37 {sv.namehint = "done2"} : i1
    %42 = comb.xor %56, %true_4 : i1
    %43 = comb.and %48, %42 : i1
    %emitted_3 = sv.reg sym @emitted_3 : !hw.inout<i1> 
    %44 = sv.read_inout %emitted_3 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_3, %43 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_3, %false : i1
    }
    %45 = comb.xor %44, %true_4 : i1
    %46 = comb.and %45, %14 : i1
    %47 = comb.and %59, %46 : i1
    %48 = comb.or %47, %44 {sv.namehint = "done3"} : i1
    %49 = comb.xor %56, %true_4 : i1
    %50 = comb.and %55, %49 : i1
    %emitted_4 = sv.reg sym @emitted_4 : !hw.inout<i1> 
    %51 = sv.read_inout %emitted_4 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_4, %50 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_4, %false : i1
    }
    %52 = comb.xor %51, %true_4 : i1
    %53 = comb.and %52, %14 : i1
    %54 = comb.and %59, %53 : i1
    %55 = comb.or %54, %51 {sv.namehint = "done4"} : i1
    %56 = comb.and %27, %34, %41, %48, %55 {sv.namehint = "allDone"} : i1
    %57 = comb.sub %6, %20 : i32
    %58 = comb.and %46, %0, %53 : i1
    %59 = comb.and %75, %58 : i1
    %60 = comb.sub %20, %57 : i32
    %false_5 = hw.constant false
    %true_6 = hw.constant true
    %61 = comb.xor %75, %true_6 : i1
    %62 = comb.and %67, %61 : i1
    %emitted_0_7 = sv.reg sym @emitted_0 name "emitted_0" : !hw.inout<i1> 
    %63 = sv.read_inout %emitted_0_7 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_0_7, %62 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_0_7, %false_5 : i1
    }
    %64 = comb.xor %63, %true_6 : i1
    %65 = comb.and %64, %58 : i1
    %66 = comb.and %78, %65 : i1
    %67 = comb.or %66, %63 {sv.namehint = "done0"} : i1
    %68 = comb.xor %75, %true_6 : i1
    %69 = comb.and %74, %68 : i1
    %emitted_1_8 = sv.reg sym @emitted_1 name "emitted_1" : !hw.inout<i1> 
    %70 = sv.read_inout %emitted_1_8 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_1_8, %69 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_1_8, %false_5 : i1
    }
    %71 = comb.xor %70, %true_6 : i1
    %72 = comb.and %71, %58 : i1
    %73 = comb.and %78, %72 : i1
    %74 = comb.or %73, %70 {sv.namehint = "done1"} : i1
    %75 = comb.and %67, %74 {sv.namehint = "allDone"} : i1
    %76 = comb.mul %179, %60 : i32
    %77 = comb.and %65, %198, %72 : i1
    %78 = comb.and %94, %77 : i1
    %79 = comb.divs %76, %60 : i32
    %false_9 = hw.constant false
    %true_10 = hw.constant true
    %80 = comb.xor %94, %true_10 : i1
    %81 = comb.and %86, %80 : i1
    %emitted_0_11 = sv.reg sym @emitted_0 name "emitted_0" : !hw.inout<i1> 
    %82 = sv.read_inout %emitted_0_11 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_0_11, %81 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_0_11, %false_9 : i1
    }
    %83 = comb.xor %82, %true_10 : i1
    %84 = comb.and %83, %77 : i1
    %85 = comb.and %97, %84 : i1
    %86 = comb.or %85, %82 {sv.namehint = "done0"} : i1
    %87 = comb.xor %94, %true_10 : i1
    %88 = comb.and %93, %87 : i1
    %emitted_1_12 = sv.reg sym @emitted_1 name "emitted_1" : !hw.inout<i1> 
    %89 = sv.read_inout %emitted_1_12 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_1_12, %88 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_1_12, %false_9 : i1
    }
    %90 = comb.xor %89, %true_10 : i1
    %91 = comb.and %90, %77 : i1
    %92 = comb.and %97, %91 : i1
    %93 = comb.or %92, %89 {sv.namehint = "done1"} : i1
    %94 = comb.and %86, %93 {sv.namehint = "allDone"} : i1
    %95 = comb.divu %20, %79 : i32
    %96 = comb.and %84, %39, %91 : i1
    %97 = comb.and %113, %96 : i1
    %98 = comb.divs %95, %79 : i32
    %false_13 = hw.constant false
    %true_14 = hw.constant true
    %99 = comb.xor %113, %true_14 : i1
    %100 = comb.and %105, %99 : i1
    %emitted_0_15 = sv.reg sym @emitted_0 name "emitted_0" : !hw.inout<i1> 
    %101 = sv.read_inout %emitted_0_15 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_0_15, %100 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_0_15, %false_13 : i1
    }
    %102 = comb.xor %101, %true_14 : i1
    %103 = comb.and %102, %96 : i1
    %104 = comb.and %140, %103 : i1
    %105 = comb.or %104, %101 {sv.namehint = "done0"} : i1
    %106 = comb.xor %113, %true_14 : i1
    %107 = comb.and %112, %106 : i1
    %emitted_1_16 = sv.reg sym @emitted_1 name "emitted_1" : !hw.inout<i1> 
    %108 = sv.read_inout %emitted_1_16 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_1_16, %107 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_1_16, %false_13 : i1
    }
    %109 = comb.xor %108, %true_14 : i1
    %110 = comb.and %109, %96 : i1
    %111 = comb.and %115, %110 : i1
    %112 = comb.or %111, %108 {sv.namehint = "done1"} : i1
    %113 = comb.and %105, %112 {sv.namehint = "allDone"} : i1
    %114 = comb.and %32, %110 : i1
    %115 = comb.and %138, %114 : i1
    %116 = comb.divu %20, %98 : i32
    %false_17 = hw.constant false
    %true_18 = hw.constant true
    %117 = comb.xor %138, %true_18 : i1
    %118 = comb.and %123, %117 : i1
    %emitted_0_19 = sv.reg sym @emitted_0 name "emitted_0" : !hw.inout<i1> 
    %119 = sv.read_inout %emitted_0_19 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_0_19, %118 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_0_19, %false_17 : i1
    }
    %120 = comb.xor %119, %true_18 : i1
    %121 = comb.and %120, %114 : i1
    %122 = comb.and %out1_ready, %121 : i1
    %123 = comb.or %122, %119 {sv.namehint = "done0"} : i1
    %124 = comb.xor %138, %true_18 : i1
    %125 = comb.and %130, %124 : i1
    %emitted_1_20 = sv.reg sym @emitted_1 name "emitted_1" : !hw.inout<i1> 
    %126 = sv.read_inout %emitted_1_20 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_1_20, %125 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_1_20, %false_17 : i1
    }
    %127 = comb.xor %126, %true_18 : i1
    %128 = comb.and %127, %114 : i1
    %129 = comb.and %158, %128 : i1
    %130 = comb.or %129, %126 {sv.namehint = "done1"} : i1
    %131 = comb.xor %138, %true_18 : i1
    %132 = comb.and %137, %131 : i1
    %emitted_2_21 = sv.reg sym @emitted_2 name "emitted_2" : !hw.inout<i1> 
    %133 = sv.read_inout %emitted_2_21 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_2_21, %132 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_2_21, %false_17 : i1
    }
    %134 = comb.xor %133, %true_18 : i1
    %135 = comb.and %134, %114 : i1
    %136 = comb.and %140, %135 : i1
    %137 = comb.or %136, %133 {sv.namehint = "done2"} : i1
    %138 = comb.and %123, %130, %137 {sv.namehint = "allDone"} : i1
    %139 = comb.and %103, %135 : i1
    %140 = comb.and %156, %139 : i1
    %141 = comb.mul %98, %116 : i32
    %false_22 = hw.constant false
    %true_23 = hw.constant true
    %142 = comb.xor %156, %true_23 : i1
    %143 = comb.and %148, %142 : i1
    %emitted_0_24 = sv.reg sym @emitted_0 name "emitted_0" : !hw.inout<i1> 
    %144 = sv.read_inout %emitted_0_24 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_0_24, %143 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_0_24, %false_22 : i1
    }
    %145 = comb.xor %144, %true_23 : i1
    %146 = comb.and %145, %139 : i1
    %147 = comb.and %178, %146 : i1
    %148 = comb.or %147, %144 {sv.namehint = "done0"} : i1
    %149 = comb.xor %156, %true_23 : i1
    %150 = comb.and %155, %149 : i1
    %emitted_1_25 = sv.reg sym @emitted_1 name "emitted_1" : !hw.inout<i1> 
    %151 = sv.read_inout %emitted_1_25 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_1_25, %150 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_1_25, %false_22 : i1
    }
    %152 = comb.xor %151, %true_23 : i1
    %153 = comb.and %152, %139 : i1
    %154 = comb.and %158, %153 : i1
    %155 = comb.or %154, %151 {sv.namehint = "done1"} : i1
    %156 = comb.and %148, %155 {sv.namehint = "allDone"} : i1
    %157 = comb.and %128, %153 : i1
    %158 = comb.and %174, %157 : i1
    %159 = comb.divs %116, %141 : i32
    %false_26 = hw.constant false
    %true_27 = hw.constant true
    %160 = comb.xor %174, %true_27 : i1
    %161 = comb.and %166, %160 : i1
    %emitted_0_28 = sv.reg sym @emitted_0 name "emitted_0" : !hw.inout<i1> 
    %162 = sv.read_inout %emitted_0_28 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_0_28, %161 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_0_28, %false_26 : i1
    }
    %163 = comb.xor %162, %true_27 : i1
    %164 = comb.and %163, %157 : i1
    %165 = comb.and %178, %164 : i1
    %166 = comb.or %165, %162 {sv.namehint = "done0"} : i1
    %167 = comb.xor %174, %true_27 : i1
    %168 = comb.and %173, %167 : i1
    %emitted_1_29 = sv.reg sym @emitted_1 name "emitted_1" : !hw.inout<i1> 
    %169 = sv.read_inout %emitted_1_29 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_1_29, %168 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_1_29, %false_26 : i1
    }
    %170 = comb.xor %169, %true_27 : i1
    %171 = comb.and %170, %157 : i1
    %172 = comb.and %178, %171 : i1
    %173 = comb.or %172, %169 {sv.namehint = "done1"} : i1
    %174 = comb.and %166, %173 {sv.namehint = "allDone"} : i1
    %175 = comb.and %141, %159 : i32
    %176 = comb.or %20, %159 : i32
    %177 = comb.and %146, %171, %25, %164 : i1
    %178 = comb.and %201, %177 : i1
    %179 = comb.xor %175, %176 : i32
    %c0_i0 = hw.constant 0 : i0
    %false_30 = hw.constant false
    %true_31 = hw.constant true
    %180 = comb.xor %201, %true_31 : i1
    %181 = comb.and %186, %180 : i1
    %emitted_0_32 = sv.reg sym @emitted_0 name "emitted_0" : !hw.inout<i1> 
    %182 = sv.read_inout %emitted_0_32 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_0_32, %181 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_0_32, %false_30 : i1
    }
    %183 = comb.xor %182, %true_31 : i1
    %184 = comb.and %183, %177 : i1
    %185 = comb.and %out0_ready, %184 : i1
    %186 = comb.or %185, %182 {sv.namehint = "done0"} : i1
    %187 = comb.xor %201, %true_31 : i1
    %188 = comb.and %193, %187 : i1
    %emitted_1_33 = sv.reg sym @emitted_1 name "emitted_1" : !hw.inout<i1> 
    %189 = sv.read_inout %emitted_1_33 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_1_33, %188 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_1_33, %false_30 : i1
    }
    %190 = comb.xor %189, %true_31 : i1
    %191 = comb.and %190, %177 : i1
    %192 = comb.and %out2_ready, %191 : i1
    %193 = comb.or %192, %189 {sv.namehint = "done1"} : i1
    %194 = comb.xor %201, %true_31 : i1
    %195 = comb.and %200, %194 : i1
    %emitted_2_34 = sv.reg sym @emitted_2 name "emitted_2" : !hw.inout<i1> 
    %196 = sv.read_inout %emitted_2_34 : !hw.inout<i1>
    sv.alwaysff(posedge %clk_0) {
      sv.passign %emitted_2_34, %195 : i1
    }(syncreset : posedge %rst_0) {
      sv.passign %emitted_2_34, %false_30 : i1
    }
    %197 = comb.xor %196, %true_31 : i1
    %198 = comb.and %197, %177 : i1
    %199 = comb.and %78, %198 : i1
    %200 = comb.or %199, %196 {sv.namehint = "done2"} : i1
    %201 = comb.and %186, %193, %200 {sv.namehint = "allDone"} : i1
    hw.output %2, %4, %9, %11, %18, %true_0, %true, %179, %184, %116, %121, %c0_i0, %191 : i1, i1, i1, i1, i1, i1, i1, i32, i1, i32, i1, i0, i1
  }
}

