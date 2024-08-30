; ModuleID = 'tests/test5.ll'
source_filename = "test5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.arr = private unnamed_addr constant [10 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %arr = alloca [10 x i32], align 16
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %a, align 4
  store i32 0, ptr %b, align 4
  %0 = bitcast ptr %arr to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %0, ptr align 16 @__const.main.arr, i64 40, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %arr, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %4 = load i32, ptr %a, align 4
  %add = add nsw i32 %4, %3
  store i32 %add, ptr %a, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %add1 = add nsw i32 %5, 2
  store i32 %add1, ptr %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %i2, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc9, %for.end
  %6 = load i32, ptr %i2, align 4
  %cmp4 = icmp slt i32 %6, 10
  br i1 %cmp4, label %for.body5, label %for.end11

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, ptr %i2, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [10 x i32], ptr %arr, i64 0, i64 %idxprom6
  %8 = load i32, ptr %arrayidx7, align 4
  %9 = load i32, ptr %b, align 4
  %add8 = add nsw i32 %9, %8
  store i32 %add8, ptr %b, align 4
  br label %for.inc9

for.inc9:                                         ; preds = %for.body5
  %10 = load i32, ptr %i2, align 4
  %add10 = add nsw i32 %10, 2
  store i32 %add10, ptr %i2, align 4
  br label %for.cond3, !llvm.loop !6

for.end11:                                        ; preds = %for.cond3
  %11 = load i32, ptr %a, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %11)
  %12 = load i32, ptr %b, align 4
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12)
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
