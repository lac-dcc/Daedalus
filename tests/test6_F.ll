; ModuleID = 'tests/test6.ll'
source_filename = "tests/test6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sliceAndDice(i32 noundef %s, i32 noundef %e, i32 noundef %r, ptr noundef %num_elements) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %count.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %i.0 = phi i32 [ %s, %entry ], [ %add1, %for.inc ]
  %cmp = icmp slt i32 %i.0, %e
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %inc = add nsw i32 %count.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %add1 = add nsw i32 %i.0, %r
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %count.0.lcssa = phi i32 [ %count.0, %for.cond ]
  %sum.0.lcssa1 = call i32 @_wyvern_slice_sliceAndDice_sum.0.lcssa_707923801(i32 %s, i32 %e, i32 %r)
  store i32 %count.0.lcssa, ptr %num_elements, align 4
  ret i32 %sum.0.lcssa1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %count = alloca i32, align 4
  %add = add nsw i32 %argc, 3
  %call = call i32 @sliceAndDice(i32 noundef %argc, i32 noundef %add, i32 noundef 1, ptr noundef %count)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call)
  %0 = load i32, ptr %count, align 4
  ret i32 %0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind willreturn
define internal i32 @_wyvern_slice_sliceAndDice_sum.0.lcssa_707923801(i32 %s, i32 %e, i32 %r) #2 {
sliceclone_entry:
  br label %sliceclone_for.cond

sliceclone_for.inc:                               ; preds = %sliceclone_for.body
  %0 = add nsw i32 %2, %r
  br label %sliceclone_for.cond

sliceclone_for.cond:                              ; preds = %sliceclone_for.inc, %sliceclone_entry
  %1 = phi i32 [ 0, %sliceclone_entry ], [ %4, %sliceclone_for.inc ]
  %2 = phi i32 [ %s, %sliceclone_entry ], [ %0, %sliceclone_for.inc ]
  %3 = icmp slt i32 %2, %e
  br i1 %3, label %sliceclone_for.body, label %sliceclone_for.end

sliceclone_for.body:                              ; preds = %sliceclone_for.cond
  %4 = add nsw i32 %1, %2
  br label %sliceclone_for.inc

sliceclone_for.end:                               ; preds = %sliceclone_for.cond
  %5 = phi i32 [ %1, %sliceclone_for.cond ]
  ret i32 %5
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn "Daedalus_Slice" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
