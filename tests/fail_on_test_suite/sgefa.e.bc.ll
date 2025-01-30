; ModuleID = '/src/llvm-test-suite/build/MultiSource/Applications/sgefa/sgefa.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FULL = type { i32, i32, [1000 x ptr] }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [49 x i8] c"Matrix row dim (%d) or column dim (%d) too big.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"One-Norm(A) ---------- %E.\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"FACTORED MATRIX FOLLOWS\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"True Solution\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Solution\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Solution to transposed system\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Hilbert Slice.  Test case %d of size %d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Monoelemental.  Test case %d of size %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Tridiagional.  Test case %d of size %d.\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Rank One.  Test case %d of size %d.\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Zero Column.  Test case %d of size %d.\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"Upper Triangular.  Test case %d of size %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Lower Triangular.  Test case %d of size %d.\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"Near Overflow.  Test case %d of size %d. BIG = %e\0A\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"Near Underflow.  Test case %d of size %d. SMALL = %e\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"MATRIX FOLLOWS\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"SOLUTION\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"RIGHT HAND SIDE\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"TRANSPOSE RIGHT HAND SIDE\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%3d|\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"%12.4e\00", align 1
@str.30 = private unnamed_addr constant [25 x i8] c"MATGEN: Error in matvec.\00", align 1
@str.31 = private unnamed_addr constant [28 x i8] c"MATGEN: All tests complete.\00", align 1
@str.32 = private unnamed_addr constant [73 x i8] c"\0A\0A**********************************************************************\00", align 1
@str.33 = private unnamed_addr constant [49 x i8] c"GET_SPACE: Can't get enouph space for vectors...\00", align 1
@str.34 = private unnamed_addr constant [51 x i8] c"GET_SPACE: Can't get enouph space for matricies...\00", align 1

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @isamax(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %0, 2
  br i1 %4, label %55, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %2, 1
  br i1 %6, label %35, label %7

7:                                                ; preds = %5
  %8 = sext i32 %2 to i64
  %9 = icmp slt i32 %2, 0
  %10 = sub nsw i32 1, %0
  %11 = mul nsw i32 %10, %2
  %12 = add nsw i32 %11, 1
  %13 = select i1 %9, i32 %12, i32 0
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds float, ptr %1, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !7
  %17 = fcmp ogt float %16, 0.000000e+00
  %18 = fneg float %16
  %19 = select i1 %17, float %16, float %18
  br label %20

20:                                               ; preds = %20, %7
  %21 = phi i32 [ %32, %20 ], [ 0, %7 ]
  %22 = phi i32 [ %33, %20 ], [ 1, %7 ]
  %23 = phi float [ %31, %20 ], [ %19, %7 ]
  %24 = phi ptr [ %25, %20 ], [ %15, %7 ]
  %25 = getelementptr inbounds float, ptr %24, i64 %8
  %26 = load float, ptr %25, align 4, !tbaa !7
  %27 = fcmp ogt float %26, 0.000000e+00
  %28 = fneg float %26
  %29 = select i1 %27, float %26, float %28
  %30 = fcmp ogt float %29, %23
  %31 = select i1 %30, float %29, float %23
  %32 = select i1 %30, i32 %22, i32 %21
  %33 = add nuw nsw i32 %22, 1
  %34 = icmp eq i32 %33, %0
  br i1 %34, label %55, label %20, !llvm.loop !11

35:                                               ; preds = %5
  %36 = load float, ptr %1, align 4, !tbaa !7
  %37 = fcmp ogt float %36, 0.000000e+00
  %38 = fneg float %36
  %39 = select i1 %37, float %36, float %38
  br label %40

40:                                               ; preds = %40, %35
  %41 = phi i32 [ %52, %40 ], [ 0, %35 ]
  %42 = phi i32 [ %53, %40 ], [ 1, %35 ]
  %43 = phi float [ %51, %40 ], [ %39, %35 ]
  %44 = phi ptr [ %45, %40 ], [ %1, %35 ]
  %45 = getelementptr inbounds float, ptr %44, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !7
  %47 = fcmp ogt float %46, 0.000000e+00
  %48 = fneg float %46
  %49 = select i1 %47, float %46, float %48
  %50 = fcmp ogt float %49, %43
  %51 = select i1 %50, float %49, float %43
  %52 = select i1 %50, i32 %42, i32 %41
  %53 = add nuw nsw i32 %42, 1
  %54 = icmp eq i32 %53, %0
  br i1 %54, label %55, label %40, !llvm.loop !13

55:                                               ; preds = %40, %20, %3
  %56 = phi i32 [ 0, %3 ], [ %52, %40 ], [ %32, %20 ]
  ret i32 %56
}

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal double @snrm2(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = icmp slt i32 %0, 1
  %5 = icmp slt i32 %2, 1
  %6 = or i1 %4, %5
  br i1 %6, label %145, label %7

7:                                                ; preds = %7, %3
  %8 = phi float [ %9, %7 ], [ 1.000000e+00, %3 ]
  %9 = fmul float %8, 5.000000e-01
  %10 = fadd float %9, 1.000000e+00
  %11 = fcmp une float %10, 1.000000e+00
  br i1 %11, label %7, label %12, !llvm.loop !14

12:                                               ; preds = %7
  %.lcssa21 = phi float [ %9, %7 ]
  %13 = fpext float %.lcssa21 to double
  %14 = fmul double %13, 2.000000e+00
  %15 = fdiv double 0x3696D601AD376AB9, %14
  %16 = tail call double @sqrt(double noundef %15) #15
  %17 = sitofp i32 %0 to double
  %18 = fdiv double 1.000000e+19, %17
  %19 = icmp sgt i32 %0, 0
  br i1 %19, label %20, label %145

20:                                               ; preds = %12
  %21 = zext i32 %2 to i64
  br label %22

22:                                               ; preds = %33, %20
  %23 = phi ptr [ %1, %20 ], [ %35, %33 ]
  %24 = phi i32 [ 0, %20 ], [ %34, %33 ]
  %25 = load float, ptr %23, align 4, !tbaa !7
  %26 = fcmp oeq float %25, 0.000000e+00
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %.lcssa20 = phi ptr [ %23, %22 ]
  %.lcssa19 = phi i32 [ %24, %22 ]
  %.lcssa18 = phi float [ %25, %22 ]
  %28 = fcmp ogt float %.lcssa18, 0.000000e+00
  %29 = fneg float %.lcssa18
  %30 = select i1 %28, float %.lcssa18, float %29
  %31 = fpext float %30 to double
  %32 = fcmp olt double %16, %31
  br i1 %32, label %41, label %66

33:                                               ; preds = %22
  %34 = add nuw nsw i32 %24, 1
  %35 = getelementptr inbounds float, ptr %23, i64 %21
  %36 = icmp eq i32 %34, %0
  br i1 %36, label %145, label %22, !llvm.loop !15

37:                                               ; preds = %69
  %.lcssa14 = phi i32 [ %70, %69 ]
  %.lcssa12 = phi float [ %72, %69 ]
  %.lcssa10 = phi double [ %73, %69 ]
  %.lcssa8 = phi ptr [ %74, %69 ]
  %38 = fpext float %.lcssa12 to double
  %39 = fmul double %.lcssa10, %38
  %40 = fmul double %39, %38
  br label %41

41:                                               ; preds = %37, %27
  %42 = phi double [ 0.000000e+00, %27 ], [ %40, %37 ]
  %43 = phi i32 [ %.lcssa19, %27 ], [ %.lcssa14, %37 ]
  %44 = phi ptr [ %.lcssa20, %27 ], [ %.lcssa8, %37 ]
  %45 = icmp slt i32 %43, %0
  br i1 %45, label %46, label %63

46:                                               ; preds = %56, %41
  %47 = phi ptr [ %61, %56 ], [ %44, %41 ]
  %48 = phi i32 [ %60, %56 ], [ %43, %41 ]
  %49 = phi double [ %59, %56 ], [ %42, %41 ]
  %50 = load float, ptr %47, align 4, !tbaa !7
  %51 = fcmp ogt float %50, 0.000000e+00
  %52 = fneg float %50
  %53 = select i1 %51, float %50, float %52
  %54 = fpext float %53 to double
  %55 = fcmp olt double %18, %54
  br i1 %55, label %105, label %56

56:                                               ; preds = %46
  %57 = fmul float %50, %50
  %58 = fpext float %57 to double
  %59 = fadd double %49, %58
  %60 = add i32 %48, 1
  %61 = getelementptr inbounds float, ptr %47, i64 %21
  %62 = icmp eq i32 %60, %0
  br i1 %62, label %63, label %46, !llvm.loop !16

63:                                               ; preds = %56, %41
  %64 = phi double [ %42, %41 ], [ %59, %56 ]
  %65 = tail call double @sqrt(double noundef %64) #15
  br label %145

66:                                               ; preds = %27
  %67 = add nuw nsw i32 %.lcssa19, 1
  %68 = icmp slt i32 %67, %0
  br i1 %68, label %69, label %100

69:                                               ; preds = %93, %66
  %70 = phi i32 [ %96, %93 ], [ %67, %66 ]
  %71 = phi ptr [ %74, %93 ], [ %.lcssa20, %66 ]
  %72 = phi float [ %95, %93 ], [ %30, %66 ]
  %73 = phi double [ %94, %93 ], [ 1.000000e+00, %66 ]
  %74 = getelementptr inbounds float, ptr %71, i64 %21
  %75 = load float, ptr %74, align 4, !tbaa !7
  %76 = fcmp ogt float %75, 0.000000e+00
  %77 = fneg float %75
  %78 = select i1 %76, float %75, float %77
  %79 = fpext float %78 to double
  %80 = fcmp olt double %16, %79
  br i1 %80, label %37, label %81

81:                                               ; preds = %69
  %82 = fcmp ogt float %78, %72
  br i1 %82, label %83, label %88

83:                                               ; preds = %81
  %84 = fdiv float %72, %75
  %85 = fpext float %84 to double
  %86 = fmul double %73, %85
  %87 = tail call double @llvm.fmuladd.f64(double %86, double %85, double 1.000000e+00)
  br label %93

88:                                               ; preds = %81
  %89 = fdiv float %75, %72
  %90 = fmul float %89, %89
  %91 = fpext float %90 to double
  %92 = fadd double %73, %91
  br label %93

93:                                               ; preds = %88, %83
  %94 = phi double [ %87, %83 ], [ %92, %88 ]
  %95 = phi float [ %78, %83 ], [ %72, %88 ]
  %96 = add i32 %70, 1
  %97 = icmp eq i32 %96, %0
  br i1 %97, label %98, label %69, !llvm.loop !17

98:                                               ; preds = %93
  %.lcssa17 = phi double [ %94, %93 ]
  %.lcssa16 = phi float [ %95, %93 ]
  %99 = fpext float %.lcssa16 to double
  br label %100

100:                                              ; preds = %98, %66
  %101 = phi double [ %99, %98 ], [ %31, %66 ]
  %102 = phi double [ %.lcssa17, %98 ], [ 1.000000e+00, %66 ]
  %103 = tail call double @sqrt(double noundef %102) #15
  %104 = fmul double %103, %101
  br label %145

105:                                              ; preds = %46
  %.lcssa7 = phi ptr [ %47, %46 ]
  %.lcssa6 = phi i32 [ %48, %46 ]
  %.lcssa5 = phi double [ %49, %46 ]
  %.lcssa4 = phi float [ %50, %46 ]
  %.lcssa3 = phi float [ %53, %46 ]
  %.lcssa2 = phi double [ %54, %46 ]
  %106 = fpext float %.lcssa4 to double
  %107 = fdiv double %.lcssa5, %106
  %108 = fdiv double %107, %106
  %109 = fadd double %108, 1.000000e+00
  %110 = add nsw i32 %.lcssa6, 1
  %111 = icmp slt i32 %110, %0
  br i1 %111, label %112, label %140

112:                                              ; preds = %133, %105
  %113 = phi i32 [ %136, %133 ], [ %110, %105 ]
  %114 = phi ptr [ %117, %133 ], [ %.lcssa7, %105 ]
  %115 = phi float [ %135, %133 ], [ %.lcssa3, %105 ]
  %116 = phi double [ %134, %133 ], [ %109, %105 ]
  %117 = getelementptr inbounds float, ptr %114, i64 %21
  %118 = load float, ptr %117, align 4, !tbaa !7
  %119 = fcmp ogt float %118, 0.000000e+00
  %120 = fneg float %118
  %121 = select i1 %119, float %118, float %120
  %122 = fcmp ogt float %121, %115
  br i1 %122, label %123, label %128

123:                                              ; preds = %112
  %124 = fdiv float %115, %118
  %125 = fpext float %124 to double
  %126 = fmul double %116, %125
  %127 = tail call double @llvm.fmuladd.f64(double %126, double %125, double 1.000000e+00)
  br label %133

128:                                              ; preds = %112
  %129 = fdiv float %118, %115
  %130 = fmul float %129, %129
  %131 = fpext float %130 to double
  %132 = fadd double %116, %131
  br label %133

133:                                              ; preds = %128, %123
  %134 = phi double [ %127, %123 ], [ %132, %128 ]
  %135 = phi float [ %121, %123 ], [ %115, %128 ]
  %136 = add nsw i32 %113, 1
  %137 = icmp slt i32 %136, %0
  br i1 %137, label %112, label %138, !llvm.loop !18

138:                                              ; preds = %133
  %.lcssa1 = phi double [ %134, %133 ]
  %.lcssa = phi float [ %135, %133 ]
  %139 = fpext float %.lcssa to double
  br label %140

140:                                              ; preds = %138, %105
  %141 = phi double [ %139, %138 ], [ %.lcssa2, %105 ]
  %142 = phi double [ %.lcssa1, %138 ], [ %109, %105 ]
  %143 = tail call double @sqrt(double noundef %142) #15
  %144 = fmul double %143, %141
  br label %145

145:                                              ; preds = %140, %100, %63, %33, %12, %3
  %146 = phi double [ %144, %140 ], [ %65, %63 ], [ %104, %100 ], [ 0.000000e+00, %3 ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %33 ]
  ret double %146
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @vexopy(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) #4 {
  %6 = icmp slt i32 %0, 1
  br i1 %6, label %35, label %7

7:                                                ; preds = %5
  %8 = icmp eq i32 %4, 1
  br i1 %8, label %9, label %22

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %17, %9 ], [ 0, %7 ]
  %11 = phi ptr [ %20, %9 ], [ %1, %7 ]
  %12 = phi ptr [ %19, %9 ], [ %3, %7 ]
  %13 = phi ptr [ %18, %9 ], [ %2, %7 ]
  %14 = load float, ptr %13, align 4, !tbaa !7
  %15 = load float, ptr %12, align 4, !tbaa !7
  %16 = fadd float %14, %15
  store float %16, ptr %11, align 4, !tbaa !7
  %17 = add nuw nsw i32 %10, 1
  %18 = getelementptr inbounds float, ptr %13, i64 1
  %19 = getelementptr inbounds float, ptr %12, i64 1
  %20 = getelementptr inbounds float, ptr %11, i64 1
  %21 = icmp eq i32 %17, %0
  br i1 %21, label %35, label %9, !llvm.loop !19

22:                                               ; preds = %22, %7
  %23 = phi i32 [ %30, %22 ], [ 0, %7 ]
  %24 = phi ptr [ %33, %22 ], [ %1, %7 ]
  %25 = phi ptr [ %32, %22 ], [ %3, %7 ]
  %26 = phi ptr [ %31, %22 ], [ %2, %7 ]
  %27 = load float, ptr %26, align 4, !tbaa !7
  %28 = load float, ptr %25, align 4, !tbaa !7
  %29 = fsub float %27, %28
  store float %29, ptr %24, align 4, !tbaa !7
  %30 = add nuw nsw i32 %23, 1
  %31 = getelementptr inbounds float, ptr %26, i64 1
  %32 = getelementptr inbounds float, ptr %25, i64 1
  %33 = getelementptr inbounds float, ptr %24, i64 1
  %34 = icmp eq i32 %30, %0
  br i1 %34, label %35, label %22, !llvm.loop !20

35:                                               ; preds = %22, %9, %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main() #5 {
  %1 = alloca %struct.FULL, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8008, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.FULL, ptr %1, i64 0, i32 1
  br label %7

7:                                                ; preds = %57, %0
  %8 = phi i32 [ 0, %0 ], [ %9, %57 ]
  %9 = add nuw nsw i32 %8, 1
  %10 = call i32 @matgen(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef %9, i32 noundef 40) #17, !range !21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %89

12:                                               ; preds = %7
  %13 = load i32, ptr %6, align 4, !tbaa !22
  %14 = icmp sgt i32 %13, 1000
  %15 = load i32, ptr %1, align 8
  %16 = icmp sgt i32 %15, 1000
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = icmp sgt i32 %15, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %18
  %21 = icmp sgt i32 %13, 0
  %22 = zext i32 %15 to i64
  br label %26

23:                                               ; preds = %12
  %.lcssa1 = phi i32 [ %13, %12 ]
  %.lcssa = phi i32 [ %15, %12 ]
  %24 = load ptr, ptr @stderr, align 8, !tbaa !25
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str, i32 noundef %.lcssa1, i32 noundef %.lcssa) #18
  call void @exit(i32 noundef 1) #19
  unreachable

26:                                               ; preds = %44, %20
  %27 = phi i64 [ 0, %20 ], [ %48, %44 ]
  %28 = phi float [ 0.000000e+00, %20 ], [ %47, %44 ]
  br i1 %21, label %29, label %44

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.FULL, ptr %1, i64 0, i32 2, i64 %27
  %31 = load ptr, ptr %30, align 8, !tbaa !25
  br label %32

32:                                               ; preds = %32, %29
  %33 = phi i32 [ %41, %32 ], [ 0, %29 ]
  %34 = phi float [ %40, %32 ], [ 0.000000e+00, %29 ]
  %35 = phi ptr [ %42, %32 ], [ %31, %29 ]
  %36 = load float, ptr %35, align 4, !tbaa !7
  %37 = fcmp olt float %36, 0.000000e+00
  %38 = fneg float %36
  %39 = select i1 %37, float %38, float %36
  %40 = fadd float %34, %39
  %41 = add nuw nsw i32 %33, 1
  %42 = getelementptr inbounds float, ptr %35, i64 1
  %43 = icmp eq i32 %41, %13
  br i1 %43, label %44, label %32, !llvm.loop !27

44:                                               ; preds = %32, %26
  %45 = phi float [ 0.000000e+00, %26 ], [ %40, %32 ]
  %46 = fcmp ogt float %28, %45
  %47 = select i1 %46, float %28, float %45
  %48 = add nuw nsw i64 %27, 1
  %49 = icmp eq i64 %48, %22
  br i1 %49, label %50, label %26, !llvm.loop !28

50:                                               ; preds = %44, %18
  %51 = phi float [ 0.000000e+00, %18 ], [ %47, %44 ]
  %52 = fpext float %51 to double
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %52) #17
  %54 = load ptr, ptr %5, align 8, !tbaa !25
  %55 = call i32 (ptr, ptr, ...) @sgefa(ptr noundef nonnull %1, ptr noundef %54) #15
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %84, %50
  br label %7, !llvm.loop !29

58:                                               ; preds = %50
  %59 = load ptr, ptr %2, align 8, !tbaa !25
  %60 = call i32 (ptr, ptr, ptr, i32, ...) @sgesl(ptr noundef nonnull %1, ptr noundef %54, ptr noundef %59, i32 noundef 0) #15
  %61 = load i32, ptr %6, align 4, !tbaa !22
  %62 = icmp slt i32 %61, 8
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr %4, align 8, !tbaa !25
  br label %72

65:                                               ; preds = %58
  call void @matdump(ptr noundef nonnull %1, ptr noundef nonnull @.str.2) #17
  %66 = load i32, ptr %6, align 4, !tbaa !22
  %67 = icmp slt i32 %66, 8
  %68 = load ptr, ptr %4, align 8, !tbaa !25
  br i1 %67, label %69, label %72

69:                                               ; preds = %65
  call void @fvecdump(ptr noundef %68, i32 noundef %66, ptr noundef nonnull @.str.3) #17
  %70 = load i32, ptr %6, align 4, !tbaa !22
  call void @fvecdump(ptr noundef %59, i32 noundef %70, ptr noundef nonnull @.str.4) #17
  %71 = load i32, ptr %6, align 4, !tbaa !22
  br label %72

72:                                               ; preds = %69, %65, %63
  %73 = phi ptr [ %64, %63 ], [ %68, %69 ], [ %68, %65 ]
  %74 = phi i32 [ %61, %63 ], [ %71, %69 ], [ %66, %65 ]
  %75 = call i32 (i32, ptr, ptr, ptr, i32, ...) @vexopy(i32 noundef %74, ptr noundef %59, ptr noundef %73, ptr noundef %59, i32 noundef 2) #15
  %76 = load i32, ptr %6, align 4, !tbaa !22
  %77 = call double (i32, ptr, i32, ...) @snrm2(i32 noundef %76, ptr noundef %59, i32 noundef 1) #15
  %78 = load ptr, ptr %3, align 8, !tbaa !25
  %79 = call i32 (ptr, ptr, ptr, i32, ...) @sgesl(ptr noundef nonnull %1, ptr noundef %54, ptr noundef %78, i32 noundef 1) #15
  %80 = load i32, ptr %6, align 4, !tbaa !22
  %81 = icmp slt i32 %80, 8
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  call void @fvecdump(ptr noundef %78, i32 noundef %80, ptr noundef nonnull @.str.5) #17
  %83 = load i32, ptr %6, align 4, !tbaa !22
  br label %84

84:                                               ; preds = %82, %72
  %85 = phi i32 [ %83, %82 ], [ %80, %72 ]
  %86 = call i32 (i32, ptr, ptr, ptr, i32, ...) @vexopy(i32 noundef %85, ptr noundef %78, ptr noundef %73, ptr noundef %78, i32 noundef 2) #15
  %87 = load i32, ptr %6, align 4, !tbaa !22
  %88 = call double (i32, ptr, i32, ...) @snrm2(i32 noundef %87, ptr noundef %78, i32 noundef 1) #15
  br label %57

89:                                               ; preds = %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8008, ptr nonnull %1) #16
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind optsize uwtable
define internal i32 @matgen(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) #5 {
  %8 = icmp sgt i32 %5, 1
  br i1 %8, label %9, label %26

9:                                                ; preds = %7
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  %11 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !22
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %14, %9
  %15 = phi i64 [ %18, %14 ], [ 0, %9 ]
  %16 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  tail call void @free(ptr noundef %17) #17
  %18 = add nuw nsw i64 %15, 1
  %19 = load i32, ptr %11, align 4, !tbaa !22
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %14, label %22, !llvm.loop !30

22:                                               ; preds = %14, %9
  %23 = load ptr, ptr %1, align 8, !tbaa !25
  tail call void @free(ptr noundef %23) #17
  %24 = load ptr, ptr %2, align 8, !tbaa !25
  tail call void @free(ptr noundef %24) #17
  %25 = load ptr, ptr %3, align 8, !tbaa !25
  tail call void @free(ptr noundef %25) #17
  br label %26

26:                                               ; preds = %22, %7
  switch i32 %5, label %617 [
    i32 1, label %27
    i32 2, label %27
    i32 3, label %27
    i32 4, label %92
    i32 5, label %92
    i32 6, label %102
    i32 7, label %102
    i32 8, label %102
    i32 9, label %141
    i32 10, label %170
    i32 11, label %242
    i32 12, label %325
    i32 13, label %408
    i32 14, label %513
  ]

27:                                               ; preds = %26, %26, %26
  %28 = mul nuw nsw i32 %5, 3
  %29 = mul i32 %28, %6
  store i32 %29, ptr %0, align 8, !tbaa !31
  %30 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 1
  store i32 %29, ptr %30, align 4, !tbaa !22
  %31 = tail call i32 @get_space(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17, !range !21
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %688

33:                                               ; preds = %27
  %34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %5, i32 noundef %29) #17
  %35 = icmp sgt i32 %29, 0
  br i1 %35, label %36, label %637

36:                                               ; preds = %33
  %37 = zext i32 %29 to i64
  %38 = add nuw nsw i64 %37, 1
  %39 = and i64 %38, 8589934590
  %40 = add nsw i64 %37, -1
  %41 = insertelement <2 x i64> poison, i64 %40, i64 0
  %42 = shufflevector <2 x i64> %41, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %43

43:                                               ; preds = %90, %36
  %44 = phi i64 [ 0, %36 ], [ %49, %90 ]
  %45 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !25
  %47 = add nsw i64 %44, -3
  %48 = add nuw nsw i64 %44, 2
  %49 = add nuw nsw i64 %44, 1
  %50 = trunc i64 %49 to i32
  br label %51

51:                                               ; preds = %87, %43
  %52 = phi i64 [ 0, %43 ], [ %88, %87 ]
  %53 = trunc i64 %52 to i32
  %54 = insertelement <2 x i64> poison, i64 %52, i64 0
  %55 = shufflevector <2 x i64> %54, <2 x i64> poison, <2 x i32> zeroinitializer
  %56 = or <2 x i64> %55, <i64 0, i64 1>
  %57 = icmp ule <2 x i64> %56, %42
  %58 = extractelement <2 x i1> %57, i64 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %51
  %60 = shl i64 %52, 2
  %61 = getelementptr i8, ptr %46, i64 %60
  %62 = add nuw i32 %53, %50
  %63 = and i64 %52, 4294967294
  %64 = and i64 %52, 4294967294
  %65 = sitofp i32 %62 to float
  %66 = icmp ult i64 %48, %63
  %67 = icmp sgt i64 %47, %64
  %68 = fdiv float 1.000000e+00, %65
  %69 = select i1 %67, i1 true, i1 %66
  %70 = select i1 %69, float 0.000000e+00, float %68
  store float %70, ptr %61, align 4, !tbaa !7
  br label %71

71:                                               ; preds = %59, %51
  %72 = extractelement <2 x i1> %57, i64 1
  br i1 %72, label %73, label %87

73:                                               ; preds = %71
  %74 = shl i64 %52, 2
  %75 = or i64 %74, 4
  %76 = getelementptr i8, ptr %46, i64 %75
  %77 = or i32 %53, 1
  %78 = add nuw i32 %77, %50
  %79 = zext i32 %77 to i64
  %80 = zext i32 %77 to i64
  %81 = sitofp i32 %78 to float
  %82 = icmp ult i64 %48, %79
  %83 = icmp sgt i64 %47, %80
  %84 = fdiv float 1.000000e+00, %81
  %85 = select i1 %83, i1 true, i1 %82
  %86 = select i1 %85, float 0.000000e+00, float %84
  store float %86, ptr %76, align 4, !tbaa !7
  br label %87

87:                                               ; preds = %73, %71
  %88 = add i64 %52, 2
  %89 = icmp eq i64 %88, %39
  br i1 %89, label %90, label %51, !llvm.loop !32

90:                                               ; preds = %87
  %91 = icmp eq i64 %49, %37
  br i1 %91, label %619, label %43, !llvm.loop !35

92:                                               ; preds = %26, %26
  store i32 1, ptr %0, align 8, !tbaa !31
  %93 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 1
  store i32 1, ptr %93, align 4, !tbaa !22
  %94 = tail call i32 @get_space(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17, !range !21
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %688

96:                                               ; preds = %92
  %97 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %5, i32 noundef 1) #17
  %98 = icmp eq i32 %5, 4
  %99 = select i1 %98, float 3.000000e+00, float 0.000000e+00
  %100 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !25
  store float %99, ptr %101, align 4, !tbaa !7
  br label %637

102:                                              ; preds = %26, %26, %26
  %103 = mul i32 %6, 15
  store i32 %103, ptr %0, align 8, !tbaa !31
  %104 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 1
  store i32 %103, ptr %104, align 4, !tbaa !22
  %105 = tail call i32 @get_space(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17, !range !21
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %688

107:                                              ; preds = %102
  %108 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %5, i32 noundef %103) #17
  %109 = icmp eq i32 %5, 7
  %110 = select i1 %109, float 1.000000e+02, float 1.000000e+00
  %111 = icmp eq i32 %5, 8
  %112 = select i1 %111, float 1.000000e+02, float 1.000000e+00
  %113 = icmp sgt i32 %6, 0
  br i1 %113, label %114, label %619

114:                                              ; preds = %107
  %115 = tail call i32 @llvm.smax.i32(i32 %103, i32 1)
  %116 = zext i32 %115 to i64
  br label %117

117:                                              ; preds = %139, %114
  %118 = phi i64 [ 0, %114 ], [ %121, %139 ]
  %119 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !25
  %121 = add nuw nsw i64 %118, 1
  %122 = trunc i64 %118 to i32
  %123 = add i32 %122, -1
  br label %124

124:                                              ; preds = %135, %117
  %125 = phi ptr [ %120, %117 ], [ %137, %135 ]
  %126 = phi i32 [ 0, %117 ], [ %136, %135 ]
  store float 0.000000e+00, ptr %125, align 4, !tbaa !7
  %127 = zext i32 %126 to i64
  %128 = icmp eq i64 %118, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %124
  %130 = icmp eq i32 %126, %123
  br i1 %130, label %133, label %131

131:                                              ; preds = %129
  %132 = icmp eq i64 %121, %127
  br i1 %132, label %133, label %135

133:                                              ; preds = %131, %129, %124
  %134 = phi float [ 4.000000e+00, %124 ], [ %110, %129 ], [ %112, %131 ]
  store float %134, ptr %125, align 4, !tbaa !7
  br label %135

135:                                              ; preds = %133, %131
  %136 = add nuw nsw i32 %126, 1
  %137 = getelementptr inbounds float, ptr %125, i64 1
  %138 = icmp eq i32 %136, %115
  br i1 %138, label %139, label %124, !llvm.loop !36

139:                                              ; preds = %135
  %140 = icmp eq i64 %121, %116
  br i1 %140, label %619, label %117, !llvm.loop !37

141:                                              ; preds = %26
  %142 = mul i32 %6, 5
  store i32 %142, ptr %0, align 8, !tbaa !31
  %143 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 1
  store i32 %142, ptr %143, align 4, !tbaa !22
  %144 = tail call i32 @get_space(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17, !range !21
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %688

146:                                              ; preds = %141
  %147 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef 9, i32 noundef %142) #17
  %148 = icmp sgt i32 %6, 0
  br i1 %148, label %149, label %619

149:                                              ; preds = %146
  %150 = tail call i32 @llvm.smax.i32(i32 %142, i32 1)
  %151 = zext i32 %150 to i64
  br label %152

152:                                              ; preds = %167, %149
  %153 = phi i64 [ 0, %149 ], [ %168, %167 ]
  %154 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !25
  %156 = trunc i64 %153 to i32
  br label %157

157:                                              ; preds = %157, %152
  %158 = phi ptr [ %165, %157 ], [ %155, %152 ]
  %159 = phi i32 [ %164, %157 ], [ 0, %152 ]
  %160 = sub nsw i32 %159, %156
  %161 = sitofp i32 %160 to double
  %162 = tail call double @pow(double noundef 1.000000e+01, double noundef %161) #15
  %163 = fptrunc double %162 to float
  store float %163, ptr %158, align 4, !tbaa !7
  %164 = add nuw nsw i32 %159, 1
  %165 = getelementptr inbounds float, ptr %158, i64 1
  %166 = icmp eq i32 %164, %150
  br i1 %166, label %167, label %157, !llvm.loop !38

167:                                              ; preds = %157
  %168 = add nuw nsw i64 %153, 1
  %169 = icmp eq i64 %168, %151
  br i1 %169, label %619, label %152, !llvm.loop !39

170:                                              ; preds = %26
  %171 = shl i32 %6, 2
  store i32 %171, ptr %0, align 8, !tbaa !31
  %172 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 1
  store i32 %171, ptr %172, align 4, !tbaa !22
  %173 = tail call i32 @get_space(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17, !range !21
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %688

175:                                              ; preds = %170
  %176 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef 10, i32 noundef %171) #17
  %177 = icmp sgt i32 %6, 0
  br i1 %177, label %178, label %619

178:                                              ; preds = %175
  %179 = tail call i32 @llvm.smax.i32(i32 %171, i32 1)
  %180 = zext i32 %179 to i64
  %181 = add nuw nsw i64 %180, 3
  %182 = and i64 %181, 4294967292
  %183 = add nsw i64 %180, -1
  %184 = insertelement <4 x i64> poison, i64 %183, i64 0
  %185 = shufflevector <4 x i64> %184, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %186

186:                                              ; preds = %239, %178
  %187 = phi i64 [ 0, %178 ], [ %240, %239 ]
  %188 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %187
  %189 = load ptr, ptr %188, align 8, !tbaa !25
  %190 = trunc i64 %187 to i32
  %191 = add i32 %190, -2
  %192 = sitofp i32 %191 to float
  br label %193

193:                                              ; preds = %235, %186
  %194 = phi i64 [ 0, %186 ], [ %236, %235 ]
  %195 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %186 ], [ %237, %235 ]
  %196 = insertelement <4 x i64> poison, i64 %194, i64 0
  %197 = shufflevector <4 x i64> %196, <4 x i64> poison, <4 x i32> zeroinitializer
  %198 = or <4 x i64> %197, <i64 0, i64 1, i64 2, i64 3>
  %199 = icmp ule <4 x i64> %198, %185
  %200 = add nuw nsw <4 x i32> %195, <i32 1, i32 1, i32 1, i32 1>
  %201 = extractelement <4 x i1> %199, i64 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %193
  %203 = shl i64 %194, 2
  %204 = getelementptr i8, ptr %189, i64 %203
  %205 = extractelement <4 x i32> %200, i64 0
  %206 = sitofp i32 %205 to float
  %207 = fdiv float %192, %206
  store float %207, ptr %204, align 4, !tbaa !7
  br label %208

208:                                              ; preds = %202, %193
  %209 = extractelement <4 x i1> %199, i64 1
  br i1 %209, label %210, label %217

210:                                              ; preds = %208
  %211 = shl i64 %194, 2
  %212 = or i64 %211, 4
  %213 = getelementptr i8, ptr %189, i64 %212
  %214 = extractelement <4 x i32> %200, i64 1
  %215 = sitofp i32 %214 to float
  %216 = fdiv float %192, %215
  store float %216, ptr %213, align 4, !tbaa !7
  br label %217

217:                                              ; preds = %210, %208
  %218 = extractelement <4 x i1> %199, i64 2
  br i1 %218, label %219, label %226

219:                                              ; preds = %217
  %220 = shl i64 %194, 2
  %221 = or i64 %220, 8
  %222 = getelementptr i8, ptr %189, i64 %221
  %223 = extractelement <4 x i32> %200, i64 2
  %224 = sitofp i32 %223 to float
  %225 = fdiv float %192, %224
  store float %225, ptr %222, align 4, !tbaa !7
  br label %226

226:                                              ; preds = %219, %217
  %227 = extractelement <4 x i1> %199, i64 3
  br i1 %227, label %228, label %235

228:                                              ; preds = %226
  %229 = shl i64 %194, 2
  %230 = or i64 %229, 12
  %231 = getelementptr i8, ptr %189, i64 %230
  %232 = extractelement <4 x i32> %200, i64 3
  %233 = sitofp i32 %232 to float
  %234 = fdiv float %192, %233
  store float %234, ptr %231, align 4, !tbaa !7
  br label %235

235:                                              ; preds = %228, %226
  %236 = add i64 %194, 4
  %237 = add <4 x i32> %195, <i32 4, i32 4, i32 4, i32 4>
  %238 = icmp eq i64 %236, %182
  br i1 %238, label %239, label %193, !llvm.loop !40

239:                                              ; preds = %235
  %240 = add nuw nsw i64 %187, 1
  %241 = icmp eq i64 %240, %180
  br i1 %241, label %619, label %186, !llvm.loop !41

242:                                              ; preds = %26
  %243 = mul i32 %6, 6
  store i32 %243, ptr %0, align 8, !tbaa !31
  %244 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 1
  store i32 %243, ptr %244, align 4, !tbaa !22
  %245 = tail call i32 @get_space(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17, !range !21
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %688

247:                                              ; preds = %242
  %248 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef 11, i32 noundef %243) #17
  %249 = icmp sgt i32 %6, 0
  br i1 %249, label %250, label %619

250:                                              ; preds = %247
  %251 = tail call i32 @llvm.smax.i32(i32 %243, i32 1)
  %252 = zext i32 %251 to i64
  %253 = add nuw nsw i64 %252, 3
  %254 = and i64 %253, 4294967292
  %255 = add nsw i64 %252, -1
  %256 = insertelement <4 x i64> poison, i64 %255, i64 0
  %257 = shufflevector <4 x i64> %256, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %258

258:                                              ; preds = %322, %250
  %259 = phi i64 [ 0, %250 ], [ %323, %322 ]
  %260 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %259
  %261 = load ptr, ptr %260, align 8, !tbaa !25
  %262 = trunc i64 %259 to i32
  br label %263

263:                                              ; preds = %319, %258
  %264 = phi i64 [ 0, %258 ], [ %320, %319 ]
  %265 = trunc i64 %264 to i32
  %266 = insertelement <4 x i64> poison, i64 %264, i64 0
  %267 = shufflevector <4 x i64> %266, <4 x i64> poison, <4 x i32> zeroinitializer
  %268 = or <4 x i64> %267, <i64 0, i64 1, i64 2, i64 3>
  %269 = icmp ule <4 x i64> %268, %257
  %270 = extractelement <4 x i1> %269, i64 0
  br i1 %270, label %271, label %280

271:                                              ; preds = %263
  %272 = shl i64 %264, 2
  %273 = getelementptr i8, ptr %261, i64 %272
  %274 = sub nsw i32 %265, %262
  %275 = add nsw i32 %274, 1
  %276 = and i64 %264, 4294967292
  %277 = sitofp i32 %275 to float
  %278 = icmp ult i64 %259, %276
  %279 = select i1 %278, float 0.000000e+00, float %277
  store float %279, ptr %273, align 4, !tbaa !7
  br label %280

280:                                              ; preds = %271, %263
  %281 = extractelement <4 x i1> %269, i64 1
  br i1 %281, label %282, label %293

282:                                              ; preds = %280
  %283 = shl i64 %264, 2
  %284 = or i64 %283, 4
  %285 = getelementptr i8, ptr %261, i64 %284
  %286 = or i32 %265, 1
  %287 = sub nsw i32 %286, %262
  %288 = add nsw i32 %287, 1
  %289 = zext i32 %286 to i64
  %290 = sitofp i32 %288 to float
  %291 = icmp ult i64 %259, %289
  %292 = select i1 %291, float 0.000000e+00, float %290
  store float %292, ptr %285, align 4, !tbaa !7
  br label %293

293:                                              ; preds = %282, %280
  %294 = extractelement <4 x i1> %269, i64 2
  br i1 %294, label %295, label %306

295:                                              ; preds = %293
  %296 = shl i64 %264, 2
  %297 = or i64 %296, 8
  %298 = getelementptr i8, ptr %261, i64 %297
  %299 = or i32 %265, 2
  %300 = sub nsw i32 %299, %262
  %301 = add nsw i32 %300, 1
  %302 = zext i32 %299 to i64
  %303 = sitofp i32 %301 to float
  %304 = icmp ult i64 %259, %302
  %305 = select i1 %304, float 0.000000e+00, float %303
  store float %305, ptr %298, align 4, !tbaa !7
  br label %306

306:                                              ; preds = %295, %293
  %307 = extractelement <4 x i1> %269, i64 3
  br i1 %307, label %308, label %319

308:                                              ; preds = %306
  %309 = shl i64 %264, 2
  %310 = or i64 %309, 12
  %311 = getelementptr i8, ptr %261, i64 %310
  %312 = or i32 %265, 3
  %313 = sub nsw i32 %312, %262
  %314 = add nsw i32 %313, 1
  %315 = zext i32 %312 to i64
  %316 = sitofp i32 %314 to float
  %317 = icmp ult i64 %259, %315
  %318 = select i1 %317, float 0.000000e+00, float %316
  store float %318, ptr %311, align 4, !tbaa !7
  br label %319

319:                                              ; preds = %308, %306
  %320 = add i64 %264, 4
  %321 = icmp eq i64 %320, %254
  br i1 %321, label %322, label %263, !llvm.loop !42

322:                                              ; preds = %319
  %323 = add nuw nsw i64 %259, 1
  %324 = icmp eq i64 %323, %252
  br i1 %324, label %619, label %258, !llvm.loop !43

325:                                              ; preds = %26
  %326 = mul i32 %6, 6
  store i32 %326, ptr %0, align 8, !tbaa !31
  %327 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 1
  store i32 %326, ptr %327, align 4, !tbaa !22
  %328 = tail call i32 @get_space(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17, !range !21
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %688

330:                                              ; preds = %325
  %331 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef 12, i32 noundef %326) #17
  %332 = icmp sgt i32 %6, 0
  br i1 %332, label %333, label %619

333:                                              ; preds = %330
  %334 = tail call i32 @llvm.smax.i32(i32 %326, i32 1)
  %335 = zext i32 %334 to i64
  %336 = add nuw nsw i64 %335, 3
  %337 = and i64 %336, 4294967292
  %338 = add nsw i64 %335, -1
  %339 = insertelement <4 x i64> poison, i64 %338, i64 0
  %340 = shufflevector <4 x i64> %339, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %341

341:                                              ; preds = %405, %333
  %342 = phi i64 [ 0, %333 ], [ %406, %405 ]
  %343 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %342
  %344 = load ptr, ptr %343, align 8, !tbaa !25
  %345 = trunc i64 %342 to i32
  br label %346

346:                                              ; preds = %402, %341
  %347 = phi i64 [ 0, %341 ], [ %403, %402 ]
  %348 = trunc i64 %347 to i32
  %349 = insertelement <4 x i64> poison, i64 %347, i64 0
  %350 = shufflevector <4 x i64> %349, <4 x i64> poison, <4 x i32> zeroinitializer
  %351 = or <4 x i64> %350, <i64 0, i64 1, i64 2, i64 3>
  %352 = icmp ule <4 x i64> %351, %340
  %353 = extractelement <4 x i1> %352, i64 0
  br i1 %353, label %354, label %363

354:                                              ; preds = %346
  %355 = shl i64 %347, 2
  %356 = getelementptr i8, ptr %344, i64 %355
  %357 = sub nsw i32 %348, %345
  %358 = add nsw i32 %357, 1
  %359 = and i64 %347, 4294967292
  %360 = sitofp i32 %358 to float
  %361 = icmp ugt i64 %342, %359
  %362 = select i1 %361, float 0.000000e+00, float %360
  store float %362, ptr %356, align 4, !tbaa !7
  br label %363

363:                                              ; preds = %354, %346
  %364 = extractelement <4 x i1> %352, i64 1
  br i1 %364, label %365, label %376

365:                                              ; preds = %363
  %366 = shl i64 %347, 2
  %367 = or i64 %366, 4
  %368 = getelementptr i8, ptr %344, i64 %367
  %369 = or i32 %348, 1
  %370 = sub nsw i32 %369, %345
  %371 = add nsw i32 %370, 1
  %372 = zext i32 %369 to i64
  %373 = sitofp i32 %371 to float
  %374 = icmp ugt i64 %342, %372
  %375 = select i1 %374, float 0.000000e+00, float %373
  store float %375, ptr %368, align 4, !tbaa !7
  br label %376

376:                                              ; preds = %365, %363
  %377 = extractelement <4 x i1> %352, i64 2
  br i1 %377, label %378, label %389

378:                                              ; preds = %376
  %379 = shl i64 %347, 2
  %380 = or i64 %379, 8
  %381 = getelementptr i8, ptr %344, i64 %380
  %382 = or i32 %348, 2
  %383 = sub nsw i32 %382, %345
  %384 = add nsw i32 %383, 1
  %385 = zext i32 %382 to i64
  %386 = sitofp i32 %384 to float
  %387 = icmp ugt i64 %342, %385
  %388 = select i1 %387, float 0.000000e+00, float %386
  store float %388, ptr %381, align 4, !tbaa !7
  br label %389

389:                                              ; preds = %378, %376
  %390 = extractelement <4 x i1> %352, i64 3
  br i1 %390, label %391, label %402

391:                                              ; preds = %389
  %392 = shl i64 %347, 2
  %393 = or i64 %392, 12
  %394 = getelementptr i8, ptr %344, i64 %393
  %395 = or i32 %348, 3
  %396 = sub nsw i32 %395, %345
  %397 = add nsw i32 %396, 1
  %398 = zext i32 %395 to i64
  %399 = sitofp i32 %397 to float
  %400 = icmp ugt i64 %342, %398
  %401 = select i1 %400, float 0.000000e+00, float %399
  store float %401, ptr %394, align 4, !tbaa !7
  br label %402

402:                                              ; preds = %391, %389
  %403 = add i64 %347, 4
  %404 = icmp eq i64 %403, %337
  br i1 %404, label %405, label %346, !llvm.loop !44

405:                                              ; preds = %402
  %406 = add nuw nsw i64 %342, 1
  %407 = icmp eq i64 %406, %335
  br i1 %407, label %619, label %341, !llvm.loop !45

408:                                              ; preds = %26
  %409 = mul i32 %6, 5
  store i32 %409, ptr %0, align 8, !tbaa !31
  %410 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 1
  store i32 %409, ptr %410, align 4, !tbaa !22
  %411 = tail call i32 @get_space(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17, !range !21
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %688

413:                                              ; preds = %408
  %414 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef 13, i32 noundef %409, double noundef 0x47D2CED32A16A1B1) #17
  %415 = icmp sgt i32 %6, 0
  br i1 %415, label %416, label %619

416:                                              ; preds = %413
  %417 = mul nsw i32 %409, %409
  %418 = sitofp i32 %417 to float
  %419 = fpext float %418 to double
  %420 = tail call i32 @llvm.smax.i32(i32 %409, i32 1)
  %421 = zext i32 %420 to i64
  %422 = add nuw nsw i64 %421, 3
  %423 = and i64 %422, 4294967292
  %424 = add nsw i64 %421, -1
  %425 = insertelement <4 x i64> poison, i64 %424, i64 0
  %426 = shufflevector <4 x i64> %425, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %427

427:                                              ; preds = %511, %416
  %428 = phi i64 [ 0, %416 ], [ %431, %511 ]
  %429 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %428
  %430 = load ptr, ptr %429, align 8, !tbaa !25
  %431 = add nuw nsw i64 %428, 1
  %432 = trunc i64 %431 to i32
  %433 = sitofp i32 %432 to float
  br label %434

434:                                              ; preds = %507, %427
  %435 = phi i64 [ 0, %427 ], [ %508, %507 ]
  %436 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %427 ], [ %509, %507 ]
  %437 = insertelement <4 x i64> poison, i64 %435, i64 0
  %438 = shufflevector <4 x i64> %437, <4 x i64> poison, <4 x i32> zeroinitializer
  %439 = or <4 x i64> %438, <i64 0, i64 1, i64 2, i64 3>
  %440 = icmp ule <4 x i64> %439, %426
  %441 = add nuw nsw <4 x i32> %436, <i32 1, i32 1, i32 1, i32 1>
  %442 = extractelement <4 x i1> %440, i64 0
  br i1 %442, label %443, label %456

443:                                              ; preds = %434
  %444 = shl i64 %435, 2
  %445 = getelementptr i8, ptr %430, i64 %444
  %446 = and i64 %435, 4294967292
  %447 = icmp ult i64 %428, %446
  %448 = extractelement <4 x i32> %441, i64 0
  %449 = select i1 %447, i32 %448, i32 %432
  %450 = sitofp i32 %449 to float
  %451 = fdiv float %433, %450
  %452 = fpext float %451 to double
  %453 = fmul double %452, 0x47D2CED32A16A1B1
  %454 = fdiv double %453, %419
  %455 = fptrunc double %454 to float
  store float %455, ptr %445, align 4, !tbaa !7
  br label %456

456:                                              ; preds = %443, %434
  %457 = extractelement <4 x i1> %440, i64 1
  br i1 %457, label %458, label %473

458:                                              ; preds = %456
  %459 = shl i64 %435, 2
  %460 = or i64 %459, 4
  %461 = getelementptr i8, ptr %430, i64 %460
  %462 = and i64 %435, 4294967292
  %463 = or i64 %462, 1
  %464 = icmp ult i64 %428, %463
  %465 = extractelement <4 x i32> %441, i64 1
  %466 = select i1 %464, i32 %465, i32 %432
  %467 = sitofp i32 %466 to float
  %468 = fdiv float %433, %467
  %469 = fpext float %468 to double
  %470 = fmul double %469, 0x47D2CED32A16A1B1
  %471 = fdiv double %470, %419
  %472 = fptrunc double %471 to float
  store float %472, ptr %461, align 4, !tbaa !7
  br label %473

473:                                              ; preds = %458, %456
  %474 = extractelement <4 x i1> %440, i64 2
  br i1 %474, label %475, label %490

475:                                              ; preds = %473
  %476 = shl i64 %435, 2
  %477 = or i64 %476, 8
  %478 = getelementptr i8, ptr %430, i64 %477
  %479 = and i64 %435, 4294967292
  %480 = or i64 %479, 2
  %481 = icmp ult i64 %428, %480
  %482 = extractelement <4 x i32> %441, i64 2
  %483 = select i1 %481, i32 %482, i32 %432
  %484 = sitofp i32 %483 to float
  %485 = fdiv float %433, %484
  %486 = fpext float %485 to double
  %487 = fmul double %486, 0x47D2CED32A16A1B1
  %488 = fdiv double %487, %419
  %489 = fptrunc double %488 to float
  store float %489, ptr %478, align 4, !tbaa !7
  br label %490

490:                                              ; preds = %475, %473
  %491 = extractelement <4 x i1> %440, i64 3
  br i1 %491, label %492, label %507

492:                                              ; preds = %490
  %493 = shl i64 %435, 2
  %494 = or i64 %493, 12
  %495 = getelementptr i8, ptr %430, i64 %494
  %496 = and i64 %435, 4294967292
  %497 = or i64 %496, 3
  %498 = icmp ult i64 %428, %497
  %499 = extractelement <4 x i32> %441, i64 3
  %500 = select i1 %498, i32 %499, i32 %432
  %501 = sitofp i32 %500 to float
  %502 = fdiv float %433, %501
  %503 = fpext float %502 to double
  %504 = fmul double %503, 0x47D2CED32A16A1B1
  %505 = fdiv double %504, %419
  %506 = fptrunc double %505 to float
  store float %506, ptr %495, align 4, !tbaa !7
  br label %507

507:                                              ; preds = %492, %490
  %508 = add i64 %435, 4
  %509 = add <4 x i32> %436, <i32 4, i32 4, i32 4, i32 4>
  %510 = icmp eq i64 %508, %423
  br i1 %510, label %511, label %434, !llvm.loop !46

511:                                              ; preds = %507
  %512 = icmp eq i64 %431, %421
  br i1 %512, label %619, label %427, !llvm.loop !47

513:                                              ; preds = %26
  %514 = mul i32 %6, 5
  store i32 %514, ptr %0, align 8, !tbaa !31
  %515 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 1
  store i32 %514, ptr %515, align 4, !tbaa !22
  %516 = tail call i32 @get_space(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17, !range !21
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %688

518:                                              ; preds = %513
  %519 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef 14, i32 noundef %514, double noundef 0x380B38FB9DAA78E4) #17
  %520 = mul nsw i32 %514, %514
  %521 = sitofp i32 %520 to float
  %522 = icmp sgt i32 %6, 0
  br i1 %522, label %523, label %619

523:                                              ; preds = %518
  %524 = tail call i32 @llvm.smax.i32(i32 %514, i32 1)
  %525 = zext i32 %524 to i64
  %526 = add nuw nsw i64 %525, 3
  %527 = and i64 %526, 4294967292
  %528 = add nsw i64 %525, -1
  %529 = insertelement <4 x i64> poison, i64 %528, i64 0
  %530 = shufflevector <4 x i64> %529, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %531

531:                                              ; preds = %615, %523
  %532 = phi i64 [ 0, %523 ], [ %535, %615 ]
  %533 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %532
  %534 = load ptr, ptr %533, align 8, !tbaa !25
  %535 = add nuw nsw i64 %532, 1
  %536 = trunc i64 %535 to i32
  %537 = sitofp i32 %536 to float
  br label %538

538:                                              ; preds = %611, %531
  %539 = phi i64 [ 0, %531 ], [ %612, %611 ]
  %540 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %531 ], [ %613, %611 ]
  %541 = insertelement <4 x i64> poison, i64 %539, i64 0
  %542 = shufflevector <4 x i64> %541, <4 x i64> poison, <4 x i32> zeroinitializer
  %543 = or <4 x i64> %542, <i64 0, i64 1, i64 2, i64 3>
  %544 = icmp ule <4 x i64> %543, %530
  %545 = add nuw nsw <4 x i32> %540, <i32 1, i32 1, i32 1, i32 1>
  %546 = extractelement <4 x i1> %544, i64 0
  br i1 %546, label %547, label %560

547:                                              ; preds = %538
  %548 = shl i64 %539, 2
  %549 = getelementptr i8, ptr %534, i64 %548
  %550 = and i64 %539, 4294967292
  %551 = icmp ult i64 %532, %550
  %552 = extractelement <4 x i32> %545, i64 0
  %553 = select i1 %551, i32 %552, i32 %536
  %554 = sitofp i32 %553 to float
  %555 = fdiv float %554, %537
  %556 = fmul float %555, %521
  %557 = fpext float %556 to double
  %558 = fdiv double %557, 0x47D2CED32A16A1B1
  %559 = fptrunc double %558 to float
  store float %559, ptr %549, align 4, !tbaa !7
  br label %560

560:                                              ; preds = %547, %538
  %561 = extractelement <4 x i1> %544, i64 1
  br i1 %561, label %562, label %577

562:                                              ; preds = %560
  %563 = shl i64 %539, 2
  %564 = or i64 %563, 4
  %565 = getelementptr i8, ptr %534, i64 %564
  %566 = and i64 %539, 4294967292
  %567 = or i64 %566, 1
  %568 = icmp ult i64 %532, %567
  %569 = extractelement <4 x i32> %545, i64 1
  %570 = select i1 %568, i32 %569, i32 %536
  %571 = sitofp i32 %570 to float
  %572 = fdiv float %571, %537
  %573 = fmul float %572, %521
  %574 = fpext float %573 to double
  %575 = fdiv double %574, 0x47D2CED32A16A1B1
  %576 = fptrunc double %575 to float
  store float %576, ptr %565, align 4, !tbaa !7
  br label %577

577:                                              ; preds = %562, %560
  %578 = extractelement <4 x i1> %544, i64 2
  br i1 %578, label %579, label %594

579:                                              ; preds = %577
  %580 = shl i64 %539, 2
  %581 = or i64 %580, 8
  %582 = getelementptr i8, ptr %534, i64 %581
  %583 = and i64 %539, 4294967292
  %584 = or i64 %583, 2
  %585 = icmp ult i64 %532, %584
  %586 = extractelement <4 x i32> %545, i64 2
  %587 = select i1 %585, i32 %586, i32 %536
  %588 = sitofp i32 %587 to float
  %589 = fdiv float %588, %537
  %590 = fmul float %589, %521
  %591 = fpext float %590 to double
  %592 = fdiv double %591, 0x47D2CED32A16A1B1
  %593 = fptrunc double %592 to float
  store float %593, ptr %582, align 4, !tbaa !7
  br label %594

594:                                              ; preds = %579, %577
  %595 = extractelement <4 x i1> %544, i64 3
  br i1 %595, label %596, label %611

596:                                              ; preds = %594
  %597 = shl i64 %539, 2
  %598 = or i64 %597, 12
  %599 = getelementptr i8, ptr %534, i64 %598
  %600 = and i64 %539, 4294967292
  %601 = or i64 %600, 3
  %602 = icmp ult i64 %532, %601
  %603 = extractelement <4 x i32> %545, i64 3
  %604 = select i1 %602, i32 %603, i32 %536
  %605 = sitofp i32 %604 to float
  %606 = fdiv float %605, %537
  %607 = fmul float %606, %521
  %608 = fpext float %607 to double
  %609 = fdiv double %608, 0x47D2CED32A16A1B1
  %610 = fptrunc double %609 to float
  store float %610, ptr %599, align 4, !tbaa !7
  br label %611

611:                                              ; preds = %596, %594
  %612 = add i64 %539, 4
  %613 = add <4 x i32> %540, <i32 4, i32 4, i32 4, i32 4>
  %614 = icmp eq i64 %612, %527
  br i1 %614, label %615, label %538, !llvm.loop !48

615:                                              ; preds = %611
  %616 = icmp eq i64 %535, %525
  br i1 %616, label %619, label %531, !llvm.loop !49

617:                                              ; preds = %26
  %618 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.31)
  br label %688

619:                                              ; preds = %615, %518, %511, %413, %405, %330, %322, %247, %239, %175, %167, %146, %139, %107, %90
  %620 = phi i32 [ %103, %107 ], [ %142, %146 ], [ %171, %175 ], [ %243, %247 ], [ %326, %330 ], [ %409, %413 ], [ %514, %518 ], [ %29, %90 ], [ %103, %139 ], [ %142, %167 ], [ %171, %239 ], [ %243, %322 ], [ %326, %405 ], [ %409, %511 ], [ %514, %615 ]
  %621 = load ptr, ptr %1, align 8, !tbaa !25
  store float 1.000000e+00, ptr %621, align 4, !tbaa !7
  %622 = icmp sgt i32 %620, 1
  br i1 %622, label %623, label %640

623:                                              ; preds = %619
  %624 = load ptr, ptr %3, align 8, !tbaa !25
  store float 0.000000e+00, ptr %624, align 4, !tbaa !7
  %625 = icmp eq i32 %620, 2
  br i1 %625, label %640, label %626

626:                                              ; preds = %623
  %627 = getelementptr inbounds float, ptr %621, i64 2
  br label %628

628:                                              ; preds = %628, %626
  %629 = phi ptr [ %635, %628 ], [ %627, %626 ]
  %630 = phi i32 [ %634, %628 ], [ 2, %626 ]
  %631 = getelementptr inbounds float, ptr %629, i64 -2
  %632 = load float, ptr %631, align 4, !tbaa !7
  %633 = fneg float %632
  store float %633, ptr %629, align 4, !tbaa !7
  %634 = add nuw nsw i32 %630, 1
  %635 = getelementptr inbounds float, ptr %629, i64 1
  %636 = icmp eq i32 %634, %620
  br i1 %636, label %640, label %628, !llvm.loop !50

637:                                              ; preds = %96, %33
  %638 = phi i32 [ 1, %96 ], [ %29, %33 ]
  %639 = load ptr, ptr %1, align 8, !tbaa !25
  store float 1.000000e+00, ptr %639, align 4, !tbaa !7
  br label %640

640:                                              ; preds = %637, %628, %623, %619
  %641 = phi i32 [ 2, %623 ], [ %620, %619 ], [ %638, %637 ], [ %620, %628 ]
  %642 = phi ptr [ %621, %623 ], [ %621, %619 ], [ %639, %637 ], [ %621, %628 ]
  %643 = load ptr, ptr %2, align 8, !tbaa !25
  %644 = tail call i32 @matvec(ptr noundef %0, ptr noundef nonnull %642, ptr noundef %643, i32 noundef 0) #17, !range !21
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %648, label %646

646:                                              ; preds = %640
  %647 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.30)
  br label %688

648:                                              ; preds = %640
  %649 = load ptr, ptr %1, align 8, !tbaa !25
  %650 = load ptr, ptr %3, align 8, !tbaa !25
  %651 = load i32, ptr %0, align 8, !tbaa !31
  %652 = icmp slt i32 %651, 1
  br i1 %652, label %680, label %653

653:                                              ; preds = %648
  %654 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 1
  %655 = load i32, ptr %654, align 4, !tbaa !22
  %656 = icmp slt i32 %655, 1
  br i1 %656, label %680, label %657

657:                                              ; preds = %653
  %658 = zext i32 %655 to i64
  br label %659

659:                                              ; preds = %676, %657
  %660 = phi i64 [ 0, %657 ], [ %677, %676 ]
  %661 = phi ptr [ %650, %657 ], [ %678, %676 ]
  %662 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %660
  %663 = load ptr, ptr %662, align 8, !tbaa !25
  store float 0.000000e+00, ptr %661, align 4, !tbaa !7
  br label %664

664:                                              ; preds = %664, %659
  %665 = phi float [ 0.000000e+00, %659 ], [ %671, %664 ]
  %666 = phi ptr [ %663, %659 ], [ %674, %664 ]
  %667 = phi ptr [ %649, %659 ], [ %673, %664 ]
  %668 = phi i32 [ 0, %659 ], [ %672, %664 ]
  %669 = load float, ptr %666, align 4, !tbaa !7
  %670 = load float, ptr %667, align 4, !tbaa !7
  %671 = tail call float @llvm.fmuladd.f32(float %669, float %670, float %665)
  store float %671, ptr %661, align 4, !tbaa !7
  %672 = add nuw nsw i32 %668, 1
  %673 = getelementptr inbounds float, ptr %667, i64 1
  %674 = getelementptr inbounds float, ptr %666, i64 1
  %675 = icmp eq i32 %672, %651
  br i1 %675, label %676, label %664, !llvm.loop !51

676:                                              ; preds = %664
  %677 = add nuw nsw i64 %660, 1
  %678 = getelementptr inbounds float, ptr %661, i64 1
  %679 = icmp eq i64 %677, %658
  br i1 %679, label %682, label %659, !llvm.loop !52

680:                                              ; preds = %653, %648
  %681 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.30)
  br label %688

682:                                              ; preds = %676
  %683 = icmp slt i32 %641, 8
  br i1 %683, label %684, label %688

684:                                              ; preds = %682
  tail call void @matdump(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #17
  %685 = load ptr, ptr %1, align 8, !tbaa !25
  tail call void @fvecdump(ptr noundef %685, i32 noundef %641, ptr noundef nonnull @.str.19) #17
  %686 = load ptr, ptr %2, align 8, !tbaa !25
  tail call void @fvecdump(ptr noundef %686, i32 noundef %641, ptr noundef nonnull @.str.20) #17
  %687 = load ptr, ptr %3, align 8, !tbaa !25
  tail call void @fvecdump(ptr noundef %687, i32 noundef %641, ptr noundef nonnull @.str.21) #17
  br label %688

688:                                              ; preds = %684, %682, %680, %646, %617, %513, %408, %325, %242, %170, %141, %102, %92, %27
  %689 = phi i32 [ 1, %617 ], [ 1, %646 ], [ 1, %680 ], [ 1, %27 ], [ 1, %92 ], [ 1, %102 ], [ 1, %141 ], [ 1, %170 ], [ 1, %242 ], [ 1, %325 ], [ 1, %408 ], [ 1, %513 ], [ 0, %682 ], [ 0, %684 ]
  ret i32 %689
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noreturn optsize
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize uwtable
define internal void @matdump(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load i32, ptr %0, align 8, !tbaa !31
  %4 = sdiv i32 %3, 6
  %5 = mul nsw i32 %4, -6
  %6 = add i32 %5, %3
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) %1)
  %8 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !22
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %64

11:                                               ; preds = %2
  %12 = icmp sgt i32 %3, 5
  %13 = icmp sgt i32 %6, 0
  br label %14

14:                                               ; preds = %58, %11
  %15 = phi i64 [ 0, %11 ], [ %60, %58 ]
  %16 = trunc i64 %15 to i32
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %16) #17
  br i1 %12, label %22, label %18

18:                                               ; preds = %42, %14
  %19 = phi i32 [ 0, %14 ], [ %30, %42 ]
  br i1 %13, label %20, label %58

20:                                               ; preds = %18
  %21 = sext i32 %19 to i64
  br label %46

22:                                               ; preds = %42, %14
  %23 = phi i32 [ %30, %42 ], [ 0, %14 ]
  %24 = phi i32 [ %44, %42 ], [ 0, %14 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26) #17
  br label %28

28:                                               ; preds = %26, %22
  %29 = sext i32 %23 to i64
  %30 = add i32 %23, 6
  br label %31

31:                                               ; preds = %31, %28
  %32 = phi i64 [ %29, %28 ], [ %39, %31 ]
  %33 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !25
  %35 = getelementptr inbounds float, ptr %34, i64 %15
  %36 = load float, ptr %35, align 4, !tbaa !7
  %37 = fpext float %36 to double
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, double noundef %37) #17
  %39 = add nsw i64 %32, 1
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %30, %40
  br i1 %41, label %42, label %31, !llvm.loop !53

42:                                               ; preds = %31
  %43 = tail call i32 @putchar(i32 10)
  %44 = add nuw nsw i32 %24, 1
  %45 = icmp eq i32 %44, %4
  br i1 %45, label %18, label %22, !llvm.loop !54

46:                                               ; preds = %46, %20
  %47 = phi i64 [ %21, %20 ], [ %56, %46 ]
  %48 = phi i32 [ 0, %20 ], [ %55, %46 ]
  %49 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %47
  %50 = load ptr, ptr %49, align 8, !tbaa !25
  %51 = getelementptr inbounds float, ptr %50, i64 %15
  %52 = load float, ptr %51, align 4, !tbaa !7
  %53 = fpext float %52 to double
  %54 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, double noundef %53) #17
  %55 = add nuw nsw i32 %48, 1
  %56 = add nsw i64 %47, 1
  %57 = icmp eq i32 %55, %6
  br i1 %57, label %58, label %46, !llvm.loop !55

58:                                               ; preds = %46, %18
  %59 = tail call i32 @putchar(i32 10)
  %60 = add nuw nsw i64 %15, 1
  %61 = load i32, ptr %8, align 4, !tbaa !22
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %60, %62
  br i1 %63, label %14, label %64, !llvm.loop !56

64:                                               ; preds = %58, %2
  %65 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @fvecdump(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #9 {
  %4 = sdiv i32 %1, 6
  %5 = mul nsw i32 %4, -6
  %6 = add i32 %5, %1
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) %2)
  %8 = icmp sgt i32 %1, 5
  br i1 %8, label %9, label %30

9:                                                ; preds = %24, %3
  %10 = phi i32 [ %28, %24 ], [ 6, %3 ]
  %11 = phi ptr [ %.lcssa, %24 ], [ %0, %3 ]
  %12 = phi i32 [ %25, %24 ], [ 0, %3 ]
  %13 = phi i32 [ %27, %24 ], [ 0, %3 ]
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %12) #17
  br label %15

15:                                               ; preds = %15, %9
  %16 = phi ptr [ %11, %9 ], [ %21, %15 ]
  %17 = phi i32 [ %12, %9 ], [ %22, %15 ]
  %18 = load float, ptr %16, align 4, !tbaa !7
  %19 = fpext float %18 to double
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, double noundef %19) #17
  %21 = getelementptr inbounds float, ptr %16, i64 1
  %22 = add i32 %17, 1
  %23 = icmp eq i32 %22, %10
  br i1 %23, label %24, label %15, !llvm.loop !57

24:                                               ; preds = %15
  %.lcssa = phi ptr [ %21, %15 ]
  %25 = add nuw i32 %12, 6
  %26 = tail call i32 @putchar(i32 10)
  %27 = add nuw nsw i32 %13, 1
  %28 = add nuw i32 %10, 6
  %29 = icmp eq i32 %27, %4
  br i1 %29, label %30, label %9, !llvm.loop !58

30:                                               ; preds = %24, %3
  %31 = phi i32 [ 0, %3 ], [ %25, %24 ]
  %32 = phi ptr [ %0, %3 ], [ %.lcssa, %24 ]
  %33 = icmp eq i32 %6, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %30
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %31) #17
  %36 = icmp sgt i32 %6, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %37, %34
  %38 = phi ptr [ %44, %37 ], [ %32, %34 ]
  %39 = phi i32 [ %43, %37 ], [ 0, %34 ]
  %40 = load float, ptr %38, align 4, !tbaa !7
  %41 = fpext float %40 to double
  %42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, double noundef %41) #17
  %43 = add nuw nsw i32 %39, 1
  %44 = getelementptr inbounds float, ptr %38, i64 1
  %45 = icmp eq i32 %43, %6
  br i1 %45, label %46, label %37, !llvm.loop !59

46:                                               ; preds = %37, %34
  %47 = tail call i32 @putchar(i32 10)
  br label %48

48:                                               ; preds = %46, %30
  %49 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_space(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) #5 {
  %6 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !22
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %14, label %22

9:                                                ; preds = %14
  %10 = add nuw nsw i64 %15, 1
  %11 = load i32, ptr %6, align 4, !tbaa !22
  %12 = sext i32 %11 to i64
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %14, label %22, !llvm.loop !60

14:                                               ; preds = %9, %5
  %15 = phi i64 [ %10, %9 ], [ 0, %5 ]
  %16 = load i32, ptr %0, align 8, !tbaa !31
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  %19 = tail call ptr (i64, ...) @malloc(i64 noundef %18) #15
  %20 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %15
  store ptr %19, ptr %20, align 8, !tbaa !25
  %21 = icmp eq ptr %19, null
  br i1 %21, label %49, label %9

22:                                               ; preds = %9, %5
  %23 = load i32, ptr %0, align 8, !tbaa !31
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 2
  %26 = tail call ptr (i64, ...) @malloc(i64 noundef %25) #15
  store ptr %26, ptr %1, align 8, !tbaa !25
  %27 = load i32, ptr %0, align 8, !tbaa !31
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 2
  %30 = tail call ptr (i64, ...) @malloc(i64 noundef %29) #15
  store ptr %30, ptr %2, align 8, !tbaa !25
  %31 = load i32, ptr %0, align 8, !tbaa !31
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 2
  %34 = tail call ptr (i64, ...) @malloc(i64 noundef %33) #15
  store ptr %34, ptr %3, align 8, !tbaa !25
  %35 = load i32, ptr %0, align 8, !tbaa !31
  %36 = sext i32 %35 to i64
  %37 = shl nsw i64 %36, 2
  %38 = tail call ptr (i64, ...) @malloc(i64 noundef %37) #15
  store ptr %38, ptr %4, align 8, !tbaa !25
  %39 = load ptr, ptr %1, align 8, !tbaa !25
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %22
  %42 = load ptr, ptr %2, align 8, !tbaa !25
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %3, align 8, !tbaa !25
  %46 = icmp eq ptr %45, null
  %47 = icmp eq ptr %38, null
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44, %41, %22, %14
  %50 = phi ptr [ @str.33, %44 ], [ @str.33, %41 ], [ @str.33, %22 ], [ @str.34, %14 ]
  %51 = tail call i32 @puts(ptr nonnull dereferenceable(1) %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi i32 [ 0, %44 ], [ 1, %49 ]
  ret i32 %53
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @matvec(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) #12 {
  %5 = load i32, ptr %0, align 8, !tbaa !31
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %74, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !22
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %74, label %11

11:                                               ; preds = %7
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %11
  %14 = zext i32 %9 to i64
  br label %15

15:                                               ; preds = %32, %13
  %16 = phi i64 [ 0, %13 ], [ %33, %32 ]
  %17 = phi ptr [ %2, %13 ], [ %34, %32 ]
  %18 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !25
  store float 0.000000e+00, ptr %17, align 4, !tbaa !7
  br label %20

20:                                               ; preds = %20, %15
  %21 = phi float [ 0.000000e+00, %15 ], [ %27, %20 ]
  %22 = phi ptr [ %19, %15 ], [ %30, %20 ]
  %23 = phi ptr [ %1, %15 ], [ %29, %20 ]
  %24 = phi i32 [ 0, %15 ], [ %28, %20 ]
  %25 = load float, ptr %22, align 4, !tbaa !7
  %26 = load float, ptr %23, align 4, !tbaa !7
  %27 = tail call float @llvm.fmuladd.f32(float %25, float %26, float %21)
  store float %27, ptr %17, align 4, !tbaa !7
  %28 = add nuw nsw i32 %24, 1
  %29 = getelementptr inbounds float, ptr %23, i64 1
  %30 = getelementptr inbounds float, ptr %22, i64 1
  %31 = icmp eq i32 %28, %5
  br i1 %31, label %32, label %20, !llvm.loop !51

32:                                               ; preds = %20
  %33 = add nuw nsw i64 %16, 1
  %34 = getelementptr inbounds float, ptr %17, i64 1
  %35 = icmp eq i64 %33, %14
  br i1 %35, label %74, label %15, !llvm.loop !52

36:                                               ; preds = %11
  %37 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !25
  br label %43

39:                                               ; preds = %43
  %40 = icmp sgt i32 %5, 1
  br i1 %40, label %41, label %74

41:                                               ; preds = %39
  %42 = zext i32 %5 to i64
  br label %54

43:                                               ; preds = %43, %36
  %44 = phi ptr [ %52, %43 ], [ %38, %36 ]
  %45 = phi ptr [ %51, %43 ], [ %2, %36 ]
  %46 = phi i32 [ %50, %43 ], [ 0, %36 ]
  %47 = load float, ptr %44, align 4, !tbaa !7
  %48 = load float, ptr %1, align 4, !tbaa !7
  %49 = fmul float %47, %48
  store float %49, ptr %45, align 4, !tbaa !7
  %50 = add nuw nsw i32 %46, 1
  %51 = getelementptr inbounds float, ptr %45, i64 1
  %52 = getelementptr inbounds float, ptr %44, i64 1
  %53 = icmp eq i32 %50, %9
  br i1 %53, label %39, label %43, !llvm.loop !61

54:                                               ; preds = %71, %41
  %55 = phi i64 [ 1, %41 ], [ %72, %71 ]
  %56 = getelementptr inbounds float, ptr %1, i64 %55
  %57 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %55
  %58 = load ptr, ptr %57, align 8, !tbaa !25
  br label %59

59:                                               ; preds = %59, %54
  %60 = phi ptr [ %69, %59 ], [ %58, %54 ]
  %61 = phi ptr [ %68, %59 ], [ %2, %54 ]
  %62 = phi i32 [ %67, %59 ], [ 0, %54 ]
  %63 = load float, ptr %60, align 4, !tbaa !7
  %64 = load float, ptr %56, align 4, !tbaa !7
  %65 = load float, ptr %61, align 4, !tbaa !7
  %66 = tail call float @llvm.fmuladd.f32(float %63, float %64, float %65)
  store float %66, ptr %61, align 4, !tbaa !7
  %67 = add nuw nsw i32 %62, 1
  %68 = getelementptr inbounds float, ptr %61, i64 1
  %69 = getelementptr inbounds float, ptr %60, i64 1
  %70 = icmp eq i32 %67, %9
  br i1 %70, label %71, label %59, !llvm.loop !62

71:                                               ; preds = %59
  %72 = add nuw nsw i64 %55, 1
  %73 = icmp eq i64 %72, %42
  br i1 %73, label %74, label %54, !llvm.loop !63

74:                                               ; preds = %71, %39, %32, %7, %4
  %75 = phi i32 [ 1, %7 ], [ 1, %4 ], [ 0, %39 ], [ 0, %71 ], [ 0, %32 ]
  ret i32 %75
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: optsize
declare ptr @malloc(...) local_unnamed_addr #13

; Function Attrs: nounwind optsize uwtable
define internal i32 @sgefa(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = load i32, ptr %0, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !22
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %98

7:                                                ; preds = %2
  %8 = add i32 %3, -1
  %9 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !25
  %11 = icmp sgt i32 %3, 1
  br i1 %11, label %12, label %91

12:                                               ; preds = %7
  %13 = zext i32 %3 to i64
  %14 = zext i32 %8 to i64
  %15 = zext i32 %3 to i64
  br label %16

16:                                               ; preds = %85, %12
  %17 = phi i64 [ 0, %12 ], [ %86, %85 ]
  %18 = phi i64 [ 1, %12 ], [ %89, %85 ]
  %19 = phi ptr [ %1, %12 ], [ %88, %85 ]
  %20 = phi i32 [ 0, %12 ], [ %87, %85 ]
  %21 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !25
  %23 = getelementptr inbounds float, ptr %22, i64 %17
  %24 = trunc i64 %17 to i32
  %25 = sub i32 %3, %24
  %26 = tail call i32 (i32, ptr, i32, ...) @isamax(i32 noundef %25, ptr noundef %23, i32 noundef 1) #15
  %27 = trunc i64 %17 to i32
  %28 = add nsw i32 %26, %27
  store i32 %28, ptr %19, align 4, !tbaa !64
  %29 = load ptr, ptr %21, align 8, !tbaa !25
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds float, ptr %29, i64 %30
  %32 = load float, ptr %31, align 4, !tbaa !7
  %33 = fcmp oeq float %32, 0.000000e+00
  br i1 %33, label %34, label %36

34:                                               ; preds = %16
  %35 = add nuw nsw i64 %17, 1
  br label %85

36:                                               ; preds = %16
  %37 = icmp eq i32 %26, 0
  %38 = load float, ptr %23, align 4, !tbaa !7
  br i1 %37, label %40, label %39

39:                                               ; preds = %36
  store float %38, ptr %31, align 4, !tbaa !7
  store float %32, ptr %23, align 4, !tbaa !7
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi float [ %32, %39 ], [ %38, %36 ]
  %42 = fdiv float -1.000000e+00, %41
  %43 = add nuw nsw i64 %17, 1
  %44 = getelementptr inbounds float, ptr %23, i64 1
  %45 = icmp slt i64 %43, %13
  br i1 %45, label %46, label %85

46:                                               ; preds = %40
  %47 = trunc i64 %43 to i32
  br label %51

48:                                               ; preds = %51
  br i1 %45, label %49, label %85

49:                                               ; preds = %48
  %50 = trunc i64 %43 to i32
  br label %59

51:                                               ; preds = %51, %46
  %52 = phi ptr [ %57, %51 ], [ %44, %46 ]
  %53 = phi i32 [ %56, %51 ], [ %47, %46 ]
  %54 = load float, ptr %52, align 4, !tbaa !7
  %55 = fmul float %42, %54
  store float %55, ptr %52, align 4, !tbaa !7
  %56 = add nuw nsw i32 %53, 1
  %57 = getelementptr inbounds float, ptr %52, i64 1
  %58 = icmp eq i32 %56, %3
  br i1 %58, label %48, label %51, !llvm.loop !65

59:                                               ; preds = %82, %49
  %60 = phi i64 [ %18, %49 ], [ %83, %82 ]
  %61 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !25
  %63 = getelementptr inbounds float, ptr %62, i64 %17
  %64 = load float, ptr %63, align 4, !tbaa !7
  br i1 %37, label %69, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds float, ptr %62, i64 %30
  %67 = load float, ptr %66, align 4, !tbaa !7
  store float %67, ptr %63, align 4, !tbaa !7
  store float %64, ptr %66, align 4, !tbaa !7
  %68 = load float, ptr %63, align 4, !tbaa !7
  br label %69

69:                                               ; preds = %65, %59
  %70 = phi float [ %68, %65 ], [ %64, %59 ]
  br label %71

71:                                               ; preds = %71, %69
  %72 = phi ptr [ %44, %69 ], [ %80, %71 ]
  %73 = phi ptr [ %63, %69 ], [ %75, %71 ]
  %74 = phi i32 [ %50, %69 ], [ %79, %71 ]
  %75 = getelementptr inbounds float, ptr %73, i64 1
  %76 = load float, ptr %72, align 4, !tbaa !7
  %77 = load float, ptr %75, align 4, !tbaa !7
  %78 = tail call float @llvm.fmuladd.f32(float %70, float %76, float %77)
  store float %78, ptr %75, align 4, !tbaa !7
  %79 = add nuw nsw i32 %74, 1
  %80 = getelementptr inbounds float, ptr %72, i64 1
  %81 = icmp eq i32 %79, %3
  br i1 %81, label %82, label %71, !llvm.loop !66

82:                                               ; preds = %71
  %83 = add nuw nsw i64 %60, 1
  %84 = icmp eq i64 %83, %15
  br i1 %84, label %85, label %59, !llvm.loop !67

85:                                               ; preds = %82, %48, %40, %34
  %86 = phi i64 [ %35, %34 ], [ %43, %48 ], [ %43, %40 ], [ %43, %82 ]
  %87 = phi i32 [ %27, %34 ], [ %20, %48 ], [ %20, %40 ], [ %20, %82 ]
  %88 = getelementptr inbounds i32, ptr %19, i64 1
  %89 = add nuw nsw i64 %18, 1
  %90 = icmp eq i64 %86, %14
  br i1 %90, label %91, label %16, !llvm.loop !68

91:                                               ; preds = %85, %7
  %92 = phi i32 [ 0, %7 ], [ %87, %85 ]
  %93 = phi ptr [ %1, %7 ], [ %88, %85 ]
  %94 = phi ptr [ %10, %7 ], [ %23, %85 ]
  store i32 %8, ptr %93, align 4, !tbaa !64
  %95 = load float, ptr %94, align 4, !tbaa !7
  %96 = fcmp oeq float %95, 0.000000e+00
  %97 = select i1 %96, i32 %3, i32 %92
  br label %98

98:                                               ; preds = %91, %2
  %99 = phi i32 [ %97, %91 ], [ -1, %2 ]
  ret i32 %99
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @sgesl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) #14 {
  %5 = load i32, ptr %0, align 8, !tbaa !31
  %6 = add i32 %5, -1
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = icmp sgt i32 %5, 0
  br i1 %9, label %10, label %153

10:                                               ; preds = %8
  %11 = zext i32 %5 to i64
  br label %79

12:                                               ; preds = %4
  %13 = icmp sgt i32 %5, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = zext i32 %5 to i64
  %16 = zext i32 %6 to i64
  %17 = zext i32 %5 to i64
  br label %22

18:                                               ; preds = %51, %12
  %19 = icmp sgt i32 %5, 0
  br i1 %19, label %20, label %153

20:                                               ; preds = %18
  %21 = zext i32 %6 to i64
  br label %55

22:                                               ; preds = %51, %14
  %23 = phi i64 [ 0, %14 ], [ %39, %51 ]
  %24 = phi i64 [ 1, %14 ], [ %53, %51 ]
  %25 = phi ptr [ %1, %14 ], [ %52, %51 ]
  %26 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %23
  %27 = load ptr, ptr %26, align 8, !tbaa !25
  %28 = getelementptr inbounds float, ptr %27, i64 %23
  %29 = load i32, ptr %25, align 4, !tbaa !64
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, ptr %2, i64 %30
  %32 = load float, ptr %31, align 4, !tbaa !7
  %33 = zext i32 %29 to i64
  %34 = icmp eq i64 %23, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %22
  %36 = getelementptr inbounds float, ptr %2, i64 %23
  %37 = load float, ptr %36, align 4, !tbaa !7
  store float %37, ptr %31, align 4, !tbaa !7
  store float %32, ptr %36, align 4, !tbaa !7
  br label %38

38:                                               ; preds = %35, %22
  %39 = add nuw nsw i64 %23, 1
  %40 = icmp ult i64 %39, %15
  br i1 %40, label %41, label %51

41:                                               ; preds = %41, %38
  %42 = phi i64 [ %49, %41 ], [ %24, %38 ]
  %43 = phi ptr [ %44, %41 ], [ %28, %38 ]
  %44 = getelementptr inbounds float, ptr %43, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !7
  %46 = getelementptr inbounds float, ptr %2, i64 %42
  %47 = load float, ptr %46, align 4, !tbaa !7
  %48 = tail call float @llvm.fmuladd.f32(float %45, float %32, float %47)
  store float %48, ptr %46, align 4, !tbaa !7
  %49 = add nuw nsw i64 %42, 1
  %50 = icmp eq i64 %49, %17
  br i1 %50, label %51, label %41, !llvm.loop !69

51:                                               ; preds = %41, %38
  %52 = getelementptr inbounds i32, ptr %25, i64 1
  %53 = add nuw nsw i64 %24, 1
  %54 = icmp eq i64 %39, %16
  br i1 %54, label %18, label %22, !llvm.loop !70

55:                                               ; preds = %77, %20
  %56 = phi i64 [ %21, %20 ], [ %78, %77 ]
  %57 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !25
  %59 = getelementptr inbounds float, ptr %58, i64 %56
  %60 = load float, ptr %59, align 4, !tbaa !7
  %61 = getelementptr inbounds float, ptr %2, i64 %56
  %62 = load float, ptr %61, align 4, !tbaa !7
  %63 = fdiv float %62, %60
  store float %63, ptr %61, align 4, !tbaa !7
  %64 = icmp eq i64 %56, 0
  br i1 %64, label %153, label %65

65:                                               ; preds = %65, %55
  %66 = phi i64 [ %74, %65 ], [ 0, %55 ]
  %67 = phi ptr [ %75, %65 ], [ %58, %55 ]
  %68 = load float, ptr %67, align 4, !tbaa !7
  %69 = load float, ptr %61, align 4, !tbaa !7
  %70 = getelementptr inbounds float, ptr %2, i64 %66
  %71 = load float, ptr %70, align 4, !tbaa !7
  %72 = fneg float %68
  %73 = tail call float @llvm.fmuladd.f32(float %72, float %69, float %71)
  store float %73, ptr %70, align 4, !tbaa !7
  %74 = add nuw nsw i64 %66, 1
  %75 = getelementptr inbounds float, ptr %67, i64 1
  %76 = icmp eq i64 %74, %56
  br i1 %76, label %77, label %65, !llvm.loop !71

77:                                               ; preds = %65
  %78 = add nsw i64 %56, -1
  br i1 %64, label %153, label %55, !llvm.loop !72

79:                                               ; preds = %98, %10
  %80 = phi i64 [ 0, %10 ], [ %105, %98 ]
  %81 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !25
  %83 = getelementptr inbounds float, ptr %82, i64 %80
  %84 = icmp eq i64 %80, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %85, %79
  %86 = phi i32 [ %93, %85 ], [ 0, %79 ]
  %87 = phi ptr [ %95, %85 ], [ %2, %79 ]
  %88 = phi ptr [ %94, %85 ], [ %82, %79 ]
  %89 = phi float [ %92, %85 ], [ 0.000000e+00, %79 ]
  %90 = load float, ptr %88, align 4, !tbaa !7
  %91 = load float, ptr %87, align 4, !tbaa !7
  %92 = tail call float @llvm.fmuladd.f32(float %90, float %91, float %89)
  %93 = add nuw nsw i32 %86, 1
  %94 = getelementptr inbounds float, ptr %88, i64 1
  %95 = getelementptr inbounds float, ptr %87, i64 1
  %96 = zext i32 %93 to i64
  %97 = icmp eq i64 %80, %96
  br i1 %97, label %98, label %85, !llvm.loop !73

98:                                               ; preds = %85, %79
  %99 = phi float [ 0.000000e+00, %79 ], [ %92, %85 ]
  %100 = getelementptr inbounds float, ptr %2, i64 %80
  %101 = load float, ptr %100, align 4, !tbaa !7
  %102 = fsub float %101, %99
  %103 = load float, ptr %83, align 4, !tbaa !7
  %104 = fdiv float %102, %103
  store float %104, ptr %100, align 4, !tbaa !7
  %105 = add nuw nsw i64 %80, 1
  %106 = icmp eq i64 %105, %11
  br i1 %106, label %107, label %79, !llvm.loop !74

107:                                              ; preds = %98
  %108 = icmp sgt i32 %5, 1
  br i1 %108, label %109, label %153

109:                                              ; preds = %107
  %110 = add nsw i32 %5, -2
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, ptr %1, i64 %111
  %113 = zext i32 %110 to i64
  %114 = zext i32 %5 to i64
  br label %115

115:                                              ; preds = %149, %109
  %116 = phi i64 [ %113, %109 ], [ %150, %149 ]
  %117 = phi ptr [ %112, %109 ], [ %151, %149 ]
  %118 = getelementptr inbounds float, ptr %2, i64 %116
  %119 = add nuw nsw i64 %116, 1
  %120 = icmp slt i64 %119, %114
  br i1 %120, label %121, label %138

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.FULL, ptr %0, i64 0, i32 2, i64 %116
  %123 = load ptr, ptr %122, align 8, !tbaa !25
  %124 = getelementptr inbounds float, ptr %123, i64 %116
  %125 = trunc i64 %119 to i32
  br label %126

126:                                              ; preds = %126, %121
  %127 = phi i32 [ %136, %126 ], [ %125, %121 ]
  %128 = phi ptr [ %131, %126 ], [ %118, %121 ]
  %129 = phi ptr [ %132, %126 ], [ %124, %121 ]
  %130 = phi float [ %135, %126 ], [ 0.000000e+00, %121 ]
  %131 = getelementptr inbounds float, ptr %128, i64 1
  %132 = getelementptr inbounds float, ptr %129, i64 1
  %133 = load float, ptr %132, align 4, !tbaa !7
  %134 = load float, ptr %131, align 4, !tbaa !7
  %135 = tail call float @llvm.fmuladd.f32(float %133, float %134, float %130)
  %136 = add nsw i32 %127, 1
  %137 = icmp eq i32 %136, %5
  br i1 %137, label %138, label %126, !llvm.loop !75

138:                                              ; preds = %126, %115
  %139 = phi float [ 0.000000e+00, %115 ], [ %135, %126 ]
  %140 = load float, ptr %118, align 4, !tbaa !7
  %141 = fadd float %139, %140
  store float %141, ptr %118, align 4, !tbaa !7
  %142 = load i32, ptr %117, align 4, !tbaa !64
  %143 = zext i32 %142 to i64
  %144 = icmp eq i64 %116, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %138
  %146 = sext i32 %142 to i64
  %147 = getelementptr inbounds float, ptr %2, i64 %146
  %148 = load float, ptr %147, align 4, !tbaa !7
  store float %141, ptr %147, align 4, !tbaa !7
  store float %148, ptr %118, align 4, !tbaa !7
  br label %149

149:                                              ; preds = %145, %138
  %150 = add nsw i64 %116, -1
  %151 = getelementptr inbounds i32, ptr %117, i64 -1
  %152 = icmp sgt i64 %116, 0
  br i1 %152, label %115, label %153, !llvm.loop !76

153:                                              ; preds = %149, %107, %77, %55, %18, %8
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { optsize }
attributes #18 = { cold optsize }
attributes #19 = { noreturn nounwind optsize }

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
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = !{i32 0, i32 2}
!22 = !{!23, !24, i64 4}
!23 = !{!"FULL", !24, i64 0, !24, i64 4, !9, i64 8}
!24 = !{!"int", !9, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"any pointer", !9, i64 0}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = !{!23, !24, i64 0}
!32 = distinct !{!32, !12, !33, !34}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12, !33, !34}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12, !33, !34}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12, !33, !34}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12, !33, !34}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12, !33, !34}
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
!64 = !{!24, !24, i64 0}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !12}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !12}
!75 = distinct !{!75, !12}
!76 = distinct !{!76, !12}
