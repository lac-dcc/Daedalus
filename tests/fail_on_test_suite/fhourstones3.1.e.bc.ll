; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/Fhourstones-3.1/fhourstones3.1.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashentry = type { i64 }

@nplies = internal global i32 0, align 4
@color = internal global [2 x i64] zeroinitializer, align 16
@height = internal global [7 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@moves = internal global [42 x i32] zeroinitializer, align 16
@ht = internal global ptr null, align 8
@posed = internal global i64 0, align 8
@lock = internal global i32 0, align 4
@htindex = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"- %5.3f  < %5.3f  = %5.3f  > %5.3f  + %5.3f\0A\00", align 1
@millisecs.Time = internal unnamed_addr global i64 0, align 8
@history = internal global [2 x [49 x i32]] zeroinitializer, align 16
@nodes = internal global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%c%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"#-<=>+\00", align 1
@msecs = internal global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"Fhourstones 3.1 (C)\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Boardsize = %dx%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Using %d transposition table entries.\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"\0ASolving %d-ply position after \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" . . .\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"score = %d (%c)  work = %d\0A\00", align 1

; Function Attrs: nofree nounwind optsize uwtable
define internal void @printMoves() #0 {
  %1 = load i32, ptr @nplies, align 4, !tbaa !7
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %13

3:                                                ; preds = %3, %0
  %4 = phi i64 [ %9, %3 ], [ 0, %0 ]
  %5 = getelementptr inbounds [42 x i32], ptr @moves, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !7
  %7 = add nsw i32 %6, 1
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7) #11
  %9 = add nuw nsw i64 %4, 1
  %10 = load i32, ptr @nplies, align 4, !tbaa !7
  %11 = sext i32 %10 to i64
  %12 = icmp slt i64 %9, %11
  br i1 %12, label %3, label %13, !llvm.loop !11

13:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @haswon(i64 noundef %0) #2 {
  %2 = lshr i64 %0, 6
  %3 = and i64 %2, %0
  %4 = lshr i64 %3, 12
  %5 = and i64 %4, %3
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = lshr i64 %0, 7
  %9 = and i64 %8, %0
  %10 = lshr i64 %9, 14
  %11 = and i64 %10, %9
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %7
  %14 = lshr i64 %0, 8
  %15 = and i64 %14, %0
  %16 = lshr i64 %15, 16
  %17 = and i64 %16, %15
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = lshr i64 %0, 1
  %21 = and i64 %20, %0
  %22 = lshr i64 %21, 2
  %23 = and i64 %22, %21
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %19, %13, %7, %1
  %27 = phi i32 [ %25, %19 ], [ 1, %1 ], [ 1, %7 ], [ 1, %13 ]
  ret i32 %27
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @hash() #3 {
  %1 = load i32, ptr @nplies, align 4, !tbaa !7
  %2 = and i32 %1, 1
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [2 x i64], ptr @color, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !13
  %6 = load i64, ptr @color, align 16, !tbaa !13
  %7 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @color, i64 0, i64 1), align 8, !tbaa !13
  %8 = add i64 %5, 4432676798593
  %9 = add i64 %8, %6
  %10 = add i64 %9, %7
  %11 = icmp slt i32 %1, 10
  br i1 %11, label %12, label %25

12:                                               ; preds = %0
  %13 = icmp eq i64 %10, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %14, %12
  %15 = phi i64 [ %19, %14 ], [ 0, %12 ]
  %16 = phi i64 [ %20, %14 ], [ %10, %12 ]
  %17 = shl i64 %15, 7
  %18 = and i64 %16, 127
  %19 = or i64 %17, %18
  %20 = lshr i64 %16, 7
  %21 = icmp ult i64 %16, 128
  br i1 %21, label %22, label %14, !llvm.loop !15

22:                                               ; preds = %14, %12
  %23 = phi i64 [ 0, %12 ], [ %19, %14 ]
  %24 = tail call i64 @llvm.umin.i64(i64 %23, i64 %10)
  br label %25

25:                                               ; preds = %22, %0
  %26 = phi i64 [ %24, %22 ], [ %10, %0 ]
  %27 = lshr i64 %26, 23
  %28 = trunc i64 %27 to i32
  store i32 %28, ptr @lock, align 4, !tbaa !7
  %29 = urem i64 %26, 8306069
  %30 = trunc i64 %29 to i32
  store i32 %30, ptr @htindex, align 4, !tbaa !7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @transpose() #5 {
  tail call void @hash() #11
  %1 = load ptr, ptr @ht, align 8, !tbaa !16
  %2 = load i32, ptr @htindex, align 4, !tbaa !7
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds %struct.hashentry, ptr %1, i64 %3
  %5 = load i64, ptr %4, align 4, !tbaa.struct !18
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 67108863
  %8 = load i32, ptr @lock, align 4, !tbaa !7
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = lshr i64 %5, 61
  %12 = trunc i64 %11 to i32
  br label %22

13:                                               ; preds = %0
  %14 = lshr i64 %5, 32
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 67108863
  %17 = icmp eq i32 %16, %8
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = lshr i64 %5, 58
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 7
  br label %22

22:                                               ; preds = %18, %13, %10
  %23 = phi i32 [ %12, %10 ], [ %21, %18 ], [ 0, %13 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @transtore(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #6 {
  %5 = load i64, ptr @posed, align 8, !tbaa !13
  %6 = add i64 %5, 1
  store i64 %6, ptr @posed, align 8, !tbaa !13
  %7 = load ptr, ptr @ht, align 8, !tbaa !16
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds %struct.hashentry, ptr %7, i64 %8
  %10 = load i64, ptr %9, align 4, !tbaa.struct !18
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 67108863
  %13 = icmp ne i32 %12, %1
  %14 = lshr i32 %11, 26
  %15 = icmp sgt i32 %14, %3
  %16 = and i1 %13, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %4
  %18 = and i64 %10, 2305843004918726656
  %19 = and i32 %2, 7
  %20 = zext i32 %19 to i64
  %21 = shl nuw i64 %20, 61
  %22 = shl i32 %3, 26
  %23 = zext i32 %22 to i64
  %24 = and i32 %1, 67108863
  %25 = zext i32 %24 to i64
  %26 = or i64 %18, %25
  %27 = or i64 %26, %21
  %28 = or i64 %27, %23
  br label %39

29:                                               ; preds = %4
  %30 = and i32 %1, 67108863
  %31 = zext i32 %30 to i64
  %32 = shl nuw nsw i64 %31, 32
  %33 = and i64 %10, -2305843004918726657
  %34 = or i64 %33, %32
  %35 = and i32 %2, 7
  %36 = zext i32 %35 to i64
  %37 = shl nuw nsw i64 %36, 58
  %38 = or i64 %34, %37
  br label %39

39:                                               ; preds = %29, %17
  %40 = phi i64 [ %28, %17 ], [ %38, %29 ]
  store i64 %40, ptr %9, align 4, !tbaa.struct !18
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @htstat() #0 {
  %1 = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %1, i8 0, i64 32, i1 false), !tbaa !7
  %2 = load ptr, ptr @ht, align 8, !tbaa !16
  br label %3

3:                                                ; preds = %23, %0
  %4 = phi i64 [ 0, %0 ], [ %24, %23 ]
  %5 = getelementptr inbounds %struct.hashentry, ptr %2, i64 %4
  %6 = load i64, ptr %5, align 4, !tbaa.struct !18
  %7 = and i64 %6, 67108863
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = lshr i64 %6, 61
  %11 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !7
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !7
  br label %14

14:                                               ; preds = %9, %3
  %15 = and i64 %6, 288230371856744448
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = lshr i64 %6, 58
  %19 = and i64 %18, 7
  %20 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !7
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !7
  br label %23

23:                                               ; preds = %17, %14
  %24 = add nuw nsw i64 %4, 1
  %25 = icmp eq i64 %24, 8306069
  br i1 %25, label %26, label %3, !llvm.loop !19

26:                                               ; preds = %26, %23
  %27 = phi i64 [ %32, %26 ], [ 1, %23 ]
  %28 = phi i32 [ %31, %26 ], [ 0, %23 ]
  %29 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 %27
  %30 = load i32, ptr %29, align 4, !tbaa !7
  %31 = add nsw i32 %30, %28
  %32 = add nuw nsw i64 %27, 1
  %33 = icmp eq i64 %32, 6
  br i1 %33, label %34, label %26, !llvm.loop !20

34:                                               ; preds = %26
  %.lcssa = phi i32 [ %31, %26 ]
  %35 = icmp sgt i32 %.lcssa, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %34
  %37 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 1
  %38 = load i32, ptr %37, align 4, !tbaa !7
  %39 = sitofp i32 %38 to double
  %40 = sitofp i32 %.lcssa to double
  %41 = fdiv double %39, %40
  %42 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 2
  %43 = load i32, ptr %42, align 8, !tbaa !7
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, %40
  %46 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 3
  %47 = load i32, ptr %46, align 4, !tbaa !7
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %48, %40
  %50 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 4
  %51 = load i32, ptr %50, align 16, !tbaa !7
  %52 = sitofp i32 %51 to double
  %53 = fdiv double %52, %40
  %54 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 5
  %55 = load i32, ptr %54, align 4, !tbaa !7
  %56 = sitofp i32 %55 to double
  %57 = fdiv double %56, %40
  %58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %41, double noundef %45, double noundef %49, double noundef %53, double noundef %57) #11
  br label %59

59:                                               ; preds = %36, %34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nofree nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @inithistory() #9 {
  br label %1

1:                                                ; preds = %40, %0
  %2 = phi i1 [ true, %0 ], [ false, %40 ]
  %3 = phi i64 [ 0, %0 ], [ 1, %40 ]
  br label %4

4:                                                ; preds = %37, %1
  %5 = phi i64 [ 0, %1 ], [ %38, %37 ]
  %6 = add nuw nsw i64 %5, 4
  %7 = add nuw i64 %5, 4294967293
  %8 = sub nuw nsw i64 6, %5
  %9 = mul nuw nsw i64 %8, 7
  %10 = mul nuw nsw i64 %5, 7
  %11 = add nuw nsw i64 %10, 5
  %12 = add nuw nsw i64 %9, 5
  %13 = trunc i64 %5 to i32
  br label %14

14:                                               ; preds = %14, %4
  %15 = phi i64 [ 0, %4 ], [ %34, %14 ]
  %16 = phi i64 [ 0, %4 ], [ %35, %14 ]
  %17 = add i64 %7, %15
  %18 = trunc i64 %17 to i32
  %19 = tail call i32 @llvm.smax.i32(i32 %18, i32 -1)
  %20 = trunc i64 %15 to i32
  %21 = tail call i32 @llvm.smin.i32(i32 %13, i32 %20)
  %22 = add nuw nsw i64 %6, %15
  %23 = trunc i64 %22 to i32
  %24 = add i32 %21, %23
  %25 = add i32 %24, %19
  %26 = add nuw nsw i64 %15, %9
  %27 = getelementptr inbounds [2 x [49 x i32]], ptr @history, i64 0, i64 %3, i64 %26
  store i32 %25, ptr %27, align 4, !tbaa !7
  %28 = add nsw i64 %11, %16
  %29 = getelementptr inbounds [2 x [49 x i32]], ptr @history, i64 0, i64 %3, i64 %28
  store i32 %25, ptr %29, align 4, !tbaa !7
  %30 = add nsw i64 %12, %16
  %31 = getelementptr inbounds [2 x [49 x i32]], ptr @history, i64 0, i64 %3, i64 %30
  store i32 %25, ptr %31, align 4, !tbaa !7
  %32 = add nuw nsw i64 %15, %10
  %33 = getelementptr inbounds [2 x [49 x i32]], ptr @history, i64 0, i64 %3, i64 %32
  store i32 %25, ptr %33, align 4, !tbaa !7
  %34 = add nuw nsw i64 %15, 1
  %35 = add nsw i64 %16, -1
  %36 = icmp eq i64 %34, 3
  br i1 %36, label %37, label %14, !llvm.loop !21

37:                                               ; preds = %14
  %38 = add nuw nsw i64 %5, 1
  %39 = icmp eq i64 %38, 4
  br i1 %39, label %40, label %4, !llvm.loop !22

40:                                               ; preds = %37
  br i1 %2, label %1, label %41, !llvm.loop !23

41:                                               ; preds = %40
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @ab(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca [7 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #12
  %4 = load i64, ptr @nodes, align 8, !tbaa !13
  %5 = add i64 %4, 1
  store i64 %5, ptr @nodes, align 8, !tbaa !13
  %6 = load i32, ptr @nplies, align 4, !tbaa !7
  %7 = icmp eq i32 %6, 41
  br i1 %7, label %287, label %8

8:                                                ; preds = %2
  %9 = and i32 %6, 1
  %10 = xor i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [2 x i64], ptr @color, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !13
  br label %14

14:                                               ; preds = %66, %8
  %15 = phi i64 [ 0, %8 ], [ %68, %66 ]
  %16 = phi i32 [ 0, %8 ], [ %67, %66 ]
  %17 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %15
  %18 = load i8, ptr %17, align 1, !tbaa !24
  %19 = sext i8 %18 to i64
  %20 = and i64 %19, 4294967295
  %21 = shl nuw i64 1, %20
  %22 = or i64 %21, %13
  %23 = and i64 %22, 283691315109952
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %14
  %26 = shl i64 2, %20
  %27 = or i64 %26, %13
  %28 = and i64 %27, 283691315109952
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = tail call i32 @haswon(i64 noundef %27) #11, !range !25
  %32 = tail call i32 @haswon(i64 noundef %22) #11, !range !25
  %33 = icmp eq i32 %32, 0
  %34 = icmp eq i32 %31, 0
  br i1 %33, label %60, label %38

35:                                               ; preds = %25
  %36 = tail call i32 @haswon(i64 noundef %22) #11, !range !25
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %61, label %39

38:                                               ; preds = %30
  %.lcssa7 = phi i64 [ %15, %30 ]
  %.lcssa5 = phi i1 [ %34, %30 ]
  br i1 %.lcssa5, label %39, label %287

39:                                               ; preds = %38, %35
  %.lcssa6 = phi i64 [ %.lcssa7, %38 ], [ %15, %35 ]
  %40 = trunc i64 %.lcssa6 to i32
  %41 = and i64 %.lcssa6, 4294967295
  br label %42

42:                                               ; preds = %57, %39
  %43 = phi i64 [ %46, %57 ], [ %41, %39 ]
  %44 = icmp eq i64 %43, 6
  br i1 %44, label %74, label %45

45:                                               ; preds = %42
  %46 = add nuw nsw i64 %43, 1
  %47 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !24
  %49 = sext i8 %48 to i64
  %50 = and i64 %49, 4294967295
  %51 = shl nuw i64 1, %50
  %52 = or i64 %51, %13
  %53 = and i64 %52, 283691315109952
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = tail call i32 @haswon(i64 noundef %52) #11, !range !25
  br label %57

57:                                               ; preds = %55, %45
  %58 = phi i32 [ 0, %45 ], [ %56, %55 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %42, label %287, !llvm.loop !26

60:                                               ; preds = %30
  br i1 %34, label %61, label %66

61:                                               ; preds = %60, %35
  %62 = add nsw i32 %16, 1
  %63 = sext i32 %16 to i64
  %64 = getelementptr inbounds [7 x i32], ptr %3, i64 0, i64 %63
  %65 = trunc i64 %15 to i32
  store i32 %65, ptr %64, align 4, !tbaa !7
  br label %66

66:                                               ; preds = %61, %60, %14
  %67 = phi i32 [ %16, %60 ], [ %62, %61 ], [ %16, %14 ]
  %68 = add nuw nsw i64 %15, 1
  %69 = icmp eq i64 %68, 7
  br i1 %69, label %70, label %14, !llvm.loop !27

70:                                               ; preds = %66
  %.lcssa9 = phi i32 [ %67, %66 ]
  %71 = icmp eq i32 %.lcssa9, 0
  br i1 %71, label %287, label %72

72:                                               ; preds = %70
  %73 = icmp eq i32 %6, 40
  br i1 %73, label %287, label %76

74:                                               ; preds = %42
  %75 = icmp eq i32 %6, 40
  br i1 %75, label %287, label %80

76:                                               ; preds = %72
  %77 = icmp eq i32 %.lcssa9, 1
  br i1 %77, label %78, label %117

78:                                               ; preds = %76
  %79 = load i32, ptr %3, align 16, !tbaa !7
  br label %80

80:                                               ; preds = %78, %74
  %81 = phi i32 [ %79, %78 ], [ %40, %74 ]
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !24
  %85 = add i8 %84, 1
  store i8 %85, ptr %83, align 1, !tbaa !24
  %86 = sext i8 %84 to i64
  %87 = and i64 %86, 4294967295
  %88 = shl nuw i64 1, %87
  %89 = zext i32 %9 to i64
  %90 = getelementptr inbounds [2 x i64], ptr @color, i64 0, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !13
  %92 = xor i64 %88, %91
  store i64 %92, ptr %90, align 8, !tbaa !13
  %93 = add nsw i32 %6, 1
  store i32 %93, ptr @nplies, align 4, !tbaa !7
  %94 = sext i32 %6 to i64
  %95 = getelementptr inbounds [42 x i32], ptr @moves, i64 0, i64 %94
  store i32 %81, ptr %95, align 4, !tbaa !7
  %96 = sub nsw i32 6, %1
  %97 = sub nsw i32 6, %0
  %98 = tail call i32 @ab(i32 noundef %96, i32 noundef %97) #11, !range !28
  %99 = sub nsw i32 6, %98
  %100 = load i32, ptr @nplies, align 4, !tbaa !7
  %101 = add nsw i32 %100, -1
  store i32 %101, ptr @nplies, align 4, !tbaa !7
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [42 x i32], ptr @moves, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !7
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !24
  %108 = add i8 %107, -1
  store i8 %108, ptr %106, align 1, !tbaa !24
  %109 = sext i8 %108 to i64
  %110 = and i64 %109, 4294967295
  %111 = shl nuw i64 1, %110
  %112 = and i32 %101, 1
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds [2 x i64], ptr @color, i64 0, i64 %113
  %115 = load i64, ptr %114, align 8, !tbaa !13
  %116 = xor i64 %111, %115
  store i64 %116, ptr %114, align 8, !tbaa !13
  br label %287

117:                                              ; preds = %76
  %118 = tail call i32 @transpose() #11, !range !29
  switch i32 %118, label %287 [
    i32 0, label %123
    i32 2, label %119
    i32 4, label %121
  ]

119:                                              ; preds = %117
  %120 = icmp sgt i32 %0, 2
  br i1 %120, label %287, label %123

121:                                              ; preds = %117
  %122 = icmp slt i32 %1, 4
  br i1 %122, label %287, label %123

123:                                              ; preds = %121, %119, %117
  %124 = phi i32 [ 3, %119 ], [ %1, %121 ], [ %1, %117 ]
  %125 = phi i32 [ %0, %119 ], [ 3, %121 ], [ %0, %117 ]
  %126 = load i32, ptr @htindex, align 4, !tbaa !7
  %127 = load i32, ptr @lock, align 4, !tbaa !7
  %128 = load i64, ptr @posed, align 8, !tbaa !13
  %129 = icmp sgt i32 %.lcssa9, 0
  br i1 %129, label %130, label %263

130:                                              ; preds = %123
  %131 = zext i32 %9 to i64
  %132 = sub nsw i32 6, %124
  %133 = zext i32 %.lcssa9 to i64
  %134 = zext i32 %.lcssa9 to i64
  br label %135

135:                                              ; preds = %257, %130
  %136 = phi i32 [ 0, %130 ], [ %262, %257 ]
  %137 = phi i64 [ 0, %130 ], [ %142, %257 ]
  %138 = phi i64 [ 1, %130 ], [ %260, %257 ]
  %139 = phi i32 [ %125, %130 ], [ %259, %257 ]
  %140 = phi i32 [ 1, %130 ], [ %258, %257 ]
  %141 = getelementptr inbounds [7 x i32], ptr %3, i64 0, i64 %137
  %142 = add nuw nsw i64 %137, 1
  %143 = icmp ult i64 %142, %133
  %144 = trunc i64 %137 to i32
  br i1 %143, label %145, label %171

145:                                              ; preds = %135
  %146 = load i32, ptr %141, align 4, !tbaa !7
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !24
  %150 = sext i8 %149 to i64
  %151 = getelementptr inbounds [2 x [49 x i32]], ptr @history, i64 0, i64 %131, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !7
  br label %153

153:                                              ; preds = %153, %145
  %154 = phi i64 [ %138, %145 ], [ %169, %153 ]
  %155 = phi i32 [ %144, %145 ], [ %168, %153 ]
  %156 = phi i32 [ %152, %145 ], [ %166, %153 ]
  %157 = getelementptr inbounds [7 x i32], ptr %3, i64 0, i64 %154
  %158 = load i32, ptr %157, align 4, !tbaa !7
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !24
  %162 = sext i8 %161 to i64
  %163 = getelementptr inbounds [2 x [49 x i32]], ptr @history, i64 0, i64 %131, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !7
  %165 = icmp sgt i32 %164, %156
  %166 = tail call i32 @llvm.smax.i32(i32 %164, i32 %156)
  %167 = trunc i64 %154 to i32
  %168 = select i1 %165, i32 %167, i32 %155
  %169 = add nuw nsw i64 %154, 1
  %170 = icmp eq i64 %169, %134
  br i1 %170, label %171, label %153, !llvm.loop !30

171:                                              ; preds = %153, %135
  %172 = phi i32 [ %144, %135 ], [ %168, %153 ]
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [7 x i32], ptr %3, i64 0, i64 %173
  %175 = load i32, ptr %174, align 4, !tbaa !7
  %176 = icmp slt i64 %137, %173
  br i1 %176, label %177, label %184

177:                                              ; preds = %177, %171
  %178 = phi i64 [ %179, %177 ], [ %173, %171 ]
  %179 = add nsw i64 %178, -1
  %180 = getelementptr inbounds [7 x i32], ptr %3, i64 0, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !7
  %182 = getelementptr inbounds [7 x i32], ptr %3, i64 0, i64 %178
  store i32 %181, ptr %182, align 4, !tbaa !7
  %183 = icmp sgt i64 %179, %137
  br i1 %183, label %177, label %184, !llvm.loop !31

184:                                              ; preds = %177, %171
  store i32 %175, ptr %141, align 4, !tbaa !7
  %185 = sext i32 %175 to i64
  %186 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %185
  %187 = load i8, ptr %186, align 1, !tbaa !24
  %188 = add i8 %187, 1
  store i8 %188, ptr %186, align 1, !tbaa !24
  %189 = sext i8 %187 to i64
  %190 = and i64 %189, 4294967295
  %191 = shl nuw i64 1, %190
  %192 = load i32, ptr @nplies, align 4, !tbaa !7
  %193 = and i32 %192, 1
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [2 x i64], ptr @color, i64 0, i64 %194
  %196 = load i64, ptr %195, align 8, !tbaa !13
  %197 = xor i64 %196, %191
  store i64 %197, ptr %195, align 8, !tbaa !13
  %198 = add nsw i32 %192, 1
  store i32 %198, ptr @nplies, align 4, !tbaa !7
  %199 = sext i32 %192 to i64
  %200 = getelementptr inbounds [42 x i32], ptr @moves, i64 0, i64 %199
  store i32 %175, ptr %200, align 4, !tbaa !7
  %201 = sub nsw i32 6, %139
  %202 = tail call i32 @ab(i32 noundef %132, i32 noundef %201) #11, !range !28
  %203 = sub nsw i32 6, %202
  %204 = load i32, ptr @nplies, align 4, !tbaa !7
  %205 = add nsw i32 %204, -1
  store i32 %205, ptr @nplies, align 4, !tbaa !7
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [42 x i32], ptr @moves, i64 0, i64 %206
  %208 = load i32, ptr %207, align 4, !tbaa !7
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !24
  %212 = add i8 %211, -1
  store i8 %212, ptr %210, align 1, !tbaa !24
  %213 = sext i8 %212 to i64
  %214 = and i64 %213, 4294967295
  %215 = shl nuw i64 1, %214
  %216 = and i32 %205, 1
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds [2 x i64], ptr @color, i64 0, i64 %217
  %219 = load i64, ptr %218, align 8, !tbaa !13
  %220 = xor i64 %215, %219
  store i64 %220, ptr %218, align 8, !tbaa !13
  %221 = icmp sgt i32 %203, %140
  br i1 %221, label %222, label %257

222:                                              ; preds = %184
  %223 = icmp sgt i32 %203, %139
  %224 = icmp sgt i32 %204, 0
  %225 = and i1 %223, %224
  br i1 %225, label %226, label %257

226:                                              ; preds = %222
  %227 = icmp slt i32 %203, %124
  br i1 %227, label %257, label %228

228:                                              ; preds = %226
  %.lcssa4 = phi i64 [ %185, %226 ]
  %.lcssa3 = phi i32 [ %202, %226 ]
  %.lcssa2 = phi i32 [ %203, %226 ]
  %.lcssa1 = phi i32 [ %136, %226 ]
  %.lcssa = phi i32 [ %144, %226 ]
  %229 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %.lcssa4
  %230 = icmp eq i32 %.lcssa3, 3
  %231 = add nsw i32 %.lcssa9, -1
  %232 = icmp sgt i32 %231, %.lcssa
  %233 = select i1 %232, i32 4, i32 3
  %234 = select i1 %230, i32 %233, i32 %.lcssa2
  %235 = icmp eq i32 %.lcssa, 0
  br i1 %235, label %263, label %236

236:                                              ; preds = %228
  %237 = zext i32 %.lcssa1 to i64
  br label %238

238:                                              ; preds = %238, %236
  %239 = phi i64 [ 0, %236 ], [ %249, %238 ]
  %240 = getelementptr inbounds [7 x i32], ptr %3, i64 0, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !7
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %242
  %244 = load i8, ptr %243, align 1, !tbaa !24
  %245 = sext i8 %244 to i64
  %246 = getelementptr inbounds [2 x [49 x i32]], ptr @history, i64 0, i64 %131, i64 %245
  %247 = load i32, ptr %246, align 4, !tbaa !7
  %248 = add nsw i32 %247, -1
  store i32 %248, ptr %246, align 4, !tbaa !7
  %249 = add nuw nsw i64 %239, 1
  %250 = icmp eq i64 %249, %237
  br i1 %250, label %251, label %238, !llvm.loop !32

251:                                              ; preds = %238
  %252 = load i8, ptr %229, align 1, !tbaa !24
  %253 = sext i8 %252 to i64
  %254 = getelementptr inbounds [2 x [49 x i32]], ptr @history, i64 0, i64 %131, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !7
  %256 = add nsw i32 %255, %.lcssa
  store i32 %256, ptr %254, align 4, !tbaa !7
  br label %263

257:                                              ; preds = %226, %222, %184
  %258 = phi i32 [ %203, %226 ], [ %203, %222 ], [ %140, %184 ]
  %259 = phi i32 [ %203, %226 ], [ %139, %222 ], [ %139, %184 ]
  %260 = add nuw nsw i64 %138, 1
  %261 = icmp eq i64 %142, %134
  %262 = add nuw nsw i32 %136, 1
  br i1 %261, label %263, label %135, !llvm.loop !33

263:                                              ; preds = %257, %251, %228, %123
  %264 = phi i32 [ %234, %251 ], [ %234, %228 ], [ 1, %123 ], [ %258, %257 ]
  %265 = sub nsw i32 6, %118
  %266 = icmp eq i32 %264, %265
  %267 = select i1 %266, i32 3, i32 %264
  %268 = load i64, ptr @posed, align 8, !tbaa !13
  %269 = sub i64 %268, %128
  %270 = icmp ult i64 %269, 2
  br i1 %270, label %277, label %271

271:                                              ; preds = %271, %263
  %272 = phi i64 [ %274, %271 ], [ %269, %263 ]
  %273 = phi i32 [ %275, %271 ], [ 0, %263 ]
  %274 = lshr i64 %272, 1
  %275 = add nuw nsw i32 %273, 1
  %276 = icmp ult i64 %272, 4
  br i1 %276, label %277, label %271, !llvm.loop !34

277:                                              ; preds = %271, %263
  %278 = phi i32 [ 0, %263 ], [ %275, %271 ]
  tail call void @transtore(i32 noundef %126, i32 noundef %127, i32 noundef %267, i32 noundef %278) #11
  %279 = load i32, ptr @nplies, align 4, !tbaa !7
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %277
  tail call void @printMoves() #11
  %282 = zext i32 %267 to i64
  %283 = getelementptr inbounds [7 x i8], ptr @.str.3, i64 0, i64 %282
  %284 = load i8, ptr %283, align 1, !tbaa !24
  %285 = sext i8 %284 to i32
  %286 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %285, i32 noundef %278) #11
  br label %287

287:                                              ; preds = %281, %277, %121, %119, %117, %80, %74, %72, %70, %57, %38, %2
  %288 = phi i32 [ %99, %80 ], [ 3, %2 ], [ 1, %38 ], [ 1, %70 ], [ 3, %72 ], [ 2, %119 ], [ 4, %121 ], [ %118, %117 ], [ %267, %281 ], [ %267, %277 ], [ 3, %74 ], [ 1, %57 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #12
  ret i32 %288
}

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @solve() #0 {
  %1 = load i32, ptr @nplies, align 4, !tbaa !7
  %2 = and i32 %1, 1
  %3 = xor i32 %2, 1
  store i64 0, ptr @nodes, align 8, !tbaa !13
  store i64 1, ptr @msecs, align 8, !tbaa !13
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [2 x i64], ptr @color, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !13
  %7 = tail call i32 @haswon(i64 noundef %6) #11, !range !25
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %0
  %10 = zext i32 %2 to i64
  %11 = getelementptr inbounds [2 x i64], ptr @color, i64 0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !13
  br label %13

13:                                               ; preds = %26, %9
  %14 = phi i64 [ 0, %9 ], [ %27, %26 ]
  %15 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !24
  %17 = sext i8 %16 to i64
  %18 = and i64 %17, 4294967295
  %19 = shl nuw i64 1, %18
  %20 = or i64 %19, %12
  %21 = and i64 %20, 283691315109952
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = tail call i32 @haswon(i64 noundef %20) #11, !range !25
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23, %13
  %27 = add nuw nsw i64 %14, 1
  %28 = icmp eq i64 %27, 7
  br i1 %28, label %29, label %13, !llvm.loop !35

29:                                               ; preds = %26
  tail call void @inithistory() #11
  %30 = load i64, ptr @millisecs.Time, align 8, !tbaa !13
  %31 = add nsw i64 %30, 1
  store i64 %31, ptr @millisecs.Time, align 8, !tbaa !13
  store i64 %30, ptr @msecs, align 8, !tbaa !13
  %32 = tail call i32 @ab(i32 noundef 1, i32 noundef 5) #11, !range !28
  %33 = load i64, ptr @millisecs.Time, align 8, !tbaa !13
  %34 = add i64 %33, 1
  store i64 %34, ptr @millisecs.Time, align 8, !tbaa !13
  %35 = load i64, ptr @msecs, align 8, !tbaa !13
  %36 = sub i64 %34, %35
  store i64 %36, ptr @msecs, align 8, !tbaa !13
  br label %37

37:                                               ; preds = %29, %23, %0
  %38 = phi i32 [ %32, %29 ], [ 1, %0 ], [ 5, %23 ]
  ret i32 %38
}

; Function Attrs: nofree nounwind optsize uwtable
define dso_local i32 @main() #0 {
  %1 = tail call noalias dereferenceable_or_null(66448552) ptr @calloc(i64 noundef 8306069, i64 noundef 8) #13
  store ptr %1, ptr @ht, align 8, !tbaa !16
  %2 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.4) #11
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef 7, i32 noundef 6) #11
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef 8306069) #11
  br label %5

5:                                                ; preds = %52, %0
  store i32 0, ptr @nplies, align 4, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @color, i8 0, i64 16, i1 false)
  store i8 0, ptr @height, align 1, !tbaa !24
  store i8 7, ptr getelementptr inbounds ([7 x i8], ptr @height, i64 0, i64 1), align 1, !tbaa !24
  store i8 14, ptr getelementptr inbounds ([7 x i8], ptr @height, i64 0, i64 2), align 1, !tbaa !24
  store i8 21, ptr getelementptr inbounds ([7 x i8], ptr @height, i64 0, i64 3), align 1, !tbaa !24
  store i8 28, ptr getelementptr inbounds ([7 x i8], ptr @height, i64 0, i64 4), align 1, !tbaa !24
  store i8 35, ptr getelementptr inbounds ([7 x i8], ptr @height, i64 0, i64 5), align 1, !tbaa !24
  store i8 42, ptr getelementptr inbounds ([7 x i8], ptr @height, i64 0, i64 6), align 1, !tbaa !24
  br label %6

6:                                                ; preds = %31, %5
  %7 = tail call i32 @getchar() #11
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %59, label %9

9:                                                ; preds = %6
  %10 = add i32 %7, -49
  %11 = icmp ult i32 %10, 7
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !24
  %16 = add i8 %15, 1
  store i8 %16, ptr %14, align 1, !tbaa !24
  %17 = sext i8 %15 to i64
  %18 = and i64 %17, 4294967295
  %19 = shl nuw i64 1, %18
  %20 = load i32, ptr @nplies, align 4, !tbaa !7
  %21 = and i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [2 x i64], ptr @color, i64 0, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !13
  %25 = xor i64 %24, %19
  store i64 %25, ptr %23, align 8, !tbaa !13
  %26 = add nsw i32 %20, 1
  store i32 %26, ptr @nplies, align 4, !tbaa !7
  %27 = sext i32 %20 to i64
  %28 = getelementptr inbounds [42 x i32], ptr @moves, i64 0, i64 %27
  store i32 %10, ptr %28, align 4, !tbaa !7
  br label %31

29:                                               ; preds = %9
  %30 = icmp eq i32 %7, 10
  br i1 %30, label %32, label %31

31:                                               ; preds = %29, %12
  br label %6, !llvm.loop !36

32:                                               ; preds = %29
  %33 = load i32, ptr @nplies, align 4, !tbaa !7
  %34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %33) #11
  tail call void @printMoves() #11
  %35 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.8) #11
  br label %36

36:                                               ; preds = %36, %32
  %37 = phi i64 [ 0, %32 ], [ %40, %36 ]
  %38 = load ptr, ptr @ht, align 8, !tbaa !16
  %39 = getelementptr inbounds %struct.hashentry, ptr %38, i64 %37
  store i64 0, ptr %39, align 4, !tbaa.struct !18
  %40 = add nuw nsw i64 %37, 1
  %41 = icmp eq i64 %40, 8306069
  br i1 %41, label %42, label %36, !llvm.loop !37

42:                                               ; preds = %36
  store i64 0, ptr @posed, align 8, !tbaa !13
  %43 = tail call i32 @solve() #11, !range !28
  %44 = load i64, ptr @posed, align 8, !tbaa !13
  %45 = icmp ult i64 %44, 2
  br i1 %45, label %52, label %46

46:                                               ; preds = %46, %42
  %47 = phi i64 [ %49, %46 ], [ %44, %42 ]
  %48 = phi i32 [ %50, %46 ], [ 0, %42 ]
  %49 = lshr i64 %47, 1
  %50 = add nuw nsw i32 %48, 1
  %51 = icmp ult i64 %47, 4
  br i1 %51, label %52, label %46, !llvm.loop !38

52:                                               ; preds = %46, %42
  %53 = phi i32 [ 0, %42 ], [ %50, %46 ]
  %54 = sext i32 %43 to i64
  %55 = getelementptr inbounds [7 x i8], ptr @.str.3, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !24
  %57 = sext i8 %56 to i32
  %58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %43, i32 noundef %57, i32 noundef %53) #11
  tail call void @htstat() #11
  br label %5

59:                                               ; preds = %6
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getchar() local_unnamed_addr #1

attributes #0 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize allocsize(0,1) }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !9, i64 0}
!15 = distinct !{!15, !12}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !9, i64 0}
!18 = !{i64 0, i64 4, !7, i64 3, i64 4, !7, i64 4, i64 4, !7, i64 7, i64 4, !7, i64 7, i64 4, !7}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = !{!9, !9, i64 0}
!25 = !{i32 0, i32 2}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = !{i32 -1, i32 8}
!29 = !{i32 0, i32 8}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
