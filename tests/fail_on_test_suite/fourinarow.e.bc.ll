; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/FreeBench/fourinarow/fourinarow.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEPTH = internal global i32 3, align 4
@off = internal global i32 0, align 4
@C4VERT = internal global i64 0, align 8
@C3VERT = internal global i64 0, align 8
@C2VERT = internal global i64 0, align 8
@C4HORIZ = internal global i64 0, align 8
@C3HORIZ = internal global i64 0, align 8
@C2HORIZ = internal global i64 0, align 8
@C4UP_R = internal global i64 0, align 8
@C3UP_R = internal global i64 0, align 8
@C2UP_R = internal global i64 0, align 8
@C4UP_L = internal global i64 0, align 8
@C3UP_L = internal global i64 0, align 8
@C2UP_L = internal global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ERROR: Faulty column: %d.\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"test.in\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Recursion depth: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Alpha-Beta pruning: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@str = private unnamed_addr constant [17 x i8] c"----------------\00", align 1
@str.23 = private unnamed_addr constant [23 x i8] c"ERROR: Unknown player.\00", align 1
@str.24 = private unnamed_addr constant [34 x i8] c"ERROR: Could not open indata file\00", align 1
@str.25 = private unnamed_addr constant [12 x i8] c"It's a tie.\00", align 1
@str.26 = private unnamed_addr constant [28 x i8] c"The computer is the winner.\00", align 1
@str.27 = private unnamed_addr constant [26 x i8] c"The player is the winner.\00", align 1
@str.28 = private unnamed_addr constant [23 x i8] c"Using pruning method 2\00", align 1
@str.29 = private unnamed_addr constant [23 x i8] c"Using pruning method 1\00", align 1

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @init_patterns() #0 {
  %1 = load i64, ptr @C4VERT, align 8, !tbaa !7
  br label %2

2:                                                ; preds = %2, %0
  %3 = phi i32 [ 0, %0 ], [ %7, %2 ]
  %4 = phi i64 [ %1, %0 ], [ %6, %2 ]
  %5 = shl i64 %4, 7
  %6 = or i64 %5, 128
  %7 = add nuw nsw i32 %3, 1
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %2, !llvm.loop !11

9:                                                ; preds = %2
  %.lcssa5 = phi i64 [ %5, %2 ]
  %.lcssa4 = phi i64 [ %6, %2 ]
  %10 = or i64 %.lcssa5, 129
  store i64 %10, ptr @C4VERT, align 8, !tbaa !7
  %11 = lshr exact i64 %.lcssa4, 7
  store i64 %11, ptr @C3VERT, align 8, !tbaa !7
  %12 = lshr i64 %.lcssa5, 14
  store i64 %12, ptr @C2VERT, align 8, !tbaa !7
  store i64 15, ptr @C4HORIZ, align 8, !tbaa !7
  store i64 7, ptr @C3HORIZ, align 8, !tbaa !7
  store i64 3, ptr @C2HORIZ, align 8, !tbaa !7
  %13 = load i64, ptr @C4UP_R, align 8, !tbaa !7
  br label %14

14:                                               ; preds = %14, %9
  %15 = phi i32 [ 0, %9 ], [ %19, %14 ]
  %16 = phi i64 [ %13, %9 ], [ %18, %14 ]
  %17 = shl i64 %16, 8
  %18 = or i64 %17, 256
  %19 = add nuw nsw i32 %15, 1
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %14, !llvm.loop !13

21:                                               ; preds = %14
  %.lcssa3 = phi i64 [ %17, %14 ]
  %.lcssa2 = phi i64 [ %18, %14 ]
  %22 = or i64 %.lcssa3, 257
  store i64 %22, ptr @C4UP_R, align 8, !tbaa !7
  %23 = lshr exact i64 %.lcssa2, 8
  store i64 %23, ptr @C3UP_R, align 8, !tbaa !7
  %24 = lshr i64 %.lcssa3, 16
  store i64 %24, ptr @C2UP_R, align 8, !tbaa !7
  %25 = load i64, ptr @C4UP_L, align 8, !tbaa !7
  br label %26

26:                                               ; preds = %26, %21
  %27 = phi i32 [ 0, %21 ], [ %31, %26 ]
  %28 = phi i64 [ %25, %21 ], [ %30, %26 ]
  %29 = shl i64 %28, 6
  %30 = or i64 %29, 512
  %31 = add nuw nsw i32 %27, 1
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %26, !llvm.loop !14

33:                                               ; preds = %26
  %.lcssa1 = phi i64 [ %29, %26 ]
  %.lcssa = phi i64 [ %30, %26 ]
  %34 = or i64 %.lcssa1, 520
  store i64 %34, ptr @C4UP_L, align 8, !tbaa !7
  %35 = lshr exact i64 %.lcssa, 6
  store i64 %35, ptr @C3UP_L, align 8, !tbaa !7
  %36 = lshr i64 %.lcssa1, 12
  store i64 %36, ptr @C2UP_L, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @print_board(ptr nocapture noundef readonly %0) #1 {
  %2 = tail call i32 @putchar(i32 noundef 32) #14
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %9, %3 ]
  %5 = getelementptr inbounds [7 x i8], ptr %0, i64 %4, i64 6
  %6 = load i8, ptr %5, align 1, !tbaa !15
  %7 = sext i8 %6 to i32
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7) #14
  %9 = add nuw nsw i64 %4, 1
  %10 = icmp eq i64 %9, 7
  br i1 %10, label %11, label %3, !llvm.loop !16

11:                                               ; preds = %3
  %12 = tail call i32 @putchar(i32 noundef 10) #14
  br label %13

13:                                               ; preds = %25, %11
  %14 = phi i64 [ 5, %11 ], [ %27, %25 ]
  %15 = trunc i64 %14 to i32
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %15) #14
  br label %17

17:                                               ; preds = %17, %13
  %18 = phi i64 [ 0, %13 ], [ %23, %17 ]
  %19 = getelementptr inbounds [7 x i8], ptr %0, i64 %18, i64 %14
  %20 = load i8, ptr %19, align 1, !tbaa !15
  %21 = sext i8 %20 to i32
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %21) #14
  %23 = add nuw nsw i64 %18, 1
  %24 = icmp eq i64 %23, 7
  br i1 %24, label %25, label %17, !llvm.loop !17

25:                                               ; preds = %17
  %26 = tail call i32 @putchar(i32 noundef 10) #14
  %27 = add nsw i64 %14, -1
  %28 = icmp eq i64 %14, 0
  br i1 %28, label %29, label %13, !llvm.loop !18

29:                                               ; preds = %25
  %30 = tail call i32 @putchar(i32 noundef 32) #14
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi i32 [ 0, %29 ], [ %34, %31 ]
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %32) #14
  %34 = add nuw nsw i32 %32, 1
  %35 = icmp eq i32 %34, 7
  br i1 %35, label %36, label %31, !llvm.loop !19

36:                                               ; preds = %31
  %37 = tail call i32 @putchar(i32 noundef 10) #14
  %38 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @place_piece(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2) #1 {
  %4 = icmp ugt i32 %0, 6
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %0) #14
  br label %22

7:                                                ; preds = %3
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [7 x i8], ptr %2, i64 %8, i64 6
  %10 = load i8, ptr %9, align 1, !tbaa !15
  %11 = icmp sgt i8 %10, 5
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  switch i32 %1, label %14 [
    i32 1, label %16
    i32 2, label %13
  ]

13:                                               ; preds = %12
  br label %16

14:                                               ; preds = %12
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  br label %22

16:                                               ; preds = %13, %12
  %17 = phi i8 [ 120, %13 ], [ 111, %12 ]
  %18 = sext i8 %10 to i64
  %19 = getelementptr inbounds [7 x i8], ptr %2, i64 %8, i64 %18
  store i8 %17, ptr %19, align 1, !tbaa !15
  %20 = load i8, ptr %9, align 1, !tbaa !15
  %21 = add i8 %20, 1
  store i8 %21, ptr %9, align 1, !tbaa !15
  br label %22

22:                                               ; preds = %16, %14, %7, %5
  %23 = phi i32 [ 1, %5 ], [ 0, %16 ], [ 1, %14 ], [ 1, %7 ]
  ret i32 %23
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @find_winner_p(ptr nocapture noundef readonly %0) #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %9, %2 ]
  %4 = phi i32 [ 0, %1 ], [ %8, %2 ]
  %5 = getelementptr inbounds [7 x i8], ptr %0, i64 %3, i64 6
  %6 = load i8, ptr %5, align 1, !tbaa !15
  %7 = sext i8 %6 to i32
  %8 = add nsw i32 %4, %7
  %9 = add nuw nsw i64 %3, 1
  %10 = icmp eq i64 %9, 7
  br i1 %10, label %11, label %2, !llvm.loop !20

11:                                               ; preds = %2
  %.lcssa1 = phi i32 [ %8, %2 ]
  %12 = icmp eq i32 %.lcssa1, 42
  br i1 %12, label %93, label %13

13:                                               ; preds = %31, %11
  %14 = phi i64 [ %32, %31 ], [ 0, %11 ]
  %15 = phi i64 [ %.lcssa, %31 ], [ 0, %11 ]
  %16 = mul nuw nsw i64 %14, 7
  br label %19

17:                                               ; preds = %31
  %.lcssa.lcssa = phi i64 [ %.lcssa, %31 ]
  %18 = load i64, ptr @C4VERT, align 8, !tbaa !7
  br label %39

19:                                               ; preds = %19, %13
  %20 = phi i64 [ 0, %13 ], [ %29, %19 ]
  %21 = phi i64 [ %15, %13 ], [ %28, %19 ]
  %22 = getelementptr inbounds [7 x i8], ptr %0, i64 %20, i64 %14
  %23 = load i8, ptr %22, align 1, !tbaa !15
  %24 = icmp eq i8 %23, 111
  %25 = add nuw nsw i64 %20, %16
  %26 = shl nuw nsw i64 1, %25
  %27 = select i1 %24, i64 %26, i64 0
  %28 = or i64 %27, %21
  %29 = add nuw nsw i64 %20, 1
  %30 = icmp eq i64 %29, 7
  br i1 %30, label %31, label %19, !llvm.loop !21

31:                                               ; preds = %19
  %.lcssa = phi i64 [ %28, %19 ]
  %32 = add nuw nsw i64 %14, 1
  %33 = icmp eq i64 %32, 6
  br i1 %33, label %17, label %13, !llvm.loop !22

34:                                               ; preds = %39
  %35 = add nuw nsw i64 %40, 1
  %36 = icmp eq i64 %35, 21
  br i1 %36, label %37, label %39, !llvm.loop !23

37:                                               ; preds = %34
  %38 = load i64, ptr @C4HORIZ, align 8, !tbaa !7
  br label %44

39:                                               ; preds = %34, %17
  %40 = phi i64 [ 0, %17 ], [ %35, %34 ]
  %41 = shl i64 %18, %40
  %42 = and i64 %41, %.lcssa.lcssa
  %43 = icmp eq i64 %42, %41
  br i1 %43, label %93, label %34

44:                                               ; preds = %58, %37
  %45 = phi i64 [ 0, %37 ], [ %59, %58 ]
  %46 = mul nuw nsw i64 %45, 7
  br label %52

47:                                               ; preds = %58
  %48 = load i64, ptr @C4UP_R, align 8, !tbaa !7
  br label %61

49:                                               ; preds = %52
  %50 = add nuw nsw i64 %53, 1
  %51 = icmp eq i64 %50, 4
  br i1 %51, label %58, label %52, !llvm.loop !24

52:                                               ; preds = %49, %44
  %53 = phi i64 [ 0, %44 ], [ %50, %49 ]
  %54 = add nuw nsw i64 %53, %46
  %55 = shl i64 %38, %54
  %56 = and i64 %55, %.lcssa.lcssa
  %57 = icmp eq i64 %56, %55
  br i1 %57, label %93, label %49

58:                                               ; preds = %49
  %59 = add nuw nsw i64 %45, 1
  %60 = icmp eq i64 %59, 6
  br i1 %60, label %47, label %44, !llvm.loop !25

61:                                               ; preds = %75, %47
  %62 = phi i64 [ 0, %47 ], [ %76, %75 ]
  %63 = mul nuw nsw i64 %62, 7
  br label %69

64:                                               ; preds = %75
  %65 = load i64, ptr @C4UP_L, align 8, !tbaa !7
  br label %78

66:                                               ; preds = %69
  %67 = add nuw nsw i64 %70, 1
  %68 = icmp eq i64 %67, 4
  br i1 %68, label %75, label %69, !llvm.loop !26

69:                                               ; preds = %66, %61
  %70 = phi i64 [ 0, %61 ], [ %67, %66 ]
  %71 = add nuw nsw i64 %70, %63
  %72 = shl i64 %48, %71
  %73 = and i64 %72, %.lcssa.lcssa
  %74 = icmp eq i64 %73, %72
  br i1 %74, label %93, label %66

75:                                               ; preds = %66
  %76 = add nuw nsw i64 %62, 1
  %77 = icmp eq i64 %76, 3
  br i1 %77, label %64, label %61, !llvm.loop !27

78:                                               ; preds = %90, %64
  %79 = phi i64 [ 0, %64 ], [ %91, %90 ]
  %80 = mul nuw nsw i64 %79, 7
  br label %84

81:                                               ; preds = %84
  %82 = add nuw nsw i64 %85, 1
  %83 = icmp eq i64 %82, 4
  br i1 %83, label %90, label %84, !llvm.loop !28

84:                                               ; preds = %81, %78
  %85 = phi i64 [ 0, %78 ], [ %82, %81 ]
  %86 = add nuw nsw i64 %85, %80
  %87 = shl i64 %65, %86
  %88 = and i64 %87, %.lcssa.lcssa
  %89 = icmp eq i64 %88, %87
  br i1 %89, label %93, label %81

90:                                               ; preds = %81
  %91 = add nuw nsw i64 %79, 1
  %92 = icmp eq i64 %91, 3
  br i1 %92, label %93, label %78, !llvm.loop !29

93:                                               ; preds = %90, %84, %69, %52, %39, %11
  %94 = phi i32 [ 2, %11 ], [ 1, %84 ], [ 0, %90 ], [ 1, %69 ], [ 1, %52 ], [ 1, %39 ]
  ret i32 %94
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @find_winner_c(ptr nocapture noundef readonly %0) #4 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %9, %2 ]
  %4 = phi i32 [ 0, %1 ], [ %8, %2 ]
  %5 = getelementptr inbounds [7 x i8], ptr %0, i64 %3, i64 6
  %6 = load i8, ptr %5, align 1, !tbaa !15
  %7 = sext i8 %6 to i32
  %8 = add nsw i32 %4, %7
  %9 = add nuw nsw i64 %3, 1
  %10 = icmp eq i64 %9, 7
  br i1 %10, label %11, label %2, !llvm.loop !20

11:                                               ; preds = %2
  %.lcssa1 = phi i32 [ %8, %2 ]
  %12 = icmp eq i32 %.lcssa1, 42
  br i1 %12, label %93, label %13

13:                                               ; preds = %31, %11
  %14 = phi i64 [ %32, %31 ], [ 0, %11 ]
  %15 = phi i64 [ %.lcssa, %31 ], [ 0, %11 ]
  %16 = mul nuw nsw i64 %14, 7
  br label %19

17:                                               ; preds = %31
  %.lcssa.lcssa = phi i64 [ %.lcssa, %31 ]
  %18 = load i64, ptr @C4VERT, align 8, !tbaa !7
  br label %39

19:                                               ; preds = %19, %13
  %20 = phi i64 [ 0, %13 ], [ %29, %19 ]
  %21 = phi i64 [ %15, %13 ], [ %28, %19 ]
  %22 = getelementptr inbounds [7 x i8], ptr %0, i64 %20, i64 %14
  %23 = load i8, ptr %22, align 1, !tbaa !15
  %24 = icmp eq i8 %23, 120
  %25 = add nuw nsw i64 %20, %16
  %26 = shl nuw nsw i64 1, %25
  %27 = select i1 %24, i64 %26, i64 0
  %28 = or i64 %27, %21
  %29 = add nuw nsw i64 %20, 1
  %30 = icmp eq i64 %29, 7
  br i1 %30, label %31, label %19, !llvm.loop !30

31:                                               ; preds = %19
  %.lcssa = phi i64 [ %28, %19 ]
  %32 = add nuw nsw i64 %14, 1
  %33 = icmp eq i64 %32, 6
  br i1 %33, label %17, label %13, !llvm.loop !31

34:                                               ; preds = %39
  %35 = add nuw nsw i64 %40, 1
  %36 = icmp eq i64 %35, 21
  br i1 %36, label %37, label %39, !llvm.loop !32

37:                                               ; preds = %34
  %38 = load i64, ptr @C4HORIZ, align 8, !tbaa !7
  br label %44

39:                                               ; preds = %34, %17
  %40 = phi i64 [ 0, %17 ], [ %35, %34 ]
  %41 = shl i64 %18, %40
  %42 = and i64 %41, %.lcssa.lcssa
  %43 = icmp eq i64 %42, %41
  br i1 %43, label %93, label %34

44:                                               ; preds = %58, %37
  %45 = phi i64 [ 0, %37 ], [ %59, %58 ]
  %46 = mul nuw nsw i64 %45, 7
  br label %52

47:                                               ; preds = %58
  %48 = load i64, ptr @C4UP_R, align 8, !tbaa !7
  br label %61

49:                                               ; preds = %52
  %50 = add nuw nsw i64 %53, 1
  %51 = icmp eq i64 %50, 4
  br i1 %51, label %58, label %52, !llvm.loop !33

52:                                               ; preds = %49, %44
  %53 = phi i64 [ 0, %44 ], [ %50, %49 ]
  %54 = add nuw nsw i64 %53, %46
  %55 = shl i64 %38, %54
  %56 = and i64 %55, %.lcssa.lcssa
  %57 = icmp eq i64 %56, %55
  br i1 %57, label %93, label %49

58:                                               ; preds = %49
  %59 = add nuw nsw i64 %45, 1
  %60 = icmp eq i64 %59, 6
  br i1 %60, label %47, label %44, !llvm.loop !34

61:                                               ; preds = %75, %47
  %62 = phi i64 [ 0, %47 ], [ %76, %75 ]
  %63 = mul nuw nsw i64 %62, 7
  br label %69

64:                                               ; preds = %75
  %65 = load i64, ptr @C4UP_L, align 8, !tbaa !7
  br label %78

66:                                               ; preds = %69
  %67 = add nuw nsw i64 %70, 1
  %68 = icmp eq i64 %67, 4
  br i1 %68, label %75, label %69, !llvm.loop !35

69:                                               ; preds = %66, %61
  %70 = phi i64 [ 0, %61 ], [ %67, %66 ]
  %71 = add nuw nsw i64 %70, %63
  %72 = shl i64 %48, %71
  %73 = and i64 %72, %.lcssa.lcssa
  %74 = icmp eq i64 %73, %72
  br i1 %74, label %93, label %66

75:                                               ; preds = %66
  %76 = add nuw nsw i64 %62, 1
  %77 = icmp eq i64 %76, 3
  br i1 %77, label %64, label %61, !llvm.loop !36

78:                                               ; preds = %90, %64
  %79 = phi i64 [ 0, %64 ], [ %91, %90 ]
  %80 = mul nuw nsw i64 %79, 7
  br label %84

81:                                               ; preds = %84
  %82 = add nuw nsw i64 %85, 1
  %83 = icmp eq i64 %82, 4
  br i1 %83, label %90, label %84, !llvm.loop !37

84:                                               ; preds = %81, %78
  %85 = phi i64 [ 0, %78 ], [ %82, %81 ]
  %86 = add nuw nsw i64 %85, %80
  %87 = shl i64 %65, %86
  %88 = and i64 %87, %.lcssa.lcssa
  %89 = icmp eq i64 %88, %87
  br i1 %89, label %93, label %81

90:                                               ; preds = %81
  %91 = add nuw nsw i64 %79, 1
  %92 = icmp eq i64 %91, 3
  br i1 %92, label %93, label %78, !llvm.loop !38

93:                                               ; preds = %90, %84, %69, %52, %39, %11
  %94 = phi i32 [ 2, %11 ], [ 1, %84 ], [ 0, %90 ], [ 1, %69 ], [ 1, %52 ], [ 1, %39 ]
  ret i32 %94
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @value(i64 noundef %0, i64 noundef %1) #5 {
  %3 = load i64, ptr @C4VERT, align 8
  %4 = load i64, ptr @C4HORIZ, align 8, !tbaa !7
  %5 = load i64, ptr @C4UP_R, align 8, !tbaa !7
  %6 = load i64, ptr @C4UP_L, align 8, !tbaa !7
  %7 = load i64, ptr @C3VERT, align 8, !tbaa !7
  %8 = load i64, ptr @C3HORIZ, align 8, !tbaa !7
  %9 = load i64, ptr @C3UP_R, align 8, !tbaa !7
  %10 = load i64, ptr @C3UP_L, align 8, !tbaa !7
  %11 = load i64, ptr @C2VERT, align 8, !tbaa !7
  %12 = load i64, ptr @C2HORIZ, align 8, !tbaa !7
  %13 = load i64, ptr @C2UP_R, align 8, !tbaa !7
  %14 = load i64, ptr @C2UP_L, align 8, !tbaa !7
  %15 = load i32, ptr @off, align 4
  %16 = sitofp i32 %15 to float
  %17 = fdiv float %16, 1.000000e+01
  br label %18

18:                                               ; preds = %254, %2
  %19 = phi i32 [ 0, %2 ], [ %.lcssa8.lcssa, %254 ]
  %20 = phi i1 [ true, %2 ], [ false, %254 ]
  %21 = select i1 %20, i64 %0, i64 %1
  %22 = select i1 %20, float -1.000000e+00, float 1.000000e+00
  %23 = fadd float %17, %22
  br label %24

24:                                               ; preds = %24, %18
  %25 = phi i64 [ 0, %18 ], [ %34, %24 ]
  %26 = phi i32 [ %19, %18 ], [ %33, %24 ]
  %27 = shl i64 %3, %25
  %28 = and i64 %27, %21
  %29 = icmp eq i64 %28, %27
  %30 = sitofp i32 %26 to float
  %31 = tail call float @llvm.fmuladd.f32(float %23, float 1.000000e+03, float %30)
  %32 = fptosi float %31 to i32
  %33 = select i1 %29, i32 %32, i32 %26
  %34 = add nuw nsw i64 %25, 1
  %35 = icmp eq i64 %34, 21
  br i1 %35, label %36, label %24, !llvm.loop !39

36:                                               ; preds = %53, %24
  %37 = phi i64 [ %54, %53 ], [ 0, %24 ]
  %38 = phi i32 [ %.lcssa, %53 ], [ %33, %24 ]
  %39 = mul nuw nsw i64 %37, 6
  br label %40

40:                                               ; preds = %40, %36
  %41 = phi i64 [ 0, %36 ], [ %51, %40 ]
  %42 = phi i32 [ %38, %36 ], [ %50, %40 ]
  %43 = add nuw nsw i64 %41, %39
  %44 = shl i64 %4, %43
  %45 = and i64 %44, %21
  %46 = icmp eq i64 %45, %44
  %47 = sitofp i32 %42 to float
  %48 = tail call float @llvm.fmuladd.f32(float %23, float 1.000000e+03, float %47)
  %49 = fptosi float %48 to i32
  %50 = select i1 %46, i32 %49, i32 %42
  %51 = add nuw nsw i64 %41, 1
  %52 = icmp eq i64 %51, 4
  br i1 %52, label %53, label %40, !llvm.loop !40

53:                                               ; preds = %40
  %.lcssa = phi i32 [ %50, %40 ]
  %54 = add nuw nsw i64 %37, 1
  %55 = icmp eq i64 %54, 6
  br i1 %55, label %56, label %36, !llvm.loop !41

56:                                               ; preds = %73, %53
  %57 = phi i64 [ %74, %73 ], [ 0, %53 ]
  %58 = phi i32 [ %.lcssa1, %73 ], [ %.lcssa, %53 ]
  %59 = mul nuw nsw i64 %57, 6
  br label %60

60:                                               ; preds = %60, %56
  %61 = phi i64 [ 0, %56 ], [ %71, %60 ]
  %62 = phi i32 [ %58, %56 ], [ %70, %60 ]
  %63 = add nuw nsw i64 %61, %59
  %64 = shl i64 %5, %63
  %65 = and i64 %64, %21
  %66 = icmp eq i64 %65, %64
  %67 = sitofp i32 %62 to float
  %68 = tail call float @llvm.fmuladd.f32(float %23, float 1.000000e+03, float %67)
  %69 = fptosi float %68 to i32
  %70 = select i1 %66, i32 %69, i32 %62
  %71 = add nuw nsw i64 %61, 1
  %72 = icmp eq i64 %71, 4
  br i1 %72, label %73, label %60, !llvm.loop !42

73:                                               ; preds = %60
  %.lcssa1 = phi i32 [ %70, %60 ]
  %74 = add nuw nsw i64 %57, 1
  %75 = icmp eq i64 %74, 3
  br i1 %75, label %76, label %56, !llvm.loop !43

76:                                               ; preds = %93, %73
  %77 = phi i64 [ %94, %93 ], [ 0, %73 ]
  %78 = phi i32 [ %.lcssa2, %93 ], [ %.lcssa1, %73 ]
  %79 = mul nuw nsw i64 %77, 6
  br label %80

80:                                               ; preds = %80, %76
  %81 = phi i64 [ 0, %76 ], [ %91, %80 ]
  %82 = phi i32 [ %78, %76 ], [ %90, %80 ]
  %83 = add nuw nsw i64 %81, %79
  %84 = shl i64 %6, %83
  %85 = and i64 %84, %21
  %86 = icmp eq i64 %85, %84
  %87 = sitofp i32 %82 to float
  %88 = tail call float @llvm.fmuladd.f32(float %23, float 1.000000e+03, float %87)
  %89 = fptosi float %88 to i32
  %90 = select i1 %86, i32 %89, i32 %82
  %91 = add nuw nsw i64 %81, 1
  %92 = icmp eq i64 %91, 4
  br i1 %92, label %93, label %80, !llvm.loop !44

93:                                               ; preds = %80
  %.lcssa2 = phi i32 [ %90, %80 ]
  %94 = add nuw nsw i64 %77, 1
  %95 = icmp eq i64 %94, 3
  br i1 %95, label %96, label %76, !llvm.loop !45

96:                                               ; preds = %93
  %.lcssa2.lcssa = phi i32 [ %.lcssa2, %93 ]
  %97 = select i1 %20, i64 %1, i64 %0
  br label %98

98:                                               ; preds = %112, %96
  %99 = phi i64 [ 0, %96 ], [ %114, %112 ]
  %100 = phi i32 [ %.lcssa2.lcssa, %96 ], [ %113, %112 ]
  %101 = shl i64 %7, %99
  %102 = and i64 %101, %21
  %103 = icmp eq i64 %102, %101
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = shl i64 %3, %99
  %106 = and i64 %105, %97
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = sitofp i32 %100 to float
  %110 = tail call float @llvm.fmuladd.f32(float %23, float 2.000000e+01, float %109)
  %111 = fptosi float %110 to i32
  br label %112

112:                                              ; preds = %108, %104, %98
  %113 = phi i32 [ %100, %104 ], [ %111, %108 ], [ %100, %98 ]
  %114 = add nuw nsw i64 %99, 1
  %115 = icmp eq i64 %114, 21
  br i1 %115, label %116, label %98, !llvm.loop !46

116:                                              ; preds = %133, %112
  %117 = phi i64 [ %134, %133 ], [ 0, %112 ]
  %118 = phi i32 [ %.lcssa3, %133 ], [ %113, %112 ]
  %119 = mul nuw nsw i64 %117, 6
  br label %120

120:                                              ; preds = %120, %116
  %121 = phi i64 [ 0, %116 ], [ %131, %120 ]
  %122 = phi i32 [ %118, %116 ], [ %130, %120 ]
  %123 = add nuw nsw i64 %121, %119
  %124 = shl i64 %8, %123
  %125 = and i64 %124, %21
  %126 = icmp eq i64 %125, %124
  %127 = sitofp i32 %122 to float
  %128 = tail call float @llvm.fmuladd.f32(float %23, float 2.000000e+01, float %127)
  %129 = fptosi float %128 to i32
  %130 = select i1 %126, i32 %129, i32 %122
  %131 = add nuw nsw i64 %121, 1
  %132 = icmp eq i64 %131, 5
  br i1 %132, label %133, label %120, !llvm.loop !47

133:                                              ; preds = %120
  %.lcssa3 = phi i32 [ %130, %120 ]
  %134 = add nuw nsw i64 %117, 1
  %135 = icmp eq i64 %134, 6
  br i1 %135, label %136, label %116, !llvm.loop !48

136:                                              ; preds = %153, %133
  %137 = phi i64 [ %154, %153 ], [ 0, %133 ]
  %138 = phi i32 [ %.lcssa4, %153 ], [ %.lcssa3, %133 ]
  %139 = mul nuw nsw i64 %137, 6
  br label %140

140:                                              ; preds = %140, %136
  %141 = phi i64 [ 0, %136 ], [ %151, %140 ]
  %142 = phi i32 [ %138, %136 ], [ %150, %140 ]
  %143 = add nuw nsw i64 %141, %139
  %144 = shl i64 %9, %143
  %145 = and i64 %144, %21
  %146 = icmp eq i64 %145, %144
  %147 = sitofp i32 %142 to float
  %148 = tail call float @llvm.fmuladd.f32(float %23, float 2.000000e+01, float %147)
  %149 = fptosi float %148 to i32
  %150 = select i1 %146, i32 %149, i32 %142
  %151 = add nuw nsw i64 %141, 1
  %152 = icmp eq i64 %151, 4
  br i1 %152, label %153, label %140, !llvm.loop !49

153:                                              ; preds = %140
  %.lcssa4 = phi i32 [ %150, %140 ]
  %154 = add nuw nsw i64 %137, 1
  %155 = icmp eq i64 %154, 3
  br i1 %155, label %156, label %136, !llvm.loop !50

156:                                              ; preds = %173, %153
  %157 = phi i64 [ %174, %173 ], [ 0, %153 ]
  %158 = phi i32 [ %.lcssa5, %173 ], [ %.lcssa4, %153 ]
  %159 = mul nuw nsw i64 %157, 6
  br label %160

160:                                              ; preds = %160, %156
  %161 = phi i64 [ 0, %156 ], [ %171, %160 ]
  %162 = phi i32 [ %158, %156 ], [ %170, %160 ]
  %163 = add nuw nsw i64 %161, %159
  %164 = shl i64 %10, %163
  %165 = and i64 %164, %21
  %166 = icmp eq i64 %165, %164
  %167 = sitofp i32 %162 to float
  %168 = tail call float @llvm.fmuladd.f32(float %23, float 2.000000e+01, float %167)
  %169 = fptosi float %168 to i32
  %170 = select i1 %166, i32 %169, i32 %162
  %171 = add nuw nsw i64 %161, 1
  %172 = icmp eq i64 %171, 4
  br i1 %172, label %173, label %160, !llvm.loop !51

173:                                              ; preds = %160
  %.lcssa5 = phi i32 [ %170, %160 ]
  %174 = add nuw nsw i64 %157, 1
  %175 = icmp eq i64 %174, 3
  br i1 %175, label %176, label %156, !llvm.loop !52

176:                                              ; preds = %190, %173
  %177 = phi i64 [ %192, %190 ], [ 0, %173 ]
  %178 = phi i32 [ %191, %190 ], [ %.lcssa5, %173 ]
  %179 = shl i64 %11, %177
  %180 = and i64 %179, %21
  %181 = icmp eq i64 %180, %179
  br i1 %181, label %182, label %190

182:                                              ; preds = %176
  %183 = shl i64 %3, %177
  %184 = and i64 %183, %97
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %182
  %187 = sitofp i32 %178 to float
  %188 = tail call float @llvm.fmuladd.f32(float %23, float 5.000000e+00, float %187)
  %189 = fptosi float %188 to i32
  br label %190

190:                                              ; preds = %186, %182, %176
  %191 = phi i32 [ %178, %182 ], [ %189, %186 ], [ %178, %176 ]
  %192 = add nuw nsw i64 %177, 1
  %193 = icmp eq i64 %192, 21
  br i1 %193, label %194, label %176, !llvm.loop !53

194:                                              ; preds = %211, %190
  %195 = phi i64 [ %212, %211 ], [ 0, %190 ]
  %196 = phi i32 [ %.lcssa6, %211 ], [ %191, %190 ]
  %197 = mul nuw nsw i64 %195, 6
  br label %198

198:                                              ; preds = %198, %194
  %199 = phi i64 [ 0, %194 ], [ %209, %198 ]
  %200 = phi i32 [ %196, %194 ], [ %208, %198 ]
  %201 = add nuw nsw i64 %199, %197
  %202 = shl i64 %12, %201
  %203 = and i64 %202, %21
  %204 = icmp eq i64 %203, %202
  %205 = sitofp i32 %200 to float
  %206 = tail call float @llvm.fmuladd.f32(float %23, float 5.000000e+00, float %205)
  %207 = fptosi float %206 to i32
  %208 = select i1 %204, i32 %207, i32 %200
  %209 = add nuw nsw i64 %199, 1
  %210 = icmp eq i64 %209, 6
  br i1 %210, label %211, label %198, !llvm.loop !54

211:                                              ; preds = %198
  %.lcssa6 = phi i32 [ %208, %198 ]
  %212 = add nuw nsw i64 %195, 1
  %213 = icmp eq i64 %212, 6
  br i1 %213, label %214, label %194, !llvm.loop !55

214:                                              ; preds = %231, %211
  %215 = phi i64 [ %232, %231 ], [ 0, %211 ]
  %216 = phi i32 [ %.lcssa7, %231 ], [ %.lcssa6, %211 ]
  %217 = mul nuw nsw i64 %215, 6
  br label %218

218:                                              ; preds = %218, %214
  %219 = phi i64 [ 0, %214 ], [ %229, %218 ]
  %220 = phi i32 [ %216, %214 ], [ %228, %218 ]
  %221 = add nuw nsw i64 %219, %217
  %222 = shl i64 %13, %221
  %223 = and i64 %222, %21
  %224 = icmp eq i64 %223, %222
  %225 = sitofp i32 %220 to float
  %226 = tail call float @llvm.fmuladd.f32(float %23, float 5.000000e+00, float %225)
  %227 = fptosi float %226 to i32
  %228 = select i1 %224, i32 %227, i32 %220
  %229 = add nuw nsw i64 %219, 1
  %230 = icmp eq i64 %229, 4
  br i1 %230, label %231, label %218, !llvm.loop !56

231:                                              ; preds = %218
  %.lcssa7 = phi i32 [ %228, %218 ]
  %232 = add nuw nsw i64 %215, 1
  %233 = icmp eq i64 %232, 3
  br i1 %233, label %234, label %214, !llvm.loop !57

234:                                              ; preds = %251, %231
  %235 = phi i64 [ %252, %251 ], [ 0, %231 ]
  %236 = phi i32 [ %.lcssa8, %251 ], [ %.lcssa7, %231 ]
  %237 = mul nuw nsw i64 %235, 6
  br label %238

238:                                              ; preds = %238, %234
  %239 = phi i64 [ 0, %234 ], [ %249, %238 ]
  %240 = phi i32 [ %236, %234 ], [ %248, %238 ]
  %241 = add nuw nsw i64 %239, %237
  %242 = shl i64 %14, %241
  %243 = and i64 %242, %21
  %244 = icmp eq i64 %243, %242
  %245 = sitofp i32 %240 to float
  %246 = tail call float @llvm.fmuladd.f32(float %23, float 5.000000e+00, float %245)
  %247 = fptosi float %246 to i32
  %248 = select i1 %244, i32 %247, i32 %240
  %249 = add nuw nsw i64 %239, 1
  %250 = icmp eq i64 %249, 4
  br i1 %250, label %251, label %238, !llvm.loop !58

251:                                              ; preds = %238
  %.lcssa8 = phi i32 [ %248, %238 ]
  %252 = add nuw nsw i64 %235, 1
  %253 = icmp eq i64 %252, 3
  br i1 %253, label %254, label %234, !llvm.loop !59

254:                                              ; preds = %251
  %.lcssa8.lcssa = phi i32 [ %.lcssa8, %251 ]
  br i1 %20, label %18, label %255, !llvm.loop !60

255:                                              ; preds = %254
  %.lcssa8.lcssa.lcssa = phi i32 [ %.lcssa8.lcssa, %254 ]
  ret i32 %.lcssa8.lcssa.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @think(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  br label %5

5:                                                ; preds = %21, %3
  %6 = phi i64 [ 0, %3 ], [ %22, %21 ]
  %7 = phi i64 [ 0, %3 ], [ %.lcssa1, %21 ]
  %8 = mul nuw nsw i64 %6, 7
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i64 [ 0, %5 ], [ %19, %9 ]
  %11 = phi i64 [ %7, %5 ], [ %18, %9 ]
  %12 = getelementptr inbounds [7 x i8], ptr %0, i64 %10, i64 %6
  %13 = load i8, ptr %12, align 1, !tbaa !15
  %14 = icmp eq i8 %13, 111
  %15 = add nuw nsw i64 %10, %8
  %16 = shl nuw i64 1, %15
  %17 = select i1 %14, i64 %16, i64 0
  %18 = or i64 %17, %11
  %19 = add nuw nsw i64 %10, 1
  %20 = icmp eq i64 %19, 7
  br i1 %20, label %21, label %9, !llvm.loop !61

21:                                               ; preds = %9
  %.lcssa1 = phi i64 [ %18, %9 ]
  %22 = add nuw nsw i64 %6, 1
  %23 = icmp eq i64 %22, 6
  br i1 %23, label %24, label %5, !llvm.loop !62

24:                                               ; preds = %40, %21
  %.lcssa1.lcssa = phi i64 [ %.lcssa1.lcssa, %40 ], [ %.lcssa1, %21 ]
  %25 = phi i64 [ %41, %40 ], [ 0, %21 ]
  %26 = phi i64 [ %.lcssa, %40 ], [ 0, %21 ]
  %27 = mul nuw nsw i64 %25, 7
  br label %28

28:                                               ; preds = %28, %24
  %29 = phi i64 [ 0, %24 ], [ %38, %28 ]
  %30 = phi i64 [ %26, %24 ], [ %37, %28 ]
  %31 = getelementptr inbounds [7 x i8], ptr %0, i64 %29, i64 %25
  %32 = load i8, ptr %31, align 1, !tbaa !15
  %33 = icmp eq i8 %32, 120
  %34 = add nuw nsw i64 %29, %27
  %35 = shl nuw i64 1, %34
  %36 = select i1 %33, i64 %35, i64 0
  %37 = or i64 %36, %30
  %38 = add nuw nsw i64 %29, 1
  %39 = icmp eq i64 %38, 7
  br i1 %39, label %40, label %28, !llvm.loop !63

40:                                               ; preds = %28
  %.lcssa = phi i64 [ %37, %28 ]
  %41 = add nuw nsw i64 %25, 1
  %42 = icmp eq i64 %41, 6
  br i1 %42, label %43, label %24, !llvm.loop !64

43:                                               ; preds = %40
  %.lcssa1.lcssa.lcssa = phi i64 [ %.lcssa1.lcssa, %40 ]
  %.lcssa.lcssa = phi i64 [ %.lcssa, %40 ]
  switch i32 %2, label %54 [
    i32 1, label %44
    i32 2, label %49
  ]

44:                                               ; preds = %43
  switch i32 %1, label %59 [
    i32 2, label %45
    i32 1, label %47
  ]

45:                                               ; preds = %44
  %46 = call i32 @minimax_comp_ab(i32 noundef 1, i64 noundef %.lcssa1.lcssa.lcssa, i64 noundef %.lcssa.lcssa, ptr noundef nonnull %4, i32 noundef -100000, i32 noundef 100000) #14
  br label %59

47:                                               ; preds = %44
  %48 = call i32 @minimax_player_ab(i32 noundef 1, i64 noundef %.lcssa1.lcssa.lcssa, i64 noundef %.lcssa.lcssa, ptr noundef nonnull %4, i32 noundef -100000, i32 noundef 100000) #14
  br label %59

49:                                               ; preds = %43
  switch i32 %1, label %59 [
    i32 2, label %50
    i32 1, label %52
  ]

50:                                               ; preds = %49
  %51 = call i32 @minimax_comp_ab2(i32 noundef 1, i64 noundef %.lcssa1.lcssa.lcssa, i64 noundef %.lcssa.lcssa, ptr noundef nonnull %4, i32 noundef 100000) #14
  br label %59

52:                                               ; preds = %49
  %53 = call i32 @minimax_player_ab2(i32 noundef 1, i64 noundef %.lcssa1.lcssa.lcssa, i64 noundef %.lcssa.lcssa, ptr noundef nonnull %4, i32 noundef -100000) #14
  br label %59

54:                                               ; preds = %43
  switch i32 %1, label %59 [
    i32 2, label %55
    i32 1, label %57
  ]

55:                                               ; preds = %54
  %56 = call i32 @minimax_comp(i32 noundef 1, i64 noundef %.lcssa1.lcssa.lcssa, i64 noundef %.lcssa.lcssa, ptr noundef nonnull %4) #14
  br label %59

57:                                               ; preds = %54
  %58 = call i32 @minimax_player(i32 noundef 1, i64 noundef %.lcssa1.lcssa.lcssa, i64 noundef %.lcssa.lcssa, ptr noundef nonnull %4) #14
  br label %59

59:                                               ; preds = %57, %55, %54, %52, %50, %49, %47, %45, %44
  %60 = load i32, ptr %4, align 4, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %60
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @minimax_comp_ab(i32 noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5) #9 {
  %7 = load i32, ptr @DEPTH, align 4, !tbaa !65
  %8 = icmp sgt i32 %7, %0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = icmp slt i32 %4, %5
  br i1 %10, label %11, label %45

11:                                               ; preds = %9
  %12 = or i64 %2, %1
  %13 = add nsw i32 %0, 1
  br label %16

14:                                               ; preds = %6
  %15 = tail call i32 @value(i64 noundef %1, i64 noundef %2) #14
  br label %48

16:                                               ; preds = %38, %11
  %17 = phi i32 [ 0, %11 ], [ %40, %38 ]
  %18 = phi i32 [ %4, %11 ], [ %39, %38 ]
  %19 = phi i32 [ 0, %11 ], [ %41, %38 ]
  br label %23

20:                                               ; preds = %23
  %21 = add nuw nsw i64 %24, 1
  %22 = icmp eq i64 %21, 6
  br i1 %22, label %38, label %23, !llvm.loop !67

23:                                               ; preds = %20, %16
  %24 = phi i64 [ 0, %16 ], [ %21, %20 ]
  %25 = trunc i64 %24 to i32
  %26 = mul i32 %25, 7
  %27 = add nsw i32 %26, %19
  %28 = zext i32 %27 to i64
  %29 = shl nuw i64 1, %28
  %30 = and i64 %29, %12
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %20

32:                                               ; preds = %23
  %.lcssa = phi i64 [ %29, %23 ]
  %33 = or i64 %.lcssa, %2
  %34 = tail call i32 @minimax_player_ab(i32 noundef %13, i64 noundef %1, i64 noundef %33, ptr noundef %3, i32 noundef %18, i32 noundef %5) #14
  %35 = icmp sgt i32 %34, %18
  %36 = tail call i32 @llvm.smax.i32(i32 %34, i32 %18)
  %37 = select i1 %35, i32 %19, i32 %17
  br label %38

38:                                               ; preds = %32, %20
  %39 = phi i32 [ %36, %32 ], [ %18, %20 ]
  %40 = phi i32 [ %37, %32 ], [ %17, %20 ]
  %41 = add nuw nsw i32 %19, 1
  %42 = icmp ult i32 %19, 6
  %43 = icmp slt i32 %39, %5
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %16, label %45, !llvm.loop !68

45:                                               ; preds = %38, %9
  %46 = phi i32 [ %4, %9 ], [ %39, %38 ]
  %47 = phi i32 [ 0, %9 ], [ %40, %38 ]
  store i32 %47, ptr %3, align 4, !tbaa !65
  br label %48

48:                                               ; preds = %45, %14
  %49 = phi i32 [ %15, %14 ], [ %46, %45 ]
  ret i32 %49
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @minimax_player_ab(i32 noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5) #9 {
  %7 = load i32, ptr @DEPTH, align 4, !tbaa !65
  %8 = icmp sgt i32 %7, %0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = icmp sgt i32 %5, %4
  br i1 %10, label %11, label %45

11:                                               ; preds = %9
  %12 = or i64 %2, %1
  %13 = add nsw i32 %0, 1
  br label %16

14:                                               ; preds = %6
  %15 = tail call i32 @value(i64 noundef %1, i64 noundef %2) #14
  br label %48

16:                                               ; preds = %38, %11
  %17 = phi i32 [ 0, %11 ], [ %40, %38 ]
  %18 = phi i32 [ %5, %11 ], [ %39, %38 ]
  %19 = phi i32 [ 0, %11 ], [ %41, %38 ]
  br label %23

20:                                               ; preds = %23
  %21 = add nuw nsw i64 %24, 1
  %22 = icmp eq i64 %21, 6
  br i1 %22, label %38, label %23, !llvm.loop !67

23:                                               ; preds = %20, %16
  %24 = phi i64 [ 0, %16 ], [ %21, %20 ]
  %25 = trunc i64 %24 to i32
  %26 = mul i32 %25, 7
  %27 = add nsw i32 %26, %19
  %28 = zext i32 %27 to i64
  %29 = shl nuw i64 1, %28
  %30 = and i64 %29, %12
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %20

32:                                               ; preds = %23
  %.lcssa = phi i64 [ %29, %23 ]
  %33 = or i64 %.lcssa, %1
  %34 = tail call i32 @minimax_comp_ab(i32 noundef %13, i64 noundef %33, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %18) #14
  %35 = icmp sgt i32 %34, %18
  %36 = tail call i32 @llvm.smin.i32(i32 %34, i32 %18)
  %37 = select i1 %35, i32 %17, i32 %19
  br label %38

38:                                               ; preds = %32, %20
  %39 = phi i32 [ %36, %32 ], [ %18, %20 ]
  %40 = phi i32 [ %37, %32 ], [ %17, %20 ]
  %41 = add nuw nsw i32 %19, 1
  %42 = icmp ult i32 %19, 6
  %43 = icmp sgt i32 %39, %4
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %16, label %45, !llvm.loop !69

45:                                               ; preds = %38, %9
  %46 = phi i32 [ %5, %9 ], [ %39, %38 ]
  %47 = phi i32 [ 0, %9 ], [ %40, %38 ]
  store i32 %47, ptr %3, align 4, !tbaa !65
  br label %48

48:                                               ; preds = %45, %14
  %49 = phi i32 [ %15, %14 ], [ %46, %45 ]
  ret i32 %49
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @minimax_comp_ab2(i32 noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #9 {
  %6 = load i32, ptr @DEPTH, align 4, !tbaa !65
  %7 = icmp sgt i32 %6, %0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = or i64 %2, %1
  %10 = add nsw i32 %0, 1
  br label %13

11:                                               ; preds = %5
  %12 = tail call i32 @value(i64 noundef %1, i64 noundef %2) #14
  br label %42

13:                                               ; preds = %36, %8
  %14 = phi i32 [ 0, %8 ], [ %38, %36 ]
  %15 = phi i32 [ -100000, %8 ], [ %37, %36 ]
  %16 = phi i32 [ 0, %8 ], [ %39, %36 ]
  br label %20

17:                                               ; preds = %20
  %18 = add nuw nsw i64 %21, 1
  %19 = icmp eq i64 %18, 6
  br i1 %19, label %36, label %20, !llvm.loop !67

20:                                               ; preds = %17, %13
  %21 = phi i64 [ 0, %13 ], [ %18, %17 ]
  %22 = trunc i64 %21 to i32
  %23 = mul i32 %22, 7
  %24 = add nsw i32 %23, %16
  %25 = zext i32 %24 to i64
  %26 = shl nuw i64 1, %25
  %27 = and i64 %26, %9
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %17

29:                                               ; preds = %20
  %.lcssa = phi i64 [ %26, %20 ]
  %30 = or i64 %.lcssa, %2
  %31 = tail call i32 @minimax_player_ab2(i32 noundef %10, i64 noundef %1, i64 noundef %30, ptr noundef %3, i32 noundef %15) #14
  %32 = icmp sgt i32 %31, %15
  %33 = tail call i32 @llvm.smax.i32(i32 %31, i32 %15)
  %34 = select i1 %32, i32 %16, i32 %14
  %35 = icmp sgt i32 %33, %4
  br i1 %35, label %42, label %36

36:                                               ; preds = %29, %17
  %37 = phi i32 [ %33, %29 ], [ %15, %17 ]
  %38 = phi i32 [ %34, %29 ], [ %14, %17 ]
  %39 = add nuw nsw i32 %16, 1
  %40 = icmp eq i32 %39, 7
  br i1 %40, label %41, label %13, !llvm.loop !70

41:                                               ; preds = %36
  %.lcssa3 = phi i32 [ %37, %36 ]
  %.lcssa2 = phi i32 [ %38, %36 ]
  store i32 %.lcssa2, ptr %3, align 4, !tbaa !65
  br label %42

42:                                               ; preds = %41, %29, %11
  %43 = phi i32 [ %12, %11 ], [ %.lcssa3, %41 ], [ %33, %29 ]
  ret i32 %43
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @minimax_player_ab2(i32 noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #9 {
  %6 = load i32, ptr @DEPTH, align 4, !tbaa !65
  %7 = icmp sgt i32 %6, %0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = or i64 %2, %1
  %10 = add nsw i32 %0, 1
  br label %13

11:                                               ; preds = %5
  %12 = tail call i32 @value(i64 noundef %1, i64 noundef %2) #14
  br label %42

13:                                               ; preds = %36, %8
  %14 = phi i32 [ 0, %8 ], [ %38, %36 ]
  %15 = phi i32 [ 100000, %8 ], [ %37, %36 ]
  %16 = phi i32 [ 0, %8 ], [ %39, %36 ]
  br label %20

17:                                               ; preds = %20
  %18 = add nuw nsw i64 %21, 1
  %19 = icmp eq i64 %18, 6
  br i1 %19, label %36, label %20, !llvm.loop !67

20:                                               ; preds = %17, %13
  %21 = phi i64 [ 0, %13 ], [ %18, %17 ]
  %22 = trunc i64 %21 to i32
  %23 = mul i32 %22, 7
  %24 = add nsw i32 %23, %16
  %25 = zext i32 %24 to i64
  %26 = shl nuw i64 1, %25
  %27 = and i64 %26, %9
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %17

29:                                               ; preds = %20
  %.lcssa = phi i64 [ %26, %20 ]
  %30 = or i64 %.lcssa, %1
  %31 = tail call i32 @minimax_comp_ab2(i32 noundef %10, i64 noundef %30, i64 noundef %2, ptr noundef %3, i32 noundef %15) #14
  %32 = icmp sgt i32 %31, %15
  %33 = tail call i32 @llvm.smin.i32(i32 %31, i32 %15)
  %34 = select i1 %32, i32 %14, i32 %16
  %35 = icmp slt i32 %33, %4
  br i1 %35, label %42, label %36

36:                                               ; preds = %29, %17
  %37 = phi i32 [ %33, %29 ], [ %15, %17 ]
  %38 = phi i32 [ %34, %29 ], [ %14, %17 ]
  %39 = add nuw nsw i32 %16, 1
  %40 = icmp eq i32 %39, 7
  br i1 %40, label %41, label %13, !llvm.loop !71

41:                                               ; preds = %36
  %.lcssa3 = phi i32 [ %37, %36 ]
  %.lcssa2 = phi i32 [ %38, %36 ]
  store i32 %.lcssa2, ptr %3, align 4, !tbaa !65
  br label %42

42:                                               ; preds = %41, %29, %11
  %43 = phi i32 [ %12, %11 ], [ %.lcssa3, %41 ], [ %33, %29 ]
  ret i32 %43
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @minimax_comp(i32 noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3) #9 {
  %5 = load i32, ptr @DEPTH, align 4, !tbaa !65
  %6 = icmp sgt i32 %5, %0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = or i64 %2, %1
  %9 = add nsw i32 %0, 1
  br label %12

10:                                               ; preds = %4
  %11 = tail call i32 @value(i64 noundef %1, i64 noundef %2) #14
  br label %40

12:                                               ; preds = %34, %7
  %13 = phi i32 [ 0, %7 ], [ %36, %34 ]
  %14 = phi i32 [ -100000, %7 ], [ %35, %34 ]
  %15 = phi i32 [ 0, %7 ], [ %37, %34 ]
  br label %19

16:                                               ; preds = %19
  %17 = add nuw nsw i64 %20, 1
  %18 = icmp eq i64 %17, 6
  br i1 %18, label %34, label %19, !llvm.loop !67

19:                                               ; preds = %16, %12
  %20 = phi i64 [ 0, %12 ], [ %17, %16 ]
  %21 = trunc i64 %20 to i32
  %22 = mul i32 %21, 7
  %23 = add nsw i32 %22, %15
  %24 = zext i32 %23 to i64
  %25 = shl nuw i64 1, %24
  %26 = and i64 %25, %8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %16

28:                                               ; preds = %19
  %.lcssa = phi i64 [ %25, %19 ]
  %29 = or i64 %.lcssa, %2
  %30 = tail call i32 @minimax_player(i32 noundef %9, i64 noundef %1, i64 noundef %29, ptr noundef %3) #14
  %31 = icmp sgt i32 %30, %14
  %32 = tail call i32 @llvm.smax.i32(i32 %30, i32 %14)
  %33 = select i1 %31, i32 %15, i32 %13
  br label %34

34:                                               ; preds = %28, %16
  %35 = phi i32 [ %32, %28 ], [ %14, %16 ]
  %36 = phi i32 [ %33, %28 ], [ %13, %16 ]
  %37 = add nuw nsw i32 %15, 1
  %38 = icmp eq i32 %37, 7
  br i1 %38, label %39, label %12, !llvm.loop !72

39:                                               ; preds = %34
  %.lcssa3 = phi i32 [ %35, %34 ]
  %.lcssa2 = phi i32 [ %36, %34 ]
  store i32 %.lcssa2, ptr %3, align 4, !tbaa !65
  br label %40

40:                                               ; preds = %39, %10
  %41 = phi i32 [ %11, %10 ], [ %.lcssa3, %39 ]
  ret i32 %41
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @minimax_player(i32 noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3) #9 {
  %5 = load i32, ptr @DEPTH, align 4, !tbaa !65
  %6 = icmp sgt i32 %5, %0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = or i64 %2, %1
  %9 = add nsw i32 %0, 1
  br label %12

10:                                               ; preds = %4
  %11 = tail call i32 @value(i64 noundef %1, i64 noundef %2) #14
  br label %40

12:                                               ; preds = %34, %7
  %13 = phi i32 [ 0, %7 ], [ %36, %34 ]
  %14 = phi i32 [ 100000, %7 ], [ %35, %34 ]
  %15 = phi i32 [ 0, %7 ], [ %37, %34 ]
  br label %19

16:                                               ; preds = %19
  %17 = add nuw nsw i64 %20, 1
  %18 = icmp eq i64 %17, 6
  br i1 %18, label %34, label %19, !llvm.loop !67

19:                                               ; preds = %16, %12
  %20 = phi i64 [ 0, %12 ], [ %17, %16 ]
  %21 = trunc i64 %20 to i32
  %22 = mul i32 %21, 7
  %23 = add nsw i32 %22, %15
  %24 = zext i32 %23 to i64
  %25 = shl nuw i64 1, %24
  %26 = and i64 %25, %8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %16

28:                                               ; preds = %19
  %.lcssa = phi i64 [ %25, %19 ]
  %29 = or i64 %.lcssa, %1
  %30 = tail call i32 @minimax_comp(i32 noundef %9, i64 noundef %29, i64 noundef %2, ptr noundef %3) #14
  %31 = icmp sgt i32 %30, %14
  %32 = tail call i32 @llvm.smin.i32(i32 %30, i32 %14)
  %33 = select i1 %31, i32 %13, i32 %15
  br label %34

34:                                               ; preds = %28, %16
  %35 = phi i32 [ %32, %28 ], [ %14, %16 ]
  %36 = phi i32 [ %33, %28 ], [ %13, %16 ]
  %37 = add nuw nsw i32 %15, 1
  %38 = icmp eq i32 %37, 7
  br i1 %38, label %39, label %12, !llvm.loop !73

39:                                               ; preds = %34
  %.lcssa3 = phi i32 [ %35, %34 ]
  %.lcssa2 = phi i32 [ %36, %34 ]
  store i32 %.lcssa2, ptr %3, align 4, !tbaa !65
  br label %40

40:                                               ; preds = %39, %10
  %41 = phi i32 [ %11, %10 ], [ %.lcssa3, %39 ]
  ret i32 %41
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = alloca [7 x [7 x i8]], align 16
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 49, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !tbaa !65
  %5 = load ptr, ptr @stderr, align 8, !tbaa !74
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #16
  %7 = load ptr, ptr @stderr, align 8, !tbaa !74
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #16
  %9 = getelementptr inbounds ptr, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  %11 = tail call noalias ptr @fopen(ptr noundef %10, ptr noundef nonnull @.str.10) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = tail call noalias ptr @fopen(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  tail call void @exit(i32 noundef 1) #17
  unreachable

18:                                               ; preds = %13, %2
  %19 = phi ptr [ %11, %2 ], [ %14, %13 ]
  %20 = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %19, ptr noundef nonnull @.str.13, ptr noundef nonnull @DEPTH) #18
  %21 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %19, ptr noundef nonnull @.str.13, ptr noundef nonnull %4) #18
  %22 = call i32 @fclose(ptr noundef nonnull %19) #14
  %23 = load i32, ptr @DEPTH, align 4, !tbaa !65
  %24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %23) #14
  %25 = load i32, ptr %4, align 4, !tbaa !65
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr @.str.17, ptr @.str.16
  %28 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef nonnull %27) #14
  %29 = load i32, ptr %4, align 4, !tbaa !65
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = call i32 @puts(ptr nonnull dereferenceable(1) @str.29)
  %33 = load i32, ptr %4, align 4, !tbaa !65
  br label %34

34:                                               ; preds = %31, %18
  %35 = phi i32 [ %33, %31 ], [ %29, %18 ]
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  br label %39

39:                                               ; preds = %37, %34
  call void @init_patterns() #14
  br label %40

40:                                               ; preds = %40, %39
  %41 = phi i64 [ 0, %39 ], [ %44, %40 ]
  %42 = mul nuw nsw i64 %41, 7
  %43 = getelementptr i8, ptr %3, i64 %42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %43, i8 46, i64 6, i1 false), !tbaa !15
  %44 = add nuw nsw i64 %41, 1
  %45 = icmp eq i64 %44, 7
  br i1 %45, label %46, label %40, !llvm.loop !76

46:                                               ; preds = %40
  %47 = getelementptr inbounds [7 x i8], ptr %3, i64 0, i64 6
  store i8 0, ptr %47, align 2, !tbaa !15
  %48 = getelementptr inbounds [7 x i8], ptr %3, i64 1, i64 6
  store i8 0, ptr %48, align 1, !tbaa !15
  %49 = getelementptr inbounds [7 x i8], ptr %3, i64 2, i64 6
  store i8 0, ptr %49, align 4, !tbaa !15
  %50 = getelementptr inbounds [7 x i8], ptr %3, i64 3, i64 6
  store i8 0, ptr %50, align 1, !tbaa !15
  %51 = getelementptr inbounds [7 x i8], ptr %3, i64 4, i64 6
  store i8 0, ptr %51, align 2, !tbaa !15
  %52 = getelementptr inbounds [7 x i8], ptr %3, i64 5, i64 6
  store i8 0, ptr %52, align 1, !tbaa !15
  %53 = getelementptr inbounds [7 x i8], ptr %3, i64 6, i64 6
  store i8 0, ptr %53, align 16, !tbaa !15
  br label %54

54:                                               ; preds = %59, %46
  call void @print_board(ptr noundef nonnull %3) #14
  %55 = call i32 @find_winner_p(ptr noundef nonnull %3) #14, !range !77
  switch i32 %55, label %71 [
    i32 0, label %56
    i32 1, label %66
  ]

56:                                               ; preds = %54
  %57 = call i32 @find_winner_c(ptr noundef nonnull %3) #14, !range !77
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load i32, ptr %4, align 4, !tbaa !65
  %61 = call i32 @think(ptr noundef nonnull %3, i32 noundef 1, i32 noundef %60) #14
  %62 = call i32 @place_piece(i32 noundef %61, i32 noundef 1, ptr noundef nonnull %3) #14, !range !78
  %63 = load i32, ptr %4, align 4, !tbaa !65
  %64 = call i32 @think(ptr noundef nonnull %3, i32 noundef 2, i32 noundef %63) #14
  %65 = call i32 @place_piece(i32 noundef %64, i32 noundef 2, ptr noundef nonnull %3) #14, !range !78
  br label %54, !llvm.loop !79

66:                                               ; preds = %54
  %67 = call i32 @find_winner_c(ptr noundef nonnull %3) #14, !range !77
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  br label %71

71:                                               ; preds = %69, %66, %56, %54
  %72 = call i32 @find_winner_c(ptr noundef nonnull %3) #14, !range !77
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = call i32 @find_winner_p(ptr noundef nonnull %3) #14, !range !77
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 @puts(ptr nonnull dereferenceable(1) @str.26)
  br label %79

79:                                               ; preds = %77, %74, %71
  %80 = call i32 @find_winner_p(ptr noundef nonnull %3) #14, !range !77
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = call i32 @find_winner_c(ptr noundef nonnull %3) #14, !range !77
  %84 = icmp ne i32 %83, 1
  %85 = icmp eq i32 %80, 0
  %86 = or i1 %85, %84
  br i1 %86, label %89, label %87

87:                                               ; preds = %82, %79
  %88 = call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  br label %89

89:                                               ; preds = %87, %82
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 49, ptr nonnull %3) #15
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { cold optsize }
attributes #17 = { noreturn nounwind optsize }
attributes #18 = { nounwind optsize }

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
!8 = !{!"long long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = !{!9, !9, i64 0}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12}
!50 = distinct !{!50, !12}
!51 = distinct !{!51, !12}
!52 = distinct !{!52, !12}
!53 = distinct !{!53, !12}
!54 = distinct !{!54, !12}
!55 = distinct !{!55, !12}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = !{!66, !66, i64 0}
!66 = !{!"int", !9, i64 0}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !12}
!73 = distinct !{!73, !12}
!74 = !{!75, !75, i64 0}
!75 = !{!"any pointer", !9, i64 0}
!76 = distinct !{!76, !12}
!77 = !{i32 0, i32 3}
!78 = !{i32 0, i32 2}
!79 = distinct !{!79, !12}
