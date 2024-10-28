; ModuleID = 'test30.ll'
source_filename = "test30.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %mul = mul nsw i32 %argc, %argc
  %cmp = icmp sgt i32 %argc, 5
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %mul1 = mul nsw i32 %argc, 2
  %add = add nsw i32 %mul1, 3
  %cmp2 = icmp sgt i32 %argc, 6
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %mul4 = mul nsw i32 %argc, 3
  %add5 = add nsw i32 %mul4, 2
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %c.0 = phi i32 [ %add5, %if.then3 ], [ 3, %if.then ]
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %b.0 = phi i32 [ %add, %if.end ], [ 2, %entry ]
  %c.1 = phi i32 [ %c.0, %if.end ], [ 3, %entry ]
  %mul7 = mul nsw i32 %mul, %argc
  %mul8 = mul nsw i32 %mul7, %b.0
  %mul9 = mul nsw i32 %mul8, %c.1
  ret i32 %mul9
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
