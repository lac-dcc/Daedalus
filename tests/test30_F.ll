; ModuleID = 'tests/test30.ll'
source_filename = "tests/test30.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %cmp = icmp sgt i32 %argc, 5
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %cmp2 = icmp sgt i32 %argc, 6
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %mul91 = call i32 @_wyvern_slice_main_mul9_607292455(i32 %argc)
  ret i32 %mul91
}

; Function Attrs: nounwind willreturn
define internal i32 @_wyvern_slice_main_mul9_607292455(i32 %argc) #1 {
sliceclone_entry:
  %0 = mul nsw i32 %argc, %argc
  %1 = icmp sgt i32 %argc, 5
  br i1 %1, label %sliceclone_if.then, label %sliceclone_if.end6

sliceclone_if.end6:                               ; preds = %sliceclone_if.end, %sliceclone_entry
  %2 = phi i32 [ %8, %sliceclone_if.end ], [ 2, %sliceclone_entry ]
  %3 = phi i32 [ %12, %sliceclone_if.end ], [ 3, %sliceclone_entry ]
  %4 = mul nsw i32 %0, %argc
  %5 = mul nsw i32 %4, %2
  %6 = mul nsw i32 %5, %3
  ret i32 %6

sliceclone_if.then:                               ; preds = %sliceclone_entry
  %7 = mul nsw i32 %argc, 2
  %8 = add nsw i32 %7, 3
  %9 = icmp sgt i32 %argc, 6
  br i1 %9, label %sliceclone_if.then3, label %sliceclone_if.end

sliceclone_if.then3:                              ; preds = %sliceclone_if.then
  %10 = mul nsw i32 %argc, 3
  %11 = add nsw i32 %10, 2
  br label %sliceclone_if.end

sliceclone_if.end:                                ; preds = %sliceclone_if.then3, %sliceclone_if.then
  %12 = phi i32 [ %11, %sliceclone_if.then3 ], [ 3, %sliceclone_if.then ]
  br label %sliceclone_if.end6
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn "Daedalus_Slice" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
