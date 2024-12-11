module {
  hw.module @ops(in %arg0 : !esi.channel<i32>, in %arg1 : !esi.channel<i32>, in %arg2 : !esi.channel<i32>, in %arg3 : !esi.channel<i32>, in %arg4 : !esi.channel<i32>, in %clk : !esi.channel<i32>, in %rst : !esi.channel<i32>, in %clk_0 : !seq.clock {dc.clock}, in %rst_0 : i1 {dc.reset}, out out0 : !esi.channel<i32>, out out1 : !esi.channel<i32>, out out2 : !esi.channel<i0>) {
    %rawOutput, %valid = esi.unwrap.vr %rst, %ready : i32
    %c0_i0 = hw.constant 0 : i0
    %chanOutput, %ready = esi.wrap.vr %c0_i0, %valid : i0
    %rawOutput_0, %valid_1 = esi.unwrap.vr %chanOutput, %true : i0
    %true = hw.constant true
    %rawOutput_2, %valid_3 = esi.unwrap.vr %clk, %ready_6 : i32
    %c0_i0_4 = hw.constant 0 : i0
    %chanOutput_5, %ready_6 = esi.wrap.vr %c0_i0_4, %valid_3 : i0
    %rawOutput_7, %valid_8 = esi.unwrap.vr %chanOutput_5, %true_9 : i0
    %true_9 = hw.constant true
    %rawOutput_10, %valid_11 = esi.unwrap.vr %arg0, %ready_14 : i32
    %c0_i0_12 = hw.constant 0 : i0
    %chanOutput_13, %ready_14 = esi.wrap.vr %c0_i0_12, %valid_11 : i0
    %rawOutput_15, %valid_16 = esi.unwrap.vr %arg1, %ready_19 : i32
    %c0_i0_17 = hw.constant 0 : i0
    %chanOutput_18, %ready_19 = esi.wrap.vr %c0_i0_17, %valid_16 : i0
    %rawOutput_20, %valid_21 = esi.unwrap.vr %chanOutput_13, %3 : i0
    %rawOutput_22, %valid_23 = esi.unwrap.vr %chanOutput_18, %4 : i0
    %chanOutput_24, %ready_25 = esi.wrap.vr %1, %0 : i1
    %0 = comb.or %valid_21, %valid_23 : i1
    %true_26 = hw.constant true
    %1 = comb.xor %valid_21, %true_26 : i1
    %2 = comb.and %0, %ready_25 : i1
    %3 = comb.and %2, %valid_21 : i1
    %4 = comb.and %2, %1 : i1
    %rawOutput_27, %valid_28 = esi.unwrap.vr %chanOutput_24, %ready_31 : i1
    %c0_i0_29 = hw.constant 0 : i0
    %chanOutput_30, %ready_31 = esi.wrap.vr %c0_i0_29, %valid_28 : i0
    %5 = arith.select %rawOutput_27, %rawOutput_10, %rawOutput_15 : i32
    %rawOutput_32, %valid_33 = esi.unwrap.vr %arg2, %ready_36 : i32
    %c0_i0_34 = hw.constant 0 : i0
    %chanOutput_35, %ready_36 = esi.wrap.vr %c0_i0_34, %valid_33 : i0
    %rawOutput_37, %valid_38 = esi.unwrap.vr %arg3, %ready_41 : i32
    %c0_i0_39 = hw.constant 0 : i0
    %chanOutput_40, %ready_41 = esi.wrap.vr %c0_i0_39, %valid_38 : i0
    %rawOutput_42, %valid_43 = esi.unwrap.vr %chanOutput_35, %9 : i0
    %rawOutput_44, %valid_45 = esi.unwrap.vr %chanOutput_40, %10 : i0
    %chanOutput_46, %ready_47 = esi.wrap.vr %7, %6 : i1
    %6 = comb.or %valid_43, %valid_45 : i1
    %true_48 = hw.constant true
    %7 = comb.xor %valid_43, %true_48 : i1
    %8 = comb.and %6, %ready_47 : i1
    %9 = comb.and %8, %valid_43 : i1
    %10 = comb.and %8, %7 : i1
    %rawOutput_49, %valid_50 = esi.unwrap.vr %chanOutput_46, %ready_53 : i1
    %c0_i0_51 = hw.constant 0 : i0
    %chanOutput_52, %ready_53 = esi.wrap.vr %c0_i0_51, %valid_50 : i0
    %11 = arith.select %rawOutput_49, %rawOutput_32, %rawOutput_37 : i32
    %rawOutput_54, %valid_55 = esi.unwrap.vr %arg4, %ready_58 : i32
    %c0_i0_56 = hw.constant 0 : i0
    %chanOutput_57, %ready_58 = esi.wrap.vr %c0_i0_56, %valid_55 : i0
    %rawOutput_59, %valid_60 = esi.unwrap.vr %chanOutput_52, %15 : i0
    %rawOutput_61, %valid_62 = esi.unwrap.vr %chanOutput_57, %16 : i0
    %chanOutput_63, %ready_64 = esi.wrap.vr %13, %12 : i1
    %12 = comb.or %valid_60, %valid_62 : i1
    %true_65 = hw.constant true
    %13 = comb.xor %valid_60, %true_65 : i1
    %14 = comb.and %12, %ready_64 : i1
    %15 = comb.and %14, %valid_60 : i1
    %16 = comb.and %14, %13 : i1
    %rawOutput_66, %valid_67 = esi.unwrap.vr %chanOutput_63, %ready_70 : i1
    %c0_i0_68 = hw.constant 0 : i0
    %chanOutput_69, %ready_70 = esi.wrap.vr %c0_i0_68, %valid_67 : i0
    %17 = arith.select %rawOutput_66, %11, %rawOutput_54 : i32
    %rawOutput_71, %valid_72 = esi.unwrap.vr %chanOutput_69, %48 : i0
    %c0_i0_73 = hw.constant 0 : i0
    %chanOutput_74, %ready_75 = esi.wrap.vr %c0_i0_73, %21 : i0
    %c0_i0_76 = hw.constant 0 : i0
    %chanOutput_77, %ready_78 = esi.wrap.vr %c0_i0_76, %27 : i0
    %c0_i0_79 = hw.constant 0 : i0
    %chanOutput_80, %ready_81 = esi.wrap.vr %c0_i0_79, %33 : i0
    %c0_i0_82 = hw.constant 0 : i0
    %chanOutput_83, %ready_84 = esi.wrap.vr %c0_i0_82, %39 : i0
    %c0_i0_85 = hw.constant 0 : i0
    %chanOutput_86, %ready_87 = esi.wrap.vr %c0_i0_85, %45 : i0
    %false = hw.constant false
    %true_88 = hw.constant true
    %18 = comb.xor %48, %true_88 : i1
    %19 = comb.and %23, %18 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %19, %clk_0 reset %rst_0, %false : i1  
    %20 = comb.xor %emitted_0, %true_88 : i1
    %21 = comb.and %20, %valid_72 : i1
    %22 = comb.and %ready_75, %21 : i1
    %23 = comb.or %22, %emitted_0 {sv.namehint = "done0"} : i1
    %24 = comb.xor %48, %true_88 : i1
    %25 = comb.and %29, %24 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %25, %clk_0 reset %rst_0, %false : i1  
    %26 = comb.xor %emitted_1, %true_88 : i1
    %27 = comb.and %26, %valid_72 : i1
    %28 = comb.and %ready_78, %27 : i1
    %29 = comb.or %28, %emitted_1 {sv.namehint = "done1"} : i1
    %30 = comb.xor %48, %true_88 : i1
    %31 = comb.and %35, %30 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %31, %clk_0 reset %rst_0, %false : i1  
    %32 = comb.xor %emitted_2, %true_88 : i1
    %33 = comb.and %32, %valid_72 : i1
    %34 = comb.and %ready_81, %33 : i1
    %35 = comb.or %34, %emitted_2 {sv.namehint = "done2"} : i1
    %36 = comb.xor %48, %true_88 : i1
    %37 = comb.and %41, %36 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %37, %clk_0 reset %rst_0, %false : i1  
    %38 = comb.xor %emitted_3, %true_88 : i1
    %39 = comb.and %38, %valid_72 : i1
    %40 = comb.and %ready_84, %39 : i1
    %41 = comb.or %40, %emitted_3 {sv.namehint = "done3"} : i1
    %42 = comb.xor %48, %true_88 : i1
    %43 = comb.and %47, %42 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %43, %clk_0 reset %rst_0, %false : i1  
    %44 = comb.xor %emitted_4, %true_88 : i1
    %45 = comb.and %44, %valid_72 : i1
    %46 = comb.and %ready_87, %45 : i1
    %47 = comb.or %46, %emitted_4 {sv.namehint = "done4"} : i1
    %48 = comb.and %23, %29, %35, %41, %47 {sv.namehint = "allDone"} : i1
    %49 = arith.subi %5, %17 : i32
    %rawOutput_89, %valid_90 = esi.unwrap.vr %chanOutput_83, %51 : i0
    %rawOutput_91, %valid_92 = esi.unwrap.vr %chanOutput_30, %51 : i0
    %rawOutput_93, %valid_94 = esi.unwrap.vr %chanOutput_86, %51 : i0
    %c0_i0_95 = hw.constant 0 : i0
    %chanOutput_96, %ready_97 = esi.wrap.vr %c0_i0_95, %50 : i0
    %50 = comb.and %valid_90, %valid_92, %valid_94 : i1
    %51 = comb.and %ready_97, %50 : i1
    %52 = arith.subi %17, %49 : i32
    %rawOutput_98, %valid_99 = esi.unwrap.vr %chanOutput_96, %65 : i0
    %c0_i0_100 = hw.constant 0 : i0
    %chanOutput_101, %ready_102 = esi.wrap.vr %c0_i0_100, %56 : i0
    %c0_i0_103 = hw.constant 0 : i0
    %chanOutput_104, %ready_105 = esi.wrap.vr %c0_i0_103, %62 : i0
    %false_106 = hw.constant false
    %true_107 = hw.constant true
    %53 = comb.xor %65, %true_107 : i1
    %54 = comb.and %58, %53 : i1
    %emitted_0_108 = seq.compreg sym @emitted_0 name "emitted_0" %54, %clk_0 reset %rst_0, %false_106 : i1  
    %55 = comb.xor %emitted_0_108, %true_107 : i1
    %56 = comb.and %55, %valid_99 : i1
    %57 = comb.and %ready_102, %56 : i1
    %58 = comb.or %57, %emitted_0_108 {sv.namehint = "done0"} : i1
    %59 = comb.xor %65, %true_107 : i1
    %60 = comb.and %64, %59 : i1
    %emitted_1_109 = seq.compreg sym @emitted_1 name "emitted_1" %60, %clk_0 reset %rst_0, %false_106 : i1  
    %61 = comb.xor %emitted_1_109, %true_107 : i1
    %62 = comb.and %61, %valid_99 : i1
    %63 = comb.and %ready_105, %62 : i1
    %64 = comb.or %63, %emitted_1_109 {sv.namehint = "done1"} : i1
    %65 = comb.and %58, %64 {sv.namehint = "allDone"} : i1
    %66 = arith.muli %158, %52 : i32
    %rawOutput_110, %valid_111 = esi.unwrap.vr %chanOutput_101, %68 : i0
    %rawOutput_112, %valid_113 = esi.unwrap.vr %chanOutput_237, %68 : i0
    %rawOutput_114, %valid_115 = esi.unwrap.vr %chanOutput_104, %68 : i0
    %c0_i0_116 = hw.constant 0 : i0
    %chanOutput_117, %ready_118 = esi.wrap.vr %c0_i0_116, %67 : i0
    %67 = comb.and %valid_111, %valid_113, %valid_115 : i1
    %68 = comb.and %ready_118, %67 : i1
    %69 = arith.divsi %66, %52 : i32
    %rawOutput_119, %valid_120 = esi.unwrap.vr %chanOutput_117, %82 : i0
    %c0_i0_121 = hw.constant 0 : i0
    %chanOutput_122, %ready_123 = esi.wrap.vr %c0_i0_121, %73 : i0
    %c0_i0_124 = hw.constant 0 : i0
    %chanOutput_125, %ready_126 = esi.wrap.vr %c0_i0_124, %79 : i0
    %false_127 = hw.constant false
    %true_128 = hw.constant true
    %70 = comb.xor %82, %true_128 : i1
    %71 = comb.and %75, %70 : i1
    %emitted_0_129 = seq.compreg sym @emitted_0 name "emitted_0" %71, %clk_0 reset %rst_0, %false_127 : i1  
    %72 = comb.xor %emitted_0_129, %true_128 : i1
    %73 = comb.and %72, %valid_120 : i1
    %74 = comb.and %ready_123, %73 : i1
    %75 = comb.or %74, %emitted_0_129 {sv.namehint = "done0"} : i1
    %76 = comb.xor %82, %true_128 : i1
    %77 = comb.and %81, %76 : i1
    %emitted_1_130 = seq.compreg sym @emitted_1 name "emitted_1" %77, %clk_0 reset %rst_0, %false_127 : i1  
    %78 = comb.xor %emitted_1_130, %true_128 : i1
    %79 = comb.and %78, %valid_120 : i1
    %80 = comb.and %ready_126, %79 : i1
    %81 = comb.or %80, %emitted_1_130 {sv.namehint = "done1"} : i1
    %82 = comb.and %75, %81 {sv.namehint = "allDone"} : i1
    %83 = arith.divui %17, %69 : i32
    %rawOutput_131, %valid_132 = esi.unwrap.vr %chanOutput_122, %85 : i0
    %rawOutput_133, %valid_134 = esi.unwrap.vr %chanOutput_80, %85 : i0
    %rawOutput_135, %valid_136 = esi.unwrap.vr %chanOutput_125, %85 : i0
    %c0_i0_137 = hw.constant 0 : i0
    %chanOutput_138, %ready_139 = esi.wrap.vr %c0_i0_137, %84 : i0
    %84 = comb.and %valid_132, %valid_134, %valid_136 : i1
    %85 = comb.and %ready_139, %84 : i1
    %86 = arith.remsi %83, %69 : i32
    %rawOutput_140, %valid_141 = esi.unwrap.vr %chanOutput_138, %99 : i0
    %c0_i0_142 = hw.constant 0 : i0
    %chanOutput_143, %ready_144 = esi.wrap.vr %c0_i0_142, %90 : i0
    %c0_i0_145 = hw.constant 0 : i0
    %chanOutput_146, %ready_147 = esi.wrap.vr %c0_i0_145, %96 : i0
    %false_148 = hw.constant false
    %true_149 = hw.constant true
    %87 = comb.xor %99, %true_149 : i1
    %88 = comb.and %92, %87 : i1
    %emitted_0_150 = seq.compreg sym @emitted_0 name "emitted_0" %88, %clk_0 reset %rst_0, %false_148 : i1  
    %89 = comb.xor %emitted_0_150, %true_149 : i1
    %90 = comb.and %89, %valid_141 : i1
    %91 = comb.and %ready_144, %90 : i1
    %92 = comb.or %91, %emitted_0_150 {sv.namehint = "done0"} : i1
    %93 = comb.xor %99, %true_149 : i1
    %94 = comb.and %98, %93 : i1
    %emitted_1_151 = seq.compreg sym @emitted_1 name "emitted_1" %94, %clk_0 reset %rst_0, %false_148 : i1  
    %95 = comb.xor %emitted_1_151, %true_149 : i1
    %96 = comb.and %95, %valid_141 : i1
    %97 = comb.and %ready_147, %96 : i1
    %98 = comb.or %97, %emitted_1_151 {sv.namehint = "done1"} : i1
    %99 = comb.and %92, %98 {sv.namehint = "allDone"} : i1
    %rawOutput_152, %valid_153 = esi.unwrap.vr %chanOutput_77, %101 : i0
    %rawOutput_154, %valid_155 = esi.unwrap.vr %chanOutput_146, %101 : i0
    %c0_i0_156 = hw.constant 0 : i0
    %chanOutput_157, %ready_158 = esi.wrap.vr %c0_i0_156, %100 : i0
    %100 = comb.and %valid_153, %valid_155 : i1
    %101 = comb.and %ready_158, %100 : i1
    %102 = arith.remui %17, %86 : i32
    %rawOutput_159, %valid_160 = esi.unwrap.vr %chanOutput_157, %121 : i0
    %c0_i0_161 = hw.constant 0 : i0
    %chanOutput_162, %ready_163 = esi.wrap.vr %c0_i0_161, %106 : i0
    %c0_i0_164 = hw.constant 0 : i0
    %chanOutput_165, %ready_166 = esi.wrap.vr %c0_i0_164, %112 : i0
    %c0_i0_167 = hw.constant 0 : i0
    %chanOutput_168, %ready_169 = esi.wrap.vr %c0_i0_167, %118 : i0
    %false_170 = hw.constant false
    %true_171 = hw.constant true
    %103 = comb.xor %121, %true_171 : i1
    %104 = comb.and %108, %103 : i1
    %emitted_0_172 = seq.compreg sym @emitted_0 name "emitted_0" %104, %clk_0 reset %rst_0, %false_170 : i1  
    %105 = comb.xor %emitted_0_172, %true_171 : i1
    %106 = comb.and %105, %valid_160 : i1
    %107 = comb.and %ready_163, %106 : i1
    %108 = comb.or %107, %emitted_0_172 {sv.namehint = "done0"} : i1
    %109 = comb.xor %121, %true_171 : i1
    %110 = comb.and %114, %109 : i1
    %emitted_1_173 = seq.compreg sym @emitted_1 name "emitted_1" %110, %clk_0 reset %rst_0, %false_170 : i1  
    %111 = comb.xor %emitted_1_173, %true_171 : i1
    %112 = comb.and %111, %valid_160 : i1
    %113 = comb.and %ready_166, %112 : i1
    %114 = comb.or %113, %emitted_1_173 {sv.namehint = "done1"} : i1
    %115 = comb.xor %121, %true_171 : i1
    %116 = comb.and %120, %115 : i1
    %emitted_2_174 = seq.compreg sym @emitted_2 name "emitted_2" %116, %clk_0 reset %rst_0, %false_170 : i1  
    %117 = comb.xor %emitted_2_174, %true_171 : i1
    %118 = comb.and %117, %valid_160 : i1
    %119 = comb.and %ready_169, %118 : i1
    %120 = comb.or %119, %emitted_2_174 {sv.namehint = "done2"} : i1
    %121 = comb.and %108, %114, %120 {sv.namehint = "allDone"} : i1
    %rawOutput_175, %valid_176 = esi.unwrap.vr %chanOutput_162, %ready_178 : i0
    %chanOutput_177, %ready_178 = esi.wrap.vr %102, %valid_176 : i32
    %rawOutput_179, %valid_180 = esi.unwrap.vr %chanOutput_143, %123 : i0
    %rawOutput_181, %valid_182 = esi.unwrap.vr %chanOutput_168, %123 : i0
    %c0_i0_183 = hw.constant 0 : i0
    %chanOutput_184, %ready_185 = esi.wrap.vr %c0_i0_183, %122 : i0
    %122 = comb.and %valid_180, %valid_182 : i1
    %123 = comb.and %ready_185, %122 : i1
    %124 = arith.muli %86, %102 : i32
    %rawOutput_186, %valid_187 = esi.unwrap.vr %chanOutput_184, %137 : i0
    %c0_i0_188 = hw.constant 0 : i0
    %chanOutput_189, %ready_190 = esi.wrap.vr %c0_i0_188, %128 : i0
    %c0_i0_191 = hw.constant 0 : i0
    %chanOutput_192, %ready_193 = esi.wrap.vr %c0_i0_191, %134 : i0
    %false_194 = hw.constant false
    %true_195 = hw.constant true
    %125 = comb.xor %137, %true_195 : i1
    %126 = comb.and %130, %125 : i1
    %emitted_0_196 = seq.compreg sym @emitted_0 name "emitted_0" %126, %clk_0 reset %rst_0, %false_194 : i1  
    %127 = comb.xor %emitted_0_196, %true_195 : i1
    %128 = comb.and %127, %valid_187 : i1
    %129 = comb.and %ready_190, %128 : i1
    %130 = comb.or %129, %emitted_0_196 {sv.namehint = "done0"} : i1
    %131 = comb.xor %137, %true_195 : i1
    %132 = comb.and %136, %131 : i1
    %emitted_1_197 = seq.compreg sym @emitted_1 name "emitted_1" %132, %clk_0 reset %rst_0, %false_194 : i1  
    %133 = comb.xor %emitted_1_197, %true_195 : i1
    %134 = comb.and %133, %valid_187 : i1
    %135 = comb.and %ready_193, %134 : i1
    %136 = comb.or %135, %emitted_1_197 {sv.namehint = "done1"} : i1
    %137 = comb.and %130, %136 {sv.namehint = "allDone"} : i1
    %rawOutput_198, %valid_199 = esi.unwrap.vr %chanOutput_165, %139 : i0
    %rawOutput_200, %valid_201 = esi.unwrap.vr %chanOutput_192, %139 : i0
    %c0_i0_202 = hw.constant 0 : i0
    %chanOutput_203, %ready_204 = esi.wrap.vr %c0_i0_202, %138 : i0
    %138 = comb.and %valid_199, %valid_201 : i1
    %139 = comb.and %ready_204, %138 : i1
    %140 = arith.remui %102, %124 : i32
    %rawOutput_205, %valid_206 = esi.unwrap.vr %chanOutput_203, %153 : i0
    %c0_i0_207 = hw.constant 0 : i0
    %chanOutput_208, %ready_209 = esi.wrap.vr %c0_i0_207, %144 : i0
    %c0_i0_210 = hw.constant 0 : i0
    %chanOutput_211, %ready_212 = esi.wrap.vr %c0_i0_210, %150 : i0
    %false_213 = hw.constant false
    %true_214 = hw.constant true
    %141 = comb.xor %153, %true_214 : i1
    %142 = comb.and %146, %141 : i1
    %emitted_0_215 = seq.compreg sym @emitted_0 name "emitted_0" %142, %clk_0 reset %rst_0, %false_213 : i1  
    %143 = comb.xor %emitted_0_215, %true_214 : i1
    %144 = comb.and %143, %valid_206 : i1
    %145 = comb.and %ready_209, %144 : i1
    %146 = comb.or %145, %emitted_0_215 {sv.namehint = "done0"} : i1
    %147 = comb.xor %153, %true_214 : i1
    %148 = comb.and %152, %147 : i1
    %emitted_1_216 = seq.compreg sym @emitted_1 name "emitted_1" %148, %clk_0 reset %rst_0, %false_213 : i1  
    %149 = comb.xor %emitted_1_216, %true_214 : i1
    %150 = comb.and %149, %valid_206 : i1
    %151 = comb.and %ready_212, %150 : i1
    %152 = comb.or %151, %emitted_1_216 {sv.namehint = "done1"} : i1
    %153 = comb.and %146, %152 {sv.namehint = "allDone"} : i1
    %154 = arith.andi %124, %140 : i32
    %155 = arith.ori %17, %140 : i32
    %rawOutput_217, %valid_218 = esi.unwrap.vr %chanOutput_189, %157 : i0
    %rawOutput_219, %valid_220 = esi.unwrap.vr %chanOutput_211, %157 : i0
    %rawOutput_221, %valid_222 = esi.unwrap.vr %chanOutput_74, %157 : i0
    %rawOutput_223, %valid_224 = esi.unwrap.vr %chanOutput_208, %157 : i0
    %c0_i0_225 = hw.constant 0 : i0
    %chanOutput_226, %ready_227 = esi.wrap.vr %c0_i0_225, %156 : i0
    %156 = comb.and %valid_218, %valid_220, %valid_222, %valid_224 : i1
    %157 = comb.and %ready_227, %156 : i1
    %158 = arith.xori %154, %155 : i32
    %rawOutput_228, %valid_229 = esi.unwrap.vr %chanOutput_226, %177 : i0
    %c0_i0_230 = hw.constant 0 : i0
    %chanOutput_231, %ready_232 = esi.wrap.vr %c0_i0_230, %162 : i0
    %c0_i0_233 = hw.constant 0 : i0
    %chanOutput_234, %ready_235 = esi.wrap.vr %c0_i0_233, %168 : i0
    %c0_i0_236 = hw.constant 0 : i0
    %chanOutput_237, %ready_238 = esi.wrap.vr %c0_i0_236, %174 : i0
    %false_239 = hw.constant false
    %true_240 = hw.constant true
    %159 = comb.xor %177, %true_240 : i1
    %160 = comb.and %164, %159 : i1
    %emitted_0_241 = seq.compreg sym @emitted_0 name "emitted_0" %160, %clk_0 reset %rst_0, %false_239 : i1  
    %161 = comb.xor %emitted_0_241, %true_240 : i1
    %162 = comb.and %161, %valid_229 : i1
    %163 = comb.and %ready_232, %162 : i1
    %164 = comb.or %163, %emitted_0_241 {sv.namehint = "done0"} : i1
    %165 = comb.xor %177, %true_240 : i1
    %166 = comb.and %170, %165 : i1
    %emitted_1_242 = seq.compreg sym @emitted_1 name "emitted_1" %166, %clk_0 reset %rst_0, %false_239 : i1  
    %167 = comb.xor %emitted_1_242, %true_240 : i1
    %168 = comb.and %167, %valid_229 : i1
    %169 = comb.and %ready_235, %168 : i1
    %170 = comb.or %169, %emitted_1_242 {sv.namehint = "done1"} : i1
    %171 = comb.xor %177, %true_240 : i1
    %172 = comb.and %176, %171 : i1
    %emitted_2_243 = seq.compreg sym @emitted_2 name "emitted_2" %172, %clk_0 reset %rst_0, %false_239 : i1  
    %173 = comb.xor %emitted_2_243, %true_240 : i1
    %174 = comb.and %173, %valid_229 : i1
    %175 = comb.and %ready_238, %174 : i1
    %176 = comb.or %175, %emitted_2_243 {sv.namehint = "done2"} : i1
    %177 = comb.and %164, %170, %176 {sv.namehint = "allDone"} : i1
    %rawOutput_244, %valid_245 = esi.unwrap.vr %chanOutput_231, %ready_247 : i0
    %chanOutput_246, %ready_247 = esi.wrap.vr %158, %valid_245 : i32
    hw.output %chanOutput_246, %chanOutput_177, %chanOutput_234 : !esi.channel<i32>, !esi.channel<i32>, !esi.channel<i0>
  }
}

