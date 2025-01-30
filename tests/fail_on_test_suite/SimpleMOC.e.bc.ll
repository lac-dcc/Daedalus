; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/DOE-ProxyApps-C/SimpleMOC/SimpleMOC.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Input = type { i32, i32, i32, i32, i32, float, float, i32, i32, i32, i8, i32, i64, float, float, float, float, i64, i64, i32, i64, i32, i32, i64, i64, i8, ptr, i64 }
%struct.Params = type { ptr, ptr, ptr, ptr, ptr, %struct.Table }
%struct.Table = type { ptr, float, float, i32 }
%struct.CommGrid = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.AttenuateVars = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Track = type { float, float, i64, i64, ptr, ptr }
%struct.Source = type { ptr, ptr, float, ptr, ptr, ptr }
%struct.Track2D = type { float, i64, ptr, i32 }
%struct.Segment = type { float, i64 }
%struct._G_fpos_t = type { i64, %struct.__mbstate_t }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@next = internal unnamed_addr global i32 0, align 4
@table = internal unnamed_addr global [344 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [15 x i8] c"INITIALIZATION\00", align 1
@str = private unnamed_addr constant [36 x i8] c"Initializing flat source regions...\00", align 1
@str.4 = private unnamed_addr constant [26 x i8] c"Initializing 3D tracks...\00", align 1
@str.5 = private unnamed_addr constant [26 x i8] c"Initializing 2D tracks...\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.35 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@str.52 = private unnamed_addr constant [81 x i8] c"================================================================================\00", align 1
@str.53 = private unnamed_addr constant [29 x i8] c"Usage: ./SimpleMOC <options>\00", align 1
@str.54 = private unnamed_addr constant [17 x i8] c"Options include:\00", align 1
@str.55 = private unnamed_addr constant [51 x i8] c"  -t <threads>     Number of OpenMP threads to run\00", align 1
@str.56 = private unnamed_addr constant [35 x i8] c"  -i <filename>    Input file name\00", align 1
@str.57 = private unnamed_addr constant [54 x i8] c"  -p <PAPI event>  PAPI event name to count (1 only) \00", align 1
@str.58 = private unnamed_addr constant [39 x i8] c"  -s               Small problem flag \00", align 1
@str.59 = private unnamed_addr constant [41 x i8] c"  -d <filename>    OpenMOC tracking file\00", align 1
@str.60 = private unnamed_addr constant [54 x i8] c"See readme for full description of default run values\00", align 1
@str.61 = private unnamed_addr constant [17 x i8] c"FIle Open FAILED\00", align 1
@.str.1.7 = private unnamed_addr constant [37 x i8] c"Error: invalid axial expansion order\00", align 1
@str.9 = private unnamed_addr constant [22 x i8] c"\0A Please input 0 or 2\00", align 1
@str.10 = private unnamed_addr constant [29 x i8] c"Starting transport sweep ...\00", align 1
@str.11 = private unnamed_addr constant [29 x i8] c"Renormalizing Flux Complete.\00", align 1
@str.12 = private unnamed_addr constant [22 x i8] c"Renormalizing Flux...\00", align 1
@str.16 = private unnamed_addr constant [50 x i8] c"Beginning Source and Flux Parameter Allocation...\00", align 1
@str.2 = private unnamed_addr constant [27 x i8] c"Beginning XS Allocation...\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1.30 = private unnamed_addr constant [29 x i8] c"Reading track data from:\0A%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Number of 2D tracks = %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Number of 3D tracks = %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Number of segments = %ld\0A\00", align 1
@str.31 = private unnamed_addr constant [40 x i8] c"Importing ray tracing data from file...\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @glibc_compat_rand() #0 {
  %1 = load i32, ptr @next, align 4, !tbaa !7
  %2 = icmp slt i32 %1, 3
  %3 = select i1 %2, i32 341, i32 -3
  %4 = add nsw i32 %3, %1
  %5 = icmp slt i32 %1, 31
  %6 = select i1 %5, i32 313, i32 -31
  %7 = add nsw i32 %6, %1
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !7
  %11 = sext i32 %7 to i64
  %12 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !7
  %14 = add i32 %13, %10
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %15
  store i32 %14, ptr %16, align 4, !tbaa !7
  %17 = lshr i32 %14, 1
  %18 = add nsw i32 %1, 1
  %19 = icmp sgt i32 %1, 342
  %20 = select i1 %19, i32 0, i32 %18
  store i32 %20, ptr @next, align 4
  ret i32 %17
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @glibc_compat_srand(i32 noundef %0) #1 {
  %2 = tail call i32 @llvm.umax.i32(i32 %0, i32 1)
  store i32 %2, ptr @table, align 16, !tbaa !7
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i32 [ %2, %1 ], [ %9, %3 ]
  %5 = phi i64 [ 1, %1 ], [ %11, %3 ]
  %6 = zext i32 %4 to i64
  %7 = mul nuw nsw i64 %6, 16807
  %8 = urem i64 %7, 2147483647
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %5
  store i32 %9, ptr %10, align 4, !tbaa !7
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 31
  br i1 %12, label %13, label %3

13:                                               ; preds = %13, %3
  %14 = phi i64 [ %19, %13 ], [ 31, %3 ]
  %15 = add nsw i64 %14, -31
  %16 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !7
  %18 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %14
  store i32 %17, ptr %18, align 4, !tbaa !7
  %19 = add nuw nsw i64 %14, 1
  %20 = icmp eq i64 %19, 34
  br i1 %20, label %22, label %13

21:                                               ; preds = %22
  store i32 0, ptr @next, align 4, !tbaa !7
  ret void

22:                                               ; preds = %22, %13
  %23 = phi i64 [ %32, %22 ], [ 34, %13 ]
  %24 = add nsw i64 %23, -31
  %25 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !7
  %27 = add nsw i64 %23, -3
  %28 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !7
  %30 = add i32 %29, %26
  %31 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %23
  store i32 %30, ptr %31, align 4, !tbaa !7
  %32 = add nuw nsw i64 %23, 1
  %33 = icmp eq i64 %32, 344
  br i1 %33, label %21, label %22
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @calculate_derived_inputs(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !11
  %4 = sdiv i32 %3, 2
  store i32 %4, ptr %2, align 4, !tbaa !11
  %5 = sitofp i32 %4 to double
  %6 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 13
  %7 = load float, ptr %6, align 8, !tbaa !17
  %8 = fpext float %7 to double
  %9 = fmul double %8, 0x3FF6A09E667F3BCD
  %10 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 5
  %11 = load float, ptr %10, align 4, !tbaa !18
  %12 = fpext float %11 to double
  %13 = fdiv double %9, %12
  %14 = fmul double %13, %5
  %15 = fptosi double %14 to i64
  %16 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 18
  %17 = sdiv i64 %15, 2
  %18 = shl nsw i64 %17, 1
  store i64 %18, ptr %16, align 8, !tbaa !19
  %19 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 14
  %20 = load float, ptr %19, align 4, !tbaa !20
  %21 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 6
  %22 = load float, ptr %21, align 8, !tbaa !21
  %23 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 11
  %24 = load i32, ptr %23, align 4, !tbaa !22
  %25 = sitofp i32 %24 to float
  %26 = fmul float %22, %25
  %27 = fdiv float %20, %26
  %28 = fptosi float %27 to i32
  %29 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 19
  store i32 %28, ptr %29, align 8, !tbaa !23
  %30 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 8
  %31 = load i32, ptr %30, align 8, !tbaa !24
  %32 = sext i32 %31 to i64
  %33 = mul nsw i64 %18, %32
  %34 = sext i32 %28 to i64
  %35 = mul nsw i64 %33, %34
  %36 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 20
  store i64 %35, ptr %36, align 8, !tbaa !25
  %37 = fdiv float %20, %25
  %38 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 15
  store float %37, ptr %38, align 8, !tbaa !26
  %39 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 23
  %40 = load i64, ptr %39, align 8, !tbaa !27
  %41 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !28
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %40, %43
  %45 = sext i32 %24 to i64
  %46 = sdiv i64 %44, %45
  %47 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 24
  store i64 %46, ptr %47, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @set_default_input(ptr noalias nocapture writeonly sret(%struct.Input) align 8 %0) #4 {
  store <4 x i32> <i32 17, i32 17, i32 27, i32 5>, ptr %0, align 8, !tbaa !7
  %2 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 4
  store i32 2, ptr %2, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 5
  store <2 x float> <float 0x3FA99999A0000000, float 2.500000e-01>, ptr %3, align 4, !tbaa !31
  %4 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 7
  store i32 64, ptr %4, align 4, !tbaa !11
  %5 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 8
  store i32 10, ptr %5, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 9
  store i32 104, ptr %6, align 4, !tbaa !32
  %7 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 10
  store i8 1, ptr %7, align 8, !tbaa !33
  %8 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 11
  store i32 20, ptr %8, align 4, !tbaa !22
  %9 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 12
  store i64 120, ptr %9, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 13
  store <2 x float> <float 0x40356B8520000000, float 4.000000e+02>, ptr %10, align 8, !tbaa !31
  %11 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 16
  store float 0x3F847AE140000000, ptr %11, align 4, !tbaa !35
  %12 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 17
  store i64 0, ptr %12, align 8, !tbaa !36
  %13 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 23
  store i64 5000, ptr %13, align 8, !tbaa !27
  %14 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 25
  store i8 0, ptr %14, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @set_small_input(ptr nocapture noundef writeonly %0) #4 {
  store <4 x i32> <i32 15, i32 15, i32 5, i32 3>, ptr %0, align 8, !tbaa !7
  %2 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 4
  store i32 2, ptr %2, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 5
  store <2 x float> <float 5.000000e-01, float 0x3FC99999A0000000>, ptr %3, align 4, !tbaa !31
  %4 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 7
  store i32 5, ptr %4, align 4, !tbaa !11
  %5 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 8
  store i32 5, ptr %5, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 9
  store i32 104, ptr %6, align 4, !tbaa !32
  %7 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 10
  store i8 0, ptr %7, align 8, !tbaa !33
  %8 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 11
  store i32 1, ptr %8, align 4, !tbaa !22
  %9 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 12
  store i64 120, ptr %9, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 13
  store <2 x float> <float 0x40356B8520000000, float 4.000000e+02>, ptr %10, align 8, !tbaa !31
  %11 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 16
  store float 0x3F847AE140000000, ptr %11, align 4, !tbaa !35
  %12 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 23
  store i64 3000, ptr %12, align 8, !tbaa !27
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @build_tracks(ptr noalias sret(%struct.Params) align 8 %0, ptr noundef %1) #5 {
  %3 = alloca %struct.Input, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %3) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false), !tbaa.struct !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #30
  store i64 0, ptr %4, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.Input, ptr %3, i64 0, i32 17
  %6 = load i64, ptr %5, align 8, !tbaa !36
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  tail call void @center_print(ptr noundef nonnull @.str, i32 noundef 79) #31
  tail call void @border_print() #31
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5)
  br label %10

10:                                               ; preds = %8, %2
  %11 = getelementptr inbounds %struct.Input, ptr %3, i64 0, i32 25
  %12 = load i8, ptr %11, align 8, !tbaa !37, !range !42, !noundef !43
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Input, ptr %3, i64 0, i32 26
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = call ptr @load_OpenMOC_tracks(ptr noundef %16, i1 noundef zeroext false, ptr noundef nonnull %1, ptr noundef nonnull %4) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 152, i1 false), !tbaa.struct !38
  br label %20

18:                                               ; preds = %10
  %19 = call ptr @generate_2D_tracks(ptr noundef nonnull byval(%struct.Input) align 8 %3, ptr noundef nonnull %4) #31
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi ptr [ %19, %18 ], [ %17, %14 ]
  store ptr %21, ptr %0, align 8
  %22 = load i64, ptr %5, align 8, !tbaa !36
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  br label %26

26:                                               ; preds = %24, %20
  %27 = call ptr @generate_tracks(ptr noundef nonnull byval(%struct.Input) align 8 %3, ptr noundef %21, ptr noundef nonnull %4) #31
  %28 = getelementptr inbounds %struct.Params, ptr %0, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !45
  %29 = call ptr @generate_polar_angles(ptr noundef nonnull byval(%struct.Input) align 8 %3) #31
  %30 = getelementptr inbounds %struct.Params, ptr %0, i64 0, i32 3
  store ptr %29, ptr %30, align 8, !tbaa !48
  %31 = load i64, ptr %5, align 8, !tbaa !36
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %35

35:                                               ; preds = %33, %26
  %36 = call ptr @initialize_sources(ptr noundef nonnull byval(%struct.Input) align 8 %3, ptr noundef nonnull %4) #31
  %37 = getelementptr inbounds %struct.Params, ptr %0, i64 0, i32 2
  store ptr %36, ptr %37, align 8, !tbaa !49
  %38 = load i64, ptr %5, align 8, !tbaa !36
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  call void @border_print() #31
  br label %41

41:                                               ; preds = %40, %35
  %42 = call noalias dereferenceable_or_null(4) ptr @calloc(i64 noundef 1, i64 noundef 4) #32
  %43 = getelementptr inbounds %struct.Params, ptr %0, i64 0, i32 4
  store ptr %42, ptr %43, align 8, !tbaa !50
  %44 = getelementptr inbounds %struct.Params, ptr %0, i64 0, i32 5
  %45 = getelementptr inbounds %struct.Input, ptr %3, i64 0, i32 16
  %46 = load float, ptr %45, align 4, !tbaa !35
  call void @buildExponentialTable(ptr nonnull sret(%struct.Table) align 8 %44, float noundef %46, float noundef 1.000000e+01) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %3) #30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @init_mpi_grid(ptr noalias nocapture sret(%struct.CommGrid) align 4 %0, ptr nocapture noundef byval(%struct.Input) align 8 %1) #10 {
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @border_print() #11 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.52)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @center_print(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %4 = trunc i64 %3 to i32
  %5 = sub nsw i32 %1, %4
  %6 = icmp slt i32 %5, -1
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = sdiv i32 %5, 2
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %13, %9 ], [ 0, %7 ]
  %11 = load ptr, ptr @stdout, align 8, !tbaa !41
  %12 = tail call i32 @fputs(ptr noundef nonnull @.str.7, ptr noundef %11) #34
  %13 = add nuw nsw i32 %10, 1
  %14 = icmp eq i32 %10, %8
  br i1 %14, label %15, label %9

15:                                               ; preds = %9, %2
  %16 = load ptr, ptr @stdout, align 8, !tbaa !41
  %17 = tail call i32 @fputs(ptr noundef %0, ptr noundef %16) #34
  %18 = load ptr, ptr @stdout, align 8, !tbaa !41
  %19 = tail call i32 @fputs(ptr noundef nonnull @.str.1, ptr noundef %18) #34
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind optsize uwtable
define internal void @read_CLI(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #5 {
  %4 = getelementptr inbounds %struct.Input, ptr %2, i64 0, i32 21
  store i32 1, ptr %4, align 8, !tbaa !51
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %6, label %60

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Input, ptr %2, i64 0, i32 26
  %8 = getelementptr inbounds %struct.Input, ptr %2, i64 0, i32 25
  br label %12

9:                                                ; preds = %55
  %10 = load i32, ptr %4, align 8, !tbaa !51
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %59, label %60

12:                                               ; preds = %55, %6
  %13 = phi i32 [ 1, %6 ], [ %57, %55 ]
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %1, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(3) @.str.35) #33
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = add nsw i32 %13, 1
  %21 = icmp slt i32 %20, %0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = sext i32 %20 to i64
  %24 = getelementptr inbounds ptr, ptr %1, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  %26 = tail call i32 @atoi(ptr nocapture noundef %25) #33
  store i32 %26, ptr %4, align 8, !tbaa !51
  br label %55

27:                                               ; preds = %19
  tail call void @print_CLI_error() #34
  unreachable

28:                                               ; preds = %12
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(3) @.str.36) #33
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = add nsw i32 %13, 1
  %33 = icmp slt i32 %32, %0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds ptr, ptr %1, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !41
  tail call void @read_input_file(ptr noundef %2, ptr noundef %37) #34
  br label %55

38:                                               ; preds = %31
  tail call void @print_CLI_error() #34
  unreachable

39:                                               ; preds = %28
  %40 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(3) @.str.37) #33
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  tail call void @set_small_input(ptr noundef %2) #31
  br label %55

43:                                               ; preds = %39
  %44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(3) @.str.38) #33
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = add nsw i32 %13, 1
  %48 = icmp slt i32 %47, %0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %1, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !41
  store ptr %52, ptr %7, align 8, !tbaa !44
  store i8 1, ptr %8, align 8, !tbaa !37
  br label %55

53:                                               ; preds = %46
  tail call void @print_CLI_error() #34
  unreachable

54:                                               ; preds = %43
  tail call void @print_CLI_error() #34
  unreachable

55:                                               ; preds = %49, %42, %34, %22
  %56 = phi i32 [ %20, %22 ], [ %32, %34 ], [ %13, %42 ], [ %47, %49 ]
  %57 = add nsw i32 %56, 1
  %58 = icmp slt i32 %57, %0
  br i1 %58, label %12, label %9

59:                                               ; preds = %9
  tail call void @print_CLI_error() #34
  unreachable

60:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @print_CLI_error() #15 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.53)
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.54)
  %3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.55)
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.56)
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.57)
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.58)
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.59)
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.60)
  tail call void @exit(i32 noundef 1) #35
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal void @read_input_file(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = alloca [255 x i8], align 16
  %4 = alloca i32, align 4
  %5 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.47) #34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.61)
  br label %9

9:                                                ; preds = %7, %2
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %3) #30
  %10 = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %5, ptr noundef nonnull @.str.49, ptr noundef %0) #31
  %11 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 255, ptr noundef %5) #34
  %12 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 1
  %13 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %5, ptr noundef nonnull @.str.49, ptr noundef nonnull %12) #31
  %14 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 255, ptr noundef %5) #34
  %15 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 2
  %16 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %5, ptr noundef nonnull @.str.49, ptr noundef nonnull %15) #31
  %17 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 255, ptr noundef %5) #34
  %18 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 3
  %19 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %5, ptr noundef nonnull @.str.49, ptr noundef nonnull %18) #31
  %20 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 255, ptr noundef %5) #34
  %21 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 4
  %22 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %5, ptr noundef nonnull @.str.49, ptr noundef nonnull %21) #31
  %23 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 255, ptr noundef %5) #34
  %24 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 5
  %25 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %5, ptr noundef nonnull @.str.50, ptr noundef nonnull %24) #31
  %26 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 255, ptr noundef %5) #34
  %27 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 6
  %28 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %5, ptr noundef nonnull @.str.50, ptr noundef nonnull %27) #31
  %29 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 255, ptr noundef %5) #34
  %30 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 7
  %31 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %5, ptr noundef nonnull @.str.49, ptr noundef nonnull %30) #31
  %32 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 255, ptr noundef %5) #34
  %33 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 8
  %34 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %5, ptr noundef nonnull @.str.49, ptr noundef nonnull %33) #31
  %35 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 255, ptr noundef %5) #34
  %36 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 9
  %37 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %5, ptr noundef nonnull @.str.49, ptr noundef nonnull %36) #31
  %38 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 255, ptr noundef %5) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #30
  %39 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %5, ptr noundef nonnull @.str.49, ptr noundef nonnull %4) #31
  %40 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 255, ptr noundef %5) #34
  %41 = load i32, ptr %4, align 4, !tbaa !7
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 10
  store i8 %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 11
  %46 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %5, ptr noundef nonnull @.str.49, ptr noundef nonnull %45) #31
  %47 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 255, ptr noundef %5) #34
  %48 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 12
  %49 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %5, ptr noundef nonnull @.str.51, ptr noundef nonnull %48) #31
  %50 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 255, ptr noundef %5) #34
  %51 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 13
  %52 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %5, ptr noundef nonnull @.str.50, ptr noundef nonnull %51) #31
  %53 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 255, ptr noundef %5) #34
  %54 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 14
  %55 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %5, ptr noundef nonnull @.str.50, ptr noundef nonnull %54) #31
  %56 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 255, ptr noundef %5) #34
  %57 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 16
  %58 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %5, ptr noundef nonnull @.str.50, ptr noundef nonnull %57) #31
  %59 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 255, ptr noundef %5) #34
  %60 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 23
  %61 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %5, ptr noundef nonnull @.str.51, ptr noundef nonnull %60) #31
  %62 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 255, ptr noundef %5) #34
  %63 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 22
  %64 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %5, ptr noundef nonnull @.str.49, ptr noundef nonnull %63) #31
  %65 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 255, ptr noundef %5) #34
  %66 = call i32 @fclose(ptr noundef %5) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %3) #30
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #5 {
  %3 = alloca %struct.Input, align 8
  %4 = alloca %struct.Params, align 8
  %5 = alloca %struct.CommGrid, align 8
  %6 = tail call i64 @time(ptr noundef null) #31
  %7 = trunc i64 %6 to i32
  %8 = shl i32 %7, 1
  tail call void @glibc_compat_srand(i32 noundef %8) #31
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %3) #30
  call void @set_default_input(ptr nonnull sret(%struct.Input) align 8 %3) #31
  call void @read_CLI(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %3) #31
  call void @calculate_derived_inputs(ptr noundef nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #30
  call void @build_tracks(ptr nonnull sret(%struct.Params) align 8 %4, ptr noundef nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #30
  call void @init_mpi_grid(ptr nonnull sret(%struct.CommGrid) align 4 %5, ptr noundef nonnull byval(%struct.Input) align 8 %3) #31
  %9 = call double @get_time() #31
  call void @transport_sweep(ptr noundef nonnull %4, ptr noundef nonnull %3) #31
  %10 = call double @get_time() #31
  %11 = call double @get_time() #31
  call void @renormalize_flux(ptr noundef nonnull byval(%struct.Params) align 8 %4, ptr noundef nonnull byval(%struct.Input) align 8 %3, ptr noundef nonnull byval(%struct.CommGrid) align 8 %5) #31
  %12 = call double @get_time() #31
  %13 = call double @get_time() #31
  %14 = call float @update_sources(ptr noundef nonnull byval(%struct.Params) align 8 %4, ptr noundef nonnull byval(%struct.Input) align 8 %3, float noundef 1.000000e+00) #31
  %15 = call double @get_time() #31
  %16 = call double @get_time() #31
  %17 = call float @compute_keff(ptr noundef nonnull byval(%struct.Params) align 8 %4, ptr noundef nonnull byval(%struct.Input) align 8 %3, ptr noundef nonnull byval(%struct.CommGrid) align 8 %5) #31
  %18 = call double @get_time() #31
  %19 = load ptr, ptr %4, align 8, !tbaa !52
  call void @free_2D_tracks(ptr noundef %19) #31
  %20 = getelementptr inbounds %struct.Params, ptr %4, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  call void @free_tracks(ptr noundef %21) #31
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %3) #30
  ret i32 0
}

; Function Attrs: nounwind optsize
declare i64 @time(ptr noundef) local_unnamed_addr #18

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @attenuate_fluxes(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, float noundef %5, float noundef %6, float noundef %7, ptr nocapture noundef readonly %8) #19 {
  %10 = getelementptr inbounds i8, ptr %3, i64 8
  %11 = load i32, ptr %10, align 8, !tbaa.struct !53
  %12 = getelementptr inbounds i8, ptr %3, i64 12
  %13 = load i32, ptr %12, align 4, !tbaa.struct !54
  %14 = getelementptr inbounds i8, ptr %3, i64 36
  %15 = load i32, ptr %14, align 4, !tbaa.struct !55
  %16 = getelementptr inbounds i8, ptr %3, i64 44
  %17 = load i32, ptr %16, align 4, !tbaa.struct !56
  %18 = getelementptr inbounds i8, ptr %3, i64 60
  %19 = load float, ptr %18, align 4, !tbaa.struct !57
  %20 = getelementptr inbounds i8, ptr %4, i64 40
  %21 = load ptr, ptr %20, align 8, !tbaa.struct !58
  %22 = getelementptr inbounds i8, ptr %4, i64 48
  %23 = load float, ptr %22, align 8, !tbaa.struct !59
  %24 = getelementptr inbounds i8, ptr %4, i64 52
  %25 = load float, ptr %24, align 4, !tbaa.struct !60
  %26 = load ptr, ptr %8, align 8, !tbaa !61
  %27 = getelementptr inbounds %struct.AttenuateVars, ptr %8, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  %29 = getelementptr inbounds %struct.AttenuateVars, ptr %8, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !64
  %31 = getelementptr inbounds %struct.AttenuateVars, ptr %8, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !65
  %33 = getelementptr inbounds %struct.AttenuateVars, ptr %8, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !66
  %35 = getelementptr inbounds %struct.AttenuateVars, ptr %8, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !67
  %37 = getelementptr inbounds %struct.AttenuateVars, ptr %8, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !68
  %39 = getelementptr inbounds %struct.AttenuateVars, ptr %8, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !69
  %41 = getelementptr inbounds %struct.AttenuateVars, ptr %8, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !70
  %43 = getelementptr inbounds %struct.AttenuateVars, ptr %8, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !71
  %45 = getelementptr inbounds %struct.AttenuateVars, ptr %8, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !72
  %47 = getelementptr inbounds %struct.AttenuateVars, ptr %8, i64 0, i32 11
  %48 = load ptr, ptr %47, align 8, !tbaa !73
  %49 = getelementptr inbounds %struct.AttenuateVars, ptr %8, i64 0, i32 12
  %50 = load ptr, ptr %49, align 8, !tbaa !74
  %51 = getelementptr inbounds %struct.AttenuateVars, ptr %8, i64 0, i32 13
  %52 = load ptr, ptr %51, align 8, !tbaa !75
  %53 = mul i32 %13, %11
  %54 = mul i32 %53, %17
  %55 = sitofp i32 %54 to float
  %56 = fdiv float %19, %55
  %57 = getelementptr inbounds %struct.Track, ptr %0, i64 0, i32 1
  %58 = load float, ptr %57, align 4, !tbaa !76
  %59 = fdiv float %58, %56
  %60 = fptosi float %59 to i32
  %61 = sitofp i32 %60 to float
  %62 = fadd float %61, 5.000000e-01
  %63 = fneg float %56
  %64 = tail call float @llvm.fmuladd.f32(float %63, float %62, float %58)
  %65 = srem i32 %60, %13
  %66 = load float, ptr %0, align 8, !tbaa !78
  %67 = fmul float %66, %7
  %68 = fmul float %6, %6
  %69 = load ptr, ptr %2, align 8, !tbaa !79
  %70 = sext i32 %65 to i64
  %71 = getelementptr inbounds ptr, ptr %69, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !41
  %73 = icmp eq i32 %65, 0
  br i1 %73, label %74, label %112

74:                                               ; preds = %9
  %75 = fsub float %64, %56
  %76 = icmp sgt i32 %15, 0
  br i1 %76, label %77, label %400

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.Source, ptr %2, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !81
  %80 = getelementptr inbounds ptr, ptr %79, i64 %70
  %81 = load ptr, ptr %80, align 8, !tbaa !41
  %82 = getelementptr inbounds ptr, ptr %79, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !41
  %84 = getelementptr inbounds ptr, ptr %79, i64 2
  %85 = load ptr, ptr %84, align 8, !tbaa !41
  %86 = fmul float %56, 2.000000e+00
  %87 = fmul float %56, %86
  %88 = zext i32 %15 to i64
  br label %89

89:                                               ; preds = %89, %77
  %90 = phi i64 [ 0, %77 ], [ %110, %89 ]
  %91 = getelementptr inbounds float, ptr %81, i64 %90
  %92 = load float, ptr %91, align 4, !tbaa !31
  %93 = getelementptr inbounds float, ptr %83, i64 %90
  %94 = load float, ptr %93, align 4, !tbaa !31
  %95 = getelementptr inbounds float, ptr %85, i64 %90
  %96 = load float, ptr %95, align 4, !tbaa !31
  %97 = fsub float %92, %96
  %98 = fdiv float %97, %86
  %99 = tail call float @llvm.fmuladd.f32(float %94, float -2.000000e+00, float %92)
  %100 = fadd float %99, %96
  %101 = fdiv float %100, %87
  %102 = tail call float @llvm.fmuladd.f32(float %98, float %75, float %94)
  %103 = fmul float %75, %101
  %104 = tail call float @llvm.fmuladd.f32(float %103, float %75, float %102)
  %105 = getelementptr inbounds float, ptr %26, i64 %90
  store float %104, ptr %105, align 4, !tbaa !31
  %106 = fmul float %101, 2.000000e+00
  %107 = tail call float @llvm.fmuladd.f32(float %106, float %75, float %98)
  %108 = getelementptr inbounds float, ptr %28, i64 %90
  store float %107, ptr %108, align 4, !tbaa !31
  %109 = getelementptr inbounds float, ptr %30, i64 %90
  store float %101, ptr %109, align 4, !tbaa !31
  %110 = add nuw nsw i64 %90, 1
  %111 = icmp eq i64 %110, %88
  br i1 %111, label %198, label %89

112:                                              ; preds = %9
  %113 = add nsw i32 %13, -1
  %114 = icmp eq i32 %65, %113
  br i1 %114, label %133, label %115

115:                                              ; preds = %112
  %116 = icmp sgt i32 %15, 0
  br i1 %116, label %117, label %400

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.Source, ptr %2, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !81
  %120 = add nsw i32 %65, -1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %119, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !41
  %124 = getelementptr inbounds ptr, ptr %119, i64 %70
  %125 = load ptr, ptr %124, align 8, !tbaa !41
  %126 = add nsw i32 %65, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds ptr, ptr %119, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !41
  %130 = fmul float %56, 2.000000e+00
  %131 = fmul float %56, %130
  %132 = zext i32 %15 to i64
  br label %175

133:                                              ; preds = %112
  %134 = fadd float %56, %64
  %135 = icmp sgt i32 %15, 0
  br i1 %135, label %136, label %400

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.Source, ptr %2, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !81
  %139 = add nsw i32 %65, -2
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds ptr, ptr %138, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !41
  %143 = add nsw i32 %65, -1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds ptr, ptr %138, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !41
  %147 = getelementptr inbounds ptr, ptr %138, i64 %70
  %148 = load ptr, ptr %147, align 8, !tbaa !41
  %149 = fmul float %56, 2.000000e+00
  %150 = fmul float %56, %149
  %151 = zext i32 %15 to i64
  br label %152

152:                                              ; preds = %152, %136
  %153 = phi i64 [ 0, %136 ], [ %173, %152 ]
  %154 = getelementptr inbounds float, ptr %142, i64 %153
  %155 = load float, ptr %154, align 4, !tbaa !31
  %156 = getelementptr inbounds float, ptr %146, i64 %153
  %157 = load float, ptr %156, align 4, !tbaa !31
  %158 = getelementptr inbounds float, ptr %148, i64 %153
  %159 = load float, ptr %158, align 4, !tbaa !31
  %160 = fsub float %155, %159
  %161 = fdiv float %160, %149
  %162 = tail call float @llvm.fmuladd.f32(float %157, float -2.000000e+00, float %155)
  %163 = fadd float %162, %159
  %164 = fdiv float %163, %150
  %165 = tail call float @llvm.fmuladd.f32(float %161, float %134, float %157)
  %166 = fmul float %134, %164
  %167 = tail call float @llvm.fmuladd.f32(float %166, float %134, float %165)
  %168 = getelementptr inbounds float, ptr %26, i64 %153
  store float %167, ptr %168, align 4, !tbaa !31
  %169 = fmul float %164, 2.000000e+00
  %170 = tail call float @llvm.fmuladd.f32(float %169, float %134, float %161)
  %171 = getelementptr inbounds float, ptr %28, i64 %153
  store float %170, ptr %171, align 4, !tbaa !31
  %172 = getelementptr inbounds float, ptr %30, i64 %153
  store float %164, ptr %172, align 4, !tbaa !31
  %173 = add nuw nsw i64 %153, 1
  %174 = icmp eq i64 %173, %151
  br i1 %174, label %198, label %152

175:                                              ; preds = %175, %117
  %176 = phi i64 [ 0, %117 ], [ %196, %175 ]
  %177 = getelementptr inbounds float, ptr %123, i64 %176
  %178 = load float, ptr %177, align 4, !tbaa !31
  %179 = getelementptr inbounds float, ptr %125, i64 %176
  %180 = load float, ptr %179, align 4, !tbaa !31
  %181 = getelementptr inbounds float, ptr %129, i64 %176
  %182 = load float, ptr %181, align 4, !tbaa !31
  %183 = fsub float %178, %182
  %184 = fdiv float %183, %130
  %185 = tail call float @llvm.fmuladd.f32(float %180, float -2.000000e+00, float %178)
  %186 = fadd float %185, %182
  %187 = fdiv float %186, %131
  %188 = tail call float @llvm.fmuladd.f32(float %184, float %64, float %180)
  %189 = fmul float %64, %187
  %190 = tail call float @llvm.fmuladd.f32(float %189, float %64, float %188)
  %191 = getelementptr inbounds float, ptr %26, i64 %176
  store float %190, ptr %191, align 4, !tbaa !31
  %192 = fmul float %187, 2.000000e+00
  %193 = tail call float @llvm.fmuladd.f32(float %192, float %64, float %184)
  %194 = getelementptr inbounds float, ptr %28, i64 %176
  store float %193, ptr %194, align 4, !tbaa !31
  %195 = getelementptr inbounds float, ptr %30, i64 %176
  store float %187, ptr %195, align 4, !tbaa !31
  %196 = add nuw nsw i64 %176, 1
  %197 = icmp eq i64 %196, %132
  br i1 %197, label %198, label %175

198:                                              ; preds = %175, %152, %89
  %199 = icmp sgt i32 %15, 0
  br i1 %199, label %200, label %400

200:                                              ; preds = %198
  %201 = getelementptr inbounds %struct.Source, ptr %2, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !82
  %203 = zext i32 %15 to i64
  br label %207

204:                                              ; preds = %207
  br i1 %199, label %205, label %400

205:                                              ; preds = %204
  %206 = zext i32 %15 to i64
  br label %222

207:                                              ; preds = %207, %200
  %208 = phi i64 [ 0, %200 ], [ %217, %207 ]
  %209 = getelementptr inbounds float, ptr %202, i64 %208
  %210 = load float, ptr %209, align 4, !tbaa !31
  %211 = getelementptr inbounds float, ptr %32, i64 %208
  store float %210, ptr %211, align 4, !tbaa !31
  %212 = fmul float %210, %5
  %213 = getelementptr inbounds float, ptr %34, i64 %208
  store float %212, ptr %213, align 4, !tbaa !31
  %214 = load float, ptr %211, align 4, !tbaa !31
  %215 = fmul float %214, %214
  %216 = getelementptr inbounds float, ptr %36, i64 %208
  store float %215, ptr %216, align 4, !tbaa !31
  %217 = add nuw nsw i64 %208, 1
  %218 = icmp eq i64 %217, %203
  br i1 %218, label %204, label %207

219:                                              ; preds = %240
  br i1 %199, label %220, label %400

220:                                              ; preds = %219
  %221 = zext i32 %15 to i64
  br label %252

222:                                              ; preds = %240, %205
  %223 = phi i64 [ 0, %205 ], [ %243, %240 ]
  %224 = getelementptr inbounds float, ptr %34, i64 %223
  %225 = load float, ptr %224, align 4, !tbaa !31
  %226 = fcmp olt float %25, %225
  br i1 %226, label %240, label %227

227:                                              ; preds = %222
  %228 = fdiv float %225, %23
  %229 = tail call float @llvm.fmuladd.f32(float %23, float 5.000000e-01, float %228)
  %230 = fptosi float %229 to i32
  %231 = shl nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, ptr %21, i64 %232
  %234 = load float, ptr %233, align 4, !tbaa !31
  %235 = or i32 %231, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds float, ptr %21, i64 %236
  %238 = load float, ptr %237, align 4, !tbaa !31
  %239 = tail call float @llvm.fmuladd.f32(float %234, float %225, float %238)
  br label %240

240:                                              ; preds = %227, %222
  %241 = phi float [ %239, %227 ], [ 1.000000e+00, %222 ]
  %242 = getelementptr inbounds float, ptr %38, i64 %223
  store float %241, ptr %242, align 4, !tbaa !31
  %243 = add nuw nsw i64 %223, 1
  %244 = icmp eq i64 %243, %206
  br i1 %244, label %219, label %222

245:                                              ; preds = %252
  %246 = getelementptr inbounds %struct.Track, ptr %0, i64 0, i32 4
  %247 = getelementptr inbounds %struct.Track, ptr %0, i64 0, i32 5
  %248 = select i1 %1, ptr %246, ptr %247
  %249 = load ptr, ptr %248, align 8, !tbaa !41
  br i1 %199, label %250, label %400

250:                                              ; preds = %245
  %251 = zext i32 %15 to i64
  br label %273

252:                                              ; preds = %252, %220
  %253 = phi i64 [ 0, %220 ], [ %268, %252 ]
  %254 = getelementptr inbounds float, ptr %34, i64 %253
  %255 = load float, ptr %254, align 4, !tbaa !31
  %256 = fadd float %255, -2.000000e+00
  %257 = getelementptr inbounds float, ptr %38, i64 %253
  %258 = load float, ptr %257, align 4, !tbaa !31
  %259 = fmul float %258, 2.000000e+00
  %260 = getelementptr inbounds float, ptr %32, i64 %253
  %261 = load float, ptr %260, align 4, !tbaa !31
  %262 = getelementptr inbounds float, ptr %36, i64 %253
  %263 = load float, ptr %262, align 4, !tbaa !31
  %264 = fmul float %261, %263
  %265 = fdiv float %259, %264
  %266 = tail call float @llvm.fmuladd.f32(float %255, float %256, float %265)
  %267 = getelementptr inbounds float, ptr %40, i64 %253
  store float %266, ptr %267, align 4, !tbaa !31
  %268 = add nuw nsw i64 %253, 1
  %269 = icmp eq i64 %268, %221
  br i1 %269, label %245, label %252

270:                                              ; preds = %273
  br i1 %199, label %271, label %400

271:                                              ; preds = %270
  %272 = zext i32 %15 to i64
  br label %316

273:                                              ; preds = %273, %250
  %274 = phi i64 [ 0, %250 ], [ %311, %273 ]
  %275 = getelementptr inbounds float, ptr %26, i64 %274
  %276 = load float, ptr %275, align 4, !tbaa !31
  %277 = getelementptr inbounds float, ptr %34, i64 %274
  %278 = load float, ptr %277, align 4, !tbaa !31
  %279 = getelementptr inbounds float, ptr %32, i64 %274
  %280 = load float, ptr %279, align 4, !tbaa !31
  %281 = getelementptr inbounds float, ptr %249, i64 %274
  %282 = load float, ptr %281, align 4, !tbaa !31
  %283 = fneg float %276
  %284 = tail call float @llvm.fmuladd.f32(float %280, float %282, float %283)
  %285 = getelementptr inbounds float, ptr %38, i64 %274
  %286 = load float, ptr %285, align 4, !tbaa !31
  %287 = fmul float %284, %286
  %288 = tail call float @llvm.fmuladd.f32(float %276, float %278, float %287)
  %289 = getelementptr inbounds float, ptr %36, i64 %274
  %290 = load float, ptr %289, align 4, !tbaa !31
  %291 = fdiv float %288, %290
  %292 = getelementptr inbounds float, ptr %28, i64 %274
  %293 = load float, ptr %292, align 4, !tbaa !31
  %294 = fmul float %293, %6
  %295 = getelementptr inbounds float, ptr %40, i64 %274
  %296 = load float, ptr %295, align 4, !tbaa !31
  %297 = tail call float @llvm.fmuladd.f32(float %294, float %296, float %291)
  %298 = getelementptr inbounds float, ptr %30, i64 %274
  %299 = load float, ptr %298, align 4, !tbaa !31
  %300 = fmul float %68, %299
  %301 = fadd float %278, -3.000000e+00
  %302 = tail call float @llvm.fmuladd.f32(float %278, float %301, float 6.000000e+00)
  %303 = fmul float %286, -6.000000e+00
  %304 = tail call float @llvm.fmuladd.f32(float %278, float %302, float %303)
  %305 = fmul float %304, %300
  %306 = fmul float %290, 3.000000e+00
  %307 = fmul float %290, %306
  %308 = fdiv float %305, %307
  %309 = fadd float %297, %308
  %310 = getelementptr inbounds float, ptr %42, i64 %274
  store float %309, ptr %310, align 4, !tbaa !31
  %311 = add nuw nsw i64 %274, 1
  %312 = icmp eq i64 %311, %251
  br i1 %312, label %270, label %273

313:                                              ; preds = %316
  br i1 %199, label %314, label %400

314:                                              ; preds = %313
  %315 = zext i32 %15 to i64
  br label %327

316:                                              ; preds = %316, %271
  %317 = phi i64 [ 0, %271 ], [ %322, %316 ]
  %318 = getelementptr inbounds float, ptr %42, i64 %317
  %319 = load float, ptr %318, align 4, !tbaa !31
  %320 = fmul float %67, %319
  %321 = getelementptr inbounds float, ptr %44, i64 %317
  store float %320, ptr %321, align 4, !tbaa !31
  %322 = add nuw nsw i64 %317, 1
  %323 = icmp eq i64 %322, %272
  br i1 %323, label %313, label %316

324:                                              ; preds = %327
  br i1 %199, label %325, label %400

325:                                              ; preds = %324
  %326 = zext i32 %15 to i64
  br label %339

327:                                              ; preds = %327, %314
  %328 = phi i64 [ 0, %314 ], [ %334, %327 ]
  %329 = getelementptr inbounds float, ptr %44, i64 %328
  %330 = load float, ptr %329, align 4, !tbaa !31
  %331 = getelementptr inbounds float, ptr %72, i64 %328
  %332 = load float, ptr %331, align 4, !tbaa !31
  %333 = fadd float %330, %332
  store float %333, ptr %331, align 4, !tbaa !31
  %334 = add nuw nsw i64 %328, 1
  %335 = icmp eq i64 %334, %315
  br i1 %335, label %324, label %327

336:                                              ; preds = %339
  br i1 %199, label %337, label %400

337:                                              ; preds = %336
  %338 = zext i32 %15 to i64
  br label %355

339:                                              ; preds = %339, %325
  %340 = phi i64 [ 0, %325 ], [ %350, %339 ]
  %341 = getelementptr inbounds float, ptr %26, i64 %340
  %342 = load float, ptr %341, align 4, !tbaa !31
  %343 = getelementptr inbounds float, ptr %38, i64 %340
  %344 = load float, ptr %343, align 4, !tbaa !31
  %345 = fmul float %342, %344
  %346 = getelementptr inbounds float, ptr %32, i64 %340
  %347 = load float, ptr %346, align 4, !tbaa !31
  %348 = fdiv float %345, %347
  %349 = getelementptr inbounds float, ptr %46, i64 %340
  store float %348, ptr %349, align 4, !tbaa !31
  %350 = add nuw nsw i64 %340, 1
  %351 = icmp eq i64 %350, %326
  br i1 %351, label %336, label %339

352:                                              ; preds = %355
  br i1 %199, label %353, label %400

353:                                              ; preds = %352
  %354 = zext i32 %15 to i64
  br label %375

355:                                              ; preds = %355, %337
  %356 = phi i64 [ 0, %337 ], [ %370, %355 ]
  %357 = getelementptr inbounds float, ptr %28, i64 %356
  %358 = load float, ptr %357, align 4, !tbaa !31
  %359 = fmul float %358, %6
  %360 = getelementptr inbounds float, ptr %34, i64 %356
  %361 = load float, ptr %360, align 4, !tbaa !31
  %362 = getelementptr inbounds float, ptr %38, i64 %356
  %363 = load float, ptr %362, align 4, !tbaa !31
  %364 = fsub float %361, %363
  %365 = fmul float %359, %364
  %366 = getelementptr inbounds float, ptr %36, i64 %356
  %367 = load float, ptr %366, align 4, !tbaa !31
  %368 = fdiv float %365, %367
  %369 = getelementptr inbounds float, ptr %48, i64 %356
  store float %368, ptr %369, align 4, !tbaa !31
  %370 = add nuw nsw i64 %356, 1
  %371 = icmp eq i64 %370, %338
  br i1 %371, label %352, label %355

372:                                              ; preds = %375
  br i1 %199, label %373, label %400

373:                                              ; preds = %372
  %374 = zext i32 %15 to i64
  br label %389

375:                                              ; preds = %375, %353
  %376 = phi i64 [ 0, %353 ], [ %384, %375 ]
  %377 = getelementptr inbounds float, ptr %30, i64 %376
  %378 = load float, ptr %377, align 4, !tbaa !31
  %379 = fmul float %68, %378
  %380 = getelementptr inbounds float, ptr %40, i64 %376
  %381 = load float, ptr %380, align 4, !tbaa !31
  %382 = fmul float %379, %381
  %383 = getelementptr inbounds float, ptr %50, i64 %376
  store float %382, ptr %383, align 4, !tbaa !31
  %384 = add nuw nsw i64 %376, 1
  %385 = icmp eq i64 %384, %354
  br i1 %385, label %372, label %375

386:                                              ; preds = %389
  br i1 %199, label %387, label %400

387:                                              ; preds = %386
  %388 = zext i32 %15 to i64
  br label %401

389:                                              ; preds = %389, %373
  %390 = phi i64 [ 0, %373 ], [ %398, %389 ]
  %391 = getelementptr inbounds float, ptr %249, i64 %390
  %392 = load float, ptr %391, align 4, !tbaa !31
  %393 = getelementptr inbounds float, ptr %38, i64 %390
  %394 = load float, ptr %393, align 4, !tbaa !31
  %395 = fsub float 1.000000e+00, %394
  %396 = fmul float %392, %395
  %397 = getelementptr inbounds float, ptr %52, i64 %390
  store float %396, ptr %397, align 4, !tbaa !31
  %398 = add nuw nsw i64 %390, 1
  %399 = icmp eq i64 %398, %374
  br i1 %399, label %386, label %389

400:                                              ; preds = %401, %386, %372, %352, %336, %324, %313, %270, %245, %219, %204, %198, %133, %115, %74
  ret void

401:                                              ; preds = %401, %387
  %402 = phi i64 [ 0, %387 ], [ %415, %401 ]
  %403 = getelementptr inbounds float, ptr %46, i64 %402
  %404 = load float, ptr %403, align 4, !tbaa !31
  %405 = getelementptr inbounds float, ptr %48, i64 %402
  %406 = load float, ptr %405, align 4, !tbaa !31
  %407 = fadd float %404, %406
  %408 = getelementptr inbounds float, ptr %50, i64 %402
  %409 = load float, ptr %408, align 4, !tbaa !31
  %410 = fadd float %407, %409
  %411 = getelementptr inbounds float, ptr %52, i64 %402
  %412 = load float, ptr %411, align 4, !tbaa !31
  %413 = fadd float %410, %412
  %414 = getelementptr inbounds float, ptr %249, i64 %402
  store float %413, ptr %414, align 4, !tbaa !31
  %415 = add nuw nsw i64 %402, 1
  %416 = icmp eq i64 %415, %388
  br i1 %416, label %400, label %401
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind optsize uwtable
define internal void @transport_sweep(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #5 {
  %3 = alloca %struct.AttenuateVars, align 8
  %4 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 17
  %5 = load i64, ptr %4, align 8, !tbaa !36
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 14
  %11 = load float, ptr %10, align 4, !tbaa !20
  %12 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !22
  %14 = sitofp i32 %13 to float
  %15 = fdiv float %11, %14
  %16 = fpext float %15 to double
  %17 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !28
  %19 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !83
  %21 = mul nsw i32 %20, %18
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %16, %22
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #30
  %24 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 9
  %25 = load i32, ptr %24, align 4, !tbaa !32
  %26 = mul nsw i32 %25, 14
  %27 = sext i32 %26 to i64
  %28 = shl nsw i64 %27, 2
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #36
  store ptr %29, ptr %3, align 8, !tbaa !61
  %30 = sext i32 %25 to i64
  %31 = getelementptr inbounds float, ptr %29, i64 %30
  %32 = getelementptr inbounds %struct.AttenuateVars, ptr %3, i64 0, i32 1
  store ptr %31, ptr %32, align 8, !tbaa !63
  %33 = getelementptr inbounds float, ptr %31, i64 %30
  %34 = getelementptr inbounds %struct.AttenuateVars, ptr %3, i64 0, i32 2
  store ptr %33, ptr %34, align 8, !tbaa !64
  %35 = getelementptr inbounds float, ptr %33, i64 %30
  %36 = getelementptr inbounds %struct.AttenuateVars, ptr %3, i64 0, i32 3
  store ptr %35, ptr %36, align 8, !tbaa !65
  %37 = getelementptr inbounds float, ptr %35, i64 %30
  %38 = getelementptr inbounds %struct.AttenuateVars, ptr %3, i64 0, i32 4
  store ptr %37, ptr %38, align 8, !tbaa !66
  %39 = getelementptr inbounds float, ptr %37, i64 %30
  %40 = getelementptr inbounds %struct.AttenuateVars, ptr %3, i64 0, i32 5
  store ptr %39, ptr %40, align 8, !tbaa !67
  %41 = getelementptr inbounds float, ptr %39, i64 %30
  %42 = getelementptr inbounds %struct.AttenuateVars, ptr %3, i64 0, i32 6
  store ptr %41, ptr %42, align 8, !tbaa !68
  %43 = getelementptr inbounds float, ptr %41, i64 %30
  %44 = getelementptr inbounds %struct.AttenuateVars, ptr %3, i64 0, i32 7
  store ptr %43, ptr %44, align 8, !tbaa !69
  %45 = getelementptr inbounds float, ptr %43, i64 %30
  %46 = getelementptr inbounds %struct.AttenuateVars, ptr %3, i64 0, i32 8
  store ptr %45, ptr %46, align 8, !tbaa !70
  %47 = getelementptr inbounds float, ptr %45, i64 %30
  %48 = getelementptr inbounds %struct.AttenuateVars, ptr %3, i64 0, i32 9
  store ptr %47, ptr %48, align 8, !tbaa !71
  %49 = getelementptr inbounds float, ptr %47, i64 %30
  %50 = getelementptr inbounds %struct.AttenuateVars, ptr %3, i64 0, i32 10
  store ptr %49, ptr %50, align 8, !tbaa !72
  %51 = getelementptr inbounds float, ptr %49, i64 %30
  %52 = getelementptr inbounds %struct.AttenuateVars, ptr %3, i64 0, i32 11
  store ptr %51, ptr %52, align 8, !tbaa !73
  %53 = getelementptr inbounds float, ptr %51, i64 %30
  %54 = getelementptr inbounds %struct.AttenuateVars, ptr %3, i64 0, i32 12
  store ptr %53, ptr %54, align 8, !tbaa !74
  %55 = getelementptr inbounds float, ptr %53, i64 %30
  %56 = getelementptr inbounds %struct.AttenuateVars, ptr %3, i64 0, i32 13
  store ptr %55, ptr %56, align 8, !tbaa !75
  %57 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 18
  %58 = load i64, ptr %57, align 8, !tbaa !19
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %9
  %61 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 8
  %62 = getelementptr inbounds %struct.Params, ptr %0, i64 0, i32 3
  %63 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 19
  %64 = getelementptr inbounds %struct.Params, ptr %0, i64 0, i32 1
  %65 = fptrunc double %23 to float
  %66 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 24
  %67 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 4
  %68 = getelementptr inbounds %struct.Params, ptr %0, i64 0, i32 2
  %69 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 6
  %70 = load i32, ptr %61, align 8, !tbaa !24
  br label %71

71:                                               ; preds = %82, %60
  %72 = phi i64 [ %58, %60 ], [ %83, %82 ]
  %73 = phi i32 [ %70, %60 ], [ %84, %82 ]
  %74 = phi i64 [ 0, %60 ], [ %85, %82 ]
  %75 = phi i64 [ 0, %60 ], [ %86, %82 ]
  %76 = icmp sgt i32 %73, 0
  br i1 %76, label %88, label %82

77:                                               ; preds = %82, %9
  %78 = phi i64 [ 0, %9 ], [ %85, %82 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #30
  %79 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 27
  store i64 %78, ptr %79, align 8, !tbaa !84
  ret void

80:                                               ; preds = %115
  %.lcssa7 = phi i64 [ %116, %115 ]
  %.lcssa = phi i32 [ %118, %115 ]
  %81 = load i64, ptr %57, align 8, !tbaa !19
  br label %82

82:                                               ; preds = %80, %71
  %83 = phi i64 [ %72, %71 ], [ %81, %80 ]
  %84 = phi i32 [ %73, %71 ], [ %.lcssa, %80 ]
  %85 = phi i64 [ %74, %71 ], [ %.lcssa7, %80 ]
  %86 = add nuw nsw i64 %75, 1
  %87 = icmp slt i64 %86, %83
  br i1 %87, label %71, label %77

88:                                               ; preds = %115, %71
  %89 = phi i64 [ %117, %115 ], [ 0, %71 ]
  %90 = phi i32 [ %118, %115 ], [ %73, %71 ]
  %91 = phi i64 [ %116, %115 ], [ %74, %71 ]
  %92 = phi i8 [ %96, %115 ], [ 1, %71 ]
  %93 = sdiv i32 %90, 2
  %94 = zext i32 %93 to i64
  %95 = icmp eq i64 %89, %94
  %96 = select i1 %95, i8 0, i8 %92
  %97 = load ptr, ptr %62, align 8, !tbaa !48
  %98 = getelementptr inbounds float, ptr %97, i64 %89
  %99 = load float, ptr %98, align 4, !tbaa !31
  %100 = fpext float %99 to double
  %101 = tail call double @cos(double noundef %100) #31
  %102 = fptrunc double %101 to float
  %103 = load ptr, ptr %0, align 8, !tbaa !52
  %104 = getelementptr inbounds %struct.Track2D, ptr %103, i64 %75, i32 1
  %105 = load i64, ptr %104, align 8, !tbaa !85
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %88
  %108 = load i32, ptr %63, align 8, !tbaa !23
  %109 = and i8 %96, 1
  %110 = icmp eq i8 %109, 0
  %111 = select i1 %110, i32 -1, i32 1
  %112 = zext i1 %110 to i32
  %113 = xor i1 %110, true
  %114 = sext i1 %113 to i32
  br label %121

115:                                              ; preds = %142, %88
  %116 = phi i64 [ %91, %88 ], [ %147, %142 ]
  %117 = add nuw nsw i64 %89, 1
  %118 = load i32, ptr %61, align 8, !tbaa !24
  %119 = sext i32 %118 to i64
  %120 = icmp slt i64 %117, %119
  br i1 %120, label %88, label %80

121:                                              ; preds = %142, %107
  %122 = phi i64 [ 0, %107 ], [ %148, %142 ]
  %123 = phi ptr [ %103, %107 ], [ %144, %142 ]
  %124 = phi i64 [ %91, %107 ], [ %147, %142 ]
  %125 = phi i32 [ %108, %107 ], [ %146, %142 ]
  %126 = phi i32 [ 0, %107 ], [ %145, %142 ]
  %127 = getelementptr inbounds %struct.Track2D, ptr %123, i64 %75, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !87
  %129 = getelementptr inbounds %struct.Segment, ptr %128, i64 %122
  %130 = load float, ptr %129, align 8, !tbaa !88
  %131 = fpext float %130 to double
  %132 = tail call double @sin(double noundef %100) #31
  %133 = fdiv double %131, %132
  %134 = fptrunc double %133 to float
  %135 = icmp slt i32 %126, %125
  br i1 %135, label %140, label %136

136:                                              ; preds = %121
  %137 = load ptr, ptr %0, align 8, !tbaa !52
  %138 = getelementptr inbounds %struct.Track2D, ptr %137, i64 %75, i32 1
  %139 = load i64, ptr %138, align 8, !tbaa !85
  br label %142

140:                                              ; preds = %121
  %141 = sext i32 %126 to i64
  br label %150

142:                                              ; preds = %259, %136
  %143 = phi i64 [ %139, %136 ], [ %.lcssa4, %259 ]
  %144 = phi ptr [ %137, %136 ], [ %.lcssa5, %259 ]
  %145 = phi i32 [ %126, %136 ], [ %.lcssa3, %259 ]
  %146 = phi i32 [ %125, %136 ], [ %.lcssa1, %259 ]
  %147 = phi i64 [ %124, %136 ], [ %.lcssa6, %259 ]
  %148 = add nuw nsw i64 %122, 1
  %149 = icmp sgt i64 %143, %148
  br i1 %149, label %121, label %115

150:                                              ; preds = %259, %140
  %151 = phi i64 [ %141, %140 ], [ %170, %259 ]
  %152 = phi i64 [ %124, %140 ], [ %.lcssa6, %259 ]
  %153 = phi i32 [ %125, %140 ], [ %.lcssa1, %259 ]
  %154 = phi i32 [ %126, %140 ], [ %.lcssa3, %259 ]
  %155 = load ptr, ptr %64, align 8, !tbaa !45
  %156 = getelementptr inbounds ptr, ptr %155, i64 %75
  %157 = load ptr, ptr %156, align 8, !tbaa !41
  %158 = getelementptr inbounds ptr, ptr %157, i64 %89
  %159 = load ptr, ptr %158, align 8, !tbaa !41
  %160 = getelementptr inbounds %struct.Track, ptr %159, i64 %151
  %161 = getelementptr inbounds %struct.Track, ptr %159, i64 %151, i32 1
  %162 = load float, ptr %161, align 4, !tbaa !76
  %163 = fdiv float %162, %65
  %164 = tail call float @llvm.ceil.f32(float %163)
  %165 = select i1 %110, float %164, float %163
  %166 = fptosi float %165 to i32
  %167 = getelementptr inbounds %struct.Track, ptr %159, i64 %151, i32 1
  %168 = trunc i64 %151 to i32
  %169 = sitofp i32 %168 to float
  %170 = add nsw i64 %151, 1
  %171 = trunc i64 %170 to i32
  %172 = sitofp i32 %171 to float
  br label %173

173:                                              ; preds = %255, %150
  %174 = phi float [ %162, %150 ], [ %256, %255 ]
  %175 = phi i64 [ %152, %150 ], [ %242, %255 ]
  %176 = phi i32 [ %166, %150 ], [ %218, %255 ]
  %177 = phi i8 [ 0, %150 ], [ %217, %255 ]
  %178 = phi float [ %134, %150 ], [ %216, %255 ]
  %179 = phi i32 [ %153, %150 ], [ %214, %255 ]
  %180 = phi i32 [ %154, %150 ], [ %213, %255 ]
  %181 = fpext float %174 to double
  %182 = fpext float %178 to double
  %183 = tail call double @cos(double noundef %100) #31
  %184 = tail call double @llvm.fmuladd.f64(double %182, double %183, double %181)
  %185 = fptrunc double %184 to float
  %186 = fdiv float %185, %65
  %187 = tail call float @llvm.ceil.f32(float %186)
  %188 = select i1 %110, float %187, float %186
  %189 = fptosi float %188 to i32
  %190 = icmp eq i32 %176, %189
  br i1 %190, label %212, label %191

191:                                              ; preds = %173
  %192 = add nsw i32 %176, %111
  %193 = sitofp i32 %192 to float
  %194 = fpext float %193 to double
  %195 = fmul double %23, %194
  %196 = fptrunc double %195 to float
  %197 = load float, ptr %167, align 4, !tbaa !76
  %198 = fsub float %196, %197
  %199 = fpext float %198 to double
  %200 = tail call double @cos(double noundef %100) #31
  %201 = fdiv double %199, %200
  %202 = fptrunc double %201 to float
  %203 = fsub float %178, %202
  %204 = fcmp ugt float %203, 0.000000e+00
  %205 = select i1 %204, i8 %177, i8 1
  %206 = fcmp ugt float %196, 0.000000e+00
  %207 = fcmp ugt float %15, %196
  %208 = select i1 %206, i1 %207, i1 false
  br i1 %208, label %212, label %209

209:                                              ; preds = %191
  %210 = add nsw i32 %180, %112
  %211 = add nsw i32 %179, %114
  br label %212

212:                                              ; preds = %209, %191, %173
  %213 = phi i32 [ %210, %209 ], [ %180, %173 ], [ %180, %191 ]
  %214 = phi i32 [ %211, %209 ], [ %179, %173 ], [ %179, %191 ]
  %215 = phi float [ %202, %209 ], [ %178, %173 ], [ %202, %191 ]
  %216 = phi float [ %203, %209 ], [ %178, %173 ], [ %203, %191 ]
  %217 = phi i8 [ 1, %209 ], [ 1, %173 ], [ %205, %191 ]
  %218 = phi i32 [ %192, %209 ], [ %176, %173 ], [ %192, %191 ]
  %219 = phi i1 [ true, %209 ], [ false, %173 ], [ false, %191 ]
  %220 = phi float [ %196, %209 ], [ %185, %173 ], [ %196, %191 ]
  %221 = tail call i32 @glibc_compat_rand() #31
  %222 = sext i32 %221 to i64
  %223 = load i64, ptr %66, align 8, !tbaa !29
  %224 = srem i64 %222, %223
  %225 = load i32, ptr %67, align 8, !tbaa !30
  switch i32 %225, label %238 [
    i32 2, label %226
    i32 0, label %232
  ]

226:                                              ; preds = %212
  %227 = load ptr, ptr %68, align 8, !tbaa !49
  %228 = getelementptr inbounds %struct.Source, ptr %227, i64 %224
  %229 = load ptr, ptr %0, align 8, !tbaa !52
  %230 = getelementptr inbounds %struct.Track2D, ptr %229, i64 %75
  %231 = load float, ptr %230, align 8, !tbaa !90
  call void @attenuate_fluxes(ptr noundef nonnull %160, i1 noundef zeroext true, ptr noundef %228, ptr noundef nonnull %1, ptr noundef nonnull %0, float noundef %215, float noundef %102, float noundef %231, ptr noundef nonnull %3) #34
  br label %241

232:                                              ; preds = %212
  %233 = load ptr, ptr %68, align 8, !tbaa !49
  %234 = getelementptr inbounds %struct.Source, ptr %233, i64 %224
  %235 = load ptr, ptr %0, align 8, !tbaa !52
  %236 = getelementptr inbounds %struct.Track2D, ptr %235, i64 %75
  %237 = load float, ptr %236, align 8, !tbaa !90
  call void @attenuate_FSR_fluxes(ptr noundef nonnull %160, i1 noundef zeroext true, ptr noundef %234, ptr noundef nonnull %1, ptr noundef nonnull %0, float noundef %215, float noundef %102, float noundef %237, ptr noundef nonnull %3) #34
  br label %241

238:                                              ; preds = %212
  %239 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.7) #34
  %240 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  tail call void @exit(i32 noundef 1) #35
  unreachable

241:                                              ; preds = %232, %226
  %242 = add nsw i64 %175, 1
  %243 = load ptr, ptr %0, align 8, !tbaa !52
  %244 = getelementptr inbounds %struct.Track2D, ptr %243, i64 %75, i32 1
  %245 = load i64, ptr %244, align 8, !tbaa !85
  %246 = add nsw i64 %245, -1
  %247 = icmp eq i64 %246, %122
  %248 = or i1 %219, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %241
  %250 = load float, ptr %69, align 8, !tbaa !21
  br i1 %110, label %253, label %251

251:                                              ; preds = %249
  %252 = fmul float %250, %169
  br label %255

253:                                              ; preds = %249
  %254 = fmul float %250, %172
  br label %255

255:                                              ; preds = %253, %251, %241
  %256 = phi float [ %252, %251 ], [ %254, %253 ], [ %220, %241 ]
  store float %256, ptr %167, align 4, !tbaa !76
  %257 = and i8 %217, 1
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %173, label %259

259:                                              ; preds = %255
  %.lcssa6 = phi i64 [ %242, %255 ]
  %.lcssa5 = phi ptr [ %243, %255 ]
  %.lcssa4 = phi i64 [ %245, %255 ]
  %.lcssa3 = phi i32 [ %213, %255 ]
  %.lcssa1 = phi i32 [ %214, %255 ]
  %260 = sext i32 %.lcssa1 to i64
  %261 = icmp slt i64 %170, %260
  br i1 %261, label %150, label %142
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @attenuate_FSR_fluxes(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, float noundef %5, float noundef %6, float noundef %7, ptr nocapture noundef readonly %8) #19 {
  %10 = getelementptr inbounds %struct.AttenuateVars, ptr %8, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = getelementptr inbounds %struct.AttenuateVars, ptr %8, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = getelementptr inbounds %struct.AttenuateVars, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.AttenuateVars, ptr %8, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  %18 = getelementptr inbounds i8, ptr %4, i64 40
  %19 = load ptr, ptr %18, align 8, !tbaa.struct !58
  %20 = getelementptr inbounds i8, ptr %4, i64 48
  %21 = load float, ptr %20, align 8, !tbaa.struct !59
  %22 = getelementptr inbounds i8, ptr %4, i64 52
  %23 = load float, ptr %22, align 4, !tbaa.struct !60
  %24 = getelementptr inbounds %struct.Input, ptr %3, i64 0, i32 14
  %25 = load float, ptr %24, align 4, !tbaa !20
  %26 = getelementptr inbounds %struct.Input, ptr %3, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !83
  %28 = getelementptr inbounds %struct.Input, ptr %3, i64 0, i32 11
  %29 = load i32, ptr %28, align 4, !tbaa !22
  %30 = mul nsw i32 %29, %27
  %31 = getelementptr inbounds %struct.Input, ptr %3, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !28
  %33 = mul nsw i32 %30, %32
  %34 = sitofp i32 %33 to float
  %35 = fdiv float %25, %34
  %36 = getelementptr inbounds %struct.Track, ptr %0, i64 0, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !76
  %38 = fdiv float %37, %35
  %39 = fptosi float %38 to i32
  %40 = srem i32 %39, %27
  %41 = load float, ptr %0, align 8, !tbaa !78
  %42 = fmul float %41, %7
  %43 = fmul float %42, %6
  %44 = load ptr, ptr %2, align 8, !tbaa !79
  %45 = sext i32 %40 to i64
  %46 = getelementptr inbounds ptr, ptr %44, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !41
  %48 = getelementptr inbounds %struct.Input, ptr %3, i64 0, i32 9
  %49 = load i32, ptr %48, align 4, !tbaa !32
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %123

51:                                               ; preds = %9
  %52 = getelementptr inbounds %struct.Source, ptr %2, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !82
  %54 = zext i32 %49 to i64
  br label %58

55:                                               ; preds = %58
  br i1 %50, label %56, label %123

56:                                               ; preds = %55
  %57 = zext i32 %49 to i64
  br label %78

58:                                               ; preds = %58, %51
  %59 = phi i64 [ 0, %51 ], [ %65, %58 ]
  %60 = getelementptr inbounds float, ptr %53, i64 %59
  %61 = load float, ptr %60, align 4, !tbaa !31
  %62 = getelementptr inbounds float, ptr %15, i64 %59
  store float %61, ptr %62, align 4, !tbaa !31
  %63 = fmul float %61, %5
  %64 = getelementptr inbounds float, ptr %17, i64 %59
  store float %63, ptr %64, align 4, !tbaa !31
  %65 = add nuw nsw i64 %59, 1
  %66 = icmp eq i64 %65, %54
  br i1 %66, label %55, label %58

67:                                               ; preds = %96
  %68 = getelementptr inbounds %struct.Track, ptr %0, i64 0, i32 4
  %69 = getelementptr inbounds %struct.Track, ptr %0, i64 0, i32 5
  %70 = select i1 %1, ptr %68, ptr %69
  %71 = load ptr, ptr %70, align 8, !tbaa !41
  br i1 %50, label %72, label %123

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.Source, ptr %2, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !81
  %75 = getelementptr inbounds ptr, ptr %74, i64 %45
  %76 = load ptr, ptr %75, align 8, !tbaa !41
  %77 = zext i32 %49 to i64
  br label %104

78:                                               ; preds = %96, %56
  %79 = phi i64 [ 0, %56 ], [ %99, %96 ]
  %80 = getelementptr inbounds float, ptr %17, i64 %79
  %81 = load float, ptr %80, align 4, !tbaa !31
  %82 = fcmp olt float %23, %81
  br i1 %82, label %96, label %83

83:                                               ; preds = %78
  %84 = fdiv float %81, %21
  %85 = tail call float @llvm.fmuladd.f32(float %21, float 5.000000e-01, float %84)
  %86 = fptosi float %85 to i32
  %87 = shl nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, ptr %19, i64 %88
  %90 = load float, ptr %89, align 4, !tbaa !31
  %91 = or i32 %87, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, ptr %19, i64 %92
  %94 = load float, ptr %93, align 4, !tbaa !31
  %95 = tail call float @llvm.fmuladd.f32(float %90, float %81, float %94)
  br label %96

96:                                               ; preds = %83, %78
  %97 = phi float [ %95, %83 ], [ 1.000000e+00, %78 ]
  %98 = getelementptr inbounds float, ptr %13, i64 %79
  store float %97, ptr %98, align 4, !tbaa !31
  %99 = add nuw nsw i64 %79, 1
  %100 = icmp eq i64 %99, %57
  br i1 %100, label %67, label %78

101:                                              ; preds = %104
  br i1 %50, label %102, label %123

102:                                              ; preds = %101
  %103 = zext i32 %49 to i64
  br label %124

104:                                              ; preds = %104, %72
  %105 = phi i64 [ 0, %72 ], [ %121, %104 ]
  %106 = getelementptr inbounds float, ptr %76, i64 %105
  %107 = load float, ptr %106, align 4, !tbaa !31
  %108 = getelementptr inbounds float, ptr %15, i64 %105
  %109 = load float, ptr %108, align 4, !tbaa !31
  %110 = fdiv float %107, %109
  %111 = getelementptr inbounds float, ptr %71, i64 %105
  %112 = load float, ptr %111, align 4, !tbaa !31
  %113 = fsub float %112, %110
  %114 = getelementptr inbounds float, ptr %13, i64 %105
  %115 = load float, ptr %114, align 4, !tbaa !31
  %116 = fmul float %113, %115
  %117 = fmul float %43, %116
  %118 = getelementptr inbounds float, ptr %11, i64 %105
  store float %117, ptr %118, align 4, !tbaa !31
  %119 = load float, ptr %111, align 4, !tbaa !31
  %120 = fsub float %119, %116
  store float %120, ptr %111, align 4, !tbaa !31
  %121 = add nuw nsw i64 %105, 1
  %122 = icmp eq i64 %121, %77
  br i1 %122, label %101, label %104

123:                                              ; preds = %124, %101, %67, %55, %9
  ret void

124:                                              ; preds = %124, %102
  %125 = phi i64 [ 0, %102 ], [ %131, %124 ]
  %126 = getelementptr inbounds float, ptr %11, i64 %125
  %127 = load float, ptr %126, align 4, !tbaa !31
  %128 = getelementptr inbounds float, ptr %47, i64 %125
  %129 = load float, ptr %128, align 4, !tbaa !31
  %130 = fadd float %127, %129
  store float %130, ptr %128, align 4, !tbaa !31
  %131 = add nuw nsw i64 %125, 1
  %132 = icmp eq i64 %131, %103
  br i1 %132, label %123, label %124
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nounwind optsize uwtable
define internal void @renormalize_flux(ptr nocapture noundef readonly byval(%struct.Params) align 8 %0, ptr nocapture noundef readonly byval(%struct.Input) align 8 %1, ptr nocapture noundef readnone byval(%struct.CommGrid) align 8 %2) #5 {
  %4 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 17
  %5 = load i64, ptr %4, align 8, !tbaa !36
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 24
  %11 = load i64, ptr %10, align 8, !tbaa !29
  %12 = shl i64 %11, 2
  %13 = tail call noalias ptr @malloc(i64 noundef %12) #36
  %14 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !83
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 2
  %18 = tail call noalias ptr @malloc(i64 noundef %17) #36
  %19 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 9
  %20 = load i32, ptr %19, align 4, !tbaa !32
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 2
  %23 = tail call noalias ptr @malloc(i64 noundef %22) #36
  %24 = icmp sgt i64 %11, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.Params, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = icmp sgt i32 %15, 0
  %29 = icmp sgt i32 %20, 0
  %30 = zext i32 %15 to i64
  %31 = zext i32 %20 to i64
  br label %47

32:                                               ; preds = %60, %9
  %33 = tail call float @pairwise_sum(ptr noundef %13, i64 noundef %11) #31
  tail call void @free(ptr noundef %13) #31
  tail call void @free(ptr noundef %18) #31
  tail call void @free(ptr noundef %23) #31
  %34 = fdiv float 1.000000e+00, %33
  br i1 %24, label %35, label %82

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.Params, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !49
  %38 = fmul float %34, 4.000000e+00
  %39 = fpext float %38 to double
  %40 = fmul double %39, 0x400921FB54442D18
  %41 = sitofp i32 %15 to double
  %42 = fmul double %40, %41
  %43 = icmp sgt i32 %15, 0
  %44 = icmp sgt i32 %20, 0
  %45 = zext i32 %15 to i64
  %46 = zext i32 %20 to i64
  br label %99

47:                                               ; preds = %60, %25
  %48 = phi i64 [ 0, %25 ], [ %63, %60 ]
  %49 = getelementptr inbounds %struct.Source, ptr %27, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa.struct !91
  %51 = getelementptr inbounds i8, ptr %49, i64 16
  %52 = load float, ptr %51, align 8, !tbaa.struct !92
  %53 = getelementptr inbounds i8, ptr %49, i64 32
  %54 = load ptr, ptr %53, align 8, !tbaa.struct !93
  br i1 %28, label %55, label %60

55:                                               ; preds = %65, %47
  %56 = phi i64 [ %68, %65 ], [ 0, %47 ]
  br i1 %29, label %57, label %65

57:                                               ; preds = %55
  %58 = getelementptr inbounds ptr, ptr %50, i64 %56
  %59 = load ptr, ptr %58, align 8, !tbaa !41
  br label %70

60:                                               ; preds = %65, %47
  %61 = tail call float @pairwise_sum(ptr noundef %18, i64 noundef %16) #31
  %62 = getelementptr inbounds float, ptr %13, i64 %48
  store float %61, ptr %62, align 4, !tbaa !31
  %63 = add nuw nsw i64 %48, 1
  %64 = icmp eq i64 %63, %11
  br i1 %64, label %32, label %47

65:                                               ; preds = %70, %55
  %66 = tail call float @pairwise_sum(ptr noundef %23, i64 noundef %21) #31
  %67 = getelementptr inbounds float, ptr %18, i64 %56
  store float %66, ptr %67, align 4, !tbaa !31
  %68 = add nuw nsw i64 %56, 1
  %69 = icmp eq i64 %68, %30
  br i1 %69, label %60, label %55

70:                                               ; preds = %70, %57
  %71 = phi i64 [ 0, %57 ], [ %80, %70 ]
  %72 = getelementptr inbounds float, ptr %59, i64 %71
  %73 = load float, ptr %72, align 4, !tbaa !31
  %74 = fmul float %52, %73
  %75 = getelementptr inbounds ptr, ptr %54, i64 %71
  %76 = load ptr, ptr %75, align 8, !tbaa !41
  %77 = load float, ptr %76, align 4, !tbaa !31
  %78 = fmul float %74, %77
  %79 = getelementptr inbounds float, ptr %23, i64 %71
  store float %78, ptr %79, align 4, !tbaa !31
  %80 = add nuw nsw i64 %71, 1
  %81 = icmp eq i64 %80, %31
  br i1 %81, label %65, label %70

82:                                               ; preds = %113, %32
  %83 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 18
  %84 = load i64, ptr %83, align 8, !tbaa !19
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %130

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 8
  %88 = load i32, ptr %87, align 8, !tbaa !24
  %89 = icmp sgt i32 %88, 0
  %90 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 19
  %91 = load i32, ptr %90, align 8
  %92 = icmp sgt i32 %91, 0
  %93 = icmp sgt i32 %20, 0
  %94 = getelementptr inbounds %struct.Params, ptr %0, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8
  %96 = zext i32 %88 to i64
  %97 = zext i32 %91 to i64
  %98 = zext i32 %20 to i64
  br label %126

99:                                               ; preds = %113, %35
  %100 = phi i64 [ 0, %35 ], [ %114, %113 ]
  %101 = getelementptr inbounds %struct.Source, ptr %37, i64 %100
  %102 = getelementptr inbounds %struct.Source, ptr %37, i64 %100, i32 2
  %103 = load float, ptr %102, align 8, !tbaa !94
  %104 = fpext float %103 to double
  %105 = fdiv double %42, %104
  %106 = fptrunc double %105 to float
  br i1 %43, label %107, label %113

107:                                              ; preds = %116, %99
  %108 = phi i64 [ %117, %116 ], [ 0, %99 ]
  br i1 %44, label %109, label %116

109:                                              ; preds = %107
  %110 = load ptr, ptr %101, align 8, !tbaa !79
  %111 = getelementptr inbounds ptr, ptr %110, i64 %108
  %112 = load ptr, ptr %111, align 8, !tbaa !41
  br label %119

113:                                              ; preds = %116, %99
  %114 = add nuw nsw i64 %100, 1
  %115 = icmp eq i64 %114, %11
  br i1 %115, label %82, label %99

116:                                              ; preds = %119, %107
  %117 = add nuw nsw i64 %108, 1
  %118 = icmp eq i64 %117, %45
  br i1 %118, label %113, label %107

119:                                              ; preds = %119, %109
  %120 = phi i64 [ 0, %109 ], [ %124, %119 ]
  %121 = getelementptr inbounds float, ptr %112, i64 %120
  %122 = load float, ptr %121, align 4, !tbaa !31
  %123 = fmul float %122, %106
  store float %123, ptr %121, align 4, !tbaa !31
  %124 = add nuw nsw i64 %120, 1
  %125 = icmp eq i64 %124, %46
  br i1 %125, label %116, label %119

126:                                              ; preds = %133, %86
  %127 = phi i64 [ 0, %86 ], [ %134, %133 ]
  br i1 %89, label %128, label %133

128:                                              ; preds = %126
  %129 = getelementptr inbounds ptr, ptr %95, i64 %127
  br label %131

130:                                              ; preds = %133, %82
  br i1 %6, label %162, label %164

131:                                              ; preds = %146, %128
  %132 = phi i64 [ 0, %128 ], [ %147, %146 ]
  br i1 %92, label %136, label %146

133:                                              ; preds = %146, %126
  %134 = add nuw nsw i64 %127, 1
  %135 = icmp eq i64 %134, %84
  br i1 %135, label %130, label %126

136:                                              ; preds = %149, %131
  %137 = phi i64 [ %150, %149 ], [ 0, %131 ]
  br i1 %93, label %138, label %149

138:                                              ; preds = %136
  %139 = load ptr, ptr %129, align 8, !tbaa !41
  %140 = getelementptr inbounds ptr, ptr %139, i64 %132
  %141 = load ptr, ptr %140, align 8, !tbaa !41
  %142 = getelementptr inbounds %struct.Track, ptr %141, i64 %137, i32 4
  %143 = load ptr, ptr %142, align 8, !tbaa !95
  %144 = getelementptr inbounds %struct.Track, ptr %141, i64 %137, i32 5
  %145 = load ptr, ptr %144, align 8, !tbaa !96
  br label %152

146:                                              ; preds = %149, %131
  %147 = add nuw nsw i64 %132, 1
  %148 = icmp eq i64 %147, %96
  br i1 %148, label %133, label %131

149:                                              ; preds = %152, %136
  %150 = add nuw nsw i64 %137, 1
  %151 = icmp eq i64 %150, %97
  br i1 %151, label %146, label %136

152:                                              ; preds = %152, %138
  %153 = phi i64 [ 0, %138 ], [ %160, %152 ]
  %154 = getelementptr inbounds float, ptr %143, i64 %153
  %155 = load float, ptr %154, align 4, !tbaa !31
  %156 = fmul float %34, %155
  store float %156, ptr %154, align 4, !tbaa !31
  %157 = getelementptr inbounds float, ptr %145, i64 %153
  %158 = load float, ptr %157, align 4, !tbaa !31
  %159 = fmul float %34, %158
  store float %159, ptr %157, align 4, !tbaa !31
  %160 = add nuw nsw i64 %153, 1
  %161 = icmp eq i64 %160, %98
  br i1 %161, label %149, label %152

162:                                              ; preds = %130
  %163 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  br label %164

164:                                              ; preds = %162, %130
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind optsize uwtable
define internal float @update_sources(ptr nocapture noundef readonly byval(%struct.Params) align 8 %0, ptr nocapture noundef readonly byval(%struct.Input) align 8 %1, float noundef %2) #5 {
  %4 = fdiv float 1.000000e+00, %2
  %5 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 9
  %6 = load i32, ptr %5, align 4, !tbaa !32
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 2
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #36
  %10 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !83
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #36
  %15 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 24
  %16 = load i64, ptr %15, align 8, !tbaa !29
  %17 = shl i64 %16, 2
  %18 = tail call noalias ptr @malloc(i64 noundef %17) #36
  %19 = tail call noalias ptr @malloc(i64 noundef %8) #36
  %20 = tail call noalias ptr @malloc(i64 noundef %8) #36
  %21 = icmp sgt i64 %16, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.Params, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = icmp sgt i32 %11, 0
  %26 = icmp sgt i32 %6, 0
  %27 = zext i32 %11 to i64
  %28 = zext i32 %6 to i64
  %29 = zext i32 %6 to i64
  br label %32

30:                                               ; preds = %49, %3
  %31 = tail call float @pairwise_sum(ptr noundef %18, i64 noundef %16) #31
  tail call void @free(ptr noundef %19) #31
  tail call void @free(ptr noundef %20) #31
  tail call void @free(ptr noundef %9) #31
  tail call void @free(ptr noundef %14) #31
  tail call void @free(ptr noundef %18) #31
  ret float %31

32:                                               ; preds = %49, %22
  %33 = phi i64 [ 0, %22 ], [ %52, %49 ]
  %34 = getelementptr inbounds %struct.Source, ptr %24, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa.struct !91
  %36 = getelementptr inbounds i8, ptr %34, i64 8
  %37 = load ptr, ptr %36, align 8, !tbaa.struct !97
  %38 = getelementptr inbounds i8, ptr %34, i64 32
  %39 = load ptr, ptr %38, align 8, !tbaa.struct !93
  %40 = getelementptr inbounds i8, ptr %34, i64 40
  %41 = load ptr, ptr %40, align 8, !tbaa.struct !98
  br i1 %25, label %42, label %49

42:                                               ; preds = %76, %32
  %43 = phi i64 [ %79, %76 ], [ 0, %32 ]
  br i1 %26, label %46, label %44

44:                                               ; preds = %42
  %45 = tail call float @pairwise_sum(ptr noundef %19, i64 noundef %7) #31
  br label %76

46:                                               ; preds = %42
  %47 = getelementptr inbounds ptr, ptr %35, i64 %43
  %48 = load ptr, ptr %47, align 8, !tbaa !41
  br label %60

49:                                               ; preds = %76, %32
  %50 = tail call float @pairwise_sum(ptr noundef %14, i64 noundef %12) #31
  %51 = getelementptr inbounds float, ptr %18, i64 %33
  store float %50, ptr %51, align 4, !tbaa !31
  %52 = add nuw nsw i64 %33, 1
  %53 = icmp eq i64 %52, %16
  br i1 %53, label %30, label %32

54:                                               ; preds = %60
  %55 = tail call float @pairwise_sum(ptr noundef nonnull %19, i64 noundef %7) #31
  %56 = fmul float %4, %55
  br i1 %26, label %57, label %76

57:                                               ; preds = %54
  %58 = getelementptr inbounds ptr, ptr %35, i64 %43
  %59 = getelementptr inbounds ptr, ptr %37, i64 %43
  br label %71

60:                                               ; preds = %60, %46
  %61 = phi i64 [ 0, %46 ], [ %69, %60 ]
  %62 = getelementptr inbounds float, ptr %48, i64 %61
  %63 = load float, ptr %62, align 4, !tbaa !31
  %64 = getelementptr inbounds ptr, ptr %39, i64 %61
  %65 = load ptr, ptr %64, align 8, !tbaa !41
  %66 = load float, ptr %65, align 4, !tbaa !31
  %67 = fmul float %63, %66
  %68 = getelementptr inbounds float, ptr %19, i64 %61
  store float %67, ptr %68, align 4, !tbaa !31
  %69 = add nuw nsw i64 %61, 1
  %70 = icmp eq i64 %69, %28
  br i1 %70, label %54, label %60

71:                                               ; preds = %81, %57
  %72 = phi i64 [ 0, %57 ], [ %99, %81 ]
  %73 = getelementptr inbounds ptr, ptr %41, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !41
  %75 = load ptr, ptr %58, align 8, !tbaa !41
  br label %101

76:                                               ; preds = %81, %54, %44
  %77 = tail call float @pairwise_sum(ptr noundef %9, i64 noundef %7) #31
  %78 = getelementptr inbounds float, ptr %14, i64 %43
  store float %77, ptr %78, align 4, !tbaa !31
  %79 = add nuw nsw i64 %43, 1
  %80 = icmp eq i64 %79, %27
  br i1 %80, label %49, label %42

81:                                               ; preds = %101
  %82 = tail call float @pairwise_sum(ptr noundef nonnull %20, i64 noundef %7) #31
  %83 = getelementptr inbounds ptr, ptr %39, i64 %72
  %84 = load ptr, ptr %83, align 8, !tbaa !41
  %85 = getelementptr inbounds float, ptr %84, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !31
  %87 = tail call float @llvm.fmuladd.f32(float %56, float %86, float %82)
  %88 = fpext float %87 to double
  %89 = fdiv double %88, 0x402921FB54442D18
  %90 = fptrunc double %89 to float
  %91 = load ptr, ptr %59, align 8, !tbaa !41
  %92 = getelementptr inbounds float, ptr %91, i64 %72
  %93 = load float, ptr %92, align 4, !tbaa !31
  %94 = fsub float %90, %93
  %95 = fmul float %94, %94
  %96 = fmul float %93, %93
  %97 = fdiv float %95, %96
  %98 = getelementptr inbounds float, ptr %9, i64 %72
  store float %97, ptr %98, align 4, !tbaa !31
  store float %90, ptr %92, align 4, !tbaa !31
  %99 = add nuw nsw i64 %72, 1
  %100 = icmp eq i64 %99, %29
  br i1 %100, label %76, label %71

101:                                              ; preds = %101, %71
  %102 = phi i64 [ 0, %71 ], [ %109, %101 ]
  %103 = getelementptr inbounds float, ptr %74, i64 %102
  %104 = load float, ptr %103, align 4, !tbaa !31
  %105 = getelementptr inbounds float, ptr %75, i64 %102
  %106 = load float, ptr %105, align 4, !tbaa !31
  %107 = fmul float %104, %106
  %108 = getelementptr inbounds float, ptr %20, i64 %102
  store float %107, ptr %108, align 4, !tbaa !31
  %109 = add nuw nsw i64 %102, 1
  %110 = icmp eq i64 %109, %29
  br i1 %110, label %81, label %101
}

; Function Attrs: nounwind optsize uwtable
define internal float @compute_keff(ptr nocapture noundef readonly byval(%struct.Params) align 8 %0, ptr nocapture noundef readonly byval(%struct.Input) align 8 %1, ptr nocapture noundef readnone byval(%struct.CommGrid) align 8 %2) #5 {
  %4 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !32
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 2
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #36
  %9 = tail call noalias ptr @malloc(i64 noundef %7) #36
  %10 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !83
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #36
  %15 = getelementptr inbounds %struct.Input, ptr %1, i64 0, i32 24
  %16 = load i64, ptr %15, align 8, !tbaa !29
  %17 = shl i64 %16, 2
  %18 = tail call noalias ptr @malloc(i64 noundef %17) #36
  %19 = icmp sgt i64 %16, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = tail call float @pairwise_sum(ptr noundef %18, i64 noundef %16) #31
  br label %80

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.Params, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = icmp sgt i32 %5, 0
  %26 = icmp sgt i32 %11, 0
  %27 = zext i32 %5 to i64
  %28 = zext i32 %11 to i64
  %29 = zext i32 %5 to i64
  br label %40

30:                                               ; preds = %56
  %31 = tail call float @pairwise_sum(ptr noundef nonnull %18, i64 noundef %16) #31
  br i1 %19, label %32, label %80

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.Params, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !49
  %35 = icmp sgt i32 %5, 0
  %36 = icmp sgt i32 %11, 0
  %37 = zext i32 %5 to i64
  %38 = zext i32 %11 to i64
  %39 = zext i32 %5 to i64
  br label %88

40:                                               ; preds = %56, %22
  %41 = phi i64 [ 0, %22 ], [ %59, %56 ]
  %42 = getelementptr inbounds %struct.Source, ptr %24, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa.struct !91
  %44 = getelementptr inbounds i8, ptr %42, i64 32
  %45 = load ptr, ptr %44, align 8, !tbaa.struct !93
  br i1 %25, label %47, label %46

46:                                               ; preds = %47, %40
  br i1 %26, label %61, label %56

47:                                               ; preds = %47, %40
  %48 = phi i64 [ %54, %47 ], [ 0, %40 ]
  %49 = getelementptr inbounds ptr, ptr %45, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !41
  %51 = getelementptr inbounds float, ptr %50, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !31
  %53 = getelementptr inbounds float, ptr %8, i64 %48
  store float %52, ptr %53, align 4, !tbaa !31
  %54 = add nuw nsw i64 %48, 1
  %55 = icmp eq i64 %54, %27
  br i1 %55, label %46, label %47

56:                                               ; preds = %65, %46
  %57 = tail call float @pairwise_sum(ptr noundef %14, i64 noundef %12) #31
  %58 = getelementptr inbounds float, ptr %18, i64 %41
  store float %57, ptr %58, align 4, !tbaa !31
  %59 = add nuw nsw i64 %41, 1
  %60 = icmp eq i64 %59, %16
  br i1 %60, label %30, label %40

61:                                               ; preds = %65, %46
  %62 = phi i64 [ %68, %65 ], [ 0, %46 ]
  %63 = getelementptr inbounds ptr, ptr %43, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !41
  br i1 %25, label %70, label %65

65:                                               ; preds = %70, %61
  %66 = tail call float @pairwise_sum(ptr noundef %9, i64 noundef %6) #31
  %67 = getelementptr inbounds float, ptr %14, i64 %62
  store float %66, ptr %67, align 4, !tbaa !31
  %68 = add nuw nsw i64 %62, 1
  %69 = icmp eq i64 %68, %28
  br i1 %69, label %56, label %61

70:                                               ; preds = %70, %61
  %71 = phi i64 [ %78, %70 ], [ 0, %61 ]
  %72 = getelementptr inbounds float, ptr %8, i64 %71
  %73 = load float, ptr %72, align 4, !tbaa !31
  %74 = getelementptr inbounds float, ptr %64, i64 %71
  %75 = load float, ptr %74, align 4, !tbaa !31
  %76 = fmul float %73, %75
  %77 = getelementptr inbounds float, ptr %9, i64 %71
  store float %76, ptr %77, align 4, !tbaa !31
  %78 = add nuw nsw i64 %71, 1
  %79 = icmp eq i64 %78, %29
  br i1 %79, label %65, label %70

80:                                               ; preds = %103, %30, %20
  %81 = phi float [ %21, %20 ], [ %31, %30 ], [ %31, %103 ]
  %82 = tail call float @pairwise_sum(ptr noundef %18, i64 noundef %16) #31
  %83 = getelementptr inbounds %struct.Params, ptr %0, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !50
  %85 = load float, ptr %84, align 4, !tbaa !31
  %86 = fadd float %81, %85
  %87 = fdiv float %82, %86
  tail call void @free(ptr noundef %8) #31
  tail call void @free(ptr noundef %9) #31
  tail call void @free(ptr noundef %14) #31
  tail call void @free(ptr noundef %18) #31
  ret float %87

88:                                               ; preds = %103, %32
  %89 = phi i64 [ 0, %32 ], [ %106, %103 ]
  %90 = getelementptr inbounds %struct.Source, ptr %34, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa.struct !91
  %92 = getelementptr inbounds i8, ptr %90, i64 32
  %93 = load ptr, ptr %92, align 8, !tbaa.struct !93
  br i1 %35, label %95, label %94

94:                                               ; preds = %95, %88
  br i1 %36, label %108, label %103

95:                                               ; preds = %95, %88
  %96 = phi i64 [ %101, %95 ], [ 0, %88 ]
  %97 = getelementptr inbounds ptr, ptr %93, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !41
  %99 = load float, ptr %98, align 4, !tbaa !31
  %100 = getelementptr inbounds float, ptr %8, i64 %96
  store float %99, ptr %100, align 4, !tbaa !31
  %101 = add nuw nsw i64 %96, 1
  %102 = icmp eq i64 %101, %37
  br i1 %102, label %94, label %95

103:                                              ; preds = %112, %94
  %104 = tail call float @pairwise_sum(ptr noundef %14, i64 noundef %12) #31
  %105 = getelementptr inbounds float, ptr %18, i64 %89
  store float %104, ptr %105, align 4, !tbaa !31
  %106 = add nuw nsw i64 %89, 1
  %107 = icmp eq i64 %106, %16
  br i1 %107, label %80, label %88

108:                                              ; preds = %112, %94
  %109 = phi i64 [ %115, %112 ], [ 0, %94 ]
  %110 = getelementptr inbounds ptr, ptr %91, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !41
  br i1 %35, label %117, label %112

112:                                              ; preds = %117, %108
  %113 = tail call float @pairwise_sum(ptr noundef %9, i64 noundef %6) #31
  %114 = getelementptr inbounds float, ptr %14, i64 %109
  store float %113, ptr %114, align 4, !tbaa !31
  %115 = add nuw nsw i64 %109, 1
  %116 = icmp eq i64 %115, %38
  br i1 %116, label %103, label %108

117:                                              ; preds = %117, %108
  %118 = phi i64 [ %125, %117 ], [ 0, %108 ]
  %119 = getelementptr inbounds float, ptr %8, i64 %118
  %120 = load float, ptr %119, align 4, !tbaa !31
  %121 = getelementptr inbounds float, ptr %111, i64 %118
  %122 = load float, ptr %121, align 4, !tbaa !31
  %123 = fmul float %120, %122
  %124 = getelementptr inbounds float, ptr %9, i64 %118
  store float %123, ptr %124, align 4, !tbaa !31
  %125 = add nuw nsw i64 %118, 1
  %126 = icmp eq i64 %125, %39
  br i1 %126, label %112, label %117
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @initialize_sources(ptr nocapture noundef readonly byval(%struct.Input) align 8 %0, ptr nocapture noundef %1) #5 {
  %3 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 24
  %4 = load i64, ptr %3, align 8, !tbaa !29
  %5 = mul i64 %4, 48
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #36
  %7 = load i64, ptr %1, align 8, !tbaa !40
  %8 = add i64 %7, %5
  %9 = sdiv i64 %4, 8
  %10 = shl nsw i64 %9, 3
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #36
  %12 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 4, !tbaa !32
  %14 = sext i32 %13 to i64
  %15 = mul nsw i64 %9, %14
  %16 = shl i64 %15, 3
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #36
  %18 = shl i64 %9, 4
  %19 = add i64 %8, %18
  %20 = shl nsw i64 %14, 2
  %21 = mul i64 %20, %15
  %22 = tail call noalias ptr @malloc(i64 noundef %21) #36
  %23 = add i64 %21, %19
  store i64 %23, ptr %1, align 8, !tbaa !40
  %24 = icmp sgt i64 %4, 7
  br i1 %24, label %28, label %59

25:                                               ; preds = %28
  br i1 %24, label %26, label %59

26:                                               ; preds = %25
  %27 = icmp sgt i32 %13, 0
  br label %35

28:                                               ; preds = %28, %2
  %29 = phi i64 [ %33, %28 ], [ 0, %2 ]
  %30 = mul nsw i64 %29, %14
  %31 = getelementptr inbounds ptr, ptr %17, i64 %30
  %32 = getelementptr inbounds ptr, ptr %11, i64 %29
  store ptr %31, ptr %32, align 8, !tbaa !41
  %33 = add nuw nsw i64 %29, 1
  %34 = icmp eq i64 %33, %9
  br i1 %34, label %25, label %28

35:                                               ; preds = %44, %26
  %36 = phi i64 [ 0, %26 ], [ %45, %44 ]
  br i1 %27, label %37, label %44

37:                                               ; preds = %35
  %38 = mul nsw i64 %36, %14
  %39 = getelementptr inbounds ptr, ptr %11, i64 %36
  %40 = load ptr, ptr %39, align 8, !tbaa !41
  br label %47

41:                                               ; preds = %44
  br i1 %24, label %42, label %59

42:                                               ; preds = %41
  %43 = icmp sgt i32 %13, 0
  br label %55

44:                                               ; preds = %47, %35
  %45 = add nuw nsw i64 %36, 1
  %46 = icmp eq i64 %45, %9
  br i1 %46, label %41, label %35

47:                                               ; preds = %47, %37
  %48 = phi i64 [ 0, %37 ], [ %53, %47 ]
  %49 = add i64 %48, %38
  %50 = mul i64 %49, %14
  %51 = getelementptr inbounds float, ptr %22, i64 %50
  %52 = getelementptr inbounds ptr, ptr %40, i64 %48
  store ptr %51, ptr %52, align 8, !tbaa !41
  %53 = add nuw nsw i64 %48, 1
  %54 = icmp eq i64 %53, %14
  br i1 %54, label %44, label %47

55:                                               ; preds = %65, %42
  %56 = phi i64 [ 0, %42 ], [ %66, %65 ]
  br i1 %43, label %57, label %65

57:                                               ; preds = %55
  %58 = getelementptr inbounds ptr, ptr %11, i64 %56
  br label %63

59:                                               ; preds = %65, %41, %25, %2
  %60 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 17
  %61 = load i64, ptr %60, align 8, !tbaa !36
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %80, label %82

63:                                               ; preds = %68, %57
  %64 = phi i64 [ 0, %57 ], [ %69, %68 ]
  br label %71

65:                                               ; preds = %68, %55
  %66 = add nuw nsw i64 %56, 1
  %67 = icmp eq i64 %66, %9
  br i1 %67, label %59, label %55

68:                                               ; preds = %71
  %69 = add nuw nsw i64 %64, 1
  %70 = icmp eq i64 %69, %14
  br i1 %70, label %65, label %63

71:                                               ; preds = %71, %63
  %72 = phi i64 [ 0, %63 ], [ %78, %71 ]
  %73 = tail call float @urand() #31
  %74 = load ptr, ptr %58, align 8, !tbaa !41
  %75 = getelementptr inbounds ptr, ptr %74, i64 %64
  %76 = load ptr, ptr %75, align 8, !tbaa !41
  %77 = getelementptr inbounds float, ptr %76, i64 %72
  store float %73, ptr %77, align 4, !tbaa !31
  %78 = add nuw nsw i64 %72, 1
  %79 = icmp eq i64 %78, %14
  br i1 %79, label %68, label %71

80:                                               ; preds = %59
  %81 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %82

82:                                               ; preds = %80, %59
  %83 = tail call noalias ptr @malloc(i64 noundef %10) #36
  %84 = load i64, ptr %1, align 8, !tbaa !40
  %85 = add i64 %84, %10
  %86 = tail call noalias ptr @malloc(i64 noundef %16) #36
  %87 = add i64 %85, %16
  %88 = mul i64 %15, 12
  %89 = tail call noalias ptr @malloc(i64 noundef %88) #36
  %90 = add i64 %87, %88
  store i64 %90, ptr %1, align 8, !tbaa !40
  br i1 %24, label %94, label %126

91:                                               ; preds = %94
  br i1 %24, label %92, label %126

92:                                               ; preds = %91
  %93 = icmp sgt i32 %13, 0
  br label %101

94:                                               ; preds = %94, %82
  %95 = phi i64 [ %99, %94 ], [ 0, %82 ]
  %96 = mul nsw i64 %95, %14
  %97 = getelementptr inbounds ptr, ptr %86, i64 %96
  %98 = getelementptr inbounds ptr, ptr %83, i64 %95
  store ptr %97, ptr %98, align 8, !tbaa !41
  %99 = add nuw nsw i64 %95, 1
  %100 = icmp eq i64 %99, %9
  br i1 %100, label %91, label %94

101:                                              ; preds = %111, %92
  %102 = phi i64 [ 0, %92 ], [ %112, %111 ]
  br i1 %93, label %103, label %111

103:                                              ; preds = %101
  %104 = mul nsw i64 %102, %14
  %105 = getelementptr inbounds ptr, ptr %83, i64 %102
  %106 = load ptr, ptr %105, align 8, !tbaa !41
  br label %114

107:                                              ; preds = %111
  br i1 %24, label %108, label %126

108:                                              ; preds = %107
  %109 = icmp sgt i32 %13, 0
  %110 = zext i32 %13 to i64
  br label %122

111:                                              ; preds = %114, %101
  %112 = add nuw nsw i64 %102, 1
  %113 = icmp eq i64 %112, %9
  br i1 %113, label %107, label %101

114:                                              ; preds = %114, %103
  %115 = phi i64 [ 0, %103 ], [ %120, %114 ]
  %116 = add i64 %115, %104
  %117 = mul i64 %116, 3
  %118 = getelementptr inbounds float, ptr %89, i64 %117
  %119 = getelementptr inbounds ptr, ptr %106, i64 %115
  store ptr %118, ptr %119, align 8, !tbaa !41
  %120 = add nuw nsw i64 %115, 1
  %121 = icmp eq i64 %120, %14
  br i1 %121, label %111, label %114

122:                                              ; preds = %129, %108
  %123 = phi i64 [ 0, %108 ], [ %130, %129 ]
  br i1 %109, label %124, label %129

124:                                              ; preds = %122
  %125 = getelementptr inbounds ptr, ptr %83, i64 %123
  br label %127

126:                                              ; preds = %129, %107, %91, %82
  br i1 %62, label %144, label %146

127:                                              ; preds = %132, %124
  %128 = phi i64 [ 0, %124 ], [ %133, %132 ]
  br label %135

129:                                              ; preds = %132, %122
  %130 = add nuw nsw i64 %123, 1
  %131 = icmp eq i64 %130, %9
  br i1 %131, label %126, label %122

132:                                              ; preds = %135
  %133 = add nuw nsw i64 %128, 1
  %134 = icmp eq i64 %133, %110
  br i1 %134, label %129, label %127

135:                                              ; preds = %135, %127
  %136 = phi i64 [ 0, %127 ], [ %142, %135 ]
  %137 = tail call float @urand() #31
  %138 = load ptr, ptr %125, align 8, !tbaa !41
  %139 = getelementptr inbounds ptr, ptr %138, i64 %128
  %140 = load ptr, ptr %139, align 8, !tbaa !41
  %141 = getelementptr inbounds float, ptr %140, i64 %136
  store float %137, ptr %141, align 4, !tbaa !31
  %142 = add nuw nsw i64 %136, 1
  %143 = icmp eq i64 %142, 3
  br i1 %143, label %132, label %135

144:                                              ; preds = %126
  %145 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  br label %146

146:                                              ; preds = %144, %126
  %147 = shl i64 %4, 3
  %148 = tail call noalias ptr @malloc(i64 noundef %147) #36
  %149 = load i64, ptr %1, align 8, !tbaa !40
  %150 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 3
  %151 = load i32, ptr %150, align 4, !tbaa !83
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %4, %152
  %154 = shl i64 %153, 3
  %155 = tail call noalias ptr @malloc(i64 noundef %154) #36
  %156 = tail call noalias ptr @malloc(i64 noundef %147) #36
  %157 = tail call noalias ptr @malloc(i64 noundef %154) #36
  %158 = tail call noalias ptr @malloc(i64 noundef %147) #36
  %159 = shl nsw i32 %151, 1
  %160 = or i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = shl i64 %4, 2
  %163 = mul i64 %162, %14
  %164 = mul i64 %163, %161
  %165 = tail call noalias ptr @malloc(i64 noundef %164) #36
  %166 = mul i64 %20, %153
  %167 = add i64 %4, %153
  %168 = shl i64 %167, 4
  %169 = add i64 %168, %166
  %170 = add i64 %169, %149
  store i64 %170, ptr %1, align 8, !tbaa !40
  %171 = icmp sgt i64 %4, 0
  br i1 %171, label %175, label %312

172:                                              ; preds = %175
  br i1 %171, label %173, label %312

173:                                              ; preds = %172
  %174 = icmp sgt i32 %151, 0
  br label %182

175:                                              ; preds = %175, %146
  %176 = phi i64 [ %180, %175 ], [ 0, %146 ]
  %177 = mul nsw i64 %176, %152
  %178 = getelementptr inbounds ptr, ptr %155, i64 %177
  %179 = getelementptr inbounds ptr, ptr %148, i64 %176
  store ptr %178, ptr %179, align 8, !tbaa !41
  %180 = add nuw nsw i64 %176, 1
  %181 = icmp eq i64 %180, %4
  br i1 %181, label %172, label %175

182:                                              ; preds = %189, %173
  %183 = phi i64 [ 0, %173 ], [ %190, %189 ]
  br i1 %174, label %184, label %189

184:                                              ; preds = %182
  %185 = mul nsw i64 %183, %152
  %186 = getelementptr inbounds ptr, ptr %148, i64 %183
  %187 = load ptr, ptr %186, align 8, !tbaa !41
  br label %192

188:                                              ; preds = %189
  br i1 %171, label %206, label %312

189:                                              ; preds = %192, %182
  %190 = add nuw nsw i64 %183, 1
  %191 = icmp eq i64 %190, %4
  br i1 %191, label %188, label %182

192:                                              ; preds = %192, %184
  %193 = phi i64 [ 0, %184 ], [ %198, %192 ]
  %194 = add i64 %193, %185
  %195 = mul i64 %194, %14
  %196 = getelementptr inbounds float, ptr %165, i64 %195
  %197 = getelementptr inbounds ptr, ptr %187, i64 %193
  store ptr %196, ptr %197, align 8, !tbaa !41
  %198 = add nuw nsw i64 %193, 1
  %199 = icmp eq i64 %198, %152
  br i1 %199, label %189, label %192

200:                                              ; preds = %206
  br i1 %171, label %201, label %312

201:                                              ; preds = %200
  %202 = icmp sgt i32 %151, 0
  %203 = mul nsw i32 %151, %13
  %204 = sext i32 %203 to i64
  %205 = zext i32 %151 to i64
  br label %213

206:                                              ; preds = %206, %188
  %207 = phi i64 [ %211, %206 ], [ 0, %188 ]
  %208 = mul nsw i64 %207, %152
  %209 = getelementptr inbounds ptr, ptr %157, i64 %208
  %210 = getelementptr inbounds ptr, ptr %156, i64 %207
  store ptr %209, ptr %210, align 8, !tbaa !41
  %211 = add nuw nsw i64 %207, 1
  %212 = icmp eq i64 %211, %4
  br i1 %212, label %200, label %206

213:                                              ; preds = %224, %201
  %214 = phi i64 [ 0, %201 ], [ %225, %224 ]
  br i1 %202, label %215, label %224

215:                                              ; preds = %213
  %216 = add nsw i64 %214, %4
  %217 = mul nsw i64 %216, %204
  %218 = getelementptr inbounds ptr, ptr %156, i64 %214
  %219 = load ptr, ptr %218, align 8, !tbaa !41
  br label %227

220:                                              ; preds = %224
  br i1 %171, label %221, label %312

221:                                              ; preds = %220
  %222 = shl nuw nsw i64 %4, 1
  %223 = mul nsw i64 %222, %152
  br label %241

224:                                              ; preds = %227, %213
  %225 = add nuw nsw i64 %214, 1
  %226 = icmp eq i64 %225, %4
  br i1 %226, label %220, label %213

227:                                              ; preds = %227, %215
  %228 = phi i64 [ 0, %215 ], [ %233, %227 ]
  %229 = mul nsw i64 %228, %14
  %230 = add nsw i64 %217, %229
  %231 = getelementptr inbounds float, ptr %165, i64 %230
  %232 = getelementptr inbounds ptr, ptr %219, i64 %228
  store ptr %231, ptr %232, align 8, !tbaa !41
  %233 = add nuw nsw i64 %228, 1
  %234 = icmp eq i64 %233, %205
  br i1 %234, label %224, label %227

235:                                              ; preds = %241
  br i1 %171, label %236, label %312

236:                                              ; preds = %235
  %237 = icmp sgt i32 %151, 0
  %238 = icmp sgt i32 %13, 0
  %239 = zext i32 %151 to i64
  %240 = zext i32 %13 to i64
  br label %249

241:                                              ; preds = %241, %221
  %242 = phi i64 [ 0, %221 ], [ %247, %241 ]
  %243 = add i64 %242, %223
  %244 = mul i64 %243, %14
  %245 = getelementptr inbounds float, ptr %165, i64 %244
  %246 = getelementptr inbounds ptr, ptr %158, i64 %242
  store ptr %245, ptr %246, align 8, !tbaa !41
  %247 = add nuw nsw i64 %242, 1
  %248 = icmp eq i64 %247, %4
  br i1 %248, label %235, label %241

249:                                              ; preds = %262, %236
  %250 = phi i64 [ 0, %236 ], [ %263, %262 ]
  br i1 %237, label %251, label %262

251:                                              ; preds = %249
  %252 = getelementptr inbounds ptr, ptr %148, i64 %250
  br label %260

253:                                              ; preds = %262
  br i1 %171, label %254, label %312

254:                                              ; preds = %253
  %255 = icmp sgt i32 %151, 0
  %256 = icmp sgt i32 %13, 0
  %257 = zext i32 %13 to i64
  %258 = shl nuw nsw i64 %257, 2
  %259 = zext i32 %151 to i64
  br label %277

260:                                              ; preds = %265, %251
  %261 = phi i64 [ 0, %251 ], [ %266, %265 ]
  br i1 %238, label %268, label %265

262:                                              ; preds = %265, %249
  %263 = add nuw nsw i64 %250, 1
  %264 = icmp eq i64 %263, %4
  br i1 %264, label %253, label %249

265:                                              ; preds = %268, %260
  %266 = add nuw nsw i64 %261, 1
  %267 = icmp eq i64 %266, %239
  br i1 %267, label %262, label %260

268:                                              ; preds = %268, %260
  %269 = phi i64 [ %275, %268 ], [ 0, %260 ]
  %270 = tail call float @urand() #31
  %271 = load ptr, ptr %252, align 8, !tbaa !41
  %272 = getelementptr inbounds ptr, ptr %271, i64 %261
  %273 = load ptr, ptr %272, align 8, !tbaa !41
  %274 = getelementptr inbounds float, ptr %273, i64 %269
  store float %270, ptr %274, align 4, !tbaa !31
  %275 = add nuw nsw i64 %269, 1
  %276 = icmp eq i64 %275, %240
  br i1 %276, label %265, label %268

277:                                              ; preds = %291, %254
  %278 = phi i64 [ 0, %254 ], [ %292, %291 ]
  br i1 %255, label %279, label %291

279:                                              ; preds = %277
  %280 = getelementptr inbounds ptr, ptr %156, i64 %278
  br label %285

281:                                              ; preds = %291
  br i1 %171, label %282, label %312

282:                                              ; preds = %281
  %283 = icmp sgt i32 %13, 0
  %284 = zext i32 %13 to i64
  br label %297

285:                                              ; preds = %294, %279
  %286 = phi i64 [ 0, %279 ], [ %295, %294 ]
  br i1 %256, label %287, label %294

287:                                              ; preds = %285
  %288 = load ptr, ptr %280, align 8, !tbaa !41
  %289 = getelementptr inbounds ptr, ptr %288, i64 %286
  %290 = load ptr, ptr %289, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr align 4 %290, i8 0, i64 %258, i1 false), !tbaa !31
  br label %294

291:                                              ; preds = %294, %277
  %292 = add nuw nsw i64 %278, 1
  %293 = icmp eq i64 %292, %4
  br i1 %293, label %281, label %277

294:                                              ; preds = %287, %285
  %295 = add nuw nsw i64 %286, 1
  %296 = icmp eq i64 %295, %259
  br i1 %296, label %291, label %285

297:                                              ; preds = %302, %282
  %298 = phi i64 [ 0, %282 ], [ %303, %302 ]
  br i1 %283, label %299, label %302

299:                                              ; preds = %297
  %300 = getelementptr inbounds ptr, ptr %158, i64 %298
  br label %305

301:                                              ; preds = %302
  br i1 %171, label %313, label %312

302:                                              ; preds = %305, %297
  %303 = add nuw nsw i64 %298, 1
  %304 = icmp eq i64 %303, %4
  br i1 %304, label %301, label %297

305:                                              ; preds = %305, %299
  %306 = phi i64 [ 0, %299 ], [ %310, %305 ]
  %307 = tail call float @urand() #31
  %308 = load ptr, ptr %300, align 8, !tbaa !41
  %309 = getelementptr inbounds float, ptr %308, i64 %306
  store float %307, ptr %309, align 4, !tbaa !31
  %310 = add nuw nsw i64 %306, 1
  %311 = icmp eq i64 %310, %284
  br i1 %311, label %302, label %305

312:                                              ; preds = %320, %301, %281, %253, %235, %220, %200, %188, %172, %146
  tail call void @free(ptr noundef %11) #31
  tail call void @free(ptr noundef %83) #31
  tail call void @free(ptr noundef %156) #31
  tail call void @free(ptr noundef %148) #31
  tail call void @free(ptr noundef %158) #31
  ret ptr %6

313:                                              ; preds = %320, %301
  %314 = phi i64 [ %339, %320 ], [ 0, %301 ]
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %320, label %316

316:                                              ; preds = %313
  %317 = tail call i32 @glibc_compat_rand() #31
  %318 = sext i32 %317 to i64
  %319 = srem i64 %318, %9
  br label %320

320:                                              ; preds = %316, %313
  %321 = phi i64 [ %319, %316 ], [ 0, %313 ]
  %322 = getelementptr inbounds ptr, ptr %11, i64 %321
  %323 = load ptr, ptr %322, align 8, !tbaa !41
  %324 = getelementptr inbounds %struct.Source, ptr %6, i64 %314
  %325 = getelementptr inbounds %struct.Source, ptr %6, i64 %314, i32 5
  store ptr %323, ptr %325, align 8, !tbaa !99
  %326 = getelementptr inbounds ptr, ptr %83, i64 %321
  %327 = load ptr, ptr %326, align 8, !tbaa !41
  %328 = getelementptr inbounds %struct.Source, ptr %6, i64 %314, i32 4
  store ptr %327, ptr %328, align 8, !tbaa !100
  %329 = getelementptr inbounds ptr, ptr %156, i64 %314
  %330 = load ptr, ptr %329, align 8, !tbaa !41
  store ptr %330, ptr %324, align 8, !tbaa !79
  %331 = getelementptr inbounds ptr, ptr %148, i64 %314
  %332 = load ptr, ptr %331, align 8, !tbaa !41
  %333 = getelementptr inbounds %struct.Source, ptr %6, i64 %314, i32 1
  store ptr %332, ptr %333, align 8, !tbaa !81
  %334 = getelementptr inbounds ptr, ptr %158, i64 %314
  %335 = load ptr, ptr %334, align 8, !tbaa !41
  %336 = getelementptr inbounds %struct.Source, ptr %6, i64 %314, i32 3
  store ptr %335, ptr %336, align 8, !tbaa !82
  %337 = tail call float @urand() #31
  %338 = getelementptr inbounds %struct.Source, ptr %6, i64 %314, i32 2
  store float %337, ptr %338, align 8, !tbaa !94
  %339 = add nuw nsw i64 %314, 1
  %340 = icmp eq i64 %339, %4
  br i1 %340, label %312, label %313
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @generate_2D_tracks(ptr nocapture noundef readonly byval(%struct.Input) align 8 %0, ptr nocapture noundef %1) #5 {
  %3 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 18
  %4 = load i64, ptr %3, align 8, !tbaa !19
  %5 = shl i64 %4, 5
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #36
  %7 = load i64, ptr %1, align 8, !tbaa !40
  %8 = add i64 %7, %5
  store i64 %8, ptr %1, align 8, !tbaa !40
  %9 = icmp sgt i64 %4, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %11, %2
  tail call void @generate_2D_segments(ptr noundef nonnull byval(%struct.Input) align 8 %0, ptr noundef %6, ptr noundef nonnull %1) #34
  ret ptr %6

11:                                               ; preds = %11, %2
  %12 = phi i64 [ %15, %11 ], [ 0, %2 ]
  %13 = tail call float @urand() #31
  %14 = getelementptr inbounds %struct.Track2D, ptr %6, i64 %12
  store float %13, ptr %14, align 8, !tbaa !90
  %15 = add nuw nsw i64 %12, 1
  %16 = icmp eq i64 %15, %4
  br i1 %16, label %10, label %11
}

; Function Attrs: nounwind optsize uwtable
define internal void @generate_2D_segments(ptr nocapture noundef readonly byval(%struct.Input) align 8 %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #5 {
  %4 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 18
  %5 = load i64, ptr %4, align 8, !tbaa !19
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %0, i64 48
  %9 = load i64, ptr %8, align 8
  %10 = sitofp i64 %9 to float
  %11 = sitofp i64 %9 to double
  br label %19

12:                                               ; preds = %19
  %.lcssa = phi i64 [ %27, %19 ]
  %13 = shl i64 %.lcssa, 4
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i64 [ 0, %3 ], [ %13, %12 ]
  %16 = tail call noalias ptr @malloc(i64 noundef %15) #36
  %17 = load i64, ptr %2, align 8, !tbaa !40
  %18 = add i64 %17, %15
  store i64 %18, ptr %2, align 8, !tbaa !40
  br i1 %6, label %34, label %51

19:                                               ; preds = %19, %7
  %20 = phi i64 [ 0, %7 ], [ %27, %19 ]
  %21 = phi i64 [ 0, %7 ], [ %28, %19 ]
  %22 = tail call double @sqrt(double noundef %11) #31
  %23 = fptrunc double %22 to float
  %24 = tail call float @nrand(float noundef %10, float noundef %23) #31
  %25 = fptosi float %24 to i64
  %26 = getelementptr inbounds %struct.Track2D, ptr %1, i64 %21, i32 1
  store i64 %25, ptr %26, align 8, !tbaa !85
  %27 = add nsw i64 %20, %25
  %28 = add nuw nsw i64 %21, 1
  %29 = icmp eq i64 %28, %5
  br i1 %29, label %12, label %19

30:                                               ; preds = %34
  br i1 %6, label %31, label %51

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 13
  %33 = load float, ptr %32, align 8
  br label %44

34:                                               ; preds = %34, %14
  %35 = phi i64 [ %42, %34 ], [ 0, %14 ]
  %36 = phi i64 [ %41, %34 ], [ 0, %14 ]
  %37 = getelementptr inbounds %struct.Segment, ptr %16, i64 %36
  %38 = getelementptr inbounds %struct.Track2D, ptr %1, i64 %35, i32 2
  store ptr %37, ptr %38, align 8, !tbaa !87
  %39 = getelementptr inbounds %struct.Track2D, ptr %1, i64 %35, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !85
  %41 = add nsw i64 %40, %36
  %42 = add nuw nsw i64 %35, 1
  %43 = icmp eq i64 %42, %5
  br i1 %43, label %30, label %34

44:                                               ; preds = %52, %31
  %45 = phi i64 [ 0, %31 ], [ %53, %52 ]
  %46 = getelementptr inbounds %struct.Track2D, ptr %1, i64 %45, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !85
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.Track2D, ptr %1, i64 %45, i32 2
  br label %55

51:                                               ; preds = %52, %30, %14
  ret void

52:                                               ; preds = %55, %44
  %53 = add nuw nsw i64 %45, 1
  %54 = icmp eq i64 %53, %5
  br i1 %54, label %51, label %44

55:                                               ; preds = %55, %49
  %56 = phi i64 [ 0, %49 ], [ %64, %55 ]
  %57 = tail call float @urand() #31
  %58 = fmul float %57, %33
  %59 = load i64, ptr %46, align 8, !tbaa !85
  %60 = sitofp i64 %59 to float
  %61 = fdiv float %58, %60
  %62 = load ptr, ptr %50, align 8, !tbaa !87
  %63 = getelementptr inbounds %struct.Segment, ptr %62, i64 %56
  store float %61, ptr %63, align 8, !tbaa !88
  %64 = add nuw nsw i64 %56, 1
  %65 = icmp slt i64 %64, %59
  br i1 %65, label %55, label %52
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal void @free_2D_tracks(ptr nocapture noundef %0) #24 {
  %2 = getelementptr inbounds %struct.Track2D, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  tail call void @free(ptr noundef %3) #31
  tail call void @free(ptr noundef %0) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @generate_tracks(ptr nocapture noundef readonly byval(%struct.Input) align 8 %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #5 {
  %4 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 18
  %5 = load i64, ptr %4, align 8, !tbaa !19
  %6 = shl i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #36
  %8 = load i64, ptr %2, align 8, !tbaa !40
  %9 = add i64 %8, %6
  %10 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !24
  %12 = sext i32 %11 to i64
  %13 = mul i64 %6, %12
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #36
  %15 = add i64 %13, %9
  %16 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 20
  %17 = load i64, ptr %16, align 8, !tbaa !25
  %18 = mul i64 %17, 40
  %19 = tail call noalias ptr @malloc(i64 noundef %18) #36
  %20 = add i64 %18, %15
  %21 = icmp sgt i64 %5, 0
  br i1 %21, label %29, label %42

22:                                               ; preds = %29
  br i1 %21, label %23, label %42

23:                                               ; preds = %22
  %24 = icmp sgt i32 %11, 0
  %25 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 19
  %26 = load i32, ptr %25, align 8
  %27 = sext i32 %26 to i64
  %28 = zext i32 %11 to i64
  br label %36

29:                                               ; preds = %29, %3
  %30 = phi i64 [ %34, %29 ], [ 0, %3 ]
  %31 = mul nsw i64 %30, %12
  %32 = getelementptr inbounds ptr, ptr %14, i64 %31
  %33 = getelementptr inbounds ptr, ptr %7, i64 %30
  store ptr %32, ptr %33, align 8, !tbaa !41
  %34 = add nuw nsw i64 %30, 1
  %35 = icmp eq i64 %34, %5
  br i1 %35, label %22, label %29

36:                                               ; preds = %63, %23
  %37 = phi i64 [ 0, %23 ], [ %64, %63 ]
  br i1 %24, label %38, label %63

38:                                               ; preds = %36
  %39 = mul nsw i64 %37, %12
  %40 = getelementptr inbounds ptr, ptr %7, i64 %37
  %41 = load ptr, ptr %40, align 8, !tbaa !41
  br label %66

42:                                               ; preds = %63, %22, %3
  %43 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 9
  %44 = load i32, ptr %43, align 4, !tbaa !32
  %45 = sext i32 %44 to i64
  %46 = shl i64 %17, 3
  %47 = mul i64 %46, %45
  %48 = tail call noalias ptr @malloc(i64 noundef %47) #36
  %49 = add i64 %47, %20
  store i64 %49, ptr %2, align 8, !tbaa !40
  br i1 %21, label %50, label %79

50:                                               ; preds = %42
  %51 = icmp sgt i32 %11, 0
  %52 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 19
  %53 = load i32, ptr %52, align 8
  %54 = icmp sgt i32 %53, 0
  %55 = sdiv i32 %11, 2
  %56 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 6
  %57 = load float, ptr %56, align 8
  %58 = icmp sgt i32 %44, 0
  %59 = sext i32 %55 to i64
  %60 = zext i32 %11 to i64
  %61 = zext i32 %53 to i64
  %62 = zext i32 %44 to i64
  br label %74

63:                                               ; preds = %66, %36
  %64 = add nuw nsw i64 %37, 1
  %65 = icmp eq i64 %64, %5
  br i1 %65, label %42, label %36

66:                                               ; preds = %66, %38
  %67 = phi i64 [ 0, %38 ], [ %72, %66 ]
  %68 = add nsw i64 %39, %67
  %69 = mul nsw i64 %68, %27
  %70 = getelementptr inbounds %struct.Track, ptr %19, i64 %69
  %71 = getelementptr inbounds ptr, ptr %41, i64 %67
  store ptr %70, ptr %71, align 8, !tbaa !41
  %72 = add nuw nsw i64 %67, 1
  %73 = icmp eq i64 %72, %28
  br i1 %73, label %63, label %66

74:                                               ; preds = %89, %50
  %75 = phi i64 [ 0, %50 ], [ %91, %89 ]
  %76 = phi i64 [ 0, %50 ], [ %90, %89 ]
  br i1 %51, label %77, label %89

77:                                               ; preds = %74
  %78 = getelementptr inbounds ptr, ptr %7, i64 %75
  br label %80

79:                                               ; preds = %89, %42
  ret ptr %7

80:                                               ; preds = %93, %77
  %81 = phi i64 [ 0, %77 ], [ %95, %93 ]
  %82 = phi i64 [ %76, %77 ], [ %94, %93 ]
  br i1 %54, label %83, label %93

83:                                               ; preds = %80
  %84 = icmp sge i64 %81, %59
  %85 = zext i1 %84 to i32
  %86 = load ptr, ptr %78, align 8, !tbaa !41
  %87 = getelementptr inbounds ptr, ptr %86, i64 %81
  %88 = getelementptr inbounds ptr, ptr %86, i64 %81
  br label %97

89:                                               ; preds = %93, %74
  %90 = phi i64 [ %76, %74 ], [ %94, %93 ]
  %91 = add nuw nsw i64 %75, 1
  %92 = icmp eq i64 %91, %5
  br i1 %92, label %79, label %74

93:                                               ; preds = %122, %80
  %94 = phi i64 [ %82, %80 ], [ %115, %122 ]
  %95 = add nuw nsw i64 %81, 1
  %96 = icmp eq i64 %95, %60
  br i1 %96, label %89, label %80

97:                                               ; preds = %122, %83
  %98 = phi i64 [ 0, %83 ], [ %123, %122 ]
  %99 = phi i64 [ %82, %83 ], [ %115, %122 ]
  %100 = trunc i64 %98 to i32
  %101 = add i32 %100, %85
  %102 = sitofp i32 %101 to float
  %103 = fmul float %57, %102
  %104 = load ptr, ptr %87, align 8, !tbaa !41
  %105 = getelementptr inbounds %struct.Track, ptr %104, i64 %98, i32 1
  store float %103, ptr %105, align 4, !tbaa !76
  %106 = tail call float @urand() #31
  %107 = load ptr, ptr %88, align 8, !tbaa !41
  %108 = getelementptr inbounds %struct.Track, ptr %107, i64 %98
  store float %106, ptr %108, align 8, !tbaa !78
  %109 = getelementptr inbounds float, ptr %48, i64 %99
  %110 = getelementptr inbounds %struct.Track, ptr %107, i64 %98, i32 4
  store ptr %109, ptr %110, align 8, !tbaa !95
  %111 = add i64 %99, %45
  %112 = getelementptr inbounds float, ptr %48, i64 %111
  %113 = load ptr, ptr %88, align 8, !tbaa !41
  %114 = getelementptr inbounds %struct.Track, ptr %113, i64 %98, i32 5
  store ptr %112, ptr %114, align 8, !tbaa !96
  %115 = add i64 %111, %45
  br i1 %58, label %116, label %122

116:                                              ; preds = %97
  %117 = load ptr, ptr %88, align 8, !tbaa !41
  %118 = getelementptr inbounds %struct.Track, ptr %117, i64 %98, i32 4
  %119 = load ptr, ptr %118, align 8, !tbaa !95
  %120 = getelementptr inbounds %struct.Track, ptr %117, i64 %98, i32 5
  %121 = load ptr, ptr %120, align 8, !tbaa !96
  br label %125

122:                                              ; preds = %125, %97
  %123 = add nuw nsw i64 %98, 1
  %124 = icmp eq i64 %123, %61
  br i1 %124, label %93, label %97

125:                                              ; preds = %125, %116
  %126 = phi i64 [ 0, %116 ], [ %129, %125 ]
  %127 = getelementptr inbounds float, ptr %119, i64 %126
  store float 0.000000e+00, ptr %127, align 4, !tbaa !31
  %128 = getelementptr inbounds float, ptr %121, i64 %126
  store float 0.000000e+00, ptr %128, align 4, !tbaa !31
  %129 = add nuw nsw i64 %126, 1
  %130 = icmp eq i64 %129, %62
  br i1 %130, label %122, label %125
}

; Function Attrs: mustprogress nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @free_tracks(ptr nocapture noundef %0) #25 {
  tail call void @free(ptr noundef %0) #31
  ret void
}

; Function Attrs: nofree nounwind optsize memory(write, argmem: read, inaccessiblemem: readwrite) uwtable
define internal noalias ptr @generate_polar_angles(ptr nocapture noundef readonly byval(%struct.Input) align 8 %0) #26 {
  %2 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !24
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 2
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #36
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %66

8:                                                ; preds = %1
  %9 = sitofp i32 %3 to double
  %10 = zext i32 %3 to i64
  %11 = add nuw nsw i64 %10, 3
  %12 = and i64 %11, 8589934588
  %13 = add nsw i64 %10, -1
  %14 = insertelement <4 x i64> poison, i64 %13, i64 0
  %15 = shufflevector <4 x i64> %14, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %16

16:                                               ; preds = %62, %8
  %17 = phi i64 [ 0, %8 ], [ %63, %62 ]
  %18 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %8 ], [ %64, %62 ]
  %19 = trunc i64 %17 to i32
  %20 = icmp ule <4 x i64> %18, %15
  %21 = extractelement <4 x i1> %20, i64 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = sitofp i32 %19 to double
  %24 = fadd double %23, 5.000000e-01
  %25 = fmul double %24, 0x400921FB54442D18
  %26 = fdiv double %25, %9
  %27 = getelementptr inbounds float, ptr %6, i64 %17
  %28 = fptrunc double %26 to float
  store float %28, ptr %27, align 4, !tbaa !31
  br label %29

29:                                               ; preds = %22, %16
  %30 = extractelement <4 x i1> %20, i64 1
  br i1 %30, label %31, label %40

31:                                               ; preds = %29
  %32 = or i32 %19, 1
  %33 = sitofp i32 %32 to double
  %34 = fadd double %33, 5.000000e-01
  %35 = fmul double %34, 0x400921FB54442D18
  %36 = or i64 %17, 1
  %37 = fdiv double %35, %9
  %38 = getelementptr inbounds float, ptr %6, i64 %36
  %39 = fptrunc double %37 to float
  store float %39, ptr %38, align 4, !tbaa !31
  br label %40

40:                                               ; preds = %31, %29
  %41 = extractelement <4 x i1> %20, i64 2
  br i1 %41, label %42, label %51

42:                                               ; preds = %40
  %43 = or i32 %19, 2
  %44 = sitofp i32 %43 to double
  %45 = fadd double %44, 5.000000e-01
  %46 = fmul double %45, 0x400921FB54442D18
  %47 = or i64 %17, 2
  %48 = fdiv double %46, %9
  %49 = getelementptr inbounds float, ptr %6, i64 %47
  %50 = fptrunc double %48 to float
  store float %50, ptr %49, align 4, !tbaa !31
  br label %51

51:                                               ; preds = %42, %40
  %52 = extractelement <4 x i1> %20, i64 3
  br i1 %52, label %53, label %62

53:                                               ; preds = %51
  %54 = or i32 %19, 3
  %55 = sitofp i32 %54 to double
  %56 = fadd double %55, 5.000000e-01
  %57 = fmul double %56, 0x400921FB54442D18
  %58 = or i64 %17, 3
  %59 = fdiv double %57, %9
  %60 = getelementptr inbounds float, ptr %6, i64 %58
  %61 = fptrunc double %59 to float
  store float %61, ptr %60, align 4, !tbaa !31
  br label %62

62:                                               ; preds = %53, %51
  %63 = add i64 %17, 4
  %64 = add <4 x i64> %18, <i64 4, i64 4, i64 4, i64 4>
  %65 = icmp eq i64 %63, %12
  br i1 %65, label %66, label %16, !llvm.loop !101

66:                                               ; preds = %62, %1
  ret ptr %6
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @load_OpenMOC_tracks(ptr noundef %0, i1 noundef zeroext %1, ptr nocapture noundef %2, ptr nocapture noundef %3) #5 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct._G_fpos_t, align 8
  %20 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.29) #34
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.30, ptr noundef %0) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #30
  %22 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 4, i64 noundef 1, ptr noundef %20) #34
  %23 = load i32, ptr %5, align 4, !tbaa !7
  %24 = zext i32 %23 to i64
  %25 = tail call ptr @llvm.stacksave()
  %26 = alloca i8, i64 %24, align 16
  %27 = sext i32 %23 to i64
  %28 = call i64 @fread(ptr noundef nonnull %26, i64 noundef %27, i64 noundef 1, ptr noundef %20) #34
  %29 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.31)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #30
  %30 = getelementptr inbounds %struct.Input, ptr %2, i64 0, i32 7
  %31 = tail call i64 @fread(ptr noundef nonnull %30, i64 noundef 4, i64 noundef 1, ptr noundef %20) #34
  %32 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 8, i64 noundef 1, ptr noundef %20) #34
  %33 = load double, ptr %6, align 8, !tbaa !104
  %34 = fptrunc double %33 to float
  %35 = getelementptr inbounds %struct.Input, ptr %2, i64 0, i32 5
  store float %34, ptr %35, align 4, !tbaa !18
  %36 = load i32, ptr %30, align 4, !tbaa !11
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  %39 = alloca i32, i64 %37, align 16
  %40 = alloca i32, i64 %37, align 16
  %41 = alloca double, i64 %37, align 16
  %42 = sext i32 %36 to i64
  %43 = call i64 @fread(ptr noundef nonnull %38, i64 noundef 4, i64 noundef %42, ptr noundef %20) #34
  %44 = load i32, ptr %30, align 4, !tbaa !11
  %45 = sext i32 %44 to i64
  %46 = call i64 @fread(ptr noundef nonnull %39, i64 noundef 4, i64 noundef %45, ptr noundef %20) #34
  %47 = load i32, ptr %30, align 4, !tbaa !11
  %48 = sext i32 %47 to i64
  %49 = call i64 @fread(ptr noundef nonnull %40, i64 noundef 4, i64 noundef %48, ptr noundef %20) #34
  %50 = load i32, ptr %30, align 4, !tbaa !11
  %51 = sext i32 %50 to i64
  %52 = call i64 @fread(ptr noundef nonnull %41, i64 noundef 8, i64 noundef %51, ptr noundef %20) #34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #30
  %53 = getelementptr inbounds %struct.Input, ptr %2, i64 0, i32 18
  store i64 0, ptr %53, align 8, !tbaa !19
  %54 = load i32, ptr %30, align 4, !tbaa !11
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %4
  %57 = zext i32 %54 to i64
  br label %68

58:                                               ; preds = %68
  %.lcssa3 = phi i64 [ %74, %68 ]
  store i64 %.lcssa3, ptr %53, align 8, !tbaa !19
  %59 = shl i64 %.lcssa3, 5
  br label %60

60:                                               ; preds = %58, %4
  %61 = phi i64 [ %59, %58 ], [ 0, %4 ]
  %62 = tail call noalias ptr @malloc(i64 noundef %61) #36
  %63 = load i64, ptr %3, align 8, !tbaa !40
  %64 = add i64 %63, %61
  store i64 %64, ptr %3, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #30
  %65 = call i32 @fgetpos(ptr noundef %20, ptr noundef nonnull %19) #34
  %66 = load i32, ptr %30, align 4, !tbaa !11
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %77, label %84

68:                                               ; preds = %68, %56
  %69 = phi i64 [ 0, %56 ], [ %75, %68 ]
  %70 = phi i64 [ 0, %56 ], [ %74, %68 ]
  %71 = getelementptr inbounds i32, ptr %38, i64 %69
  %72 = load i32, ptr %71, align 4, !tbaa !7
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %70, %73
  %75 = add nuw nsw i64 %69, 1
  %76 = icmp eq i64 %75, %57
  br i1 %76, label %58, label %68

77:                                               ; preds = %95, %60
  %78 = phi i32 [ %96, %95 ], [ %66, %60 ]
  %79 = phi i64 [ %98, %95 ], [ 0, %60 ]
  %80 = phi i64 [ %97, %95 ], [ 0, %60 ]
  %81 = getelementptr inbounds i32, ptr %38, i64 %79
  %82 = load i32, ptr %81, align 4, !tbaa !7
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %101, label %95

84:                                               ; preds = %95, %60
  %85 = phi i64 [ 0, %60 ], [ %97, %95 ]
  %86 = shl i64 %85, 4
  %87 = tail call noalias ptr @malloc(i64 noundef %86) #36
  %88 = load i64, ptr %3, align 8, !tbaa !40
  %89 = add i64 %88, %86
  store i64 %89, ptr %3, align 8, !tbaa !40
  %90 = call i32 @fsetpos(ptr noundef %20, ptr noundef nonnull %19) #34
  %91 = load i32, ptr %30, align 4, !tbaa !11
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %121, label %131

93:                                               ; preds = %110
  %.lcssa2 = phi i64 [ %108, %110 ]
  %94 = load i32, ptr %30, align 4, !tbaa !11
  br label %95

95:                                               ; preds = %93, %77
  %96 = phi i32 [ %78, %77 ], [ %94, %93 ]
  %97 = phi i64 [ %80, %77 ], [ %.lcssa2, %93 ]
  %98 = add nuw nsw i64 %79, 1
  %99 = sext i32 %96 to i64
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %77, label %84

101:                                              ; preds = %110, %77
  %102 = phi i32 [ %111, %110 ], [ 0, %77 ]
  %103 = phi i64 [ %108, %110 ], [ %80, %77 ]
  %104 = tail call i32 @fseek(ptr noundef %20, i64 noundef 44, i32 noundef 1) #34
  %105 = call i64 @fread(ptr noundef nonnull %13, i64 noundef 4, i64 noundef 1, ptr noundef %20) #34
  %106 = load i32, ptr %13, align 4, !tbaa !7
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %103, %107
  %109 = icmp sgt i32 %106, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %118, %101
  %111 = add nuw nsw i32 %102, 1
  %112 = icmp eq i32 %111, %82
  br i1 %112, label %93, label %101

113:                                              ; preds = %118, %101
  %114 = phi i32 [ %119, %118 ], [ 0, %101 ]
  %115 = tail call i32 @fseek(ptr noundef %20, i64 noundef 16, i32 noundef 1) #34
  br i1 %1, label %116, label %118

116:                                              ; preds = %113
  %117 = tail call i32 @fseek(ptr noundef %20, i64 noundef 8, i32 noundef 1) #34
  br label %118

118:                                              ; preds = %116, %113
  %119 = add nuw nsw i32 %114, 1
  %120 = icmp eq i32 %119, %106
  br i1 %120, label %110, label %113

121:                                              ; preds = %152, %84
  %122 = phi i32 [ %153, %152 ], [ %91, %84 ]
  %123 = phi i64 [ %156, %152 ], [ 0, %84 ]
  %124 = phi i32 [ %155, %152 ], [ 0, %84 ]
  %125 = phi i32 [ %154, %152 ], [ 0, %84 ]
  %126 = getelementptr inbounds i32, ptr %38, i64 %123
  %127 = load i32, ptr %126, align 4, !tbaa !7
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %152

129:                                              ; preds = %121
  %130 = sext i32 %125 to i64
  br label %159

131:                                              ; preds = %152, %84
  %132 = load i64, ptr %53, align 8, !tbaa !19
  %133 = sdiv i64 %85, %132
  %134 = getelementptr inbounds %struct.Input, ptr %2, i64 0, i32 12
  store i64 %133, ptr %134, align 8, !tbaa !34
  %135 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %132) #34
  %136 = load i64, ptr %53, align 8, !tbaa !19
  %137 = getelementptr inbounds %struct.Input, ptr %2, i64 0, i32 8
  %138 = load i32, ptr %137, align 8, !tbaa !24
  %139 = sext i32 %138 to i64
  %140 = mul nsw i64 %136, %139
  %141 = getelementptr inbounds %struct.Input, ptr %2, i64 0, i32 19
  %142 = load i32, ptr %141, align 8, !tbaa !23
  %143 = sext i32 %142 to i64
  %144 = mul nsw i64 %140, %143
  %145 = getelementptr inbounds %struct.Input, ptr %2, i64 0, i32 20
  store i64 %144, ptr %145, align 8, !tbaa !25
  %146 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %144) #34
  %147 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i64 noundef %85) #34
  %148 = call i32 @fclose(ptr noundef %20) #34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #30
  call void @llvm.stackrestore(ptr %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #30
  ret ptr %62

149:                                              ; preds = %182
  %.lcssa1 = phi i64 [ %183, %182 ]
  %.lcssa = phi i32 [ %177, %182 ]
  %150 = trunc i64 %.lcssa1 to i32
  %151 = load i32, ptr %30, align 4, !tbaa !11
  br label %152

152:                                              ; preds = %149, %121
  %153 = phi i32 [ %122, %121 ], [ %151, %149 ]
  %154 = phi i32 [ %125, %121 ], [ %150, %149 ]
  %155 = phi i32 [ %124, %121 ], [ %.lcssa, %149 ]
  %156 = add nuw nsw i64 %123, 1
  %157 = sext i32 %153 to i64
  %158 = icmp slt i64 %156, %157
  br i1 %158, label %121, label %131

159:                                              ; preds = %182, %129
  %160 = phi i64 [ %130, %129 ], [ %183, %182 ]
  %161 = phi i32 [ 0, %129 ], [ %184, %182 ]
  %162 = phi i32 [ %124, %129 ], [ %177, %182 ]
  %163 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 8, i64 noundef 1, ptr noundef %20) #34
  %164 = call i64 @fread(ptr noundef nonnull %8, i64 noundef 8, i64 noundef 1, ptr noundef %20) #34
  %165 = call i64 @fread(ptr noundef nonnull %9, i64 noundef 8, i64 noundef 1, ptr noundef %20) #34
  %166 = call i64 @fread(ptr noundef nonnull %10, i64 noundef 8, i64 noundef 1, ptr noundef %20) #34
  %167 = call i64 @fread(ptr noundef nonnull %11, i64 noundef 8, i64 noundef 1, ptr noundef %20) #34
  %168 = call i64 @fread(ptr noundef nonnull %12, i64 noundef 4, i64 noundef 1, ptr noundef %20) #34
  %169 = call i64 @fread(ptr noundef nonnull %13, i64 noundef 4, i64 noundef 1, ptr noundef %20) #34
  %170 = load i32, ptr %13, align 4, !tbaa !7
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.Track2D, ptr %62, i64 %160
  %173 = getelementptr inbounds %struct.Track2D, ptr %62, i64 %160, i32 1
  store i64 %171, ptr %173, align 8, !tbaa !85
  %174 = sext i32 %162 to i64
  %175 = getelementptr inbounds %struct.Segment, ptr %87, i64 %174
  %176 = getelementptr inbounds %struct.Track2D, ptr %62, i64 %160, i32 2
  store ptr %175, ptr %176, align 8, !tbaa !87
  %177 = add i32 %170, %162
  %178 = call float @urand() #31
  store float %178, ptr %172, align 8, !tbaa !90
  %179 = icmp sgt i32 %170, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %159
  %181 = zext i32 %170 to i64
  br label %186

182:                                              ; preds = %200, %159
  %183 = add nsw i64 %160, 1
  %184 = add nuw nsw i32 %161, 1
  %185 = icmp eq i32 %184, %127
  br i1 %185, label %149, label %159

186:                                              ; preds = %200, %180
  %187 = phi i64 [ 0, %180 ], [ %201, %200 ]
  %188 = call i64 @fread(ptr noundef nonnull %14, i64 noundef 8, i64 noundef 1, ptr noundef %20) #34
  %189 = call i64 @fread(ptr noundef nonnull %15, i64 noundef 4, i64 noundef 1, ptr noundef %20) #34
  %190 = call i64 @fread(ptr noundef nonnull %16, i64 noundef 4, i64 noundef 1, ptr noundef %20) #34
  %191 = load double, ptr %14, align 8, !tbaa !104
  %192 = fptrunc double %191 to float
  %193 = getelementptr inbounds %struct.Segment, ptr %175, i64 %187
  store float %192, ptr %193, align 8, !tbaa !88
  %194 = load i32, ptr %16, align 4, !tbaa !7
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.Segment, ptr %175, i64 %187, i32 1
  store i64 %195, ptr %196, align 8, !tbaa !106
  br i1 %1, label %197, label %200

197:                                              ; preds = %186
  %198 = call i64 @fread(ptr noundef nonnull %17, i64 noundef 4, i64 noundef 1, ptr noundef %20) #34
  %199 = call i64 @fread(ptr noundef nonnull %18, i64 noundef 4, i64 noundef 1, ptr noundef %20) #34
  br label %200

200:                                              ; preds = %197, %186
  %201 = add nuw nsw i64 %187, 1
  %202 = icmp eq i64 %201, %181
  br i1 %202, label %182, label %186
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #27

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fgetpos(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fsetpos(ptr nocapture noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #27

; Function Attrs: nounwind optsize uwtable
define internal float @urand() #5 {
  %1 = tail call i32 @glibc_compat_rand() #31
  %2 = sitofp i32 %1 to float
  %3 = fmul float %2, 0x3E00000000000000
  ret float %3
}

; Function Attrs: nounwind optsize uwtable
define internal float @nrand(float noundef %0, float noundef %1) #5 {
  %3 = tail call i32 @glibc_compat_rand() #31
  %4 = sitofp i32 %3 to float
  %5 = fmul float %4, 0x3E00000000000000
  %6 = tail call i32 @glibc_compat_rand() #31
  %7 = sitofp i32 %6 to float
  %8 = fmul float %7, 0x3E00000000000000
  %9 = fpext float %5 to double
  %10 = tail call double @log(double noundef %9) #31
  %11 = fmul double %10, -2.000000e+00
  %12 = tail call double @sqrt(double noundef %11) #31
  %13 = fpext float %8 to double
  %14 = fmul double %13, 0x401921FB54442D18
  %15 = tail call double @cos(double noundef %14) #31
  %16 = fmul double %12, %15
  %17 = fptrunc double %16 to float
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %1, float %0)
  ret float %18
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #21

; Function Attrs: nofree nosync nounwind optsize memory(argmem: read) uwtable
define internal float @pairwise_sum(ptr noundef %0, i64 noundef %1) #28 {
  %3 = icmp slt i64 %1, 17
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  %5 = icmp sgt i64 %1, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %6, %4
  %7 = phi i64 [ %12, %6 ], [ 0, %4 ]
  %8 = phi float [ %11, %6 ], [ 0.000000e+00, %4 ]
  %9 = getelementptr inbounds float, ptr %0, i64 %7
  %10 = load float, ptr %9, align 4, !tbaa !31
  %11 = fadd float %8, %10
  %12 = add nuw nsw i64 %7, 1
  %13 = icmp eq i64 %12, %1
  br i1 %13, label %14, label %6

14:                                               ; preds = %16, %6, %4
  %15 = phi float [ %22, %16 ], [ 0.000000e+00, %4 ], [ %11, %6 ]
  ret float %15

16:                                               ; preds = %2
  %17 = lshr i64 %1, 1
  %18 = tail call float @pairwise_sum(ptr noundef %0, i64 noundef %17) #34
  %19 = getelementptr inbounds float, ptr %0, i64 %17
  %20 = sub nsw i64 %1, %17
  %21 = tail call float @pairwise_sum(ptr noundef %19, i64 noundef %20) #34
  %22 = fadd float %18, %21
  br label %14
}

; Function Attrs: nofree nounwind optsize memory(write, inaccessiblemem: readwrite) uwtable
define internal void @buildExponentialTable(ptr noalias nocapture writeonly sret(%struct.Table) align 8 %0, float noundef %1, float noundef %2) #29 {
  %4 = fpext float %2 to double
  %5 = fpext float %1 to double
  %6 = fmul double %5, 8.000000e+00
  %7 = fmul double %6, 1.000000e-02
  %8 = fdiv double 1.000000e+00, %7
  %9 = tail call double @sqrt(double noundef %8) #31
  %10 = fmul double %9, %4
  %11 = fptosi double %10 to i32
  %12 = sitofp i32 %11 to float
  %13 = fdiv float %2, %12
  %14 = shl nsw i32 %11, 1
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 2
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #36
  %18 = icmp sgt i32 %11, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = zext i32 %11 to i64
  br label %26

21:                                               ; preds = %26, %3
  %22 = getelementptr inbounds %struct.Table, ptr %0, i64 0, i32 1
  store float %13, ptr %22, align 8, !tbaa !107
  store ptr %17, ptr %0, align 8, !tbaa !108
  %23 = fsub float %2, %13
  %24 = getelementptr inbounds %struct.Table, ptr %0, i64 0, i32 2
  store float %23, ptr %24, align 4, !tbaa !109
  %25 = getelementptr inbounds %struct.Table, ptr %0, i64 0, i32 3
  store i32 %11, ptr %25, align 8, !tbaa !110
  ret void

26:                                               ; preds = %26, %19
  %27 = phi i64 [ 0, %19 ], [ %44, %26 ]
  %28 = trunc i64 %27 to i32
  %29 = sub i32 0, %28
  %30 = sitofp i32 %29 to float
  %31 = fmul float %13, %30
  %32 = fpext float %31 to double
  %33 = tail call double @exp(double noundef %32) #31
  %34 = fptrunc double %33 to float
  %35 = fneg float %34
  %36 = shl nuw nsw i64 %27, 1
  %37 = getelementptr inbounds float, ptr %17, i64 %36
  store float %35, ptr %37, align 4, !tbaa !31
  %38 = trunc i64 %27 to i32
  %39 = sitofp i32 %38 to float
  %40 = tail call float @llvm.fmuladd.f32(float %39, float %13, float -1.000000e+00)
  %41 = tail call float @llvm.fmuladd.f32(float %40, float %34, float 1.000000e+00)
  %42 = or i64 %36, 1
  %43 = getelementptr inbounds float, ptr %17, i64 %42
  store float %41, ptr %43, align 4, !tbaa !31
  %44 = add nuw nsw i64 %27, 1
  %45 = icmp eq i64 %44, %20
  br i1 %45, label %21, label %26
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #21

; Function Attrs: nounwind optsize uwtable
define internal double @get_time() #5 {
  %1 = tail call i64 @clock() #31
  %2 = sitofp i64 %1 to double
  %3 = fdiv double %2, 1.000000e+06
  ret double %3
}

; Function Attrs: nounwind optsize
declare i64 @clock() local_unnamed_addr #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind }
attributes #9 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #24 = { mustprogress nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind optsize memory(write, argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn }
attributes #28 = { nofree nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind optsize memory(write, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind }
attributes #31 = { nounwind optsize }
attributes #32 = { nounwind optsize allocsize(0,1) }
attributes #33 = { nounwind optsize willreturn memory(read) }
attributes #34 = { optsize }
attributes #35 = { noreturn nounwind optsize }
attributes #36 = { nounwind optsize allocsize(0) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!11 = !{!12, !8, i64 28}
!12 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !13, i64 20, !13, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !14, i64 40, !8, i64 44, !15, i64 48, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !15, i64 72, !15, i64 80, !8, i64 88, !15, i64 96, !8, i64 104, !8, i64 108, !15, i64 112, !15, i64 120, !14, i64 128, !16, i64 136, !15, i64 144}
!13 = !{!"float", !9, i64 0}
!14 = !{!"_Bool", !9, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!12, !13, i64 56}
!18 = !{!12, !13, i64 20}
!19 = !{!12, !15, i64 80}
!20 = !{!12, !13, i64 60}
!21 = !{!12, !13, i64 24}
!22 = !{!12, !8, i64 44}
!23 = !{!12, !8, i64 88}
!24 = !{!12, !8, i64 32}
!25 = !{!12, !15, i64 96}
!26 = !{!12, !13, i64 64}
!27 = !{!12, !15, i64 112}
!28 = !{!12, !8, i64 8}
!29 = !{!12, !15, i64 120}
!30 = !{!12, !8, i64 16}
!31 = !{!13, !13, i64 0}
!32 = !{!12, !8, i64 36}
!33 = !{!12, !14, i64 40}
!34 = !{!12, !15, i64 48}
!35 = !{!12, !13, i64 68}
!36 = !{!12, !15, i64 72}
!37 = !{!12, !14, i64 128}
!38 = !{i64 0, i64 4, !7, i64 4, i64 4, !7, i64 8, i64 4, !7, i64 12, i64 4, !7, i64 16, i64 4, !7, i64 20, i64 4, !31, i64 24, i64 4, !31, i64 28, i64 4, !7, i64 32, i64 4, !7, i64 36, i64 4, !7, i64 40, i64 1, !39, i64 44, i64 4, !7, i64 48, i64 8, !40, i64 56, i64 4, !31, i64 60, i64 4, !31, i64 64, i64 4, !31, i64 68, i64 4, !31, i64 72, i64 8, !40, i64 80, i64 8, !40, i64 88, i64 4, !7, i64 96, i64 8, !40, i64 104, i64 4, !7, i64 108, i64 4, !7, i64 112, i64 8, !40, i64 120, i64 8, !40, i64 128, i64 1, !39, i64 136, i64 8, !41, i64 144, i64 8, !40}
!39 = !{!14, !14, i64 0}
!40 = !{!15, !15, i64 0}
!41 = !{!16, !16, i64 0}
!42 = !{i8 0, i8 2}
!43 = !{}
!44 = !{!12, !16, i64 136}
!45 = !{!46, !16, i64 8}
!46 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !47, i64 40}
!47 = !{!"", !16, i64 0, !13, i64 8, !13, i64 12, !8, i64 16}
!48 = !{!46, !16, i64 24}
!49 = !{!46, !16, i64 16}
!50 = !{!46, !16, i64 32}
!51 = !{!12, !8, i64 104}
!52 = !{!46, !16, i64 0}
!53 = !{i64 0, i64 4, !7, i64 4, i64 4, !7, i64 8, i64 4, !7, i64 12, i64 4, !31, i64 16, i64 4, !31, i64 20, i64 4, !7, i64 24, i64 4, !7, i64 28, i64 4, !7, i64 32, i64 1, !39, i64 36, i64 4, !7, i64 40, i64 8, !40, i64 48, i64 4, !31, i64 52, i64 4, !31, i64 56, i64 4, !31, i64 60, i64 4, !31, i64 64, i64 8, !40, i64 72, i64 8, !40, i64 80, i64 4, !7, i64 88, i64 8, !40, i64 96, i64 4, !7, i64 100, i64 4, !7, i64 104, i64 8, !40, i64 112, i64 8, !40, i64 120, i64 1, !39, i64 128, i64 8, !41, i64 136, i64 8, !40}
!54 = !{i64 0, i64 4, !7, i64 4, i64 4, !7, i64 8, i64 4, !31, i64 12, i64 4, !31, i64 16, i64 4, !7, i64 20, i64 4, !7, i64 24, i64 4, !7, i64 28, i64 1, !39, i64 32, i64 4, !7, i64 36, i64 8, !40, i64 44, i64 4, !31, i64 48, i64 4, !31, i64 52, i64 4, !31, i64 56, i64 4, !31, i64 60, i64 8, !40, i64 68, i64 8, !40, i64 76, i64 4, !7, i64 84, i64 8, !40, i64 92, i64 4, !7, i64 96, i64 4, !7, i64 100, i64 8, !40, i64 108, i64 8, !40, i64 116, i64 1, !39, i64 124, i64 8, !41, i64 132, i64 8, !40}
!55 = !{i64 0, i64 4, !7, i64 4, i64 1, !39, i64 8, i64 4, !7, i64 12, i64 8, !40, i64 20, i64 4, !31, i64 24, i64 4, !31, i64 28, i64 4, !31, i64 32, i64 4, !31, i64 36, i64 8, !40, i64 44, i64 8, !40, i64 52, i64 4, !7, i64 60, i64 8, !40, i64 68, i64 4, !7, i64 72, i64 4, !7, i64 76, i64 8, !40, i64 84, i64 8, !40, i64 92, i64 1, !39, i64 100, i64 8, !41, i64 108, i64 8, !40}
!56 = !{i64 0, i64 4, !7, i64 4, i64 8, !40, i64 12, i64 4, !31, i64 16, i64 4, !31, i64 20, i64 4, !31, i64 24, i64 4, !31, i64 28, i64 8, !40, i64 36, i64 8, !40, i64 44, i64 4, !7, i64 52, i64 8, !40, i64 60, i64 4, !7, i64 64, i64 4, !7, i64 68, i64 8, !40, i64 76, i64 8, !40, i64 84, i64 1, !39, i64 92, i64 8, !41, i64 100, i64 8, !40}
!57 = !{i64 0, i64 4, !31, i64 4, i64 4, !31, i64 8, i64 4, !31, i64 12, i64 8, !40, i64 20, i64 8, !40, i64 28, i64 4, !7, i64 36, i64 8, !40, i64 44, i64 4, !7, i64 48, i64 4, !7, i64 52, i64 8, !40, i64 60, i64 8, !40, i64 68, i64 1, !39, i64 76, i64 8, !41, i64 84, i64 8, !40}
!58 = !{i64 0, i64 8, !41, i64 8, i64 4, !31, i64 12, i64 4, !31, i64 16, i64 4, !7}
!59 = !{i64 0, i64 4, !31, i64 4, i64 4, !31, i64 8, i64 4, !7}
!60 = !{i64 0, i64 4, !31, i64 4, i64 4, !7}
!61 = !{!62, !16, i64 0}
!62 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104}
!63 = !{!62, !16, i64 8}
!64 = !{!62, !16, i64 16}
!65 = !{!62, !16, i64 24}
!66 = !{!62, !16, i64 32}
!67 = !{!62, !16, i64 40}
!68 = !{!62, !16, i64 48}
!69 = !{!62, !16, i64 56}
!70 = !{!62, !16, i64 64}
!71 = !{!62, !16, i64 72}
!72 = !{!62, !16, i64 80}
!73 = !{!62, !16, i64 88}
!74 = !{!62, !16, i64 96}
!75 = !{!62, !16, i64 104}
!76 = !{!77, !13, i64 4}
!77 = !{!"", !13, i64 0, !13, i64 4, !15, i64 8, !15, i64 16, !16, i64 24, !16, i64 32}
!78 = !{!77, !13, i64 0}
!79 = !{!80, !16, i64 0}
!80 = !{!"", !16, i64 0, !16, i64 8, !13, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!81 = !{!80, !16, i64 8}
!82 = !{!80, !16, i64 24}
!83 = !{!12, !8, i64 12}
!84 = !{!12, !15, i64 144}
!85 = !{!86, !15, i64 8}
!86 = !{!"", !13, i64 0, !15, i64 8, !16, i64 16, !8, i64 24}
!87 = !{!86, !16, i64 16}
!88 = !{!89, !13, i64 0}
!89 = !{!"", !13, i64 0, !15, i64 8}
!90 = !{!86, !13, i64 0}
!91 = !{i64 0, i64 8, !41, i64 8, i64 8, !41, i64 16, i64 4, !31, i64 24, i64 8, !41, i64 32, i64 8, !41, i64 40, i64 8, !41}
!92 = !{i64 0, i64 4, !31, i64 8, i64 8, !41, i64 16, i64 8, !41, i64 24, i64 8, !41}
!93 = !{i64 0, i64 8, !41, i64 8, i64 8, !41}
!94 = !{!80, !13, i64 16}
!95 = !{!77, !16, i64 24}
!96 = !{!77, !16, i64 32}
!97 = !{i64 0, i64 8, !41, i64 8, i64 4, !31, i64 16, i64 8, !41, i64 24, i64 8, !41, i64 32, i64 8, !41}
!98 = !{i64 0, i64 8, !41}
!99 = !{!80, !16, i64 40}
!100 = !{!80, !16, i64 32}
!101 = distinct !{!101, !102, !103}
!102 = !{!"llvm.loop.isvectorized", i32 1}
!103 = !{!"llvm.loop.unroll.runtime.disable"}
!104 = !{!105, !105, i64 0}
!105 = !{!"double", !9, i64 0}
!106 = !{!89, !15, i64 8}
!107 = !{!47, !13, i64 8}
!108 = !{!47, !16, i64 0}
!109 = !{!47, !13, i64 12}
!110 = !{!47, !8, i64 16}
