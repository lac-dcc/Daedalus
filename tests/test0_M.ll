; ModuleID = 'tests/test0_F.ll'
source_filename = "tests/test0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 2, ptr %1, align 4
  %2 = call i32 @_wyvern_slice_main__812988235()
  %3 = call i32 @_wyvern_slice_main__511851866()
  %4 = call i32 @_wyvern_slice_main__87384592()
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

define internal i32 @_wyvern_slice_main__511851866() {
sliceclone_:
  %0 = alloca i32, align 4
  %1 = load i32, ptr %0, align 4
  %2 = mul nsw i32 %1, 3
  ret i32 %2
}

define internal i32 @_wyvern_slice_main__812988235() {
sliceclone_:
  %0 = alloca i32, align 4
  %1 = load i32, ptr %0, align 4
  ret i32 %1
}

define internal i32 @_wyvern_slice_main__87384592() {
sliceclone_:
  %0 = alloca i32, align 4
  %1 = load i32, ptr %0, align 4
  %2 = mul nsw i32 %1, 3
  %3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  ret i32 %3
}

attributes #0 = { noinline nounwind sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 16.0.6"}
