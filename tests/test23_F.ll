; ModuleID = 'tests/test23.ll'
source_filename = "tests/test23.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i32 noundef %argc) #0 {
entry:
  %cmp = icmp sgt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mul = mul nsw i32 2, %argc
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %mul)
  br label %if.end

if.else:                                          ; preds = %entry
  %mul1 = mul nsw i32 3, %argc
  %mul21 = call i32 @_wyvern_slice_f_mul2_124671717(i32 %argc)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %mul21)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %c.02 = call i32 @_wyvern_slice_f_c.0_483138304(i32 %argc)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %c.02)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %cmp = icmp sgt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mul = mul nsw i32 2, %argc
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %mul)
  br label %if.end

if.else:                                          ; preds = %entry
  %mul1 = mul nsw i32 3, %argc
  %mul21 = call i32 @_wyvern_slice_main_mul2_109679600(i32 %argc)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %mul21)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %c.02 = call i32 @_wyvern_slice_main_c.0_555259890(i32 %argc)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %c.02)
  ret i32 0
}

define internal i32 @_wyvern_slice_f_mul2_124671717(i32 %argc) {
sliceclone_if.else:
  %0 = mul nsw i32 3, %argc
  %1 = mul nsw i32 %0, %argc
  ret i32 %1
}

define internal i32 @_wyvern_slice_f_c.0_483138304(i32 %argc) {
sliceclone_entry:
  %0 = icmp sgt i32 %argc, 2
  br i1 %0, label %sliceclone_if.then, label %sliceclone_if.else

sliceclone_if.else:                               ; preds = %sliceclone_entry
  %1 = mul nsw i32 3, %argc
  %2 = mul nsw i32 %1, %argc
  br label %sliceclone_if.end

sliceclone_if.then:                               ; preds = %sliceclone_entry
  %3 = mul nsw i32 2, %argc
  br label %sliceclone_if.end

sliceclone_if.end:                                ; preds = %sliceclone_if.then, %sliceclone_if.else
  %4 = phi i32 [ %3, %sliceclone_if.then ], [ %2, %sliceclone_if.else ]
  ret i32 %4
}

define internal i32 @_wyvern_slice_main_mul2_109679600(i32 %argc) {
sliceclone_if.else:
  %0 = mul nsw i32 3, %argc
  %1 = mul nsw i32 %0, %argc
  ret i32 %1
}

define internal i32 @_wyvern_slice_main_c.0_555259890(i32 %argc) {
sliceclone_entry:
  %0 = icmp sgt i32 %argc, 2
  br i1 %0, label %sliceclone_if.then, label %sliceclone_if.else

sliceclone_if.then:                               ; preds = %sliceclone_entry
  %1 = mul nsw i32 2, %argc
  br label %sliceclone_if.end

sliceclone_if.else:                               ; preds = %sliceclone_entry
  %2 = mul nsw i32 3, %argc
  %3 = mul nsw i32 %2, %argc
  br label %sliceclone_if.end

sliceclone_if.end:                                ; preds = %sliceclone_if.else, %sliceclone_if.then
  %4 = phi i32 [ %1, %sliceclone_if.then ], [ %3, %sliceclone_if.else ]
  ret i32 %4
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
