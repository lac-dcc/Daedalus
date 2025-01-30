; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Misc/fbench.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@niter = internal global i32 1000, align 4
@spectral_line = internal unnamed_addr global [9 x double] zeroinitializer, align 16
@current_surfaces = internal unnamed_addr global i1 false, align 2
@testcase = internal unnamed_addr constant [4 x [4 x double]] [[4 x double] [double 2.705000e+01, double 1.513700e+00, double 6.360000e+01, double 5.200000e-01], [4 x double] [double -1.668000e+01, double 1.000000e+00, double 0.000000e+00, double 1.380000e-01], [4 x double] [double -1.668000e+01, double 1.616400e+00, double 3.670000e+01, double 3.800000e-01], [4 x double] [double -7.810000e+01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00]], align 16
@s = internal unnamed_addr global [10 x [5 x double]] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [58 x i8] c"and performance benchmark.  %d iterations will be made.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"\0AMeasured run time in seconds should be divided by %.f\0A\00", align 1
@itercount = internal global i32 0, align 4
@paraxial = internal unnamed_addr global i16 0, align 2
@object_distance = internal unnamed_addr global double 0.000000e+00, align 8
@od_sa = internal unnamed_addr global [2 x [2 x double]] zeroinitializer, align 16
@axis_slope_angle = internal unnamed_addr global double 0.000000e+00, align 8
@aberr_lspher = internal unnamed_addr global double 0.000000e+00, align 8
@aberr_osc = internal unnamed_addr global double 0.000000e+00, align 8
@aberr_lchrom = internal unnamed_addr global double 0.000000e+00, align 8
@max_lspher = internal unnamed_addr global double 0.000000e+00, align 8
@max_osc = internal unnamed_addr global double 0.000000e+00, align 8
@max_lchrom = internal unnamed_addr global double 0.000000e+00, align 8
@outarr = internal global [8 x [80 x i8]] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [24 x i8] c"%15s   %21.11f  %14.11f\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Marginal ray\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Paraxial ray\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Longitudinal spherical aberration:      %16.11f\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"    (Maximum permissible):              %16.11f\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Offense against sine condition (coma):  %16.11f\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Axial chromatic aberration:             %16.11f\00", align 1
@refarr = internal unnamed_addr constant [8 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.25], align 16
@.str.12 = private unnamed_addr constant [33 x i8] c"\0AError in results on line %d...\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Expected:  \22%s\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Received:  \22%s\22\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"(Errors)    \00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"\0A%d error%s in results.  This is VERY SERIOUS.\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ray_height = internal unnamed_addr global double 0.000000e+00, align 8
@from_index = internal unnamed_addr global double 0.000000e+00, align 8
@radius_of_curvature = internal unnamed_addr global double 0.000000e+00, align 8
@to_index = internal unnamed_addr global double 0.000000e+00, align 8
@.str.22 = private unnamed_addr constant [56 x i8] c"   Marginal ray          47.09479120920   0.04178472683\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"   Paraxial ray          47.08372160249   0.04177864821\00", align 1
@.str.24 = private unnamed_addr constant [57 x i8] c"Longitudinal spherical aberration:        -0.01106960671\00", align 1
@.str.25 = private unnamed_addr constant [57 x i8] c"    (Maximum permissible):                 0.05306749907\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"Offense against sine condition (coma):     0.00008954761\00", align 1
@.str.27 = private unnamed_addr constant [57 x i8] c"    (Maximum permissible):                 0.00250000000\00", align 1
@.str.28 = private unnamed_addr constant [57 x i8] c"Axial chromatic aberration:                0.00448229032\00", align 1
@str = private unnamed_addr constant [53 x i8] c"Ready to begin John Walker's floating point accuracy\00", align 1
@str.29 = private unnamed_addr constant [59 x i8] c"to normalise for reporting results.  For archival results,\00", align 1
@str.30 = private unnamed_addr constant [66 x i8] c"adjust iteration count so the benchmark runs about five minutes.\0A\00", align 1
@str.31 = private unnamed_addr constant [23 x i8] c"\0ANo errors in results.\00", align 1

; Function Attrs: nofree nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  store <2 x double> <double 7.621000e+03, double 0x40BAD5F47AE147AE>, ptr getelementptr inbounds ([9 x double], ptr @spectral_line, i64 0, i64 1), align 8, !tbaa !7
  store <2 x double> <double 0x40B9A2D0E5604189, double 0x40B707F1A9FBE76D>, ptr getelementptr inbounds ([9 x double], ptr @spectral_line, i64 0, i64 3), align 8, !tbaa !7
  store <2 x double> <double 0x40B4958E978D4FDF, double 0x40B2FD5810624DD3>, ptr getelementptr inbounds ([9 x double], ptr @spectral_line, i64 0, i64 5), align 8, !tbaa !7
  store <2 x double> <double 0x40B0F47A1CAC0831, double 0x40AF00FCED916873>, ptr getelementptr inbounds ([9 x double], ptr @spectral_line, i64 0, i64 7), align 8, !tbaa !7
  store i32 1000000, ptr @niter, align 4, !tbaa !11
  store i1 true, ptr @current_surfaces, align 2
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %10, %3 ]
  %5 = mul nuw nsw i64 %4, 40
  %6 = add nuw nsw i64 %5, 48
  %7 = getelementptr i8, ptr @s, i64 %6
  %8 = shl nuw nsw i64 %4, 5
  %9 = getelementptr i8, ptr @testcase, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 16 dereferenceable(32) %9, i64 32, i1 false), !tbaa !7
  %10 = add nuw nsw i64 %4, 1
  %11 = icmp eq i64 %10, 4
  br i1 %11, label %12, label %3, !llvm.loop !13

12:                                               ; preds = %3
  %13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %14 = load i32, ptr @niter, align 4, !tbaa !11
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %14) #8
  %16 = load i32, ptr @niter, align 4, !tbaa !11
  %17 = sitofp i32 %16 to double
  %18 = fdiv double %17, 1.000000e+03
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %18) #8
  %20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.29)
  %21 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.30)
  store i32 0, ptr @itercount, align 4, !tbaa !11
  %22 = load i32, ptr @niter, align 4, !tbaa !11
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %34, %12
  store i16 0, ptr @paraxial, align 2, !tbaa !15
  br label %25

25:                                               ; preds = %25, %24
  tail call fastcc void @trace_line(i32 noundef 4, double noundef 2.000000e+00) #8
  %26 = load double, ptr @object_distance, align 8, !tbaa !7
  %27 = load i16, ptr @paraxial, align 2, !tbaa !15
  %28 = sext i16 %27 to i64
  %29 = getelementptr inbounds [2 x [2 x double]], ptr @od_sa, i64 0, i64 %28
  store double %26, ptr %29, align 16, !tbaa !7
  %30 = load double, ptr @axis_slope_angle, align 8, !tbaa !7
  %31 = getelementptr inbounds [2 x [2 x double]], ptr @od_sa, i64 0, i64 %28, i64 1
  store double %30, ptr %31, align 8, !tbaa !7
  %32 = add i16 %27, 1
  store i16 %32, ptr @paraxial, align 2, !tbaa !15
  %33 = icmp slt i16 %32, 2
  br i1 %33, label %25, label %34, !llvm.loop !17

34:                                               ; preds = %25
  store i16 0, ptr @paraxial, align 2, !tbaa !15
  tail call fastcc void @trace_line(i32 noundef 3, double noundef 2.000000e+00) #8
  %35 = load double, ptr @object_distance, align 8, !tbaa !7
  tail call fastcc void @trace_line(i32 noundef 6, double noundef 2.000000e+00) #8
  %36 = load double, ptr @object_distance, align 8, !tbaa !7
  %37 = load double, ptr getelementptr inbounds ([2 x [2 x double]], ptr @od_sa, i64 0, i64 1), align 16, !tbaa !7
  %38 = load double, ptr @od_sa, align 16, !tbaa !7
  %39 = fsub double %37, %38
  store double %39, ptr @aberr_lspher, align 8, !tbaa !7
  %40 = load double, ptr getelementptr inbounds ([2 x [2 x double]], ptr @od_sa, i64 0, i64 1, i64 1), align 8, !tbaa !7
  %41 = fmul double %37, %40
  %42 = load double, ptr getelementptr inbounds ([2 x [2 x double]], ptr @od_sa, i64 0, i64 0, i64 1), align 8, !tbaa !7
  %43 = tail call double @sin(double noundef %42) #9
  %44 = load double, ptr @od_sa, align 16, !tbaa !7
  %45 = fmul double %43, %44
  %46 = fdiv double %41, %45
  %47 = fsub double 1.000000e+00, %46
  store double %47, ptr @aberr_osc, align 8, !tbaa !7
  %48 = fsub double %36, %35
  store double %48, ptr @aberr_lchrom, align 8, !tbaa !7
  %49 = load double, ptr getelementptr inbounds ([2 x [2 x double]], ptr @od_sa, i64 0, i64 0, i64 1), align 8, !tbaa !7
  %50 = tail call double @sin(double noundef %49) #9
  %51 = fmul double %50, %50
  %52 = fdiv double 9.260000e-05, %51
  store double %52, ptr @max_lspher, align 8, !tbaa !7
  store double 2.500000e-03, ptr @max_osc, align 8, !tbaa !7
  store double %52, ptr @max_lchrom, align 8, !tbaa !7
  %53 = load i32, ptr @itercount, align 4, !tbaa !11
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr @itercount, align 4, !tbaa !11
  %55 = load i32, ptr @niter, align 4, !tbaa !11
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %24, label %57, !llvm.loop !18

57:                                               ; preds = %34, %12
  %58 = load double, ptr @od_sa, align 16, !tbaa !7
  %59 = load double, ptr getelementptr inbounds ([2 x [2 x double]], ptr @od_sa, i64 0, i64 0, i64 1), align 8, !tbaa !7
  %60 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @outarr, ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @.str.6, double noundef %58, double noundef %59) #9
  %61 = load double, ptr getelementptr inbounds ([2 x [2 x double]], ptr @od_sa, i64 0, i64 1), align 16, !tbaa !7
  %62 = load double, ptr getelementptr inbounds ([2 x [2 x double]], ptr @od_sa, i64 0, i64 1, i64 1), align 8, !tbaa !7
  %63 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x [80 x i8]], ptr @outarr, i64 0, i64 1), ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @.str.7, double noundef %61, double noundef %62) #9
  %64 = load double, ptr @aberr_lspher, align 8, !tbaa !7
  %65 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x [80 x i8]], ptr @outarr, i64 0, i64 2), ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %64) #9
  %66 = load double, ptr @max_lspher, align 8, !tbaa !7
  %67 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x [80 x i8]], ptr @outarr, i64 0, i64 3), ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %66) #9
  %68 = load double, ptr @aberr_osc, align 8, !tbaa !7
  %69 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x [80 x i8]], ptr @outarr, i64 0, i64 4), ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %68) #9
  %70 = load double, ptr @max_osc, align 8, !tbaa !7
  %71 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x [80 x i8]], ptr @outarr, i64 0, i64 5), ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %70) #9
  %72 = load double, ptr @aberr_lchrom, align 8, !tbaa !7
  %73 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x [80 x i8]], ptr @outarr, i64 0, i64 6), ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %72) #9
  %74 = load double, ptr @max_lchrom, align 8, !tbaa !7
  %75 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x [80 x i8]], ptr @outarr, i64 0, i64 7), ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %74) #9
  br label %76

76:                                               ; preds = %116, %57
  %77 = phi i64 [ 0, %57 ], [ %84, %116 ]
  %78 = phi i32 [ 0, %57 ], [ %117, %116 ]
  %79 = getelementptr inbounds [8 x [80 x i8]], ptr @outarr, i64 0, i64 %77
  %80 = getelementptr inbounds [8 x ptr], ptr @refarr, i64 0, i64 %77
  %81 = load ptr, ptr %80, align 8, !tbaa !19
  %82 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(1) %81) #10
  %83 = icmp eq i32 %82, 0
  %84 = add nuw nsw i64 %77, 1
  br i1 %83, label %116, label %85

85:                                               ; preds = %76
  %86 = trunc i64 %84 to i32
  %87 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %86) #8
  %88 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef %81) #8
  %89 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull %79) #8
  %90 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15) #8
  %91 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %81) #10
  %92 = trunc i64 %91 to i32
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %85
  %95 = and i64 %91, 4294967295
  br label %96

96:                                               ; preds = %96, %94
  %97 = phi i64 [ 0, %94 ], [ %111, %96 ]
  %98 = phi i32 [ %78, %94 ], [ %110, %96 ]
  %99 = getelementptr inbounds i8, ptr %81, i64 %97
  %100 = load i8, ptr %99, align 1, !tbaa !21
  %101 = getelementptr inbounds [8 x [80 x i8]], ptr @outarr, i64 0, i64 %77, i64 %97
  %102 = load i8, ptr %101, align 1, !tbaa !21
  %103 = icmp eq i8 %100, %102
  %104 = select i1 %103, i32 32, i32 94
  %105 = tail call i32 @putchar(i32 %104)
  %106 = load i8, ptr %99, align 1, !tbaa !21
  %107 = load i8, ptr %101, align 1, !tbaa !21
  %108 = icmp ne i8 %106, %107
  %109 = zext i1 %108 to i32
  %110 = add nsw i32 %98, %109
  %111 = add nuw nsw i64 %97, 1
  %112 = icmp eq i64 %111, %95
  br i1 %112, label %113, label %96, !llvm.loop !22

113:                                              ; preds = %96, %85
  %114 = phi i32 [ %78, %85 ], [ %110, %96 ]
  %115 = tail call i32 @putchar(i32 10)
  br label %116

116:                                              ; preds = %113, %76
  %117 = phi i32 [ %114, %113 ], [ %78, %76 ]
  %118 = icmp eq i64 %84, 8
  br i1 %118, label %119, label %76, !llvm.loop !23

119:                                              ; preds = %116
  %.lcssa = phi i32 [ %117, %116 ]
  %120 = icmp sgt i32 %.lcssa, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %119
  %122 = icmp eq i32 %.lcssa, 1
  %123 = select i1 %122, ptr @.str.20, ptr @.str.19
  %124 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %.lcssa, ptr noundef nonnull %123) #8
  br label %127

125:                                              ; preds = %119
  %126 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.31)
  br label %127

127:                                              ; preds = %125, %121
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize memory(readwrite, argmem: write, inaccessiblemem: write) uwtable
define internal fastcc void @trace_line(i32 noundef %0, double noundef %1) unnamed_addr #4 {
  store double 0.000000e+00, ptr @object_distance, align 8, !tbaa !7
  store double %1, ptr @ray_height, align 8, !tbaa !7
  store double 1.000000e+00, ptr @from_index, align 8, !tbaa !7
  %3 = load i1, ptr @current_surfaces, align 2
  br i1 %3, label %4, label %129

4:                                                ; preds = %2
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds [9 x double], ptr @spectral_line, i64 0, i64 %5
  br label %7

7:                                                ; preds = %124, %4
  %8 = phi double [ 1.000000e+00, %4 ], [ %120, %124 ]
  %9 = phi double [ 0.000000e+00, %4 ], [ %127, %124 ]
  %10 = phi i64 [ 1, %4 ], [ %128, %124 ]
  %11 = getelementptr inbounds [10 x [5 x double]], ptr @s, i64 0, i64 %10, i64 1
  %12 = load double, ptr %11, align 8, !tbaa !7
  store double %12, ptr @radius_of_curvature, align 8, !tbaa !7
  %13 = getelementptr inbounds [10 x [5 x double]], ptr @s, i64 0, i64 %10, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !7
  store double %14, ptr @to_index, align 8, !tbaa !7
  %15 = fcmp ogt double %14, 1.000000e+00
  br i1 %15, label %16, label %30

16:                                               ; preds = %7
  %17 = load double, ptr %6, align 8, !tbaa !7
  %18 = load <2 x double>, ptr getelementptr inbounds ([9 x double], ptr @spectral_line, i64 0, i64 6), align 16
  %19 = load <2 x double>, ptr getelementptr inbounds ([9 x double], ptr @spectral_line, i64 0, i64 3), align 8, !tbaa !7
  %20 = insertelement <2 x double> %18, double %17, i64 1
  %21 = fsub <2 x double> %19, %20
  %22 = extractelement <2 x double> %21, i64 0
  %23 = extractelement <2 x double> %21, i64 1
  %24 = fdiv double %23, %22
  %25 = fadd double %14, -1.000000e+00
  %26 = getelementptr inbounds [10 x [5 x double]], ptr @s, i64 0, i64 %10, i64 3
  %27 = load double, ptr %26, align 8, !tbaa !7
  %28 = fdiv double %25, %27
  %29 = tail call double @llvm.fmuladd.f64(double %24, double %28, double %14)
  store double %29, ptr @to_index, align 8, !tbaa !7
  br label %30

30:                                               ; preds = %16, %7
  %31 = phi double [ %29, %16 ], [ %14, %7 ]
  %32 = load i16, ptr @paraxial, align 2, !tbaa !15
  %33 = icmp eq i16 %32, 0
  %34 = fcmp une double %12, 0.000000e+00
  br i1 %33, label %67, label %35

35:                                               ; preds = %30
  br i1 %34, label %36, label %61

36:                                               ; preds = %35
  %37 = fcmp oeq double %9, 0.000000e+00
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load double, ptr @ray_height, align 8, !tbaa !7
  %40 = fdiv double %39, %12
  br label %46

41:                                               ; preds = %36
  %42 = fsub double %9, %12
  %43 = fdiv double %42, %12
  %44 = load double, ptr @axis_slope_angle, align 8, !tbaa !7
  %45 = fmul double %43, %44
  br label %46

46:                                               ; preds = %41, %38
  %47 = phi double [ 0.000000e+00, %38 ], [ %44, %41 ]
  %48 = phi double [ %40, %38 ], [ %45, %41 ]
  %49 = fdiv double %8, %31
  %50 = fmul double %48, %49
  %51 = fadd double %47, %48
  %52 = fsub double %51, %50
  store double %52, ptr @axis_slope_angle, align 8, !tbaa !7
  %53 = fcmp une double %9, 0.000000e+00
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = load double, ptr @ray_height, align 8, !tbaa !7
  br label %58

56:                                               ; preds = %46
  %57 = fmul double %9, %47
  store double %57, ptr @ray_height, align 8, !tbaa !7
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi double [ %55, %54 ], [ %57, %56 ]
  %60 = fdiv double %59, %52
  store double %60, ptr @object_distance, align 8, !tbaa !7
  br label %118

61:                                               ; preds = %35
  %62 = fdiv double %31, %8
  %63 = fmul double %9, %62
  store double %63, ptr @object_distance, align 8, !tbaa !7
  %64 = load double, ptr @axis_slope_angle, align 8, !tbaa !7
  %65 = fdiv double %8, %31
  %66 = fmul double %65, %64
  store double %66, ptr @axis_slope_angle, align 8, !tbaa !7
  br label %118

67:                                               ; preds = %30
  br i1 %34, label %68, label %102

68:                                               ; preds = %67
  %69 = fcmp oeq double %9, 0.000000e+00
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  store double 0.000000e+00, ptr @axis_slope_angle, align 8, !tbaa !7
  %71 = load double, ptr @ray_height, align 8, !tbaa !7
  %72 = fdiv double %71, %12
  br label %79

73:                                               ; preds = %68
  %74 = fsub double %9, %12
  %75 = fdiv double %74, %12
  %76 = load double, ptr @axis_slope_angle, align 8, !tbaa !7
  %77 = tail call double @sin(double noundef %76) #9
  %78 = fmul double %75, %77
  br label %79

79:                                               ; preds = %73, %70
  %80 = phi double [ %72, %70 ], [ %78, %73 ]
  %81 = tail call double @asin(double noundef %80) #9
  %82 = load double, ptr @from_index, align 8, !tbaa !7
  %83 = load double, ptr @to_index, align 8, !tbaa !7
  %84 = fdiv double %82, %83
  %85 = fmul double %80, %84
  %86 = load double, ptr @axis_slope_angle, align 8, !tbaa !7
  %87 = fadd double %81, %86
  %88 = tail call double @asin(double noundef %85) #9
  %89 = fsub double %87, %88
  store double %89, ptr @axis_slope_angle, align 8, !tbaa !7
  %90 = fmul double %87, 5.000000e-01
  %91 = tail call double @sin(double noundef %90) #9
  %92 = load double, ptr @radius_of_curvature, align 8, !tbaa !7
  %93 = fmul double %92, 2.000000e+00
  %94 = fmul double %91, %93
  %95 = fmul double %91, %94
  %96 = tail call double @sin(double noundef %87) #9
  %97 = fmul double %92, %96
  %98 = load double, ptr @axis_slope_angle, align 8, !tbaa !7
  %99 = tail call double @tan(double noundef %98) #9
  %100 = fdiv double 1.000000e+00, %99
  %101 = tail call double @llvm.fmuladd.f64(double %97, double %100, double %95)
  store double %101, ptr @object_distance, align 8, !tbaa !7
  br label %118

102:                                              ; preds = %67
  %103 = fdiv double %8, %31
  %104 = load double, ptr @axis_slope_angle, align 8, !tbaa !7
  %105 = tail call double @sin(double noundef %104) #9
  %106 = fmul double %103, %105
  %107 = tail call double @asin(double noundef %106) #9
  %108 = load double, ptr @object_distance, align 8, !tbaa !7
  %109 = load double, ptr @to_index, align 8, !tbaa !7
  %110 = tail call double @cos(double noundef %107) #9
  %111 = fmul double %109, %110
  %112 = load double, ptr @from_index, align 8, !tbaa !7
  %113 = load double, ptr @axis_slope_angle, align 8, !tbaa !7
  %114 = tail call double @cos(double noundef %113) #9
  %115 = fmul double %112, %114
  %116 = fdiv double %111, %115
  %117 = fmul double %108, %116
  store double %117, ptr @object_distance, align 8, !tbaa !7
  store double %107, ptr @axis_slope_angle, align 8, !tbaa !7
  br label %118

118:                                              ; preds = %102, %79, %61, %58
  %119 = phi double [ %60, %58 ], [ %63, %61 ], [ %101, %79 ], [ %117, %102 ]
  %120 = load double, ptr @to_index, align 8, !tbaa !7
  store double %120, ptr @from_index, align 8, !tbaa !7
  %121 = load i1, ptr @current_surfaces, align 2
  %122 = icmp ult i64 %10, 4
  %123 = and i1 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = getelementptr inbounds [10 x [5 x double]], ptr @s, i64 0, i64 %10, i64 4
  %126 = load double, ptr %125, align 8, !tbaa !7
  %127 = fsub double %119, %126
  store double %127, ptr @object_distance, align 8, !tbaa !7
  %128 = add nuw nsw i64 %10, 1
  br label %7

129:                                              ; preds = %118, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @asin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #5

attributes #0 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize memory(readwrite, argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind optsize willreturn memory(read) }

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
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !9, i64 0}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !9, i64 0}
!21 = !{!9, !9, i64 0}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
