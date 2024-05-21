; ModuleID = 'tests/test22.ll'
source_filename = "tests/test19.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %v1 = phi i32 [ 0, %entry ], [ %v22, %for.inc ]
  %p01 = call i1 @_wyvern_slice_main_p0_465351143(i32 %argc)
  br i1 %p01, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %v22 = call i32 @_wyvern_slice_main_v2_869886369(i32 %v1)
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %v33 = call i32 @_wyvern_slice_main_v3_756545576(i32 %argc)
  ret i32 %v33
}

define internal i32 @_wyvern_slice_main_v1_694296284(i32 %v1) {
sliceclone_entry:
  br label %sliceclone_for.cond

sliceclone_for.inc:                               ; No predecessors!
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc, %sliceclone_entry
  %0 = phi i32 [ 0, %sliceclone_entry ], [ %v22, %sliceclone_for.inc ]
  ret i32 %v1
}

define internal i1 @_wyvern_slice_main_p0_465351143(i32 %argc) {
_wyvern_unreachable:
  unreachable

sliceclone_for.inc:                               ; No predecessors!
  %0 = add nsw i32 %1, 1
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc, %sliceclone_entry
  %1 = phi i32 [ 0, %sonia ], [ %0, %sliceclone_for.inc ]
  %2 = icmp slt i32 %1, %argc
  ret i1 %2

sliceclone_entry:                                 ; No predecessors!
  br label %sliceclone_for.cond
}

define internal i32 @_wyvern_slice_main_v2_869886369(i32 %v1) {
sliceclone_for.inc:
  %0 = add nsw i32 %v1, 1
  ret i32 %0
}

define internal i32 @_wyvern_slice_main_v3_756545576(i32 %argc) {
sliceclone_entry:
  br label %sliceclone_for.cond

sliceclone_for.inc:                               ; preds = %sliceclone_for.cond
  %0 = add nsw i32 %1, 1
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc, %sliceclone_entry
  %1 = phi i32 [ 0, %sliceclone_entry ], [ %0, %sliceclone_for.inc ]
  %2 = icmp slt i32 %1, %argc
  br i1 %2, label %sliceclone_for.inc, label %sliceclone_for.end

sliceclone_for.end:                               ; preds = %sliceclone_for.cond
  %3 = phi i32 [ %1, %sliceclone_for.cond ]
  ret i32 %3
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
