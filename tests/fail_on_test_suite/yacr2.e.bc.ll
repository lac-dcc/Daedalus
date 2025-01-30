; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/Ptrdist/yacr2/yacr2.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._nodeHCGType = type { ptr, i64, i64 }
%struct._nodeVCGType = type { ptr, i64, i64, i64, ptr, i64, i64, i64 }
%struct._constraintVCGType = type { i64, i64, i64, i64 }

@costMatrix = internal global ptr null, align 8
@tracksNoHCV = internal global ptr null, align 8
@tracksAssign = internal global ptr null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%u%u%u\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\09Channel file description invalid at line %d.\0A\00", align 1
@DENSITY = internal global ptr null, align 8
@CROSSING = internal global ptr null, align 8
@channelDensity = internal global i64 0, align 8
@channelDensityColumn = internal global i64 0, align 8
@str.10 = private unnamed_addr constant [30 x i8] c"\09Channel description invalid.\00", align 1
@str.11 = private unnamed_addr constant [29 x i8] c"\09Channel has null dimension.\00", align 1
@str.19 = private unnamed_addr constant [32 x i8] c"\09Channel file cannot be closed.\00", align 1
@str.21 = private unnamed_addr constant [33 x i8] c"\09Incorrect number of specifiers.\00", align 1
@str.23 = private unnamed_addr constant [29 x i8] c"\09Column number out of range.\00", align 1
@str.24 = private unnamed_addr constant [7 x i8] c"Error:\00", align 1
@str.25 = private unnamed_addr constant [32 x i8] c"\09Channel file cannot be opened.\00", align 1
@HCG = internal global ptr null, align 8
@storageRootHCG = internal global ptr null, align 8
@storageHCG = internal global ptr null, align 8
@storageLimitHCG = internal global i64 0, align 8
@channelTracksCopy = internal global i64 0, align 8
@netsAssignCopy = internal global ptr null, align 8
@.str.23 = private unnamed_addr constant [56 x i8] c"Assignment could not route %d columns, trying maze1...\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Maze1 could not route %d columns, trying maze2...\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Maze2 could not route %d columns, trying maze3...\0A\00", align 1
@.str.3.24 = private unnamed_addr constant [53 x i8] c"Maze3 could not route %d columns, adding a track...\0A\00", align 1
@horzPlane = internal unnamed_addr global ptr null, align 8
@vertPlane = internal unnamed_addr global ptr null, align 8
@viaPlane = internal unnamed_addr global ptr null, align 8
@mazeRoute = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [42 x i8] c"unable to allocate plane allocation maps\0A\00", align 1
@.str.1.32 = private unnamed_addr constant [12 x i8] c"           \00", align 1
@.str.2.33 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.4.34 = private unnamed_addr constant [7 x i8] c"%%%c%%\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Track %3d: \00", align 1
@FIRST = internal global ptr null, align 8
@LAST = internal global ptr null, align 8
@netsAssign = internal global ptr null, align 8
@channelFile = internal global ptr null, align 8
@str = private unnamed_addr constant [26 x i8] c"\0AUsage: yacr2 <filename>\0A\00", align 1
@channelNets = internal global i64 0, align 8
@VCG = internal global ptr null, align 8
@storageRootVCG = internal global ptr null, align 8
@storageVCG = internal global ptr null, align 8
@storageLimitVCG = internal global i64 0, align 8
@SCC = internal global ptr null, align 8
@perSCC = internal global ptr null, align 8
@removeVCG = internal global ptr null, align 8
@channelColumns = internal global i64 0, align 8
@TOP = internal global ptr null, align 8
@BOT = internal global ptr null, align 8
@totalSCC = internal global i64 0, align 8
@removeTotalVCG = internal global i64 0, align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"*** VC's removed (%d) ***\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@cardBotNotPref = internal global i64 0, align 8
@channelTracks = internal global i64 0, align 8
@tracksBotNotPref = internal global ptr null, align 8
@cardTopNotPref = internal global i64 0, align 8
@tracksTopNotPref = internal global ptr null, align 8
@tracksNotPref = internal global ptr null, align 8
@cardNotPref = internal global i64 0, align 8
@str.11.51 = private unnamed_addr constant [26 x i8] c"\0A*** Input is cyclic! ***\00", align 1
@str.12 = private unnamed_addr constant [27 x i8] c"\0A*** Input is acyclic! ***\00", align 1

; Function Attrs: nofree nounwind optsize memory(readwrite, argmem: write) uwtable
define internal void @AllocAssign() #0 {
  %1 = load i64, ptr @channelNets, align 8, !tbaa !7
  %2 = shl i64 %1, 3
  %3 = add i64 %2, 8
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #20
  store ptr %4, ptr @costMatrix, align 8, !tbaa !11
  %5 = icmp eq i64 %1, 0
  %6 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %7 = shl i64 %6, 3
  %8 = add i64 %7, 16
  br i1 %5, label %16, label %9

9:                                                ; preds = %9, %0
  %10 = phi i64 [ %14, %9 ], [ 1, %0 ]
  %11 = tail call noalias ptr @malloc(i64 noundef %8) #20
  %12 = load ptr, ptr @costMatrix, align 8, !tbaa !11
  %13 = getelementptr inbounds ptr, ptr %12, i64 %10
  store ptr %11, ptr %13, align 8, !tbaa !11
  %14 = add i64 %10, 1
  %15 = icmp ugt i64 %14, %1
  br i1 %15, label %16, label %9, !llvm.loop !13

16:                                               ; preds = %9, %0
  %17 = tail call noalias ptr @malloc(i64 noundef %8) #20
  store ptr %17, ptr @tracksNotPref, align 8, !tbaa !11
  %18 = tail call noalias ptr @malloc(i64 noundef %8) #20
  store ptr %18, ptr @tracksTopNotPref, align 8, !tbaa !11
  %19 = tail call noalias ptr @malloc(i64 noundef %8) #20
  store ptr %19, ptr @tracksBotNotPref, align 8, !tbaa !11
  %20 = tail call noalias ptr @malloc(i64 noundef %8) #20
  store ptr %20, ptr @tracksNoHCV, align 8, !tbaa !11
  %21 = tail call noalias ptr @malloc(i64 noundef %8) #20
  store ptr %21, ptr @tracksAssign, align 8, !tbaa !11
  %22 = tail call noalias ptr @malloc(i64 noundef %3) #20
  store ptr %22, ptr @netsAssign, align 8, !tbaa !11
  %23 = tail call noalias ptr @malloc(i64 noundef %3) #20
  store ptr %23, ptr @netsAssignCopy, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal void @FreeAssign() #2 {
  %1 = load i64, ptr @channelNets, align 8, !tbaa !7
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %11, label %3

3:                                                ; preds = %3, %0
  %4 = phi i64 [ %8, %3 ], [ 1, %0 ]
  %5 = load ptr, ptr @costMatrix, align 8, !tbaa !11
  %6 = getelementptr inbounds ptr, ptr %5, i64 %4
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  tail call void @free(ptr noundef %7) #21
  %8 = add i64 %4, 1
  %9 = load i64, ptr @channelNets, align 8, !tbaa !7
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %3, !llvm.loop !15

11:                                               ; preds = %3, %0
  %12 = load ptr, ptr @costMatrix, align 8, !tbaa !11
  tail call void @free(ptr noundef %12) #21
  %13 = load ptr, ptr @tracksNotPref, align 8, !tbaa !11
  tail call void @free(ptr noundef %13) #21
  %14 = load ptr, ptr @tracksTopNotPref, align 8, !tbaa !11
  tail call void @free(ptr noundef %14) #21
  %15 = load ptr, ptr @tracksBotNotPref, align 8, !tbaa !11
  tail call void @free(ptr noundef %15) #21
  %16 = load ptr, ptr @tracksNoHCV, align 8, !tbaa !11
  tail call void @free(ptr noundef %16) #21
  %17 = load ptr, ptr @tracksAssign, align 8, !tbaa !11
  tail call void @free(ptr noundef %17) #21
  %18 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  tail call void @free(ptr noundef %18) #21
  %19 = load ptr, ptr @netsAssignCopy, align 8, !tbaa !11
  tail call void @free(ptr noundef %19) #21
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal void @NetsAssign() #2 {
  %1 = load i64, ptr @channelNets, align 8, !tbaa !7
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi i64 [ 1, %3 ], [ %8, %5 ]
  %7 = getelementptr inbounds i64, ptr %4, i64 %6
  store i64 0, ptr %7, align 8, !tbaa !7
  %8 = add i64 %6, 1
  %9 = load i64, ptr @channelNets, align 8, !tbaa !7
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %5, !llvm.loop !16

11:                                               ; preds = %5, %0
  tail call void @MaxNetsAssign() #22
  tail call void @LeftNetsAssign() #22
  tail call void @RightNetsAssign() #22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @MaxNetsAssign() #2 {
  %1 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #23
  %2 = load i64, ptr @channelNets, align 8, !tbaa !7
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %44, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @FIRST, align 8, !tbaa !11
  %6 = load ptr, ptr @LAST, align 8
  %7 = load ptr, ptr @CROSSING, align 8
  br label %10

8:                                                ; preds = %26
  %.lcssa = phi i64 [ %27, %26 ]
  %9 = icmp eq i64 %.lcssa, 0
  br i1 %9, label %44, label %31

10:                                               ; preds = %26, %4
  %11 = phi i64 [ 0, %4 ], [ %27, %26 ]
  %12 = phi i64 [ 1, %4 ], [ %28, %26 ]
  %13 = getelementptr inbounds i64, ptr %5, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !7
  %15 = load i64, ptr @channelDensityColumn, align 8, !tbaa !7
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds i64, ptr %6, i64 %12
  %19 = load i64, ptr %18, align 8, !tbaa !7
  %20 = icmp ult i64 %19, %15
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds i64, ptr %7, i64 %12
  store i64 1, ptr %22, align 8, !tbaa !7
  %23 = add i64 %11, 1
  br label %26

24:                                               ; preds = %17, %10
  %25 = getelementptr inbounds i64, ptr %7, i64 %12
  store i64 0, ptr %25, align 8, !tbaa !7
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi i64 [ %23, %21 ], [ %11, %24 ]
  %28 = add i64 %12, 1
  %29 = load i64, ptr @channelNets, align 8, !tbaa !7
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %8, label %10, !llvm.loop !17

31:                                               ; preds = %31, %8
  %32 = phi i64 [ %42, %31 ], [ %.lcssa, %8 ]
  %33 = load ptr, ptr @VCG, align 8, !tbaa !11
  %34 = load ptr, ptr @HCG, align 8, !tbaa !11
  %35 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  %36 = load ptr, ptr @CROSSING, align 8, !tbaa !11
  call void @Select(ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef nonnull %1, ptr noundef %36) #22
  %37 = load ptr, ptr @VCG, align 8, !tbaa !11
  %38 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  %39 = load i64, ptr %1, align 8, !tbaa !7
  tail call void @Assign(ptr noundef %37, ptr noundef %38, i64 noundef %39) #22
  %40 = load ptr, ptr @CROSSING, align 8, !tbaa !11
  %41 = getelementptr inbounds i64, ptr %40, i64 %39
  store i64 0, ptr %41, align 8, !tbaa !7
  %42 = add i64 %32, -1
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %31, !llvm.loop !18

44:                                               ; preds = %31, %8, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #23
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @LeftNetsAssign() #2 {
  %1 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #23
  %2 = load i64, ptr @channelNets, align 8, !tbaa !7
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @CROSSING, align 8, !tbaa !11
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ 1, %4 ], [ %9, %6 ]
  %8 = getelementptr inbounds i64, ptr %5, i64 %7
  store i64 0, ptr %8, align 8, !tbaa !7
  %9 = add i64 %7, 1
  %10 = load i64, ptr @channelNets, align 8, !tbaa !7
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %12, label %6, !llvm.loop !19

12:                                               ; preds = %6, %0
  %13 = load i64, ptr @channelDensityColumn, align 8, !tbaa !7
  %14 = add i64 %13, -1
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %88, label %16

16:                                               ; preds = %84, %12
  %17 = phi i64 [ %86, %84 ], [ %14, %12 ]
  %18 = phi i64 [ %85, %84 ], [ 0, %12 ]
  %19 = load ptr, ptr @TOP, align 8, !tbaa !11
  %20 = getelementptr inbounds i64, ptr %19, i64 %17
  %21 = load i64, ptr %20, align 8, !tbaa !7
  %22 = load ptr, ptr @BOT, align 8, !tbaa !11
  %23 = getelementptr inbounds i64, ptr %22, i64 %17
  %24 = load i64, ptr %23, align 8, !tbaa !7
  %25 = icmp eq i64 %21, %24
  %26 = icmp eq i64 %21, 0
  br i1 %25, label %45, label %27

27:                                               ; preds = %16
  br i1 %26, label %37, label %28

28:                                               ; preds = %27
  %29 = load ptr, ptr @LAST, align 8, !tbaa !11
  %30 = getelementptr inbounds i64, ptr %29, i64 %21
  %31 = load i64, ptr %30, align 8, !tbaa !7
  %32 = icmp eq i64 %31, %17
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load ptr, ptr @CROSSING, align 8, !tbaa !11
  %35 = getelementptr inbounds i64, ptr %34, i64 %21
  store i64 1, ptr %35, align 8, !tbaa !7
  %36 = add i64 %18, 1
  br label %37

37:                                               ; preds = %33, %28, %27
  %38 = phi i64 [ %36, %33 ], [ %18, %28 ], [ %18, %27 ]
  %39 = icmp eq i64 %24, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr @LAST, align 8, !tbaa !11
  %42 = getelementptr inbounds i64, ptr %41, i64 %24
  %43 = load i64, ptr %42, align 8, !tbaa !7
  %44 = icmp eq i64 %43, %17
  br i1 %44, label %51, label %57

45:                                               ; preds = %16
  br i1 %26, label %57, label %46

46:                                               ; preds = %45
  %47 = load ptr, ptr @LAST, align 8, !tbaa !11
  %48 = getelementptr inbounds i64, ptr %47, i64 %21
  %49 = load i64, ptr %48, align 8, !tbaa !7
  %50 = icmp eq i64 %49, %17
  br i1 %50, label %51, label %57

51:                                               ; preds = %46, %40
  %52 = phi i64 [ %24, %40 ], [ %21, %46 ]
  %53 = phi i64 [ %38, %40 ], [ %18, %46 ]
  %54 = load ptr, ptr @CROSSING, align 8, !tbaa !11
  %55 = getelementptr inbounds i64, ptr %54, i64 %52
  store i64 1, ptr %55, align 8, !tbaa !7
  %56 = add i64 %53, 1
  br label %57

57:                                               ; preds = %51, %46, %45, %40, %37
  %58 = phi i64 [ %38, %40 ], [ %38, %37 ], [ %18, %46 ], [ %18, %45 ], [ %56, %51 ]
  %59 = load ptr, ptr @FIRST, align 8, !tbaa !11
  %60 = getelementptr inbounds i64, ptr %59, i64 %21
  %61 = load i64, ptr %60, align 8, !tbaa !7
  %62 = icmp eq i64 %61, %17
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds i64, ptr %59, i64 %24
  %65 = load i64, ptr %64, align 8, !tbaa !7
  %66 = icmp eq i64 %65, %17
  br i1 %66, label %67, label %84

67:                                               ; preds = %63, %57
  %68 = icmp eq i64 %58, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %67
  %70 = load ptr, ptr @CROSSING, align 8, !tbaa !11
  br label %71

71:                                               ; preds = %71, %69
  %72 = phi ptr [ %80, %71 ], [ %70, %69 ]
  %73 = phi i64 [ %82, %71 ], [ %58, %69 ]
  %74 = load ptr, ptr @VCG, align 8, !tbaa !11
  %75 = load ptr, ptr @HCG, align 8, !tbaa !11
  %76 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  call void @Select(ptr noundef %74, ptr noundef %75, ptr noundef %76, ptr noundef nonnull %1, ptr noundef %72) #22
  %77 = load ptr, ptr @VCG, align 8, !tbaa !11
  %78 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  %79 = load i64, ptr %1, align 8, !tbaa !7
  tail call void @Assign(ptr noundef %77, ptr noundef %78, i64 noundef %79) #22
  %80 = load ptr, ptr @CROSSING, align 8, !tbaa !11
  %81 = getelementptr inbounds i64, ptr %80, i64 %79
  store i64 0, ptr %81, align 8, !tbaa !7
  %82 = add i64 %73, -1
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %71, !llvm.loop !20

84:                                               ; preds = %71, %67, %63
  %85 = phi i64 [ %58, %63 ], [ 0, %67 ], [ 0, %71 ]
  %86 = add i64 %17, -1
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %16, !llvm.loop !21

88:                                               ; preds = %84, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #23
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @RightNetsAssign() #2 {
  %1 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #23
  %2 = load i64, ptr @channelNets, align 8, !tbaa !7
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @CROSSING, align 8, !tbaa !11
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ 1, %4 ], [ %9, %6 ]
  %8 = getelementptr inbounds i64, ptr %5, i64 %7
  store i64 0, ptr %8, align 8, !tbaa !7
  %9 = add i64 %7, 1
  %10 = load i64, ptr @channelNets, align 8, !tbaa !7
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %12, label %6, !llvm.loop !22

12:                                               ; preds = %6, %0
  %13 = load i64, ptr @channelDensityColumn, align 8, !tbaa !7
  %14 = add i64 %13, 1
  %15 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %90, label %17

17:                                               ; preds = %85, %12
  %18 = phi i64 [ %87, %85 ], [ %14, %12 ]
  %19 = phi i64 [ %86, %85 ], [ 0, %12 ]
  %20 = load ptr, ptr @TOP, align 8, !tbaa !11
  %21 = getelementptr inbounds i64, ptr %20, i64 %18
  %22 = load i64, ptr %21, align 8, !tbaa !7
  %23 = load ptr, ptr @BOT, align 8, !tbaa !11
  %24 = getelementptr inbounds i64, ptr %23, i64 %18
  %25 = load i64, ptr %24, align 8, !tbaa !7
  %26 = icmp eq i64 %22, %25
  %27 = icmp eq i64 %22, 0
  br i1 %26, label %46, label %28

28:                                               ; preds = %17
  br i1 %27, label %38, label %29

29:                                               ; preds = %28
  %30 = load ptr, ptr @FIRST, align 8, !tbaa !11
  %31 = getelementptr inbounds i64, ptr %30, i64 %22
  %32 = load i64, ptr %31, align 8, !tbaa !7
  %33 = icmp eq i64 %32, %18
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load ptr, ptr @CROSSING, align 8, !tbaa !11
  %36 = getelementptr inbounds i64, ptr %35, i64 %22
  store i64 1, ptr %36, align 8, !tbaa !7
  %37 = add i64 %19, 1
  br label %38

38:                                               ; preds = %34, %29, %28
  %39 = phi i64 [ %37, %34 ], [ %19, %29 ], [ %19, %28 ]
  %40 = icmp eq i64 %25, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr @FIRST, align 8, !tbaa !11
  %43 = getelementptr inbounds i64, ptr %42, i64 %25
  %44 = load i64, ptr %43, align 8, !tbaa !7
  %45 = icmp eq i64 %44, %18
  br i1 %45, label %52, label %58

46:                                               ; preds = %17
  br i1 %27, label %58, label %47

47:                                               ; preds = %46
  %48 = load ptr, ptr @FIRST, align 8, !tbaa !11
  %49 = getelementptr inbounds i64, ptr %48, i64 %22
  %50 = load i64, ptr %49, align 8, !tbaa !7
  %51 = icmp eq i64 %50, %18
  br i1 %51, label %52, label %58

52:                                               ; preds = %47, %41
  %53 = phi i64 [ %25, %41 ], [ %22, %47 ]
  %54 = phi i64 [ %39, %41 ], [ %19, %47 ]
  %55 = load ptr, ptr @CROSSING, align 8, !tbaa !11
  %56 = getelementptr inbounds i64, ptr %55, i64 %53
  store i64 1, ptr %56, align 8, !tbaa !7
  %57 = add i64 %54, 1
  br label %58

58:                                               ; preds = %52, %47, %46, %41, %38
  %59 = phi i64 [ %39, %41 ], [ %39, %38 ], [ %19, %47 ], [ %19, %46 ], [ %57, %52 ]
  %60 = load ptr, ptr @LAST, align 8, !tbaa !11
  %61 = getelementptr inbounds i64, ptr %60, i64 %22
  %62 = load i64, ptr %61, align 8, !tbaa !7
  %63 = icmp eq i64 %62, %18
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds i64, ptr %60, i64 %25
  %66 = load i64, ptr %65, align 8, !tbaa !7
  %67 = icmp eq i64 %66, %18
  br i1 %67, label %68, label %85

68:                                               ; preds = %64, %58
  %69 = icmp eq i64 %59, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %68
  %71 = load ptr, ptr @CROSSING, align 8, !tbaa !11
  br label %72

72:                                               ; preds = %72, %70
  %73 = phi ptr [ %81, %72 ], [ %71, %70 ]
  %74 = phi i64 [ %83, %72 ], [ %59, %70 ]
  %75 = load ptr, ptr @VCG, align 8, !tbaa !11
  %76 = load ptr, ptr @HCG, align 8, !tbaa !11
  %77 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  call void @Select(ptr noundef %75, ptr noundef %76, ptr noundef %77, ptr noundef nonnull %1, ptr noundef %73) #22
  %78 = load ptr, ptr @VCG, align 8, !tbaa !11
  %79 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  %80 = load i64, ptr %1, align 8, !tbaa !7
  tail call void @Assign(ptr noundef %78, ptr noundef %79, i64 noundef %80) #22
  %81 = load ptr, ptr @CROSSING, align 8, !tbaa !11
  %82 = getelementptr inbounds i64, ptr %81, i64 %80
  store i64 0, ptr %82, align 8, !tbaa !7
  %83 = add i64 %74, -1
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %72, !llvm.loop !23

85:                                               ; preds = %72, %68, %64
  %86 = phi i64 [ %59, %64 ], [ 0, %68 ], [ 0, %72 ]
  %87 = add i64 %18, 1
  %88 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %89 = icmp ugt i64 %87, %88
  br i1 %89, label %90, label %17, !llvm.loop !24

90:                                               ; preds = %85, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind optsize uwtable
define internal void @Select(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4) #2 {
  tail call void @BuildCostMatrix(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %4) #22
  %6 = load i64, ptr @channelNets, align 8, !tbaa !7
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %44, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @costMatrix, align 8
  %10 = load i64, ptr @channelTracks, align 8
  %11 = icmp eq i64 %10, 0
  %12 = add i64 %10, 1
  %13 = tail call i64 @llvm.umax.i64(i64 %12, i64 2)
  %14 = add i64 %6, 1
  %15 = tail call i64 @llvm.umax.i64(i64 %14, i64 2)
  br label %16

16:                                               ; preds = %39, %8
  %17 = phi i64 [ -1, %8 ], [ %41, %39 ]
  %18 = phi i64 [ 1, %8 ], [ %42, %39 ]
  %19 = phi i64 [ 0, %8 ], [ %40, %39 ]
  %20 = getelementptr inbounds i64, ptr %4, i64 %18
  %21 = load i64, ptr %20, align 8, !tbaa !7
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds ptr, ptr %9, i64 %18
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  br i1 %11, label %34, label %26

26:                                               ; preds = %26, %23
  %27 = phi i64 [ %31, %26 ], [ 0, %23 ]
  %28 = phi i64 [ %32, %26 ], [ 1, %23 ]
  %29 = getelementptr inbounds i64, ptr %25, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !7
  %31 = add nsw i64 %30, %27
  %32 = add nuw i64 %28, 1
  %33 = icmp eq i64 %32, %13
  br i1 %33, label %34, label %26, !llvm.loop !25

34:                                               ; preds = %26, %23
  %35 = phi i64 [ 0, %23 ], [ %31, %26 ]
  %36 = icmp sgt i64 %35, %17
  %37 = select i1 %36, i64 %18, i64 %19
  %38 = tail call i64 @llvm.smax.i64(i64 %35, i64 %17)
  br label %39

39:                                               ; preds = %34, %16
  %40 = phi i64 [ %19, %16 ], [ %37, %34 ]
  %41 = phi i64 [ %17, %16 ], [ %38, %34 ]
  %42 = add nuw i64 %18, 1
  %43 = icmp eq i64 %42, %15
  br i1 %43, label %44, label %16, !llvm.loop !26

44:                                               ; preds = %39, %5
  %45 = phi i64 [ 0, %5 ], [ %40, %39 ]
  store i64 %45, ptr %3, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Assign(ptr noundef %0, ptr noundef %1, i64 noundef %2) #2 {
  tail call void @LongestPathVCG(ptr noundef %0, i64 noundef %2) #21
  %4 = load ptr, ptr @HCG, align 8, !tbaa !11
  %5 = load ptr, ptr @tracksNoHCV, align 8, !tbaa !11
  tail call void @NoHCV(ptr noundef %4, i64 noundef %2, ptr noundef %1, ptr noundef %5) #21
  %6 = load i64, ptr @cardTopNotPref, align 8, !tbaa !7
  %7 = load i64, ptr @cardBotNotPref, align 8, !tbaa !7
  %8 = add i64 %7, %6
  %9 = icmp eq i64 %8, 0
  %10 = load i64, ptr @channelTracks, align 8, !tbaa !7
  br i1 %9, label %18, label %11

11:                                               ; preds = %3
  %12 = sub i64 %10, %7
  %13 = mul i64 %12, %6
  %14 = add i64 %6, 1
  %15 = mul i64 %14, %7
  %16 = add i64 %13, %15
  %17 = udiv i64 %16, %8
  br label %18

18:                                               ; preds = %11, %3
  %19 = phi i64 [ %17, %11 ], [ 1, %3 ]
  %20 = icmp eq i64 %10, 0
  br i1 %20, label %118, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr @tracksAssign, align 8, !tbaa !11
  br label %29

23:                                               ; preds = %29
  %.lcssa6 = phi i64 [ %33, %29 ]
  %24 = icmp eq i64 %.lcssa6, 0
  br i1 %24, label %118, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr @tracksNoHCV, align 8, !tbaa !11
  %27 = load ptr, ptr @tracksNotPref, align 8
  %28 = load ptr, ptr @tracksAssign, align 8
  br label %35

29:                                               ; preds = %29, %21
  %30 = phi i64 [ 1, %21 ], [ %32, %29 ]
  %31 = getelementptr inbounds i64, ptr %22, i64 %30
  store i64 0, ptr %31, align 8, !tbaa !7
  %32 = add i64 %30, 1
  %33 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %23, label %29, !llvm.loop !27

35:                                               ; preds = %50, %25
  %36 = phi i64 [ %.lcssa6, %25 ], [ %51, %50 ]
  %37 = phi i64 [ 1, %25 ], [ %53, %50 ]
  %38 = phi i64 [ 0, %25 ], [ %52, %50 ]
  %39 = getelementptr inbounds i64, ptr %26, i64 %37
  %40 = load i64, ptr %39, align 8, !tbaa !7
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds i64, ptr %27, i64 %37
  %44 = load i64, ptr %43, align 8, !tbaa !7
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = getelementptr inbounds i64, ptr %28, i64 %37
  store i64 1, ptr %47, align 8, !tbaa !7
  %48 = add i64 %38, 1
  %49 = load i64, ptr @channelTracks, align 8, !tbaa !7
  br label %50

50:                                               ; preds = %46, %42, %35
  %51 = phi i64 [ %36, %42 ], [ %49, %46 ], [ %36, %35 ]
  %52 = phi i64 [ %38, %42 ], [ %48, %46 ], [ %38, %35 ]
  %53 = add i64 %37, 1
  %54 = icmp ugt i64 %53, %51
  br i1 %54, label %55, label %35, !llvm.loop !28

55:                                               ; preds = %50
  %.lcssa5 = phi i64 [ %51, %50 ]
  %.lcssa4 = phi i64 [ %52, %50 ]
  %56 = icmp eq i64 %.lcssa4, 0
  br i1 %56, label %57, label %135

57:                                               ; preds = %55
  %58 = icmp eq i64 %.lcssa5, 0
  br i1 %58, label %118, label %59

59:                                               ; preds = %57
  %60 = load ptr, ptr @tracksNoHCV, align 8, !tbaa !11
  %61 = load ptr, ptr @tracksTopNotPref, align 8
  %62 = load ptr, ptr @tracksBotNotPref, align 8
  %63 = load ptr, ptr @tracksAssign, align 8
  br label %64

64:                                               ; preds = %83, %59
  %65 = phi i64 [ %.lcssa5, %59 ], [ %84, %83 ]
  %66 = phi i64 [ 1, %59 ], [ %86, %83 ]
  %67 = phi i64 [ 0, %59 ], [ %85, %83 ]
  %68 = getelementptr inbounds i64, ptr %60, i64 %66
  %69 = load i64, ptr %68, align 8, !tbaa !7
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds i64, ptr %61, i64 %66
  %73 = load i64, ptr %72, align 8, !tbaa !7
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds i64, ptr %62, i64 %66
  %77 = load i64, ptr %76, align 8, !tbaa !7
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds i64, ptr %63, i64 %66
  store i64 1, ptr %80, align 8, !tbaa !7
  %81 = add i64 %67, 1
  %82 = load i64, ptr @channelTracks, align 8, !tbaa !7
  br label %83

83:                                               ; preds = %79, %75, %71, %64
  %84 = phi i64 [ %82, %79 ], [ %65, %75 ], [ %65, %71 ], [ %65, %64 ]
  %85 = phi i64 [ %81, %79 ], [ %67, %75 ], [ %67, %71 ], [ %67, %64 ]
  %86 = add i64 %66, 1
  %87 = icmp ugt i64 %86, %84
  br i1 %87, label %88, label %64, !llvm.loop !29

88:                                               ; preds = %83
  %.lcssa3 = phi i64 [ %84, %83 ]
  %.lcssa2 = phi i64 [ %85, %83 ]
  %89 = icmp eq i64 %.lcssa2, 0
  br i1 %89, label %90, label %135

90:                                               ; preds = %88
  %91 = icmp ugt i64 %.lcssa3, 2
  br i1 %91, label %92, label %118

92:                                               ; preds = %90
  %93 = load ptr, ptr @tracksNoHCV, align 8, !tbaa !11
  %94 = load ptr, ptr @tracksNotPref, align 8
  %95 = load ptr, ptr @tracksAssign, align 8
  br label %96

96:                                               ; preds = %111, %92
  %97 = phi i64 [ %.lcssa3, %92 ], [ %112, %111 ]
  %98 = phi i64 [ 2, %92 ], [ %114, %111 ]
  %99 = phi i64 [ 0, %92 ], [ %113, %111 ]
  %100 = getelementptr inbounds i64, ptr %93, i64 %98
  %101 = load i64, ptr %100, align 8, !tbaa !7
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %96
  %104 = getelementptr inbounds i64, ptr %94, i64 %98
  %105 = load i64, ptr %104, align 8, !tbaa !7
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds i64, ptr %95, i64 %98
  store i64 1, ptr %108, align 8, !tbaa !7
  %109 = add i64 %99, 1
  %110 = load i64, ptr @channelTracks, align 8, !tbaa !7
  br label %111

111:                                              ; preds = %107, %103, %96
  %112 = phi i64 [ %110, %107 ], [ %97, %103 ], [ %97, %96 ]
  %113 = phi i64 [ %109, %107 ], [ %99, %103 ], [ %99, %96 ]
  %114 = add nuw i64 %98, 1
  %115 = icmp ult i64 %114, %112
  br i1 %115, label %96, label %116, !llvm.loop !30

116:                                              ; preds = %111
  %.lcssa1 = phi i64 [ %112, %111 ]
  %.lcssa = phi i64 [ %113, %111 ]
  %117 = icmp eq i64 %.lcssa, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %116, %90, %57, %23, %18
  %119 = phi i64 [ %.lcssa1, %116 ], [ %.lcssa3, %90 ], [ 0, %23 ], [ 0, %18 ], [ 0, %57 ]
  %120 = load ptr, ptr @tracksNoHCV, align 8, !tbaa !11
  %121 = getelementptr inbounds i64, ptr %120, i64 1
  %122 = load i64, ptr %121, align 8, !tbaa !7
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %118
  %125 = load ptr, ptr @tracksAssign, align 8, !tbaa !11
  %126 = getelementptr inbounds i64, ptr %125, i64 1
  store i64 1, ptr %126, align 8, !tbaa !7
  br label %127

127:                                              ; preds = %124, %118
  %128 = getelementptr inbounds i64, ptr %120, i64 %119
  %129 = load i64, ptr %128, align 8, !tbaa !7
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load ptr, ptr @tracksAssign, align 8, !tbaa !11
  %133 = getelementptr inbounds i64, ptr %132, i64 %119
  store i64 1, ptr %133, align 8, !tbaa !7
  %134 = load i64, ptr @channelTracks, align 8, !tbaa !7
  br label %135

135:                                              ; preds = %131, %127, %116, %88, %55
  %136 = phi i64 [ %.lcssa5, %55 ], [ %.lcssa3, %88 ], [ %119, %127 ], [ %134, %131 ], [ %.lcssa1, %116 ]
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %173, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr @tracksAssign, align 8, !tbaa !11
  br label %140

140:                                              ; preds = %165, %138
  %141 = phi ptr [ %166, %165 ], [ %139, %138 ]
  %142 = phi i64 [ %169, %165 ], [ 1000000, %138 ]
  %143 = phi i64 [ %168, %165 ], [ undef, %138 ]
  %144 = phi i64 [ %170, %165 ], [ 1, %138 ]
  %145 = phi i64 [ %167, %165 ], [ 0, %138 ]
  %146 = getelementptr inbounds i64, ptr %141, i64 %144
  %147 = load i64, ptr %146, align 8, !tbaa !7
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %165, label %149

149:                                              ; preds = %140
  %150 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  %151 = tail call i64 @VCV(ptr noundef %0, i64 noundef %2, i64 noundef %144, ptr noundef %150) #21
  %152 = icmp ult i64 %151, %142
  %153 = load ptr, ptr @tracksAssign, align 8, !tbaa !11
  br i1 %152, label %154, label %157

154:                                              ; preds = %149
  %155 = sub i64 %144, %19
  %156 = tail call i64 @llvm.abs.i64(i64 %155, i1 true)
  br label %165

157:                                              ; preds = %149
  %158 = icmp eq i64 %151, %142
  br i1 %158, label %159, label %165

159:                                              ; preds = %157
  %160 = sub i64 %144, %19
  %161 = tail call i64 @llvm.abs.i64(i64 %160, i1 true)
  %162 = icmp slt i64 %161, %143
  %163 = select i1 %162, i64 %144, i64 %145
  %164 = tail call i64 @llvm.smin.i64(i64 %161, i64 %143)
  br label %165

165:                                              ; preds = %159, %157, %154, %140
  %166 = phi ptr [ %153, %157 ], [ %141, %140 ], [ %153, %154 ], [ %153, %159 ]
  %167 = phi i64 [ %145, %157 ], [ %145, %140 ], [ %144, %154 ], [ %163, %159 ]
  %168 = phi i64 [ %143, %157 ], [ %143, %140 ], [ %156, %154 ], [ %164, %159 ]
  %169 = phi i64 [ %142, %157 ], [ %142, %140 ], [ %151, %154 ], [ %142, %159 ]
  %170 = add i64 %144, 1
  %171 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %172 = icmp ugt i64 %170, %171
  br i1 %172, label %173, label %140, !llvm.loop !31

173:                                              ; preds = %165, %135
  %174 = phi i64 [ 0, %135 ], [ %167, %165 ]
  %175 = getelementptr inbounds i64, ptr %1, i64 %2
  store i64 %174, ptr %175, align 8, !tbaa !7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nounwind optsize uwtable
define internal void @BuildCostMatrix(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = load i64, ptr @channelNets, align 8, !tbaa !7
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %105, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @costMatrix, align 8, !tbaa !11
  %9 = load i64, ptr @channelTracks, align 8, !tbaa !7
  br label %12

10:                                               ; preds = %27
  %.lcssa1 = phi i64 [ %28, %27 ]
  %11 = icmp eq i64 %.lcssa1, 0
  br i1 %11, label %105, label %32

12:                                               ; preds = %27, %7
  %13 = phi i64 [ %5, %7 ], [ %28, %27 ]
  %14 = phi i64 [ %9, %7 ], [ %29, %27 ]
  %15 = phi i64 [ 1, %7 ], [ %30, %27 ]
  %16 = getelementptr inbounds ptr, ptr %8, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %19, %12
  %20 = phi i64 [ %22, %19 ], [ 1, %12 ]
  %21 = getelementptr inbounds i64, ptr %17, i64 %20
  store i64 0, ptr %21, align 8, !tbaa !7
  %22 = add i64 %20, 1
  %23 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %19, !llvm.loop !32

25:                                               ; preds = %19
  %.lcssa = phi i64 [ %23, %19 ]
  %26 = load i64, ptr @channelNets, align 8, !tbaa !7
  br label %27

27:                                               ; preds = %25, %12
  %28 = phi i64 [ %26, %25 ], [ %13, %12 ]
  %29 = phi i64 [ %.lcssa, %25 ], [ 0, %12 ]
  %30 = add i64 %15, 1
  %31 = icmp ugt i64 %30, %28
  br i1 %31, label %10, label %12, !llvm.loop !33

32:                                               ; preds = %101, %10
  %33 = phi i64 [ %102, %101 ], [ 1, %10 ]
  %34 = getelementptr inbounds i64, ptr %3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !7
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %101, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr @costMatrix, align 8, !tbaa !11
  %39 = getelementptr inbounds ptr, ptr %38, i64 %33
  %40 = load ptr, ptr %39, align 8, !tbaa !11
  tail call void @LongestPathVCG(ptr noundef %0, i64 noundef %33) #21
  %41 = load ptr, ptr @tracksNoHCV, align 8, !tbaa !11
  tail call void @NoHCV(ptr noundef %1, i64 noundef %33, ptr noundef %2, ptr noundef %41) #21
  %42 = load i64, ptr @cardTopNotPref, align 8, !tbaa !7
  %43 = load i64, ptr @cardBotNotPref, align 8, !tbaa !7
  %44 = add i64 %43, %42
  %45 = icmp eq i64 %44, 0
  %46 = load i64, ptr @channelTracks, align 8, !tbaa !7
  br i1 %45, label %54, label %47

47:                                               ; preds = %37
  %48 = sub i64 %46, %43
  %49 = mul i64 %48, %42
  %50 = add i64 %42, 1
  %51 = mul i64 %50, %43
  %52 = add i64 %49, %51
  %53 = udiv i64 %52, %44
  br label %54

54:                                               ; preds = %47, %37
  %55 = phi i64 [ %53, %47 ], [ 1, %37 ]
  %56 = icmp eq i64 %46, 0
  br i1 %56, label %101, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr @tracksNoHCV, align 8, !tbaa !11
  %59 = load ptr, ptr @tracksNotPref, align 8
  br label %60

60:                                               ; preds = %97, %57
  %61 = phi i64 [ %46, %57 ], [ %99, %97 ]
  %62 = phi i64 [ 1, %57 ], [ %98, %97 ]
  %63 = getelementptr inbounds i64, ptr %58, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !7
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %95, label %66

66:                                               ; preds = %60
  %67 = load i64, ptr @cardNotPref, align 8, !tbaa !7
  %68 = icmp eq i64 %67, %61
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds i64, ptr %59, i64 %62
  %71 = load i64, ptr %70, align 8, !tbaa !7
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %84, label %89

73:                                               ; preds = %66
  %74 = load i64, ptr @cardBotNotPref, align 8, !tbaa !7
  %75 = sub i64 %61, %74
  %76 = icmp ugt i64 %62, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load i64, ptr @cardTopNotPref, align 8, !tbaa !7
  %79 = icmp ugt i64 %62, %78
  br i1 %79, label %89, label %80

80:                                               ; preds = %77
  %81 = shl i64 %61, 1
  %82 = add i64 %74, %78
  %83 = sub i64 %81, %82
  br label %84

84:                                               ; preds = %80, %69
  %85 = phi i64 [ %83, %80 ], [ %67, %69 ]
  %86 = mul i64 %85, 100
  %87 = getelementptr inbounds i64, ptr %40, i64 %62
  store i64 %86, ptr %87, align 8, !tbaa !7
  %88 = icmp slt i64 %86, 1000000
  br i1 %88, label %89, label %97

89:                                               ; preds = %84, %77, %73, %69
  %90 = phi i64 [ %86, %84 ], [ 10000, %69 ], [ 10000, %77 ], [ 10000, %73 ]
  %91 = getelementptr inbounds i64, ptr %40, i64 %62
  %92 = sub i64 %55, %62
  %93 = tail call i64 @llvm.abs.i64(i64 %92, i1 true)
  %94 = add nsw i64 %90, %93
  store i64 %94, ptr %91, align 8, !tbaa !7
  br label %97

95:                                               ; preds = %60
  %96 = getelementptr inbounds i64, ptr %40, i64 %62
  store i64 1000000, ptr %96, align 8, !tbaa !7
  br label %97

97:                                               ; preds = %95, %89, %84
  %98 = add i64 %62, 1
  %99 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %100 = icmp ugt i64 %98, %99
  br i1 %100, label %101, label %60, !llvm.loop !34

101:                                              ; preds = %97, %54, %32
  %102 = add i64 %33, 1
  %103 = load i64, ptr @channelNets, align 8, !tbaa !7
  %104 = icmp ugt i64 %102, %103
  br i1 %104, label %105, label %32, !llvm.loop !35

105:                                              ; preds = %101, %10, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nounwind optsize uwtable
define internal void @BuildChannel() #2 {
  tail call void @DimensionChannel() #22
  tail call void @DescribeChannel() #22
  tail call void @DensityChannel() #22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DimensionChannel() #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load ptr, ptr @channelFile, align 8, !tbaa !11
  %5 = tail call noalias ptr @fopen(ptr noundef %4, ptr noundef nonnull @.str) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  tail call void @exit(i32 noundef 1) #24
  unreachable

10:                                               ; preds = %20, %0
  %11 = phi i64 [ %29, %20 ], [ 0, %0 ]
  %12 = phi i64 [ %27, %20 ], [ 0, %0 ]
  %13 = phi i64 [ %14, %20 ], [ 0, %0 ]
  %14 = add i64 %13, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  %15 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.3, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  switch i32 %15, label %16 [
    i32 -1, label %30
    i32 3, label %20
  ]

16:                                               ; preds = %10
  %.lcssa = phi i64 [ %14, %10 ]
  %17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %.lcssa) #22
  %19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  call void @exit(i32 noundef 1) #24
  unreachable

20:                                               ; preds = %10
  %21 = load i32, ptr %3, align 4, !tbaa !36
  %22 = zext i32 %21 to i64
  %23 = load i32, ptr %2, align 4, !tbaa !36
  %24 = zext i32 %23 to i64
  %25 = load i32, ptr %1, align 4, !tbaa !36
  %26 = zext i32 %25 to i64
  %27 = call i64 @llvm.umax.i64(i64 %12, i64 %26)
  %28 = call i64 @llvm.umax.i64(i64 %11, i64 %24)
  %29 = call i64 @llvm.umax.i64(i64 %28, i64 %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #23
  br label %10, !llvm.loop !38

30:                                               ; preds = %10
  %.lcssa5 = phi i64 [ %11, %10 ]
  %.lcssa3 = phi i64 [ %12, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #23
  %31 = call i32 @fclose(ptr noundef nonnull %5) #22
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %35 = call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  call void @exit(i32 noundef 1) #24
  unreachable

36:                                               ; preds = %30
  %37 = icmp eq i64 %.lcssa3, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %40 = call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  %41 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  call void @exit(i32 noundef 1) #24
  unreachable

42:                                               ; preds = %36
  store i64 %.lcssa3, ptr @channelColumns, align 8, !tbaa !7
  store i64 %.lcssa5, ptr @channelNets, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DescribeChannel() #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %5 = shl i64 %4, 3
  %6 = add i64 %5, 8
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #20
  store ptr %7, ptr @TOP, align 8, !tbaa !11
  %8 = tail call noalias ptr @malloc(i64 noundef %6) #20
  store ptr %8, ptr @BOT, align 8, !tbaa !11
  %9 = add i64 %4, 1
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1)
  %11 = shl nuw i64 %10, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %7, i8 0, i64 %11, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %8, i8 0, i64 %11, i1 false), !tbaa !7
  %12 = load ptr, ptr @channelFile, align 8, !tbaa !11
  %13 = tail call noalias ptr @fopen(ptr noundef %12, ptr noundef nonnull @.str) #22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  tail call void @exit(i32 noundef 1) #24
  unreachable

18:                                               ; preds = %35, %0
  %19 = phi i64 [ %20, %35 ], [ 0, %0 ]
  %20 = add i64 %19, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  %21 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %13, ptr noundef nonnull @.str.3, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %22 = load i32, ptr %1, align 4, !tbaa !36
  %23 = zext i32 %22 to i64
  %24 = load i32, ptr %2, align 4, !tbaa !36
  %25 = zext i32 %24 to i64
  %26 = load i32, ptr %3, align 4, !tbaa !36
  %27 = zext i32 %26 to i64
  switch i32 %21, label %40 [
    i32 -1, label %44
    i32 3, label %28
  ]

28:                                               ; preds = %18
  %29 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %30 = icmp ult i64 %29, %23
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %.lcssa2 = phi i64 [ %20, %28 ]
  %32 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %.lcssa2) #22
  %34 = call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  call void @exit(i32 noundef 1) #24
  unreachable

35:                                               ; preds = %28
  %36 = load ptr, ptr @BOT, align 8, !tbaa !11
  %37 = getelementptr inbounds i64, ptr %36, i64 %23
  store i64 %25, ptr %37, align 8, !tbaa !7
  %38 = load ptr, ptr @TOP, align 8, !tbaa !11
  %39 = getelementptr inbounds i64, ptr %38, i64 %23
  store i64 %27, ptr %39, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #23
  br label %18, !llvm.loop !39

40:                                               ; preds = %18
  %.lcssa = phi i64 [ %20, %18 ]
  %41 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %.lcssa) #22
  %43 = call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  call void @exit(i32 noundef 1) #24
  unreachable

44:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #23
  %45 = call i32 @fclose(ptr noundef nonnull %13) #22
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %49 = call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  call void @exit(i32 noundef 1) #24
  unreachable

50:                                               ; preds = %44
  ret void
}

; Function Attrs: nofree nounwind optsize memory(readwrite, argmem: read) uwtable
define internal void @DensityChannel() #6 {
  %1 = load i64, ptr @channelNets, align 8, !tbaa !7
  %2 = shl i64 %1, 3
  %3 = add i64 %2, 8
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #20
  store ptr %4, ptr @FIRST, align 8, !tbaa !11
  %5 = tail call noalias ptr @malloc(i64 noundef %3) #20
  store ptr %5, ptr @LAST, align 8, !tbaa !11
  %6 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %7 = shl i64 %6, 3
  %8 = add i64 %7, 8
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #20
  store ptr %9, ptr @DENSITY, align 8, !tbaa !11
  %10 = tail call noalias ptr @malloc(i64 noundef %3) #20
  store ptr %10, ptr @CROSSING, align 8, !tbaa !11
  %11 = add i64 %1, 1
  %12 = tail call i64 @llvm.umax.i64(i64 %11, i64 1)
  %13 = shl nuw i64 %12, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, i8 0, i64 %13, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %5, i8 0, i64 %13, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %10, i8 0, i64 %13, i1 false), !tbaa !7
  %14 = add i64 %6, 1
  %15 = tail call i64 @llvm.umax.i64(i64 %14, i64 1)
  %16 = shl nuw i64 %15, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, i8 0, i64 %16, i1 false), !tbaa !7
  %17 = icmp eq i64 %1, 0
  br i1 %17, label %70, label %18

18:                                               ; preds = %0
  %19 = icmp eq i64 %6, 0
  %20 = load ptr, ptr @BOT, align 8
  %21 = load ptr, ptr @TOP, align 8
  %22 = tail call i64 @llvm.umax.i64(i64 %11, i64 2)
  br label %23

23:                                               ; preds = %67, %18
  %24 = phi i64 [ 1, %18 ], [ %68, %67 ]
  br i1 %19, label %54, label %25

25:                                               ; preds = %36, %23
  %26 = phi i64 [ %37, %36 ], [ 1, %23 ]
  %27 = getelementptr inbounds i64, ptr %20, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !7
  %29 = icmp eq i64 %28, %24
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds i64, ptr %21, i64 %26
  %32 = load i64, ptr %31, align 8, !tbaa !7
  %33 = icmp eq i64 %32, %24
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %25
  %.lcssa = phi i64 [ %26, %30 ], [ %26, %25 ]
  %35 = getelementptr inbounds i64, ptr %4, i64 %24
  store i64 %.lcssa, ptr %35, align 8, !tbaa !7
  br label %39

36:                                               ; preds = %30
  %37 = add i64 %26, 1
  %38 = icmp ugt i64 %37, %6
  br i1 %38, label %39, label %25, !llvm.loop !40

39:                                               ; preds = %36, %34
  br i1 %19, label %54, label %40

40:                                               ; preds = %51, %39
  %41 = phi i64 [ %52, %51 ], [ %6, %39 ]
  %42 = getelementptr inbounds i64, ptr %20, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !7
  %44 = icmp eq i64 %43, %24
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds i64, ptr %21, i64 %41
  %47 = load i64, ptr %46, align 8, !tbaa !7
  %48 = icmp eq i64 %47, %24
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %40
  %.lcssa2 = phi i64 [ %41, %45 ], [ %41, %40 ]
  %50 = getelementptr inbounds i64, ptr %5, i64 %24
  store i64 %.lcssa2, ptr %50, align 8, !tbaa !7
  br label %54

51:                                               ; preds = %45
  %52 = add i64 %41, -1
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %40, !llvm.loop !41

54:                                               ; preds = %51, %49, %39, %23
  %55 = getelementptr inbounds i64, ptr %4, i64 %24
  %56 = load i64, ptr %55, align 8, !tbaa !7
  %57 = getelementptr inbounds i64, ptr %5, i64 %24
  %58 = load i64, ptr %57, align 8, !tbaa !7
  %59 = icmp ugt i64 %56, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %60, %54
  %61 = phi i64 [ %65, %60 ], [ %56, %54 ]
  %62 = getelementptr inbounds i64, ptr %9, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !7
  %64 = add i64 %63, 1
  store i64 %64, ptr %62, align 8, !tbaa !7
  %65 = add i64 %61, 1
  %66 = icmp ugt i64 %65, %58
  br i1 %66, label %67, label %60, !llvm.loop !42

67:                                               ; preds = %60, %54
  %68 = add nuw i64 %24, 1
  %69 = icmp eq i64 %68, %22
  br i1 %69, label %70, label %23, !llvm.loop !43

70:                                               ; preds = %67, %0
  %71 = icmp eq i64 %6, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %72, %70
  %73 = phi i64 [ %80, %72 ], [ undef, %70 ]
  %74 = phi i64 [ %79, %72 ], [ 0, %70 ]
  %75 = phi i64 [ %81, %72 ], [ %6, %70 ]
  %76 = getelementptr inbounds i64, ptr %9, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !7
  %78 = icmp ugt i64 %77, %74
  %79 = tail call i64 @llvm.umax.i64(i64 %77, i64 %74)
  %80 = select i1 %78, i64 %75, i64 %73
  %81 = add i64 %75, -1
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %72, !llvm.loop !44

83:                                               ; preds = %72, %70
  %84 = phi i64 [ 0, %70 ], [ %79, %72 ]
  %85 = phi i64 [ undef, %70 ], [ %80, %72 ]
  store i64 %84, ptr @channelTracks, align 8, !tbaa !7
  store i64 %84, ptr @channelDensity, align 8, !tbaa !7
  store i64 %85, ptr @channelDensityColumn, align 8, !tbaa !7
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(readwrite, argmem: none) uwtable
define internal void @AllocHCG() #12 {
  %1 = load i64, ptr @channelNets, align 8, !tbaa !7
  %2 = mul i64 %1, 24
  %3 = add i64 %2, 24
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #20
  store ptr %4, ptr @HCG, align 8, !tbaa !11
  %5 = add i64 %1, 1
  %6 = mul i64 %5, %5
  %7 = shl i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #20
  store ptr %8, ptr @storageRootHCG, align 8, !tbaa !11
  store ptr %8, ptr @storageHCG, align 8, !tbaa !11
  store i64 %6, ptr @storageLimitHCG, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @BuildHCG() #13 {
  tail call void @AllocHCG() #22
  %1 = load i64, ptr @channelNets, align 8, !tbaa !7
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %62, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @HCG, align 8, !tbaa !11
  br label %5

5:                                                ; preds = %56, %3
  %6 = phi i64 [ %60, %56 ], [ %1, %3 ]
  %7 = phi ptr [ %18, %56 ], [ %4, %3 ]
  %8 = phi i64 [ %59, %56 ], [ 1, %3 ]
  %9 = load ptr, ptr @FIRST, align 8, !tbaa !11
  %10 = getelementptr inbounds i64, ptr %9, i64 %8
  %11 = load i64, ptr %10, align 8, !tbaa !7
  %12 = load ptr, ptr @LAST, align 8, !tbaa !11
  %13 = getelementptr inbounds i64, ptr %12, i64 %8
  %14 = load i64, ptr %13, align 8, !tbaa !7
  %15 = load ptr, ptr @storageHCG, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct._nodeHCGType, ptr %7, i64 %8
  store ptr %15, ptr %16, align 8, !tbaa !45
  %17 = icmp eq i64 %6, 0
  %18 = load ptr, ptr @HCG, align 8
  br i1 %17, label %56, label %19

19:                                               ; preds = %5
  %20 = load ptr, ptr @storageHCG, align 8, !tbaa !11
  %21 = load ptr, ptr @FIRST, align 8, !tbaa !11
  %22 = load ptr, ptr @LAST, align 8
  %23 = getelementptr inbounds %struct._nodeHCGType, ptr %18, i64 %8
  br label %24

24:                                               ; preds = %50, %19
  %25 = phi i64 [ %6, %19 ], [ %51, %50 ]
  %26 = phi i64 [ 1, %19 ], [ %54, %50 ]
  %27 = phi i64 [ 0, %19 ], [ %53, %50 ]
  %28 = phi ptr [ %20, %19 ], [ %52, %50 ]
  %29 = getelementptr inbounds i64, ptr %21, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !7
  %31 = icmp ult i64 %30, %11
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = getelementptr inbounds i64, ptr %22, i64 %26
  %34 = load i64, ptr %33, align 8, !tbaa !7
  %35 = icmp ult i64 %34, %11
  br i1 %35, label %50, label %36

36:                                               ; preds = %32, %24
  %37 = icmp ugt i64 %30, %14
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = getelementptr inbounds i64, ptr %22, i64 %26
  %40 = load i64, ptr %39, align 8, !tbaa !7
  %41 = icmp ugt i64 %40, %14
  br i1 %41, label %50, label %42

42:                                               ; preds = %38, %36
  %43 = load ptr, ptr %23, align 8, !tbaa !45
  %44 = getelementptr inbounds i64, ptr %43, i64 %27
  store i64 %26, ptr %44, align 8, !tbaa !7
  %45 = getelementptr inbounds i64, ptr %28, i64 1
  store ptr %45, ptr @storageHCG, align 8, !tbaa !11
  %46 = load i64, ptr @storageLimitHCG, align 8, !tbaa !7
  %47 = add i64 %46, -1
  store i64 %47, ptr @storageLimitHCG, align 8, !tbaa !7
  %48 = add i64 %27, 1
  %49 = load i64, ptr @channelNets, align 8, !tbaa !7
  br label %50

50:                                               ; preds = %42, %38, %32
  %51 = phi i64 [ %25, %32 ], [ %25, %38 ], [ %49, %42 ]
  %52 = phi ptr [ %28, %32 ], [ %28, %38 ], [ %45, %42 ]
  %53 = phi i64 [ %27, %32 ], [ %27, %38 ], [ %48, %42 ]
  %54 = add i64 %26, 1
  %55 = icmp ugt i64 %54, %51
  br i1 %55, label %56, label %24, !llvm.loop !47

56:                                               ; preds = %50, %5
  %57 = phi i64 [ 0, %5 ], [ %53, %50 ]
  %58 = getelementptr inbounds %struct._nodeHCGType, ptr %18, i64 %8, i32 1
  store i64 %57, ptr %58, align 8, !tbaa !48
  %59 = add i64 %8, 1
  %60 = load i64, ptr @channelNets, align 8, !tbaa !7
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %5, !llvm.loop !49

62:                                               ; preds = %56, %0
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @NoHCV(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #14 {
  %5 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._nodeHCGType, ptr %0, i64 %1, i32 1
  %9 = getelementptr inbounds %struct._nodeHCGType, ptr %0, i64 %1
  br label %10

10:                                               ; preds = %35, %7
  %11 = phi i64 [ 1, %7 ], [ %38, %35 ]
  %12 = load i64, ptr @channelNets, align 8, !tbaa !7
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %32, %10
  %15 = phi i64 [ %33, %32 ], [ 1, %10 ]
  %16 = getelementptr inbounds i64, ptr %2, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !7
  %18 = icmp eq i64 %17, %11
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load i64, ptr %8, align 8, !tbaa !48
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %9, align 8, !tbaa !45
  br label %27

24:                                               ; preds = %27
  %25 = add nuw i64 %28, 1
  %26 = icmp eq i64 %25, %20
  br i1 %26, label %32, label %27, !llvm.loop !50

27:                                               ; preds = %24, %22
  %28 = phi i64 [ 0, %22 ], [ %25, %24 ]
  %29 = getelementptr inbounds i64, ptr %23, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !7
  %31 = icmp eq i64 %30, %15
  br i1 %31, label %35, label %24

32:                                               ; preds = %24, %19, %14
  %33 = add i64 %15, 1
  %34 = icmp ugt i64 %33, %12
  br i1 %34, label %35, label %14, !llvm.loop !51

35:                                               ; preds = %32, %27, %10
  %36 = phi i64 [ 1, %10 ], [ 0, %27 ], [ 1, %32 ]
  %37 = getelementptr inbounds i64, ptr %3, i64 %11
  store i64 %36, ptr %37, align 8, !tbaa !7
  %38 = add i64 %11, 1
  %39 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %10, !llvm.loop !52

41:                                               ; preds = %35, %4
  ret void
}

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #15 {
  br label %3

3:                                                ; preds = %82, %2
  %4 = phi i32 [ 0, %2 ], [ %84, %82 ]
  tail call void @Option(i32 noundef %0, ptr noundef %1) #21
  tail call void @BuildChannel() #21
  tail call void @BuildVCG() #21
  tail call void @AcyclicVCG() #21
  tail call void @BuildHCG() #21
  br label %5

5:                                                ; preds = %81, %3
  tail call void @AllocAssign() #21
  tail call void @NetsAssign() #21
  tail call void @InitAllocMaps() #21
  %6 = load i64, ptr @channelTracks, align 8, !tbaa !7
  store i64 %6, ptr @channelTracksCopy, align 8, !tbaa !7
  %7 = load i64, ptr @channelNets, align 8, !tbaa !7
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  %11 = load ptr, ptr @netsAssignCopy, align 8, !tbaa !11
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i64 [ 1, %9 ], [ %17, %12 ]
  %14 = getelementptr inbounds i64, ptr %10, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !7
  %16 = getelementptr inbounds i64, ptr %11, i64 %13
  store i64 %15, ptr %16, align 8, !tbaa !7
  %17 = add i64 %13, 1
  %18 = load i64, ptr @channelNets, align 8, !tbaa !7
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %12, !llvm.loop !53

20:                                               ; preds = %12, %5
  br label %21

21:                                               ; preds = %77, %20
  %22 = phi i64 [ %44, %77 ], [ 0, %20 ]
  %23 = tail call i32 @DrawNets() #21
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %82, label %25

25:                                               ; preds = %21
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %23) #22
  %27 = tail call i32 @Maze1() #21
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %82, label %29

29:                                               ; preds = %25
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %27) #22
  %31 = tail call i32 @Maze2() #21
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %82, label %33

33:                                               ; preds = %29
  %34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %31) #22
  %35 = tail call i32 @Maze3() #21
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %82, label %37

37:                                               ; preds = %33
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3.24, i32 noundef %35) #22
  %39 = icmp eq i64 %22, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %42 = add i64 %41, 1
  store i64 %42, ptr @channelTracks, align 8, !tbaa !7
  br label %43

43:                                               ; preds = %40, %37
  %44 = add i64 %22, 1
  %45 = load i64, ptr @channelNets, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %77, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr @netsAssignCopy, align 8, !tbaa !11
  %49 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  br label %50

50:                                               ; preds = %50, %47
  %51 = phi i64 [ 1, %47 ], [ %55, %50 ]
  %52 = getelementptr inbounds i64, ptr %48, i64 %51
  %53 = load i64, ptr %52, align 8, !tbaa !7
  %54 = getelementptr inbounds i64, ptr %49, i64 %51
  store i64 %53, ptr %54, align 8, !tbaa !7
  %55 = add i64 %51, 1
  %56 = load i64, ptr @channelNets, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %50, !llvm.loop !54

58:                                               ; preds = %50
  %.lcssa = phi i64 [ %56, %50 ]
  %59 = icmp eq i64 %44, 0
  %60 = icmp eq i64 %.lcssa, 0
  %61 = or i1 %59, %60
  br i1 %61, label %77, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  br label %64

64:                                               ; preds = %73, %62
  %65 = phi i64 [ %.lcssa, %62 ], [ %74, %73 ]
  %66 = phi i64 [ 1, %62 ], [ %75, %73 ]
  %67 = getelementptr inbounds i64, ptr %63, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !7
  %69 = icmp ult i64 %68, %44
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = add i64 %68, 1
  store i64 %71, ptr %67, align 8, !tbaa !7
  %72 = load i64, ptr @channelNets, align 8, !tbaa !7
  br label %73

73:                                               ; preds = %70, %64
  %74 = phi i64 [ %65, %64 ], [ %72, %70 ]
  %75 = add i64 %66, 1
  %76 = icmp ugt i64 %75, %74
  br i1 %76, label %77, label %64, !llvm.loop !55

77:                                               ; preds = %73, %58, %43
  %78 = load i64, ptr @channelTracksCopy, align 8
  %79 = add i64 %78, 1
  %80 = icmp ugt i64 %44, %79
  br i1 %80, label %81, label %21, !llvm.loop !56

81:                                               ; preds = %77
  tail call void @FreeAllocMaps() #21
  tail call void @FreeAssign() #21
  br label %5, !llvm.loop !57

82:                                               ; preds = %33, %29, %25, %21
  %83 = tail call i32 @putchar(i32 10)
  tail call void @PrintChannel() #21
  %84 = add nuw nsw i32 %4, 1
  %85 = icmp eq i32 %84, 20
  br i1 %85, label %86, label %3, !llvm.loop !58

86:                                               ; preds = %82
  tail call void @exit(i32 noundef 0) #24
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind optsize uwtable
define internal void @InitAllocMaps() #2 {
  %1 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %2 = add i64 %1, 1
  %3 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %4 = add i64 %3, 3
  %5 = mul i64 %4, %2
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #20
  store ptr %6, ptr @horzPlane, align 8, !tbaa !11
  %7 = tail call noalias ptr @malloc(i64 noundef %5) #20
  store ptr %7, ptr @vertPlane, align 8, !tbaa !11
  %8 = tail call noalias ptr @malloc(i64 noundef %5) #20
  store ptr %8, ptr @viaPlane, align 8, !tbaa !11
  %9 = tail call noalias ptr @malloc(i64 noundef %2) #20
  store ptr %9, ptr @mazeRoute, align 8, !tbaa !11
  %10 = insertelement <4 x ptr> poison, ptr %7, i64 0
  %11 = insertelement <4 x ptr> %10, ptr %6, i64 1
  %12 = insertelement <4 x ptr> %11, ptr %8, i64 2
  %13 = insertelement <4 x ptr> %12, ptr %9, i64 3
  %14 = icmp eq <4 x ptr> %13, zeroinitializer
  %15 = bitcast <4 x i1> %14 to i4
  %16 = icmp eq i4 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %0
  %18 = load ptr, ptr @stderr, align 8, !tbaa !11
  %19 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 41, i64 1, ptr %18) #25
  tail call void @exit(i32 noundef 1) #24
  unreachable

20:                                               ; preds = %0
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal void @FreeAllocMaps() #16 {
  %1 = load ptr, ptr @horzPlane, align 8, !tbaa !11
  tail call void @free(ptr noundef %1) #21
  %2 = load ptr, ptr @vertPlane, align 8, !tbaa !11
  tail call void @free(ptr noundef %2) #21
  %3 = load ptr, ptr @viaPlane, align 8, !tbaa !11
  tail call void @free(ptr noundef %3) #21
  %4 = load ptr, ptr @mazeRoute, align 8, !tbaa !11
  tail call void @free(ptr noundef %4) #21
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @DrawSegment(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #17 {
  %6 = icmp eq i64 %1, %3
  br i1 %6, label %7, label %28

7:                                                ; preds = %5
  %8 = tail call i64 @llvm.umin.i64(i64 %2, i64 %4)
  %9 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %10 = mul i64 %9, %8
  %11 = add i64 %10, %1
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !59
  %14 = or i8 %13, 8
  store i8 %14, ptr %12, align 1, !tbaa !59
  %15 = tail call i64 @llvm.umax.i64(i64 %2, i64 %4)
  %16 = add i64 %8, 1
  %17 = icmp ult i64 %16, %15
  br i1 %17, label %18, label %47

18:                                               ; preds = %18, %7
  %19 = phi i64 [ %26, %18 ], [ %16, %7 ]
  %20 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %21 = mul i64 %20, %19
  %22 = add i64 %21, %1
  %23 = getelementptr inbounds i8, ptr %0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !59
  %25 = or i8 %24, 12
  store i8 %25, ptr %23, align 1, !tbaa !59
  %26 = add nuw i64 %19, 1
  %27 = icmp eq i64 %26, %15
  br i1 %27, label %47, label %18, !llvm.loop !60

28:                                               ; preds = %5
  %29 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %30 = mul i64 %29, %2
  %31 = tail call i64 @llvm.umin.i64(i64 %1, i64 %3)
  %32 = add i64 %30, %31
  %33 = getelementptr inbounds i8, ptr %0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !59
  %35 = or i8 %34, 2
  store i8 %35, ptr %33, align 1, !tbaa !59
  %36 = tail call i64 @llvm.umax.i64(i64 %1, i64 %3)
  %37 = add i64 %31, 1
  %38 = icmp ult i64 %37, %36
  br i1 %38, label %39, label %47

39:                                               ; preds = %39, %28
  %40 = phi i64 [ %45, %39 ], [ %37, %28 ]
  %41 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %42 = mul i64 %41, %2
  %43 = add i64 %42, %40
  %44 = getelementptr inbounds i8, ptr %0, i64 %43
  store i8 3, ptr %44, align 1, !tbaa !59
  %45 = add nuw i64 %40, 1
  %46 = icmp eq i64 %45, %36
  br i1 %46, label %47, label %39, !llvm.loop !61

47:                                               ; preds = %39, %28, %18, %7
  %48 = phi i64 [ %15, %7 ], [ %2, %28 ], [ %15, %18 ], [ %2, %39 ]
  %49 = phi i64 [ %1, %7 ], [ %36, %28 ], [ %1, %18 ], [ %36, %39 ]
  %50 = phi i8 [ 4, %7 ], [ 1, %28 ], [ 4, %18 ], [ 1, %39 ]
  %51 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %52 = mul i64 %51, %48
  %53 = add i64 %52, %49
  %54 = getelementptr inbounds i8, ptr %0, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !59
  %56 = or i8 %55, %50
  store i8 %56, ptr %54, align 1, !tbaa !59
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @SegmentFree(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #18 {
  %6 = icmp eq i64 %1, %3
  br i1 %6, label %7, label %23

7:                                                ; preds = %5
  %8 = tail call i64 @llvm.umin.i64(i64 %2, i64 %4)
  %9 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %10 = mul i64 %9, %8
  %11 = add i64 %10, %1
  %12 = tail call i64 @llvm.umax.i64(i64 %2, i64 %4)
  br label %13

13:                                               ; preds = %19, %7
  %14 = phi i64 [ %11, %7 ], [ %21, %19 ]
  %15 = phi i64 [ %8, %7 ], [ %20, %19 ]
  %16 = getelementptr inbounds i8, ptr %0, i64 %14
  %17 = load i8, ptr %16, align 1, !tbaa !59
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = add i64 %15, 1
  %21 = add i64 %14, %9
  %22 = icmp ugt i64 %20, %12
  br i1 %22, label %39, label %13, !llvm.loop !62

23:                                               ; preds = %5
  %24 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %25 = mul i64 %24, %2
  %26 = tail call i64 @llvm.umin.i64(i64 %1, i64 %3)
  %27 = add i64 %25, %26
  %28 = tail call i64 @llvm.umax.i64(i64 %1, i64 %3)
  br label %29

29:                                               ; preds = %35, %23
  %30 = phi i64 [ %27, %23 ], [ %37, %35 ]
  %31 = phi i64 [ %26, %23 ], [ %36, %35 ]
  %32 = getelementptr inbounds i8, ptr %0, i64 %30
  %33 = load i8, ptr %32, align 1, !tbaa !59
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = add i64 %31, 1
  %37 = add i64 %30, 1
  %38 = icmp ugt i64 %36, %28
  br i1 %38, label %39, label %29, !llvm.loop !63

39:                                               ; preds = %35, %29, %19, %13
  %40 = phi i32 [ 1, %19 ], [ 0, %13 ], [ 1, %35 ], [ 0, %29 ]
  ret i32 %40
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @PrintChannel() #13 {
  %1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.32) #22
  %2 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %4, %0
  %5 = phi i64 [ %11, %4 ], [ 1, %0 ]
  %6 = load ptr, ptr @TOP, align 8, !tbaa !11
  %7 = getelementptr inbounds i64, ptr %6, i64 %5
  %8 = load i64, ptr %7, align 8, !tbaa !7
  %9 = udiv i64 %8, 100
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.33, i64 noundef %9) #22
  %11 = add i64 %5, 1
  %12 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %4, !llvm.loop !64

14:                                               ; preds = %4, %0
  %15 = tail call i32 @putchar(i32 10)
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.32) #22
  %17 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %19, %14
  %20 = phi i64 [ %30, %19 ], [ 1, %14 ]
  %21 = load ptr, ptr @TOP, align 8, !tbaa !11
  %22 = getelementptr inbounds i64, ptr %21, i64 %20
  %23 = load i64, ptr %22, align 8, !tbaa !7
  %24 = freeze i64 %23
  %25 = urem i64 %24, 100
  %26 = trunc i64 %25 to i8
  %27 = udiv i8 %26, 10
  %28 = zext i8 %27 to i64
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.33, i64 noundef %28) #22
  %30 = add i64 %20, 1
  %31 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %19, !llvm.loop !65

33:                                               ; preds = %19, %14
  %34 = tail call i32 @putchar(i32 10)
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.32) #22
  %36 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %38, %33
  %39 = phi i64 [ %45, %38 ], [ 1, %33 ]
  %40 = load ptr, ptr @TOP, align 8, !tbaa !11
  %41 = getelementptr inbounds i64, ptr %40, i64 %39
  %42 = load i64, ptr %41, align 8, !tbaa !7
  %43 = urem i64 %42, 10
  %44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.33, i64 noundef %43) #22
  %45 = add i64 %39, 1
  %46 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %38, !llvm.loop !66

48:                                               ; preds = %38, %33
  %49 = tail call i32 @putchar(i32 10)
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.32) #22
  %51 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %53, %48
  %54 = phi i64 [ %61, %53 ], [ 1, %48 ]
  %55 = load ptr, ptr @vertPlane, align 8, !tbaa !11
  %56 = getelementptr inbounds i8, ptr %55, i64 %54
  %57 = load i8, ptr %56, align 1, !tbaa !59
  %58 = icmp eq i8 %57, 0
  %59 = select i1 %58, i32 32, i32 124
  %60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4.34, i32 noundef %59) #22
  %61 = add i64 %54, 1
  %62 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %53, !llvm.loop !67

64:                                               ; preds = %53, %48
  %65 = tail call i32 @putchar(i32 10)
  %66 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %180, label %68

68:                                               ; preds = %175, %64
  %69 = phi i64 [ %177, %175 ], [ 1, %64 ]
  %70 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.32) #22
  %71 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %73, %68
  %74 = phi i64 [ %86, %73 ], [ %71, %68 ]
  %75 = phi i64 [ %85, %73 ], [ 1, %68 ]
  %76 = load ptr, ptr @vertPlane, align 8, !tbaa !11
  %77 = mul i64 %74, %69
  %78 = add i64 %77, %75
  %79 = getelementptr inbounds i8, ptr %76, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !59
  %81 = and i8 %80, 4
  %82 = icmp eq i8 %81, 0
  %83 = select i1 %82, ptr @.str.6, ptr @.str.5
  %84 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %83) #22
  %85 = add i64 %75, 1
  %86 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %87 = icmp ugt i64 %85, %86
  br i1 %87, label %88, label %73, !llvm.loop !68

88:                                               ; preds = %73, %68
  %89 = tail call i32 @putchar(i32 10)
  %90 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %69) #22
  %91 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %155, label %93

93:                                               ; preds = %132, %88
  %94 = phi i64 [ %153, %132 ], [ %91, %88 ]
  %95 = phi i64 [ %152, %132 ], [ 1, %88 ]
  %96 = load ptr, ptr @horzPlane, align 8, !tbaa !11
  %97 = mul i64 %94, %69
  %98 = add i64 %97, %95
  %99 = getelementptr inbounds i8, ptr %96, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !59
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  %103 = load ptr, ptr @vertPlane, align 8, !tbaa !11
  %104 = getelementptr inbounds i8, ptr %103, i64 %98
  %105 = load i8, ptr %104, align 1, !tbaa !59
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  %108 = select i1 %107, i32 45, i32 61
  %109 = select i1 %107, i32 32, i32 94
  %110 = select i1 %102, i32 %109, i32 %108
  %111 = tail call i32 @putchar(i32 %110)
  %112 = load ptr, ptr @viaPlane, align 8, !tbaa !11
  %113 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %114 = mul i64 %113, %69
  %115 = add i64 %114, %95
  %116 = getelementptr inbounds i8, ptr %112, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !59
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %93
  %120 = load ptr, ptr @horzPlane, align 8, !tbaa !11
  %121 = getelementptr inbounds i8, ptr %120, i64 %115
  %122 = load i8, ptr %121, align 1, !tbaa !59
  %123 = icmp eq i8 %122, 0
  %124 = load ptr, ptr @vertPlane, align 8, !tbaa !11
  %125 = getelementptr inbounds i8, ptr %124, i64 %115
  %126 = load i8, ptr %125, align 1, !tbaa !59
  %127 = icmp eq i8 %126, 0
  br i1 %123, label %130, label %128

128:                                              ; preds = %119
  %129 = select i1 %127, i32 45, i32 43
  br label %132

130:                                              ; preds = %119
  %131 = select i1 %127, i32 32, i32 124
  br label %132

132:                                              ; preds = %130, %128, %93
  %133 = phi i32 [ 88, %93 ], [ %129, %128 ], [ %131, %130 ]
  %134 = tail call i32 @putchar(i32 %133)
  %135 = load ptr, ptr @horzPlane, align 8, !tbaa !11
  %136 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %137 = mul i64 %136, %69
  %138 = add i64 %137, %95
  %139 = getelementptr inbounds i8, ptr %135, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !59
  %141 = and i8 %140, 2
  %142 = icmp eq i8 %141, 0
  %143 = load ptr, ptr @vertPlane, align 8, !tbaa !11
  %144 = getelementptr inbounds i8, ptr %143, i64 %138
  %145 = load i8, ptr %144, align 1, !tbaa !59
  %146 = and i8 %145, 2
  %147 = icmp eq i8 %146, 0
  %148 = select i1 %147, i32 45, i32 61
  %149 = select i1 %147, i32 32, i32 94
  %150 = select i1 %142, i32 %149, i32 %148
  %151 = tail call i32 @putchar(i32 %150)
  %152 = add i64 %95, 1
  %153 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %154 = icmp ugt i64 %152, %153
  br i1 %154, label %155, label %93, !llvm.loop !69

155:                                              ; preds = %132, %88
  %156 = tail call i32 @putchar(i32 10)
  %157 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.32) #22
  %158 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %175, label %160

160:                                              ; preds = %160, %155
  %161 = phi i64 [ %173, %160 ], [ %158, %155 ]
  %162 = phi i64 [ %172, %160 ], [ 1, %155 ]
  %163 = load ptr, ptr @vertPlane, align 8, !tbaa !11
  %164 = mul i64 %161, %69
  %165 = add i64 %164, %162
  %166 = getelementptr inbounds i8, ptr %163, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !59
  %168 = and i8 %167, 8
  %169 = icmp eq i8 %168, 0
  %170 = select i1 %169, ptr @.str.6, ptr @.str.5
  %171 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %170) #22
  %172 = add i64 %162, 1
  %173 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %174 = icmp ugt i64 %172, %173
  br i1 %174, label %175, label %160, !llvm.loop !70

175:                                              ; preds = %160, %155
  %176 = tail call i32 @putchar(i32 10)
  %177 = add i64 %69, 1
  %178 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %179 = icmp ugt i64 %177, %178
  br i1 %179, label %180, label %68, !llvm.loop !71

180:                                              ; preds = %175, %64
  %181 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.32) #22
  %182 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %200, label %184

184:                                              ; preds = %184, %180
  %185 = phi i64 [ %198, %184 ], [ %182, %180 ]
  %186 = phi i64 [ %197, %184 ], [ 1, %180 ]
  %187 = load ptr, ptr @vertPlane, align 8, !tbaa !11
  %188 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %189 = add i64 %188, 1
  %190 = mul i64 %189, %185
  %191 = add i64 %190, %186
  %192 = getelementptr inbounds i8, ptr %187, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !59
  %194 = icmp eq i8 %193, 0
  %195 = select i1 %194, i32 32, i32 124
  %196 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4.34, i32 noundef %195) #22
  %197 = add i64 %186, 1
  %198 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %199 = icmp ugt i64 %197, %198
  br i1 %199, label %200, label %184, !llvm.loop !72

200:                                              ; preds = %184, %180
  %201 = tail call i32 @putchar(i32 10)
  %202 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.32) #22
  %203 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %215, label %205

205:                                              ; preds = %205, %200
  %206 = phi i64 [ %212, %205 ], [ 1, %200 ]
  %207 = load ptr, ptr @BOT, align 8, !tbaa !11
  %208 = getelementptr inbounds i64, ptr %207, i64 %206
  %209 = load i64, ptr %208, align 8, !tbaa !7
  %210 = udiv i64 %209, 100
  %211 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.33, i64 noundef %210) #22
  %212 = add i64 %206, 1
  %213 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %214 = icmp ugt i64 %212, %213
  br i1 %214, label %215, label %205, !llvm.loop !73

215:                                              ; preds = %205, %200
  %216 = tail call i32 @putchar(i32 10)
  %217 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.32) #22
  %218 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %234, label %220

220:                                              ; preds = %220, %215
  %221 = phi i64 [ %231, %220 ], [ 1, %215 ]
  %222 = load ptr, ptr @BOT, align 8, !tbaa !11
  %223 = getelementptr inbounds i64, ptr %222, i64 %221
  %224 = load i64, ptr %223, align 8, !tbaa !7
  %225 = freeze i64 %224
  %226 = urem i64 %225, 100
  %227 = trunc i64 %226 to i8
  %228 = udiv i8 %227, 10
  %229 = zext i8 %228 to i64
  %230 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.33, i64 noundef %229) #22
  %231 = add i64 %221, 1
  %232 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %233 = icmp ugt i64 %231, %232
  br i1 %233, label %234, label %220, !llvm.loop !74

234:                                              ; preds = %220, %215
  %235 = tail call i32 @putchar(i32 10)
  %236 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.32) #22
  %237 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %249, label %239

239:                                              ; preds = %239, %234
  %240 = phi i64 [ %246, %239 ], [ 1, %234 ]
  %241 = load ptr, ptr @BOT, align 8, !tbaa !11
  %242 = getelementptr inbounds i64, ptr %241, i64 %240
  %243 = load i64, ptr %242, align 8, !tbaa !7
  %244 = urem i64 %243, 10
  %245 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.33, i64 noundef %244) #22
  %246 = add i64 %240, 1
  %247 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %248 = icmp ugt i64 %246, %247
  br i1 %248, label %249, label %239, !llvm.loop !75

249:                                              ; preds = %239, %234
  %250 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @DrawNets() #19 {
  %1 = load ptr, ptr @horzPlane, align 8, !tbaa !11
  %2 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %3 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %4 = add i64 %3, 2
  %5 = shl i64 %2, 32
  %6 = add i64 %5, 4294967296
  %7 = mul i64 %6, %4
  %8 = ashr exact i64 %7, 32
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %8, i1 false)
  %9 = load ptr, ptr @vertPlane, align 8, !tbaa !11
  %10 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %11 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %12 = add i64 %11, 2
  %13 = shl i64 %10, 32
  %14 = add i64 %13, 4294967296
  %15 = mul i64 %14, %12
  %16 = ashr exact i64 %15, 32
  tail call void @llvm.memset.p0.i64(ptr align 1 %9, i8 0, i64 %16, i1 false)
  %17 = load ptr, ptr @viaPlane, align 8, !tbaa !11
  %18 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %19 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %20 = add i64 %19, 2
  %21 = shl i64 %18, 32
  %22 = add i64 %21, 4294967296
  %23 = mul i64 %22, %20
  %24 = ashr exact i64 %23, 32
  tail call void @llvm.memset.p0.i64(ptr align 1 %17, i8 0, i64 %24, i1 false)
  %25 = load ptr, ptr @mazeRoute, align 8, !tbaa !11
  %26 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %27 = shl i64 %26, 32
  %28 = add i64 %27, 4294967296
  %29 = ashr exact i64 %28, 32
  tail call void @llvm.memset.p0.i64(ptr align 1 %25, i8 0, i64 %29, i1 false)
  %30 = load i64, ptr @channelNets, align 8, !tbaa !7
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %0
  %33 = load ptr, ptr @FIRST, align 8, !tbaa !11
  %34 = load ptr, ptr @LAST, align 8, !tbaa !11
  br label %38

35:                                               ; preds = %55, %0
  %36 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %171, label %61

38:                                               ; preds = %55, %32
  %39 = phi i64 [ %56, %55 ], [ %30, %32 ]
  %40 = phi ptr [ %57, %55 ], [ %34, %32 ]
  %41 = phi ptr [ %58, %55 ], [ %33, %32 ]
  %42 = phi i64 [ %59, %55 ], [ 1, %32 ]
  %43 = getelementptr inbounds i64, ptr %41, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !7
  %45 = getelementptr inbounds i64, ptr %40, i64 %42
  %46 = load i64, ptr %45, align 8, !tbaa !7
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %38
  %49 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  %50 = getelementptr inbounds i64, ptr %49, i64 %42
  %51 = load i64, ptr %50, align 8, !tbaa !7
  tail call void @DrawSegment(ptr noundef %1, i64 noundef %44, i64 noundef %51, i64 noundef %46, i64 noundef %51) #22
  %52 = load ptr, ptr @FIRST, align 8, !tbaa !11
  %53 = load ptr, ptr @LAST, align 8, !tbaa !11
  %54 = load i64, ptr @channelNets, align 8, !tbaa !7
  br label %55

55:                                               ; preds = %48, %38
  %56 = phi i64 [ %39, %38 ], [ %54, %48 ]
  %57 = phi ptr [ %40, %38 ], [ %53, %48 ]
  %58 = phi ptr [ %41, %38 ], [ %52, %48 ]
  %59 = add i64 %42, 1
  %60 = icmp ugt i64 %59, %56
  br i1 %60, label %35, label %38, !llvm.loop !76

61:                                               ; preds = %166, %35
  %62 = phi i32 [ %167, %166 ], [ 0, %35 ]
  %63 = phi i64 [ %168, %166 ], [ 1, %35 ]
  %64 = load ptr, ptr @BOT, align 8, !tbaa !11
  %65 = getelementptr inbounds i64, ptr %64, i64 %63
  %66 = load i64, ptr %65, align 8, !tbaa !7
  %67 = icmp eq i64 %66, 0
  %68 = load ptr, ptr @TOP, align 8, !tbaa !11
  %69 = getelementptr inbounds i64, ptr %68, i64 %63
  %70 = load i64, ptr %69, align 8, !tbaa !7
  %71 = icmp eq i64 %70, 0
  br i1 %67, label %72, label %87

72:                                               ; preds = %61
  br i1 %71, label %166, label %73

73:                                               ; preds = %72
  %74 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  %75 = getelementptr inbounds i64, ptr %74, i64 %70
  %76 = load i64, ptr %75, align 8, !tbaa !7
  tail call void @DrawSegment(ptr noundef %9, i64 noundef %63, i64 noundef 0, i64 noundef %63, i64 noundef %76) #22
  %77 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  %78 = load ptr, ptr @TOP, align 8, !tbaa !11
  %79 = getelementptr inbounds i64, ptr %78, i64 %63
  %80 = load i64, ptr %79, align 8, !tbaa !7
  %81 = getelementptr inbounds i64, ptr %77, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !7
  %83 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %84 = mul i64 %83, %82
  %85 = add i64 %84, %63
  %86 = getelementptr inbounds i8, ptr %17, i64 %85
  store i8 1, ptr %86, align 1, !tbaa !59
  br label %166

87:                                               ; preds = %61
  br i1 %71, label %88, label %104

88:                                               ; preds = %87
  %89 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  %90 = getelementptr inbounds i64, ptr %89, i64 %66
  %91 = load i64, ptr %90, align 8, !tbaa !7
  %92 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %93 = add i64 %92, 1
  tail call void @DrawSegment(ptr noundef %9, i64 noundef %63, i64 noundef %91, i64 noundef %63, i64 noundef %93) #22
  %94 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  %95 = load ptr, ptr @BOT, align 8, !tbaa !11
  %96 = getelementptr inbounds i64, ptr %95, i64 %63
  %97 = load i64, ptr %96, align 8, !tbaa !7
  %98 = getelementptr inbounds i64, ptr %94, i64 %97
  %99 = load i64, ptr %98, align 8, !tbaa !7
  %100 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %101 = mul i64 %100, %99
  %102 = add i64 %101, %63
  %103 = getelementptr inbounds i8, ptr %17, i64 %102
  store i8 1, ptr %103, align 1, !tbaa !59
  br label %166

104:                                              ; preds = %87
  %105 = icmp eq i64 %70, %66
  br i1 %105, label %106, label %127

106:                                              ; preds = %104
  %107 = load ptr, ptr @FIRST, align 8, !tbaa !11
  %108 = getelementptr inbounds i64, ptr %107, i64 %66
  %109 = load i64, ptr %108, align 8, !tbaa !7
  %110 = load ptr, ptr @LAST, align 8, !tbaa !11
  %111 = getelementptr inbounds i64, ptr %110, i64 %66
  %112 = load i64, ptr %111, align 8, !tbaa !7
  %113 = icmp eq i64 %109, %112
  %114 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %115 = add i64 %114, 1
  tail call void @DrawSegment(ptr noundef %9, i64 noundef %63, i64 noundef 0, i64 noundef %63, i64 noundef %115) #22
  br i1 %113, label %166, label %116

116:                                              ; preds = %106
  %117 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  %118 = load ptr, ptr @BOT, align 8, !tbaa !11
  %119 = getelementptr inbounds i64, ptr %118, i64 %63
  %120 = load i64, ptr %119, align 8, !tbaa !7
  %121 = getelementptr inbounds i64, ptr %117, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !7
  %123 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %124 = mul i64 %123, %122
  %125 = add i64 %124, %63
  %126 = getelementptr inbounds i8, ptr %17, i64 %125
  store i8 1, ptr %126, align 1, !tbaa !59
  br label %166

127:                                              ; preds = %104
  %128 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  %129 = getelementptr inbounds i64, ptr %128, i64 %70
  %130 = load i64, ptr %129, align 8, !tbaa !7
  %131 = getelementptr inbounds i64, ptr %128, i64 %66
  %132 = load i64, ptr %131, align 8, !tbaa !7
  %133 = icmp ult i64 %130, %132
  br i1 %133, label %134, label %163

134:                                              ; preds = %127
  tail call void @DrawSegment(ptr noundef %9, i64 noundef %63, i64 noundef 0, i64 noundef %63, i64 noundef %130) #22
  %135 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  %136 = load ptr, ptr @TOP, align 8, !tbaa !11
  %137 = getelementptr inbounds i64, ptr %136, i64 %63
  %138 = load i64, ptr %137, align 8, !tbaa !7
  %139 = getelementptr inbounds i64, ptr %135, i64 %138
  %140 = load i64, ptr %139, align 8, !tbaa !7
  %141 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %142 = mul i64 %141, %140
  %143 = add i64 %142, %63
  %144 = getelementptr inbounds i8, ptr %17, i64 %143
  store i8 1, ptr %144, align 1, !tbaa !59
  %145 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  %146 = load ptr, ptr @BOT, align 8, !tbaa !11
  %147 = getelementptr inbounds i64, ptr %146, i64 %63
  %148 = load i64, ptr %147, align 8, !tbaa !7
  %149 = getelementptr inbounds i64, ptr %145, i64 %148
  %150 = load i64, ptr %149, align 8, !tbaa !7
  %151 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %152 = add i64 %151, 1
  tail call void @DrawSegment(ptr noundef %9, i64 noundef %63, i64 noundef %150, i64 noundef %63, i64 noundef %152) #22
  %153 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  %154 = load ptr, ptr @BOT, align 8, !tbaa !11
  %155 = getelementptr inbounds i64, ptr %154, i64 %63
  %156 = load i64, ptr %155, align 8, !tbaa !7
  %157 = getelementptr inbounds i64, ptr %153, i64 %156
  %158 = load i64, ptr %157, align 8, !tbaa !7
  %159 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %160 = mul i64 %159, %158
  %161 = add i64 %160, %63
  %162 = getelementptr inbounds i8, ptr %17, i64 %161
  store i8 1, ptr %162, align 1, !tbaa !59
  br label %166

163:                                              ; preds = %127
  %164 = getelementptr inbounds i8, ptr %25, i64 %63
  store i8 1, ptr %164, align 1, !tbaa !59
  %165 = add nsw i32 %62, 1
  br label %166

166:                                              ; preds = %163, %134, %116, %106, %88, %73, %72
  %167 = phi i32 [ %62, %72 ], [ %62, %73 ], [ %62, %88 ], [ %62, %116 ], [ %62, %134 ], [ %165, %163 ], [ %62, %106 ]
  %168 = add i64 %63, 1
  %169 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %170 = icmp ugt i64 %168, %169
  br i1 %170, label %171, label %61, !llvm.loop !77

171:                                              ; preds = %166, %35
  %172 = phi i32 [ 0, %35 ], [ %167, %166 ]
  ret i32 %172
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @Maze1() #19 {
  %1 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %103, label %3

3:                                                ; preds = %98, %0
  %4 = phi i64 [ %101, %98 ], [ %1, %0 ]
  %5 = phi i64 [ %100, %98 ], [ 1, %0 ]
  %6 = phi i32 [ %99, %98 ], [ 0, %0 ]
  %7 = load ptr, ptr @mazeRoute, align 8, !tbaa !11
  %8 = getelementptr inbounds i8, ptr %7, i64 %5
  %9 = load i8, ptr %8, align 1, !tbaa !59
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %98, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  %13 = load ptr, ptr @TOP, align 8, !tbaa !11
  %14 = getelementptr inbounds i64, ptr %13, i64 %5
  %15 = load i64, ptr %14, align 8, !tbaa !7
  %16 = getelementptr inbounds i64, ptr %12, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !7
  %18 = load ptr, ptr @BOT, align 8, !tbaa !11
  %19 = getelementptr inbounds i64, ptr %18, i64 %5
  %20 = load i64, ptr %19, align 8, !tbaa !7
  %21 = getelementptr inbounds i64, ptr %12, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !7
  %23 = icmp ugt i64 %5, 1
  %24 = icmp ugt i64 %22, 1
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %42

26:                                               ; preds = %11
  %27 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %28 = add i64 %27, 1
  %29 = tail call fastcc i32 @Maze1Mech(i64 noundef %5, i64 noundef %28, i64 noundef %22, i64 noundef 0, i64 noundef %17, i32 noundef -1, i32 noundef -1) #22, !range !78
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i64, ptr @channelColumns, align 8, !tbaa !7
  br label %42

33:                                               ; preds = %26
  %34 = load ptr, ptr @mazeRoute, align 8, !tbaa !11
  %35 = getelementptr inbounds i8, ptr %34, i64 %5
  store i8 0, ptr %35, align 1, !tbaa !59
  %36 = load ptr, ptr @TOP, align 8, !tbaa !11
  %37 = getelementptr inbounds i64, ptr %36, i64 %5
  %38 = load i64, ptr %37, align 8, !tbaa !7
  tail call fastcc void @CleanNet(i64 noundef %38) #22
  %39 = load ptr, ptr @BOT, align 8, !tbaa !11
  %40 = getelementptr inbounds i64, ptr %39, i64 %5
  %41 = load i64, ptr %40, align 8, !tbaa !7
  tail call fastcc void @CleanNet(i64 noundef %41) #22
  br label %98

42:                                               ; preds = %31, %11
  %43 = phi i64 [ %32, %31 ], [ %4, %11 ]
  %44 = icmp ult i64 %5, %43
  %45 = select i1 %44, i1 %24, i1 false
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %48 = add i64 %47, 1
  %49 = tail call fastcc i32 @Maze1Mech(i64 noundef %5, i64 noundef %48, i64 noundef %22, i64 noundef 0, i64 noundef %17, i32 noundef 1, i32 noundef -1) #22, !range !78
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr @mazeRoute, align 8, !tbaa !11
  %53 = getelementptr inbounds i8, ptr %52, i64 %5
  store i8 0, ptr %53, align 1, !tbaa !59
  %54 = load ptr, ptr @TOP, align 8, !tbaa !11
  %55 = getelementptr inbounds i64, ptr %54, i64 %5
  %56 = load i64, ptr %55, align 8, !tbaa !7
  tail call fastcc void @CleanNet(i64 noundef %56) #22
  %57 = load ptr, ptr @BOT, align 8, !tbaa !11
  %58 = getelementptr inbounds i64, ptr %57, i64 %5
  %59 = load i64, ptr %58, align 8, !tbaa !7
  tail call fastcc void @CleanNet(i64 noundef %59) #22
  br label %98

60:                                               ; preds = %46, %42
  br i1 %23, label %61, label %77

61:                                               ; preds = %60
  %62 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %63 = icmp ult i64 %17, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = add i64 %62, 1
  %66 = tail call fastcc i32 @Maze1Mech(i64 noundef %5, i64 noundef 0, i64 noundef %17, i64 noundef %65, i64 noundef %22, i32 noundef -1, i32 noundef 1) #22, !range !78
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr @mazeRoute, align 8, !tbaa !11
  %70 = getelementptr inbounds i8, ptr %69, i64 %5
  store i8 0, ptr %70, align 1, !tbaa !59
  %71 = load ptr, ptr @TOP, align 8, !tbaa !11
  %72 = getelementptr inbounds i64, ptr %71, i64 %5
  %73 = load i64, ptr %72, align 8, !tbaa !7
  tail call fastcc void @CleanNet(i64 noundef %73) #22
  %74 = load ptr, ptr @BOT, align 8, !tbaa !11
  %75 = getelementptr inbounds i64, ptr %74, i64 %5
  %76 = load i64, ptr %75, align 8, !tbaa !7
  tail call fastcc void @CleanNet(i64 noundef %76) #22
  br label %98

77:                                               ; preds = %64, %61, %60
  %78 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %79 = icmp ult i64 %5, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %77
  %81 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %82 = icmp ult i64 %17, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = add i64 %81, 1
  %85 = tail call fastcc i32 @Maze1Mech(i64 noundef %5, i64 noundef 0, i64 noundef %17, i64 noundef %84, i64 noundef %22, i32 noundef 1, i32 noundef 1) #22, !range !78
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr @mazeRoute, align 8, !tbaa !11
  %89 = getelementptr inbounds i8, ptr %88, i64 %5
  store i8 0, ptr %89, align 1, !tbaa !59
  %90 = load ptr, ptr @TOP, align 8, !tbaa !11
  %91 = getelementptr inbounds i64, ptr %90, i64 %5
  %92 = load i64, ptr %91, align 8, !tbaa !7
  tail call fastcc void @CleanNet(i64 noundef %92) #22
  %93 = load ptr, ptr @BOT, align 8, !tbaa !11
  %94 = getelementptr inbounds i64, ptr %93, i64 %5
  %95 = load i64, ptr %94, align 8, !tbaa !7
  tail call fastcc void @CleanNet(i64 noundef %95) #22
  br label %98

96:                                               ; preds = %83, %80, %77
  %97 = add nsw i32 %6, 1
  br label %98

98:                                               ; preds = %96, %87, %68, %51, %33, %3
  %99 = phi i32 [ %6, %33 ], [ %6, %51 ], [ %6, %68 ], [ %6, %87 ], [ %97, %96 ], [ %6, %3 ]
  %100 = add i64 %5, 1
  %101 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %102 = icmp ugt i64 %100, %101
  br i1 %102, label %103, label %3, !llvm.loop !79

103:                                              ; preds = %98, %0
  %104 = phi i32 [ 0, %0 ], [ %99, %98 ]
  ret i32 %104
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @Maze1Mech(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #19 {
  %8 = load ptr, ptr @vertPlane, align 8, !tbaa !11
  %9 = tail call i32 @SegmentFree(ptr noundef %8, i64 noundef %0, i64 noundef %1, i64 noundef %0, i64 noundef %2) #22, !range !78
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %54, label %11

11:                                               ; preds = %7
  %12 = sext i32 %6 to i64
  %13 = add i64 %12, %2
  %14 = tail call i32 @SegmentFree(ptr noundef %8, i64 noundef %0, i64 noundef %3, i64 noundef %0, i64 noundef %13) #22, !range !78
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %54, label %16

16:                                               ; preds = %11
  %17 = sext i32 %5 to i64
  %18 = add i64 %17, %0
  %19 = tail call i32 @SegmentFree(ptr noundef %8, i64 noundef %0, i64 noundef %13, i64 noundef %18, i64 noundef %13) #22, !range !78
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %54, label %21

21:                                               ; preds = %16
  %22 = tail call i32 @SegmentFree(ptr noundef %8, i64 noundef %18, i64 noundef %13, i64 noundef %18, i64 noundef %4) #22, !range !78
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @TOP, align 8, !tbaa !11
  %26 = getelementptr inbounds i64, ptr %25, i64 %18
  %27 = load i64, ptr %26, align 8, !tbaa !7
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr @BOT, align 8, !tbaa !11
  %31 = getelementptr inbounds i64, ptr %30, i64 %18
  %32 = load i64, ptr %31, align 8, !tbaa !7
  %33 = icmp eq i64 %32, 0
  %34 = icmp eq i64 %27, %32
  %35 = or i1 %33, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  %38 = getelementptr inbounds i64, ptr %37, i64 %27
  %39 = load i64, ptr %38, align 8, !tbaa !7
  %40 = getelementptr inbounds i64, ptr %37, i64 %32
  %41 = load i64, ptr %40, align 8, !tbaa !7
  %42 = icmp ugt i64 %39, %41
  br i1 %42, label %54, label %43

43:                                               ; preds = %36, %29, %24
  tail call void @DrawSegment(ptr noundef %8, i64 noundef %0, i64 noundef %1, i64 noundef %0, i64 noundef %2) #22
  %44 = load ptr, ptr @viaPlane, align 8, !tbaa !11
  %45 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %46 = mul i64 %45, %2
  %47 = add i64 %46, %0
  %48 = getelementptr inbounds i8, ptr %44, i64 %47
  store i8 1, ptr %48, align 1, !tbaa !59
  tail call void @DrawSegment(ptr noundef %8, i64 noundef %0, i64 noundef %3, i64 noundef %0, i64 noundef %13) #22
  tail call void @DrawSegment(ptr noundef %8, i64 noundef %0, i64 noundef %13, i64 noundef %18, i64 noundef %13) #22
  tail call void @DrawSegment(ptr noundef %8, i64 noundef %18, i64 noundef %13, i64 noundef %18, i64 noundef %4) #22
  %49 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %50 = mul i64 %49, %4
  %51 = add i64 %50, %18
  %52 = getelementptr inbounds i8, ptr %44, i64 %51
  store i8 1, ptr %52, align 1, !tbaa !59
  %53 = load ptr, ptr @horzPlane, align 8, !tbaa !11
  tail call void @DrawSegment(ptr noundef %53, i64 noundef %18, i64 noundef %4, i64 noundef %0, i64 noundef %4) #22
  br label %54

54:                                               ; preds = %43, %36, %21, %16, %11, %7
  %55 = phi i32 [ 1, %43 ], [ 0, %36 ], [ 0, %21 ], [ 0, %16 ], [ 0, %11 ], [ 0, %7 ]
  ret i32 %55
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @CleanNet(i64 noundef %0) unnamed_addr #19 {
  %2 = load ptr, ptr @FIRST, align 8, !tbaa !11
  %3 = getelementptr inbounds i64, ptr %2, i64 %0
  %4 = load i64, ptr %3, align 8, !tbaa !7
  %5 = load ptr, ptr @LAST, align 8, !tbaa !11
  %6 = getelementptr inbounds i64, ptr %5, i64 %0
  %7 = load i64, ptr %6, align 8, !tbaa !7
  %8 = icmp ugt i64 %4, %7
  br i1 %8, label %29, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr @TOP, align 8, !tbaa !11
  %11 = load ptr, ptr @BOT, align 8
  %12 = load ptr, ptr @mazeRoute, align 8
  br label %13

13:                                               ; preds = %26, %9
  %14 = phi i64 [ %4, %9 ], [ %27, %26 ]
  %15 = getelementptr inbounds i64, ptr %10, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !7
  %17 = icmp eq i64 %16, %0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds i64, ptr %11, i64 %14
  %20 = load i64, ptr %19, align 8, !tbaa !7
  %21 = icmp eq i64 %20, %0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18, %13
  %23 = getelementptr inbounds i8, ptr %12, i64 %14
  %24 = load i8, ptr %23, align 1, !tbaa !59
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %107

26:                                               ; preds = %22, %18
  %27 = add i64 %14, 1
  %28 = icmp ugt i64 %27, %7
  br i1 %28, label %29, label %13, !llvm.loop !80

29:                                               ; preds = %26, %1
  %30 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  %31 = getelementptr inbounds i64, ptr %30, i64 %0
  %32 = load i64, ptr %31, align 8, !tbaa !7
  %33 = load ptr, ptr @horzPlane, align 8, !tbaa !11
  %34 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %35 = mul i64 %34, %32
  br label %36

36:                                               ; preds = %36, %29
  %37 = phi i64 [ %4, %29 ], [ %43, %36 ]
  %38 = add i64 %35, %37
  %39 = getelementptr inbounds i8, ptr %33, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !59
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  %43 = add i64 %37, -1
  br i1 %42, label %44, label %36, !llvm.loop !81

44:                                               ; preds = %44, %36
  %.lcssa1 = phi i64 [ %.lcssa1, %44 ], [ %37, %36 ]
  %45 = phi i64 [ %51, %44 ], [ %7, %36 ]
  %46 = add i64 %45, %35
  %47 = getelementptr inbounds i8, ptr %33, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !59
  %49 = and i8 %48, 2
  %50 = icmp eq i8 %49, 0
  %51 = add i64 %45, 1
  br i1 %50, label %52, label %44, !llvm.loop !82

52:                                               ; preds = %44
  %.lcssa1.lcssa = phi i64 [ %.lcssa1, %44 ]
  %.lcssa = phi i64 [ %45, %44 ]
  %53 = icmp ugt i64 %.lcssa1.lcssa, %.lcssa
  br i1 %53, label %70, label %54

54:                                               ; preds = %52
  %55 = load ptr, ptr @viaPlane, align 8, !tbaa !11
  br label %56

56:                                               ; preds = %56, %54
  %57 = phi i64 [ %.lcssa1.lcssa, %54 ], [ %68, %56 ]
  %58 = phi i64 [ 0, %54 ], [ %67, %56 ]
  %59 = phi i64 [ 9999999, %54 ], [ %66, %56 ]
  %60 = add i64 %57, %35
  %61 = getelementptr inbounds i8, ptr %55, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !59
  %63 = icmp eq i8 %62, 0
  %64 = tail call i64 @llvm.umin.i64(i64 %57, i64 %59)
  %65 = tail call i64 @llvm.umax.i64(i64 %57, i64 %58)
  %66 = select i1 %63, i64 %59, i64 %64
  %67 = select i1 %63, i64 %58, i64 %65
  %68 = add i64 %57, 1
  %69 = icmp ugt i64 %68, %.lcssa
  br i1 %69, label %70, label %56, !llvm.loop !83

70:                                               ; preds = %56, %52
  %71 = phi i64 [ 9999999, %52 ], [ %66, %56 ]
  %72 = phi i64 [ 0, %52 ], [ %67, %56 ]
  %73 = icmp ult i64 %.lcssa1.lcssa, %71
  br i1 %73, label %74, label %89

74:                                               ; preds = %74, %70
  %75 = phi i64 [ %80, %74 ], [ %.lcssa1.lcssa, %70 ]
  %76 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %77 = mul i64 %76, %32
  %78 = add i64 %77, %75
  %79 = getelementptr inbounds i8, ptr %33, i64 %78
  store i8 0, ptr %79, align 1, !tbaa !59
  %80 = add nuw nsw i64 %75, 1
  %81 = icmp ult i64 %80, %71
  br i1 %81, label %74, label %82, !llvm.loop !84

82:                                               ; preds = %74
  %83 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %84 = mul i64 %83, %32
  %85 = add i64 %84, %71
  %86 = getelementptr inbounds i8, ptr %33, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !59
  %88 = and i8 %87, -2
  store i8 %88, ptr %86, align 1, !tbaa !59
  br label %89

89:                                               ; preds = %82, %70
  %90 = icmp ult i64 %72, %.lcssa
  br i1 %90, label %91, label %107

91:                                               ; preds = %89
  %92 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %93 = mul i64 %92, %32
  %94 = add i64 %93, %72
  %95 = getelementptr inbounds i8, ptr %33, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !59
  %97 = and i8 %96, -3
  store i8 %97, ptr %95, align 1, !tbaa !59
  %98 = add nuw i64 %72, 1
  br label %99

99:                                               ; preds = %99, %91
  %100 = phi i64 [ %105, %99 ], [ %98, %91 ]
  %101 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %102 = mul i64 %101, %32
  %103 = add i64 %102, %100
  %104 = getelementptr inbounds i8, ptr %33, i64 %103
  store i8 0, ptr %104, align 1, !tbaa !59
  %105 = add i64 %100, 1
  %106 = icmp ugt i64 %105, %.lcssa
  br i1 %106, label %107, label %99, !llvm.loop !85

107:                                              ; preds = %99, %89, %22
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @ExtendOK(i64 noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #18 {
  %7 = tail call i64 @llvm.umin.i64(i64 %2, i64 %4)
  %8 = tail call i64 @llvm.umin.i64(i64 %3, i64 %5)
  %9 = tail call i64 @llvm.umax.i64(i64 %2, i64 %4)
  %10 = load ptr, ptr @FIRST, align 8, !tbaa !11
  %11 = getelementptr inbounds i64, ptr %10, i64 %0
  %12 = load i64, ptr %11, align 8, !tbaa !7
  %13 = icmp ult i64 %7, %12
  %14 = load ptr, ptr @LAST, align 8, !tbaa !11
  %15 = getelementptr inbounds i64, ptr %14, i64 %0
  %16 = load i64, ptr %15, align 8, !tbaa !7
  %17 = icmp ugt i64 %9, %16
  br i1 %13, label %19, label %18

18:                                               ; preds = %6
  br i1 %17, label %24, label %27

19:                                               ; preds = %6
  %20 = add i64 %12, -1
  %21 = tail call i32 @SegmentFree(ptr noundef %1, i64 noundef %7, i64 noundef %8, i64 noundef %20, i64 noundef %8) #22, !range !78
  br i1 %17, label %22, label %27

22:                                               ; preds = %19
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %22, %18
  %25 = add nuw i64 %16, 1
  %26 = tail call i32 @SegmentFree(ptr noundef %1, i64 noundef %25, i64 noundef %8, i64 noundef %9, i64 noundef %8) #22, !range !78
  br label %27

27:                                               ; preds = %24, %22, %19, %18
  %28 = phi i32 [ 1, %18 ], [ 0, %22 ], [ %21, %19 ], [ %26, %24 ]
  ret i32 %28
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @Maze2() #19 {
  %1 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %120, label %3

3:                                                ; preds = %115, %0
  %4 = phi i64 [ %118, %115 ], [ %1, %0 ]
  %5 = phi i64 [ %117, %115 ], [ 1, %0 ]
  %6 = phi i32 [ %116, %115 ], [ 0, %0 ]
  %7 = load ptr, ptr @mazeRoute, align 8, !tbaa !11
  %8 = getelementptr inbounds i8, ptr %7, i64 %5
  %9 = load i8, ptr %8, align 1, !tbaa !59
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %115, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr @netsAssign, align 8, !tbaa !11
  %13 = load ptr, ptr @TOP, align 8, !tbaa !11
  %14 = getelementptr inbounds i64, ptr %13, i64 %5
  %15 = load i64, ptr %14, align 8, !tbaa !7
  %16 = getelementptr inbounds i64, ptr %12, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !7
  %18 = load ptr, ptr @BOT, align 8, !tbaa !11
  %19 = getelementptr inbounds i64, ptr %18, i64 %5
  %20 = load i64, ptr %19, align 8, !tbaa !7
  %21 = getelementptr inbounds i64, ptr %12, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !7
  %23 = icmp ugt i64 %5, 1
  %24 = icmp ugt i64 %22, 1
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %44

26:                                               ; preds = %11
  %27 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %28 = add i64 %27, 1
  %29 = add i64 %5, -1
  %30 = add i64 %22, -1
  %31 = tail call fastcc i32 @Maze2Mech(i64 noundef %15, i64 noundef %5, i64 noundef %28, i64 noundef %22, i64 noundef 0, i64 noundef %17, i64 noundef %29, i64 noundef 1, i32 noundef -1, i64 noundef 1, i64 noundef %30) #22
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i64, ptr @channelColumns, align 8, !tbaa !7
  br label %44

35:                                               ; preds = %26
  %36 = load ptr, ptr @mazeRoute, align 8, !tbaa !11
  %37 = getelementptr inbounds i8, ptr %36, i64 %5
  store i8 0, ptr %37, align 1, !tbaa !59
  %38 = load ptr, ptr @TOP, align 8, !tbaa !11
  %39 = getelementptr inbounds i64, ptr %38, i64 %5
  %40 = load i64, ptr %39, align 8, !tbaa !7
  tail call fastcc void @CleanNet(i64 noundef %40) #22
  %41 = load ptr, ptr @BOT, align 8, !tbaa !11
  %42 = getelementptr inbounds i64, ptr %41, i64 %5
  %43 = load i64, ptr %42, align 8, !tbaa !7
  tail call fastcc void @CleanNet(i64 noundef %43) #22
  br label %115

44:                                               ; preds = %33, %11
  %45 = phi i64 [ %34, %33 ], [ %4, %11 ]
  %46 = icmp ult i64 %5, %45
  %47 = select i1 %46, i1 %24, i1 false
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load ptr, ptr @TOP, align 8, !tbaa !11
  %50 = getelementptr inbounds i64, ptr %49, i64 %5
  %51 = load i64, ptr %50, align 8, !tbaa !7
  %52 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %53 = add i64 %52, 1
  %54 = add nuw i64 %5, 1
  %55 = add i64 %22, -1
  %56 = tail call fastcc i32 @Maze2Mech(i64 noundef %51, i64 noundef %5, i64 noundef %53, i64 noundef %22, i64 noundef 0, i64 noundef %17, i64 noundef %54, i64 noundef %45, i32 noundef 1, i64 noundef 1, i64 noundef %55) #22
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %48
  %59 = load ptr, ptr @mazeRoute, align 8, !tbaa !11
  %60 = getelementptr inbounds i8, ptr %59, i64 %5
  store i8 0, ptr %60, align 1, !tbaa !59
  %61 = load ptr, ptr @TOP, align 8, !tbaa !11
  %62 = getelementptr inbounds i64, ptr %61, i64 %5
  %63 = load i64, ptr %62, align 8, !tbaa !7
  tail call fastcc void @CleanNet(i64 noundef %63) #22
  %64 = load ptr, ptr @BOT, align 8, !tbaa !11
  %65 = getelementptr inbounds i64, ptr %64, i64 %5
  %66 = load i64, ptr %65, align 8, !tbaa !7
  tail call fastcc void @CleanNet(i64 noundef %66) #22
  br label %115

67:                                               ; preds = %48, %44
  br i1 %23, label %68, label %89

68:                                               ; preds = %67
  %69 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %70 = icmp ult i64 %17, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = load ptr, ptr @BOT, align 8, !tbaa !11
  %73 = getelementptr inbounds i64, ptr %72, i64 %5
  %74 = load i64, ptr %73, align 8, !tbaa !7
  %75 = add i64 %69, 1
  %76 = add i64 %5, -1
  %77 = add nuw i64 %17, 1
  %78 = tail call fastcc i32 @Maze2Mech(i64 noundef %74, i64 noundef %5, i64 noundef 0, i64 noundef %17, i64 noundef %75, i64 noundef %22, i64 noundef %76, i64 noundef 1, i32 noundef -1, i64 noundef %77, i64 noundef %69) #22
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %71
  %81 = load ptr, ptr @mazeRoute, align 8, !tbaa !11
  %82 = getelementptr inbounds i8, ptr %81, i64 %5
  store i8 0, ptr %82, align 1, !tbaa !59
  %83 = load ptr, ptr @TOP, align 8, !tbaa !11
  %84 = getelementptr inbounds i64, ptr %83, i64 %5
  %85 = load i64, ptr %84, align 8, !tbaa !7
  tail call fastcc void @CleanNet(i64 noundef %85) #22
  %86 = load ptr, ptr @BOT, align 8, !tbaa !11
  %87 = getelementptr inbounds i64, ptr %86, i64 %5
  %88 = load i64, ptr %87, align 8, !tbaa !7
  tail call fastcc void @CleanNet(i64 noundef %88) #22
  br label %115

89:                                               ; preds = %71, %68, %67
  %90 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %91 = icmp ult i64 %5, %90
  br i1 %91, label %92, label %113

92:                                               ; preds = %89
  %93 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %94 = icmp ult i64 %17, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %92
  %96 = load ptr, ptr @BOT, align 8, !tbaa !11
  %97 = getelementptr inbounds i64, ptr %96, i64 %5
  %98 = load i64, ptr %97, align 8, !tbaa !7
  %99 = add i64 %93, 1
  %100 = add nuw i64 %5, 1
  %101 = add nuw i64 %17, 1
  %102 = tail call fastcc i32 @Maze2Mech(i64 noundef %98, i64 noundef %5, i64 noundef 0, i64 noundef %17, i64 noundef %99, i64 noundef %22, i64 noundef %100, i64 noundef %90, i32 noundef 1, i64 noundef %101, i64 noundef %93) #22
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %95
  %105 = load ptr, ptr @mazeRoute, align 8, !tbaa !11
  %106 = getelementptr inbounds i8, ptr %105, i64 %5
  store i8 0, ptr %106, align 1, !tbaa !59
  %107 = load ptr, ptr @TOP, align 8, !tbaa !11
  %108 = getelementptr inbounds i64, ptr %107, i64 %5
  %109 = load i64, ptr %108, align 8, !tbaa !7
  tail call fastcc void @CleanNet(i64 noundef %109) #22
  %110 = load ptr, ptr @BOT, align 8, !tbaa !11
  %111 = getelementptr inbounds i64, ptr %110, i64 %5
  %112 = load i64, ptr %111, align 8, !tbaa !7
  tail call fastcc void @CleanNet(i64 noundef %112) #22
  br label %115

113:                                              ; preds = %95, %92, %89
  %114 = add nsw i32 %6, 1
  br label %115

115:                                              ; preds = %113, %104, %80, %58, %35, %3
  %116 = phi i32 [ %6, %35 ], [ %6, %58 ], [ %6, %80 ], [ %6, %104 ], [ %114, %113 ], [ %6, %3 ]
  %117 = add i64 %5, 1
  %118 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %119 = icmp ugt i64 %117, %118
  br i1 %119, label %120, label %3, !llvm.loop !86

120:                                              ; preds = %115, %0
  %121 = phi i32 [ 0, %0 ], [ %116, %115 ]
  ret i32 %121
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @Maze2Mech(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) unnamed_addr #19 {
  %12 = sext i32 %8 to i64
  %13 = add i64 %10, 1
  %14 = icmp eq i64 %13, %9
  br i1 %14, label %82, label %15

15:                                               ; preds = %11
  %16 = add i64 %12, %7
  %17 = icmp eq i64 %16, %6
  %18 = load ptr, ptr @horzPlane, align 8
  %19 = load ptr, ptr @vertPlane, align 8
  %20 = add i64 %5, -1
  %21 = load ptr, ptr @TOP, align 8
  %22 = load ptr, ptr @BOT, align 8
  %23 = load ptr, ptr @netsAssign, align 8
  br label %24

24:                                               ; preds = %79, %15
  %25 = phi i64 [ %9, %15 ], [ %80, %79 ]
  br i1 %17, label %79, label %26

26:                                               ; preds = %76, %24
  %27 = phi i64 [ %77, %76 ], [ %6, %24 ]
  %28 = tail call i32 @SegmentFree(ptr noundef %18, i64 noundef %1, i64 noundef %25, i64 noundef %27, i64 noundef %25) #22, !range !78
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %79, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @SegmentFree(ptr noundef %19, i64 noundef %1, i64 noundef %2, i64 noundef %1, i64 noundef %3) #22, !range !78
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %76, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @SegmentFree(ptr noundef %19, i64 noundef %1, i64 noundef %4, i64 noundef %1, i64 noundef %25) #22, !range !78
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %76, label %36

36:                                               ; preds = %33
  %37 = tail call i32 @SegmentFree(ptr noundef %19, i64 noundef %27, i64 noundef %25, i64 noundef %27, i64 noundef %20) #22, !range !78
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %76, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds i64, ptr %21, i64 %27
  %41 = load i64, ptr %40, align 8, !tbaa !7
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds i64, ptr %22, i64 %27
  %45 = load i64, ptr %44, align 8, !tbaa !7
  %46 = icmp eq i64 %45, 0
  %47 = icmp eq i64 %41, %45
  %48 = or i1 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds i64, ptr %23, i64 %41
  %51 = load i64, ptr %50, align 8, !tbaa !7
  %52 = getelementptr inbounds i64, ptr %23, i64 %45
  %53 = load i64, ptr %52, align 8, !tbaa !7
  %54 = icmp ugt i64 %51, %53
  br i1 %54, label %76, label %55

55:                                               ; preds = %49, %43, %39
  %56 = tail call i32 @ExtendOK(i64 noundef %0, ptr noundef %18, i64 noundef %27, i64 noundef %5, i64 noundef %1, i64 noundef %5) #22, !range !78
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %55
  %.lcssa1 = phi i64 [ %25, %55 ]
  %.lcssa = phi i64 [ %27, %55 ]
  tail call void @DrawSegment(ptr noundef %19, i64 noundef %1, i64 noundef %2, i64 noundef %1, i64 noundef %3) #22
  %59 = load ptr, ptr @viaPlane, align 8, !tbaa !11
  %60 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %61 = mul i64 %60, %3
  %62 = add i64 %61, %1
  %63 = getelementptr inbounds i8, ptr %59, i64 %62
  store i8 1, ptr %63, align 1, !tbaa !59
  tail call void @DrawSegment(ptr noundef %19, i64 noundef %1, i64 noundef %4, i64 noundef %1, i64 noundef %.lcssa1) #22
  %64 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %65 = mul i64 %64, %.lcssa1
  %66 = add i64 %65, %1
  %67 = getelementptr inbounds i8, ptr %59, i64 %66
  store i8 1, ptr %67, align 1, !tbaa !59
  tail call void @DrawSegment(ptr noundef %18, i64 noundef %1, i64 noundef %.lcssa1, i64 noundef %.lcssa, i64 noundef %.lcssa1) #22
  %68 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %69 = mul i64 %68, %.lcssa1
  %70 = add i64 %69, %.lcssa
  %71 = getelementptr inbounds i8, ptr %59, i64 %70
  store i8 1, ptr %71, align 1, !tbaa !59
  tail call void @DrawSegment(ptr noundef %19, i64 noundef %.lcssa, i64 noundef %.lcssa1, i64 noundef %.lcssa, i64 noundef %5) #22
  %72 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %73 = mul i64 %72, %5
  %74 = add i64 %73, %.lcssa
  %75 = getelementptr inbounds i8, ptr %59, i64 %74
  store i8 1, ptr %75, align 1, !tbaa !59
  tail call void @DrawSegment(ptr noundef %18, i64 noundef %.lcssa, i64 noundef %5, i64 noundef %1, i64 noundef %5) #22
  br label %82

76:                                               ; preds = %55, %49, %36, %33, %30
  %77 = add i64 %27, %12
  %78 = icmp eq i64 %27, %7
  br i1 %78, label %79, label %26, !llvm.loop !87

79:                                               ; preds = %76, %26, %24
  %80 = add i64 %25, 1
  %81 = icmp eq i64 %25, %10
  br i1 %81, label %82, label %24, !llvm.loop !88

82:                                               ; preds = %79, %58, %11
  %83 = phi i32 [ 1, %58 ], [ 0, %11 ], [ 0, %79 ]
  ret i32 %83
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @FindFreeHorzSeg(i64 noundef %0, i64 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #14 {
  %5 = icmp eq i64 %0, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr @horzPlane, align 8, !tbaa !11
  %8 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %9 = mul i64 %8, %1
  br label %10

10:                                               ; preds = %16, %6
  %11 = phi i64 [ %0, %6 ], [ %17, %16 ]
  %12 = add i64 %9, %11
  %13 = getelementptr inbounds i8, ptr %7, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !59
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = add i64 %11, -1
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %10, !llvm.loop !89

19:                                               ; preds = %16, %10, %4
  %20 = phi i64 [ 0, %4 ], [ %11, %10 ], [ 0, %16 ]
  %21 = add i64 %20, 1
  store i64 %21, ptr %2, align 8, !tbaa !7
  %22 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %23 = icmp ult i64 %22, %0
  br i1 %23, label %36, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr @horzPlane, align 8, !tbaa !11
  %26 = mul i64 %22, %1
  br label %27

27:                                               ; preds = %33, %24
  %28 = phi i64 [ %0, %24 ], [ %34, %33 ]
  %29 = add i64 %26, %28
  %30 = getelementptr inbounds i8, ptr %25, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !59
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = add i64 %28, 1
  %35 = icmp ugt i64 %34, %22
  br i1 %35, label %36, label %27, !llvm.loop !90

36:                                               ; preds = %33, %27, %19
  %37 = phi i64 [ %0, %19 ], [ %28, %27 ], [ %34, %33 ]
  %38 = add i64 %37, -1
  store i64 %38, ptr %3, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @Maze3() #19 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %172, label %7

7:                                                ; preds = %0
  %8 = load ptr, ptr @mazeRoute, align 8, !tbaa !11
  %9 = load ptr, ptr @vertPlane, align 8
  %10 = load ptr, ptr @horzPlane, align 8
  %11 = load ptr, ptr @viaPlane, align 8
  br label %12

12:                                               ; preds = %167, %7
  %13 = phi i64 [ %5, %7 ], [ %168, %167 ]
  %14 = phi i64 [ 1, %7 ], [ %170, %167 ]
  %15 = phi i32 [ 0, %7 ], [ %169, %167 ]
  %16 = getelementptr inbounds i8, ptr %8, i64 %14
  %17 = load i8, ptr %16, align 1, !tbaa !59
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %167, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr @netsAssign, align 8
  %21 = load ptr, ptr @TOP, align 8
  %22 = getelementptr inbounds i64, ptr %21, i64 %14
  %23 = load i64, ptr %22, align 8, !tbaa !7
  %24 = getelementptr inbounds i64, ptr %20, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !7
  %26 = load ptr, ptr @BOT, align 8
  %27 = getelementptr inbounds i64, ptr %26, i64 %14
  %28 = load i64, ptr %27, align 8, !tbaa !7
  %29 = getelementptr inbounds i64, ptr %20, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !7
  %31 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %32 = add i64 %31, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %33 = add i64 %25, -1
  %34 = add i64 %30, 1
  %35 = icmp ult i64 %34, %33
  br i1 %35, label %36, label %165

36:                                               ; preds = %19
  %37 = add i64 %25, 1
  %38 = add i64 %30, -1
  br label %39

39:                                               ; preds = %130, %36
  %40 = phi i64 [ %34, %36 ], [ %131, %130 ]
  %41 = phi i64 [ %30, %36 ], [ %40, %130 ]
  call void @FindFreeHorzSeg(i64 noundef %14, i64 noundef %40, ptr noundef nonnull %1, ptr noundef nonnull %2) #22
  %42 = load i64, ptr %2, align 8, !tbaa !7
  %43 = load i64, ptr %1, align 8, !tbaa !7
  %44 = icmp ugt i64 %42, %43
  %45 = add i64 %41, 2
  %46 = icmp ult i64 %45, %25
  %47 = and i1 %44, %46
  br i1 %47, label %48, label %130

48:                                               ; preds = %127, %39
  %49 = phi i64 [ %128, %127 ], [ %45, %39 ]
  call void @FindFreeHorzSeg(i64 noundef %14, i64 noundef %49, ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  %50 = load i64, ptr %4, align 8, !tbaa !7
  %51 = load i64, ptr %3, align 8, !tbaa !7
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %127

53:                                               ; preds = %48
  %54 = icmp eq i64 %40, %49
  br label %55

55:                                               ; preds = %124, %53
  %56 = phi i64 [ %43, %53 ], [ %125, %124 ]
  %57 = icmp eq i64 %56, %14
  %58 = getelementptr inbounds i64, ptr %21, i64 %56
  %59 = getelementptr inbounds i64, ptr %26, i64 %56
  br label %60

60:                                               ; preds = %121, %55
  %61 = phi i64 [ %51, %55 ], [ %122, %121 ]
  %62 = icmp eq i64 %61, %14
  %63 = or i1 %57, %62
  %64 = or i1 %54, %63
  %65 = icmp eq i64 %56, %61
  %66 = or i1 %65, %64
  br i1 %66, label %121, label %67

67:                                               ; preds = %60
  %68 = tail call i32 @SegmentFree(ptr noundef %9, i64 noundef %14, i64 noundef 0, i64 noundef %14, i64 noundef %40) #22, !range !78
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %121, label %70

70:                                               ; preds = %67
  %71 = tail call i32 @SegmentFree(ptr noundef %10, i64 noundef %14, i64 noundef %40, i64 noundef %56, i64 noundef %40) #22, !range !78
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %121, label %73

73:                                               ; preds = %70
  %74 = tail call i32 @SegmentFree(ptr noundef %9, i64 noundef %56, i64 noundef %40, i64 noundef %56, i64 noundef %37) #22, !range !78
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %121, label %76

76:                                               ; preds = %73
  %77 = load i64, ptr %58, align 8, !tbaa !7
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %76
  %80 = load i64, ptr %59, align 8, !tbaa !7
  %81 = icmp eq i64 %80, 0
  %82 = icmp eq i64 %77, %80
  %83 = or i1 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds i64, ptr %20, i64 %77
  %86 = load i64, ptr %85, align 8, !tbaa !7
  %87 = getelementptr inbounds i64, ptr %20, i64 %80
  %88 = load i64, ptr %87, align 8, !tbaa !7
  %89 = icmp ugt i64 %86, %88
  br i1 %89, label %121, label %90

90:                                               ; preds = %84, %79, %76
  %91 = tail call i32 @ExtendOK(i64 noundef %23, ptr noundef %10, i64 noundef %56, i64 noundef %25, i64 noundef %14, i64 noundef %25) #22, !range !78
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %121, label %93

93:                                               ; preds = %90
  %94 = tail call i32 @SegmentFree(ptr noundef %9, i64 noundef %14, i64 noundef %32, i64 noundef %14, i64 noundef %49) #22, !range !78
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %121, label %96

96:                                               ; preds = %93
  %97 = tail call i32 @SegmentFree(ptr noundef %10, i64 noundef %14, i64 noundef %49, i64 noundef %61, i64 noundef %49) #22, !range !78
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %121, label %99

99:                                               ; preds = %96
  %100 = tail call i32 @SegmentFree(ptr noundef %9, i64 noundef %61, i64 noundef %49, i64 noundef %61, i64 noundef %38) #22, !range !78
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %121, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds i64, ptr %21, i64 %61
  %104 = load i64, ptr %103, align 8, !tbaa !7
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds i64, ptr %26, i64 %61
  %108 = load i64, ptr %107, align 8, !tbaa !7
  %109 = icmp eq i64 %108, 0
  %110 = icmp eq i64 %104, %108
  %111 = or i1 %109, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %106
  %113 = getelementptr inbounds i64, ptr %20, i64 %104
  %114 = load i64, ptr %113, align 8, !tbaa !7
  %115 = getelementptr inbounds i64, ptr %20, i64 %108
  %116 = load i64, ptr %115, align 8, !tbaa !7
  %117 = icmp ugt i64 %114, %116
  br i1 %117, label %121, label %118

118:                                              ; preds = %112, %106, %102
  %119 = tail call i32 @ExtendOK(i64 noundef %28, ptr noundef %10, i64 noundef %61, i64 noundef %30, i64 noundef %14, i64 noundef %30) #22, !range !78
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %118, %112, %99, %96, %93, %90, %84, %73, %70, %67, %60
  %122 = add i64 %61, 1
  %123 = icmp ugt i64 %122, %50
  br i1 %123, label %124, label %60, !llvm.loop !91

124:                                              ; preds = %121
  %125 = add i64 %56, 1
  %126 = icmp ugt i64 %125, %42
  br i1 %126, label %127, label %55, !llvm.loop !92

127:                                              ; preds = %124, %48
  %128 = add nuw i64 %49, 1
  %129 = icmp ult i64 %128, %25
  br i1 %129, label %48, label %130, !llvm.loop !93

130:                                              ; preds = %127, %39
  %131 = add nuw i64 %40, 1
  %132 = icmp eq i64 %131, %33
  br i1 %132, label %165, label %39, !llvm.loop !94

133:                                              ; preds = %118
  %.lcssa4 = phi i64 [ %40, %118 ]
  %.lcssa3 = phi i64 [ %49, %118 ]
  %.lcssa2 = phi i64 [ %56, %118 ]
  %.lcssa = phi i64 [ %61, %118 ]
  tail call void @DrawSegment(ptr noundef %9, i64 noundef %14, i64 noundef 0, i64 noundef %14, i64 noundef %.lcssa4) #22
  %134 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %135 = mul i64 %134, %.lcssa4
  %136 = add i64 %135, %14
  %137 = getelementptr inbounds i8, ptr %11, i64 %136
  store i8 1, ptr %137, align 1, !tbaa !59
  tail call void @DrawSegment(ptr noundef %10, i64 noundef %14, i64 noundef %.lcssa4, i64 noundef %.lcssa2, i64 noundef %.lcssa4) #22
  %138 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %139 = mul i64 %138, %.lcssa4
  %140 = add i64 %139, %.lcssa2
  %141 = getelementptr inbounds i8, ptr %11, i64 %140
  store i8 1, ptr %141, align 1, !tbaa !59
  tail call void @DrawSegment(ptr noundef %9, i64 noundef %.lcssa2, i64 noundef %.lcssa4, i64 noundef %.lcssa2, i64 noundef %25) #22
  %142 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %143 = mul i64 %142, %25
  %144 = add i64 %143, %.lcssa2
  %145 = getelementptr inbounds i8, ptr %11, i64 %144
  store i8 1, ptr %145, align 1, !tbaa !59
  tail call void @DrawSegment(ptr noundef %10, i64 noundef %.lcssa2, i64 noundef %25, i64 noundef %14, i64 noundef %25) #22
  tail call void @DrawSegment(ptr noundef %9, i64 noundef %14, i64 noundef %32, i64 noundef %14, i64 noundef %.lcssa3) #22
  %146 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %147 = mul i64 %146, %.lcssa3
  %148 = add i64 %147, %14
  %149 = getelementptr inbounds i8, ptr %11, i64 %148
  store i8 1, ptr %149, align 1, !tbaa !59
  tail call void @DrawSegment(ptr noundef %10, i64 noundef %14, i64 noundef %.lcssa3, i64 noundef %.lcssa, i64 noundef %.lcssa3) #22
  %150 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %151 = mul i64 %150, %.lcssa3
  %152 = add i64 %151, %.lcssa
  %153 = getelementptr inbounds i8, ptr %11, i64 %152
  store i8 1, ptr %153, align 1, !tbaa !59
  tail call void @DrawSegment(ptr noundef %9, i64 noundef %.lcssa, i64 noundef %.lcssa3, i64 noundef %.lcssa, i64 noundef %30) #22
  %154 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %155 = mul i64 %154, %30
  %156 = add i64 %155, %.lcssa
  %157 = getelementptr inbounds i8, ptr %11, i64 %156
  store i8 1, ptr %157, align 1, !tbaa !59
  tail call void @DrawSegment(ptr noundef %10, i64 noundef %.lcssa, i64 noundef %30, i64 noundef %14, i64 noundef %30) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #23
  store i8 0, ptr %16, align 1, !tbaa !59
  %158 = load ptr, ptr @TOP, align 8, !tbaa !11
  %159 = getelementptr inbounds i64, ptr %158, i64 %14
  %160 = load i64, ptr %159, align 8, !tbaa !7
  tail call fastcc void @CleanNet(i64 noundef %160) #22
  %161 = load ptr, ptr @BOT, align 8, !tbaa !11
  %162 = getelementptr inbounds i64, ptr %161, i64 %14
  %163 = load i64, ptr %162, align 8, !tbaa !7
  tail call fastcc void @CleanNet(i64 noundef %163) #22
  %164 = load i64, ptr @channelColumns, align 8, !tbaa !7
  br label %167

165:                                              ; preds = %130, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #23
  %166 = add nsw i32 %15, 1
  br label %167

167:                                              ; preds = %165, %133, %12
  %168 = phi i64 [ %164, %133 ], [ %13, %165 ], [ %13, %12 ]
  %169 = phi i32 [ %15, %133 ], [ %166, %165 ], [ %15, %12 ]
  %170 = add i64 %14, 1
  %171 = icmp ugt i64 %170, %168
  br i1 %171, label %172, label %12, !llvm.loop !95

172:                                              ; preds = %167, %0
  %173 = phi i32 [ 0, %0 ], [ %169, %167 ]
  ret i32 %173
}

; Function Attrs: nounwind optsize uwtable
define internal void @Option(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef 1) #24
  unreachable

6:                                                ; preds = %2
  %7 = getelementptr inbounds ptr, ptr %1, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  store ptr %8, ptr @channelFile, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(readwrite, argmem: none) uwtable
define internal void @AllocVCG() #12 {
  %1 = load i64, ptr @channelNets, align 8, !tbaa !7
  %2 = shl i64 %1, 6
  %3 = add i64 %2, 64
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #20
  store ptr %4, ptr @VCG, align 8, !tbaa !11
  %5 = add i64 %1, 1
  %6 = mul i64 %5, %5
  %7 = shl i64 %6, 5
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #20
  store ptr %8, ptr @storageRootVCG, align 8, !tbaa !11
  store ptr %8, ptr @storageVCG, align 8, !tbaa !11
  store i64 %6, ptr @storageLimitVCG, align 8, !tbaa !7
  %9 = shl i64 %1, 3
  %10 = add i64 %9, 8
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #20
  store ptr %11, ptr @SCC, align 8, !tbaa !11
  %12 = tail call noalias ptr @malloc(i64 noundef %10) #20
  store ptr %12, ptr @perSCC, align 8, !tbaa !11
  %13 = shl i64 %6, 3
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #20
  store ptr %14, ptr @removeVCG, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @BuildVCG() #13 {
  tail call void @AllocVCG() #22
  %1 = load i64, ptr @channelNets, align 8, !tbaa !7
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %121, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @VCG, align 8, !tbaa !11
  br label %5

5:                                                ; preds = %115, %3
  %6 = phi ptr [ %67, %115 ], [ %4, %3 ]
  %7 = phi i64 [ %118, %115 ], [ 1, %3 ]
  %8 = load ptr, ptr @storageVCG, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct._nodeVCGType, ptr %6, i64 %7
  store ptr %8, ptr %9, align 8, !tbaa !96
  %10 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %11 = icmp eq i64 %10, 0
  %12 = load ptr, ptr @VCG, align 8
  %13 = load ptr, ptr @storageVCG, align 8, !tbaa !11
  br i1 %11, label %60, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr @TOP, align 8, !tbaa !11
  %16 = load ptr, ptr @BOT, align 8
  %17 = getelementptr inbounds %struct._nodeVCGType, ptr %12, i64 %7
  br label %18

18:                                               ; preds = %54, %14
  %19 = phi i64 [ %10, %14 ], [ %55, %54 ]
  %20 = phi i64 [ 0, %14 ], [ %57, %54 ]
  %21 = phi i64 [ 1, %14 ], [ %58, %54 ]
  %22 = phi ptr [ %13, %14 ], [ %56, %54 ]
  %23 = getelementptr inbounds i64, ptr %15, i64 %21
  %24 = load i64, ptr %23, align 8, !tbaa !7
  %25 = icmp eq i64 %24, %7
  br i1 %25, label %26, label %54

26:                                               ; preds = %18
  %27 = getelementptr inbounds i64, ptr %16, i64 %21
  %28 = load i64, ptr %27, align 8, !tbaa !7
  %29 = icmp eq i64 %28, %7
  %30 = icmp eq i64 %28, 0
  %31 = or i1 %29, %30
  br i1 %31, label %54, label %32

32:                                               ; preds = %26
  %33 = icmp eq i64 %20, 0
  %34 = load ptr, ptr %17, align 8, !tbaa !96
  br i1 %33, label %43, label %38

35:                                               ; preds = %38
  %36 = add nuw i64 %39, 1
  %37 = icmp eq i64 %36, %20
  br i1 %37, label %43, label %38, !llvm.loop !98

38:                                               ; preds = %35, %32
  %39 = phi i64 [ %36, %35 ], [ 0, %32 ]
  %40 = getelementptr inbounds %struct._constraintVCGType, ptr %34, i64 %39, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !99
  %42 = icmp eq i64 %41, %28
  br i1 %42, label %54, label %35

43:                                               ; preds = %35, %32
  %44 = getelementptr inbounds %struct._constraintVCGType, ptr %34, i64 %20
  store i64 %7, ptr %44, align 8, !tbaa !101
  %45 = load i64, ptr %27, align 8, !tbaa !7
  %46 = getelementptr inbounds %struct._constraintVCGType, ptr %34, i64 %20, i32 1
  store i64 %45, ptr %46, align 8, !tbaa !99
  %47 = getelementptr inbounds %struct._constraintVCGType, ptr %34, i64 %20, i32 2
  store i64 %21, ptr %47, align 8, !tbaa !102
  %48 = getelementptr inbounds %struct._constraintVCGType, ptr %34, i64 %20, i32 3
  store i64 0, ptr %48, align 8, !tbaa !103
  %49 = getelementptr inbounds %struct._constraintVCGType, ptr %22, i64 1
  store ptr %49, ptr @storageVCG, align 8, !tbaa !11
  %50 = load i64, ptr @storageLimitVCG, align 8, !tbaa !7
  %51 = add i64 %50, -1
  store i64 %51, ptr @storageLimitVCG, align 8, !tbaa !7
  %52 = add i64 %20, 1
  %53 = load i64, ptr @channelColumns, align 8, !tbaa !7
  br label %54

54:                                               ; preds = %43, %38, %26, %18
  %55 = phi i64 [ %53, %43 ], [ %19, %26 ], [ %19, %18 ], [ %19, %38 ]
  %56 = phi ptr [ %49, %43 ], [ %22, %26 ], [ %22, %18 ], [ %22, %38 ]
  %57 = phi i64 [ %52, %43 ], [ %20, %26 ], [ %20, %18 ], [ %20, %38 ]
  %58 = add i64 %21, 1
  %59 = icmp ugt i64 %58, %55
  br i1 %59, label %60, label %18, !llvm.loop !104

60:                                               ; preds = %54, %5
  %61 = phi ptr [ %13, %5 ], [ %56, %54 ]
  %62 = phi i64 [ 0, %5 ], [ %57, %54 ]
  %63 = getelementptr inbounds %struct._nodeVCGType, ptr %12, i64 %7, i32 1
  store i64 %62, ptr %63, align 8, !tbaa !105
  %64 = getelementptr inbounds %struct._nodeVCGType, ptr %12, i64 %7, i32 4
  store ptr %61, ptr %64, align 8, !tbaa !106
  %65 = load i64, ptr @channelColumns, align 8, !tbaa !7
  %66 = icmp eq i64 %65, 0
  %67 = load ptr, ptr @VCG, align 8
  br i1 %66, label %115, label %68

68:                                               ; preds = %60
  %69 = load ptr, ptr @storageVCG, align 8, !tbaa !11
  %70 = load ptr, ptr @BOT, align 8, !tbaa !11
  %71 = load ptr, ptr @TOP, align 8
  %72 = getelementptr inbounds %struct._nodeVCGType, ptr %67, i64 %7, i32 4
  br label %73

73:                                               ; preds = %109, %68
  %74 = phi i64 [ %65, %68 ], [ %110, %109 ]
  %75 = phi i64 [ 0, %68 ], [ %112, %109 ]
  %76 = phi i64 [ 1, %68 ], [ %113, %109 ]
  %77 = phi ptr [ %69, %68 ], [ %111, %109 ]
  %78 = getelementptr inbounds i64, ptr %70, i64 %76
  %79 = load i64, ptr %78, align 8, !tbaa !7
  %80 = icmp eq i64 %79, %7
  br i1 %80, label %81, label %109

81:                                               ; preds = %73
  %82 = getelementptr inbounds i64, ptr %71, i64 %76
  %83 = load i64, ptr %82, align 8, !tbaa !7
  %84 = icmp eq i64 %83, %7
  %85 = icmp eq i64 %83, 0
  %86 = or i1 %84, %85
  br i1 %86, label %109, label %87

87:                                               ; preds = %81
  %88 = icmp eq i64 %75, 0
  %89 = load ptr, ptr %72, align 8, !tbaa !106
  br i1 %88, label %98, label %93

90:                                               ; preds = %93
  %91 = add nuw i64 %94, 1
  %92 = icmp eq i64 %91, %75
  br i1 %92, label %98, label %93, !llvm.loop !107

93:                                               ; preds = %90, %87
  %94 = phi i64 [ %91, %90 ], [ 0, %87 ]
  %95 = getelementptr inbounds %struct._constraintVCGType, ptr %89, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !101
  %97 = icmp eq i64 %96, %83
  br i1 %97, label %109, label %90

98:                                               ; preds = %90, %87
  %99 = getelementptr inbounds %struct._constraintVCGType, ptr %89, i64 %75
  store i64 %83, ptr %99, align 8, !tbaa !101
  %100 = load i64, ptr %78, align 8, !tbaa !7
  %101 = getelementptr inbounds %struct._constraintVCGType, ptr %89, i64 %75, i32 1
  store i64 %100, ptr %101, align 8, !tbaa !99
  %102 = getelementptr inbounds %struct._constraintVCGType, ptr %89, i64 %75, i32 2
  store i64 %76, ptr %102, align 8, !tbaa !102
  %103 = getelementptr inbounds %struct._constraintVCGType, ptr %89, i64 %75, i32 3
  store i64 0, ptr %103, align 8, !tbaa !103
  %104 = getelementptr inbounds %struct._constraintVCGType, ptr %77, i64 1
  store ptr %104, ptr @storageVCG, align 8, !tbaa !11
  %105 = load i64, ptr @storageLimitVCG, align 8, !tbaa !7
  %106 = add i64 %105, -1
  store i64 %106, ptr @storageLimitVCG, align 8, !tbaa !7
  %107 = add i64 %75, 1
  %108 = load i64, ptr @channelColumns, align 8, !tbaa !7
  br label %109

109:                                              ; preds = %98, %93, %81, %73
  %110 = phi i64 [ %108, %98 ], [ %74, %81 ], [ %74, %73 ], [ %74, %93 ]
  %111 = phi ptr [ %104, %98 ], [ %77, %81 ], [ %77, %73 ], [ %77, %93 ]
  %112 = phi i64 [ %107, %98 ], [ %75, %81 ], [ %75, %73 ], [ %75, %93 ]
  %113 = add i64 %76, 1
  %114 = icmp ugt i64 %113, %110
  br i1 %114, label %115, label %73, !llvm.loop !108

115:                                              ; preds = %109, %60
  %116 = phi i64 [ 0, %60 ], [ %112, %109 ]
  %117 = getelementptr inbounds %struct._nodeVCGType, ptr %67, i64 %7, i32 5
  store i64 %116, ptr %117, align 8, !tbaa !109
  %118 = add i64 %7, 1
  %119 = load i64, ptr @channelNets, align 8, !tbaa !7
  %120 = icmp ugt i64 %118, %119
  br i1 %120, label %121, label %5, !llvm.loop !110

121:                                              ; preds = %115, %0
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @DFSAboveVCG(ptr nocapture noundef %0, i64 noundef %1) #17 {
  %3 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1
  %4 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 3
  store i64 1, ptr %4, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !105
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %23, %2
  %9 = phi i64 [ %24, %23 ], [ %6, %2 ]
  %10 = phi i64 [ %25, %23 ], [ 0, %2 ]
  %11 = load ptr, ptr %3, align 8, !tbaa !96
  %12 = getelementptr inbounds %struct._constraintVCGType, ptr %11, i64 %10, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !103
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct._constraintVCGType, ptr %11, i64 %10, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !99
  %18 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %17, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !111
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  tail call void @DFSAboveVCG(ptr noundef nonnull %0, i64 noundef %17) #22
  %22 = load i64, ptr %5, align 8, !tbaa !105
  br label %23

23:                                               ; preds = %21, %15, %8
  %24 = phi i64 [ %9, %8 ], [ %22, %21 ], [ %9, %15 ]
  %25 = add nuw i64 %10, 1
  %26 = icmp ult i64 %25, %24
  br i1 %26, label %8, label %27, !llvm.loop !112

27:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @SCCofVCG(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #19 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store i64 0, ptr %4, align 8, !tbaa !7
  %5 = load i64, ptr @channelNets, align 8, !tbaa !7
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %18, %3
  %8 = phi i64 [ 0, %3 ], [ %19, %18 ]
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %22, label %23

10:                                               ; preds = %18, %3
  %11 = phi i64 [ %19, %18 ], [ %5, %3 ]
  %12 = phi i64 [ %20, %18 ], [ 1, %3 ]
  %13 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %12, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !111
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  call void @SCC_DFSAboveVCG(ptr noundef nonnull %0, i64 noundef %12, ptr noundef nonnull %4) #22
  %17 = load i64, ptr @channelNets, align 8, !tbaa !7
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi i64 [ %11, %10 ], [ %17, %16 ]
  %20 = add i64 %12, 1
  %21 = icmp ugt i64 %20, %19
  br i1 %21, label %7, label %10, !llvm.loop !113

22:                                               ; preds = %50, %7
  store i64 0, ptr @totalSCC, align 8, !tbaa !7
  br label %93

23:                                               ; preds = %50, %7
  %24 = phi i1 [ %53, %50 ], [ %9, %7 ]
  %25 = phi i64 [ %51, %50 ], [ 0, %7 ]
  %26 = phi i64 [ %52, %50 ], [ %8, %7 ]
  %27 = add i64 %26, 1
  %28 = tail call i64 @llvm.umax.i64(i64 %27, i64 2)
  br label %29

29:                                               ; preds = %42, %23
  %30 = phi i64 [ %45, %42 ], [ 1, %23 ]
  %31 = phi i64 [ %44, %42 ], [ 0, %23 ]
  %32 = phi i64 [ %43, %42 ], [ 0, %23 ]
  %33 = phi i64 [ %46, %42 ], [ 1, %23 ]
  %34 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %33, i32 7
  %35 = load i64, ptr %34, align 8, !tbaa !114
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %33, i32 2
  %39 = load i64, ptr %38, align 8, !tbaa !115
  %40 = icmp ugt i64 %39, %31
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41, %37, %29
  %43 = phi i64 [ %32, %29 ], [ %33, %41 ], [ %32, %37 ]
  %44 = phi i64 [ %31, %29 ], [ %39, %41 ], [ %31, %37 ]
  %45 = phi i64 [ %30, %29 ], [ 0, %41 ], [ %30, %37 ]
  %46 = add nuw i64 %33, 1
  %47 = icmp eq i64 %46, %28
  br i1 %47, label %48, label %29, !llvm.loop !116

48:                                               ; preds = %42
  %.lcssa2 = phi i64 [ %43, %42 ]
  %.lcssa1 = phi i64 [ %45, %42 ]
  %49 = icmp eq i64 %.lcssa1, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  %51 = add i64 %25, 1
  tail call void @SCC_DFSBelowVCG(ptr noundef nonnull %0, i64 noundef %.lcssa2, i64 noundef %51) #22
  %52 = load i64, ptr @channelNets, align 8, !tbaa !7
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %22, label %23, !llvm.loop !117

54:                                               ; preds = %48
  %.lcssa3 = phi i1 [ %24, %48 ]
  store i64 0, ptr @totalSCC, align 8, !tbaa !7
  br i1 %.lcssa3, label %93, label %57

55:                                               ; preds = %65
  %.lcssa = phi i64 [ %66, %65 ]
  %56 = icmp eq i64 %.lcssa, 0
  br i1 %56, label %93, label %70

57:                                               ; preds = %65, %54
  %58 = phi i64 [ %67, %65 ], [ 1, %54 ]
  %59 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %58, i32 6
  %60 = load i64, ptr %59, align 8, !tbaa !118
  %61 = getelementptr inbounds i64, ptr %1, i64 %58
  store i64 %60, ptr %61, align 8, !tbaa !7
  %62 = load i64, ptr @totalSCC, align 8, !tbaa !7
  %63 = icmp ugt i64 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i64 %60, ptr @totalSCC, align 8, !tbaa !7
  br label %65

65:                                               ; preds = %64, %57
  %66 = phi i64 [ %62, %57 ], [ 1, %64 ]
  %67 = add i64 %58, 1
  %68 = load i64, ptr @channelNets, align 8, !tbaa !7
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %55, label %57, !llvm.loop !119

70:                                               ; preds = %87, %55
  %71 = phi i64 [ %90, %87 ], [ 1, %55 ]
  %72 = load i64, ptr @channelNets, align 8, !tbaa !7
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %70
  %75 = add i64 %72, 1
  %76 = tail call i64 @llvm.umax.i64(i64 %75, i64 2)
  br label %77

77:                                               ; preds = %77, %74
  %78 = phi i64 [ %84, %77 ], [ 0, %74 ]
  %79 = phi i64 [ %85, %77 ], [ 1, %74 ]
  %80 = getelementptr inbounds i64, ptr %1, i64 %79
  %81 = load i64, ptr %80, align 8, !tbaa !7
  %82 = icmp eq i64 %81, %71
  %83 = zext i1 %82 to i64
  %84 = add i64 %78, %83
  %85 = add nuw i64 %79, 1
  %86 = icmp eq i64 %85, %76
  br i1 %86, label %87, label %77, !llvm.loop !120

87:                                               ; preds = %77, %70
  %88 = phi i64 [ 0, %70 ], [ %84, %77 ]
  %89 = getelementptr inbounds i64, ptr %2, i64 %71
  store i64 %88, ptr %89, align 8, !tbaa !7
  %90 = add i64 %71, 1
  %91 = load i64, ptr @totalSCC, align 8, !tbaa !7
  %92 = icmp ugt i64 %90, %91
  br i1 %92, label %93, label %70, !llvm.loop !121

93:                                               ; preds = %87, %55, %54, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @SCC_DFSAboveVCG(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef %2) #17 {
  %4 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1
  %5 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 3
  store i64 1, ptr %5, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !105
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %24, %3
  %10 = phi i64 [ %25, %24 ], [ %7, %3 ]
  %11 = phi i64 [ %26, %24 ], [ 0, %3 ]
  %12 = load ptr, ptr %4, align 8, !tbaa !96
  %13 = getelementptr inbounds %struct._constraintVCGType, ptr %12, i64 %11, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !103
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct._constraintVCGType, ptr %12, i64 %11, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !99
  %19 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %18, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !111
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  tail call void @SCC_DFSAboveVCG(ptr noundef nonnull %0, i64 noundef %18, ptr noundef %2) #22
  %23 = load i64, ptr %6, align 8, !tbaa !105
  br label %24

24:                                               ; preds = %22, %16, %9
  %25 = phi i64 [ %10, %9 ], [ %23, %22 ], [ %10, %16 ]
  %26 = add nuw i64 %11, 1
  %27 = icmp ult i64 %26, %25
  br i1 %27, label %9, label %28, !llvm.loop !122

28:                                               ; preds = %24, %3
  %29 = load i64, ptr %2, align 8, !tbaa !7
  %30 = add i64 %29, 1
  store i64 %30, ptr %2, align 8, !tbaa !7
  %31 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 2
  store i64 %30, ptr %31, align 8, !tbaa !115
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @SCC_DFSBelowVCG(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) #17 {
  %4 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 7
  store i64 1, ptr %4, align 8, !tbaa !114
  %5 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !109
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 4
  br label %10

10:                                               ; preds = %25, %8
  %11 = phi i64 [ %6, %8 ], [ %26, %25 ]
  %12 = phi i64 [ 0, %8 ], [ %27, %25 ]
  %13 = load ptr, ptr %9, align 8, !tbaa !106
  %14 = getelementptr inbounds %struct._constraintVCGType, ptr %13, i64 %12, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !103
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct._constraintVCGType, ptr %13, i64 %12
  %19 = load i64, ptr %18, align 8, !tbaa !101
  %20 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %19, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !114
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  tail call void @SCC_DFSBelowVCG(ptr noundef nonnull %0, i64 noundef %19, i64 noundef %2) #22
  %24 = load i64, ptr %5, align 8, !tbaa !109
  br label %25

25:                                               ; preds = %23, %17, %10
  %26 = phi i64 [ %11, %10 ], [ %24, %23 ], [ %11, %17 ]
  %27 = add nuw i64 %12, 1
  %28 = icmp ult i64 %27, %26
  br i1 %28, label %10, label %29, !llvm.loop !123

29:                                               ; preds = %25, %3
  %30 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 6
  store i64 %2, ptr %30, align 8, !tbaa !118
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @AcyclicVCG() #13 {
  %1 = load i64, ptr @channelNets, align 8, !tbaa !7
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %66, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @VCG, align 8, !tbaa !11
  br label %5

5:                                                ; preds = %62, %3
  %6 = phi i64 [ 1, %3 ], [ %63, %62 ]
  %7 = getelementptr inbounds %struct._nodeVCGType, ptr %4, i64 %6, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !105
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._nodeVCGType, ptr %4, i64 %6
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = add i64 %8, 1
  %14 = and i64 %13, -2
  %15 = add i64 %8, -1
  %16 = insertelement <2 x i64> poison, i64 %15, i64 0
  %17 = shufflevector <2 x i64> %16, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %18

18:                                               ; preds = %30, %10
  %19 = phi i64 [ 0, %10 ], [ %31, %30 ]
  %20 = phi <2 x i64> [ <i64 0, i64 1>, %10 ], [ %32, %30 ]
  %21 = icmp ule <2 x i64> %20, %17
  %22 = extractelement <2 x i1> %21, i64 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct._constraintVCGType, ptr %12, i64 %19, i32 3
  store i64 0, ptr %24, align 8, !tbaa !103
  br label %25

25:                                               ; preds = %23, %18
  %26 = extractelement <2 x i1> %21, i64 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = or i64 %19, 1
  %29 = getelementptr inbounds %struct._constraintVCGType, ptr %12, i64 %28, i32 3
  store i64 0, ptr %29, align 8, !tbaa !103
  br label %30

30:                                               ; preds = %27, %25
  %31 = add i64 %19, 2
  %32 = add <2 x i64> %20, <i64 2, i64 2>
  %33 = icmp eq i64 %31, %14
  br i1 %33, label %34, label %18, !llvm.loop !124

34:                                               ; preds = %30, %5
  %35 = getelementptr inbounds %struct._nodeVCGType, ptr %4, i64 %6, i32 5
  %36 = load i64, ptr %35, align 8, !tbaa !109
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %62, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct._nodeVCGType, ptr %4, i64 %6, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !106
  %41 = add i64 %36, 1
  %42 = and i64 %41, -2
  %43 = add i64 %36, -1
  %44 = insertelement <2 x i64> poison, i64 %43, i64 0
  %45 = shufflevector <2 x i64> %44, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %46

46:                                               ; preds = %58, %38
  %47 = phi i64 [ 0, %38 ], [ %59, %58 ]
  %48 = phi <2 x i64> [ <i64 0, i64 1>, %38 ], [ %60, %58 ]
  %49 = icmp ule <2 x i64> %48, %45
  %50 = extractelement <2 x i1> %49, i64 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct._constraintVCGType, ptr %40, i64 %47, i32 3
  store i64 0, ptr %52, align 8, !tbaa !103
  br label %53

53:                                               ; preds = %51, %46
  %54 = extractelement <2 x i1> %49, i64 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = or i64 %47, 1
  %57 = getelementptr inbounds %struct._constraintVCGType, ptr %40, i64 %56, i32 3
  store i64 0, ptr %57, align 8, !tbaa !103
  br label %58

58:                                               ; preds = %55, %53
  %59 = add i64 %47, 2
  %60 = add <2 x i64> %48, <i64 2, i64 2>
  %61 = icmp eq i64 %59, %42
  br i1 %61, label %62, label %46, !llvm.loop !127

62:                                               ; preds = %58, %34
  %63 = add i64 %6, 1
  %64 = load i64, ptr @channelNets, align 8, !tbaa !7
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %5, !llvm.loop !128

66:                                               ; preds = %62, %0
  %67 = phi i64 [ 0, %0 ], [ %64, %62 ]
  store i64 0, ptr @removeTotalVCG, align 8, !tbaa !7
  br label %68

68:                                               ; preds = %95, %66
  %69 = phi i64 [ %99, %95 ], [ %67, %66 ]
  %70 = phi i1 [ true, %95 ], [ false, %66 ]
  %71 = load ptr, ptr @VCG, align 8, !tbaa !11
  %72 = icmp eq i64 %69, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %73, %68
  %74 = phi i64 [ %77, %73 ], [ 1, %68 ]
  %75 = getelementptr inbounds %struct._nodeVCGType, ptr %71, i64 %74, i32 2
  %76 = getelementptr inbounds %struct._nodeVCGType, ptr %71, i64 %74, i32 6
  %77 = add i64 %74, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %75, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %76, i8 0, i64 16, i1 false)
  %78 = load i64, ptr @channelNets, align 8, !tbaa !7
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %73, !llvm.loop !129

80:                                               ; preds = %73, %68
  %81 = load ptr, ptr @SCC, align 8, !tbaa !11
  %82 = load ptr, ptr @perSCC, align 8, !tbaa !11
  tail call void @SCCofVCG(ptr noundef %71, ptr noundef %81, ptr noundef %82) #22
  %83 = load i64, ptr @totalSCC, align 8, !tbaa !7
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr @perSCC, align 8, !tbaa !11
  br label %90

87:                                               ; preds = %90
  %88 = add i64 %91, 1
  %89 = icmp ugt i64 %88, %83
  br i1 %89, label %100, label %90, !llvm.loop !130

90:                                               ; preds = %87, %85
  %91 = phi i64 [ 1, %85 ], [ %88, %87 ]
  %92 = getelementptr inbounds i64, ptr %86, i64 %91
  %93 = load i64, ptr %92, align 8, !tbaa !7
  %94 = icmp ugt i64 %93, 1
  br i1 %94, label %95, label %87

95:                                               ; preds = %90
  %96 = load ptr, ptr @VCG, align 8, !tbaa !11
  %97 = load ptr, ptr @SCC, align 8, !tbaa !11
  %98 = load ptr, ptr @removeVCG, align 8, !tbaa !11
  tail call void @RemoveConstraintVCG(ptr noundef %96, ptr noundef %97, ptr noundef nonnull %86, ptr noundef %98) #22
  %99 = load i64, ptr @channelNets, align 8, !tbaa !7
  br label %68, !llvm.loop !131

100:                                              ; preds = %87, %80
  %.lcssa4 = phi i1 [ %70, %87 ], [ %70, %80 ]
  %101 = load i64, ptr @removeTotalVCG, align 8, !tbaa !7
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %213, label %103

103:                                              ; preds = %208, %100
  %104 = phi i64 [ %209, %208 ], [ %101, %100 ]
  %105 = phi i64 [ %210, %208 ], [ 0, %100 ]
  %106 = load ptr, ptr @removeVCG, align 8, !tbaa !11
  %107 = getelementptr inbounds ptr, ptr %106, i64 %105
  %108 = load ptr, ptr %107, align 8, !tbaa !11
  %109 = load i64, ptr %108, align 8, !tbaa !101
  %110 = getelementptr inbounds %struct._constraintVCGType, ptr %108, i64 0, i32 1
  %111 = load i64, ptr %110, align 8, !tbaa !99
  %112 = load ptr, ptr @VCG, align 8, !tbaa !11
  %113 = getelementptr inbounds %struct._nodeVCGType, ptr %112, i64 %109, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !105
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %129, label %116

116:                                              ; preds = %103
  %117 = getelementptr inbounds %struct._nodeVCGType, ptr %112, i64 %109
  %118 = load ptr, ptr %117, align 8, !tbaa !96
  br label %119

119:                                              ; preds = %126, %116
  %120 = phi i64 [ 0, %116 ], [ %127, %126 ]
  %121 = getelementptr inbounds %struct._constraintVCGType, ptr %118, i64 %120, i32 1
  %122 = load i64, ptr %121, align 8, !tbaa !99
  %123 = icmp eq i64 %122, %111
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %.lcssa = phi i64 [ %120, %119 ]
  %125 = getelementptr inbounds %struct._constraintVCGType, ptr %118, i64 %.lcssa, i32 3
  store i64 0, ptr %125, align 8, !tbaa !103
  br label %129

126:                                              ; preds = %119
  %127 = add nuw i64 %120, 1
  %128 = icmp eq i64 %127, %114
  br i1 %128, label %129, label %119, !llvm.loop !132

129:                                              ; preds = %126, %124, %103
  %130 = getelementptr inbounds %struct._nodeVCGType, ptr %112, i64 %111, i32 5
  %131 = load i64, ptr %130, align 8, !tbaa !109
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %146, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct._nodeVCGType, ptr %112, i64 %111, i32 4
  %135 = load ptr, ptr %134, align 8, !tbaa !106
  br label %136

136:                                              ; preds = %143, %133
  %137 = phi i64 [ 0, %133 ], [ %144, %143 ]
  %138 = getelementptr inbounds %struct._constraintVCGType, ptr %135, i64 %137
  %139 = load i64, ptr %138, align 8, !tbaa !101
  %140 = icmp eq i64 %139, %109
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %.lcssa1 = phi i64 [ %137, %136 ]
  %142 = getelementptr inbounds %struct._constraintVCGType, ptr %135, i64 %.lcssa1, i32 3
  store i64 0, ptr %142, align 8, !tbaa !103
  br label %146

143:                                              ; preds = %136
  %144 = add nuw i64 %137, 1
  %145 = icmp eq i64 %144, %131
  br i1 %145, label %146, label %136, !llvm.loop !133

146:                                              ; preds = %143, %141, %129
  %147 = load i64, ptr @channelNets, align 8, !tbaa !7
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %149, %146
  %150 = phi i64 [ %153, %149 ], [ 1, %146 ]
  %151 = getelementptr inbounds %struct._nodeVCGType, ptr %112, i64 %150, i32 2
  %152 = getelementptr inbounds %struct._nodeVCGType, ptr %112, i64 %150, i32 6
  %153 = add i64 %150, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %151, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %152, i8 0, i64 16, i1 false)
  %154 = load i64, ptr @channelNets, align 8, !tbaa !7
  %155 = icmp ugt i64 %153, %154
  br i1 %155, label %156, label %149, !llvm.loop !129

156:                                              ; preds = %149, %146
  %157 = load ptr, ptr @SCC, align 8, !tbaa !11
  %158 = load ptr, ptr @perSCC, align 8, !tbaa !11
  tail call void @SCCofVCG(ptr noundef nonnull %112, ptr noundef %157, ptr noundef %158) #22
  %159 = load i64, ptr @totalSCC, align 8, !tbaa !7
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %206, label %161

161:                                              ; preds = %156
  %162 = load ptr, ptr @perSCC, align 8, !tbaa !11
  br label %166

163:                                              ; preds = %166
  %164 = add i64 %167, 1
  %165 = icmp ugt i64 %164, %159
  br i1 %165, label %206, label %166, !llvm.loop !134

166:                                              ; preds = %163, %161
  %167 = phi i64 [ 1, %161 ], [ %164, %163 ]
  %168 = getelementptr inbounds i64, ptr %162, i64 %167
  %169 = load i64, ptr %168, align 8, !tbaa !7
  %170 = icmp ugt i64 %169, 1
  br i1 %170, label %171, label %163

171:                                              ; preds = %166
  %172 = load ptr, ptr @VCG, align 8, !tbaa !11
  %173 = getelementptr inbounds %struct._nodeVCGType, ptr %172, i64 %109, i32 1
  %174 = load i64, ptr %173, align 8, !tbaa !105
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %189, label %176

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct._nodeVCGType, ptr %172, i64 %109
  %178 = load ptr, ptr %177, align 8, !tbaa !96
  br label %179

179:                                              ; preds = %186, %176
  %180 = phi i64 [ 0, %176 ], [ %187, %186 ]
  %181 = getelementptr inbounds %struct._constraintVCGType, ptr %178, i64 %180, i32 1
  %182 = load i64, ptr %181, align 8, !tbaa !99
  %183 = icmp eq i64 %182, %111
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %.lcssa2 = phi i64 [ %180, %179 ]
  %185 = getelementptr inbounds %struct._constraintVCGType, ptr %178, i64 %.lcssa2, i32 3
  store i64 1, ptr %185, align 8, !tbaa !103
  br label %189

186:                                              ; preds = %179
  %187 = add nuw i64 %180, 1
  %188 = icmp eq i64 %187, %174
  br i1 %188, label %189, label %179, !llvm.loop !135

189:                                              ; preds = %186, %184, %171
  %190 = getelementptr inbounds %struct._nodeVCGType, ptr %172, i64 %111, i32 5
  %191 = load i64, ptr %190, align 8, !tbaa !109
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %208, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct._nodeVCGType, ptr %172, i64 %111, i32 4
  %195 = load ptr, ptr %194, align 8, !tbaa !106
  br label %196

196:                                              ; preds = %203, %193
  %197 = phi i64 [ 0, %193 ], [ %204, %203 ]
  %198 = getelementptr inbounds %struct._constraintVCGType, ptr %195, i64 %197
  %199 = load i64, ptr %198, align 8, !tbaa !101
  %200 = icmp eq i64 %199, %109
  br i1 %200, label %201, label %203

201:                                              ; preds = %196
  %.lcssa3 = phi i64 [ %197, %196 ]
  %202 = getelementptr inbounds %struct._constraintVCGType, ptr %195, i64 %.lcssa3, i32 3
  store i64 1, ptr %202, align 8, !tbaa !103
  br label %208

203:                                              ; preds = %196
  %204 = add nuw i64 %197, 1
  %205 = icmp eq i64 %204, %191
  br i1 %205, label %208, label %196, !llvm.loop !136

206:                                              ; preds = %163, %156
  %207 = add i64 %104, -1
  br label %208

208:                                              ; preds = %206, %203, %201, %189
  %209 = phi i64 [ %104, %201 ], [ %207, %206 ], [ %104, %189 ], [ %104, %203 ]
  %210 = add nuw i64 %105, 1
  %211 = load i64, ptr @removeTotalVCG, align 8, !tbaa !7
  %212 = icmp ult i64 %210, %211
  br i1 %212, label %103, label %213, !llvm.loop !137

213:                                              ; preds = %208, %100
  %214 = phi i64 [ 0, %100 ], [ %209, %208 ]
  br i1 %.lcssa4, label %217, label %215

215:                                              ; preds = %213
  %216 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  br label %220

217:                                              ; preds = %213
  %218 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11.51)
  %219 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i64 noundef %214) #22
  br label %220

220:                                              ; preds = %217, %215
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @RemoveConstraintVCG(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #13 {
  %5 = load i64, ptr @totalSCC, align 8, !tbaa !7
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %151, label %7

7:                                                ; preds = %147, %4
  %8 = phi i64 [ %148, %147 ], [ 1, %4 ]
  %9 = getelementptr inbounds i64, ptr %2, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !7
  %11 = icmp ugt i64 %10, 1
  br i1 %11, label %12, label %147

12:                                               ; preds = %7
  %13 = load i64, ptr @channelNets, align 8, !tbaa !7
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %120, label %15

15:                                               ; preds = %12
  %16 = load i64, ptr @channelColumns, align 8
  %17 = load ptr, ptr @TOP, align 8
  %18 = load ptr, ptr @BOT, align 8
  %19 = getelementptr inbounds i64, ptr %17, i64 2
  %20 = getelementptr inbounds i64, ptr %18, i64 2
  %21 = add i64 %13, 1
  %22 = tail call i64 @llvm.umax.i64(i64 %21, i64 2)
  %23 = add i64 %16, -1
  %24 = getelementptr inbounds i64, ptr %17, i64 %23
  %25 = getelementptr inbounds i64, ptr %18, i64 %23
  %26 = getelementptr inbounds i64, ptr %18, i64 %23
  br label %27

27:                                               ; preds = %115, %15
  %28 = phi ptr [ null, %15 ], [ %117, %115 ]
  %29 = phi i64 [ 1, %15 ], [ %118, %115 ]
  %30 = phi i64 [ 7, %15 ], [ %116, %115 ]
  %31 = getelementptr inbounds i64, ptr %1, i64 %29
  %32 = load i64, ptr %31, align 8, !tbaa !7
  %33 = icmp eq i64 %32, %8
  br i1 %33, label %34, label %115

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %29, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !105
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %115, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %29
  %40 = load ptr, ptr %39, align 8, !tbaa !96
  br label %41

41:                                               ; preds = %110, %38
  %42 = phi ptr [ %28, %38 ], [ %112, %110 ]
  %43 = phi i64 [ %30, %38 ], [ %111, %110 ]
  %44 = phi i64 [ 0, %38 ], [ %113, %110 ]
  %45 = getelementptr inbounds %struct._constraintVCGType, ptr %40, i64 %44, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !99
  %47 = getelementptr inbounds i64, ptr %1, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !7
  %49 = icmp eq i64 %48, %8
  br i1 %49, label %50, label %110

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct._constraintVCGType, ptr %40, i64 %44, i32 3
  %52 = load i64, ptr %51, align 8, !tbaa !103
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %110

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct._constraintVCGType, ptr %40, i64 %44, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !102
  %57 = icmp eq i64 %56, 1
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i64, ptr %19, align 8, !tbaa !7
  %60 = icmp eq i64 %59, 0
  %61 = load i64, ptr %20, align 8, !tbaa !7
  %62 = icmp eq i64 %61, 0
  br i1 %60, label %64, label %63

63:                                               ; preds = %58
  br i1 %62, label %65, label %104

64:                                               ; preds = %58
  br i1 %62, label %104, label %65

65:                                               ; preds = %64, %63
  br label %104

66:                                               ; preds = %54
  %67 = icmp eq i64 %56, %16
  br i1 %67, label %68, label %78

68:                                               ; preds = %66
  %69 = load i64, ptr %24, align 8, !tbaa !7
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i64, ptr %25, align 8, !tbaa !7
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %77, label %104

74:                                               ; preds = %68
  %75 = load i64, ptr %26, align 8, !tbaa !7
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %104, label %77

77:                                               ; preds = %74, %71
  br label %104

78:                                               ; preds = %66
  %79 = add i64 %56, -1
  %80 = getelementptr inbounds i64, ptr %17, i64 %79
  %81 = load i64, ptr %80, align 8, !tbaa !7
  %82 = icmp eq i64 %81, 0
  %83 = getelementptr inbounds i64, ptr %18, i64 %79
  %84 = load i64, ptr %83, align 8, !tbaa !7
  %85 = icmp eq i64 %84, 0
  br i1 %82, label %87, label %86

86:                                               ; preds = %78
  br i1 %85, label %88, label %89

87:                                               ; preds = %78
  br i1 %85, label %89, label %88

88:                                               ; preds = %87, %86
  br label %89

89:                                               ; preds = %88, %87, %86
  %90 = phi i64 [ 2, %88 ], [ 0, %87 ], [ 3, %86 ]
  %91 = add i64 %56, 1
  %92 = getelementptr inbounds i64, ptr %17, i64 %91
  %93 = load i64, ptr %92, align 8, !tbaa !7
  %94 = icmp eq i64 %93, 0
  %95 = getelementptr inbounds i64, ptr %18, i64 %91
  %96 = load i64, ptr %95, align 8, !tbaa !7
  %97 = icmp eq i64 %96, 0
  br i1 %94, label %101, label %98

98:                                               ; preds = %89
  br i1 %97, label %102, label %99

99:                                               ; preds = %98
  %100 = add nuw nsw i64 %90, 3
  br label %104

101:                                              ; preds = %89
  br i1 %97, label %104, label %102

102:                                              ; preds = %101, %98
  %103 = add nuw nsw i64 %90, 2
  br label %104

104:                                              ; preds = %102, %101, %99, %77, %74, %71, %65, %64, %63
  %105 = phi i64 [ 5, %65 ], [ 3, %64 ], [ 5, %77 ], [ 3, %74 ], [ %100, %99 ], [ %103, %102 ], [ %90, %101 ], [ 6, %63 ], [ 6, %71 ]
  %106 = icmp ult i64 %105, %43
  %107 = getelementptr inbounds %struct._constraintVCGType, ptr %40, i64 %44
  %108 = tail call i64 @llvm.umin.i64(i64 %105, i64 %43)
  %109 = select i1 %106, ptr %107, ptr %42
  br label %110

110:                                              ; preds = %104, %50, %41
  %111 = phi i64 [ %43, %50 ], [ %43, %41 ], [ %108, %104 ]
  %112 = phi ptr [ %42, %50 ], [ %42, %41 ], [ %109, %104 ]
  %113 = add nuw i64 %44, 1
  %114 = icmp eq i64 %113, %36
  br i1 %114, label %115, label %41, !llvm.loop !138

115:                                              ; preds = %110, %34, %27
  %116 = phi i64 [ %30, %27 ], [ %30, %34 ], [ %111, %110 ]
  %117 = phi ptr [ %28, %27 ], [ %28, %34 ], [ %112, %110 ]
  %118 = add nuw i64 %29, 1
  %119 = icmp eq i64 %118, %22
  br i1 %119, label %120, label %27, !llvm.loop !139

120:                                              ; preds = %115, %12
  %121 = phi ptr [ null, %12 ], [ %117, %115 ]
  %122 = load ptr, ptr @stdout, align 8, !tbaa !11
  %123 = tail call i32 @fflush(ptr noundef %122) #22
  %124 = load i64, ptr @removeTotalVCG, align 8, !tbaa !7
  %125 = getelementptr inbounds ptr, ptr %3, i64 %124
  store ptr %121, ptr %125, align 8, !tbaa !11
  %126 = add i64 %124, 1
  store i64 %126, ptr @removeTotalVCG, align 8, !tbaa !7
  %127 = load i64, ptr %121, align 8, !tbaa !101
  %128 = getelementptr inbounds %struct._constraintVCGType, ptr %121, i64 0, i32 1
  %129 = load i64, ptr %128, align 8, !tbaa !99
  %130 = getelementptr inbounds %struct._constraintVCGType, ptr %121, i64 0, i32 3
  store i64 1, ptr %130, align 8, !tbaa !103
  %131 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %129, i32 5
  %132 = load i64, ptr %131, align 8, !tbaa !109
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %147, label %134

134:                                              ; preds = %120
  %135 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %129, i32 4
  %136 = load ptr, ptr %135, align 8, !tbaa !106
  br label %137

137:                                              ; preds = %144, %134
  %138 = phi i64 [ 0, %134 ], [ %145, %144 ]
  %139 = getelementptr inbounds %struct._constraintVCGType, ptr %136, i64 %138
  %140 = load i64, ptr %139, align 8, !tbaa !101
  %141 = icmp eq i64 %140, %127
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %.lcssa = phi i64 [ %138, %137 ]
  %143 = getelementptr inbounds %struct._constraintVCGType, ptr %136, i64 %.lcssa, i32 3
  store i64 1, ptr %143, align 8, !tbaa !103
  br label %147

144:                                              ; preds = %137
  %145 = add nuw i64 %138, 1
  %146 = icmp eq i64 %145, %132
  br i1 %146, label %147, label %137, !llvm.loop !140

147:                                              ; preds = %144, %142, %120, %7
  %148 = add i64 %8, 1
  %149 = load i64, ptr @totalSCC, align 8, !tbaa !7
  %150 = icmp ugt i64 %148, %149
  br i1 %150, label %151, label %7, !llvm.loop !141

151:                                              ; preds = %147, %4
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i64 @ExistPathAboveVCG(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) #17 {
  %4 = load i64, ptr @channelNets, align 8, !tbaa !7
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %6, %3
  %7 = phi i64 [ %10, %6 ], [ 1, %3 ]
  %8 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %7, i32 2
  %9 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %7, i32 6
  %10 = add i64 %7, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %11 = load i64, ptr @channelNets, align 8, !tbaa !7
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %6, !llvm.loop !129

13:                                               ; preds = %6, %3
  tail call void @DFSAboveVCG(ptr noundef %0, i64 noundef %1) #22
  %14 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %2, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !111
  ret i64 %15
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @LongestPathVCG(ptr nocapture noundef %0, i64 noundef %1) #19 {
  %3 = load i64, ptr @channelNets, align 8, !tbaa !7
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ %9, %5 ], [ 1, %2 ]
  %7 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %6, i32 2
  %8 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %6, i32 6
  %9 = add i64 %6, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %10 = load i64, ptr @channelNets, align 8, !tbaa !7
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %12, label %5, !llvm.loop !129

12:                                               ; preds = %5, %2
  %13 = tail call i64 @DFSAboveLongestPathVCG(ptr noundef %0, i64 noundef %1) #22
  %14 = add i64 %13, -1
  store i64 %14, ptr @cardBotNotPref, align 8, !tbaa !7
  %15 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr @tracksBotNotPref, align 8
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i64 [ %14, %17 ], [ %24, %19 ]
  %21 = phi i64 [ %15, %17 ], [ %26, %19 ]
  %22 = icmp ne i64 %20, 0
  %23 = zext i1 %22 to i64
  %24 = tail call i64 @llvm.usub.sat.i64(i64 %20, i64 1)
  %25 = getelementptr inbounds i64, ptr %18, i64 %21
  store i64 %23, ptr %25, align 8
  %26 = add i64 %21, -1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %19, !llvm.loop !142

28:                                               ; preds = %19, %12
  %29 = load i64, ptr @channelNets, align 8, !tbaa !7
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %31, %28
  %32 = phi i64 [ %35, %31 ], [ 1, %28 ]
  %33 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %32, i32 2
  %34 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %32, i32 6
  %35 = add i64 %32, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  %36 = load i64, ptr @channelNets, align 8, !tbaa !7
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %31, !llvm.loop !129

38:                                               ; preds = %31, %28
  %39 = tail call i64 @DFSBelowLongestPathVCG(ptr noundef %0, i64 noundef %1) #22
  %40 = add i64 %39, -1
  store i64 %40, ptr @cardTopNotPref, align 8, !tbaa !7
  %41 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %81, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr @tracksTopNotPref, align 8
  br label %51

45:                                               ; preds = %51
  %.lcssa = phi i64 [ %59, %51 ]
  %46 = icmp eq i64 %.lcssa, 0
  br i1 %46, label %81, label %47

47:                                               ; preds = %45
  %48 = load ptr, ptr @tracksTopNotPref, align 8, !tbaa !11
  %49 = load ptr, ptr @tracksBotNotPref, align 8
  %50 = load ptr, ptr @tracksNotPref, align 8
  br label %61

51:                                               ; preds = %51, %43
  %52 = phi i64 [ %40, %43 ], [ %56, %51 ]
  %53 = phi i64 [ 1, %43 ], [ %58, %51 ]
  %54 = icmp ne i64 %52, 0
  %55 = zext i1 %54 to i64
  %56 = tail call i64 @llvm.usub.sat.i64(i64 %52, i64 1)
  %57 = getelementptr inbounds i64, ptr %44, i64 %53
  store i64 %55, ptr %57, align 8
  %58 = add i64 %53, 1
  %59 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %45, label %51, !llvm.loop !143

61:                                               ; preds = %76, %47
  %62 = phi i64 [ 0, %47 ], [ %77, %76 ]
  %63 = phi i64 [ 1, %47 ], [ %78, %76 ]
  %64 = getelementptr inbounds i64, ptr %48, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !7
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = getelementptr inbounds i64, ptr %49, i64 %63
  %69 = load i64, ptr %68, align 8, !tbaa !7
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67, %61
  %72 = getelementptr inbounds i64, ptr %50, i64 %63
  store i64 1, ptr %72, align 8, !tbaa !7
  %73 = add i64 %62, 1
  br label %76

74:                                               ; preds = %67
  %75 = getelementptr inbounds i64, ptr %50, i64 %63
  store i64 0, ptr %75, align 8, !tbaa !7
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi i64 [ %73, %71 ], [ %62, %74 ]
  %78 = add i64 %63, 1
  %79 = load i64, ptr @channelTracks, align 8, !tbaa !7
  %80 = icmp ugt i64 %78, %79
  br i1 %80, label %81, label %61, !llvm.loop !144

81:                                               ; preds = %76, %45, %38
  %82 = phi i64 [ 0, %45 ], [ 0, %38 ], [ %77, %76 ]
  store i64 %82, ptr @cardNotPref, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i64 @DFSAboveLongestPathVCG(ptr nocapture noundef %0, i64 noundef %1) #17 {
  %3 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1
  %4 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 3
  store i64 1, ptr %4, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !105
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %26, %2
  %9 = phi i64 [ %27, %26 ], [ %6, %2 ]
  %10 = phi i64 [ %28, %26 ], [ 0, %2 ]
  %11 = phi i64 [ %29, %26 ], [ 0, %2 ]
  %12 = load ptr, ptr %3, align 8, !tbaa !96
  %13 = getelementptr inbounds %struct._constraintVCGType, ptr %12, i64 %11, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !103
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct._constraintVCGType, ptr %12, i64 %11, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !99
  %19 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %18, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !111
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = tail call i64 @DFSAboveLongestPathVCG(ptr noundef nonnull %0, i64 noundef %18) #22
  %24 = tail call i64 @llvm.umax.i64(i64 %23, i64 %10)
  %25 = load i64, ptr %5, align 8, !tbaa !105
  br label %26

26:                                               ; preds = %22, %16, %8
  %27 = phi i64 [ %9, %8 ], [ %9, %16 ], [ %25, %22 ]
  %28 = phi i64 [ %10, %8 ], [ %10, %16 ], [ %24, %22 ]
  %29 = add nuw i64 %11, 1
  %30 = icmp ult i64 %29, %27
  br i1 %30, label %8, label %31, !llvm.loop !145

31:                                               ; preds = %26, %2
  %32 = phi i64 [ 0, %2 ], [ %28, %26 ]
  %33 = add i64 %32, 1
  ret i64 %33
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #5

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i64 @DFSBelowLongestPathVCG(ptr nocapture noundef %0, i64 noundef %1) #17 {
  %3 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 7
  store i64 1, ptr %3, align 8, !tbaa !114
  %4 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !109
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 4
  br label %9

9:                                                ; preds = %27, %7
  %10 = phi i64 [ %5, %7 ], [ %28, %27 ]
  %11 = phi i64 [ 0, %7 ], [ %29, %27 ]
  %12 = phi i64 [ 0, %7 ], [ %30, %27 ]
  %13 = load ptr, ptr %8, align 8, !tbaa !106
  %14 = getelementptr inbounds %struct._constraintVCGType, ptr %13, i64 %12, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !103
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct._constraintVCGType, ptr %13, i64 %12
  %19 = load i64, ptr %18, align 8, !tbaa !101
  %20 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %19, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !114
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = tail call i64 @DFSBelowLongestPathVCG(ptr noundef nonnull %0, i64 noundef %19) #22
  %25 = tail call i64 @llvm.umax.i64(i64 %24, i64 %11)
  %26 = load i64, ptr %4, align 8, !tbaa !109
  br label %27

27:                                               ; preds = %23, %17, %9
  %28 = phi i64 [ %10, %9 ], [ %10, %17 ], [ %26, %23 ]
  %29 = phi i64 [ %11, %9 ], [ %11, %17 ], [ %25, %23 ]
  %30 = add nuw i64 %12, 1
  %31 = icmp ult i64 %30, %28
  br i1 %31, label %9, label %32, !llvm.loop !146

32:                                               ; preds = %27, %2
  %33 = phi i64 [ 0, %2 ], [ %29, %27 ]
  %34 = add i64 %33, 1
  ret i64 %34
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i64 @VCV(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) #17 {
  %5 = load i64, ptr @channelNets, align 8, !tbaa !7
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %40, label %7

7:                                                ; preds = %35, %4
  %8 = phi i64 [ %36, %35 ], [ 0, %4 ]
  %9 = phi i64 [ %37, %35 ], [ 1, %4 ]
  %10 = getelementptr inbounds i64, ptr %3, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !7
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %7
  %14 = icmp ult i64 %11, %2
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = tail call i64 @ExistPathAboveVCG(ptr noundef %0, i64 noundef %9, i64 noundef %1) #22
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = add i64 %8, %18
  br label %35

20:                                               ; preds = %13
  %21 = icmp ugt i64 %11, %2
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = tail call i64 @ExistPathAboveVCG(ptr noundef %0, i64 noundef %1, i64 noundef %9) #22
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = add i64 %8, %25
  br label %35

27:                                               ; preds = %20
  %28 = tail call i64 @ExistPathAboveVCG(ptr noundef %0, i64 noundef %9, i64 noundef %1) #22
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = tail call i64 @ExistPathAboveVCG(ptr noundef %0, i64 noundef %1, i64 noundef %9) #22
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30, %27
  %34 = add i64 %8, 1
  br label %35

35:                                               ; preds = %33, %30, %22, %15, %7
  %36 = phi i64 [ %34, %33 ], [ %8, %30 ], [ %8, %7 ], [ %19, %15 ], [ %26, %22 ]
  %37 = add i64 %9, 1
  %38 = load i64, ptr @channelNets, align 8, !tbaa !7
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %7, !llvm.loop !147

40:                                               ; preds = %35, %4
  %41 = phi i64 [ 0, %4 ], [ %36, %35 ]
  ret i64 %41
}

attributes #0 = { nofree nounwind optsize memory(readwrite, argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind optsize memory(readwrite, argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind optsize allocsize(0) }
attributes #21 = { nounwind optsize }
attributes #22 = { optsize }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind optsize }
attributes #25 = { cold }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !9, i64 0}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = !{!46, !12, i64 0}
!46 = !{!"_nodeHCGType", !12, i64 0, !8, i64 8, !8, i64 16}
!47 = distinct !{!47, !14}
!48 = !{!46, !8, i64 8}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !14}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
!58 = distinct !{!58, !14}
!59 = !{!9, !9, i64 0}
!60 = distinct !{!60, !14}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
!64 = distinct !{!64, !14}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
!67 = distinct !{!67, !14}
!68 = distinct !{!68, !14}
!69 = distinct !{!69, !14}
!70 = distinct !{!70, !14}
!71 = distinct !{!71, !14}
!72 = distinct !{!72, !14}
!73 = distinct !{!73, !14}
!74 = distinct !{!74, !14}
!75 = distinct !{!75, !14}
!76 = distinct !{!76, !14}
!77 = distinct !{!77, !14}
!78 = !{i32 0, i32 2}
!79 = distinct !{!79, !14}
!80 = distinct !{!80, !14}
!81 = distinct !{!81, !14}
!82 = distinct !{!82, !14}
!83 = distinct !{!83, !14}
!84 = distinct !{!84, !14}
!85 = distinct !{!85, !14}
!86 = distinct !{!86, !14}
!87 = distinct !{!87, !14}
!88 = distinct !{!88, !14}
!89 = distinct !{!89, !14}
!90 = distinct !{!90, !14}
!91 = distinct !{!91, !14}
!92 = distinct !{!92, !14}
!93 = distinct !{!93, !14}
!94 = distinct !{!94, !14}
!95 = distinct !{!95, !14}
!96 = !{!97, !12, i64 0}
!97 = !{!"_nodeVCGType", !12, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !12, i64 32, !8, i64 40, !8, i64 48, !8, i64 56}
!98 = distinct !{!98, !14}
!99 = !{!100, !8, i64 8}
!100 = !{!"_constraintVCGType", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!101 = !{!100, !8, i64 0}
!102 = !{!100, !8, i64 16}
!103 = !{!100, !8, i64 24}
!104 = distinct !{!104, !14}
!105 = !{!97, !8, i64 8}
!106 = !{!97, !12, i64 32}
!107 = distinct !{!107, !14}
!108 = distinct !{!108, !14}
!109 = !{!97, !8, i64 40}
!110 = distinct !{!110, !14}
!111 = !{!97, !8, i64 24}
!112 = distinct !{!112, !14}
!113 = distinct !{!113, !14}
!114 = !{!97, !8, i64 56}
!115 = !{!97, !8, i64 16}
!116 = distinct !{!116, !14}
!117 = distinct !{!117, !14}
!118 = !{!97, !8, i64 48}
!119 = distinct !{!119, !14}
!120 = distinct !{!120, !14}
!121 = distinct !{!121, !14}
!122 = distinct !{!122, !14}
!123 = distinct !{!123, !14}
!124 = distinct !{!124, !14, !125, !126}
!125 = !{!"llvm.loop.isvectorized", i32 1}
!126 = !{!"llvm.loop.unroll.runtime.disable"}
!127 = distinct !{!127, !14, !125, !126}
!128 = distinct !{!128, !14}
!129 = distinct !{!129, !14}
!130 = distinct !{!130, !14}
!131 = distinct !{!131, !14}
!132 = distinct !{!132, !14}
!133 = distinct !{!133, !14}
!134 = distinct !{!134, !14}
!135 = distinct !{!135, !14}
!136 = distinct !{!136, !14}
!137 = distinct !{!137, !14}
!138 = distinct !{!138, !14}
!139 = distinct !{!139, !14}
!140 = distinct !{!140, !14}
!141 = distinct !{!141, !14}
!142 = distinct !{!142, !14}
!143 = distinct !{!143, !14}
!144 = distinct !{!144, !14}
!145 = distinct !{!145, !14}
!146 = distinct !{!146, !14}
!147 = distinct !{!147, !14}
