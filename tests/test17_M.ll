; ModuleID = 'tests/test17_F.ll'
source_filename = "test17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %arrayidx1 = call ptr @_wyvern_slice_main_arrayidx_479079863(ptr %argv)
  %0 = load ptr, ptr %arrayidx1, align 8
  %call3 = call i32 @_wyvern_slice_main_call_43986618(ptr %argv)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %b.0 = phi i32 [ 0, %entry ], [ %add5, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc6, %for.inc ]
  %cmp4 = call i1 @_wyvern_slice_main_cmp_892054894(ptr %argv)
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add5 = call i32 @_wyvern_slice_main_add_557125344(i32 %b.0, i32 %i.0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc6 = call i32 @_wyvern_slice_main_inc_688232935(i32 %i.0)
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %mul7 = call i32 @_wyvern_slice_main_mul1_838540675(ptr %argv)
  %mul18 = call i32 @_wyvern_slice_main_mul1_838540675(ptr %argv)
  %call29 = call i32 @_wyvern_slice_main_call2_607419225(ptr %argv)
  ret i32 0
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #2

define internal ptr @_wyvern_slice_main_arrayidx_479079863(ptr %argv) {
sliceclone_entry:
  %0 = getelementptr inbounds ptr, ptr %argv, i64 1
  ret ptr %0
}

define internal i32 @_wyvern_slice_main_call_43986618(ptr %argv) {
sliceclone_entry:
  %0 = getelementptr inbounds ptr, ptr %argv, i64 1
  %1 = load ptr, ptr %0, align 8
  %2 = call i32 @atoi(ptr noundef %1) #3
  ret i32 %2
}

define internal i1 @_wyvern_slice_main_cmp_892054894(ptr %argv) {
_wyvern_unreachable:
  unreachable

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc, %sliceclone_entry
  %0 = phi i32 [ 0, %sliceclone_entry ], [ %5, %sliceclone_for.inc ]
  %1 = icmp slt i32 %0, %4
  ret i1 %1

sliceclone_entry:                                 ; No predecessors!
  %2 = getelementptr inbounds ptr, ptr %argv, i64 1
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 @atoi(ptr noundef %3) #3
  br label %sliceclone_for.cond

sliceclone_for.inc:                               ; No predecessors!
  %5 = add nsw i32 %0, 1
  br label %sliceclone_for.cond
}

define internal i32 @_wyvern_slice_main_add_557125344(i32 %b.0, i32 %i.0) {
sliceclone_for.body:
  %0 = add nsw i32 %b.0, %i.0
  ret i32 %0
}

define internal i32 @_wyvern_slice_main_inc_688232935(i32 %i.0) {
sliceclone_for.inc:
  %0 = add nsw i32 %i.0, 1
  ret i32 %0
}

define internal i32 @_wyvern_slice_main_mul1_838540675(ptr %argv) {
sliceclone_entry:
  %0 = getelementptr inbounds ptr, ptr %argv, i64 1
  %1 = load ptr, ptr %0, align 8
  %2 = call i32 @atoi(ptr noundef %1) #3
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc, %sliceclone_entry
  %3 = phi i32 [ 0, %sliceclone_entry ], [ %7, %sliceclone_for.inc ]
  %4 = phi i32 [ 0, %sliceclone_entry ], [ %6, %sliceclone_for.inc ]
  %5 = icmp slt i32 %4, %2
  br i1 %5, label %sliceclone_for.body, label %sliceclone_for.end

sliceclone_for.inc:                               ; preds = %sliceclone_for.body
  %6 = add nsw i32 %4, 1
  br label %sliceclone_for.cond

sliceclone_for.body:                              ; preds = %sliceclone_for.cond
  %7 = add nsw i32 %3, %4
  br label %sliceclone_for.inc

sliceclone_for.end:                               ; preds = %sliceclone_for.cond
  %.lcssa = phi i32 [ %3, %sliceclone_for.cond ]
  %8 = mul nsw i32 %.lcssa, 2
  ret i32 %8
}

define internal i32 @_wyvern_slice_main_call2_607419225(ptr %argv) {
sliceclone_entry:
  %0 = getelementptr inbounds ptr, ptr %argv, i64 1
  %1 = load ptr, ptr %0, align 8
  %2 = call i32 @atoi(ptr noundef %1) #3
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc, %sliceclone_entry
  %3 = phi i32 [ 0, %sliceclone_entry ], [ %7, %sliceclone_for.inc ]
  %4 = phi i32 [ 0, %sliceclone_entry ], [ %6, %sliceclone_for.inc ]
  %5 = icmp slt i32 %4, %2
  br i1 %5, label %sliceclone_for.body, label %sliceclone_for.end

sliceclone_for.inc:                               ; preds = %sliceclone_for.body
  %6 = add nsw i32 %4, 1
  br label %sliceclone_for.cond

sliceclone_for.body:                              ; preds = %sliceclone_for.cond
  %7 = add nsw i32 %3, %4
  br label %sliceclone_for.inc

sliceclone_for.end:                               ; preds = %sliceclone_for.cond
  %.lcssa = phi i32 [ %3, %sliceclone_for.cond ]
  %8 = mul nsw i32 %.lcssa, 2
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %8)
  ret i32 %9
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }

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
