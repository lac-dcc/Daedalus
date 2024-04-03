; ModuleID = 'tests/test15.ll'
source_filename = "tests/test15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %mul2 = call i32 @_wyvern_slice_main_mul_752947678(i32 %argc)
  %mul13 = call i32 @_wyvern_slice_main_mul1_405597373(i32 %argc)
  %call4 = call i32 @_wyvern_slice_main_call_970890828(i32 %argc)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

define i32 @_wyvern_slice_main_mul_752947678(i32 %argc) {
sliceclone_entry:
  %0 = mul nsw i32 %argc, %argc
  ret i32 %0
}

define i32 @_wyvern_slice_main_mul1_405597373(i32 %argc) {
sliceclone_entry:
  %0 = mul nsw i32 %argc, %argc
  %1 = mul nsw i32 %0, %argc
  ret i32 %1
}

define i32 @_wyvern_slice_main_call_970890828(i32 %argc) {
sliceclone_entry:
  %0 = mul nsw i32 %argc, %argc
  %1 = mul nsw i32 %0, %argc
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %1)
  ret i32 %2
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
