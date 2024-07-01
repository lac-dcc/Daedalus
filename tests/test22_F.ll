; ModuleID = 'tests/test22.ll'
source_filename = "tests/test19.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %p0 = icmp slt i32 undef, %argc
  br i1 %p0, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %v31 = call i32 @_wyvern_slice_main_v3_615902772(i32 %argc)
  ret i32 undef
}

; Function Attrs: nounwind willreturn
define internal i32 @_wyvern_slice_main_v3_615902772(i32 %argc) #1 {
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
attributes #1 = { nounwind willreturn "Daedalus_Slice" }

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
