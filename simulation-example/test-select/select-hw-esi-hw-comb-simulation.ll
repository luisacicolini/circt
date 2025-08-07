; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare void @exit(i32)

define void @mux_eval(ptr %0) {
  %2 = load i1, ptr %0, align 1
  %3 = xor i1 %2, true
  %4 = getelementptr i8, ptr %0, i32 16
  %5 = load i1, ptr %4, align 1
  %6 = getelementptr i8, ptr %0, i32 32
  %7 = load i1, ptr %6, align 1
  %8 = getelementptr i8, ptr %0, i32 1
  %9 = load i1, ptr %8, align 1
  %10 = select i1 %3, i1 %5, i1 %7
  %11 = and i1 %10, %9
  %12 = getelementptr i8, ptr %0, i32 35
  %13 = load i1, ptr %12, align 1
  %14 = and i1 %11, %13
  %15 = getelementptr i8, ptr %0, i32 36
  store i1 %14, ptr %15, align 1
  %16 = zext i1 %3 to i2
  %17 = shl i2 1, %16
  %18 = icmp uge i2 %16, -2
  %19 = select i1 %18, i2 0, i2 %17
  %20 = lshr i2 %19, 1
  %21 = trunc i2 %20 to i1
  %22 = and i1 %21, %14
  %23 = getelementptr i8, ptr %0, i32 37
  store i1 %22, ptr %23, align 1
  %24 = trunc i2 %19 to i1
  %25 = and i1 %24, %14
  %26 = getelementptr i8, ptr %0, i32 38
  store i1 %25, ptr %26, align 1
  %27 = getelementptr i8, ptr %0, i32 24
  %28 = load i64, ptr %27, align 4
  %29 = getelementptr i8, ptr %0, i32 8
  %30 = load i64, ptr %29, align 4
  %31 = select i1 %3, i64 %28, i64 %30
  %32 = getelementptr i8, ptr %0, i32 40
  store i64 %31, ptr %32, align 4
  %33 = getelementptr i8, ptr %0, i32 48
  store i1 %11, ptr %33, align 1
  ret void
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
