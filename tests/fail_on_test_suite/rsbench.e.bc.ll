; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/DOE-ProxyApps-C/RSBench/rsbench.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Input = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Pole = type { { double, double }, { double, double }, { double, double }, { double, double }, i16 }
%struct.Window = type { double, double, double, i32, i32 }
%struct.Materials = type { ptr, ptr, ptr }
%struct.CalcDataPtrs = type { ptr, ptr, %struct.Materials, ptr, ptr, ptr }

@next = internal unnamed_addr global i32 0, align 4
@table = internal unnamed_addr global [344 x i32] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [41 x i8] c"Developed at Argonne National Laboratory\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Version: %d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%d,%03d\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"%d,%03d,%03d\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"%d,%03d,%03d,%03d\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"small\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"large\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"H-M Benchmark Size:          \00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"Total Nuclides:              %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"Avg Poles per Nuclide:       \00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"Avg Windows per Nuclide:     \00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"XS Lookups:                  \00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"Threads:                     %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Est. Memory Usage (MB):      %.1lf\0A\00", align 1
@str = private unnamed_addr constant [378 x i8] c"                    _____   _____ ____                  _     \0A                   |  __ \\ / ____|  _ \\                | |    \0A                   | |__) | (___ | |_) | ___ _ __   ___| |__  \0A                   |  _  / \\___ \\|  _ < / _ \\ '_ \\ / __| '_ \\ \0A                   | | \\ \\ ____) | |_) |  __/ | | | (__| | | |\0A                   |_|  \\_\\_____/|____/ \\___|_| |_|\\___|_| |_|\00", align 1
@str.41 = private unnamed_addr constant [81 x i8] c"================================================================================\00", align 1
@str.42 = private unnamed_addr constant [30 x i8] c"Usage: ./multibench <options>\00", align 1
@str.43 = private unnamed_addr constant [17 x i8] c"Options include:\00", align 1
@str.44 = private unnamed_addr constant [51 x i8] c"  -t <threads>     Number of OpenMP threads to run\00", align 1
@str.45 = private unnamed_addr constant [63 x i8] c"  -s <size>        Size of H-M Benchmark to run (small, large)\00", align 1
@str.46 = private unnamed_addr constant [56 x i8] c"  -l <lookups>     Number of Cross-section (XS) lookups\00", align 1
@str.47 = private unnamed_addr constant [55 x i8] c"  -p <poles>       Average Number of Poles per Nuclide\00", align 1
@str.48 = private unnamed_addr constant [57 x i8] c"  -w <poles>       Average Number of Windows per Nuclide\00", align 1
@str.49 = private unnamed_addr constant [72 x i8] c"  -d               Disables Temperature Dependence (Doppler Broadening)\00", align 1
@str.50 = private unnamed_addr constant [62 x i8] c"Default is equivalent to: -s large -l 10000000 -p 1000 -w 100\00", align 1
@str.51 = private unnamed_addr constant [54 x i8] c"See readme for full description of default run values\00", align 1
@str.52 = private unnamed_addr constant [32 x i8] c"Materials:                   12\00", align 1
@str.53 = private unnamed_addr constant [6 x i8] c"Large\00", align 1
@str.54 = private unnamed_addr constant [33 x i8] c"Temperature Dependence:      OFF\00", align 1
@str.55 = private unnamed_addr constant [32 x i8] c"Temperature Dependence:      ON\00", align 1
@str.56 = private unnamed_addr constant [6 x i8] c"Small\00", align 1
@.str = private unnamed_addr constant [14 x i8] c"INPUT SUMMARY\00", align 1
@.str.1.1 = private unnamed_addr constant [15 x i8] c"INITIALIZATION\00", align 1
@.str.8.3 = private unnamed_addr constant [42 x i8] c"Initialization Complete. (%.2lf seconds)\0A\00", align 1
@.str.9.4 = private unnamed_addr constant [11 x i8] c"SIMULATION\00", align 1
@str.2 = private unnamed_addr constant [38 x i8] c"Generating resonance distributions...\00", align 1
@str.13 = private unnamed_addr constant [35 x i8] c"Generating window distributions...\00", align 1
@str.14 = private unnamed_addr constant [43 x i8] c"Loading Hoogenboom-Martin material data...\00", align 1
@str.15 = private unnamed_addr constant [39 x i8] c"Generating resonance parameter grid...\00", align 1
@str.16 = private unnamed_addr constant [36 x i8] c"Generating window parameter grid...\00", align 1
@str.17 = private unnamed_addr constant [30 x i8] c"Generating 0K l_value data...\00", align 1
@str.18 = private unnamed_addr constant [22 x i8] c"Beginning Simulation.\00", align 1
@str.19 = private unnamed_addr constant [20 x i8] c"Calculating XS's...\00", align 1
@str.20 = private unnamed_addr constant [22 x i8] c"\0ASimulation Complete.\00", align 1
@__const.load_mats.mats0_Sml = private unnamed_addr constant [34 x i32] [i32 58, i32 59, i32 60, i32 61, i32 40, i32 42, i32 43, i32 44, i32 45, i32 46, i32 1, i32 2, i32 3, i32 7, i32 8, i32 9, i32 10, i32 29, i32 57, i32 47, i32 48, i32 0, i32 62, i32 15, i32 33, i32 34, i32 52, i32 53, i32 54, i32 55, i32 56, i32 18, i32 23, i32 41], align 16
@__const.load_mats.mats0_Lrg = private unnamed_addr constant <{ [34 x i32], [287 x i32] }> <{ [34 x i32] [i32 58, i32 59, i32 60, i32 61, i32 40, i32 42, i32 43, i32 44, i32 45, i32 46, i32 1, i32 2, i32 3, i32 7, i32 8, i32 9, i32 10, i32 29, i32 57, i32 47, i32 48, i32 0, i32 62, i32 15, i32 33, i32 34, i32 52, i32 53, i32 54, i32 55, i32 56, i32 18, i32 23, i32 41], [287 x i32] zeroinitializer }>, align 16
@__const.load_mats.mats1 = private unnamed_addr constant [5 x i32] [i32 63, i32 64, i32 65, i32 66, i32 67], align 16
@__const.load_mats.mats3 = private unnamed_addr constant [4 x i32] [i32 24, i32 41, i32 4, i32 5], align 16
@__const.load_mats.mats4 = private unnamed_addr constant [27 x i32] [i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 26, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14, i32 6, i32 16, i32 17], align 16
@__const.load_mats.mats9 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@__const.load_mats.mats11 = private unnamed_addr constant [9 x i32] [i32 24, i32 41, i32 4, i32 5, i32 63, i32 64, i32 65, i32 66, i32 67], align 16
@__const.fast_nuclear_W.an = private unnamed_addr constant [10 x double] [double 0x3FD1A75DA77B03AC, double 2.245740e-01, double 0x3FC467B51AFF5FC7, double 0x3FB94228EF6278F1, double 0x3FAB42D0E001DDD1, double 0x3F99A74553C72771, double 0x3F850C5AAC48F3BA, double 0x3F6E1D7984F391AA, double 0x3F52C8BE8F0B3A0A, double 3.117570e-04], align 16
@__const.fast_nuclear_W.neg_1n = private unnamed_addr constant [10 x double] [double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00], align 16
@__const.fast_nuclear_W.denominator_left = private unnamed_addr constant [10 x double] [double 0x4023BD3CBC48F10B, double 0x4043BD3CDDD6E04C, double 0x405634E4649906CD, double 0x4063BD3D07C84B5E, double 0x406ED7AEE631F8A1, double 0x407634E48E8A71DE, double 0x407E39C504816F00, double 0x4083BD3CD35A8588, double 0x4088FB810624DD2F, double 0x408ED7AEE631F8A1], align 16

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

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @generate_n_poles(ptr nocapture noundef readonly byval(%struct.Input) align 8 %0) #3 {
  %2 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !13
  %6 = mul nsw i32 %5, %3
  %7 = sext i32 %5 to i64
  %8 = tail call noalias ptr @calloc(i64 noundef %7, i64 noundef 4) #22
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %14, %1
  %11 = icmp sgt i32 %5, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %10
  %13 = zext i32 %5 to i64
  br label %25

14:                                               ; preds = %14, %1
  %15 = phi i32 [ %22, %14 ], [ 0, %1 ]
  %16 = tail call i32 @glibc_compat_rand() #23
  %17 = srem i32 %16, %5
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %8, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !7
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !7
  %22 = add nuw nsw i32 %15, 1
  %23 = icmp eq i32 %22, %6
  br i1 %23, label %10, label %14

24:                                               ; preds = %31, %10
  ret ptr %8

25:                                               ; preds = %31, %12
  %26 = phi i64 [ 0, %12 ], [ %32, %31 ]
  %27 = getelementptr inbounds i32, ptr %8, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, ptr %27, align 4, !tbaa !7
  br label %31

31:                                               ; preds = %30, %25
  %32 = add nuw nsw i64 %26, 1
  %33 = icmp eq i64 %32, %13
  br i1 %33, label %24, label %25
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @generate_n_windows(ptr nocapture noundef readonly byval(%struct.Input) align 8 %0) #3 {
  %2 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !14
  %4 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !13
  %6 = mul nsw i32 %5, %3
  %7 = sext i32 %5 to i64
  %8 = tail call noalias ptr @calloc(i64 noundef %7, i64 noundef 4) #22
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %14, %1
  %11 = icmp sgt i32 %5, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %10
  %13 = zext i32 %5 to i64
  br label %25

14:                                               ; preds = %14, %1
  %15 = phi i32 [ %22, %14 ], [ 0, %1 ]
  %16 = tail call i32 @glibc_compat_rand() #23
  %17 = srem i32 %16, %5
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %8, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !7
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !7
  %22 = add nuw nsw i32 %15, 1
  %23 = icmp eq i32 %22, %6
  br i1 %23, label %10, label %14

24:                                               ; preds = %31, %10
  ret ptr %8

25:                                               ; preds = %31, %12
  %26 = phi i64 [ 0, %12 ], [ %32, %31 ]
  %27 = getelementptr inbounds i32, ptr %8, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, ptr %27, align 4, !tbaa !7
  br label %31

31:                                               ; preds = %30, %25
  %32 = add nuw nsw i64 %26, 1
  %33 = icmp eq i64 %32, %13
  br i1 %33, label %24, label %25
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @generate_poles(ptr nocapture noundef readonly byval(%struct.Input) align 8 %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !13
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #24
  %8 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !11
  %10 = mul nsw i32 %9, %4
  %11 = sext i32 %10 to i64
  %12 = mul nsw i64 %11, 72
  %13 = tail call noalias ptr @malloc(i64 noundef %12) #24
  %14 = icmp sgt i32 %4, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %2
  %16 = zext i32 %4 to i64
  br label %22

17:                                               ; preds = %22
  br i1 %14, label %18, label %40

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 8
  %21 = zext i32 %4 to i64
  br label %33

22:                                               ; preds = %22, %15
  %23 = phi i64 [ 0, %15 ], [ %31, %22 ]
  %24 = phi i32 [ 0, %15 ], [ %30, %22 ]
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.Pole, ptr %13, i64 %25
  %27 = getelementptr inbounds ptr, ptr %7, i64 %23
  store ptr %26, ptr %27, align 8, !tbaa !15
  %28 = getelementptr inbounds i32, ptr %1, i64 %23
  %29 = load i32, ptr %28, align 4, !tbaa !7
  %30 = add nsw i32 %29, %24
  %31 = add nuw nsw i64 %23, 1
  %32 = icmp eq i64 %31, %16
  br i1 %32, label %17, label %22

33:                                               ; preds = %41, %18
  %34 = phi i64 [ 0, %18 ], [ %42, %41 ]
  %35 = getelementptr inbounds i32, ptr %1, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !7
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = getelementptr inbounds ptr, ptr %7, i64 %34
  br label %44

40:                                               ; preds = %41, %17, %2
  ret ptr %7

41:                                               ; preds = %44, %33
  %42 = add nuw nsw i64 %34, 1
  %43 = icmp eq i64 %42, %21
  br i1 %43, label %40, label %33

44:                                               ; preds = %44, %38
  %45 = phi i64 [ 0, %38 ], [ %97, %44 ]
  %46 = tail call i32 @glibc_compat_rand() #23
  %47 = tail call i32 @glibc_compat_rand() #23
  %48 = load ptr, ptr %39, align 8, !tbaa !15
  %49 = getelementptr inbounds %struct.Pole, ptr %48, i64 %45
  %50 = insertelement <2 x i32> poison, i32 %46, i64 0
  %51 = insertelement <2 x i32> %50, i32 %47, i64 1
  %52 = sitofp <2 x i32> %51 to <2 x double>
  %53 = fdiv <2 x double> %52, <double 0x41DFFFFFFFC00000, double 0x41DFFFFFFFC00000>
  %54 = extractelement <2 x double> %53, i64 1
  %55 = fmul double %54, 0.000000e+00
  %56 = extractelement <2 x double> %53, i64 0
  %57 = fadd double %56, %55
  %58 = insertelement <2 x double> %53, double %57, i64 0
  %59 = fmul <2 x double> %58, <double 1.525000e+02, double 1.525000e+02>
  store <2 x double> %59, ptr %49, align 8
  %60 = tail call i32 @glibc_compat_rand() #23
  %61 = sitofp i32 %60 to double
  %62 = fmul double %61, 1.525000e+02
  %63 = fdiv double %62, 0x41DFFFFFFFC00000
  %64 = tail call i32 @glibc_compat_rand() #23
  %65 = sitofp i32 %64 to double
  %66 = fdiv double %65, 0x41DFFFFFFFC00000
  %67 = fmul double %66, 0.000000e+00
  %68 = fadd double %63, %67
  %69 = getelementptr inbounds %struct.Pole, ptr %48, i64 %45, i32 1
  %70 = getelementptr inbounds %struct.Pole, ptr %48, i64 %45, i32 1, i32 1
  store double %68, ptr %69, align 8
  store double %66, ptr %70, align 8
  %71 = tail call i32 @glibc_compat_rand() #23
  %72 = sitofp i32 %71 to double
  %73 = fmul double %72, 1.525000e+02
  %74 = fdiv double %73, 0x41DFFFFFFFC00000
  %75 = tail call i32 @glibc_compat_rand() #23
  %76 = sitofp i32 %75 to double
  %77 = fdiv double %76, 0x41DFFFFFFFC00000
  %78 = fmul double %77, 0.000000e+00
  %79 = fadd double %74, %78
  %80 = getelementptr inbounds %struct.Pole, ptr %48, i64 %45, i32 2
  %81 = getelementptr inbounds %struct.Pole, ptr %48, i64 %45, i32 2, i32 1
  store double %79, ptr %80, align 8
  store double %77, ptr %81, align 8
  %82 = tail call i32 @glibc_compat_rand() #23
  %83 = sitofp i32 %82 to double
  %84 = fmul double %83, 1.525000e+02
  %85 = fdiv double %84, 0x41DFFFFFFFC00000
  %86 = tail call i32 @glibc_compat_rand() #23
  %87 = sitofp i32 %86 to double
  %88 = fdiv double %87, 0x41DFFFFFFFC00000
  %89 = fmul double %88, 0.000000e+00
  %90 = fadd double %85, %89
  %91 = getelementptr inbounds %struct.Pole, ptr %48, i64 %45, i32 3
  %92 = getelementptr inbounds %struct.Pole, ptr %48, i64 %45, i32 3, i32 1
  store double %90, ptr %91, align 8
  store double %88, ptr %92, align 8
  %93 = tail call i32 @glibc_compat_rand() #23
  %94 = srem i32 %93, %20
  %95 = trunc i32 %94 to i16
  %96 = getelementptr inbounds %struct.Pole, ptr %48, i64 %45, i32 4
  store i16 %95, ptr %96, align 8, !tbaa !17
  %97 = add nuw nsw i64 %45, 1
  %98 = load i32, ptr %35, align 4, !tbaa !7
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %97, %99
  br i1 %100, label %44, label %41
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @generate_window_params(ptr nocapture noundef readonly byval(%struct.Input) align 8 %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !13
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #24
  %9 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !14
  %11 = mul nsw i32 %10, %5
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 5
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #24
  %15 = icmp sgt i32 %5, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = zext i32 %5 to i64
  br label %21

18:                                               ; preds = %21
  br i1 %15, label %19, label %32

19:                                               ; preds = %18
  %20 = zext i32 %5 to i64
  br label %33

21:                                               ; preds = %21, %16
  %22 = phi i64 [ 0, %16 ], [ %30, %21 ]
  %23 = phi i32 [ 0, %16 ], [ %29, %21 ]
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.Window, ptr %14, i64 %24
  %26 = getelementptr inbounds ptr, ptr %8, i64 %22
  store ptr %25, ptr %26, align 8, !tbaa !15
  %27 = getelementptr inbounds i32, ptr %1, i64 %22
  %28 = load i32, ptr %27, align 4, !tbaa !7
  %29 = add nsw i32 %28, %23
  %30 = add nuw nsw i64 %22, 1
  %31 = icmp eq i64 %30, %17
  br i1 %31, label %18, label %21

32:                                               ; preds = %46, %18, %3
  ret ptr %8

33:                                               ; preds = %46, %19
  %34 = phi i64 [ 0, %19 ], [ %47, %46 ]
  %35 = getelementptr inbounds i32, ptr %2, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !7
  %37 = getelementptr inbounds i32, ptr %1, i64 %34
  %38 = load i32, ptr %37, align 4, !tbaa !7
  %39 = sdiv i32 %36, %38
  %40 = srem i32 %36, %38
  %41 = icmp sgt i32 %38, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = mul nsw i32 %39, %38
  %44 = getelementptr inbounds ptr, ptr %8, i64 %34
  %45 = sext i32 %40 to i64
  br label %49

46:                                               ; preds = %49, %33
  %47 = add nuw nsw i64 %34, 1
  %48 = icmp eq i64 %47, %20
  br i1 %48, label %32, label %33

49:                                               ; preds = %49, %42
  %50 = phi i64 [ 0, %42 ], [ %74, %49 ]
  %51 = phi i32 [ 0, %42 ], [ %73, %49 ]
  %52 = tail call i32 @glibc_compat_rand() #23
  %53 = sitofp i32 %52 to double
  %54 = fdiv double %53, 0x41DFFFFFFFC00000
  %55 = load ptr, ptr %44, align 8, !tbaa !15
  %56 = getelementptr inbounds %struct.Window, ptr %55, i64 %50
  store double %54, ptr %56, align 8, !tbaa !20
  %57 = tail call i32 @glibc_compat_rand() #23
  %58 = sitofp i32 %57 to double
  %59 = fdiv double %58, 0x41DFFFFFFFC00000
  %60 = getelementptr inbounds %struct.Window, ptr %55, i64 %50, i32 1
  store double %59, ptr %60, align 8, !tbaa !23
  %61 = tail call i32 @glibc_compat_rand() #23
  %62 = sitofp i32 %61 to double
  %63 = fdiv double %62, 0x41DFFFFFFFC00000
  %64 = getelementptr inbounds %struct.Window, ptr %55, i64 %50, i32 2
  store double %63, ptr %64, align 8, !tbaa !24
  %65 = getelementptr inbounds %struct.Window, ptr %55, i64 %50, i32 3
  store i32 %51, ptr %65, align 8, !tbaa !25
  %66 = add nsw i32 %51, %39
  %67 = getelementptr inbounds %struct.Window, ptr %55, i64 %50, i32 4
  %68 = icmp sge i64 %50, %45
  %69 = sext i1 %68 to i32
  %70 = add nsw i32 %66, %69
  %71 = xor i1 %68, true
  %72 = zext i1 %71 to i32
  %73 = add nsw i32 %66, %72
  store i32 %70, ptr %67, align 4, !tbaa !26
  %74 = add nuw nsw i64 %50, 1
  %75 = load i32, ptr %37, align 4, !tbaa !7
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %49, label %46
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @generate_pseudo_K0RS(ptr nocapture noundef readonly byval(%struct.Input) align 8 %0) #3 {
  %2 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !13
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #24
  %7 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !27
  %9 = mul nsw i32 %8, %3
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call noalias ptr @malloc(i64 noundef %11) #24
  %13 = icmp sgt i32 %3, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %1
  %15 = sext i32 %8 to i64
  %16 = zext i32 %3 to i64
  br label %22

17:                                               ; preds = %22
  br i1 %13, label %18, label %33

18:                                               ; preds = %17
  %19 = icmp sgt i32 %8, 0
  %20 = zext i32 %3 to i64
  %21 = zext i32 %8 to i64
  br label %29

22:                                               ; preds = %22, %14
  %23 = phi i64 [ 0, %14 ], [ %27, %22 ]
  %24 = mul nsw i64 %23, %15
  %25 = getelementptr inbounds double, ptr %12, i64 %24
  %26 = getelementptr inbounds ptr, ptr %6, i64 %23
  store ptr %25, ptr %26, align 8, !tbaa !15
  %27 = add nuw nsw i64 %23, 1
  %28 = icmp eq i64 %27, %16
  br i1 %28, label %17, label %22

29:                                               ; preds = %34, %18
  %30 = phi i64 [ 0, %18 ], [ %35, %34 ]
  br i1 %19, label %31, label %34

31:                                               ; preds = %29
  %32 = getelementptr inbounds ptr, ptr %6, i64 %30
  br label %37

33:                                               ; preds = %34, %17, %1
  ret ptr %6

34:                                               ; preds = %37, %29
  %35 = add nuw nsw i64 %30, 1
  %36 = icmp eq i64 %35, %20
  br i1 %36, label %33, label %29

37:                                               ; preds = %37, %31
  %38 = phi i64 [ 0, %31 ], [ %44, %37 ]
  %39 = tail call i32 @glibc_compat_rand() #23
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %40, 0x41DFFFFFFFC00000
  %42 = load ptr, ptr %32, align 8, !tbaa !15
  %43 = getelementptr inbounds double, ptr %42, i64 %38
  store double %41, ptr %43, align 8, !tbaa !28
  %44 = add nuw nsw i64 %38, 1
  %45 = icmp eq i64 %44, %21
  br i1 %45, label %34, label %37
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @logo(i32 noundef %0) #6 {
  %2 = alloca [100 x i8], align 16
  %3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.41)
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.41)
  tail call void @center_print(ptr noundef nonnull @.str.1, i32 noundef 79) #25
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %2) #26
  %6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %0) #23
  call void @center_print(ptr noundef nonnull %2, i32 noundef 79) #25
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.41)
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %2) #26
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize uwtable
define internal void @center_print(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #27
  %4 = trunc i64 %3 to i32
  %5 = sub nsw i32 %1, %4
  %6 = icmp slt i32 %5, -1
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = sdiv i32 %5, 2
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %13, %9 ], [ 0, %7 ]
  %11 = load ptr, ptr @stdout, align 8, !tbaa !15
  %12 = tail call i32 @fputs(ptr noundef nonnull @.str.3, ptr noundef %11) #25
  %13 = add nuw nsw i32 %10, 1
  %14 = icmp eq i32 %10, %8
  br i1 %14, label %15, label %9

15:                                               ; preds = %9, %2
  %16 = load ptr, ptr @stdout, align 8, !tbaa !15
  %17 = tail call i32 @fputs(ptr noundef %0, ptr noundef %16) #25
  %18 = load ptr, ptr @stdout, align 8, !tbaa !15
  %19 = tail call i32 @fputs(ptr noundef nonnull @.str.4, ptr noundef %18) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize uwtable
define internal void @border_print() #6 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.41)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @fancy_int(i32 noundef %0) #6 {
  %2 = icmp slt i32 %0, 1000
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %0) #25
  br label %27

5:                                                ; preds = %1
  %6 = icmp ult i32 %0, 1000000
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = udiv i32 %0, 1000
  %9 = urem i32 %0, 1000
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %8, i32 noundef %9) #25
  br label %27

11:                                               ; preds = %5
  %12 = icmp ult i32 %0, 1000000000
  %13 = udiv i32 %0, 1000000
  %14 = urem i32 %0, 1000000
  br i1 %12, label %15, label %20

15:                                               ; preds = %11
  %16 = urem i32 %0, 1000000
  %17 = udiv i32 %16, 1000
  %18 = urem i32 %0, 1000
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %13, i32 noundef %17, i32 noundef %18) #25
  br label %27

20:                                               ; preds = %11
  %21 = udiv i32 %0, 1000000000
  %22 = urem i32 %0, 1000000000
  %23 = udiv i32 %22, 1000000
  %24 = udiv i32 %14, 1000
  %25 = urem i32 %0, 1000
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %21, i32 noundef %23, i32 noundef %24, i32 noundef %25) #25
  br label %27

27:                                               ; preds = %20, %15, %7, %3
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind optsize uwtable
define internal void @read_CLI(ptr noalias nocapture writeonly sret(%struct.Input) align 4 %0, i32 noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 3
  store <4 x i32> <i32 1, i32 355, i32 10000000, i32 1>, ptr %0, align 4, !tbaa !29
  %7 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 7
  store <4 x i32> <i32 1000, i32 100, i32 4, i32 1>, ptr %7, align 4, !tbaa !7
  %10 = icmp sgt i32 %1, 1
  br i1 %10, label %13, label %133

11:                                               ; preds = %107
  %.lcssa5 = phi i32 [ %108, %107 ]
  %.lcssa4 = phi i32 [ %109, %107 ]
  %.lcssa3 = phi i32 [ %110, %107 ]
  %.lcssa2 = phi i32 [ %111, %107 ]
  %.lcssa1 = phi i32 [ %112, %107 ]
  %.lcssa = phi i32 [ %113, %107 ]
  %12 = icmp slt i32 %.lcssa, 1
  br i1 %12, label %117, label %118

13:                                               ; preds = %107, %3
  %14 = phi i32 [ %108, %107 ], [ 1, %3 ]
  %15 = phi i32 [ %109, %107 ], [ 100, %3 ]
  %16 = phi i32 [ %110, %107 ], [ 1000, %3 ]
  %17 = phi i32 [ %111, %107 ], [ 10000000, %3 ]
  %18 = phi i32 [ %112, %107 ], [ 355, %3 ]
  %19 = phi i32 [ %113, %107 ], [ 1, %3 ]
  %20 = phi i32 [ %115, %107 ], [ 1, %3 ]
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(3) @.str.10) #27
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %13
  %27 = add nsw i32 %20, 1
  %28 = icmp slt i32 %27, %1
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = sext i32 %27 to i64
  %31 = getelementptr inbounds ptr, ptr %2, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !15
  %33 = tail call i32 @atoi(ptr nocapture noundef %32) #27
  store i32 %33, ptr %0, align 4, !tbaa !30
  br label %107

34:                                               ; preds = %26
  tail call void @print_CLI_error() #25
  unreachable

35:                                               ; preds = %13
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(3) @.str.11) #27
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = add nsw i32 %20, 1
  %40 = icmp slt i32 %39, %1
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = sext i32 %39 to i64
  %43 = getelementptr inbounds ptr, ptr %2, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !15
  %45 = tail call i32 @atoi(ptr nocapture noundef %44) #27
  store i32 %45, ptr %5, align 4, !tbaa !31
  br label %107

46:                                               ; preds = %38
  tail call void @print_CLI_error() #25
  unreachable

47:                                               ; preds = %35
  %48 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(3) @.str.12) #27
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = add nsw i32 %20, 1
  %52 = icmp slt i32 %51, %1
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = sext i32 %51 to i64
  %55 = getelementptr inbounds ptr, ptr %2, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !15
  %57 = tail call i32 @atoi(ptr nocapture noundef %56) #27
  store i32 %57, ptr %4, align 4, !tbaa !13
  br label %107

58:                                               ; preds = %50
  tail call void @print_CLI_error() #25
  unreachable

59:                                               ; preds = %47
  %60 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(3) @.str.13) #27
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = add nsw i32 %20, 1
  %64 = icmp slt i32 %63, %1
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = sext i32 %63 to i64
  %67 = getelementptr inbounds ptr, ptr %2, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !15
  %69 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %68, ptr noundef nonnull dereferenceable(6) @.str.14) #27
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, ptr %6, align 4, !tbaa !32
  br label %107

72:                                               ; preds = %65
  %73 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %68, ptr noundef nonnull dereferenceable(6) @.str.15) #27
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 1, ptr %6, align 4, !tbaa !32
  br label %107

76:                                               ; preds = %72
  tail call void @print_CLI_error() #25
  unreachable

77:                                               ; preds = %62
  tail call void @print_CLI_error() #25
  unreachable

78:                                               ; preds = %59
  %79 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(3) @.str.16) #27
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 0, ptr %9, align 4, !tbaa !33
  br label %107

82:                                               ; preds = %78
  %83 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(3) @.str.17) #27
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = add nsw i32 %20, 1
  %87 = icmp slt i32 %86, %1
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = sext i32 %86 to i64
  %90 = getelementptr inbounds ptr, ptr %2, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !15
  %92 = tail call i32 @atoi(ptr nocapture noundef %91) #27
  store i32 %92, ptr %8, align 4, !tbaa !14
  br label %107

93:                                               ; preds = %85
  tail call void @print_CLI_error() #25
  unreachable

94:                                               ; preds = %82
  %95 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(3) @.str.18) #27
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = add nsw i32 %20, 1
  %99 = icmp slt i32 %98, %1
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = sext i32 %98 to i64
  %102 = getelementptr inbounds ptr, ptr %2, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !15
  %104 = tail call i32 @atoi(ptr nocapture noundef %103) #27
  store i32 %104, ptr %7, align 4, !tbaa !11
  br label %107

105:                                              ; preds = %97
  tail call void @print_CLI_error() #25
  unreachable

106:                                              ; preds = %94
  tail call void @print_CLI_error() #25
  unreachable

107:                                              ; preds = %100, %88, %81, %75, %71, %53, %41, %29
  %108 = phi i32 [ %14, %29 ], [ %14, %41 ], [ %14, %53 ], [ 0, %71 ], [ 1, %75 ], [ %14, %81 ], [ %14, %88 ], [ %14, %100 ]
  %109 = phi i32 [ %15, %29 ], [ %15, %41 ], [ %15, %53 ], [ %15, %71 ], [ %15, %75 ], [ %15, %81 ], [ %92, %88 ], [ %15, %100 ]
  %110 = phi i32 [ %16, %29 ], [ %16, %41 ], [ %16, %53 ], [ %16, %71 ], [ %16, %75 ], [ %16, %81 ], [ %16, %88 ], [ %104, %100 ]
  %111 = phi i32 [ %17, %29 ], [ %45, %41 ], [ %17, %53 ], [ %17, %71 ], [ %17, %75 ], [ %17, %81 ], [ %17, %88 ], [ %17, %100 ]
  %112 = phi i32 [ %18, %29 ], [ %18, %41 ], [ %57, %53 ], [ %18, %71 ], [ %18, %75 ], [ %18, %81 ], [ %18, %88 ], [ %18, %100 ]
  %113 = phi i32 [ %33, %29 ], [ %19, %41 ], [ %19, %53 ], [ %19, %71 ], [ %19, %75 ], [ %19, %81 ], [ %19, %88 ], [ %19, %100 ]
  %114 = phi i32 [ %27, %29 ], [ %39, %41 ], [ %51, %53 ], [ %63, %71 ], [ %63, %75 ], [ %20, %81 ], [ %86, %88 ], [ %98, %100 ]
  %115 = add nsw i32 %114, 1
  %116 = icmp slt i32 %115, %1
  br i1 %116, label %13, label %11

117:                                              ; preds = %11
  tail call void @print_CLI_error() #25
  unreachable

118:                                              ; preds = %11
  %119 = icmp slt i32 %.lcssa1, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %118
  tail call void @print_CLI_error() #25
  unreachable

121:                                              ; preds = %118
  %122 = icmp slt i32 %.lcssa2, 1
  br i1 %122, label %123, label %124

123:                                              ; preds = %121
  tail call void @print_CLI_error() #25
  unreachable

124:                                              ; preds = %121
  %125 = icmp slt i32 %.lcssa3, 1
  br i1 %125, label %126, label %127

126:                                              ; preds = %124
  tail call void @print_CLI_error() #25
  unreachable

127:                                              ; preds = %124
  %128 = icmp slt i32 %.lcssa4, 1
  br i1 %128, label %129, label %130

129:                                              ; preds = %127
  tail call void @print_CLI_error() #25
  unreachable

130:                                              ; preds = %127
  %131 = icmp eq i32 %.lcssa5, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %130
  store i32 68, ptr %4, align 4, !tbaa !13
  br label %133

133:                                              ; preds = %132, %130, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @print_CLI_error() #12 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.42)
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.43)
  %3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.44)
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.45)
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.46)
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.47)
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.48)
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.49)
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.50)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.51)
  tail call void @exit(i32 noundef 4) #28
  unreachable
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind optsize uwtable
define internal void @print_input_summary(ptr noundef byval(%struct.Input) align 8 %0) #3 {
  %2 = tail call i64 @get_mem_estimate(ptr noundef nonnull byval(%struct.Input) align 8 %0) #23
  %3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.52)
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30) #25
  %5 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !32
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, ptr @str.56, ptr @str.53
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) %8)
  %10 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 4, !tbaa !33
  %12 = icmp eq i32 %11, 1
  %13 = select i1 %12, ptr @str.55, ptr @str.54
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) %13)
  %15 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !13
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %16) #25
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36) #25
  %19 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !11
  tail call void @fancy_int(i32 noundef %20) #25
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37) #25
  %22 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !14
  tail call void @fancy_int(i32 noundef %23) #25
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38) #25
  %25 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !31
  tail call void @fancy_int(i32 noundef %26) #25
  %27 = load i32, ptr %0, align 8, !tbaa !30
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %27) #25
  %29 = uitofp i64 %2 to double
  %30 = fmul double %29, 0x3F50000000000000
  %31 = fmul double %30, 0x3F50000000000000
  %32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, double noundef %31) #25
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.Input, align 8
  %4 = alloca %struct.Materials, align 8
  %5 = alloca %struct.CalcDataPtrs, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x double], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = tail call i64 @time(ptr noundef null) #23
  %11 = trunc i64 %10 to i32
  tail call void @glibc_compat_srand(i32 noundef %11) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  call void @read_CLI(ptr nonnull sret(%struct.Input) align 4 %3, i32 noundef %0, ptr noundef %1) #23
  call void @logo(i32 noundef 9) #23
  call void @center_print(ptr noundef nonnull @.str, i32 noundef 79) #23
  call void @border_print() #23
  call void @print_input_summary(ptr noundef nonnull byval(%struct.Input) align 8 %3) #23
  call void @border_print() #23
  call void @center_print(ptr noundef nonnull @.str.1.1, i32 noundef 79) #23
  call void @border_print() #23
  %12 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %13 = call ptr @generate_n_poles(ptr noundef nonnull byval(%struct.Input) align 8 %3) #23
  %14 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13)
  %15 = call ptr @generate_n_windows(ptr noundef nonnull byval(%struct.Input) align 8 %3) #23
  %16 = call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  call void @get_materials(ptr nonnull sret(%struct.Materials) align 8 %4, ptr noundef nonnull byval(%struct.Input) align 8 %3) #23
  %17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.15)
  %18 = call ptr @generate_poles(ptr noundef nonnull byval(%struct.Input) align 8 %3, ptr noundef %13) #23
  %19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  %20 = call ptr @generate_window_params(ptr noundef nonnull byval(%struct.Input) align 8 %3, ptr noundef %15, ptr noundef %13) #23
  %21 = call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  %22 = call ptr @generate_pseudo_K0RS(ptr noundef nonnull byval(%struct.Input) align 8 %3) #23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #26
  store ptr %13, ptr %5, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.CalcDataPtrs, ptr %5, i64 0, i32 1
  store ptr %15, ptr %23, align 8, !tbaa !37
  %24 = getelementptr inbounds %struct.CalcDataPtrs, ptr %5, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !38
  %25 = getelementptr inbounds %struct.CalcDataPtrs, ptr %5, i64 0, i32 3
  store ptr %18, ptr %25, align 8, !tbaa !39
  %26 = getelementptr inbounds %struct.CalcDataPtrs, ptr %5, i64 0, i32 4
  store ptr %20, ptr %26, align 8, !tbaa !40
  %27 = getelementptr inbounds %struct.CalcDataPtrs, ptr %5, i64 0, i32 5
  store ptr %22, ptr %27, align 8, !tbaa !41
  %28 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8.3, double noundef 0.000000e+00) #25
  call void @border_print() #23
  call void @center_print(ptr noundef nonnull @.str.9.4, i32 noundef 79) #23
  call void @border_print() #23
  %29 = call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  %30 = call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  %31 = call i64 @time(ptr noundef null) #23
  %32 = add nsw i64 %31, 1
  store i64 %32, ptr %6, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #26
  store i64 0, ptr %8, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #26
  store i64 0, ptr %9, align 8, !tbaa !42
  %33 = getelementptr inbounds %struct.Input, ptr %3, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !27
  %35 = sext i32 %34 to i64
  %36 = shl nsw i64 %35, 4
  %37 = call noalias ptr @malloc(i64 noundef %36) #24
  %38 = getelementptr inbounds %struct.Input, ptr %3, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !31
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %43, %2
  call void @free(ptr noundef %37) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  %42 = call i32 @puts(ptr nonnull dereferenceable(1) @str.20)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  ret i32 0

43:                                               ; preds = %43, %2
  %44 = phi i32 [ %47, %43 ], [ 0, %2 ]
  %45 = call i32 @pick_mat(ptr noundef nonnull %6) #23
  %46 = call double @rn(ptr noundef nonnull %6) #23
  call void @calculate_macro_xs(ptr noundef nonnull %7, i32 noundef %45, double noundef %46, ptr noundef nonnull byval(%struct.Input) align 8 %3, ptr noundef nonnull byval(%struct.CalcDataPtrs) align 8 %5, ptr noundef %37, ptr noundef nonnull %8, ptr noundef nonnull %9) #23
  %47 = add nuw nsw i32 %44, 1
  %48 = load i32, ptr %38, align 8, !tbaa !31
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %43, label %41
}

; Function Attrs: nounwind optsize
declare i64 @time(ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nounwind optsize uwtable
define internal void @get_materials(ptr noalias nocapture writeonly sret(%struct.Materials) align 8 %0, ptr nocapture noundef readonly byval(%struct.Input) align 8 %1) #3 {
  %3 = getelementptr inbounds i8, ptr %1, i64 4
  %4 = load i32, ptr %3, align 4
  %5 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #24
  %6 = icmp eq i32 %4, 68
  %7 = select i1 %6, i32 34, i32 321
  store i32 %7, ptr %5, align 4, !tbaa !7
  %8 = getelementptr inbounds i32, ptr %5, i64 1
  store <4 x i32> <i32 5, i32 4, i32 4, i32 27>, ptr %8, align 4, !tbaa !7
  %9 = getelementptr inbounds i32, ptr %5, i64 5
  store <4 x i32> <i32 21, i32 21, i32 21, i32 21>, ptr %9, align 4, !tbaa !7
  %10 = getelementptr inbounds i32, ptr %5, i64 9
  store i32 21, ptr %10, align 4, !tbaa !7
  %11 = getelementptr inbounds i32, ptr %5, i64 10
  store i32 9, ptr %11, align 4, !tbaa !7
  %12 = getelementptr inbounds i32, ptr %5, i64 11
  store i32 9, ptr %12, align 4, !tbaa !7
  store ptr %5, ptr %0, align 8, !tbaa !44
  %13 = tail call ptr @load_mats(ptr noundef nonnull byval(%struct.Input) align 8 %1, ptr noundef nonnull %5) #25
  %14 = getelementptr inbounds %struct.Materials, ptr %0, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !45
  %15 = tail call ptr @load_concs(ptr noundef nonnull %5) #25
  %16 = getelementptr inbounds %struct.Materials, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !46
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal noalias ptr @load_mats(ptr nocapture noundef readonly byval(%struct.Input) align 8 %0, ptr nocapture noundef readonly %1) #6 {
  %3 = alloca [321 x i32], align 16
  %4 = tail call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #24
  br label %38

5:                                                ; preds = %38
  call void @llvm.lifetime.start.p0(i64 1284, ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1284) %3, ptr noundef nonnull align 16 dereferenceable(1284) @__const.load_mats.mats0_Lrg, i64 1284, i1 false)
  br label %6

6:                                                ; preds = %34, %5
  %7 = phi i64 [ 0, %5 ], [ %35, %34 ]
  %8 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %5 ], [ %36, %34 ]
  %9 = trunc i64 %7 to i32
  %10 = icmp ult <4 x i64> %8, <i64 287, i64 287, i64 287, i64 287>
  %11 = extractelement <4 x i1> %10, i64 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = add nuw nsw i64 %7, 34
  %14 = getelementptr inbounds [321 x i32], ptr %3, i64 0, i64 %13
  %15 = add i32 %9, 68
  store i32 %15, ptr %14, align 8, !tbaa !7
  br label %16

16:                                               ; preds = %12, %6
  %17 = extractelement <4 x i1> %10, i64 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = add i64 %7, 35
  %20 = getelementptr inbounds [321 x i32], ptr %3, i64 0, i64 %19
  %21 = add i32 %9, 69
  store i32 %21, ptr %20, align 4, !tbaa !7
  br label %22

22:                                               ; preds = %18, %16
  %23 = extractelement <4 x i1> %10, i64 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = add i64 %7, 36
  %26 = getelementptr inbounds [321 x i32], ptr %3, i64 0, i64 %25
  %27 = add i32 %9, 70
  store i32 %27, ptr %26, align 16, !tbaa !7
  br label %28

28:                                               ; preds = %24, %22
  %29 = extractelement <4 x i1> %10, i64 3
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = add i64 %7, 37
  %32 = getelementptr inbounds [321 x i32], ptr %3, i64 0, i64 %31
  %33 = add i32 %9, 71
  store i32 %33, ptr %32, align 4, !tbaa !7
  br label %34

34:                                               ; preds = %30, %28
  %35 = add i64 %7, 4
  %36 = add <4 x i64> %8, <i64 4, i64 4, i64 4, i64 4>
  %37 = icmp eq i64 %35, 288
  br i1 %37, label %48, label %6, !llvm.loop !47

38:                                               ; preds = %38, %2
  %39 = phi i64 [ 0, %2 ], [ %46, %38 ]
  %40 = getelementptr inbounds i32, ptr %1, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !7
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 2
  %44 = tail call noalias ptr @malloc(i64 noundef %43) #24
  %45 = getelementptr inbounds ptr, ptr %4, i64 %39
  store ptr %44, ptr %45, align 8, !tbaa !15
  %46 = add nuw nsw i64 %39, 1
  %47 = icmp eq i64 %46, 12
  br i1 %47, label %5, label %38

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !13
  %51 = icmp eq i32 %50, 68
  %52 = load ptr, ptr %4, align 8, !tbaa !15
  %53 = load i32, ptr %1, align 4, !tbaa !7
  %54 = sext i32 %53 to i64
  %55 = shl nsw i64 %54, 2
  br i1 %51, label %56, label %57

56:                                               ; preds = %48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %52, ptr nonnull align 16 @__const.load_mats.mats0_Sml, i64 %55, i1 false)
  br label %58

57:                                               ; preds = %48
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %52, ptr nonnull align 16 %3, i64 %55, i1 false)
  br label %58

58:                                               ; preds = %57, %56
  %59 = getelementptr inbounds ptr, ptr %4, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !15
  %61 = getelementptr inbounds i32, ptr %1, i64 1
  %62 = load i32, ptr %61, align 4, !tbaa !7
  %63 = sext i32 %62 to i64
  %64 = shl nsw i64 %63, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %60, ptr nonnull align 16 @__const.load_mats.mats1, i64 %64, i1 false)
  %65 = getelementptr inbounds ptr, ptr %4, i64 2
  %66 = load ptr, ptr %65, align 8, !tbaa !15
  %67 = getelementptr inbounds i32, ptr %1, i64 2
  %68 = load i32, ptr %67, align 4, !tbaa !7
  %69 = sext i32 %68 to i64
  %70 = shl nsw i64 %69, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %66, ptr nonnull align 16 @__const.load_mats.mats3, i64 %70, i1 false)
  %71 = getelementptr inbounds ptr, ptr %4, i64 3
  %72 = load ptr, ptr %71, align 8, !tbaa !15
  %73 = getelementptr inbounds i32, ptr %1, i64 3
  %74 = load i32, ptr %73, align 4, !tbaa !7
  %75 = sext i32 %74 to i64
  %76 = shl nsw i64 %75, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %72, ptr nonnull align 16 @__const.load_mats.mats3, i64 %76, i1 false)
  %77 = getelementptr inbounds ptr, ptr %4, i64 4
  %78 = load ptr, ptr %77, align 8, !tbaa !15
  %79 = getelementptr inbounds i32, ptr %1, i64 4
  %80 = load i32, ptr %79, align 4, !tbaa !7
  %81 = sext i32 %80 to i64
  %82 = shl nsw i64 %81, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %78, ptr nonnull align 16 @__const.load_mats.mats4, i64 %82, i1 false)
  %83 = getelementptr inbounds ptr, ptr %4, i64 5
  %84 = load ptr, ptr %83, align 8, !tbaa !15
  %85 = getelementptr inbounds i32, ptr %1, i64 5
  %86 = load i32, ptr %85, align 4, !tbaa !7
  %87 = sext i32 %86 to i64
  %88 = shl nsw i64 %87, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %84, ptr nonnull align 16 @__const.load_mats.mats9, i64 %88, i1 false)
  %89 = getelementptr inbounds ptr, ptr %4, i64 6
  %90 = load ptr, ptr %89, align 8, !tbaa !15
  %91 = getelementptr inbounds i32, ptr %1, i64 6
  %92 = load i32, ptr %91, align 4, !tbaa !7
  %93 = sext i32 %92 to i64
  %94 = shl nsw i64 %93, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %90, ptr nonnull align 16 @__const.load_mats.mats9, i64 %94, i1 false)
  %95 = getelementptr inbounds ptr, ptr %4, i64 7
  %96 = load ptr, ptr %95, align 8, !tbaa !15
  %97 = getelementptr inbounds i32, ptr %1, i64 7
  %98 = load i32, ptr %97, align 4, !tbaa !7
  %99 = sext i32 %98 to i64
  %100 = shl nsw i64 %99, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %96, ptr nonnull align 16 @__const.load_mats.mats9, i64 %100, i1 false)
  %101 = getelementptr inbounds ptr, ptr %4, i64 8
  %102 = load ptr, ptr %101, align 8, !tbaa !15
  %103 = getelementptr inbounds i32, ptr %1, i64 8
  %104 = load i32, ptr %103, align 4, !tbaa !7
  %105 = sext i32 %104 to i64
  %106 = shl nsw i64 %105, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %102, ptr nonnull align 16 @__const.load_mats.mats9, i64 %106, i1 false)
  %107 = getelementptr inbounds ptr, ptr %4, i64 9
  %108 = load ptr, ptr %107, align 8, !tbaa !15
  %109 = getelementptr inbounds i32, ptr %1, i64 9
  %110 = load i32, ptr %109, align 4, !tbaa !7
  %111 = sext i32 %110 to i64
  %112 = shl nsw i64 %111, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %108, ptr nonnull align 16 @__const.load_mats.mats9, i64 %112, i1 false)
  %113 = getelementptr inbounds ptr, ptr %4, i64 10
  %114 = load ptr, ptr %113, align 8, !tbaa !15
  %115 = getelementptr inbounds i32, ptr %1, i64 10
  %116 = load i32, ptr %115, align 4, !tbaa !7
  %117 = sext i32 %116 to i64
  %118 = shl nsw i64 %117, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %114, ptr nonnull align 16 @__const.load_mats.mats11, i64 %118, i1 false)
  %119 = getelementptr inbounds ptr, ptr %4, i64 11
  %120 = load ptr, ptr %119, align 8, !tbaa !15
  %121 = getelementptr inbounds i32, ptr %1, i64 11
  %122 = load i32, ptr %121, align 4, !tbaa !7
  %123 = sext i32 %122 to i64
  %124 = shl nsw i64 %123, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %120, ptr nonnull align 16 @__const.load_mats.mats11, i64 %124, i1 false)
  call void @llvm.lifetime.end.p0(i64 1284, ptr nonnull %3) #26
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @load_concs(ptr nocapture noundef readonly %0) #3 {
  %2 = tail call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #24
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %11, %3 ]
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !7
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #24
  %10 = getelementptr inbounds ptr, ptr %2, i64 %4
  store ptr %9, ptr %10, align 8, !tbaa !15
  %11 = add nuw nsw i64 %4, 1
  %12 = icmp eq i64 %11, 12
  br i1 %12, label %13, label %3

13:                                               ; preds = %21, %3
  %14 = phi i64 [ %22, %21 ], [ 0, %3 ]
  %15 = getelementptr inbounds i32, ptr %0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !7
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %2, i64 %14
  br label %24

20:                                               ; preds = %21
  ret ptr %2

21:                                               ; preds = %24, %13
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, 12
  br i1 %23, label %20, label %13

24:                                               ; preds = %24, %18
  %25 = phi i64 [ 0, %18 ], [ %31, %24 ]
  %26 = tail call i32 @glibc_compat_rand() #23
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 0x41DFFFFFFFC00000
  %29 = load ptr, ptr %19, align 8, !tbaa !15
  %30 = getelementptr inbounds double, ptr %29, i64 %25
  store double %28, ptr %30, align 8, !tbaa !28
  %31 = add nuw nsw i64 %25, 1
  %32 = load i32, ptr %15, align 4, !tbaa !7
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %24, label %21
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @pick_mat(ptr noundef %0) #3 {
  %2 = alloca [12 x double], align 16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #26
  store <2 x double> <double 1.400000e-01, double 5.200000e-02>, ptr %2, align 16, !tbaa !28
  %3 = getelementptr inbounds [12 x double], ptr %2, i64 0, i64 2
  store <2 x double> <double 2.750000e-01, double 1.340000e-01>, ptr %3, align 16, !tbaa !28
  %4 = getelementptr inbounds [12 x double], ptr %2, i64 0, i64 4
  store <2 x double> <double 1.540000e-01, double 6.400000e-02>, ptr %4, align 16, !tbaa !28
  %5 = getelementptr inbounds [12 x double], ptr %2, i64 0, i64 6
  store <2 x double> <double 6.600000e-02, double 5.500000e-02>, ptr %5, align 16, !tbaa !28
  %6 = getelementptr inbounds [12 x double], ptr %2, i64 0, i64 8
  store <2 x double> <double 8.000000e-03, double 1.500000e-02>, ptr %6, align 16, !tbaa !28
  %7 = getelementptr inbounds [12 x double], ptr %2, i64 0, i64 10
  store <2 x double> <double 2.500000e-02, double 1.300000e-02>, ptr %7, align 16, !tbaa !28
  %8 = tail call double @rn(ptr noundef %0) #23
  br label %9

9:                                                ; preds = %24, %1
  %10 = phi i64 [ 0, %1 ], [ %25, %24 ]
  %11 = trunc i64 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %16, %9
  %14 = phi double [ 0.000000e+00, %9 ], [ %21, %16 ]
  %15 = fcmp uge double %8, %14
  br i1 %15, label %24, label %27

16:                                               ; preds = %16, %9
  %17 = phi i64 [ %22, %16 ], [ %10, %9 ]
  %18 = phi double [ %21, %16 ], [ 0.000000e+00, %9 ]
  %19 = getelementptr inbounds [12 x double], ptr %2, i64 0, i64 %17
  %20 = load double, ptr %19, align 8, !tbaa !28
  %21 = fadd double %18, %20
  %22 = add nsw i64 %17, -1
  %23 = icmp sgt i64 %17, 1
  br i1 %23, label %16, label %13

24:                                               ; preds = %13
  %25 = add nuw nsw i64 %10, 1
  %26 = icmp eq i64 %25, 12
  br i1 %26, label %27, label %9

27:                                               ; preds = %24, %13
  %28 = phi i32 [ 0, %24 ], [ %11, %13 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #26
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal double @rn(ptr nocapture noundef %0) #17 {
  %2 = load i64, ptr %0, align 8, !tbaa !42
  %3 = mul i64 %2, 16807
  %4 = urem i64 %3, 2147483647
  store i64 %4, ptr %0, align 8, !tbaa !42
  %5 = uitofp i64 %4 to double
  %6 = fdiv double %5, 0x41DFFFFFFFC00000
  ret double %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @get_mem_estimate(ptr nocapture noundef readonly byval(%struct.Input) align 8 %0) #18 {
  %2 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !13
  %4 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !11
  %6 = mul nsw i32 %5, %3
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 72
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !14
  %12 = mul nsw i32 %11, %3
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 5
  %15 = getelementptr inbounds %struct.Input, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !27
  %17 = mul nsw i32 %16, %3
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %9
  %20 = shl nsw i64 %19, 3
  %21 = shl nsw i32 %3, 1
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 2
  %24 = shl nsw i64 %9, 4
  %25 = add nsw i64 %24, %23
  %26 = add nsw i64 %25, %8
  %27 = add nsw i64 %26, %14
  %28 = add nsw i64 %27, %20
  ret i64 %28
}

; Function Attrs: nounwind optsize uwtable
define internal { double, double } @fast_nuclear_W(double noundef %0, double noundef %1) #3 {
  %3 = tail call double @cabs(double noundef %0, double noundef %1) #23
  %4 = fcmp olt double %3, 6.000000e+00
  %5 = fmul double %0, 0.000000e+00
  br i1 %4, label %6, label %138

6:                                                ; preds = %2
  %7 = fmul double %1, 1.200000e+01
  %8 = fmul double %1, 0.000000e+00
  %9 = fmul double %0, 1.200000e+01
  %10 = fsub double %5, %7
  %11 = fadd double %9, %8
  %12 = fcmp ord double %10, 0.000000e+00
  br i1 %12, label %19, label %13, !prof !50

13:                                               ; preds = %6
  %14 = fcmp uno double %11, 0.000000e+00
  br i1 %14, label %15, label %19, !prof !51

15:                                               ; preds = %13
  %16 = tail call { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.200000e+01, double noundef %0, double noundef %1) #23
  %17 = extractvalue { double, double } %16, 0
  %18 = extractvalue { double, double } %16, 1
  br label %19

19:                                               ; preds = %15, %13, %6
  %20 = phi double [ %10, %6 ], [ %10, %13 ], [ %17, %15 ]
  %21 = phi double [ %11, %6 ], [ %11, %13 ], [ %18, %15 ]
  %22 = tail call { double, double } @cexp(double noundef %20, double noundef %21) #23
  %23 = extractvalue { double, double } %22, 0
  %24 = extractvalue { double, double } %22, 1
  %25 = fsub double 1.000000e+00, %23
  %26 = fsub double 0.000000e+00, %24
  %27 = fmul double %25, 0.000000e+00
  %28 = fmul double %26, 0.000000e+00
  %29 = fsub double %27, %26
  %30 = fadd double %25, %28
  %31 = fcmp uno double %29, 0.000000e+00
  br i1 %31, label %32, label %38, !prof !51

32:                                               ; preds = %19
  %33 = fcmp uno double %30, 0.000000e+00
  br i1 %33, label %34, label %38, !prof !51

34:                                               ; preds = %32
  %35 = tail call { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %25, double noundef %26) #23
  %36 = extractvalue { double, double } %35, 0
  %37 = extractvalue { double, double } %35, 1
  br label %38

38:                                               ; preds = %34, %32, %19
  %39 = phi double [ %29, %19 ], [ %29, %32 ], [ %36, %34 ]
  %40 = phi double [ %30, %19 ], [ %30, %32 ], [ %37, %34 ]
  %41 = tail call { double, double } @__divdc3(double noundef %39, double noundef %40, double noundef %9, double noundef %7) #23
  %42 = extractvalue { double, double } %41, 0
  %43 = fcmp ord double %11, 0.000000e+00
  %44 = insertelement <2 x double> poison, double %0, i64 0
  %45 = insertelement <2 x double> %44, double %1, i64 1
  %46 = fmul <2 x double> %45, <double 1.440000e+02, double 1.440000e+02>
  %47 = fmul <2 x double> %46, %45
  %48 = extractelement <2 x double> %46, i64 0
  %49 = fmul double %48, %1
  %50 = extractelement <2 x double> %46, i64 1
  %51 = fmul double %50, %0
  %52 = shufflevector <2 x double> %47, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %53 = fsub <2 x double> %47, %52
  %54 = extractelement <2 x double> %53, i64 0
  %55 = fadd double %49, %51
  %56 = fcmp ord double %54, 0.000000e+00
  %57 = fcmp ord double %55, 0.000000e+00
  %58 = or i1 %12, %43
  %59 = or i1 %56, %57
  br label %67

60:                                               ; preds = %91
  %.lcssa = phi <2 x double> [ %106, %91 ]
  %61 = extractvalue { double, double } %41, 1
  %62 = fmul double %1, 8.124330e+01
  %63 = fmul double %0, 8.124330e+01
  %64 = fsub double %5, %62
  %65 = fadd double %63, %8
  %66 = fcmp uno double %64, 0.000000e+00
  br i1 %66, label %109, label %115, !prof !51

67:                                               ; preds = %91, %38
  %68 = phi i64 [ 0, %38 ], [ %107, %91 ]
  %69 = phi <2 x double> [ zeroinitializer, %38 ], [ %106, %91 ]
  %70 = getelementptr inbounds [10 x double], ptr @__const.fast_nuclear_W.neg_1n, i64 0, i64 %68
  %71 = load double, ptr %70, align 8, !tbaa !28
  br i1 %58, label %76, label %72, !prof !52

72:                                               ; preds = %67
  %73 = tail call { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.200000e+01, double noundef %0, double noundef %1) #23
  %74 = extractvalue { double, double } %73, 0
  %75 = extractvalue { double, double } %73, 1
  br label %76

76:                                               ; preds = %72, %67
  %77 = phi double [ %10, %67 ], [ %74, %72 ]
  %78 = phi double [ %11, %67 ], [ %75, %72 ]
  %79 = tail call { double, double } @cexp(double noundef %77, double noundef %78) #23
  %80 = extractvalue { double, double } %79, 0
  %81 = extractvalue { double, double } %79, 1
  %82 = fmul double %71, %80
  %83 = fmul double %71, %81
  %84 = fadd double %82, -1.000000e+00
  %85 = getelementptr inbounds [10 x double], ptr @__const.fast_nuclear_W.denominator_left, i64 0, i64 %68
  %86 = load double, ptr %85, align 8, !tbaa !28
  br i1 %59, label %91, label %87, !prof !52

87:                                               ; preds = %76
  %88 = tail call { double, double } @__muldc3(double noundef %48, double noundef %50, double noundef %0, double noundef %1) #23
  %89 = extractvalue { double, double } %88, 0
  %90 = extractvalue { double, double } %88, 1
  br label %91

91:                                               ; preds = %87, %76
  %92 = phi double [ %54, %76 ], [ %89, %87 ]
  %93 = phi double [ %55, %76 ], [ %90, %87 ]
  %94 = fsub double %86, %92
  %95 = fneg double %93
  %96 = getelementptr inbounds [10 x double], ptr @__const.fast_nuclear_W.an, i64 0, i64 %68
  %97 = load double, ptr %96, align 8, !tbaa !28
  %98 = tail call { double, double } @__divdc3(double noundef %84, double noundef %83, double noundef %94, double noundef %95) #23
  %99 = extractvalue { double, double } %98, 0
  %100 = extractvalue { double, double } %98, 1
  %101 = insertelement <2 x double> poison, double %97, i64 0
  %102 = shufflevector <2 x double> %101, <2 x double> poison, <2 x i32> zeroinitializer
  %103 = insertelement <2 x double> poison, double %100, i64 0
  %104 = insertelement <2 x double> %103, double %99, i64 1
  %105 = fmul <2 x double> %102, %104
  %106 = fadd <2 x double> %69, %105
  %107 = add nuw nsw i64 %68, 1
  %108 = icmp eq i64 %107, 10
  br i1 %108, label %60, label %67

109:                                              ; preds = %60
  %110 = fcmp uno double %65, 0.000000e+00
  br i1 %110, label %111, label %115, !prof !51

111:                                              ; preds = %109
  %112 = tail call { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 8.124330e+01, double noundef %0, double noundef %1) #23
  %113 = extractvalue { double, double } %112, 0
  %114 = extractvalue { double, double } %112, 1
  br label %115

115:                                              ; preds = %111, %109, %60
  %116 = phi double [ %64, %60 ], [ %64, %109 ], [ %113, %111 ]
  %117 = phi double [ %65, %60 ], [ %65, %109 ], [ %114, %111 ]
  %118 = extractelement <2 x double> %.lcssa, i64 1
  %119 = fmul double %118, %116
  %120 = extractelement <2 x double> %.lcssa, i64 0
  %121 = fmul double %120, %117
  %122 = fmul double %120, %116
  %123 = fmul double %118, %117
  %124 = fsub double %119, %121
  %125 = fadd double %122, %123
  %126 = fcmp uno double %124, 0.000000e+00
  br i1 %126, label %127, label %133, !prof !51

127:                                              ; preds = %115
  %128 = fcmp uno double %125, 0.000000e+00
  br i1 %128, label %129, label %133, !prof !51

129:                                              ; preds = %127
  %130 = tail call { double, double } @__muldc3(double noundef %116, double noundef %117, double noundef %118, double noundef %120) #23
  %131 = extractvalue { double, double } %130, 0
  %132 = extractvalue { double, double } %130, 1
  br label %133

133:                                              ; preds = %129, %127, %115
  %134 = phi double [ %124, %115 ], [ %124, %127 ], [ %131, %129 ]
  %135 = phi double [ %125, %115 ], [ %125, %127 ], [ %132, %129 ]
  %136 = fadd double %42, %134
  %137 = fadd double %61, %135
  br label %200

138:                                              ; preds = %2
  %139 = fmul double %1, 0.000000e+00
  %140 = fsub double %5, %1
  %141 = fadd double %139, %0
  %142 = fcmp uno double %140, 0.000000e+00
  br i1 %142, label %143, label %149, !prof !51

143:                                              ; preds = %138
  %144 = fcmp uno double %141, 0.000000e+00
  br i1 %144, label %145, label %149, !prof !51

145:                                              ; preds = %143
  %146 = tail call { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %0, double noundef %1) #23
  %147 = extractvalue { double, double } %146, 0
  %148 = extractvalue { double, double } %146, 1
  br label %149

149:                                              ; preds = %145, %143, %138
  %150 = phi double [ %140, %138 ], [ %140, %143 ], [ %147, %145 ]
  %151 = phi double [ %141, %138 ], [ %141, %143 ], [ %148, %145 ]
  %152 = fmul double %0, %0
  %153 = fmul double %1, %1
  %154 = fmul double %0, %1
  %155 = fsub double %152, %153
  %156 = fadd double %154, %154
  %157 = fcmp uno double %155, 0.000000e+00
  br i1 %157, label %158, label %160, !prof !51

158:                                              ; preds = %149
  %159 = fcmp uno double %156, 0.000000e+00
  br i1 %159, label %166, label %163, !prof !51

160:                                              ; preds = %149
  %161 = fadd double %155, 0xBFD19DC7AFDB7B46
  %162 = tail call { double, double } @__divdc3(double noundef 0x3FE065C77CDFFF0D, double noundef 0.000000e+00, double noundef %161, double noundef %156) #23
  br label %175

163:                                              ; preds = %158
  %164 = fadd double %155, 0xBFD19DC7AFDB7B46
  %165 = tail call { double, double } @__divdc3(double noundef 0x3FE065C77CDFFF0D, double noundef 0.000000e+00, double noundef %164, double noundef %156) #23
  br label %175

166:                                              ; preds = %158
  %167 = tail call { double, double } @__muldc3(double noundef %0, double noundef %1, double noundef %0, double noundef %1) #23
  %168 = extractvalue { double, double } %167, 0
  %169 = extractvalue { double, double } %167, 1
  %170 = fadd double %168, 0xBFD19DC7AFDB7B46
  %171 = tail call { double, double } @__divdc3(double noundef 0x3FE065C77CDFFF0D, double noundef 0.000000e+00, double noundef %170, double noundef %169) #23
  %172 = tail call { double, double } @__muldc3(double noundef %0, double noundef %1, double noundef %0, double noundef %1) #23
  %173 = extractvalue { double, double } %172, 0
  %174 = extractvalue { double, double } %172, 1
  br label %175

175:                                              ; preds = %166, %163, %160
  %176 = phi { double, double } [ %162, %160 ], [ %165, %163 ], [ %171, %166 ]
  %177 = phi double [ %155, %160 ], [ %155, %163 ], [ %173, %166 ]
  %178 = phi double [ %156, %160 ], [ %156, %163 ], [ %174, %166 ]
  %179 = extractvalue { double, double } %176, 0
  %180 = extractvalue { double, double } %176, 1
  %181 = fadd double %177, 0xC005CC470A049097
  %182 = tail call { double, double } @__divdc3(double noundef 0x3FAA80FD3629C600, double noundef 0.000000e+00, double noundef %181, double noundef %178) #23
  %183 = extractvalue { double, double } %182, 0
  %184 = extractvalue { double, double } %182, 1
  %185 = fadd double %179, %183
  %186 = fadd double %180, %184
  %187 = fmul double %150, %185
  %188 = fmul double %151, %186
  %189 = fmul double %150, %186
  %190 = fmul double %151, %185
  %191 = fsub double %187, %188
  %192 = fadd double %189, %190
  %193 = fcmp uno double %191, 0.000000e+00
  br i1 %193, label %194, label %200, !prof !51

194:                                              ; preds = %175
  %195 = fcmp uno double %192, 0.000000e+00
  br i1 %195, label %196, label %200, !prof !51

196:                                              ; preds = %194
  %197 = tail call { double, double } @__muldc3(double noundef %150, double noundef %151, double noundef %185, double noundef %186) #23
  %198 = extractvalue { double, double } %197, 0
  %199 = extractvalue { double, double } %197, 1
  br label %200

200:                                              ; preds = %196, %194, %175, %133
  %201 = phi double [ %136, %133 ], [ %191, %175 ], [ %191, %194 ], [ %198, %196 ]
  %202 = phi double [ %137, %133 ], [ %192, %175 ], [ %192, %194 ], [ %199, %196 ]
  %203 = insertvalue { double, double } poison, double %201, 0
  %204 = insertvalue { double, double } %203, double %202, 1
  ret { double, double } %204
}

; Function Attrs: nofree nounwind optsize
declare double @cabs(double noundef, double noundef) local_unnamed_addr #9

declare dso_local { double, double } @__muldc3(double, double, double, double) local_unnamed_addr

; Function Attrs: nounwind optsize
declare { double, double } @cexp(double noundef, double noundef) local_unnamed_addr #14

declare dso_local { double, double } @__divdc3(double, double, double, double) local_unnamed_addr

; Function Attrs: nounwind optsize uwtable
define internal void @calculate_macro_xs(ptr nocapture noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef readonly byval(%struct.Input) align 8 %3, ptr nocapture noundef readonly byval(%struct.CalcDataPtrs) align 8 %4, ptr nocapture noundef %5, ptr nocapture noundef %6, ptr nocapture noundef %7) #3 {
  %9 = alloca [4 x double], align 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !tbaa !28
  %10 = getelementptr inbounds %struct.CalcDataPtrs, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds i32, ptr %11, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !7
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.CalcDataPtrs, ptr %4, i64 0, i32 2, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds ptr, ptr %18, i64 %12
  %20 = getelementptr inbounds %struct.Input, ptr %3, i64 0, i32 7
  %21 = load i32, ptr %20, align 4, !tbaa !33
  %22 = icmp eq i32 %21, 1
  %23 = getelementptr inbounds %struct.CalcDataPtrs, ptr %4, i64 0, i32 2, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds ptr, ptr %24, i64 %12
  br label %27

26:                                               ; preds = %37, %8
  ret void

27:                                               ; preds = %37, %16
  %28 = phi i64 [ 0, %16 ], [ %38, %37 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #26
  %29 = load ptr, ptr %19, align 8, !tbaa !15
  %30 = getelementptr inbounds i32, ptr %29, i64 %28
  %31 = load i32, ptr %30, align 4, !tbaa !7
  br i1 %22, label %32, label %33

32:                                               ; preds = %27
  call void @calculate_micro_xs_doppler(ptr noundef nonnull %9, i32 noundef %31, double noundef %2, ptr noundef nonnull byval(%struct.Input) align 8 %3, ptr noundef nonnull byval(%struct.CalcDataPtrs) align 8 %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #25
  br label %34

33:                                               ; preds = %27
  call void @calculate_micro_xs(ptr noundef nonnull %9, i32 noundef %31, double noundef %2, ptr noundef nonnull byval(%struct.Input) align 8 %3, ptr noundef nonnull byval(%struct.CalcDataPtrs) align 8 %4, ptr noundef %5) #25
  br label %34

34:                                               ; preds = %33, %32
  %35 = load ptr, ptr %25, align 8, !tbaa !15
  %36 = getelementptr inbounds double, ptr %35, i64 %28
  br label %42

37:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #26
  %38 = add nuw nsw i64 %28, 1
  %39 = load i32, ptr %13, align 4, !tbaa !7
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %27, label %26

42:                                               ; preds = %42, %34
  %43 = phi i64 [ 0, %34 ], [ %50, %42 ]
  %44 = getelementptr inbounds [4 x double], ptr %9, i64 0, i64 %43
  %45 = load double, ptr %44, align 8, !tbaa !28
  %46 = load double, ptr %36, align 8, !tbaa !28
  %47 = getelementptr inbounds double, ptr %0, i64 %43
  %48 = load double, ptr %47, align 8, !tbaa !28
  %49 = tail call double @llvm.fmuladd.f64(double %45, double %46, double %48)
  store double %49, ptr %47, align 8, !tbaa !28
  %50 = add nuw nsw i64 %43, 1
  %51 = icmp eq i64 %50, 4
  br i1 %51, label %37, label %42
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nounwind optsize uwtable
define internal void @calculate_micro_xs_doppler(ptr nocapture noundef writeonly %0, i32 noundef %1, double noundef %2, ptr nocapture noundef readonly byval(%struct.Input) align 8 %3, ptr nocapture noundef readonly byval(%struct.CalcDataPtrs) align 8 %4, ptr nocapture noundef %5, ptr nocapture noundef %6, ptr nocapture noundef %7) #3 {
  %9 = getelementptr inbounds %struct.CalcDataPtrs, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !7
  %14 = sitofp i32 %13 to double
  %15 = fdiv double 1.000000e+00, %14
  %16 = fdiv double %2, %15
  %17 = fptosi double %16 to i32
  %18 = icmp eq i32 %13, %17
  %19 = sext i1 %18 to i32
  %20 = add nsw i32 %19, %17
  tail call void @calculate_sig_T(i32 noundef %1, double noundef %2, ptr noundef nonnull byval(%struct.Input) align 8 %3, ptr noundef nonnull byval(%struct.CalcDataPtrs) align 8 %4, ptr noundef %5) #25
  %21 = getelementptr inbounds %struct.CalcDataPtrs, ptr %4, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !40
  %23 = getelementptr inbounds ptr, ptr %22, i64 %11
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  %25 = sext i32 %20 to i64
  %26 = getelementptr inbounds %struct.Window, ptr %24, i64 %25
  %27 = load double, ptr %26, align 8, !tbaa.struct !55
  %28 = getelementptr inbounds i8, ptr %26, i64 8
  %29 = load <2 x double>, ptr %28, align 8
  %30 = getelementptr inbounds i8, ptr %26, i64 24
  %31 = load i32, ptr %30, align 8, !tbaa.struct !56
  %32 = getelementptr inbounds i8, ptr %26, i64 28
  %33 = load i32, ptr %32, align 4, !tbaa.struct !57
  %34 = fmul double %27, %2
  %35 = insertelement <2 x double> poison, double %2, i64 0
  %36 = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> zeroinitializer
  %37 = fmul <2 x double> %29, %36
  %38 = icmp slt i32 %31, %33
  br i1 %38, label %39, label %49

39:                                               ; preds = %8
  %40 = getelementptr inbounds %struct.CalcDataPtrs, ptr %4, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !39
  %42 = getelementptr inbounds ptr, ptr %41, i64 %11
  %43 = sext i32 %31 to i64
  %44 = extractelement <2 x double> %37, i64 0
  %45 = extractelement <2 x double> %37, i64 1
  br label %56

46:                                               ; preds = %157
  %.lcssa2 = phi double [ %159, %157 ]
  %.lcssa1 = phi double [ %144, %157 ]
  %.lcssa = phi double [ %129, %157 ]
  %47 = insertelement <2 x double> poison, double %.lcssa1, i64 0
  %48 = insertelement <2 x double> %47, double %.lcssa2, i64 1
  br label %49

49:                                               ; preds = %46, %8
  %50 = phi double [ %34, %8 ], [ %.lcssa, %46 ]
  %51 = phi <2 x double> [ %37, %8 ], [ %48, %46 ]
  %52 = extractelement <2 x double> %51, i64 0
  %53 = fsub double %50, %52
  store double %50, ptr %0, align 8, !tbaa !28
  %54 = getelementptr inbounds double, ptr %0, i64 1
  store <2 x double> %51, ptr %54, align 8, !tbaa !28
  %55 = getelementptr inbounds double, ptr %0, i64 3
  store double %53, ptr %55, align 8, !tbaa !28
  ret void

56:                                               ; preds = %157, %39
  %57 = phi i64 [ %43, %39 ], [ %160, %157 ]
  %58 = phi double [ %34, %39 ], [ %129, %157 ]
  %59 = phi double [ %44, %39 ], [ %144, %157 ]
  %60 = phi double [ %45, %39 ], [ %159, %157 ]
  %61 = load ptr, ptr %42, align 8, !tbaa !15
  %62 = getelementptr inbounds %struct.Pole, ptr %61, i64 %57
  %63 = load double, ptr %62, align 8, !tbaa.struct !58
  %64 = getelementptr inbounds i8, ptr %62, i64 8
  %65 = load double, ptr %64, align 8, !tbaa.struct !60
  %66 = getelementptr inbounds i8, ptr %62, i64 16
  %67 = load double, ptr %66, align 8, !tbaa.struct !61
  %68 = getelementptr inbounds i8, ptr %62, i64 24
  %69 = load double, ptr %68, align 8, !tbaa.struct !62
  %70 = getelementptr inbounds i8, ptr %62, i64 32
  %71 = load double, ptr %70, align 8, !tbaa.struct !63
  %72 = getelementptr inbounds i8, ptr %62, i64 40
  %73 = load double, ptr %72, align 8, !tbaa.struct !64
  %74 = getelementptr inbounds i8, ptr %62, i64 48
  %75 = load double, ptr %74, align 8, !tbaa.struct !65
  %76 = getelementptr inbounds i8, ptr %62, i64 56
  %77 = load double, ptr %76, align 8, !tbaa.struct !66
  %78 = getelementptr inbounds i8, ptr %62, i64 64
  %79 = load i16, ptr %78, align 8, !tbaa.struct !67
  %80 = fsub double %2, %63
  %81 = fmul double %80, 5.000000e-01
  %82 = fmul double %65, -5.000000e-01
  %83 = tail call double @cabs(double noundef %81, double noundef %82) #23
  %84 = fcmp olt double %83, 6.000000e+00
  br i1 %84, label %85, label %88

85:                                               ; preds = %56
  %86 = load i64, ptr %6, align 8, !tbaa !42
  %87 = add nsw i64 %86, 1
  store i64 %87, ptr %6, align 8, !tbaa !42
  br label %88

88:                                               ; preds = %85, %56
  %89 = load i64, ptr %7, align 8, !tbaa !42
  %90 = add nsw i64 %89, 1
  store i64 %90, ptr %7, align 8, !tbaa !42
  %91 = tail call { double, double } @fast_nuclear_W(double noundef %81, double noundef %82) #25
  %92 = extractvalue { double, double } %91, 0
  %93 = extractvalue { double, double } %91, 1
  %94 = fmul double %67, %92
  %95 = fmul double %69, %93
  %96 = fmul double %67, %93
  %97 = fmul double %69, %92
  %98 = fsub double %94, %95
  %99 = fadd double %96, %97
  %100 = fcmp uno double %98, 0.000000e+00
  br i1 %100, label %101, label %107, !prof !51

101:                                              ; preds = %88
  %102 = fcmp uno double %99, 0.000000e+00
  br i1 %102, label %103, label %107, !prof !51

103:                                              ; preds = %101
  %104 = tail call { double, double } @__muldc3(double noundef %67, double noundef %69, double noundef %92, double noundef %93) #23
  %105 = extractvalue { double, double } %104, 0
  %106 = extractvalue { double, double } %104, 1
  br label %107

107:                                              ; preds = %103, %101, %88
  %108 = phi double [ %98, %88 ], [ %98, %101 ], [ %105, %103 ]
  %109 = phi double [ %99, %88 ], [ %99, %101 ], [ %106, %103 ]
  %110 = sext i16 %79 to i64
  %111 = getelementptr inbounds { double, double }, ptr %5, i64 %110
  %112 = load double, ptr %111, align 8
  %113 = getelementptr inbounds { double, double }, ptr %5, i64 %110, i32 1
  %114 = load double, ptr %113, align 8
  %115 = fmul double %108, %112
  %116 = fmul double %109, %114
  %117 = fsub double %115, %116
  %118 = fcmp uno double %117, 0.000000e+00
  br i1 %118, label %119, label %127, !prof !51

119:                                              ; preds = %107
  %120 = fmul double %108, %114
  %121 = fmul double %109, %112
  %122 = fadd double %121, %120
  %123 = fcmp uno double %122, 0.000000e+00
  br i1 %123, label %124, label %127, !prof !51

124:                                              ; preds = %119
  %125 = tail call { double, double } @__muldc3(double noundef %108, double noundef %109, double noundef %112, double noundef %114) #23
  %126 = extractvalue { double, double } %125, 0
  br label %127

127:                                              ; preds = %124, %119, %107
  %128 = phi double [ %117, %107 ], [ %117, %119 ], [ %126, %124 ]
  %129 = fadd double %58, %128
  %130 = fmul double %71, %92
  %131 = fmul double %73, %93
  %132 = fsub double %130, %131
  %133 = fcmp uno double %132, 0.000000e+00
  br i1 %133, label %134, label %142, !prof !51

134:                                              ; preds = %127
  %135 = fmul double %71, %93
  %136 = fmul double %73, %92
  %137 = fadd double %135, %136
  %138 = fcmp uno double %137, 0.000000e+00
  br i1 %138, label %139, label %142, !prof !51

139:                                              ; preds = %134
  %140 = tail call { double, double } @__muldc3(double noundef %71, double noundef %73, double noundef %92, double noundef %93) #23
  %141 = extractvalue { double, double } %140, 0
  br label %142

142:                                              ; preds = %139, %134, %127
  %143 = phi double [ %132, %127 ], [ %132, %134 ], [ %141, %139 ]
  %144 = fadd double %59, %143
  %145 = fmul double %75, %92
  %146 = fmul double %77, %93
  %147 = fsub double %145, %146
  %148 = fcmp uno double %147, 0.000000e+00
  br i1 %148, label %149, label %157, !prof !51

149:                                              ; preds = %142
  %150 = fmul double %75, %93
  %151 = fmul double %77, %92
  %152 = fadd double %150, %151
  %153 = fcmp uno double %152, 0.000000e+00
  br i1 %153, label %154, label %157, !prof !51

154:                                              ; preds = %149
  %155 = tail call { double, double } @__muldc3(double noundef %75, double noundef %77, double noundef %92, double noundef %93) #23
  %156 = extractvalue { double, double } %155, 0
  br label %157

157:                                              ; preds = %154, %149, %142
  %158 = phi double [ %147, %142 ], [ %147, %149 ], [ %156, %154 ]
  %159 = fadd double %60, %158
  %160 = add nsw i64 %57, 1
  %161 = trunc i64 %160 to i32
  %162 = icmp eq i32 %33, %161
  br i1 %162, label %46, label %56
}

; Function Attrs: nounwind optsize uwtable
define internal void @calculate_micro_xs(ptr nocapture noundef writeonly %0, i32 noundef %1, double noundef %2, ptr nocapture noundef readonly byval(%struct.Input) align 8 %3, ptr nocapture noundef readonly byval(%struct.CalcDataPtrs) align 8 %4, ptr nocapture noundef %5) #3 {
  %7 = getelementptr inbounds %struct.CalcDataPtrs, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !7
  %12 = sitofp i32 %11 to double
  %13 = fdiv double 1.000000e+00, %12
  %14 = fdiv double %2, %13
  %15 = fptosi double %14 to i32
  %16 = icmp eq i32 %11, %15
  %17 = sext i1 %16 to i32
  %18 = add nsw i32 %17, %15
  tail call void @calculate_sig_T(i32 noundef %1, double noundef %2, ptr noundef nonnull byval(%struct.Input) align 8 %3, ptr noundef nonnull byval(%struct.CalcDataPtrs) align 8 %4, ptr noundef %5) #25
  %19 = getelementptr inbounds %struct.CalcDataPtrs, ptr %4, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  %21 = getelementptr inbounds ptr, ptr %20, i64 %9
  %22 = load ptr, ptr %21, align 8, !tbaa !15
  %23 = sext i32 %18 to i64
  %24 = getelementptr inbounds %struct.Window, ptr %22, i64 %23
  %25 = load double, ptr %24, align 8, !tbaa.struct !55
  %26 = getelementptr inbounds i8, ptr %24, i64 8
  %27 = load <2 x double>, ptr %26, align 8
  %28 = getelementptr inbounds i8, ptr %24, i64 24
  %29 = load i32, ptr %28, align 8, !tbaa.struct !56
  %30 = getelementptr inbounds i8, ptr %24, i64 28
  %31 = load i32, ptr %30, align 4, !tbaa.struct !57
  %32 = fmul double %25, %2
  %33 = insertelement <2 x double> poison, double %2, i64 0
  %34 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> zeroinitializer
  %35 = fmul <2 x double> %27, %34
  %36 = icmp slt i32 %29, %31
  br i1 %36, label %37, label %47

37:                                               ; preds = %6
  %38 = getelementptr inbounds %struct.CalcDataPtrs, ptr %4, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !39
  %40 = getelementptr inbounds ptr, ptr %39, i64 %9
  %41 = sext i32 %29 to i64
  %42 = extractelement <2 x double> %35, i64 0
  %43 = extractelement <2 x double> %35, i64 1
  br label %54

44:                                               ; preds = %162
  %.lcssa2 = phi double [ %164, %162 ]
  %.lcssa1 = phi double [ %143, %162 ]
  %.lcssa = phi double [ %122, %162 ]
  %45 = insertelement <2 x double> poison, double %.lcssa1, i64 0
  %46 = insertelement <2 x double> %45, double %.lcssa2, i64 1
  br label %47

47:                                               ; preds = %44, %6
  %48 = phi double [ %32, %6 ], [ %.lcssa, %44 ]
  %49 = phi <2 x double> [ %35, %6 ], [ %46, %44 ]
  %50 = extractelement <2 x double> %49, i64 0
  %51 = fsub double %48, %50
  store double %48, ptr %0, align 8, !tbaa !28
  %52 = getelementptr inbounds double, ptr %0, i64 1
  store <2 x double> %49, ptr %52, align 8, !tbaa !28
  %53 = getelementptr inbounds double, ptr %0, i64 3
  store double %51, ptr %53, align 8, !tbaa !28
  ret void

54:                                               ; preds = %162, %37
  %55 = phi i64 [ %41, %37 ], [ %165, %162 ]
  %56 = phi double [ %32, %37 ], [ %122, %162 ]
  %57 = phi double [ %42, %37 ], [ %143, %162 ]
  %58 = phi double [ %43, %37 ], [ %164, %162 ]
  %59 = load ptr, ptr %40, align 8, !tbaa !15
  %60 = getelementptr inbounds %struct.Pole, ptr %59, i64 %55
  %61 = load double, ptr %60, align 8, !tbaa.struct !58
  %62 = getelementptr inbounds i8, ptr %60, i64 8
  %63 = load double, ptr %62, align 8, !tbaa.struct !60
  %64 = getelementptr inbounds i8, ptr %60, i64 16
  %65 = getelementptr inbounds i8, ptr %60, i64 32
  %66 = load <2 x double>, ptr %65, align 8
  %67 = getelementptr inbounds i8, ptr %60, i64 48
  %68 = getelementptr inbounds i8, ptr %60, i64 64
  %69 = load i16, ptr %68, align 8, !tbaa.struct !67
  %70 = load <2 x double>, ptr %67, align 8
  %71 = load <2 x double>, ptr %64, align 8
  %72 = tail call double @sqrt(double noundef %2) #23
  %73 = fsub double %61, %72
  %74 = tail call { double, double } @__divdc3(double noundef -0.000000e+00, double noundef 1.000000e+00, double noundef %73, double noundef %63) #23
  %75 = extractvalue { double, double } %74, 0
  %76 = extractvalue { double, double } %74, 1
  %77 = insertelement <2 x double> poison, double %75, i64 0
  %78 = insertelement <2 x double> %77, double %76, i64 1
  %79 = fdiv <2 x double> %78, %34
  %80 = fmul <2 x double> %71, %79
  %81 = shufflevector <2 x double> %79, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %82 = fmul <2 x double> %71, %81
  %83 = shufflevector <2 x double> %80, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %84 = fsub <2 x double> %80, %83
  %85 = extractelement <2 x double> %84, i64 0
  %86 = shufflevector <2 x double> %82, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %87 = fadd <2 x double> %82, %86
  %88 = extractelement <2 x double> %87, i64 0
  %89 = fcmp uno double %85, 0.000000e+00
  br i1 %89, label %90, label %100, !prof !51

90:                                               ; preds = %54
  %91 = fcmp uno double %88, 0.000000e+00
  br i1 %91, label %92, label %100, !prof !51

92:                                               ; preds = %90
  %93 = extractelement <2 x double> %79, i64 0
  %94 = extractelement <2 x double> %79, i64 1
  %95 = extractelement <2 x double> %71, i64 0
  %96 = extractelement <2 x double> %71, i64 1
  %97 = tail call { double, double } @__muldc3(double noundef %95, double noundef %96, double noundef %93, double noundef %94) #23
  %98 = extractvalue { double, double } %97, 0
  %99 = extractvalue { double, double } %97, 1
  br label %100

100:                                              ; preds = %92, %90, %54
  %101 = phi double [ %85, %54 ], [ %85, %90 ], [ %98, %92 ]
  %102 = phi double [ %88, %54 ], [ %88, %90 ], [ %99, %92 ]
  %103 = sext i16 %69 to i64
  %104 = getelementptr inbounds { double, double }, ptr %5, i64 %103
  %105 = load double, ptr %104, align 8
  %106 = getelementptr inbounds { double, double }, ptr %5, i64 %103, i32 1
  %107 = load double, ptr %106, align 8
  %108 = fmul double %101, %105
  %109 = fmul double %102, %107
  %110 = fsub double %108, %109
  %111 = fcmp uno double %110, 0.000000e+00
  br i1 %111, label %112, label %120, !prof !51

112:                                              ; preds = %100
  %113 = fmul double %101, %107
  %114 = fmul double %102, %105
  %115 = fadd double %114, %113
  %116 = fcmp uno double %115, 0.000000e+00
  br i1 %116, label %117, label %120, !prof !51

117:                                              ; preds = %112
  %118 = tail call { double, double } @__muldc3(double noundef %101, double noundef %102, double noundef %105, double noundef %107) #23
  %119 = extractvalue { double, double } %118, 0
  br label %120

120:                                              ; preds = %117, %112, %100
  %121 = phi double [ %110, %100 ], [ %110, %112 ], [ %119, %117 ]
  %122 = fadd double %56, %121
  %123 = fmul <2 x double> %66, %79
  %124 = shufflevector <2 x double> %123, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %125 = fsub <2 x double> %123, %124
  %126 = extractelement <2 x double> %125, i64 0
  %127 = fcmp uno double %126, 0.000000e+00
  br i1 %127, label %128, label %141, !prof !51

128:                                              ; preds = %120
  %129 = fmul <2 x double> %66, %81
  %130 = shufflevector <2 x double> %129, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %131 = fadd <2 x double> %129, %130
  %132 = extractelement <2 x double> %131, i64 0
  %133 = fcmp uno double %132, 0.000000e+00
  br i1 %133, label %134, label %141, !prof !51

134:                                              ; preds = %128
  %135 = extractelement <2 x double> %79, i64 0
  %136 = extractelement <2 x double> %79, i64 1
  %137 = extractelement <2 x double> %66, i64 0
  %138 = extractelement <2 x double> %66, i64 1
  %139 = tail call { double, double } @__muldc3(double noundef %137, double noundef %138, double noundef %135, double noundef %136) #23
  %140 = extractvalue { double, double } %139, 0
  br label %141

141:                                              ; preds = %134, %128, %120
  %142 = phi double [ %126, %120 ], [ %126, %128 ], [ %140, %134 ]
  %143 = fadd double %57, %142
  %144 = fmul <2 x double> %70, %79
  %145 = shufflevector <2 x double> %144, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %146 = fsub <2 x double> %144, %145
  %147 = extractelement <2 x double> %146, i64 0
  %148 = fcmp uno double %147, 0.000000e+00
  br i1 %148, label %149, label %162, !prof !51

149:                                              ; preds = %141
  %150 = fmul <2 x double> %70, %81
  %151 = shufflevector <2 x double> %150, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %152 = fadd <2 x double> %150, %151
  %153 = extractelement <2 x double> %152, i64 0
  %154 = fcmp uno double %153, 0.000000e+00
  br i1 %154, label %155, label %162, !prof !51

155:                                              ; preds = %149
  %156 = extractelement <2 x double> %70, i64 0
  %157 = extractelement <2 x double> %70, i64 1
  %158 = extractelement <2 x double> %79, i64 0
  %159 = extractelement <2 x double> %79, i64 1
  %160 = tail call { double, double } @__muldc3(double noundef %156, double noundef %157, double noundef %158, double noundef %159) #23
  %161 = extractvalue { double, double } %160, 0
  br label %162

162:                                              ; preds = %155, %149, %141
  %163 = phi double [ %147, %141 ], [ %147, %149 ], [ %161, %155 ]
  %164 = fadd double %58, %163
  %165 = add nsw i64 %55, 1
  %166 = trunc i64 %165 to i32
  %167 = icmp eq i32 %31, %166
  br i1 %167, label %44, label %54
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal void @calculate_sig_T(i32 noundef %0, double noundef %1, ptr nocapture noundef readonly byval(%struct.Input) align 8 %2, ptr nocapture noundef readonly byval(%struct.CalcDataPtrs) align 8 %3, ptr nocapture noundef writeonly %4) #20 {
  %6 = getelementptr inbounds %struct.Input, ptr %2, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !27
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.CalcDataPtrs, ptr %3, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = zext i32 %7 to i64
  br label %16

15:                                               ; preds = %43, %5
  ret void

16:                                               ; preds = %43, %9
  %17 = phi i64 [ 0, %9 ], [ %53, %43 ]
  %18 = load ptr, ptr %13, align 8, !tbaa !15
  %19 = getelementptr inbounds double, ptr %18, i64 %17
  %20 = load double, ptr %19, align 8, !tbaa !28
  %21 = tail call double @sqrt(double noundef %1) #23
  %22 = fmul double %20, %21
  %23 = trunc i64 %17 to i32
  switch i32 %23, label %43 [
    i32 1, label %24
    i32 2, label %27
    i32 3, label %34
  ]

24:                                               ; preds = %16
  %25 = tail call double @atan(double noundef %22) #23
  %26 = fadd double %22, %25
  br label %43

27:                                               ; preds = %16
  %28 = fmul double %22, 3.000000e+00
  %29 = fneg double %22
  %30 = tail call double @llvm.fmuladd.f64(double %29, double %22, double 3.000000e+00)
  %31 = fdiv double %28, %30
  %32 = tail call double @atan(double noundef %31) #23
  %33 = fsub double %22, %32
  br label %43

34:                                               ; preds = %16
  %35 = fneg double %22
  %36 = tail call double @llvm.fmuladd.f64(double %35, double %22, double 1.500000e+01)
  %37 = fmul double %22, %36
  %38 = fmul double %22, -6.000000e+00
  %39 = tail call double @llvm.fmuladd.f64(double %38, double %22, double 1.500000e+01)
  %40 = fdiv double %37, %39
  %41 = tail call double @atan(double noundef %40) #23
  %42 = fsub double %22, %41
  br label %43

43:                                               ; preds = %34, %27, %24, %16
  %44 = phi double [ %26, %24 ], [ %33, %27 ], [ %42, %34 ], [ %22, %16 ]
  %45 = fmul double %44, 2.000000e+00
  %46 = tail call double @cos(double noundef %45) #23
  %47 = tail call double @sin(double noundef %45) #23
  %48 = fmul double %47, 0.000000e+00
  %49 = fsub double %46, %48
  %50 = fneg double %47
  %51 = getelementptr inbounds { double, double }, ptr %4, i64 %17
  %52 = getelementptr inbounds { double, double }, ptr %4, i64 %17, i32 1
  store double %49, ptr %51, align 8
  store double %50, ptr %52, align 8
  %53 = add nuw nsw i64 %17, 1
  %54 = icmp eq i64 %53, %14
  br i1 %54, label %15, label %16
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nofree nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind optsize allocsize(0,1) }
attributes #23 = { nounwind optsize }
attributes #24 = { nounwind optsize allocsize(0) }
attributes #25 = { optsize }
attributes #26 = { nounwind }
attributes #27 = { nounwind optsize willreturn memory(read) }
attributes #28 = { noreturn nounwind optsize }

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
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 16}
!12 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!13 = !{!12, !8, i64 4}
!14 = !{!12, !8, i64 20}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!18, !19, i64 64}
!18 = !{!"", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 48, !19, i64 64}
!19 = !{!"short", !9, i64 0}
!20 = !{!21, !22, i64 0}
!21 = !{!"", !22, i64 0, !22, i64 8, !22, i64 16, !8, i64 24, !8, i64 28}
!22 = !{!"double", !9, i64 0}
!23 = !{!21, !22, i64 8}
!24 = !{!21, !22, i64 16}
!25 = !{!21, !8, i64 24}
!26 = !{!21, !8, i64 28}
!27 = !{!12, !8, i64 24}
!28 = !{!22, !22, i64 0}
!29 = !{!9, !9, i64 0}
!30 = !{!12, !8, i64 0}
!31 = !{!12, !8, i64 8}
!32 = !{!12, !9, i64 12}
!33 = !{!12, !8, i64 28}
!34 = !{!35, !16, i64 0}
!35 = !{!"", !16, i64 0, !16, i64 8, !36, i64 16, !16, i64 40, !16, i64 48, !16, i64 56}
!36 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16}
!37 = !{!35, !16, i64 8}
!38 = !{i64 0, i64 8, !15, i64 8, i64 8, !15, i64 16, i64 8, !15}
!39 = !{!35, !16, i64 40}
!40 = !{!35, !16, i64 48}
!41 = !{!35, !16, i64 56}
!42 = !{!43, !43, i64 0}
!43 = !{!"long", !9, i64 0}
!44 = !{!36, !16, i64 0}
!45 = !{!36, !16, i64 8}
!46 = !{!36, !16, i64 16}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = !{!"branch_weights", i32 1048575, i32 1}
!51 = !{!"branch_weights", i32 1, i32 1048575}
!52 = !{!"branch_weights", i32 -1, i32 0}
!53 = !{!35, !16, i64 16}
!54 = !{!35, !16, i64 24}
!55 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 4, !7, i64 28, i64 4, !7}
!56 = !{i64 0, i64 4, !7, i64 4, i64 4, !7}
!57 = !{i64 0, i64 4, !7}
!58 = !{i64 0, i64 16, !29, i64 16, i64 16, !29, i64 32, i64 16, !29, i64 48, i64 16, !29, i64 64, i64 2, !59}
!59 = !{!19, !19, i64 0}
!60 = !{i64 0, i64 8, !29, i64 8, i64 16, !29, i64 24, i64 16, !29, i64 40, i64 16, !29, i64 56, i64 2, !59}
!61 = !{i64 0, i64 16, !29, i64 16, i64 16, !29, i64 32, i64 16, !29, i64 48, i64 2, !59}
!62 = !{i64 0, i64 8, !29, i64 8, i64 16, !29, i64 24, i64 16, !29, i64 40, i64 2, !59}
!63 = !{i64 0, i64 16, !29, i64 16, i64 16, !29, i64 32, i64 2, !59}
!64 = !{i64 0, i64 8, !29, i64 8, i64 16, !29, i64 24, i64 2, !59}
!65 = !{i64 0, i64 16, !29, i64 16, i64 2, !59}
!66 = !{i64 0, i64 8, !29, i64 8, i64 2, !59}
!67 = !{i64 0, i64 2, !59}
