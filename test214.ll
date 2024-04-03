; ModuleID = 'tests/test14.ll'
source_filename = "tests/test14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(ptr noundef %i) #0 {
entry:
  %0 = call i32 @_wyvern_slice_f__181038477(ptr %i)
  %1 = call i32 @_wyvern_slice_f__221776388(ptr %i)
  %add1 = call i32 @_wyvern_slice_f_add_473371916(ptr %i)
  store i32 %add1, ptr %i, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %i = alloca i32, align 4
  store i32 10, ptr %i, align 4
  call void @_wyvern_slice_main__241135808()
  %0 = call i32 @_wyvern_slice_main__371308100()
  %call2 = call i32 @_wyvern_slice_main_call_232225788()
  %1 = call i32 @_wyvern_slice_main__609290403()
  %2 = call i32 @_wyvern_slice_main__601052745()
  %mul1 = call i32 @_wyvern_slice_main_mul_796846587()
  ret i32 %mul1
}

declare i32 @printf(ptr noundef, ...) #1

define i32 @_wyvern_slice_f_add_473371916(ptr %i) {
sliceclone_entry:
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %i, align 4
  %2 = add nsw i32 %0, %1
  ret i32 %2
}

define i32 @_wyvern_slice_f__181038477(ptr %i) {
sliceclone_entry:
  %0 = load i32, ptr %i, align 4
  ret i32 %0
}

define i32 @_wyvern_slice_f__221776388(ptr %i) {
sliceclone_entry:
  %0 = load i32, ptr %i, align 4
  ret i32 %0
}

define i32 @_wyvern_slice_main_mul_796846587() {
sliceclone_entry:
  %0 = alloca i32, align 4
  %1 = load i32, ptr %0, align 4
  %2 = load i32, ptr %0, align 4
  %3 = mul nsw i32 %1, %2
  ret i32 %3
}

define void @_wyvern_slice_main__241135808() {
sliceclone_entry:
  %0 = alloca i32, align 4
  call void @f(ptr noundef %0)
  ret void
}

define i32 @_wyvern_slice_main__371308100() {
sliceclone_entry:
  %0 = alloca i32, align 4
  %1 = load i32, ptr %0, align 4
  ret i32 %1
}

define i32 @_wyvern_slice_main_call_232225788() {
sliceclone_entry:
  %0 = alloca i32, align 4
  %1 = load i32, ptr %0, align 4
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %1)
  ret i32 %2
}

define i32 @_wyvern_slice_main__609290403() {
sliceclone_entry:
  %0 = alloca i32, align 4
  %1 = load i32, ptr %0, align 4
  ret i32 %1
}

define i32 @_wyvern_slice_main__601052745() {
sliceclone_entry:
  %0 = alloca i32, align 4
  %1 = load i32, ptr %0, align 4
  ret i32 %1
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
