; ModuleID = 'tests/test26_F.ll'
source_filename = "tests/test26.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %arg, i32 noundef %k, i32 noundef %l) #0 {
entry:
  %add1 = call i32 @_wyvern_slice_f_add_600332248(i32 %arg, i32 %k, i32 %l)
  %add9 = add nsw i32 %add1, %arg
  %mul10 = mul nsw i32 2, %add9
  %add11 = add nsw i32 %mul10, 2
  ret i32 %add11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %add1 = call i32 @_wyvern_slice_main_add_501752955(i32 %argc)
  %mul8 = mul nsw i32 2, %add1
  %add9 = add nsw i32 %mul8, 2
  %call = call i32 @f(i32 noundef 2, i32 noundef 4, i32 noundef 5)
  %sub = sub nsw i32 %call, 6
  ret i32 0
}

define internal i32 @_wyvern_slice_f_add_600332248(i32 %arg, i32 %k, i32 %l) #1 {
sliceclone_entry:
  %0 = mul nsw i32 %arg, %arg
  %1 = mul nsw i32 %0, 2
  %2 = mul nsw i32 %1, 2
  %3 = mul nsw i32 %2, 2
  %4 = mul nsw i32 %3, 2
  %5 = mul nsw i32 %4, 2
  %6 = mul nsw i32 %5, 2
  %7 = mul nsw i32 %6, 2
  %8 = mul nsw i32 %l, %7
  %9 = add nsw i32 %k, %8
  ret i32 %9
}

define internal i32 @_wyvern_slice_main_add_501752955(i32 %argc) #1 {
sliceclone_entry:
  %0 = mul nsw i32 %argc, %argc
  %1 = mul nsw i32 %0, 2
  %2 = mul nsw i32 %1, 2
  %3 = mul nsw i32 %2, 2
  %4 = mul nsw i32 %3, 2
  %5 = mul nsw i32 %4, 2
  %6 = mul nsw i32 %5, 2
  %7 = mul nsw i32 %6, 2
  %8 = add nsw i32 %7, 5
  ret i32 %8
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "Daedalus_Slice" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
