; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/Olden/tsp/tsp.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, double, double, ptr, ptr, ptr, ptr }

@NDim = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%f %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Building tree of size %d\0A\00", align 1
@NumNodes = internal global i32 0, align 4
@flag = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Call tsp(t, %d, %d)\0A\00", align 1
@str = private unnamed_addr constant [11 x i8] c"Past build\00", align 1
@str.8 = private unnamed_addr constant [15 x i8] c"linetype solid\00", align 1
@str.9 = private unnamed_addr constant [13 x i8] c"newcurve pts\00", align 1
@str.10 = private unnamed_addr constant [9 x i8] c"newgraph\00", align 1

; Function Attrs: nofree nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: read) uwtable
define internal i32 @dealwithargs(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp sgt i32 %0, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds ptr, ptr %1, i64 3
  %6 = load ptr, ptr %5, align 8, !tbaa !7
  %7 = tail call i32 @atoi(ptr nocapture noundef %6) #13
  store i32 %7, ptr @flag, align 4, !tbaa !11
  br label %11

8:                                                ; preds = %2
  store i32 0, ptr @flag, align 4, !tbaa !11
  %9 = icmp eq i32 %0, 3
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  store i32 4, ptr @NumNodes, align 4, !tbaa !11
  br label %17

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds ptr, ptr %1, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = tail call i32 @atoi(ptr nocapture noundef %13) #13
  store i32 %14, ptr @NumNodes, align 4, !tbaa !11
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 0, ptr @NDim, align 4, !tbaa !11
  br label %27

17:                                               ; preds = %11, %10
  %18 = phi i32 [ 4, %10 ], [ %14, %11 ]
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ %22, %19 ], [ 1, %17 ]
  %21 = phi i32 [ %23, %19 ], [ 0, %17 ]
  %22 = shl nsw i32 %20, 1
  %23 = add nuw nsw i32 %21, 1
  %24 = icmp slt i32 %22, %18
  br i1 %24, label %19, label %25, !llvm.loop !13

25:                                               ; preds = %19
  %.lcssa = phi i32 [ %23, %19 ]
  store i32 %.lcssa, ptr @NDim, align 4, !tbaa !11
  %26 = icmp sgt i32 %0, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %25, %16
  %28 = getelementptr inbounds ptr, ptr %1, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  %30 = tail call i32 @atoi(ptr nocapture noundef %29) #13
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i32 [ %30, %27 ], [ 65535, %25 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @build_tree(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7) #2 {
  %9 = icmp eq i32 %0, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %8
  %11 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #14
  %12 = icmp eq i32 %1, 0
  %13 = sdiv i32 %0, 2
  %14 = sdiv i32 %3, 2
  %15 = add nsw i32 %14, %2
  br i1 %12, label %24, label %16

16:                                               ; preds = %10
  %17 = tail call fastcc double @median(double noundef %4, double noundef %5) #13
  %18 = tail call ptr @build_tree(i32 noundef %13, i32 noundef 0, i32 noundef %15, i32 noundef %14, double noundef %4, double noundef %17, double noundef %6, double noundef %7) #13
  %19 = tail call ptr @build_tree(i32 noundef %13, i32 noundef 0, i32 noundef %2, i32 noundef %14, double noundef %17, double noundef %5, double noundef %6, double noundef %7) #13
  %20 = tail call double @drand48() #15
  %21 = fsub double %7, %6
  %22 = fmul double %21, %20
  %23 = fadd double %22, %6
  br label %32

24:                                               ; preds = %10
  %25 = tail call fastcc double @median(double noundef %6, double noundef %7) #13
  %26 = tail call ptr @build_tree(i32 noundef %13, i32 noundef 1, i32 noundef %15, i32 noundef %14, double noundef %4, double noundef %5, double noundef %6, double noundef %25) #13
  %27 = tail call ptr @build_tree(i32 noundef %13, i32 noundef 1, i32 noundef %2, i32 noundef %14, double noundef %4, double noundef %5, double noundef %25, double noundef %7) #13
  %28 = tail call double @drand48() #15
  %29 = fsub double %5, %4
  %30 = fmul double %29, %28
  %31 = fadd double %30, %4
  br label %32

32:                                               ; preds = %24, %16
  %33 = phi ptr [ %26, %24 ], [ %18, %16 ]
  %34 = phi ptr [ %27, %24 ], [ %19, %16 ]
  %35 = phi double [ %25, %24 ], [ %23, %16 ]
  %36 = phi double [ %31, %24 ], [ %17, %16 ]
  %37 = getelementptr inbounds %struct.tree, ptr %11, i64 0, i32 3
  store ptr %33, ptr %37, align 8
  %38 = getelementptr inbounds %struct.tree, ptr %11, i64 0, i32 4
  store ptr %34, ptr %38, align 8
  %39 = getelementptr inbounds %struct.tree, ptr %11, i64 0, i32 2
  store double %35, ptr %39, align 8
  %40 = getelementptr inbounds %struct.tree, ptr %11, i64 0, i32 1
  store double %36, ptr %40, align 8
  store i32 %0, ptr %11, align 8, !tbaa !15
  %41 = getelementptr inbounds %struct.tree, ptr %11, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  br label %42

42:                                               ; preds = %32, %8
  %43 = phi ptr [ %11, %32 ], [ null, %8 ]
  ret ptr %43
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc double @median(double noundef %0, double noundef %1) unnamed_addr #2 {
  %3 = tail call double @drand48() #15
  %4 = fcmp ogt double %3, 5.000000e-01
  %5 = fadd double %3, -5.000000e-01
  %6 = select i1 %4, double %5, double %3
  %7 = select i1 %4, double 1.200000e+01, double -1.200000e+01
  %8 = fmul double %6, 0x4113DE0E54D37C9A
  %9 = fdiv double %8, 0x4103DE1654D37C9A
  %10 = fsub double 1.000000e+00, %9
  %11 = tail call double @log(double noundef %10) #15
  %12 = fdiv double %11, %7
  %13 = fadd double %12, 1.000000e+00
  %14 = fsub double %1, %0
  %15 = fmul double %14, %13
  %16 = fmul double %15, 5.000000e-01
  %17 = fadd double %16, %0
  ret double %17
}

; Function Attrs: nounwind optsize
declare double @drand48() local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize uwtable
define internal void @print_list(ptr noundef readonly %0) #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 1
  %5 = load double, ptr %4, align 8, !tbaa !18
  %6 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 2
  %7 = load double, ptr %6, align 8, !tbaa !19
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %5, double noundef %7) #13
  %9 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %22, label %12

12:                                               ; preds = %12, %3
  %13 = phi ptr [ %20, %12 ], [ %10, %3 ]
  %14 = getelementptr inbounds %struct.tree, ptr %13, i64 0, i32 1
  %15 = load double, ptr %14, align 8, !tbaa !18
  %16 = getelementptr inbounds %struct.tree, ptr %13, i64 0, i32 2
  %17 = load double, ptr %16, align 8, !tbaa !19
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %15, double noundef %17) #13
  %19 = getelementptr inbounds %struct.tree, ptr %13, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !20
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %12, !llvm.loop !21

22:                                               ; preds = %12, %3, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @dealwithargs(i32 noundef %0, ptr noundef %1) #15
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %3) #13
  %5 = load i32, ptr @NumNodes, align 4, !tbaa !11
  %6 = tail call ptr @build_tree(i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef %5, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00) #15
  %7 = load i32, ptr @flag, align 4, !tbaa !11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %11 = load i32, ptr @flag, align 4, !tbaa !11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %9, %2
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  %15 = load i32, ptr @flag, align 4, !tbaa !11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  br label %19

19:                                               ; preds = %17, %13, %9
  %20 = load i32, ptr @NumNodes, align 4, !tbaa !11
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef 150, i32 noundef %20) #13
  %22 = load i32, ptr @NumNodes, align 4, !tbaa !11
  %23 = tail call ptr @tsp(ptr noundef %6, i32 noundef 150, i32 noundef %22) #15
  %24 = load i32, ptr @flag, align 4, !tbaa !11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  tail call void @print_list(ptr noundef %6) #13
  %27 = load i32, ptr @flag, align 4, !tbaa !11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  br label %31

31:                                               ; preds = %29, %26, %19
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal ptr @tsp(ptr noundef %0, i32 noundef %1, i32 noundef %2) #10 {
  %4 = load i32, ptr %0, align 8, !tbaa !15
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %109, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @makelist(ptr noundef nonnull %0) #13
  %8 = getelementptr inbounds %struct.tree, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  store ptr %7, ptr %8, align 8, !tbaa !20
  %10 = getelementptr inbounds %struct.tree, ptr %7, i64 0, i32 6
  store ptr %7, ptr %10, align 8, !tbaa !22
  %11 = icmp eq ptr %9, null
  br i1 %11, label %420, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tree, ptr %7, i64 0, i32 1
  %14 = load double, ptr %13, align 8, !tbaa !18
  %15 = getelementptr inbounds %struct.tree, ptr %7, i64 0, i32 2
  %16 = load double, ptr %15, align 8, !tbaa !19
  br label %17

17:                                               ; preds = %107, %12
  %18 = phi ptr [ %9, %12 ], [ %20, %107 ]
  %19 = getelementptr inbounds %struct.tree, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !20
  %21 = getelementptr inbounds %struct.tree, ptr %18, i64 0, i32 1
  %22 = load double, ptr %21, align 8, !tbaa !18
  %23 = getelementptr inbounds %struct.tree, ptr %18, i64 0, i32 2
  %24 = load double, ptr %23, align 8, !tbaa !19
  %25 = load ptr, ptr %8, align 8, !tbaa !20
  %26 = icmp eq ptr %25, %7
  br i1 %26, label %55, label %27

27:                                               ; preds = %17
  %28 = fsub double %22, %14
  %29 = fsub double %24, %16
  %30 = fmul double %29, %29
  %31 = tail call double @llvm.fmuladd.f64(double %28, double %28, double %30)
  %32 = tail call double @llvm.sqrt.f64(double %31)
  br label %33

33:                                               ; preds = %33, %27
  %34 = phi ptr [ %50, %33 ], [ %25, %27 ]
  %35 = phi ptr [ %48, %33 ], [ %7, %27 ]
  %36 = phi double [ %47, %33 ], [ %32, %27 ]
  %37 = getelementptr inbounds %struct.tree, ptr %34, i64 0, i32 1
  %38 = load double, ptr %37, align 8, !tbaa !18
  %39 = getelementptr inbounds %struct.tree, ptr %34, i64 0, i32 2
  %40 = load double, ptr %39, align 8, !tbaa !19
  %41 = fsub double %38, %22
  %42 = fsub double %40, %24
  %43 = fmul double %42, %42
  %44 = tail call double @llvm.fmuladd.f64(double %41, double %41, double %43)
  %45 = tail call double @llvm.sqrt.f64(double %44)
  %46 = fcmp olt double %45, %36
  %47 = select i1 %46, double %45, double %36
  %48 = select i1 %46, ptr %34, ptr %35
  %49 = getelementptr inbounds %struct.tree, ptr %34, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !20
  %51 = icmp eq ptr %50, %7
  br i1 %51, label %52, label %33, !llvm.loop !23

52:                                               ; preds = %33
  %.lcssa4 = phi ptr [ %48, %33 ]
  %53 = getelementptr inbounds %struct.tree, ptr %.lcssa4, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !20
  br label %55

55:                                               ; preds = %52, %17
  %56 = phi ptr [ %7, %17 ], [ %54, %52 ]
  %57 = phi ptr [ %7, %17 ], [ %.lcssa4, %52 ]
  %58 = getelementptr inbounds %struct.tree, ptr %57, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !22
  %60 = getelementptr inbounds %struct.tree, ptr %57, i64 0, i32 1
  %61 = load double, ptr %60, align 8, !tbaa !18
  %62 = getelementptr inbounds %struct.tree, ptr %57, i64 0, i32 2
  %63 = load double, ptr %62, align 8, !tbaa !19
  %64 = getelementptr inbounds %struct.tree, ptr %56, i64 0, i32 1
  %65 = load double, ptr %64, align 8, !tbaa !18
  %66 = getelementptr inbounds %struct.tree, ptr %56, i64 0, i32 2
  %67 = load double, ptr %66, align 8, !tbaa !19
  %68 = getelementptr inbounds %struct.tree, ptr %59, i64 0, i32 1
  %69 = load double, ptr %68, align 8, !tbaa !18
  %70 = getelementptr inbounds %struct.tree, ptr %59, i64 0, i32 2
  %71 = load double, ptr %70, align 8, !tbaa !19
  %72 = insertelement <2 x double> poison, double %22, i64 0
  %73 = insertelement <2 x double> %72, double %61, i64 1
  %74 = insertelement <2 x double> poison, double %65, i64 0
  %75 = shufflevector <2 x double> %74, <2 x double> poison, <2 x i32> zeroinitializer
  %76 = fsub <2 x double> %73, %75
  %77 = insertelement <2 x double> poison, double %24, i64 0
  %78 = insertelement <2 x double> %77, double %63, i64 1
  %79 = insertelement <2 x double> poison, double %67, i64 0
  %80 = shufflevector <2 x double> %79, <2 x double> poison, <2 x i32> zeroinitializer
  %81 = fsub <2 x double> %78, %80
  %82 = fmul <2 x double> %81, %81
  %83 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %76, <2 x double> %76, <2 x double> %82)
  %84 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %83)
  %85 = insertelement <2 x double> poison, double %69, i64 0
  %86 = shufflevector <2 x double> %85, <2 x double> poison, <2 x i32> zeroinitializer
  %87 = fsub <2 x double> %73, %86
  %88 = insertelement <2 x double> poison, double %71, i64 0
  %89 = shufflevector <2 x double> %88, <2 x double> poison, <2 x i32> zeroinitializer
  %90 = fsub <2 x double> %78, %89
  %91 = fmul <2 x double> %90, %90
  %92 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %87, <2 x double> %87, <2 x double> %91)
  %93 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %92)
  %94 = shufflevector <2 x double> %93, <2 x double> %84, <2 x i32> <i32 0, i32 2>
  %95 = shufflevector <2 x double> %93, <2 x double> %84, <2 x i32> <i32 1, i32 3>
  %96 = fsub <2 x double> %94, %95
  %97 = extractelement <2 x double> %96, i64 0
  %98 = extractelement <2 x double> %96, i64 1
  %99 = fcmp olt double %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %55
  %101 = getelementptr inbounds %struct.tree, ptr %59, i64 0, i32 5
  store ptr %18, ptr %101, align 8, !tbaa !20
  store ptr %57, ptr %19, align 8, !tbaa !20
  %102 = getelementptr inbounds %struct.tree, ptr %18, i64 0, i32 6
  store ptr %59, ptr %102, align 8, !tbaa !22
  store ptr %18, ptr %58, align 8, !tbaa !22
  br label %107

103:                                              ; preds = %55
  %104 = getelementptr inbounds %struct.tree, ptr %57, i64 0, i32 5
  %105 = getelementptr inbounds %struct.tree, ptr %56, i64 0, i32 6
  store ptr %18, ptr %105, align 8, !tbaa !22
  store ptr %56, ptr %19, align 8, !tbaa !20
  store ptr %18, ptr %104, align 8, !tbaa !20
  %106 = getelementptr inbounds %struct.tree, ptr %18, i64 0, i32 6
  store ptr %57, ptr %106, align 8, !tbaa !22
  br label %107

107:                                              ; preds = %103, %100
  %108 = icmp eq ptr %20, null
  br i1 %108, label %420, label %17, !llvm.loop !24

109:                                              ; preds = %3
  %110 = sdiv i32 %2, 2
  %111 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !25
  %113 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 4
  %114 = load ptr, ptr %113, align 8, !tbaa !26
  %115 = tail call ptr @tsp(ptr noundef %112, i32 noundef %1, i32 noundef %110) #13
  %116 = tail call ptr @tsp(ptr noundef %114, i32 noundef %1, i32 noundef %110) #13
  %117 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 1
  %118 = load double, ptr %117, align 8, !tbaa !18
  %119 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 2
  %120 = load double, ptr %119, align 8, !tbaa !19
  %121 = getelementptr inbounds %struct.tree, ptr %115, i64 0, i32 1
  %122 = load double, ptr %121, align 8, !tbaa !18
  %123 = getelementptr inbounds %struct.tree, ptr %115, i64 0, i32 2
  %124 = load double, ptr %123, align 8, !tbaa !19
  %125 = fsub double %118, %122
  %126 = fsub double %120, %124
  %127 = fmul double %126, %126
  %128 = tail call double @llvm.fmuladd.f64(double %125, double %125, double %127)
  %129 = tail call double @llvm.sqrt.f64(double %128)
  %130 = getelementptr inbounds %struct.tree, ptr %115, i64 0, i32 5
  %131 = load ptr, ptr %130, align 8, !tbaa !20
  %132 = icmp eq ptr %131, %115
  br i1 %132, label %168, label %133

133:                                              ; preds = %133, %109
  %134 = phi ptr [ %150, %133 ], [ %131, %109 ]
  %135 = phi ptr [ %148, %133 ], [ %115, %109 ]
  %136 = phi double [ %147, %133 ], [ %129, %109 ]
  %137 = getelementptr inbounds %struct.tree, ptr %134, i64 0, i32 1
  %138 = load double, ptr %137, align 8, !tbaa !18
  %139 = getelementptr inbounds %struct.tree, ptr %134, i64 0, i32 2
  %140 = load double, ptr %139, align 8, !tbaa !19
  %141 = fsub double %138, %118
  %142 = fsub double %140, %120
  %143 = fmul double %142, %142
  %144 = tail call double @llvm.fmuladd.f64(double %141, double %141, double %143)
  %145 = tail call double @llvm.sqrt.f64(double %144)
  %146 = fcmp olt double %145, %136
  %147 = select i1 %146, double %145, double %136
  %148 = select i1 %146, ptr %134, ptr %135
  %149 = getelementptr inbounds %struct.tree, ptr %134, i64 0, i32 5
  %150 = load ptr, ptr %149, align 8, !tbaa !20
  %151 = icmp eq ptr %150, %115
  br i1 %151, label %152, label %133, !llvm.loop !27

152:                                              ; preds = %133
  %.lcssa3 = phi double [ %147, %133 ]
  %.lcssa2 = phi ptr [ %148, %133 ]
  %153 = getelementptr inbounds %struct.tree, ptr %.lcssa2, i64 0, i32 5
  %154 = load ptr, ptr %153, align 8, !tbaa !20
  %155 = getelementptr inbounds %struct.tree, ptr %.lcssa2, i64 0, i32 1
  %156 = load double, ptr %155, align 8, !tbaa !18
  %157 = getelementptr inbounds %struct.tree, ptr %.lcssa2, i64 0, i32 2
  %158 = load double, ptr %157, align 8, !tbaa !19
  %159 = getelementptr inbounds %struct.tree, ptr %154, i64 0, i32 1
  %160 = load double, ptr %159, align 8, !tbaa !18
  %161 = getelementptr inbounds %struct.tree, ptr %154, i64 0, i32 2
  %162 = load double, ptr %161, align 8, !tbaa !19
  %163 = fsub double %118, %160
  %164 = fsub double %120, %162
  %165 = fmul double %164, %164
  %166 = tail call double @llvm.fmuladd.f64(double %163, double %163, double %165)
  %167 = tail call double @llvm.sqrt.f64(double %166)
  br label %168

168:                                              ; preds = %152, %109
  %169 = phi double [ %167, %152 ], [ %129, %109 ]
  %170 = phi double [ %162, %152 ], [ %124, %109 ]
  %171 = phi double [ %160, %152 ], [ %122, %109 ]
  %172 = phi double [ %158, %152 ], [ %124, %109 ]
  %173 = phi double [ %156, %152 ], [ %122, %109 ]
  %174 = phi ptr [ %154, %152 ], [ %115, %109 ]
  %175 = phi double [ %.lcssa3, %152 ], [ %129, %109 ]
  %176 = phi ptr [ %.lcssa2, %152 ], [ %115, %109 ]
  %177 = getelementptr inbounds %struct.tree, ptr %176, i64 0, i32 6
  %178 = load ptr, ptr %177, align 8, !tbaa !22
  %179 = fsub double %173, %171
  %180 = fsub double %172, %170
  %181 = fmul double %180, %180
  %182 = tail call double @llvm.fmuladd.f64(double %179, double %179, double %181)
  %183 = tail call double @llvm.sqrt.f64(double %182)
  %184 = getelementptr inbounds %struct.tree, ptr %178, i64 0, i32 1
  %185 = load double, ptr %184, align 8, !tbaa !18
  %186 = getelementptr inbounds %struct.tree, ptr %178, i64 0, i32 2
  %187 = load double, ptr %186, align 8, !tbaa !19
  %188 = insertelement <2 x double> poison, double %118, i64 0
  %189 = insertelement <2 x double> %188, double %173, i64 1
  %190 = insertelement <2 x double> poison, double %185, i64 0
  %191 = shufflevector <2 x double> %190, <2 x double> poison, <2 x i32> zeroinitializer
  %192 = fsub <2 x double> %189, %191
  %193 = insertelement <2 x double> poison, double %120, i64 0
  %194 = insertelement <2 x double> %193, double %172, i64 1
  %195 = insertelement <2 x double> poison, double %187, i64 0
  %196 = shufflevector <2 x double> %195, <2 x double> poison, <2 x i32> zeroinitializer
  %197 = fsub <2 x double> %194, %196
  %198 = fmul <2 x double> %197, %197
  %199 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %192, <2 x double> %192, <2 x double> %198)
  %200 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %199)
  %201 = extractelement <2 x double> %200, i64 0
  %202 = shufflevector <2 x double> %200, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %203 = fsub <2 x double> %200, %202
  %204 = extractelement <2 x double> %203, i64 0
  %205 = fsub double %169, %183
  %206 = fcmp olt double %204, %205
  %207 = select i1 %206, ptr %176, ptr %174
  %208 = select i1 %206, ptr %178, ptr %176
  %209 = select i1 %206, double %175, double %169
  %210 = select i1 %206, double %201, double %175
  %211 = getelementptr inbounds %struct.tree, ptr %116, i64 0, i32 1
  %212 = load double, ptr %211, align 8, !tbaa !18
  %213 = getelementptr inbounds %struct.tree, ptr %116, i64 0, i32 2
  %214 = load double, ptr %213, align 8, !tbaa !19
  %215 = fsub double %118, %212
  %216 = fsub double %120, %214
  %217 = fmul double %216, %216
  %218 = tail call double @llvm.fmuladd.f64(double %215, double %215, double %217)
  %219 = tail call double @llvm.sqrt.f64(double %218)
  %220 = getelementptr inbounds %struct.tree, ptr %116, i64 0, i32 5
  %221 = load ptr, ptr %220, align 8, !tbaa !20
  %222 = icmp eq ptr %221, %116
  %223 = insertelement <2 x double> poison, double %219, i64 0
  %224 = shufflevector <2 x double> %223, <2 x double> poison, <2 x i32> zeroinitializer
  br i1 %222, label %262, label %225

225:                                              ; preds = %225, %168
  %226 = phi ptr [ %242, %225 ], [ %221, %168 ]
  %227 = phi ptr [ %240, %225 ], [ %116, %168 ]
  %228 = phi double [ %239, %225 ], [ %219, %168 ]
  %229 = getelementptr inbounds %struct.tree, ptr %226, i64 0, i32 1
  %230 = load double, ptr %229, align 8, !tbaa !18
  %231 = getelementptr inbounds %struct.tree, ptr %226, i64 0, i32 2
  %232 = load double, ptr %231, align 8, !tbaa !19
  %233 = fsub double %230, %118
  %234 = fsub double %232, %120
  %235 = fmul double %234, %234
  %236 = tail call double @llvm.fmuladd.f64(double %233, double %233, double %235)
  %237 = tail call double @llvm.sqrt.f64(double %236)
  %238 = fcmp olt double %237, %228
  %239 = select i1 %238, double %237, double %228
  %240 = select i1 %238, ptr %226, ptr %227
  %241 = getelementptr inbounds %struct.tree, ptr %226, i64 0, i32 5
  %242 = load ptr, ptr %241, align 8, !tbaa !20
  %243 = icmp eq ptr %242, %116
  br i1 %243, label %244, label %225, !llvm.loop !28

244:                                              ; preds = %225
  %.lcssa1 = phi double [ %239, %225 ]
  %.lcssa = phi ptr [ %240, %225 ]
  %245 = getelementptr inbounds %struct.tree, ptr %.lcssa, i64 0, i32 5
  %246 = load ptr, ptr %245, align 8, !tbaa !20
  %247 = getelementptr inbounds %struct.tree, ptr %.lcssa, i64 0, i32 1
  %248 = load double, ptr %247, align 8, !tbaa !18
  %249 = getelementptr inbounds %struct.tree, ptr %.lcssa, i64 0, i32 2
  %250 = load double, ptr %249, align 8, !tbaa !19
  %251 = getelementptr inbounds %struct.tree, ptr %246, i64 0, i32 1
  %252 = load double, ptr %251, align 8, !tbaa !18
  %253 = getelementptr inbounds %struct.tree, ptr %246, i64 0, i32 2
  %254 = load double, ptr %253, align 8, !tbaa !19
  %255 = fsub double %118, %252
  %256 = fsub double %120, %254
  %257 = fmul double %256, %256
  %258 = tail call double @llvm.fmuladd.f64(double %255, double %255, double %257)
  %259 = tail call double @llvm.sqrt.f64(double %258)
  %260 = insertelement <2 x double> poison, double %259, i64 0
  %261 = insertelement <2 x double> %260, double %.lcssa1, i64 1
  br label %262

262:                                              ; preds = %244, %168
  %263 = phi double [ %254, %244 ], [ %214, %168 ]
  %264 = phi double [ %252, %244 ], [ %212, %168 ]
  %265 = phi double [ %250, %244 ], [ %214, %168 ]
  %266 = phi double [ %248, %244 ], [ %212, %168 ]
  %267 = phi ptr [ %246, %244 ], [ %116, %168 ]
  %268 = phi ptr [ %.lcssa, %244 ], [ %116, %168 ]
  %269 = phi <2 x double> [ %261, %244 ], [ %224, %168 ]
  %270 = getelementptr inbounds %struct.tree, ptr %268, i64 0, i32 6
  %271 = load ptr, ptr %270, align 8, !tbaa !22
  %272 = fsub double %266, %264
  %273 = fsub double %265, %263
  %274 = fmul double %273, %273
  %275 = tail call double @llvm.fmuladd.f64(double %272, double %272, double %274)
  %276 = tail call double @llvm.sqrt.f64(double %275)
  %277 = getelementptr inbounds %struct.tree, ptr %271, i64 0, i32 1
  %278 = load double, ptr %277, align 8, !tbaa !18
  %279 = getelementptr inbounds %struct.tree, ptr %271, i64 0, i32 2
  %280 = load double, ptr %279, align 8, !tbaa !19
  %281 = insertelement <2 x double> %188, double %266, i64 1
  %282 = insertelement <2 x double> poison, double %278, i64 0
  %283 = shufflevector <2 x double> %282, <2 x double> poison, <2 x i32> zeroinitializer
  %284 = fsub <2 x double> %281, %283
  %285 = insertelement <2 x double> %193, double %265, i64 1
  %286 = insertelement <2 x double> poison, double %280, i64 0
  %287 = shufflevector <2 x double> %286, <2 x double> poison, <2 x i32> zeroinitializer
  %288 = fsub <2 x double> %285, %287
  %289 = fmul <2 x double> %288, %288
  %290 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %284, <2 x double> %284, <2 x double> %289)
  %291 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %290)
  %292 = shufflevector <2 x double> %291, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %293 = fsub <2 x double> %291, %292
  %294 = extractelement <2 x double> %293, i64 0
  %295 = extractelement <2 x double> %269, i64 0
  %296 = fsub double %295, %276
  %297 = fcmp olt double %294, %296
  %298 = select i1 %297, ptr %268, ptr %267
  %299 = select i1 %297, ptr %271, ptr %268
  %300 = getelementptr inbounds %struct.tree, ptr %207, i64 0, i32 1
  %301 = load double, ptr %300, align 8, !tbaa !18
  %302 = getelementptr inbounds %struct.tree, ptr %207, i64 0, i32 2
  %303 = load double, ptr %302, align 8, !tbaa !19
  %304 = getelementptr inbounds %struct.tree, ptr %298, i64 0, i32 1
  %305 = load double, ptr %304, align 8, !tbaa !18
  %306 = getelementptr inbounds %struct.tree, ptr %298, i64 0, i32 2
  %307 = load double, ptr %306, align 8, !tbaa !19
  %308 = getelementptr inbounds %struct.tree, ptr %299, i64 0, i32 1
  %309 = load double, ptr %308, align 8, !tbaa !18
  %310 = getelementptr inbounds %struct.tree, ptr %299, i64 0, i32 2
  %311 = load double, ptr %310, align 8, !tbaa !19
  %312 = getelementptr inbounds %struct.tree, ptr %208, i64 0, i32 1
  %313 = load double, ptr %312, align 8, !tbaa !18
  %314 = getelementptr inbounds %struct.tree, ptr %208, i64 0, i32 2
  %315 = load double, ptr %314, align 8, !tbaa !19
  %316 = fsub double %313, %305
  %317 = fsub double %315, %307
  %318 = fmul double %317, %317
  %319 = tail call double @llvm.fmuladd.f64(double %316, double %316, double %318)
  %320 = tail call double @llvm.sqrt.f64(double %319)
  %321 = fsub double %313, %309
  %322 = fsub double %315, %311
  %323 = fmul double %322, %322
  %324 = tail call double @llvm.fmuladd.f64(double %321, double %321, double %323)
  %325 = tail call double @llvm.sqrt.f64(double %324)
  %326 = insertelement <2 x i1> poison, i1 %297, i64 0
  %327 = shufflevector <2 x i1> %326, <2 x i1> poison, <2 x i32> zeroinitializer
  %328 = shufflevector <2 x double> %291, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %329 = shufflevector <2 x double> %328, <2 x double> %269, <2 x i32> <i32 3, i32 1>
  %330 = select <2 x i1> %327, <2 x double> %329, <2 x double> %269
  %331 = insertelement <2 x double> poison, double %301, i64 0
  %332 = shufflevector <2 x double> %331, <2 x double> poison, <2 x i32> zeroinitializer
  %333 = insertelement <2 x double> poison, double %309, i64 0
  %334 = insertelement <2 x double> %333, double %305, i64 1
  %335 = fsub <2 x double> %332, %334
  %336 = insertelement <2 x double> poison, double %303, i64 0
  %337 = shufflevector <2 x double> %336, <2 x double> poison, <2 x i32> zeroinitializer
  %338 = insertelement <2 x double> poison, double %311, i64 0
  %339 = insertelement <2 x double> %338, double %307, i64 1
  %340 = fsub <2 x double> %337, %339
  %341 = fmul <2 x double> %340, %340
  %342 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %335, <2 x double> %335, <2 x double> %341)
  %343 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %342)
  %344 = insertelement <2 x double> poison, double %210, i64 0
  %345 = shufflevector <2 x double> %344, <2 x double> poison, <2 x i32> zeroinitializer
  %346 = fadd <2 x double> %345, %330
  %347 = fadd <2 x double> %346, %343
  %348 = extractelement <2 x double> %347, i64 0
  %349 = extractelement <2 x double> %347, i64 1
  %350 = fcmp olt double %348, %349
  %351 = select i1 %350, double %348, double %349
  %352 = select i1 %350, i32 2, i32 1
  %353 = extractelement <2 x double> %330, i64 1
  %354 = fadd double %209, %353
  %355 = fadd double %354, %320
  %356 = fcmp olt double %355, %351
  %357 = select i1 %356, double %355, double %351
  %358 = select i1 %356, i32 3, i32 %352
  %359 = extractelement <2 x double> %330, i64 0
  %360 = fadd double %209, %359
  %361 = fadd double %360, %325
  %362 = fcmp olt double %361, %357
  %363 = select i1 %362, i32 4, i32 %358
  switch i32 %363, label %420 [
    i32 1, label %364
    i32 2, label %384
    i32 3, label %390
    i32 4, label %396
  ]

364:                                              ; preds = %262
  %365 = getelementptr inbounds %struct.tree, ptr %298, i64 0, i32 6
  %366 = load ptr, ptr %365, align 8, !tbaa !22
  %367 = getelementptr inbounds %struct.tree, ptr %366, i64 0, i32 5
  store ptr null, ptr %367, align 8, !tbaa !20
  store ptr null, ptr %365, align 8, !tbaa !22
  %368 = getelementptr inbounds %struct.tree, ptr %298, i64 0, i32 5
  %369 = load ptr, ptr %368, align 8, !tbaa !20
  %370 = icmp eq ptr %369, null
  br i1 %370, label %378, label %371

371:                                              ; preds = %371, %364
  %372 = phi ptr [ %375, %371 ], [ %369, %364 ]
  %373 = phi ptr [ %372, %371 ], [ %298, %364 ]
  %374 = getelementptr inbounds %struct.tree, ptr %372, i64 0, i32 5
  %375 = load ptr, ptr %374, align 8, !tbaa !20
  store ptr %373, ptr %374, align 8, !tbaa !20
  %376 = getelementptr inbounds %struct.tree, ptr %373, i64 0, i32 6
  store ptr %372, ptr %376, align 8, !tbaa !22
  %377 = icmp eq ptr %375, null
  br i1 %377, label %378, label %371, !llvm.loop !29

378:                                              ; preds = %371, %364
  %379 = getelementptr inbounds %struct.tree, ptr %366, i64 0, i32 6
  store ptr %298, ptr %379, align 8, !tbaa !22
  %380 = getelementptr inbounds %struct.tree, ptr %208, i64 0, i32 5
  store ptr %0, ptr %380, align 8, !tbaa !20
  %381 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 6
  store ptr %208, ptr %381, align 8, !tbaa !22
  %382 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 5
  store ptr %299, ptr %382, align 8, !tbaa !20
  %383 = getelementptr inbounds %struct.tree, ptr %299, i64 0, i32 6
  store ptr %0, ptr %383, align 8, !tbaa !22
  store ptr %207, ptr %368, align 8, !tbaa !20
  br label %416

384:                                              ; preds = %262
  %385 = getelementptr inbounds %struct.tree, ptr %208, i64 0, i32 5
  store ptr %0, ptr %385, align 8, !tbaa !20
  %386 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 6
  store ptr %208, ptr %386, align 8, !tbaa !22
  %387 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 5
  store ptr %298, ptr %387, align 8, !tbaa !20
  %388 = getelementptr inbounds %struct.tree, ptr %298, i64 0, i32 6
  store ptr %0, ptr %388, align 8, !tbaa !22
  %389 = getelementptr inbounds %struct.tree, ptr %299, i64 0, i32 5
  store ptr %207, ptr %389, align 8, !tbaa !20
  br label %416

390:                                              ; preds = %262
  %391 = getelementptr inbounds %struct.tree, ptr %299, i64 0, i32 5
  store ptr %0, ptr %391, align 8, !tbaa !20
  %392 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 6
  store ptr %299, ptr %392, align 8, !tbaa !22
  %393 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 5
  store ptr %207, ptr %393, align 8, !tbaa !20
  %394 = getelementptr inbounds %struct.tree, ptr %207, i64 0, i32 6
  store ptr %0, ptr %394, align 8, !tbaa !22
  %395 = getelementptr inbounds %struct.tree, ptr %208, i64 0, i32 5
  store ptr %298, ptr %395, align 8, !tbaa !20
  br label %416

396:                                              ; preds = %262
  %397 = getelementptr inbounds %struct.tree, ptr %207, i64 0, i32 6
  %398 = load ptr, ptr %397, align 8, !tbaa !22
  %399 = getelementptr inbounds %struct.tree, ptr %398, i64 0, i32 5
  store ptr null, ptr %399, align 8, !tbaa !20
  store ptr null, ptr %397, align 8, !tbaa !22
  %400 = getelementptr inbounds %struct.tree, ptr %207, i64 0, i32 5
  %401 = load ptr, ptr %400, align 8, !tbaa !20
  %402 = icmp eq ptr %401, null
  br i1 %402, label %410, label %403

403:                                              ; preds = %403, %396
  %404 = phi ptr [ %407, %403 ], [ %401, %396 ]
  %405 = phi ptr [ %404, %403 ], [ %207, %396 ]
  %406 = getelementptr inbounds %struct.tree, ptr %404, i64 0, i32 5
  %407 = load ptr, ptr %406, align 8, !tbaa !20
  store ptr %405, ptr %406, align 8, !tbaa !20
  %408 = getelementptr inbounds %struct.tree, ptr %405, i64 0, i32 6
  store ptr %404, ptr %408, align 8, !tbaa !22
  %409 = icmp eq ptr %407, null
  br i1 %409, label %410, label %403, !llvm.loop !29

410:                                              ; preds = %403, %396
  %411 = getelementptr inbounds %struct.tree, ptr %398, i64 0, i32 6
  store ptr %207, ptr %411, align 8, !tbaa !22
  store ptr %0, ptr %400, align 8, !tbaa !20
  %412 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 6
  store ptr %207, ptr %412, align 8, !tbaa !22
  %413 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 5
  store ptr %298, ptr %413, align 8, !tbaa !20
  %414 = getelementptr inbounds %struct.tree, ptr %298, i64 0, i32 6
  store ptr %0, ptr %414, align 8, !tbaa !22
  %415 = getelementptr inbounds %struct.tree, ptr %299, i64 0, i32 5
  store ptr %208, ptr %415, align 8, !tbaa !20
  br label %416

416:                                              ; preds = %410, %390, %384, %378
  %417 = phi ptr [ %208, %410 ], [ %298, %390 ], [ %207, %384 ], [ %207, %378 ]
  %418 = phi ptr [ %299, %410 ], [ %208, %390 ], [ %299, %384 ], [ %298, %378 ]
  %419 = getelementptr inbounds %struct.tree, ptr %417, i64 0, i32 6
  store ptr %418, ptr %419, align 8, !tbaa !22
  br label %420

420:                                              ; preds = %416, %262, %107, %6
  %421 = phi ptr [ %7, %6 ], [ %0, %262 ], [ %0, %416 ], [ %7, %107 ]
  ret ptr %421
}

; Function Attrs: nofree nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @makelist(ptr noundef %0) unnamed_addr #11 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = tail call fastcc ptr @makelist(ptr noundef %5) #13
  %7 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !26
  %9 = tail call fastcc ptr @makelist(ptr noundef %8) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %7, align 8, !tbaa !26
  %13 = getelementptr inbounds %struct.tree, ptr %12, i64 0, i32 5
  store ptr %0, ptr %13, align 8, !tbaa !20
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi ptr [ %9, %11 ], [ %0, %3 ]
  %16 = icmp eq ptr %6, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 8, !tbaa !25
  %19 = select i1 %10, ptr %0, ptr %9
  %20 = getelementptr inbounds %struct.tree, ptr %18, i64 0, i32 5
  store ptr %19, ptr %20, align 8, !tbaa !20
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi ptr [ %6, %17 ], [ %15, %14 ]
  %23 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 5
  store ptr null, ptr %23, align 8, !tbaa !20
  br label %24

24:                                               ; preds = %21, %1
  %25 = phi ptr [ %22, %21 ], [ null, %1 ]
  ret ptr %25
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #12

attributes #0 = { nofree nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize allocsize(0) }
attributes #15 = { nounwind optsize }

!llvm.ident = !{!0, !0, !0, !0}
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
!12 = !{!"int", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !12, i64 0}
!16 = !{!"tree", !12, i64 0, !17, i64 8, !17, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!17 = !{!"double", !9, i64 0}
!18 = !{!16, !17, i64 8}
!19 = !{!16, !17, i64 16}
!20 = !{!16, !8, i64 40}
!21 = distinct !{!21, !14}
!22 = !{!16, !8, i64 48}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = !{!16, !8, i64 24}
!26 = !{!16, !8, i64 32}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
