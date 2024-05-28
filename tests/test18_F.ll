; ModuleID = 'tests/test18.ll'
source_filename = "tests/test18.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%d - %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 2, ptr %a, align 4
  %0 = load i32, ptr %a, align 4
  %1 = load i32, ptr %a, align 4
  %mul1 = call i32 @_wyvern_slice_main_mul_834255405()
  store i32 %mul1, ptr %b, align 4
  %2 = load i32, ptr %b, align 4
  %add2 = call i32 @_wyvern_slice_main_add_782388881()
  store i32 %add2, ptr %c, align 4
  %3 = load i32, ptr %b, align 4
  %add13 = call i32 @_wyvern_slice_main_add1_194630035()
  store i32 %add13, ptr %d, align 4
  %4 = load i32, ptr %c, align 4
  %5 = load i32, ptr %d, align 4
  %call4 = call i32 @_wyvern_slice_main_call_502566734()
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

define internal i32 @_wyvern_slice_main_mul_834255405() {
sliceclone_entry:
  %0 = alloca i32, align 4
  %1 = load i32, ptr %0, align 4
  %2 = load i32, ptr %0, align 4
  %3 = mul nsw i32 %1, %2
  ret i32 %3
}

define internal i32 @_wyvern_slice_main_add_782388881() {
sliceclone_entry:
  %0 = alloca i32, align 4
  %1 = load i32, ptr %0, align 4
  %2 = add nsw i32 %1, 2
  ret i32 %2
}

define internal i32 @_wyvern_slice_main_add1_194630035() {
sliceclone_entry:
  %0 = alloca i32, align 4
  %1 = load i32, ptr %0, align 4
  %2 = add nsw i32 %1, 2
  ret i32 %2
}

define internal i32 @_wyvern_slice_main_call_502566734() {
sliceclone_entry:
  %0 = alloca i32, align 4
  %1 = alloca i32, align 4
  %2 = load i32, ptr %0, align 4
  %3 = load i32, ptr %1, align 4
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2, i32 noundef %3)
  ret i32 %4
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
