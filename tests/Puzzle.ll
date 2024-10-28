; ModuleID = 'Puzzle.ll'
source_filename = "Puzzle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i64 0, align 8
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@kount = dso_local global i32 0, align 4
@n = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Error1 in Puzzle\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Error2 in Puzzle.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Error3 in Puzzle.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
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
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
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
define dso_local i32 @Fit(i32 noundef %i, i32 noundef %j) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4
  %cmp = icmp sle i32 %k.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom1 = sext i32 %i to i64
  %arrayidx2 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %idxprom1
  %idxprom3 = sext i32 %k.0 to i64
  %arrayidx4 = getelementptr inbounds [512 x i32], ptr %arrayidx2, i64 0, i64 %idxprom3
  %1 = load i32, ptr %arrayidx4, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %for.body
  %add = add nsw i32 %j, %k.0
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %idxprom5
  %2 = load i32, ptr %arrayidx6, align 4
  %tobool7 = icmp ne i32 %2, 0
  br i1 %tobool7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end9

if.end9:                                          ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %inc = add nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %return

return:                                           ; preds = %for.end, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 1, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %i, i32 noundef %j) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4
  %cmp = icmp sle i32 %k.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom1 = sext i32 %i to i64
  %arrayidx2 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %idxprom1
  %idxprom3 = sext i32 %k.0 to i64
  %arrayidx4 = getelementptr inbounds [512 x i32], ptr %arrayidx2, i64 0, i64 %idxprom3
  %1 = load i32, ptr %arrayidx4, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %add = add nsw i32 %j, %k.0
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %idxprom5
  store i32 1, ptr %arrayidx6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %idxprom7 = sext i32 %i to i64
  %arrayidx8 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %idxprom7
  %2 = load i32, ptr %arrayidx8, align 4
  %idxprom9 = sext i32 %2 to i64
  %arrayidx10 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %idxprom9
  %3 = load i32, ptr %arrayidx10, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom11 = sext i32 %i to i64
  %arrayidx12 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %idxprom11
  %4 = load i32, ptr %arrayidx12, align 4
  %idxprom13 = sext i32 %4 to i64
  %arrayidx14 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %idxprom13
  store i32 %sub, ptr %arrayidx14, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc23, %for.end
  %k.1 = phi i32 [ %j, %for.end ], [ %inc24, %for.inc23 ]
  %cmp16 = icmp sle i32 %k.1, 511
  br i1 %cmp16, label %for.body17, label %for.end25

for.body17:                                       ; preds = %for.cond15
  %idxprom18 = sext i32 %k.1 to i64
  %arrayidx19 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %idxprom18
  %5 = load i32, ptr %arrayidx19, align 4
  %tobool20 = icmp ne i32 %5, 0
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %for.body17
  %k.1.lcssa1 = phi i32 [ %k.1, %for.body17 ]
  br label %return

if.end22:                                         ; preds = %for.body17
  br label %for.inc23

for.inc23:                                        ; preds = %if.end22
  %inc24 = add nsw i32 %k.1, 1
  br label %for.cond15, !llvm.loop !9

for.end25:                                        ; preds = %for.cond15
  br label %return

return:                                           ; preds = %for.end25, %if.then21
  %retval.0 = phi i32 [ %k.1.lcssa1, %if.then21 ], [ 0, %for.end25 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %i, i32 noundef %j) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4
  %cmp = icmp sle i32 %k.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom1 = sext i32 %i to i64
  %arrayidx2 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %idxprom1
  %idxprom3 = sext i32 %k.0 to i64
  %arrayidx4 = getelementptr inbounds [512 x i32], ptr %arrayidx2, i64 0, i64 %idxprom3
  %1 = load i32, ptr %arrayidx4, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %add = add nsw i32 %j, %k.0
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %idxprom5
  store i32 0, ptr %arrayidx6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %idxprom7 = sext i32 %i to i64
  %arrayidx8 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %idxprom7
  %2 = load i32, ptr %arrayidx8, align 4
  %idxprom9 = sext i32 %2 to i64
  %arrayidx10 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %idxprom9
  %3 = load i32, ptr %arrayidx10, align 4
  %add11 = add nsw i32 %3, 1
  %idxprom12 = sext i32 %i to i64
  %arrayidx13 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %idxprom12
  %4 = load i32, ptr %arrayidx13, align 4
  %idxprom14 = sext i32 %4 to i64
  %arrayidx15 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %idxprom14
  store i32 %add11, ptr %arrayidx15, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %j) #0 {
entry:
  %0 = load i32, ptr @kount, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, ptr @kount, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp sle i32 %i.0, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %idxprom1
  %2 = load i32, ptr %arrayidx2, align 4
  %cmp3 = icmp ne i32 %2, 0
  br i1 %cmp3, label %if.then, label %if.end11

if.then:                                          ; preds = %for.body
  %call = call i32 @Fit(i32 noundef %i.0, i32 noundef %j)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then4, label %if.end10

if.then4:                                         ; preds = %if.then
  %call5 = call i32 @Place(i32 noundef %i.0, i32 noundef %j)
  %call6 = call i32 @Trial(i32 noundef %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %cmp8 = icmp eq i32 %call5, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %lor.lhs.false, %if.then4
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  call void @Remove(i32 noundef %i.0, i32 noundef %j)
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  br label %return

return:                                           ; preds = %for.end, %if.then9
  %retval.0 = phi i32 [ 1, %if.then9 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %m.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp sle i32 %m.0, 511
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %m.0 to i64
  %arrayidx = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %m.0, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc20, %for.end
  %i.0 = phi i32 [ 1, %for.end ], [ %inc21, %for.inc20 ]
  %cmp2 = icmp sle i32 %i.0, 5
  br i1 %cmp2, label %for.body3, label %for.end22

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc17, %for.body3
  %j.0 = phi i32 [ 1, %for.body3 ], [ %inc18, %for.inc17 ]
  %cmp5 = icmp sle i32 %j.0, 5
  br i1 %cmp5, label %for.body6, label %for.end19

for.body6:                                        ; preds = %for.cond4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc14, %for.body6
  %k.0 = phi i32 [ 1, %for.body6 ], [ %inc15, %for.inc14 ]
  %cmp8 = icmp sle i32 %k.0, 5
  br i1 %cmp8, label %for.body9, label %for.end16

for.body9:                                        ; preds = %for.cond7
  %mul = mul nsw i32 8, %k.0
  %add = add nsw i32 %j.0, %mul
  %mul10 = mul nsw i32 8, %add
  %add11 = add nsw i32 %i.0, %mul10
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %idxprom12
  store i32 0, ptr %arrayidx13, align 4
  br label %for.inc14

for.inc14:                                        ; preds = %for.body9
  %inc15 = add nsw i32 %k.0, 1
  br label %for.cond7, !llvm.loop !13

for.end16:                                        ; preds = %for.cond7
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %inc18 = add nsw i32 %j.0, 1
  br label %for.cond4, !llvm.loop !14

for.end19:                                        ; preds = %for.cond4
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %inc21 = add nsw i32 %i.0, 1
  br label %for.cond1, !llvm.loop !15

for.end22:                                        ; preds = %for.cond1
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc36, %for.end22
  %i.1 = phi i32 [ 0, %for.end22 ], [ %inc37, %for.inc36 ]
  %cmp24 = icmp sle i32 %i.1, 12
  br i1 %cmp24, label %for.body25, label %for.end38

for.body25:                                       ; preds = %for.cond23
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc33, %for.body25
  %m.1 = phi i32 [ 0, %for.body25 ], [ %inc34, %for.inc33 ]
  %cmp27 = icmp sle i32 %m.1, 511
  br i1 %cmp27, label %for.body28, label %for.end35

for.body28:                                       ; preds = %for.cond26
  %idxprom29 = sext i32 %i.1 to i64
  %arrayidx30 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %idxprom29
  %idxprom31 = sext i32 %m.1 to i64
  %arrayidx32 = getelementptr inbounds [512 x i32], ptr %arrayidx30, i64 0, i64 %idxprom31
  store i32 0, ptr %arrayidx32, align 4
  br label %for.inc33

for.inc33:                                        ; preds = %for.body28
  %inc34 = add nsw i32 %m.1, 1
  br label %for.cond26, !llvm.loop !16

for.end35:                                        ; preds = %for.cond26
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %inc37 = add nsw i32 %i.1, 1
  br label %for.cond23, !llvm.loop !17

for.end38:                                        ; preds = %for.cond23
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc60, %for.end38
  %i.2 = phi i32 [ 0, %for.end38 ], [ %inc61, %for.inc60 ]
  %cmp40 = icmp sle i32 %i.2, 3
  br i1 %cmp40, label %for.body41, label %for.end62

for.body41:                                       ; preds = %for.cond39
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc57, %for.body41
  %j.1 = phi i32 [ 0, %for.body41 ], [ %inc58, %for.inc57 ]
  %cmp43 = icmp sle i32 %j.1, 1
  br i1 %cmp43, label %for.body44, label %for.end59

for.body44:                                       ; preds = %for.cond42
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc54, %for.body44
  %k.1 = phi i32 [ 0, %for.body44 ], [ %inc55, %for.inc54 ]
  %cmp46 = icmp sle i32 %k.1, 0
  br i1 %cmp46, label %for.body47, label %for.end56

for.body47:                                       ; preds = %for.cond45
  %mul48 = mul nsw i32 8, %k.1
  %add49 = add nsw i32 %j.1, %mul48
  %mul50 = mul nsw i32 8, %add49
  %add51 = add nsw i32 %i.2, %mul50
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %idxprom52
  store i32 1, ptr %arrayidx53, align 4
  br label %for.inc54

for.inc54:                                        ; preds = %for.body47
  %inc55 = add nsw i32 %k.1, 1
  br label %for.cond45, !llvm.loop !18

for.end56:                                        ; preds = %for.cond45
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %inc58 = add nsw i32 %j.1, 1
  br label %for.cond42, !llvm.loop !19

for.end59:                                        ; preds = %for.cond42
  br label %for.inc60

for.inc60:                                        ; preds = %for.end59
  %inc61 = add nsw i32 %i.2, 1
  br label %for.cond39, !llvm.loop !20

for.end62:                                        ; preds = %for.cond39
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc84, %for.end62
  %i.3 = phi i32 [ 0, %for.end62 ], [ %inc85, %for.inc84 ]
  %cmp64 = icmp sle i32 %i.3, 1
  br i1 %cmp64, label %for.body65, label %for.end86

for.body65:                                       ; preds = %for.cond63
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc81, %for.body65
  %j.2 = phi i32 [ 0, %for.body65 ], [ %inc82, %for.inc81 ]
  %cmp67 = icmp sle i32 %j.2, 0
  br i1 %cmp67, label %for.body68, label %for.end83

for.body68:                                       ; preds = %for.cond66
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc78, %for.body68
  %k.2 = phi i32 [ 0, %for.body68 ], [ %inc79, %for.inc78 ]
  %cmp70 = icmp sle i32 %k.2, 3
  br i1 %cmp70, label %for.body71, label %for.end80

for.body71:                                       ; preds = %for.cond69
  %mul72 = mul nsw i32 8, %k.2
  %add73 = add nsw i32 %j.2, %mul72
  %mul74 = mul nsw i32 8, %add73
  %add75 = add nsw i32 %i.3, %mul74
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds ([13 x [512 x i32]], ptr @p, i64 0, i64 1), i64 0, i64 %idxprom76
  store i32 1, ptr %arrayidx77, align 4
  br label %for.inc78

for.inc78:                                        ; preds = %for.body71
  %inc79 = add nsw i32 %k.2, 1
  br label %for.cond69, !llvm.loop !21

for.end80:                                        ; preds = %for.cond69
  br label %for.inc81

for.inc81:                                        ; preds = %for.end80
  %inc82 = add nsw i32 %j.2, 1
  br label %for.cond66, !llvm.loop !22

for.end83:                                        ; preds = %for.cond66
  br label %for.inc84

for.inc84:                                        ; preds = %for.end83
  %inc85 = add nsw i32 %i.3, 1
  br label %for.cond63, !llvm.loop !23

for.end86:                                        ; preds = %for.cond63
  store i32 0, ptr getelementptr inbounds ([13 x i32], ptr @class, i64 0, i64 1), align 4
  store i32 193, ptr getelementptr inbounds ([13 x i32], ptr @piecemax, i64 0, i64 1), align 4
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc108, %for.end86
  %i.4 = phi i32 [ 0, %for.end86 ], [ %inc109, %for.inc108 ]
  %cmp88 = icmp sle i32 %i.4, 0
  br i1 %cmp88, label %for.body89, label %for.end110

for.body89:                                       ; preds = %for.cond87
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc105, %for.body89
  %j.3 = phi i32 [ 0, %for.body89 ], [ %inc106, %for.inc105 ]
  %cmp91 = icmp sle i32 %j.3, 3
  br i1 %cmp91, label %for.body92, label %for.end107

for.body92:                                       ; preds = %for.cond90
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc102, %for.body92
  %k.3 = phi i32 [ 0, %for.body92 ], [ %inc103, %for.inc102 ]
  %cmp94 = icmp sle i32 %k.3, 1
  br i1 %cmp94, label %for.body95, label %for.end104

for.body95:                                       ; preds = %for.cond93
  %mul96 = mul nsw i32 8, %k.3
  %add97 = add nsw i32 %j.3, %mul96
  %mul98 = mul nsw i32 8, %add97
  %add99 = add nsw i32 %i.4, %mul98
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds ([13 x [512 x i32]], ptr @p, i64 0, i64 2), i64 0, i64 %idxprom100
  store i32 1, ptr %arrayidx101, align 4
  br label %for.inc102

for.inc102:                                       ; preds = %for.body95
  %inc103 = add nsw i32 %k.3, 1
  br label %for.cond93, !llvm.loop !24

for.end104:                                       ; preds = %for.cond93
  br label %for.inc105

for.inc105:                                       ; preds = %for.end104
  %inc106 = add nsw i32 %j.3, 1
  br label %for.cond90, !llvm.loop !25

for.end107:                                       ; preds = %for.cond90
  br label %for.inc108

for.inc108:                                       ; preds = %for.end107
  %inc109 = add nsw i32 %i.4, 1
  br label %for.cond87, !llvm.loop !26

for.end110:                                       ; preds = %for.cond87
  store i32 0, ptr getelementptr inbounds ([13 x i32], ptr @class, i64 0, i64 2), align 8
  store i32 88, ptr getelementptr inbounds ([13 x i32], ptr @piecemax, i64 0, i64 2), align 8
  br label %for.cond111

for.cond111:                                      ; preds = %for.inc132, %for.end110
  %i.5 = phi i32 [ 0, %for.end110 ], [ %inc133, %for.inc132 ]
  %cmp112 = icmp sle i32 %i.5, 1
  br i1 %cmp112, label %for.body113, label %for.end134

for.body113:                                      ; preds = %for.cond111
  br label %for.cond114

for.cond114:                                      ; preds = %for.inc129, %for.body113
  %j.4 = phi i32 [ 0, %for.body113 ], [ %inc130, %for.inc129 ]
  %cmp115 = icmp sle i32 %j.4, 3
  br i1 %cmp115, label %for.body116, label %for.end131

for.body116:                                      ; preds = %for.cond114
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc126, %for.body116
  %k.4 = phi i32 [ 0, %for.body116 ], [ %inc127, %for.inc126 ]
  %cmp118 = icmp sle i32 %k.4, 0
  br i1 %cmp118, label %for.body119, label %for.end128

for.body119:                                      ; preds = %for.cond117
  %mul120 = mul nsw i32 8, %k.4
  %add121 = add nsw i32 %j.4, %mul120
  %mul122 = mul nsw i32 8, %add121
  %add123 = add nsw i32 %i.5, %mul122
  %idxprom124 = sext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds ([13 x [512 x i32]], ptr @p, i64 0, i64 3), i64 0, i64 %idxprom124
  store i32 1, ptr %arrayidx125, align 4
  br label %for.inc126

for.inc126:                                       ; preds = %for.body119
  %inc127 = add nsw i32 %k.4, 1
  br label %for.cond117, !llvm.loop !27

for.end128:                                       ; preds = %for.cond117
  br label %for.inc129

for.inc129:                                       ; preds = %for.end128
  %inc130 = add nsw i32 %j.4, 1
  br label %for.cond114, !llvm.loop !28

for.end131:                                       ; preds = %for.cond114
  br label %for.inc132

for.inc132:                                       ; preds = %for.end131
  %inc133 = add nsw i32 %i.5, 1
  br label %for.cond111, !llvm.loop !29

for.end134:                                       ; preds = %for.cond111
  store i32 0, ptr getelementptr inbounds ([13 x i32], ptr @class, i64 0, i64 3), align 4
  store i32 25, ptr getelementptr inbounds ([13 x i32], ptr @piecemax, i64 0, i64 3), align 4
  br label %for.cond135

for.cond135:                                      ; preds = %for.inc156, %for.end134
  %i.6 = phi i32 [ 0, %for.end134 ], [ %inc157, %for.inc156 ]
  %cmp136 = icmp sle i32 %i.6, 3
  br i1 %cmp136, label %for.body137, label %for.end158

for.body137:                                      ; preds = %for.cond135
  br label %for.cond138

for.cond138:                                      ; preds = %for.inc153, %for.body137
  %j.5 = phi i32 [ 0, %for.body137 ], [ %inc154, %for.inc153 ]
  %cmp139 = icmp sle i32 %j.5, 0
  br i1 %cmp139, label %for.body140, label %for.end155

for.body140:                                      ; preds = %for.cond138
  br label %for.cond141

for.cond141:                                      ; preds = %for.inc150, %for.body140
  %k.5 = phi i32 [ 0, %for.body140 ], [ %inc151, %for.inc150 ]
  %cmp142 = icmp sle i32 %k.5, 1
  br i1 %cmp142, label %for.body143, label %for.end152

for.body143:                                      ; preds = %for.cond141
  %mul144 = mul nsw i32 8, %k.5
  %add145 = add nsw i32 %j.5, %mul144
  %mul146 = mul nsw i32 8, %add145
  %add147 = add nsw i32 %i.6, %mul146
  %idxprom148 = sext i32 %add147 to i64
  %arrayidx149 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds ([13 x [512 x i32]], ptr @p, i64 0, i64 4), i64 0, i64 %idxprom148
  store i32 1, ptr %arrayidx149, align 4
  br label %for.inc150

for.inc150:                                       ; preds = %for.body143
  %inc151 = add nsw i32 %k.5, 1
  br label %for.cond141, !llvm.loop !30

for.end152:                                       ; preds = %for.cond141
  br label %for.inc153

for.inc153:                                       ; preds = %for.end152
  %inc154 = add nsw i32 %j.5, 1
  br label %for.cond138, !llvm.loop !31

for.end155:                                       ; preds = %for.cond138
  br label %for.inc156

for.inc156:                                       ; preds = %for.end155
  %inc157 = add nsw i32 %i.6, 1
  br label %for.cond135, !llvm.loop !32

for.end158:                                       ; preds = %for.cond135
  store i32 0, ptr getelementptr inbounds ([13 x i32], ptr @class, i64 0, i64 4), align 16
  store i32 67, ptr getelementptr inbounds ([13 x i32], ptr @piecemax, i64 0, i64 4), align 16
  br label %for.cond159

for.cond159:                                      ; preds = %for.inc180, %for.end158
  %i.7 = phi i32 [ 0, %for.end158 ], [ %inc181, %for.inc180 ]
  %cmp160 = icmp sle i32 %i.7, 0
  br i1 %cmp160, label %for.body161, label %for.end182

for.body161:                                      ; preds = %for.cond159
  br label %for.cond162

for.cond162:                                      ; preds = %for.inc177, %for.body161
  %j.6 = phi i32 [ 0, %for.body161 ], [ %inc178, %for.inc177 ]
  %cmp163 = icmp sle i32 %j.6, 1
  br i1 %cmp163, label %for.body164, label %for.end179

for.body164:                                      ; preds = %for.cond162
  br label %for.cond165

for.cond165:                                      ; preds = %for.inc174, %for.body164
  %k.6 = phi i32 [ 0, %for.body164 ], [ %inc175, %for.inc174 ]
  %cmp166 = icmp sle i32 %k.6, 3
  br i1 %cmp166, label %for.body167, label %for.end176

for.body167:                                      ; preds = %for.cond165
  %mul168 = mul nsw i32 8, %k.6
  %add169 = add nsw i32 %j.6, %mul168
  %mul170 = mul nsw i32 8, %add169
  %add171 = add nsw i32 %i.7, %mul170
  %idxprom172 = sext i32 %add171 to i64
  %arrayidx173 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds ([13 x [512 x i32]], ptr @p, i64 0, i64 5), i64 0, i64 %idxprom172
  store i32 1, ptr %arrayidx173, align 4
  br label %for.inc174

for.inc174:                                       ; preds = %for.body167
  %inc175 = add nsw i32 %k.6, 1
  br label %for.cond165, !llvm.loop !33

for.end176:                                       ; preds = %for.cond165
  br label %for.inc177

for.inc177:                                       ; preds = %for.end176
  %inc178 = add nsw i32 %j.6, 1
  br label %for.cond162, !llvm.loop !34

for.end179:                                       ; preds = %for.cond162
  br label %for.inc180

for.inc180:                                       ; preds = %for.end179
  %inc181 = add nsw i32 %i.7, 1
  br label %for.cond159, !llvm.loop !35

for.end182:                                       ; preds = %for.cond159
  store i32 0, ptr getelementptr inbounds ([13 x i32], ptr @class, i64 0, i64 5), align 4
  store i32 200, ptr getelementptr inbounds ([13 x i32], ptr @piecemax, i64 0, i64 5), align 4
  br label %for.cond183

for.cond183:                                      ; preds = %for.inc204, %for.end182
  %i.8 = phi i32 [ 0, %for.end182 ], [ %inc205, %for.inc204 ]
  %cmp184 = icmp sle i32 %i.8, 2
  br i1 %cmp184, label %for.body185, label %for.end206

for.body185:                                      ; preds = %for.cond183
  br label %for.cond186

for.cond186:                                      ; preds = %for.inc201, %for.body185
  %j.7 = phi i32 [ 0, %for.body185 ], [ %inc202, %for.inc201 ]
  %cmp187 = icmp sle i32 %j.7, 0
  br i1 %cmp187, label %for.body188, label %for.end203

for.body188:                                      ; preds = %for.cond186
  br label %for.cond189

for.cond189:                                      ; preds = %for.inc198, %for.body188
  %k.7 = phi i32 [ 0, %for.body188 ], [ %inc199, %for.inc198 ]
  %cmp190 = icmp sle i32 %k.7, 0
  br i1 %cmp190, label %for.body191, label %for.end200

for.body191:                                      ; preds = %for.cond189
  %mul192 = mul nsw i32 8, %k.7
  %add193 = add nsw i32 %j.7, %mul192
  %mul194 = mul nsw i32 8, %add193
  %add195 = add nsw i32 %i.8, %mul194
  %idxprom196 = sext i32 %add195 to i64
  %arrayidx197 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds ([13 x [512 x i32]], ptr @p, i64 0, i64 6), i64 0, i64 %idxprom196
  store i32 1, ptr %arrayidx197, align 4
  br label %for.inc198

for.inc198:                                       ; preds = %for.body191
  %inc199 = add nsw i32 %k.7, 1
  br label %for.cond189, !llvm.loop !36

for.end200:                                       ; preds = %for.cond189
  br label %for.inc201

for.inc201:                                       ; preds = %for.end200
  %inc202 = add nsw i32 %j.7, 1
  br label %for.cond186, !llvm.loop !37

for.end203:                                       ; preds = %for.cond186
  br label %for.inc204

for.inc204:                                       ; preds = %for.end203
  %inc205 = add nsw i32 %i.8, 1
  br label %for.cond183, !llvm.loop !38

for.end206:                                       ; preds = %for.cond183
  store i32 1, ptr getelementptr inbounds ([13 x i32], ptr @class, i64 0, i64 6), align 8
  store i32 2, ptr getelementptr inbounds ([13 x i32], ptr @piecemax, i64 0, i64 6), align 8
  br label %for.cond207

for.cond207:                                      ; preds = %for.inc228, %for.end206
  %i.9 = phi i32 [ 0, %for.end206 ], [ %inc229, %for.inc228 ]
  %cmp208 = icmp sle i32 %i.9, 0
  br i1 %cmp208, label %for.body209, label %for.end230

for.body209:                                      ; preds = %for.cond207
  br label %for.cond210

for.cond210:                                      ; preds = %for.inc225, %for.body209
  %j.8 = phi i32 [ 0, %for.body209 ], [ %inc226, %for.inc225 ]
  %cmp211 = icmp sle i32 %j.8, 2
  br i1 %cmp211, label %for.body212, label %for.end227

for.body212:                                      ; preds = %for.cond210
  br label %for.cond213

for.cond213:                                      ; preds = %for.inc222, %for.body212
  %k.8 = phi i32 [ 0, %for.body212 ], [ %inc223, %for.inc222 ]
  %cmp214 = icmp sle i32 %k.8, 0
  br i1 %cmp214, label %for.body215, label %for.end224

for.body215:                                      ; preds = %for.cond213
  %mul216 = mul nsw i32 8, %k.8
  %add217 = add nsw i32 %j.8, %mul216
  %mul218 = mul nsw i32 8, %add217
  %add219 = add nsw i32 %i.9, %mul218
  %idxprom220 = sext i32 %add219 to i64
  %arrayidx221 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds ([13 x [512 x i32]], ptr @p, i64 0, i64 7), i64 0, i64 %idxprom220
  store i32 1, ptr %arrayidx221, align 4
  br label %for.inc222

for.inc222:                                       ; preds = %for.body215
  %inc223 = add nsw i32 %k.8, 1
  br label %for.cond213, !llvm.loop !39

for.end224:                                       ; preds = %for.cond213
  br label %for.inc225

for.inc225:                                       ; preds = %for.end224
  %inc226 = add nsw i32 %j.8, 1
  br label %for.cond210, !llvm.loop !40

for.end227:                                       ; preds = %for.cond210
  br label %for.inc228

for.inc228:                                       ; preds = %for.end227
  %inc229 = add nsw i32 %i.9, 1
  br label %for.cond207, !llvm.loop !41

for.end230:                                       ; preds = %for.cond207
  store i32 1, ptr getelementptr inbounds ([13 x i32], ptr @class, i64 0, i64 7), align 4
  store i32 16, ptr getelementptr inbounds ([13 x i32], ptr @piecemax, i64 0, i64 7), align 4
  br label %for.cond231

for.cond231:                                      ; preds = %for.inc252, %for.end230
  %i.10 = phi i32 [ 0, %for.end230 ], [ %inc253, %for.inc252 ]
  %cmp232 = icmp sle i32 %i.10, 0
  br i1 %cmp232, label %for.body233, label %for.end254

for.body233:                                      ; preds = %for.cond231
  br label %for.cond234

for.cond234:                                      ; preds = %for.inc249, %for.body233
  %j.9 = phi i32 [ 0, %for.body233 ], [ %inc250, %for.inc249 ]
  %cmp235 = icmp sle i32 %j.9, 0
  br i1 %cmp235, label %for.body236, label %for.end251

for.body236:                                      ; preds = %for.cond234
  br label %for.cond237

for.cond237:                                      ; preds = %for.inc246, %for.body236
  %k.9 = phi i32 [ 0, %for.body236 ], [ %inc247, %for.inc246 ]
  %cmp238 = icmp sle i32 %k.9, 2
  br i1 %cmp238, label %for.body239, label %for.end248

for.body239:                                      ; preds = %for.cond237
  %mul240 = mul nsw i32 8, %k.9
  %add241 = add nsw i32 %j.9, %mul240
  %mul242 = mul nsw i32 8, %add241
  %add243 = add nsw i32 %i.10, %mul242
  %idxprom244 = sext i32 %add243 to i64
  %arrayidx245 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds ([13 x [512 x i32]], ptr @p, i64 0, i64 8), i64 0, i64 %idxprom244
  store i32 1, ptr %arrayidx245, align 4
  br label %for.inc246

for.inc246:                                       ; preds = %for.body239
  %inc247 = add nsw i32 %k.9, 1
  br label %for.cond237, !llvm.loop !42

for.end248:                                       ; preds = %for.cond237
  br label %for.inc249

for.inc249:                                       ; preds = %for.end248
  %inc250 = add nsw i32 %j.9, 1
  br label %for.cond234, !llvm.loop !43

for.end251:                                       ; preds = %for.cond234
  br label %for.inc252

for.inc252:                                       ; preds = %for.end251
  %inc253 = add nsw i32 %i.10, 1
  br label %for.cond231, !llvm.loop !44

for.end254:                                       ; preds = %for.cond231
  store i32 1, ptr getelementptr inbounds ([13 x i32], ptr @class, i64 0, i64 8), align 16
  store i32 128, ptr getelementptr inbounds ([13 x i32], ptr @piecemax, i64 0, i64 8), align 16
  br label %for.cond255

for.cond255:                                      ; preds = %for.inc276, %for.end254
  %i.11 = phi i32 [ 0, %for.end254 ], [ %inc277, %for.inc276 ]
  %cmp256 = icmp sle i32 %i.11, 1
  br i1 %cmp256, label %for.body257, label %for.end278

for.body257:                                      ; preds = %for.cond255
  br label %for.cond258

for.cond258:                                      ; preds = %for.inc273, %for.body257
  %j.10 = phi i32 [ 0, %for.body257 ], [ %inc274, %for.inc273 ]
  %cmp259 = icmp sle i32 %j.10, 1
  br i1 %cmp259, label %for.body260, label %for.end275

for.body260:                                      ; preds = %for.cond258
  br label %for.cond261

for.cond261:                                      ; preds = %for.inc270, %for.body260
  %k.10 = phi i32 [ 0, %for.body260 ], [ %inc271, %for.inc270 ]
  %cmp262 = icmp sle i32 %k.10, 0
  br i1 %cmp262, label %for.body263, label %for.end272

for.body263:                                      ; preds = %for.cond261
  %mul264 = mul nsw i32 8, %k.10
  %add265 = add nsw i32 %j.10, %mul264
  %mul266 = mul nsw i32 8, %add265
  %add267 = add nsw i32 %i.11, %mul266
  %idxprom268 = sext i32 %add267 to i64
  %arrayidx269 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds ([13 x [512 x i32]], ptr @p, i64 0, i64 9), i64 0, i64 %idxprom268
  store i32 1, ptr %arrayidx269, align 4
  br label %for.inc270

for.inc270:                                       ; preds = %for.body263
  %inc271 = add nsw i32 %k.10, 1
  br label %for.cond261, !llvm.loop !45

for.end272:                                       ; preds = %for.cond261
  br label %for.inc273

for.inc273:                                       ; preds = %for.end272
  %inc274 = add nsw i32 %j.10, 1
  br label %for.cond258, !llvm.loop !46

for.end275:                                       ; preds = %for.cond258
  br label %for.inc276

for.inc276:                                       ; preds = %for.end275
  %inc277 = add nsw i32 %i.11, 1
  br label %for.cond255, !llvm.loop !47

for.end278:                                       ; preds = %for.cond255
  store i32 2, ptr getelementptr inbounds ([13 x i32], ptr @class, i64 0, i64 9), align 4
  store i32 9, ptr getelementptr inbounds ([13 x i32], ptr @piecemax, i64 0, i64 9), align 4
  br label %for.cond279

for.cond279:                                      ; preds = %for.inc300, %for.end278
  %i.12 = phi i32 [ 0, %for.end278 ], [ %inc301, %for.inc300 ]
  %cmp280 = icmp sle i32 %i.12, 1
  br i1 %cmp280, label %for.body281, label %for.end302

for.body281:                                      ; preds = %for.cond279
  br label %for.cond282

for.cond282:                                      ; preds = %for.inc297, %for.body281
  %j.11 = phi i32 [ 0, %for.body281 ], [ %inc298, %for.inc297 ]
  %cmp283 = icmp sle i32 %j.11, 0
  br i1 %cmp283, label %for.body284, label %for.end299

for.body284:                                      ; preds = %for.cond282
  br label %for.cond285

for.cond285:                                      ; preds = %for.inc294, %for.body284
  %k.11 = phi i32 [ 0, %for.body284 ], [ %inc295, %for.inc294 ]
  %cmp286 = icmp sle i32 %k.11, 1
  br i1 %cmp286, label %for.body287, label %for.end296

for.body287:                                      ; preds = %for.cond285
  %mul288 = mul nsw i32 8, %k.11
  %add289 = add nsw i32 %j.11, %mul288
  %mul290 = mul nsw i32 8, %add289
  %add291 = add nsw i32 %i.12, %mul290
  %idxprom292 = sext i32 %add291 to i64
  %arrayidx293 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds ([13 x [512 x i32]], ptr @p, i64 0, i64 10), i64 0, i64 %idxprom292
  store i32 1, ptr %arrayidx293, align 4
  br label %for.inc294

for.inc294:                                       ; preds = %for.body287
  %inc295 = add nsw i32 %k.11, 1
  br label %for.cond285, !llvm.loop !48

for.end296:                                       ; preds = %for.cond285
  br label %for.inc297

for.inc297:                                       ; preds = %for.end296
  %inc298 = add nsw i32 %j.11, 1
  br label %for.cond282, !llvm.loop !49

for.end299:                                       ; preds = %for.cond282
  br label %for.inc300

for.inc300:                                       ; preds = %for.end299
  %inc301 = add nsw i32 %i.12, 1
  br label %for.cond279, !llvm.loop !50

for.end302:                                       ; preds = %for.cond279
  store i32 2, ptr getelementptr inbounds ([13 x i32], ptr @class, i64 0, i64 10), align 8
  store i32 65, ptr getelementptr inbounds ([13 x i32], ptr @piecemax, i64 0, i64 10), align 8
  br label %for.cond303

for.cond303:                                      ; preds = %for.inc324, %for.end302
  %i.13 = phi i32 [ 0, %for.end302 ], [ %inc325, %for.inc324 ]
  %cmp304 = icmp sle i32 %i.13, 0
  br i1 %cmp304, label %for.body305, label %for.end326

for.body305:                                      ; preds = %for.cond303
  br label %for.cond306

for.cond306:                                      ; preds = %for.inc321, %for.body305
  %j.12 = phi i32 [ 0, %for.body305 ], [ %inc322, %for.inc321 ]
  %cmp307 = icmp sle i32 %j.12, 1
  br i1 %cmp307, label %for.body308, label %for.end323

for.body308:                                      ; preds = %for.cond306
  br label %for.cond309

for.cond309:                                      ; preds = %for.inc318, %for.body308
  %k.12 = phi i32 [ 0, %for.body308 ], [ %inc319, %for.inc318 ]
  %cmp310 = icmp sle i32 %k.12, 1
  br i1 %cmp310, label %for.body311, label %for.end320

for.body311:                                      ; preds = %for.cond309
  %mul312 = mul nsw i32 8, %k.12
  %add313 = add nsw i32 %j.12, %mul312
  %mul314 = mul nsw i32 8, %add313
  %add315 = add nsw i32 %i.13, %mul314
  %idxprom316 = sext i32 %add315 to i64
  %arrayidx317 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds ([13 x [512 x i32]], ptr @p, i64 0, i64 11), i64 0, i64 %idxprom316
  store i32 1, ptr %arrayidx317, align 4
  br label %for.inc318

for.inc318:                                       ; preds = %for.body311
  %inc319 = add nsw i32 %k.12, 1
  br label %for.cond309, !llvm.loop !51

for.end320:                                       ; preds = %for.cond309
  br label %for.inc321

for.inc321:                                       ; preds = %for.end320
  %inc322 = add nsw i32 %j.12, 1
  br label %for.cond306, !llvm.loop !52

for.end323:                                       ; preds = %for.cond306
  br label %for.inc324

for.inc324:                                       ; preds = %for.end323
  %inc325 = add nsw i32 %i.13, 1
  br label %for.cond303, !llvm.loop !53

for.end326:                                       ; preds = %for.cond303
  store i32 2, ptr getelementptr inbounds ([13 x i32], ptr @class, i64 0, i64 11), align 4
  store i32 72, ptr getelementptr inbounds ([13 x i32], ptr @piecemax, i64 0, i64 11), align 4
  br label %for.cond327

for.cond327:                                      ; preds = %for.inc348, %for.end326
  %i.14 = phi i32 [ 0, %for.end326 ], [ %inc349, %for.inc348 ]
  %cmp328 = icmp sle i32 %i.14, 1
  br i1 %cmp328, label %for.body329, label %for.end350

for.body329:                                      ; preds = %for.cond327
  br label %for.cond330

for.cond330:                                      ; preds = %for.inc345, %for.body329
  %j.13 = phi i32 [ 0, %for.body329 ], [ %inc346, %for.inc345 ]
  %cmp331 = icmp sle i32 %j.13, 1
  br i1 %cmp331, label %for.body332, label %for.end347

for.body332:                                      ; preds = %for.cond330
  br label %for.cond333

for.cond333:                                      ; preds = %for.inc342, %for.body332
  %k.13 = phi i32 [ 0, %for.body332 ], [ %inc343, %for.inc342 ]
  %cmp334 = icmp sle i32 %k.13, 1
  br i1 %cmp334, label %for.body335, label %for.end344

for.body335:                                      ; preds = %for.cond333
  %mul336 = mul nsw i32 8, %k.13
  %add337 = add nsw i32 %j.13, %mul336
  %mul338 = mul nsw i32 8, %add337
  %add339 = add nsw i32 %i.14, %mul338
  %idxprom340 = sext i32 %add339 to i64
  %arrayidx341 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds ([13 x [512 x i32]], ptr @p, i64 0, i64 12), i64 0, i64 %idxprom340
  store i32 1, ptr %arrayidx341, align 4
  br label %for.inc342

for.inc342:                                       ; preds = %for.body335
  %inc343 = add nsw i32 %k.13, 1
  br label %for.cond333, !llvm.loop !54

for.end344:                                       ; preds = %for.cond333
  br label %for.inc345

for.inc345:                                       ; preds = %for.end344
  %inc346 = add nsw i32 %j.13, 1
  br label %for.cond330, !llvm.loop !55

for.end347:                                       ; preds = %for.cond330
  br label %for.inc348

for.inc348:                                       ; preds = %for.end347
  %inc349 = add nsw i32 %i.14, 1
  br label %for.cond327, !llvm.loop !56

for.end350:                                       ; preds = %for.cond327
  store i32 3, ptr getelementptr inbounds ([13 x i32], ptr @class, i64 0, i64 12), align 16
  store i32 73, ptr getelementptr inbounds ([13 x i32], ptr @piecemax, i64 0, i64 12), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds ([4 x i32], ptr @piececount, i64 0, i64 1), align 4
  store i32 1, ptr getelementptr inbounds ([4 x i32], ptr @piececount, i64 0, i64 2), align 8
  store i32 1, ptr getelementptr inbounds ([4 x i32], ptr @piececount, i64 0, i64 3), align 4
  store i32 0, ptr @kount, align 4
  %call = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end350
  %call351 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %call351, ptr @n, align 4
  br label %if.end

if.else:                                          ; preds = %for.end350
  %call352 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %0 = load i32, ptr @n, align 4
  %call353 = call i32 @Trial(i32 noundef %0)
  %tobool354 = icmp ne i32 %call353, 0
  br i1 %tobool354, label %if.else357, label %if.then355

if.then355:                                       ; preds = %if.end
  %call356 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end362

if.else357:                                       ; preds = %if.end
  %1 = load i32, ptr @kount, align 4
  %cmp358 = icmp ne i32 %1, 2005
  br i1 %cmp358, label %if.then359, label %if.end361

if.then359:                                       ; preds = %if.else357
  %call360 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end361

if.end361:                                        ; preds = %if.then359, %if.else357
  br label %if.end362

if.end362:                                        ; preds = %if.end361, %if.then355
  %2 = load i32, ptr @n, align 4
  %call363 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %2)
  %3 = load i32, ptr @kount, align 4
  %call364 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %3)
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
  call void @Puzzle()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !57

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
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
!56 = distinct !{!56, !7}
!57 = distinct !{!57, !7}
