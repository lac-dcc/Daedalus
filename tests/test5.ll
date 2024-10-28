; ModuleID = 'test5.ll'
source_filename = "test5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.arr = private unnamed_addr constant [10 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %arr = alloca [10 x i32], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arr, ptr align 16 @__const.main.arr, i64 40, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add1, %for.inc ]
  %a.0 = phi i32 [ 0, %entry ], [ %add, %for.inc ]
  %cmp = icmp slt i32 %i.0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %arr, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4
  %add = add nsw i32 %a.0, %0
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %add1 = add nsw i32 %i.0, 2
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %a.0.lcssa = phi i32 [ %a.0, %for.cond ]
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc9, %for.end
  %b.0 = phi i32 [ 0, %for.end ], [ %add8, %for.inc9 ]
  %i2.0 = phi i32 [ 1, %for.end ], [ %add10, %for.inc9 ]
  %cmp4 = icmp slt i32 %i2.0, 10
  br i1 %cmp4, label %for.body5, label %for.end11

for.body5:                                        ; preds = %for.cond3
  %idxprom6 = sext i32 %i2.0 to i64
  %arrayidx7 = getelementptr inbounds [10 x i32], ptr %arr, i64 0, i64 %idxprom6
  %1 = load i32, ptr %arrayidx7, align 4
  %add8 = add nsw i32 %b.0, %1
  br label %for.inc9

for.inc9:                                         ; preds = %for.body5
  %add10 = add nsw i32 %i2.0, 2
  br label %for.cond3, !llvm.loop !8

for.end11:                                        ; preds = %for.cond3
  %b.0.lcssa = phi i32 [ %b.0, %for.cond3 ]
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %a.0.lcssa)
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %b.0.lcssa)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
