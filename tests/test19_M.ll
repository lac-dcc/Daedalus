; ModuleID = 'tests/test19_F.ll'
source_filename = "tests/test19.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %x, i32 noundef %N) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %sum.0 = phi i32 [ 0, %entry ], [ %add, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %N
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add = add nsw i32 %sum.0, %x
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %sum.0.lcssa = phi i32 [ %sum.0, %for.cond ]
  %sum.0.lcssa1 = call i32 @_wyvern_slice_bar_sum.0.lcssa_216613573(i32 %x, i32 %N)
  ret i32 %sum.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %y, i32 noundef %SIZE, i32 noundef %v) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %sum.0 = phi i32 [ 0, %entry ], [ %add, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %SIZE
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add = add nsw i32 %sum.0, %y
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %sum.0.lcssa = phi i32 [ %sum.0, %for.cond ]
  %sum.0.lcssa1 = call i32 @_wyvern_slice_bar_sum.0.lcssa_216613573(i32 %y, i32 %SIZE)
  %mul = mul nsw i32 %v, %sum.0.lcssa
  %mul2 = call i32 @_wyvern_slice_bar_mul_335299988(i32 %y, i32 %SIZE, i32 %v)
  ret i32 %mul
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %add = add nsw i32 %argc, 10
  %call = call i32 @foo(i32 noundef %argc, i32 noundef %add)
  %add1 = add nsw i32 %argc, 20
  %call2 = call i32 @bar(i32 noundef %argc, i32 noundef %add1, i32 noundef 2)
  %add3 = add nsw i32 %call, %call2
  ret i32 %add3
}

define internal i32 @_wyvern_slice_bar_sum.0.lcssa_216613573(i32 %y, i32 %SIZE) #1 {
sliceclone_entry:
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc, %sliceclone_entry
  %0 = phi i32 [ 0, %sliceclone_entry ], [ %4, %sliceclone_for.inc ]
  %1 = phi i32 [ 0, %sliceclone_entry ], [ %3, %sliceclone_for.inc ]
  %2 = icmp slt i32 %1, %SIZE
  br i1 %2, label %sliceclone_for.body, label %sliceclone_for.end

sliceclone_for.inc:                               ; preds = %sliceclone_for.body
  %3 = add nsw i32 %1, 1
  br label %sliceclone_for.cond

sliceclone_for.body:                              ; preds = %sliceclone_for.cond
  %4 = add nsw i32 %0, %y
  br label %sliceclone_for.inc

sliceclone_for.end:                               ; preds = %sliceclone_for.cond
  %5 = phi i32 [ %0, %sliceclone_for.cond ]
  ret i32 %5
}

define internal i32 @_wyvern_slice_bar_mul_335299988(i32 %y, i32 %SIZE, i32 %v) #1 {
sliceclone_entry:
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc, %sliceclone_entry
  %0 = phi i32 [ 0, %sliceclone_entry ], [ %4, %sliceclone_for.inc ]
  %1 = phi i32 [ 0, %sliceclone_entry ], [ %3, %sliceclone_for.inc ]
  %2 = icmp slt i32 %1, %SIZE
  br i1 %2, label %sliceclone_for.body, label %sliceclone_for.end

sliceclone_for.inc:                               ; preds = %sliceclone_for.body
  %3 = add nsw i32 %1, 1
  br label %sliceclone_for.cond

sliceclone_for.body:                              ; preds = %sliceclone_for.cond
  %4 = add nsw i32 %0, %y
  br label %sliceclone_for.inc

sliceclone_for.end:                               ; preds = %sliceclone_for.cond
  %5 = phi i32 [ %0, %sliceclone_for.cond ]
  %6 = mul nsw i32 %v, %5
  ret i32 %6
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
