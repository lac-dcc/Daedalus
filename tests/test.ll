; ModuleID = 'tests/test25.ll'
source_filename = "tests/test25.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %arg) #0 {
entry:
  %mul = mul nsw i32 %arg, %arg
  %mul1 = mul nsw i32 %mul, 2
  %mul2 = mul nsw i32 %mul1, 2
  ret i32 %mul1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %mul = mul nsw i32 %argc, %argc
  %mul1 = mul nsw i32 %mul, 2
  %mul2 = mul nsw i32 %mul1, 2
  %mul3 = mul nsw i32 %mul2, 2
  %mul4 = mul nsw i32 %mul3, 2
  %mul5 = mul nsw i32 %mul4, 2
  %mul6 = mul nsw i32 %mul5, 2
  %mul7 = mul nsw i32 %mul6, 2
  %add = add nsw i32 %mul7, 5
  %mul8 = mul nsw i32 2, %add
  %add9 = add nsw i32 %mul8, 2
  %call = call i32 @f(i32 noundef 2)
  %sub = sub nsw i32 %call, 6
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
