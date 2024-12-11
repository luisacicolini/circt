module {
  hw.module @ops(in %arg0 : !dc.value<i32>, in %arg1 : !dc.value<i32>, in %arg2 : !dc.value<i32>, in %arg3 : !dc.value<i32>, in %arg4 : !dc.value<i32>, in %clk : !dc.value<i32>, in %rst : !dc.value<i32>, in %clk_0 : !seq.clock {dc.clock}, in %rst_0 : i1 {dc.reset}, out out0 : !dc.value<i32>, out out1 : !dc.value<i32>, out out2 : !dc.token) {
    %token, %output = dc.unpack %rst : !dc.value<i32>
    dc.sink %token
    %token_0, %output_1 = dc.unpack %clk : !dc.value<i32>
    dc.sink %token_0
    %token_2, %output_3 = dc.unpack %arg0 : !dc.value<i32>
    %token_4, %output_5 = dc.unpack %arg1 : !dc.value<i32>
    %0 = dc.merge %token_2, %token_4
    %token_6, %output_7 = dc.unpack %0 : !dc.value<i1>
    %1 = arith.select %output_7, %output_3, %output_5 : i32
    %2 = dc.pack %token_6, %1 : i32
    %token_8, %output_9 = dc.unpack %arg2 : !dc.value<i32>
    %token_10, %output_11 = dc.unpack %arg3 : !dc.value<i32>
    %3 = dc.merge %token_8, %token_10
    %token_12, %output_13 = dc.unpack %3 : !dc.value<i1>
    %4 = arith.select %output_13, %output_9, %output_11 : i32
    %5 = dc.pack %token_12, %4 : i32
    %token_14, %output_15 = dc.unpack %5 : !dc.value<i32>
    %token_16, %output_17 = dc.unpack %arg4 : !dc.value<i32>
    %6 = dc.merge %token_14, %token_16
    %token_18, %output_19 = dc.unpack %6 : !dc.value<i1>
    %7 = arith.select %output_19, %output_15, %output_17 : i32
    %8 = dc.pack %token_18, %7 : i32
    %token_20, %output_21 = dc.unpack %8 : !dc.value<i32>
    %9:5 = dc.fork [5] %token_20 
    %10 = dc.pack %9#0, %output_21 : i32
    %11 = dc.pack %9#1, %output_21 : i32
    %12 = dc.pack %9#2, %output_21 : i32
    %13 = dc.pack %9#3, %output_21 : i32
    %14 = dc.pack %9#4, %output_21 : i32
    %token_22, %output_23 = dc.unpack %2 : !dc.value<i32>
    %token_24, %output_25 = dc.unpack %14 : !dc.value<i32>
    %15 = dc.join %token_22, %token_24
    %16 = arith.subi %output_23, %output_25 : i32
    %17 = dc.pack %15, %16 : i32
    %token_26, %output_27 = dc.unpack %13 : !dc.value<i32>
    %token_28, %output_29 = dc.unpack %17 : !dc.value<i32>
    %18 = dc.join %token_26, %token_28
    %19 = arith.subi %output_27, %output_29 : i32
    %20 = dc.pack %18, %19 : i32
    %token_30, %output_31 = dc.unpack %20 : !dc.value<i32>
    %21:2 = dc.fork [2] %token_30 
    %22 = dc.pack %21#0, %output_31 : i32
    %23 = dc.pack %21#1, %output_31 : i32
    %token_32, %output_33 = dc.unpack %73 : !dc.value<i32>
    %token_34, %output_35 = dc.unpack %23 : !dc.value<i32>
    %24 = dc.join %token_32, %token_34
    %25 = arith.muli %output_33, %output_35 : i32
    %26 = dc.pack %24, %25 : i32
    %token_36, %output_37 = dc.unpack %26 : !dc.value<i32>
    %token_38, %output_39 = dc.unpack %22 : !dc.value<i32>
    %27 = dc.join %token_36, %token_38
    %28 = arith.divsi %output_37, %output_39 : i32
    %29 = dc.pack %27, %28 : i32
    %token_40, %output_41 = dc.unpack %29 : !dc.value<i32>
    %30:2 = dc.fork [2] %token_40 
    %31 = dc.pack %30#0, %output_41 : i32
    %32 = dc.pack %30#1, %output_41 : i32
    %token_42, %output_43 = dc.unpack %12 : !dc.value<i32>
    %token_44, %output_45 = dc.unpack %32 : !dc.value<i32>
    %33 = dc.join %token_42, %token_44
    %34 = arith.divui %output_43, %output_45 : i32
    %35 = dc.pack %33, %34 : i32
    %token_46, %output_47 = dc.unpack %35 : !dc.value<i32>
    %token_48, %output_49 = dc.unpack %31 : !dc.value<i32>
    %36 = dc.join %token_46, %token_48
    %37 = arith.remsi %output_47, %output_49 : i32
    %38 = dc.pack %36, %37 : i32
    %token_50, %output_51 = dc.unpack %38 : !dc.value<i32>
    %39:2 = dc.fork [2] %token_50 
    %40 = dc.pack %39#0, %output_51 : i32
    %41 = dc.pack %39#1, %output_51 : i32
    %token_52, %output_53 = dc.unpack %11 : !dc.value<i32>
    %token_54, %output_55 = dc.unpack %41 : !dc.value<i32>
    %42 = dc.join %token_52, %token_54
    %43 = arith.remui %output_53, %output_55 : i32
    %44 = dc.pack %42, %43 : i32
    %token_56, %output_57 = dc.unpack %44 : !dc.value<i32>
    %45:3 = dc.fork [3] %token_56 
    %46 = dc.pack %45#0, %output_57 : i32
    %47 = dc.pack %45#1, %output_57 : i32
    %48 = dc.pack %45#2, %output_57 : i32
    %token_58, %output_59 = dc.unpack %40 : !dc.value<i32>
    %token_60, %output_61 = dc.unpack %48 : !dc.value<i32>
    %49 = dc.join %token_58, %token_60
    %50 = arith.muli %output_59, %output_61 : i32
    %51 = dc.pack %49, %50 : i32
    %token_62, %output_63 = dc.unpack %51 : !dc.value<i32>
    %52:2 = dc.fork [2] %token_62 
    %53 = dc.pack %52#0, %output_63 : i32
    %54 = dc.pack %52#1, %output_63 : i32
    %token_64, %output_65 = dc.unpack %47 : !dc.value<i32>
    %token_66, %output_67 = dc.unpack %54 : !dc.value<i32>
    %55 = dc.join %token_64, %token_66
    %56 = arith.remui %output_65, %output_67 : i32
    %57 = dc.pack %55, %56 : i32
    %token_68, %output_69 = dc.unpack %57 : !dc.value<i32>
    %58:2 = dc.fork [2] %token_68 
    %59 = dc.pack %58#0, %output_69 : i32
    %60 = dc.pack %58#1, %output_69 : i32
    %token_70, %output_71 = dc.unpack %53 : !dc.value<i32>
    %token_72, %output_73 = dc.unpack %60 : !dc.value<i32>
    %61 = dc.join %token_70, %token_72
    %62 = arith.andi %output_71, %output_73 : i32
    %63 = dc.pack %61, %62 : i32
    %token_74, %output_75 = dc.unpack %10 : !dc.value<i32>
    %token_76, %output_77 = dc.unpack %59 : !dc.value<i32>
    %64 = dc.join %token_74, %token_76
    %65 = arith.ori %output_75, %output_77 : i32
    %66 = dc.pack %64, %65 : i32
    %token_78, %output_79 = dc.unpack %63 : !dc.value<i32>
    %token_80, %output_81 = dc.unpack %66 : !dc.value<i32>
    %67 = dc.join %token_78, %token_80
    %68 = arith.xori %output_79, %output_81 : i32
    %69 = dc.pack %67, %68 : i32
    %token_82, %output_83 = dc.unpack %69 : !dc.value<i32>
    %70:3 = dc.fork [3] %token_82 
    %71 = dc.pack %70#0, %output_83 : i32
    %72 = dc.pack %70#1, %output_83 : i32
    %73 = dc.pack %70#2, %output_83 : i32
    %token_84, %output_85 = dc.unpack %72 : !dc.value<i32>
    %74 = dc.join %token_84
    hw.output %71, %46, %74 : !dc.value<i32>, !dc.value<i32>, !dc.token
  }
}
