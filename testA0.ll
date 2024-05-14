; ModuleID = 'tests/test19.ll'
source_filename = "tests/test19.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %x, i32 noundef %N) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %sum.0 = phi i32 [ 0, %entry ], [ %add2, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc3, %for.inc ]
  %cmp1 = call i1 @_wyvern_slice_foo_cmp_44169285(i32 %N)
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add2 = call i32 @_wyvern_slice_foo_add_177215130(i32 %x, i32 %sum.0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc3 = call i32 @_wyvern_slice_foo_inc_469682952(i32 %i.0)
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %sum.0.lcssa = phi i32 [ %sum.0, %for.cond ]
  ret i32 %sum.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %y, i32 noundef %SIZE, i32 noundef %v) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %sum.0 = phi i32 [ 0, %entry ], [ %add2, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc3, %for.inc ]
  %cmp1 = call i1 @_wyvern_slice_bar_cmp_735597618(i32 %SIZE)
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add2 = call i32 @_wyvern_slice_bar_add_116504897(i32 %y, i32 %sum.0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc3 = call i32 @_wyvern_slice_bar_inc_446000617(i32 %i.0)
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %sum.0.lcssa = phi i32 [ %sum.0, %for.cond ]
  %mul4 = call i32 @_wyvern_slice_bar_mul_940295415(i32 %y, i32 %SIZE, i32 %v)
  ret i32 %mul4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %add2 = call i32 @_wyvern_slice_main_add_50356425(i32 %argc)
  %call3 = call i32 @_wyvern_slice_main_call_464634855(i32 %argc)
  %add14 = call i32 @_wyvern_slice_main_add1_298668151(i32 %argc)
  %call21 = call i32 @_wyvern_slice_main_call2_555968368(i32 %argc)
  %add35 = call i32 @_wyvern_slice_main_add3_291426353(i32 %argc)
  ret i32 %add35
}

define internal i1 @_wyvern_slice_foo_cmp_44169285(i32 %N) {
_wyvern_unreachable:
  unreachable

sliceclone_for.inc:                               ; No predecessors!
  %0 = add nsw i32 %1, 1
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc, %sliceclone_entry
  %1 = phi i32 [ 0, %sliceclone_entry ], [ %0, %sliceclone_for.inc ]
  %2 = icmp slt i32 %1, %N
  ret i1 %2

sliceclone_entry:                                 ; No predecessors!
  br label %sliceclone_for.cond
}

define internal i32 @_wyvern_slice_foo_add_177215130(i32 %x, i32 %sum.0) {
sliceclone_for.body:
  %0 = add nsw i32 %sum.0, %x
  ret i32 %0
}

define internal i32 @_wyvern_slice_foo_inc_469682952(i32 %i.0) {
sliceclone_for.inc:
  %0 = add nsw i32 %i.0, 1
  ret i32 %0
}

define internal i1 @_wyvern_slice_bar_cmp_735597618(i32 %SIZE) {
_wyvern_unreachable:
  unreachable

sliceclone_entry:                                 ; No predecessors!
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc, %sliceclone_entry
  %0 = phi i32 [ 0, %sliceclone_entry ], [ %2, %sliceclone_for.inc ]
  %1 = icmp slt i32 %0, %SIZE
  ret i1 %1

sliceclone_for.inc:                               ; No predecessors!
  %2 = add nsw i32 %0, 1
  br label %sliceclone_for.cond
}

define internal i32 @_wyvern_slice_bar_add_116504897(i32 %y, i32 %sum.0) {
sliceclone_for.body:
  %0 = add nsw i32 %sum.0, %y
  ret i32 %0
}

define internal i32 @_wyvern_slice_bar_inc_446000617(i32 %i.0) {
sliceclone_for.inc:
  %0 = add nsw i32 %i.0, 1
  ret i32 %0
}

define internal i32 @_wyvern_slice_bar_mul_940295415(i32 %y, i32 %SIZE, i32 %v) {
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

define internal i32 @_wyvern_slice_main_call2_555968368(i32 %argc) {
sliceclone_entry:
  %0 = add nsw i32 %argc, 20
  %1 = call i32 @bar(i32 noundef %argc, i32 noundef %0, i32 noundef 2)
  ret i32 %1
}

define internal i32 @_wyvern_slice_main_add_50356425(i32 %argc) {
sliceclone_entry:
  %0 = add nsw i32 %argc, 10
  ret i32 %0
}

define internal i32 @_wyvern_slice_main_call_464634855(i32 %argc) {
sliceclone_entry:
  %0 = add nsw i32 %argc, 10
  %1 = call i32 @foo(i32 noundef %argc, i32 noundef %0)
  ret i32 %1
}

define internal i32 @_wyvern_slice_main_add1_298668151(i32 %argc) {
sliceclone_entry:
  %0 = add nsw i32 %argc, 20
  ret i32 %0
}

define internal i32 @_wyvern_slice_main_add3_291426353(i32 %argc) {
sliceclone_entry:
  %0 = add nsw i32 %argc, 10
  %1 = call i32 @foo(i32 noundef %argc, i32 noundef %0)
  %2 = add nsw i32 %argc, 20
  %3 = call i32 @bar(i32 noundef %argc, i32 noundef %2, i32 noundef 2)
  %4 = add nsw i32 %1, %3
  ret i32 %4
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
!8 = distinct !{!8, !7}
