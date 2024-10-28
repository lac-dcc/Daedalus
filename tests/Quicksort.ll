; ModuleID = 'Quicksort.ll'
source_filename = "Quicksort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i64 0, align 8
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [18 x i8] c" Error in Quick.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global ptr null, align 8
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@movesdone = dso_local global i32 0, align 4
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@rma = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@kount = dso_local global i32 0, align 4
@top = dso_local global i32 0, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initrand() #0 {
entry:
  store i64 74755, ptr @seed, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Rand() #0 {
entry:
  %0 = load i64, ptr @seed, align 8
  %mul = mul nsw i64 %0, 1309
  %add = add nsw i64 %mul, 13849
  %and = and i64 %add, 65535
  store i64 %and, ptr @seed, align 8
  %1 = load i64, ptr @seed, align 8
  %conv = trunc i64 %1 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initarr() #0 {
entry:
  call void @Initrand()
  store i32 0, ptr @biggest, align 4
  store i32 0, ptr @littlest, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %cmp = icmp sle i32 %i.0, 5000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @Rand()
  %conv = sext i32 %call to i64
  %div = sdiv i64 %conv, 100000
  %mul = mul nsw i64 %div, 100000
  %sub = sub nsw i64 %conv, %mul
  %sub1 = sub nsw i64 %sub, 50000
  %conv2 = trunc i64 %sub1 to i32
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %idxprom
  store i32 %conv2, ptr %arrayidx, align 4
  %idxprom3 = sext i32 %i.0 to i64
  %arrayidx4 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %idxprom3
  %0 = load i32, ptr %arrayidx4, align 4
  %1 = load i32, ptr @biggest, align 4
  %cmp5 = icmp sgt i32 %0, %1
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %idxprom7 = sext i32 %i.0 to i64
  %arrayidx8 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %idxprom7
  %2 = load i32, ptr %arrayidx8, align 4
  store i32 %2, ptr @biggest, align 4
  br label %if.end16

if.else:                                          ; preds = %for.body
  %idxprom9 = sext i32 %i.0 to i64
  %arrayidx10 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %idxprom9
  %3 = load i32, ptr %arrayidx10, align 4
  %4 = load i32, ptr @littlest, align 4
  %cmp11 = icmp slt i32 %3, %4
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.else
  %idxprom14 = sext i32 %i.0 to i64
  %arrayidx15 = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %idxprom14
  %5 = load i32, ptr %arrayidx15, align 4
  store i32 %5, ptr @littlest, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Quicksort(ptr noundef %a, i32 noundef %l, i32 noundef %r) #0 {
entry:
  %add = add nsw i32 %l, %r
  %div = sdiv i32 %add, 2
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %i.0 = phi i32 [ %l, %entry ], [ %i.2, %do.cond ]
  %j.0 = phi i32 [ %r, %entry ], [ %j.2, %do.cond ]
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %i.1 = phi i32 [ %i.0, %do.body ], [ %add3, %while.body ]
  %idxprom1 = sext i32 %i.1 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %a, i64 %idxprom1
  %1 = load i32, ptr %arrayidx2, align 4
  %cmp = icmp slt i32 %1, %0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %add3 = add nsw i32 %i.1, 1
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %i.1.lcssa = phi i32 [ %i.1, %while.cond ]
  br label %while.cond4

while.cond4:                                      ; preds = %while.body8, %while.end
  %j.1 = phi i32 [ %j.0, %while.end ], [ %sub, %while.body8 ]
  %idxprom5 = sext i32 %j.1 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %idxprom5
  %2 = load i32, ptr %arrayidx6, align 4
  %cmp7 = icmp slt i32 %0, %2
  br i1 %cmp7, label %while.body8, label %while.end9

while.body8:                                      ; preds = %while.cond4
  %sub = sub nsw i32 %j.1, 1
  br label %while.cond4, !llvm.loop !9

while.end9:                                       ; preds = %while.cond4
  %j.1.lcssa = phi i32 [ %j.1, %while.cond4 ]
  %cmp10 = icmp sle i32 %i.1.lcssa, %j.1.lcssa
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %while.end9
  %idxprom11 = sext i32 %i.1.lcssa to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %a, i64 %idxprom11
  %3 = load i32, ptr %arrayidx12, align 4
  %idxprom13 = sext i32 %j.1.lcssa to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %a, i64 %idxprom13
  %4 = load i32, ptr %arrayidx14, align 4
  %idxprom15 = sext i32 %i.1.lcssa to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %a, i64 %idxprom15
  store i32 %4, ptr %arrayidx16, align 4
  %idxprom17 = sext i32 %j.1.lcssa to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %a, i64 %idxprom17
  store i32 %3, ptr %arrayidx18, align 4
  %add19 = add nsw i32 %i.1.lcssa, 1
  %sub20 = sub nsw i32 %j.1.lcssa, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end9
  %i.2 = phi i32 [ %add19, %if.then ], [ %i.1.lcssa, %while.end9 ]
  %j.2 = phi i32 [ %sub20, %if.then ], [ %j.1.lcssa, %while.end9 ]
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %cmp21 = icmp sle i32 %i.2, %j.2
  br i1 %cmp21, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  %i.2.lcssa = phi i32 [ %i.2, %do.cond ]
  %j.2.lcssa = phi i32 [ %j.2, %do.cond ]
  %cmp22 = icmp slt i32 %l, %j.2.lcssa
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %do.end
  call void @Quicksort(ptr noundef %a, i32 noundef %l, i32 noundef %j.2.lcssa)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %do.end
  %cmp25 = icmp slt i32 %i.2.lcssa, %r
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @Quicksort(ptr noundef %a, i32 noundef %i.2.lcssa, i32 noundef %r)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Quick(i32 noundef %run) #0 {
entry:
  call void @Initarr()
  call void @Quicksort(ptr noundef @sortlist, i32 noundef 1, i32 noundef 5000)
  %0 = load i32, ptr getelementptr inbounds ([5001 x i32], ptr @sortlist, i64 0, i64 1), align 4
  %1 = load i32, ptr @littlest, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr getelementptr inbounds ([5001 x i32], ptr @sortlist, i64 0, i64 5000), align 16
  %3 = load i32, ptr @biggest, align 4
  %cmp1 = icmp ne i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %add = add nsw i32 %run, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [5001 x i32], ptr @sortlist, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %4)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @Quick(i32 noundef %i.0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
