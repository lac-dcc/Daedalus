; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/Ptrdist/ks/ks.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ModuleList = type { ptr, ptr }
%struct.anon = type { i64, i64, i64 }
%struct._Module = type { ptr, i64 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"(%s:%s():%d): \00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"/src/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ks/KS-1.c\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ReadData\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"unable to open input file [%s]\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%lu %lu\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"unable to parse header in file [%s]\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"unable to allocate a module list node\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"NetsToModules\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"unable to allocate net list node\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"unable to allocate ModuleRec\00", align 1
@modules = internal global [1024 x ptr] zeroinitializer, align 16
@cost = internal global [1024 x float] zeroinitializer, align 16
@nets = internal global [1024 x ptr] zeroinitializer, align 16
@moduleToGroup = internal global [1024 x i32] zeroinitializer, align 16
@D = internal global [1024 x float] zeroinitializer, align 16
@groupA = internal global %struct._ModuleList zeroinitializer, align 8
@groupB = internal global %struct._ModuleList zeroinitializer, align 8
@swapToB = internal global %struct._ModuleList zeroinitializer, align 8
@swapToA = internal global %struct._ModuleList zeroinitializer, align 8
@numModules = internal global i64 0, align 8
@GP = internal global [1024 x float] zeroinitializer, align 16
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"----------------------------------------------\0A\00", align 1
@maxStat = internal global i64 0, align 8
@netStats = internal global [256 x %struct.anon] zeroinitializer, align 16
@.str.1.6 = private unnamed_addr constant [12 x i8] c"Group A:  \0A\00", align 1
@.str.2.7 = private unnamed_addr constant [6 x i8] c"%3lu \00", align 1
@.str.4.8 = private unnamed_addr constant [12 x i8] c"Group B:  \0A\00", align 1
@.str.5.9 = private unnamed_addr constant [23 x i8] c"Conn %3lu - %3lu cut.\0A\00", align 1
@.str.6.10 = private unnamed_addr constant [23 x i8] c"Total edge cuts = %lu\0A\00", align 1
@numNets = internal global i64 0, align 8
@.str.7.11 = private unnamed_addr constant [15 x i8] c"Net %3lu cut.\0A\00", align 1
@.str.8.12 = private unnamed_addr constant [23 x i8] c"Total net cuts  = %lu\0A\00", align 1
@.str.9.13 = private unnamed_addr constant [60 x i8] c"sz:%5lu     total:%5lu     edgesCut:%5lu     netsCuts:%5lu\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.10.14 = private unnamed_addr constant [24 x i8] c"Usage: KL <input_file>\0A\00", align 1
@.str.11.15 = private unnamed_addr constant [24 x i8] c"No progress: gMax = %f\0A\00", align 1
@.str.12.16 = private unnamed_addr constant [23 x i8] c"gMax = %f, iMax = %lu\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define internal void @ReadNetList(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #18
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 46) #20
  %8 = load ptr, ptr @stderr, align 8, !tbaa !7
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0) #20
  %10 = load ptr, ptr @stderr, align 8, !tbaa !7
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  tail call void @exit(i32 noundef 1) #21
  unreachable

12:                                               ; preds = %1
  %13 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 1024, ptr noundef nonnull %3) #19
  %14 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %2, ptr noundef nonnull @.str.6, ptr noundef nonnull @numNets, ptr noundef nonnull @numModules) #22
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i64, ptr @numNets, align 8, !tbaa !11
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %69, label %26

19:                                               ; preds = %12
  %20 = load ptr, ptr @stderr, align 8, !tbaa !7
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 51) #20
  %22 = load ptr, ptr @stderr, align 8, !tbaa !7
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.7, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0) #20
  %24 = load ptr, ptr @stderr, align 8, !tbaa !7
  %25 = call i32 @fputc(i32 10, ptr %24)
  call void @exit(i32 noundef 1) #21
  unreachable

26:                                               ; preds = %64, %16
  %27 = phi i64 [ %66, %64 ], [ 0, %16 ]
  %28 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 1024, ptr noundef nonnull %3) #19
  %29 = call ptr @strtok(ptr noundef nonnull %2, ptr noundef nonnull @.str.8) #22
  %30 = call i64 @atol(ptr nocapture noundef %29) #23
  %31 = add nsw i64 %30, -1
  %32 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load ptr, ptr @stderr, align 8, !tbaa !7
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 63) #20
  %37 = load ptr, ptr @stderr, align 8, !tbaa !7
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #20
  %39 = load ptr, ptr @stderr, align 8, !tbaa !7
  %40 = call i32 @fputc(i32 10, ptr %39)
  call void @exit(i32 noundef 1) #21
  unreachable

41:                                               ; preds = %26
  %42 = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.8) #22
  %43 = call i64 @atol(ptr nocapture noundef %42) #23
  %44 = add nsw i64 %43, -1
  %45 = getelementptr inbounds %struct._Module, ptr %32, i64 0, i32 1
  store i64 %44, ptr %45, align 8, !tbaa !13
  store ptr null, ptr %32, align 8, !tbaa !15
  br label %46

46:                                               ; preds = %60, %41
  %47 = phi ptr [ %32, %41 ], [ %51, %60 ]
  %48 = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.8) #22
  %49 = icmp eq ptr %48, null
  br i1 %49, label %64, label %50

50:                                               ; preds = %46
  %51 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load ptr, ptr @stderr, align 8, !tbaa !7
  %55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 70) #20
  %56 = load ptr, ptr @stderr, align 8, !tbaa !7
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #20
  %58 = load ptr, ptr @stderr, align 8, !tbaa !7
  %59 = call i32 @fputc(i32 10, ptr %58)
  call void @exit(i32 noundef 1) #21
  unreachable

60:                                               ; preds = %50
  %61 = call i64 @atol(ptr nocapture noundef nonnull %48) #23
  %62 = add nsw i64 %61, -1
  %63 = getelementptr inbounds %struct._Module, ptr %51, i64 0, i32 1
  store i64 %62, ptr %63, align 8, !tbaa !13
  store ptr null, ptr %51, align 8, !tbaa !15
  store ptr %51, ptr %47, align 8, !tbaa !15
  br label %46, !llvm.loop !16

64:                                               ; preds = %46
  %65 = getelementptr inbounds [1024 x ptr], ptr @nets, i64 0, i64 %31
  store ptr %32, ptr %65, align 8, !tbaa !7
  %66 = add nuw i64 %27, 1
  %67 = load i64, ptr @numNets, align 8, !tbaa !11
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %26, label %69, !llvm.loop !18

69:                                               ; preds = %64, %16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i64 @atol(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize uwtable
define internal void @NetsToModules() #0 {
  %1 = load i64, ptr @numModules, align 8, !tbaa !11
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = shl nuw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @modules, i8 0, i64 %4, i1 false), !tbaa !7
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i64, ptr @numNets, align 8, !tbaa !11
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %35, label %8

8:                                                ; preds = %32, %5
  %9 = phi i64 [ %33, %32 ], [ 0, %5 ]
  %10 = getelementptr inbounds [1024 x ptr], ptr @nets, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %24, %8
  %14 = phi ptr [ %30, %24 ], [ %11, %8 ]
  %15 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load ptr, ptr @stderr, align 8, !tbaa !7
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10, i32 noundef 96) #20
  %20 = load ptr, ptr @stderr, align 8, !tbaa !7
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, i32 noundef 0) #20
  %22 = load ptr, ptr @stderr, align 8, !tbaa !7
  %23 = tail call i32 @fputc(i32 10, ptr %22)
  tail call void @exit(i32 noundef 1) #21
  unreachable

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct._Module, ptr %15, i64 0, i32 1
  store i64 %9, ptr %25, align 8, !tbaa !19
  %26 = getelementptr inbounds %struct._Module, ptr %14, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !13
  %28 = getelementptr inbounds [1024 x ptr], ptr @modules, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  store ptr %29, ptr %15, align 8, !tbaa !21
  store ptr %15, ptr %28, align 8, !tbaa !7
  %30 = load ptr, ptr %14, align 8, !tbaa !7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13, !llvm.loop !22

32:                                               ; preds = %24, %8
  %33 = add nuw i64 %9, 1
  %34 = icmp eq i64 %33, %6
  br i1 %34, label %35, label %8, !llvm.loop !23

35:                                               ; preds = %32, %5
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @ComputeNetCosts() #9 {
  %1 = load i64, ptr @numNets, align 8, !tbaa !11
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %35, label %3

3:                                                ; preds = %0
  %4 = add i64 %1, 3
  %5 = and i64 %4, -4
  %6 = add i64 %1, -1
  %7 = insertelement <4 x i64> poison, i64 %6, i64 0
  %8 = shufflevector <4 x i64> %7, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %9

9:                                                ; preds = %31, %3
  %10 = phi i64 [ 0, %3 ], [ %32, %31 ]
  %11 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %3 ], [ %33, %31 ]
  %12 = icmp ule <4 x i64> %11, %8
  %13 = extractelement <4 x i1> %12, i64 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr inbounds [1024 x float], ptr @cost, i64 0, i64 %10
  store float 1.000000e+00, ptr %15, align 16, !tbaa !24
  br label %16

16:                                               ; preds = %14, %9
  %17 = extractelement <4 x i1> %12, i64 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = or i64 %10, 1
  %20 = getelementptr inbounds [1024 x float], ptr @cost, i64 0, i64 %19
  store float 1.000000e+00, ptr %20, align 4, !tbaa !24
  br label %21

21:                                               ; preds = %18, %16
  %22 = extractelement <4 x i1> %12, i64 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = or i64 %10, 2
  %25 = getelementptr inbounds [1024 x float], ptr @cost, i64 0, i64 %24
  store float 1.000000e+00, ptr %25, align 8, !tbaa !24
  br label %26

26:                                               ; preds = %23, %21
  %27 = extractelement <4 x i1> %12, i64 3
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = or i64 %10, 3
  %30 = getelementptr inbounds [1024 x float], ptr @cost, i64 0, i64 %29
  store float 1.000000e+00, ptr %30, align 4, !tbaa !24
  br label %31

31:                                               ; preds = %28, %26
  %32 = add i64 %10, 4
  %33 = add <4 x i64> %11, <i64 4, i64 4, i64 4, i64 4>
  %34 = icmp eq i64 %32, %5
  br i1 %34, label %35, label %9, !llvm.loop !26

35:                                               ; preds = %31, %0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @InitLists() #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @groupA, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @groupB, i8 0, i64 16, i1 false)
  %1 = load i64, ptr @numModules, align 8, !tbaa !11
  %2 = lshr i64 %1, 1
  %3 = icmp ult i64 %1, 2
  br i1 %3, label %49, label %4

4:                                                ; preds = %0
  %5 = tail call i64 @llvm.umax.i64(i64 %2, i64 1)
  br label %6

6:                                                ; preds = %44, %4
  %7 = phi i64 [ %47, %44 ], [ 0, %4 ]
  %8 = phi ptr [ %27, %44 ], [ null, %4 ]
  %9 = phi ptr [ %12, %44 ], [ null, %4 ]
  %10 = phi ptr [ %45, %44 ], [ null, %4 ]
  %11 = phi ptr [ %29, %44 ], [ null, %4 ]
  %12 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %6
  %15 = load ptr, ptr @stderr, align 8, !tbaa !7
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.12, i32 noundef 145) #20
  %17 = load ptr, ptr @stderr, align 8, !tbaa !7
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0, i32 noundef 0) #20
  %19 = load ptr, ptr @stderr, align 8, !tbaa !7
  %20 = tail call i32 @fputc(i32 10, ptr %19)
  tail call void @exit(i32 noundef 1) #21
  unreachable

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct._Module, ptr %12, i64 0, i32 1
  store i64 %7, ptr %22, align 8, !tbaa !29
  %23 = icmp eq ptr %8, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store ptr %12, ptr @groupA, align 8, !tbaa !31
  store ptr null, ptr %12, align 8, !tbaa !33
  br label %26

25:                                               ; preds = %21
  store ptr null, ptr %12, align 8, !tbaa !33
  store ptr %12, ptr %9, align 8, !tbaa !33
  br label %26

26:                                               ; preds = %25, %24
  %27 = phi ptr [ %8, %25 ], [ %12, %24 ]
  store ptr %12, ptr getelementptr inbounds (%struct._ModuleList, ptr @groupA, i64 0, i32 1), align 8
  %28 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %7
  store i32 0, ptr %28, align 4, !tbaa !34
  %29 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load ptr, ptr @stderr, align 8, !tbaa !7
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.12, i32 noundef 164) #20
  %34 = load ptr, ptr @stderr, align 8, !tbaa !7
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0, i32 noundef 0) #20
  %36 = load ptr, ptr @stderr, align 8, !tbaa !7
  %37 = tail call i32 @fputc(i32 10, ptr %36)
  tail call void @exit(i32 noundef 1) #21
  unreachable

38:                                               ; preds = %26
  %39 = add nuw i64 %2, %7
  %40 = getelementptr inbounds %struct._Module, ptr %29, i64 0, i32 1
  store i64 %39, ptr %40, align 8, !tbaa !29
  %41 = icmp eq ptr %10, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store ptr %29, ptr @groupB, align 8, !tbaa !31
  store ptr null, ptr %29, align 8, !tbaa !33
  br label %44

43:                                               ; preds = %38
  store ptr null, ptr %29, align 8, !tbaa !33
  store ptr %29, ptr %11, align 8, !tbaa !33
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi ptr [ %10, %43 ], [ %29, %42 ]
  store ptr %29, ptr getelementptr inbounds (%struct._ModuleList, ptr @groupB, i64 0, i32 1), align 8
  %46 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %39
  store i32 1, ptr %46, align 4, !tbaa !34
  %47 = add nuw nsw i64 %7, 1
  %48 = icmp eq i64 %47, %5
  br i1 %48, label %49, label %6, !llvm.loop !35

49:                                               ; preds = %44, %0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @swapToA, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @swapToB, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal void @ComputeDs(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #11 {
  %4 = load ptr, ptr %0, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %59, label %6

6:                                                ; preds = %54, %3
  %7 = phi ptr [ %57, %54 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct._Module, ptr %7, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !29
  %10 = getelementptr inbounds [1024 x ptr], ptr @modules, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %54, label %18

13:                                               ; preds = %47, %18
  %14 = phi float [ %21, %18 ], [ %48, %47 ]
  %15 = phi float [ %20, %18 ], [ %49, %47 ]
  %16 = load ptr, ptr %19, align 8, !tbaa !7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %52, label %18, !llvm.loop !36

18:                                               ; preds = %13, %6
  %19 = phi ptr [ %16, %13 ], [ %11, %6 ]
  %20 = phi float [ %15, %13 ], [ 0.000000e+00, %6 ]
  %21 = phi float [ %14, %13 ], [ 0.000000e+00, %6 ]
  %22 = getelementptr inbounds %struct._Module, ptr %19, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !19
  %24 = getelementptr inbounds [1024 x ptr], ptr @nets, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %13, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds [1024 x float], ptr @cost, i64 0, i64 %23
  br label %29

29:                                               ; preds = %47, %27
  %30 = phi ptr [ %25, %27 ], [ %50, %47 ]
  %31 = phi float [ %20, %27 ], [ %49, %47 ]
  %32 = phi float [ %21, %27 ], [ %48, %47 ]
  %33 = getelementptr inbounds %struct._Module, ptr %30, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !13
  %35 = icmp eq i64 %34, %9
  br i1 %35, label %47, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %34
  %38 = load i32, ptr %37, align 4, !tbaa !34
  %39 = icmp ult i32 %38, 2
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = icmp eq i32 %38, %1
  %42 = load float, ptr %28, align 4, !tbaa !24
  br i1 %41, label %43, label %45

43:                                               ; preds = %40
  %44 = fadd float %32, %42
  br label %47

45:                                               ; preds = %40
  %46 = fadd float %31, %42
  br label %47

47:                                               ; preds = %45, %43, %36, %29
  %48 = phi float [ %44, %43 ], [ %32, %45 ], [ %32, %36 ], [ %32, %29 ]
  %49 = phi float [ %31, %43 ], [ %46, %45 ], [ %31, %36 ], [ %31, %29 ]
  %50 = load ptr, ptr %30, align 8, !tbaa !7
  %51 = icmp eq ptr %50, null
  br i1 %51, label %13, label %29, !llvm.loop !37

52:                                               ; preds = %13
  %.lcssa1 = phi float [ %14, %13 ]
  %.lcssa = phi float [ %15, %13 ]
  %53 = fsub float %.lcssa, %.lcssa1
  br label %54

54:                                               ; preds = %52, %6
  %55 = phi float [ %53, %52 ], [ 0.000000e+00, %6 ]
  %56 = getelementptr inbounds [1024 x float], ptr @D, i64 0, i64 %9
  store float %55, ptr %56, align 4, !tbaa !24
  %57 = load ptr, ptr %7, align 8, !tbaa !7
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %6, !llvm.loop !38

59:                                               ; preds = %54, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal float @CAiBj(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = getelementptr inbounds %struct._Module, ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !29
  %5 = getelementptr inbounds %struct._Module, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !29
  %7 = getelementptr inbounds [1024 x ptr], ptr @modules, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %14

10:                                               ; preds = %24, %14
  %11 = phi float [ %16, %14 ], [ %31, %24 ]
  %12 = load ptr, ptr %15, align 8, !tbaa !7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14, !llvm.loop !39

14:                                               ; preds = %10, %2
  %15 = phi ptr [ %12, %10 ], [ %8, %2 ]
  %16 = phi float [ %11, %10 ], [ 0.000000e+00, %2 ]
  %17 = getelementptr inbounds %struct._Module, ptr %15, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !19
  %19 = getelementptr inbounds [1024 x float], ptr @cost, i64 0, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !24
  %21 = getelementptr inbounds [1024 x ptr], ptr @nets, i64 0, i64 %18
  %22 = load ptr, ptr %21, align 8, !tbaa !7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %10, label %24

24:                                               ; preds = %24, %14
  %25 = phi ptr [ %32, %24 ], [ %22, %14 ]
  %26 = phi float [ %31, %24 ], [ %16, %14 ]
  %27 = getelementptr inbounds %struct._Module, ptr %25, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !13
  %29 = icmp eq i64 %28, %4
  %30 = select i1 %29, float %20, float -0.000000e+00
  %31 = fadd float %26, %30
  %32 = load ptr, ptr %25, align 8, !tbaa !7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %10, label %24, !llvm.loop !40

34:                                               ; preds = %10, %2
  %35 = phi float [ 0.000000e+00, %2 ], [ %11, %10 ]
  ret float %35
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @SwapNode(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) #13 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = load ptr, ptr %2, align 8, !tbaa !31
  %8 = getelementptr inbounds %struct._ModuleList, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %21

12:                                               ; preds = %6
  %13 = load ptr, ptr %1, align 8, !tbaa !33
  store ptr %13, ptr %2, align 8, !tbaa !31
  br label %21

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct._ModuleList, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store ptr %0, ptr %15, align 8, !tbaa !41
  br label %19

19:                                               ; preds = %18, %14
  %20 = load ptr, ptr %1, align 8, !tbaa !33
  store ptr %20, ptr %0, align 8, !tbaa !33
  br label %21

21:                                               ; preds = %19, %12, %11
  %22 = getelementptr inbounds %struct._ModuleList, ptr %3, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, ptr %3, ptr %23
  store ptr %1, ptr %25, align 8, !tbaa !7
  store ptr %1, ptr %22, align 8
  store ptr null, ptr %1, align 8, !tbaa !33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal void @UpdateDs(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct._Module, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !29
  %5 = getelementptr inbounds [1024 x ptr], ptr @modules, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %11

8:                                                ; preds = %35, %11
  %9 = load ptr, ptr %12, align 8, !tbaa !7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11, !llvm.loop !42

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %9, %8 ], [ %6, %2 ]
  %13 = getelementptr inbounds %struct._Module, ptr %12, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !19
  %15 = getelementptr inbounds [1024 x ptr], ptr @nets, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %8, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds [1024 x float], ptr @cost, i64 0, i64 %14
  br label %20

20:                                               ; preds = %35, %18
  %21 = phi ptr [ %16, %18 ], [ %36, %35 ]
  %22 = getelementptr inbounds %struct._Module, ptr %21, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !13
  %24 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !34
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = icmp eq i32 %25, %1
  %29 = getelementptr inbounds [1024 x float], ptr @D, i64 0, i64 %23
  %30 = load float, ptr %29, align 4, !tbaa !24
  %31 = load float, ptr %19, align 4, !tbaa !24
  %32 = fneg float %31
  %33 = select i1 %28, float %31, float %32
  %34 = fadd float %30, %33
  store float %34, ptr %29, align 4, !tbaa !24
  br label %35

35:                                               ; preds = %27, %20
  %36 = load ptr, ptr %21, align 8, !tbaa !7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %8, label %20, !llvm.loop !43

38:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal float @FindMaxGpAndSwap() #14 {
  %1 = load ptr, ptr @groupA, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %52, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @groupB, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br label %14

6:                                                ; preds = %44, %14
  %7 = phi ptr [ %20, %14 ], [ %45, %44 ]
  %8 = phi ptr [ %19, %14 ], [ %46, %44 ]
  %9 = phi ptr [ %18, %14 ], [ %47, %44 ]
  %10 = phi ptr [ %17, %14 ], [ %48, %44 ]
  %11 = phi float [ %16, %14 ], [ %49, %44 ]
  %12 = load ptr, ptr %15, align 8, !tbaa !7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %52, label %14, !llvm.loop !44

14:                                               ; preds = %6, %3
  %15 = phi ptr [ %1, %3 ], [ %12, %6 ]
  %16 = phi float [ 0xC16312CFE0000000, %3 ], [ %11, %6 ]
  %17 = phi ptr [ null, %3 ], [ %10, %6 ]
  %18 = phi ptr [ null, %3 ], [ %9, %6 ]
  %19 = phi ptr [ null, %3 ], [ %8, %6 ]
  %20 = phi ptr [ null, %3 ], [ %7, %6 ]
  %21 = phi ptr [ null, %3 ], [ %15, %6 ]
  br i1 %5, label %6, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct._Module, ptr %15, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !29
  %25 = getelementptr inbounds [1024 x float], ptr @D, i64 0, i64 %24
  %26 = load float, ptr %25, align 4, !tbaa !24
  br label %27

27:                                               ; preds = %44, %22
  %28 = phi ptr [ %4, %22 ], [ %50, %44 ]
  %29 = phi float [ %16, %22 ], [ %49, %44 ]
  %30 = phi ptr [ %17, %22 ], [ %48, %44 ]
  %31 = phi ptr [ %18, %22 ], [ %47, %44 ]
  %32 = phi ptr [ %19, %22 ], [ %46, %44 ]
  %33 = phi ptr [ %20, %22 ], [ %45, %44 ]
  %34 = phi ptr [ null, %22 ], [ %28, %44 ]
  %35 = getelementptr inbounds %struct._Module, ptr %28, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !29
  %37 = getelementptr inbounds [1024 x float], ptr @D, i64 0, i64 %36
  %38 = load float, ptr %37, align 4, !tbaa !24
  %39 = fadd float %26, %38
  %40 = tail call float @CAiBj(ptr noundef nonnull %15, ptr noundef nonnull %28) #19
  %41 = tail call float @llvm.fmuladd.f32(float %40, float -2.000000e+00, float %39)
  %42 = fcmp ogt float %41, %29
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %43, %27
  %45 = phi ptr [ %15, %43 ], [ %33, %27 ]
  %46 = phi ptr [ %21, %43 ], [ %32, %27 ]
  %47 = phi ptr [ %28, %43 ], [ %31, %27 ]
  %48 = phi ptr [ %34, %43 ], [ %30, %27 ]
  %49 = phi float [ %41, %43 ], [ %29, %27 ]
  %50 = load ptr, ptr %28, align 8, !tbaa !7
  %51 = icmp eq ptr %50, null
  br i1 %51, label %6, label %27, !llvm.loop !45

52:                                               ; preds = %6, %0
  %53 = phi ptr [ null, %0 ], [ %7, %6 ]
  %54 = phi ptr [ null, %0 ], [ %8, %6 ]
  %55 = phi ptr [ null, %0 ], [ %9, %6 ]
  %56 = phi ptr [ null, %0 ], [ %10, %6 ]
  %57 = phi float [ 0xC16312CFE0000000, %0 ], [ %11, %6 ]
  tail call void @SwapNode(ptr noundef %54, ptr noundef %53, ptr noundef nonnull @groupA, ptr noundef nonnull @swapToB) #19
  tail call void @SwapNode(ptr noundef %56, ptr noundef %55, ptr noundef nonnull @groupB, ptr noundef nonnull @swapToA) #19
  %58 = getelementptr inbounds %struct._Module, ptr %53, i64 0, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !29
  %60 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %59
  store i32 3, ptr %60, align 4, !tbaa !34
  %61 = getelementptr inbounds %struct._Module, ptr %55, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !29
  %63 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %62
  store i32 2, ptr %63, align 4, !tbaa !34
  tail call void @UpdateDs(ptr noundef %53, i32 noundef 0) #19
  tail call void @UpdateDs(ptr noundef %55, i32 noundef 1) #19
  ret float %57
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @SwapSubsetAndReset(i64 noundef %0) #14 {
  %2 = add i64 %0, 1
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %11, %3 ]
  %5 = phi ptr [ null, %1 ], [ %10, %3 ]
  %6 = phi ptr [ @swapToA, %1 ], [ %10, %3 ]
  %7 = phi ptr [ null, %1 ], [ %9, %3 ]
  %8 = phi ptr [ @swapToB, %1 ], [ %9, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = load ptr, ptr %6, align 8, !tbaa !7
  %11 = add i64 %4, 1
  %12 = icmp eq i64 %4, %2
  br i1 %12, label %13, label %3, !llvm.loop !46

13:                                               ; preds = %3
  %.lcssa3 = phi ptr [ %5, %3 ]
  %.lcssa2 = phi ptr [ %7, %3 ]
  %.lcssa1 = phi ptr [ %9, %3 ]
  %.lcssa = phi ptr [ %10, %3 ]
  %14 = icmp eq ptr %.lcssa, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @groupA, ptr noundef nonnull align 8 dereferenceable(16) @swapToA, i64 16, i1 false), !tbaa.struct !47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @groupB, ptr noundef nonnull align 8 dereferenceable(16) @swapToB, i64 16, i1 false), !tbaa.struct !47
  br label %21

16:                                               ; preds = %13
  store ptr %.lcssa1, ptr %.lcssa3, align 8, !tbaa !33
  %17 = load ptr, ptr @swapToA, align 8, !tbaa !31
  store ptr %17, ptr @groupA, align 8, !tbaa !31
  %18 = load ptr, ptr getelementptr inbounds (%struct._ModuleList, ptr @swapToB, i64 0, i32 1), align 8, !tbaa !41
  store ptr %18, ptr getelementptr inbounds (%struct._ModuleList, ptr @groupA, i64 0, i32 1), align 8, !tbaa !41
  store ptr %.lcssa, ptr %.lcssa2, align 8, !tbaa !33
  %19 = load ptr, ptr @swapToB, align 8, !tbaa !31
  store ptr %19, ptr @groupB, align 8, !tbaa !31
  %20 = load ptr, ptr getelementptr inbounds (%struct._ModuleList, ptr @swapToA, i64 0, i32 1), align 8, !tbaa !41
  store ptr %20, ptr getelementptr inbounds (%struct._ModuleList, ptr @groupB, i64 0, i32 1), align 8, !tbaa !41
  br label %21

21:                                               ; preds = %16, %15
  %22 = load ptr, ptr @groupA, align 8, !tbaa !7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %27, %21
  %25 = load ptr, ptr @groupB, align 8, !tbaa !7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %41, label %34

27:                                               ; preds = %27, %21
  %28 = phi ptr [ %32, %27 ], [ %22, %21 ]
  %29 = getelementptr inbounds %struct._Module, ptr %28, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !29
  %31 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %30
  store i32 0, ptr %31, align 4, !tbaa !34
  %32 = load ptr, ptr %28, align 8, !tbaa !7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %24, label %27, !llvm.loop !48

34:                                               ; preds = %34, %24
  %35 = phi ptr [ %39, %34 ], [ %25, %24 ]
  %36 = getelementptr inbounds %struct._Module, ptr %35, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !29
  %38 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %37
  store i32 1, ptr %38, align 4, !tbaa !34
  %39 = load ptr, ptr %35, align 8, !tbaa !7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %34, !llvm.loop !49

41:                                               ; preds = %34, %24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @swapToA, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @swapToB, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nofree nounwind optsize uwtable
define internal void @PrintResults(i32 noundef %0) #16 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !7
  %3 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 47, i64 1, ptr %2)
  store i64 -1, ptr @maxStat, align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(6144) @netStats, i8 0, i64 6144, i1 false), !tbaa !11
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @stdout, align 8, !tbaa !7
  %7 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 11, i64 1, ptr %6)
  %8 = load ptr, ptr @groupA, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %17, %10 ], [ %8, %5 ]
  %12 = load ptr, ptr @stdout, align 8, !tbaa !7
  %13 = getelementptr inbounds %struct._Module, ptr %11, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !29
  %15 = add i64 %14, 1
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.2.7, i64 noundef %15) #19
  %17 = load ptr, ptr %11, align 8, !tbaa !7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10, !llvm.loop !50

19:                                               ; preds = %10, %5
  %20 = load ptr, ptr @stdout, align 8, !tbaa !7
  %21 = tail call i32 @fputc(i32 10, ptr %20)
  %22 = load ptr, ptr @stdout, align 8, !tbaa !7
  %23 = tail call i64 @fwrite(ptr nonnull @.str.4.8, i64 11, i64 1, ptr %22)
  %24 = load ptr, ptr @groupB, align 8, !tbaa !7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %26, %19
  %27 = phi ptr [ %33, %26 ], [ %24, %19 ]
  %28 = load ptr, ptr @stdout, align 8, !tbaa !7
  %29 = getelementptr inbounds %struct._Module, ptr %27, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !29
  %31 = add i64 %30, 1
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.2.7, i64 noundef %31) #19
  %33 = load ptr, ptr %27, align 8, !tbaa !7
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %26, !llvm.loop !51

35:                                               ; preds = %26, %19
  %36 = load ptr, ptr @stdout, align 8, !tbaa !7
  %37 = tail call i32 @fputc(i32 10, ptr %36)
  br label %38

38:                                               ; preds = %35, %1
  %39 = load ptr, ptr @groupA, align 8, !tbaa !7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %100, label %45

41:                                               ; preds = %53, %45
  %42 = phi i64 [ %47, %45 ], [ %54, %53 ]
  %43 = load ptr, ptr %46, align 8, !tbaa !7
  %44 = icmp eq ptr %43, null
  br i1 %44, label %100, label %45, !llvm.loop !52

45:                                               ; preds = %41, %38
  %46 = phi ptr [ %43, %41 ], [ %39, %38 ]
  %47 = phi i64 [ %42, %41 ], [ 0, %38 ]
  %48 = getelementptr inbounds %struct._Module, ptr %46, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !29
  %50 = getelementptr inbounds [1024 x ptr], ptr @modules, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !7
  %52 = icmp eq ptr %51, null
  br i1 %52, label %41, label %57

53:                                               ; preds = %96, %69
  %54 = phi i64 [ %59, %69 ], [ %97, %96 ]
  %55 = load ptr, ptr %58, align 8, !tbaa !7
  %56 = icmp eq ptr %55, null
  br i1 %56, label %41, label %57, !llvm.loop !53

57:                                               ; preds = %53, %45
  %58 = phi ptr [ %55, %53 ], [ %51, %45 ]
  %59 = phi i64 [ %54, %53 ], [ %47, %45 ]
  %60 = getelementptr inbounds %struct._Module, ptr %58, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !19
  %62 = getelementptr inbounds [1024 x ptr], ptr @nets, i64 0, i64 %61
  br label %63

63:                                               ; preds = %63, %57
  %64 = phi ptr [ %62, %57 ], [ %66, %63 ]
  %65 = phi i32 [ 0, %57 ], [ %68, %63 ]
  %66 = load ptr, ptr %64, align 8, !tbaa !7
  %67 = icmp eq ptr %66, null
  %68 = add nuw nsw i32 %65, 1
  br i1 %67, label %69, label %63, !llvm.loop !54

69:                                               ; preds = %63
  %.lcssa1 = phi i32 [ %65, %63 ]
  %70 = load ptr, ptr %62, align 8, !tbaa !7
  %71 = icmp eq ptr %70, null
  br i1 %71, label %53, label %72

72:                                               ; preds = %69
  %73 = zext i32 %.lcssa1 to i64
  %74 = getelementptr inbounds [256 x %struct.anon], ptr @netStats, i64 0, i64 %73, i32 1
  br label %75

75:                                               ; preds = %96, %72
  %76 = phi ptr [ %70, %72 ], [ %98, %96 ]
  %77 = phi i64 [ %59, %72 ], [ %97, %96 ]
  %78 = load i64, ptr %48, align 8, !tbaa !29
  %79 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !34
  %81 = getelementptr inbounds %struct._Module, ptr %76, i64 0, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !13
  %83 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !34
  %85 = icmp eq i32 %80, %84
  br i1 %85, label %96, label %86

86:                                               ; preds = %75
  br i1 %4, label %92, label %87

87:                                               ; preds = %86
  %88 = load ptr, ptr @stdout, align 8, !tbaa !7
  %89 = add i64 %78, 1
  %90 = add i64 %82, 1
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef nonnull @.str.5.9, i64 noundef %89, i64 noundef %90) #19
  br label %92

92:                                               ; preds = %87, %86
  %93 = load i64, ptr %74, align 8, !tbaa !55
  %94 = add i64 %93, 1
  store i64 %94, ptr %74, align 8, !tbaa !55
  %95 = add i64 %77, 1
  br label %96

96:                                               ; preds = %92, %75
  %97 = phi i64 [ %95, %92 ], [ %77, %75 ]
  %98 = load ptr, ptr %76, align 8, !tbaa !7
  %99 = icmp eq ptr %98, null
  br i1 %99, label %53, label %75, !llvm.loop !57

100:                                              ; preds = %41, %38
  %101 = phi i64 [ 0, %38 ], [ %42, %41 ]
  %102 = load ptr, ptr @stdout, align 8, !tbaa !7
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef nonnull @.str.6.10, i64 noundef %101) #19
  %104 = load i64, ptr @numNets, align 8, !tbaa !11
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %161, label %106

106:                                              ; preds = %155, %100
  %107 = phi i64 [ %156, %155 ], [ %104, %100 ]
  %108 = phi i64 [ %157, %155 ], [ %104, %100 ]
  %109 = phi i64 [ %159, %155 ], [ 0, %100 ]
  %110 = phi i64 [ %158, %155 ], [ 0, %100 ]
  %111 = getelementptr inbounds [1024 x ptr], ptr @nets, i64 0, i64 %109
  br label %112

112:                                              ; preds = %112, %106
  %113 = phi ptr [ %111, %106 ], [ %115, %112 ]
  %114 = phi i32 [ 0, %106 ], [ %117, %112 ]
  %115 = load ptr, ptr %113, align 8, !tbaa !7
  %116 = icmp eq ptr %115, null
  %117 = add nuw nsw i32 %114, 1
  br i1 %116, label %118, label %112, !llvm.loop !58

118:                                              ; preds = %112
  %.lcssa = phi i32 [ %114, %112 ]
  %119 = zext i32 %.lcssa to i64
  %120 = getelementptr inbounds [256 x %struct.anon], ptr @netStats, i64 0, i64 %119
  %121 = load i64, ptr %120, align 8, !tbaa !59
  %122 = add i64 %121, 1
  store i64 %122, ptr %120, align 8, !tbaa !59
  %123 = load i64, ptr @maxStat, align 8, !tbaa !11
  %124 = icmp slt i64 %123, %119
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  store i64 %119, ptr @maxStat, align 8, !tbaa !11
  br label %126

126:                                              ; preds = %125, %118
  %127 = load ptr, ptr %111, align 8, !tbaa !7
  %128 = getelementptr inbounds %struct._Module, ptr %127, i64 0, i32 1
  %129 = load i64, ptr %128, align 8, !tbaa !13
  %130 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !34
  br label %132

132:                                              ; preds = %136, %126
  %133 = phi ptr [ %127, %126 ], [ %134, %136 ]
  %134 = load ptr, ptr %133, align 8, !tbaa !15
  %135 = icmp eq ptr %134, null
  br i1 %135, label %155, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct._Module, ptr %134, i64 0, i32 1
  %138 = load i64, ptr %137, align 8, !tbaa !13
  %139 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !34
  %141 = icmp eq i32 %131, %140
  br i1 %141, label %132, label %142, !llvm.loop !60

142:                                              ; preds = %136
  br i1 %4, label %149, label %143

143:                                              ; preds = %142
  %144 = load ptr, ptr @stdout, align 8, !tbaa !7
  %145 = trunc i64 %109 to i32
  %146 = add i32 %145, 1
  %147 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef nonnull @.str.7.11, i32 noundef %146) #19
  %148 = load i64, ptr @numNets, align 8, !tbaa !11
  br label %149

149:                                              ; preds = %143, %142
  %150 = phi i64 [ %148, %143 ], [ %107, %142 ]
  %151 = add i64 %110, 1
  %152 = getelementptr inbounds [256 x %struct.anon], ptr @netStats, i64 0, i64 %119, i32 2
  %153 = load i64, ptr %152, align 8, !tbaa !61
  %154 = add i64 %153, 1
  store i64 %154, ptr %152, align 8, !tbaa !61
  br label %155

155:                                              ; preds = %149, %132
  %156 = phi i64 [ %150, %149 ], [ %107, %132 ]
  %157 = phi i64 [ %150, %149 ], [ %108, %132 ]
  %158 = phi i64 [ %151, %149 ], [ %110, %132 ]
  %159 = add nuw i64 %109, 1
  %160 = icmp ugt i64 %157, %159
  br i1 %160, label %106, label %161, !llvm.loop !62

161:                                              ; preds = %155, %100
  %162 = phi i64 [ 0, %100 ], [ %158, %155 ]
  %163 = load ptr, ptr @stdout, align 8, !tbaa !7
  %164 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef nonnull @.str.8.12, i64 noundef %162) #19
  %165 = load i64, ptr @maxStat, align 8, !tbaa !11
  %166 = icmp slt i64 %165, 2
  br i1 %166, label %181, label %167

167:                                              ; preds = %167, %161
  %168 = phi i64 [ %178, %167 ], [ 2, %161 ]
  %169 = load ptr, ptr @stdout, align 8, !tbaa !7
  %170 = getelementptr inbounds [256 x %struct.anon], ptr @netStats, i64 0, i64 %168
  %171 = load i64, ptr %170, align 8, !tbaa !59
  %172 = getelementptr inbounds [256 x %struct.anon], ptr @netStats, i64 0, i64 %168, i32 1
  %173 = load i64, ptr %172, align 8, !tbaa !55
  %174 = getelementptr inbounds [256 x %struct.anon], ptr @netStats, i64 0, i64 %168, i32 2
  %175 = load i64, ptr %174, align 8, !tbaa !61
  %176 = trunc i64 %168 to i32
  %177 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef nonnull @.str.9.13, i32 noundef %176, i64 noundef %171, i64 noundef %173, i64 noundef %175) #19
  %178 = add nuw i64 %168, 1
  %179 = load i64, ptr @maxStat, align 8, !tbaa !11
  %180 = icmp slt i64 %179, %178
  br i1 %180, label %181, label %167, !llvm.loop !63

181:                                              ; preds = %167, %161
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #17 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @stderr, align 8, !tbaa !7
  %6 = tail call i64 @fwrite(ptr nonnull @.str.10.14, i64 23, i64 1, ptr %5) #25
  tail call void @exit(i32 noundef 1) #21
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  tail call void @ReadNetList(ptr noundef %9) #22
  tail call void @NetsToModules() #22
  tail call void @ComputeNetCosts() #22
  tail call void @InitLists() #22
  br label %10

10:                                               ; preds = %53, %7
  %11 = phi float [ 0.000000e+00, %7 ], [ %40, %53 ]
  tail call void @ComputeDs(ptr noundef nonnull @groupA, i32 noundef 0, i32 noundef 2) #22
  tail call void @ComputeDs(ptr noundef nonnull @groupB, i32 noundef 1, i32 noundef 3) #22
  %12 = load i64, ptr @numModules, align 8, !tbaa !11
  %13 = icmp ult i64 %12, 2
  br i1 %13, label %38, label %14

14:                                               ; preds = %14, %10
  %15 = phi i64 [ %18, %14 ], [ 0, %10 ]
  %16 = tail call float @FindMaxGpAndSwap() #19
  %17 = getelementptr inbounds [1024 x float], ptr @GP, i64 0, i64 %15
  store float %16, ptr %17, align 4, !tbaa !24
  %18 = add nuw nsw i64 %15, 1
  %19 = load i64, ptr @numModules, align 8, !tbaa !11
  %20 = lshr i64 %19, 1
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %14, label %22, !llvm.loop !64

22:                                               ; preds = %14
  %.lcssa = phi i64 [ %19, %14 ]
  %23 = icmp ult i64 %.lcssa, 2
  br i1 %23, label %38, label %24

24:                                               ; preds = %24, %22
  %25 = phi i64 [ %32, %24 ], [ 4294967295, %22 ]
  %26 = phi i64 [ %33, %24 ], [ %.lcssa, %22 ]
  %27 = phi i64 [ %35, %24 ], [ 0, %22 ]
  %28 = phi float [ %34, %24 ], [ 0xC16312CFE0000000, %22 ]
  %29 = getelementptr inbounds [1024 x float], ptr @GP, i64 0, i64 %27
  %30 = load float, ptr %29, align 4, !tbaa !24
  %31 = fcmp ogt float %30, %28
  %32 = select i1 %31, i64 %27, i64 %25
  %33 = select i1 %31, i64 %.lcssa, i64 %26
  %34 = select i1 %31, float %30, float %28
  %35 = add nuw nsw i64 %27, 1
  %36 = lshr i64 %33, 1
  %37 = icmp ugt i64 %36, %35
  br i1 %37, label %24, label %38, !llvm.loop !65

38:                                               ; preds = %24, %22, %10
  %39 = phi i64 [ 4294967295, %22 ], [ 4294967295, %10 ], [ %32, %24 ]
  %40 = phi float [ 0xC16312CFE0000000, %22 ], [ 0xC16312CFE0000000, %10 ], [ %34, %24 ]
  %41 = fcmp oeq float %11, %40
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = fpext float %40 to double
  br label %48

44:                                               ; preds = %38
  %45 = load ptr, ptr @stdout, align 8, !tbaa !7
  %46 = fpext float %40 to double
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.11.15, double noundef %46) #19
  br label %48

48:                                               ; preds = %44, %42
  %49 = phi double [ %43, %42 ], [ %46, %44 ]
  %50 = load ptr, ptr @stdout, align 8, !tbaa !7
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.12.16, double noundef %49, i64 noundef %39) #19
  %52 = fcmp ogt float %40, 0.000000e+00
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  tail call void @SwapSubsetAndReset(i64 noundef %39) #19
  tail call void @PrintResults(i32 noundef 0) #19
  br label %10, !llvm.loop !66

54:                                               ; preds = %48
  tail call void @PrintResults(i32 noundef 0) #19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @groupA, ptr noundef nonnull align 8 dereferenceable(16) @swapToB, i64 16, i1 false), !tbaa.struct !47
  %55 = load ptr, ptr @groupA, align 8, !tbaa !7
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %57, %54
  %58 = phi ptr [ %62, %57 ], [ %55, %54 ]
  %59 = getelementptr inbounds %struct._Module, ptr %58, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !29
  %61 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %60
  store i32 0, ptr %61, align 4, !tbaa !34
  %62 = load ptr, ptr %58, align 8, !tbaa !7
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %57, !llvm.loop !67

64:                                               ; preds = %57, %54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @groupB, ptr noundef nonnull align 8 dereferenceable(16) @swapToA, i64 16, i1 false), !tbaa.struct !47
  %65 = load ptr, ptr @groupB, align 8, !tbaa !7
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %67, %64
  %68 = phi ptr [ %72, %67 ], [ %65, %64 ]
  %69 = getelementptr inbounds %struct._Module, ptr %68, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !29
  %71 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %70
  store i32 1, ptr %71, align 4, !tbaa !34
  %72 = load ptr, ptr %68, align 8, !tbaa !7
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %67, !llvm.loop !68

74:                                               ; preds = %67, %64
  tail call void @PrintResults(i32 noundef 1) #19
  tail call void @exit(i32 noundef 0) #21
  unreachable
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { optsize }
attributes #20 = { cold optsize }
attributes #21 = { noreturn nounwind optsize }
attributes #22 = { nounwind optsize }
attributes #23 = { nounwind optsize willreturn memory(read) }
attributes #24 = { nounwind optsize allocsize(0) }
attributes #25 = { cold }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!14, !12, i64 8}
!14 = !{!"_Module", !8, i64 0, !12, i64 8}
!15 = !{!14, !8, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = !{!20, !12, i64 8}
!20 = !{!"_Net", !8, i64 0, !12, i64 8}
!21 = !{!20, !8, i64 0}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = !{!25, !25, i64 0}
!25 = !{!"float", !9, i64 0}
!26 = distinct !{!26, !17, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!30, !12, i64 8}
!30 = !{!"_ModuleRec", !8, i64 0, !12, i64 8}
!31 = !{!32, !8, i64 0}
!32 = !{!"_ModuleList", !8, i64 0, !8, i64 8}
!33 = !{!30, !8, i64 0}
!34 = !{!9, !9, i64 0}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !17}
!39 = distinct !{!39, !17}
!40 = distinct !{!40, !17}
!41 = !{!32, !8, i64 8}
!42 = distinct !{!42, !17}
!43 = distinct !{!43, !17}
!44 = distinct !{!44, !17}
!45 = distinct !{!45, !17}
!46 = distinct !{!46, !17}
!47 = !{i64 0, i64 8, !7, i64 8, i64 8, !7}
!48 = distinct !{!48, !17}
!49 = distinct !{!49, !17}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17}
!52 = distinct !{!52, !17}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !17}
!55 = !{!56, !12, i64 8}
!56 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = !{!56, !12, i64 0}
!60 = distinct !{!60, !17}
!61 = !{!56, !12, i64 16}
!62 = distinct !{!62, !17}
!63 = distinct !{!63, !17}
!64 = distinct !{!64, !17}
!65 = distinct !{!65, !17}
!66 = distinct !{!66, !17}
!67 = distinct !{!67, !17}
!68 = distinct !{!68, !17}
