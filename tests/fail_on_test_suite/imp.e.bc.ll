; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/McCat/18-imp/imp.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ParmT = type { [25 x i8], i8, ptr }
%struct.ImgT = type { i8, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, double, double, ptr, ptr, ptr, ptr }
%struct._CompT = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i8, ptr, ptr, i8, ptr }
%struct._PixT = type { i32, i32, ptr }

@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@VAR_THRESHOLD = internal global i32 -1, align 4
@SAME_ROW_THRESHOLD = internal global i32 3, align 4
@IMAGE = internal global [800 x i8] zeroinitializer, align 16
@SIGMA = internal global double 0.000000e+00, align 8
@__const.ParseInputFile.parms = private unnamed_addr constant [13 x %struct.ParmT] [%struct.ParmT { [25 x i8] c"image\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @IMAGE }, %struct.ParmT { [25 x i8] c"sigma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 2, ptr @SIGMA }, %struct.ParmT { [25 x i8] c"var_thresh\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @VAR_THRESHOLD }, %struct.ParmT { [25 x i8] c"vspread_thresh\00\00\00\00\00\00\00\00\00\00\00", i8 2, ptr @VSPREAD_THRESHOLD }, %struct.ParmT { [25 x i8] c"same_row_thresh\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @SAME_ROW_THRESHOLD }, %struct.ParmT { [25 x i8] c"same_row_v\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @SAME_ROW_V }, %struct.ParmT { [25 x i8] c"same_row_h\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @SAME_ROW_H }, %struct.ParmT { [25 x i8] c"max_char_size\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @MAX_CHAR_SIZE }, %struct.ParmT { [25 x i8] c"min_char_size\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @MIN_CHAR_SIZE }, %struct.ParmT { [25 x i8] c"kill_small\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @KILL_SMALL_COMP }, %struct.ParmT { [25 x i8] c"small_thresh\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @SMALL_THRESHOLD }, %struct.ParmT { [25 x i8] c"hvar_window\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @HVAR_WINDOW }, %struct.ParmT zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s not found. Exiting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Error: %s not found. Exiting.\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Error: %s is not a PGM file. Exiting.\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Error: %s has 0 length. Exiting.\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Error: '%s' in L_canny(). Exiting.\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"filename:\09%s\0A\00", align 1
@.str.1.9 = private unnamed_addr constant [14 x i8] c"width   :\09%d\0A\00", align 1
@.str.2.10 = private unnamed_addr constant [14 x i8] c"height  :\09%d\0A\00", align 1
@.str.3.11 = private unnamed_addr constant [14 x i8] c"max gray:\09%d\0A\00", align 1
@.str.4.12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5.13 = private unnamed_addr constant [4 x i8] c"#%n\00", align 1
@.str.6.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8.16 = private unnamed_addr constant [3 x i8] c"P5\00", align 1
@HVAR_WINDOW = internal global i32 10, align 4
@KILL_SMALL_COMP = internal global i32 1, align 4
@VSPREAD_THRESHOLD = internal global double 2.000000e-02, align 8
@SMALL_THRESHOLD = internal global i32 10, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"255\0A\00", align 1
@SAME_ROW_V = internal global i32 3, align 4
@SAME_ROW_H = internal global i32 30, align 4
@MAX_CHAR_SIZE = internal global i32 50, align 4
@MIN_CHAR_SIZE = internal global i32 5, align 4
@.str.18 = private unnamed_addr constant [39 x i8] c"Unexpected error in PairComponents(). \00", align 1
@.str.20 = private unnamed_addr constant [65 x i8] c"Unexpected case or mathematical absurdity reached in Overlap(). \00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"%s.out.pgm\00", align 1
@str.24 = private unnamed_addr constant [45 x i8] c"Unexpected error in MergeToLeft(), aborting.\00", align 1
@str.25 = private unnamed_addr constant [9 x i8] c"Exiting.\00", align 1
@str.26 = private unnamed_addr constant [7 x i8] c"Twink!\00", align 1

; Function Attrs: nounwind optsize uwtable
define internal i32 @L_canny(float noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #24
  %13 = fpext float %0 to double
  %14 = call i32 @GaussianMask(double noundef %13, ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef %5) #25, !range !7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %55

16:                                               ; preds = %6
  %17 = call i32 @DGaussianMask(double noundef %13, ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef %5) #25, !range !7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %16
  %20 = load ptr, ptr %9, align 8, !tbaa !8
  %21 = load ptr, ptr %10, align 8, !tbaa !8
  %22 = load i32, ptr %11, align 4, !tbaa !12
  %23 = load i32, ptr %12, align 4, !tbaa !12
  %24 = call i32 @dfilter(ptr noundef %1, ptr noundef %20, ptr noundef %21, i32 noundef %22, i32 noundef %23, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %7, ptr noundef %5) #25, !range !7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %19
  %27 = call i32 @dfilter(ptr noundef %1, ptr noundef %21, ptr noundef %20, i32 noundef %23, i32 noundef %22, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %8, ptr noundef %5) #25, !range !7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = mul nsw i32 %3, %2
  %31 = sext i32 %30 to i64
  %32 = tail call noalias ptr @calloc(i64 noundef %31, i64 noundef 4) #26
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = icmp sgt i32 %30, 0
  %36 = load ptr, ptr %7, align 8, !tbaa !8
  %37 = load ptr, ptr %8, align 8, !tbaa !8
  br i1 %35, label %38, label %53

38:                                               ; preds = %34
  %39 = zext i32 %30 to i64
  br label %41

40:                                               ; preds = %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %5, ptr noundef nonnull align 1 dereferenceable(14) @.str, i64 14, i1 false)
  br label %55

41:                                               ; preds = %41, %38
  %42 = phi i64 [ 0, %38 ], [ %51, %41 ]
  %43 = getelementptr inbounds float, ptr %37, i64 %42
  %44 = load float, ptr %43, align 4, !tbaa !14
  %45 = getelementptr inbounds float, ptr %36, i64 %42
  %46 = load float, ptr %45, align 4, !tbaa !14
  %47 = fmul float %46, %46
  %48 = tail call float @llvm.fmuladd.f32(float %44, float %44, float %47)
  %49 = tail call float @llvm.sqrt.f32(float %48)
  %50 = getelementptr inbounds float, ptr %32, i64 %42
  store float %49, ptr %50, align 4, !tbaa !14
  %51 = add nuw nsw i64 %42, 1
  %52 = icmp eq i64 %51, %39
  br i1 %52, label %53, label %41, !llvm.loop !16

53:                                               ; preds = %41, %34
  %54 = tail call ptr @dnon_max(ptr noundef nonnull %32, ptr noundef %36, ptr noundef %37, i32 noundef %2, i32 noundef %3) #25
  store ptr %54, ptr %4, align 8, !tbaa !8
  br label %55

55:                                               ; preds = %53, %40, %26, %19, %16, %6
  %56 = phi i32 [ 0, %53 ], [ 1, %40 ], [ 1, %6 ], [ 1, %16 ], [ 1, %19 ], [ 1, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  ret i32 %56
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize uwtable
define internal i32 @GaussianMask(double noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = fptrunc double %0 to float
  %6 = fmul float %5, 6.000000e+00
  %7 = fptosi float %6 to i16
  %8 = or i16 %7, 1
  %9 = sext i16 %8 to i32
  store i32 %9, ptr %1, align 4, !tbaa !12
  %10 = sext i16 %8 to i64
  %11 = tail call noalias ptr @calloc(i64 noundef %10, i64 noundef 4) #26
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %3, ptr noundef nonnull align 1 dereferenceable(14) @.str, i64 14, i1 false)
  br label %65

14:                                               ; preds = %4
  %15 = sdiv i16 %8, -2
  %16 = sdiv i16 %8, 2
  %17 = icmp slt i16 %16, %15
  br i1 %17, label %64, label %18

18:                                               ; preds = %14
  %19 = sext i16 %15 to i32
  %20 = sext i16 %16 to i32
  %21 = fpext float %5 to double
  %22 = fmul double %21, 0x3FF6A09E667F3BCD
  br label %23

23:                                               ; preds = %54, %18
  %24 = phi i32 [ %20, %18 ], [ %62, %54 ]
  %25 = phi i32 [ %9, %18 ], [ %61, %54 ]
  %26 = phi i32 [ %19, %18 ], [ %60, %54 ]
  %27 = phi ptr [ %11, %18 ], [ %58, %54 ]
  %28 = phi i16 [ %15, %18 ], [ %59, %54 ]
  %29 = add nsw i32 %24, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = sitofp i16 %28 to double
  %33 = fadd double %32, 5.000000e-01
  %34 = fdiv double %33, %22
  %35 = tail call double @erf(double noundef %34) #27
  %36 = fadd double %35, 1.000000e+00
  br label %54

37:                                               ; preds = %23
  %38 = add nsw i32 %25, -1
  %39 = icmp eq i32 %29, %38
  %40 = sitofp i16 %28 to double
  br i1 %39, label %41, label %46

41:                                               ; preds = %37
  %42 = fadd double %40, -5.000000e-01
  %43 = fdiv double %42, %22
  %44 = tail call double @erf(double noundef %43) #27
  %45 = fsub double 1.000000e+00, %44
  br label %54

46:                                               ; preds = %37
  %47 = fadd double %40, 5.000000e-01
  %48 = fdiv double %47, %22
  %49 = tail call double @erf(double noundef %48) #27
  %50 = fadd double %40, -5.000000e-01
  %51 = fdiv double %50, %22
  %52 = tail call double @erf(double noundef %51) #27
  %53 = fsub double %49, %52
  br label %54

54:                                               ; preds = %46, %41, %31
  %55 = phi double [ %36, %31 ], [ %53, %46 ], [ %45, %41 ]
  %56 = fmul double %55, 5.000000e-01
  %57 = fptrunc double %56 to float
  store float %57, ptr %27, align 4, !tbaa !14
  %58 = getelementptr inbounds float, ptr %27, i64 1
  %59 = add i16 %28, 1
  %60 = sext i16 %59 to i32
  %61 = load i32, ptr %1, align 4, !tbaa !12
  %62 = sdiv i32 %61, 2
  %63 = icmp slt i32 %62, %60
  br i1 %63, label %64, label %23, !llvm.loop !18

64:                                               ; preds = %54, %14
  store ptr %11, ptr %2, align 8, !tbaa !8
  br label %65

65:                                               ; preds = %64, %13
  %66 = phi i32 [ 0, %64 ], [ 1, %13 ]
  ret i32 %66
}

; Function Attrs: nofree nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal i32 @DGaussianMask(double noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = fptrunc double %0 to float
  %6 = fpext float %5 to double
  %7 = fmul double %6, 0x4026A09E667F3BCD
  %8 = fptosi double %7 to i16
  %9 = or i16 %8, 1
  %10 = sext i16 %9 to i32
  store i32 %10, ptr %1, align 4, !tbaa !12
  %11 = sext i16 %9 to i64
  %12 = tail call noalias ptr @calloc(i64 noundef %11, i64 noundef 4) #26
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %3, ptr noundef nonnull align 1 dereferenceable(14) @.str, i64 14, i1 false)
  br label %81

15:                                               ; preds = %4
  %16 = sdiv i16 %9, -2
  %17 = sdiv i16 %9, 2
  %18 = icmp slt i16 %17, %16
  br i1 %18, label %80, label %19

19:                                               ; preds = %15
  %20 = sext i16 %16 to i32
  %21 = sext i16 %17 to i32
  %22 = fmul double %6, 2.000000e+00
  %23 = fmul double %22, %6
  %24 = fmul double %6, 0x40040D931FF62705
  %25 = fdiv double -1.000000e+00, %24
  %26 = fptrunc double %25 to float
  %27 = fpext float %26 to double
  %28 = fdiv double 1.000000e+00, %24
  %29 = fptrunc double %28 to float
  %30 = fpext float %29 to double
  br label %31

31:                                               ; preds = %71, %19
  %32 = phi i32 [ %21, %19 ], [ %78, %71 ]
  %33 = phi i32 [ %10, %19 ], [ %77, %71 ]
  %34 = phi i32 [ %20, %19 ], [ %76, %71 ]
  %35 = phi ptr [ %12, %19 ], [ %74, %71 ]
  %36 = phi i16 [ %16, %19 ], [ %75, %71 ]
  %37 = add nsw i32 %32, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = sitofp i16 %36 to double
  %41 = fadd double %40, 5.000000e-01
  %42 = fneg double %41
  %43 = fmul double %41, %42
  %44 = fdiv double %43, %23
  %45 = tail call double @exp(double noundef %44) #27
  %46 = fmul double %45, %30
  br label %71

47:                                               ; preds = %31
  %48 = add nsw i32 %33, -1
  %49 = icmp eq i32 %37, %48
  %50 = sitofp i16 %36 to double
  br i1 %49, label %51, label %58

51:                                               ; preds = %47
  %52 = fadd double %50, -5.000000e-01
  %53 = fneg double %52
  %54 = fmul double %52, %53
  %55 = fdiv double %54, %23
  %56 = tail call double @exp(double noundef %55) #27
  %57 = fmul double %56, %27
  br label %71

58:                                               ; preds = %47
  %59 = fadd double %50, 5.000000e-01
  %60 = fneg double %59
  %61 = fmul double %59, %60
  %62 = fdiv double %61, %23
  %63 = tail call double @exp(double noundef %62) #27
  %64 = fadd double %50, -5.000000e-01
  %65 = fneg double %64
  %66 = fmul double %64, %65
  %67 = fdiv double %66, %23
  %68 = tail call double @exp(double noundef %67) #27
  %69 = fsub double %63, %68
  %70 = fdiv double %69, %24
  br label %71

71:                                               ; preds = %58, %51, %39
  %72 = phi double [ %46, %39 ], [ %70, %58 ], [ %57, %51 ]
  %73 = fptrunc double %72 to float
  store float %73, ptr %35, align 4, !tbaa !14
  %74 = getelementptr inbounds float, ptr %35, i64 1
  %75 = add i16 %36, 1
  %76 = sext i16 %75 to i32
  %77 = load i32, ptr %1, align 4, !tbaa !12
  %78 = sdiv i32 %77, 2
  %79 = icmp slt i32 %78, %76
  br i1 %79, label %80, label %31, !llvm.loop !19

80:                                               ; preds = %71, %15
  store ptr %12, ptr %2, align 8, !tbaa !8
  br label %81

81:                                               ; preds = %80, %14
  %82 = phi i32 [ 0, %80 ], [ 1, %14 ]
  ret i32 %82
}

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @dfilter(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8) #3 {
  %10 = mul nsw i32 %6, %5
  %11 = sext i32 %10 to i64
  %12 = tail call noalias ptr @calloc(i64 noundef %11, i64 noundef 4) #26
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %9
  %15 = shl i32 %6, 16
  %16 = ashr exact i32 %15, 16
  %17 = icmp sgt i32 %15, 0
  br i1 %17, label %18, label %81

18:                                               ; preds = %14
  %19 = shl i32 %5, 16
  %20 = ashr exact i32 %19, 16
  %21 = icmp sgt i32 %19, 0
  %22 = sdiv i32 %3, 2
  %23 = trunc i32 %22 to i16
  %24 = sub i16 0, %23
  %25 = sext i16 %24 to i32
  %26 = icmp slt i32 %22, %25
  br label %28

27:                                               ; preds = %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %8, ptr noundef nonnull align 1 dereferenceable(14) @.str, i64 14, i1 false)
  br label %149

28:                                               ; preds = %76, %18
  %29 = phi i32 [ 0, %18 ], [ %79, %76 ]
  %30 = phi i16 [ 0, %18 ], [ %78, %76 ]
  %31 = phi ptr [ %12, %18 ], [ %77, %76 ]
  br i1 %21, label %32, label %76

32:                                               ; preds = %28
  %33 = add nsw i32 %29, 1
  %34 = mul nsw i32 %33, %20
  %35 = add nsw i32 %34, -1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, ptr %0, i64 %36
  %38 = mul nsw i32 %29, %20
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, ptr %0, i64 %39
  br label %41

41:                                               ; preds = %71, %32
  %42 = phi i32 [ 0, %32 ], [ %74, %71 ]
  %43 = phi i16 [ 0, %32 ], [ %73, %71 ]
  %44 = phi ptr [ %31, %32 ], [ %72, %71 ]
  br i1 %26, label %71, label %45

45:                                               ; preds = %41
  %46 = add nsw i32 %42, %38
  %47 = load float, ptr %44, align 4, !tbaa !14
  br label %48

48:                                               ; preds = %60, %45
  %49 = phi float [ %47, %45 ], [ %67, %60 ]
  %50 = phi i32 [ %25, %45 ], [ %69, %60 ]
  %51 = phi i16 [ %24, %45 ], [ %68, %60 ]
  %52 = add nsw i32 %50, %42
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = icmp slt i32 %52, %20
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = add nsw i32 %46, %50
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, ptr %0, i64 %58
  br label %60

60:                                               ; preds = %56, %54, %48
  %61 = phi ptr [ %59, %56 ], [ %40, %48 ], [ %37, %54 ]
  %62 = load float, ptr %61, align 4, !tbaa !14
  %63 = sub nsw i32 %22, %50
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, ptr %1, i64 %64
  %66 = load float, ptr %65, align 4, !tbaa !14
  %67 = tail call float @llvm.fmuladd.f32(float %62, float %66, float %49)
  store float %67, ptr %44, align 4, !tbaa !14
  %68 = add i16 %51, 1
  %69 = sext i16 %68 to i32
  %70 = icmp slt i32 %22, %69
  br i1 %70, label %71, label %48, !llvm.loop !20

71:                                               ; preds = %60, %41
  %72 = getelementptr inbounds float, ptr %44, i64 1
  %73 = add i16 %43, 1
  %74 = sext i16 %73 to i32
  %75 = icmp sgt i32 %20, %74
  br i1 %75, label %41, label %76, !llvm.loop !21

76:                                               ; preds = %71, %28
  %77 = phi ptr [ %31, %28 ], [ %72, %71 ]
  %78 = add i16 %30, 1
  %79 = sext i16 %78 to i32
  %80 = icmp sgt i32 %16, %79
  br i1 %80, label %28, label %81, !llvm.loop !22

81:                                               ; preds = %76, %14
  %82 = tail call noalias ptr @calloc(i64 noundef %11, i64 noundef 4) #26
  %83 = icmp eq ptr %82, null
  br i1 %83, label %96, label %84

84:                                               ; preds = %81
  %85 = shl i32 %5, 16
  %86 = ashr exact i32 %85, 16
  %87 = icmp sgt i32 %85, 0
  br i1 %87, label %88, label %148

88:                                               ; preds = %84
  %89 = sdiv i32 %4, 2
  %90 = trunc i32 %89 to i16
  %91 = sub i16 0, %90
  %92 = sext i16 %91 to i32
  %93 = icmp slt i32 %89, %92
  %94 = add nsw i32 %16, -1
  %95 = mul nsw i32 %94, %5
  br label %97

96:                                               ; preds = %81
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %8, ptr noundef nonnull align 1 dereferenceable(14) @.str, i64 14, i1 false)
  br label %149

97:                                               ; preds = %144, %88
  %98 = phi i32 [ 0, %88 ], [ %146, %144 ]
  %99 = phi i16 [ 0, %88 ], [ %145, %144 ]
  br i1 %17, label %100, label %144

100:                                              ; preds = %97
  %101 = add nsw i32 %98, %95
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, ptr %12, i64 %102
  %104 = sext i16 %99 to i64
  %105 = getelementptr inbounds float, ptr %12, i64 %104
  %106 = getelementptr float, ptr %82, i64 %104
  br label %107

107:                                              ; preds = %140, %100
  %108 = phi i32 [ 0, %100 ], [ %142, %140 ]
  %109 = phi i16 [ 0, %100 ], [ %141, %140 ]
  br i1 %93, label %140, label %110

110:                                              ; preds = %107
  %111 = mul nsw i32 %108, %86
  %112 = sext i32 %111 to i64
  %113 = getelementptr float, ptr %106, i64 %112
  %114 = load float, ptr %113, align 4, !tbaa !14
  br label %115

115:                                              ; preds = %128, %110
  %116 = phi float [ %114, %110 ], [ %135, %128 ]
  %117 = phi i32 [ %92, %110 ], [ %137, %128 ]
  %118 = phi i16 [ %91, %110 ], [ %136, %128 ]
  %119 = add nsw i32 %117, %108
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %115
  %122 = icmp slt i32 %119, %16
  br i1 %122, label %123, label %128

123:                                              ; preds = %121
  %124 = mul nsw i32 %119, %86
  %125 = add nsw i32 %124, %98
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, ptr %12, i64 %126
  br label %128

128:                                              ; preds = %123, %121, %115
  %129 = phi ptr [ %127, %123 ], [ %105, %115 ], [ %103, %121 ]
  %130 = load float, ptr %129, align 4, !tbaa !14
  %131 = sub nsw i32 %89, %117
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, ptr %2, i64 %132
  %134 = load float, ptr %133, align 4, !tbaa !14
  %135 = tail call float @llvm.fmuladd.f32(float %130, float %134, float %116)
  %136 = add i16 %118, 1
  %137 = sext i16 %136 to i32
  %138 = icmp slt i32 %89, %137
  br i1 %138, label %139, label %115, !llvm.loop !23

139:                                              ; preds = %128
  %.lcssa = phi float [ %135, %128 ]
  store float %.lcssa, ptr %113, align 4, !tbaa !14
  br label %140

140:                                              ; preds = %139, %107
  %141 = add i16 %109, 1
  %142 = sext i16 %141 to i32
  %143 = icmp sgt i32 %16, %142
  br i1 %143, label %107, label %144, !llvm.loop !24

144:                                              ; preds = %140, %97
  %145 = add i16 %99, 1
  %146 = sext i16 %145 to i32
  %147 = icmp sgt i32 %86, %146
  br i1 %147, label %97, label %148, !llvm.loop !25

148:                                              ; preds = %144, %84
  store ptr %82, ptr %7, align 8, !tbaa !8
  br label %149

149:                                              ; preds = %148, %96, %27
  %150 = phi i32 [ 0, %148 ], [ 1, %96 ], [ 1, %27 ]
  ret i32 %150
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

; Function Attrs: nofree nounwind optsize memory(write, argmem: read, inaccessiblemem: readwrite) uwtable
define internal noalias ptr @dnon_max(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #7 {
  %6 = mul nsw i32 %4, %3
  %7 = sext i32 %6 to i64
  %8 = tail call noalias ptr @calloc(i64 noundef %7, i64 noundef 4) #26
  %9 = icmp sgt i32 %4, 3
  br i1 %9, label %10, label %135

10:                                               ; preds = %5
  %11 = add nsw i32 %4, -2
  %12 = add i32 %3, -2
  %13 = icmp sgt i32 %3, 3
  %14 = sext i32 %3 to i64
  %15 = zext i32 %11 to i64
  %16 = zext i32 %12 to i64
  br label %17

17:                                               ; preds = %132, %10
  %18 = phi i64 [ 1, %10 ], [ %133, %132 ]
  br i1 %13, label %21, label %19

19:                                               ; preds = %17
  %20 = add nuw nsw i64 %18, 1
  br label %132

21:                                               ; preds = %17
  %22 = mul nsw i64 %18, %14
  %23 = add nuw nsw i64 %18, 1
  %24 = mul nsw i64 %23, %14
  %25 = add nsw i64 %18, -1
  %26 = mul nsw i64 %25, %14
  br label %27

27:                                               ; preds = %129, %21
  %28 = phi i64 [ 1, %21 ], [ %130, %129 ]
  %29 = add nsw i64 %28, %22
  %30 = getelementptr inbounds float, ptr %1, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !14
  %32 = fpext float %31 to double
  %33 = fcmp ugt double %32, 1.000000e-08
  %34 = fcmp ult double %32, -1.000000e-08
  %35 = or i1 %33, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %27
  %37 = add nsw i64 %29, -1
  %38 = getelementptr inbounds float, ptr %0, i64 %37
  %39 = load float, ptr %38, align 4, !tbaa !14
  %40 = add nsw i64 %29, 1
  %41 = getelementptr inbounds float, ptr %0, i64 %40
  %42 = load float, ptr %41, align 4, !tbaa !14
  %43 = insertelement <2 x float> poison, float %39, i64 0
  %44 = insertelement <2 x float> %43, float %42, i64 1
  br label %112

45:                                               ; preds = %27
  %46 = getelementptr inbounds float, ptr %2, i64 %29
  %47 = load float, ptr %46, align 4, !tbaa !14
  %48 = fdiv float %47, %31
  %49 = fpext float %48 to double
  %50 = fcmp oge float %48, 0.000000e+00
  %51 = fcmp olt double %49, 4.000000e-01
  %52 = and i1 %50, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %45
  %54 = add nsw i64 %28, %24
  %55 = add nsw i64 %54, 1
  %56 = getelementptr inbounds float, ptr %0, i64 %55
  %57 = load float, ptr %56, align 4, !tbaa !14
  %58 = fsub double 1.000000e+00, %49
  %59 = getelementptr inbounds float, ptr %0, i64 %54
  %60 = load float, ptr %59, align 4, !tbaa !14
  %61 = add nsw i64 %28, %26
  %62 = add nsw i64 %61, -1
  %63 = getelementptr inbounds float, ptr %0, i64 %62
  %64 = load float, ptr %63, align 4, !tbaa !14
  %65 = getelementptr inbounds float, ptr %0, i64 %61
  %66 = load float, ptr %65, align 4, !tbaa !14
  %67 = insertelement <2 x float> poison, float %48, i64 0
  %68 = shufflevector <2 x float> %67, <2 x float> poison, <2 x i32> zeroinitializer
  %69 = insertelement <2 x float> poison, float %57, i64 0
  %70 = insertelement <2 x float> %69, float %64, i64 1
  %71 = fmul <2 x float> %68, %70
  %72 = fpext <2 x float> %71 to <2 x double>
  %73 = insertelement <2 x float> poison, float %60, i64 0
  %74 = insertelement <2 x float> %73, float %66, i64 1
  %75 = fpext <2 x float> %74 to <2 x double>
  %76 = insertelement <2 x double> poison, double %58, i64 0
  %77 = shufflevector <2 x double> %76, <2 x double> poison, <2 x i32> zeroinitializer
  %78 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %77, <2 x double> %75, <2 x double> %72)
  %79 = fptrunc <2 x double> %78 to <2 x float>
  br label %112

80:                                               ; preds = %45
  %81 = fcmp ole float %48, 0.000000e+00
  %82 = fcmp ogt double %49, -4.000000e-01
  %83 = and i1 %81, %82
  br i1 %83, label %84, label %126

84:                                               ; preds = %80
  %85 = add nsw i64 %28, %24
  %86 = add nsw i64 %85, -1
  %87 = getelementptr inbounds float, ptr %0, i64 %86
  %88 = load float, ptr %87, align 4, !tbaa !14
  %89 = fadd double %49, 1.000000e+00
  %90 = getelementptr inbounds float, ptr %0, i64 %85
  %91 = load float, ptr %90, align 4, !tbaa !14
  %92 = add nsw i64 %28, %26
  %93 = add nsw i64 %92, 1
  %94 = getelementptr inbounds float, ptr %0, i64 %93
  %95 = load float, ptr %94, align 4, !tbaa !14
  %96 = getelementptr inbounds float, ptr %0, i64 %92
  %97 = load float, ptr %96, align 4, !tbaa !14
  %98 = insertelement <2 x float> poison, float %88, i64 0
  %99 = insertelement <2 x float> %98, float %95, i64 1
  %100 = fneg <2 x float> %99
  %101 = insertelement <2 x float> poison, float %48, i64 0
  %102 = shufflevector <2 x float> %101, <2 x float> poison, <2 x i32> zeroinitializer
  %103 = fmul <2 x float> %102, %100
  %104 = fpext <2 x float> %103 to <2 x double>
  %105 = insertelement <2 x float> poison, float %91, i64 0
  %106 = insertelement <2 x float> %105, float %97, i64 1
  %107 = fpext <2 x float> %106 to <2 x double>
  %108 = insertelement <2 x double> poison, double %89, i64 0
  %109 = shufflevector <2 x double> %108, <2 x double> poison, <2 x i32> zeroinitializer
  %110 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %109, <2 x double> %107, <2 x double> %104)
  %111 = fptrunc <2 x double> %110 to <2 x float>
  br label %112

112:                                              ; preds = %84, %53, %36
  %113 = phi <2 x float> [ %44, %36 ], [ %79, %53 ], [ %111, %84 ]
  %114 = getelementptr inbounds float, ptr %0, i64 %29
  %115 = load float, ptr %114, align 4, !tbaa !14
  %116 = fpext float %115 to double
  %117 = extractelement <2 x float> %113, i64 0
  %118 = fpext float %117 to double
  %119 = fadd double %118, 1.000000e-08
  %120 = fcmp olt double %119, %116
  br i1 %120, label %121, label %129

121:                                              ; preds = %112
  %122 = extractelement <2 x float> %113, i64 1
  %123 = fpext float %122 to double
  %124 = fadd double %123, 1.000000e-08
  %125 = fcmp olt double %124, %116
  br i1 %125, label %126, label %129

126:                                              ; preds = %121, %80
  %127 = phi float [ 0.000000e+00, %80 ], [ 2.550000e+02, %121 ]
  %128 = getelementptr inbounds float, ptr %8, i64 %29
  store float %127, ptr %128, align 4, !tbaa !14
  br label %129

129:                                              ; preds = %126, %121, %112
  %130 = add nuw nsw i64 %28, 1
  %131 = icmp eq i64 %130, %16
  br i1 %131, label %132, label %27, !llvm.loop !26

132:                                              ; preds = %129, %19
  %133 = phi i64 [ %20, %19 ], [ %23, %129 ]
  %134 = icmp eq i64 %133, %15
  br i1 %134, label %135, label %17, !llvm.loop !27

135:                                              ; preds = %132, %5
  ret ptr %8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize
declare double @erf(double noundef) local_unnamed_addr #9

; Function Attrs: nounwind optsize uwtable
define internal void @ParseInputFile(ptr noundef %0) #0 {
  %2 = alloca [80 x i8], align 16
  %3 = alloca [13 x %struct.ParmT], align 16
  %4 = alloca [25 x i8], align 16
  %5 = alloca [80 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %3) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(520) %3, ptr noundef nonnull align 16 dereferenceable(520) @__const.ParseInputFile.parms, i64 520, i1 false)
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #24
  %6 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @IMAGE, ptr noundef nonnull dereferenceable(1) %0) #27
  %7 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) @IMAGE, i32 noundef 47) #28
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  %9 = getelementptr inbounds %struct.ParmT, ptr %3, i64 0, i32 2
  store ptr %8, ptr %9, align 16, !tbaa !28
  %10 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.1) #25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %0) #25
  tail call void @exit(i32 noundef 1) #29
  unreachable

14:                                               ; preds = %49, %1
  %15 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 80, ptr noundef nonnull %10) #25
  %16 = icmp ne ptr %15, null
  %17 = load i8, ptr %2, align 16
  %18 = icmp ne i8 %17, 10
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %50

20:                                               ; preds = %14
  %21 = call ptr @strtok(ptr noundef nonnull %2, ptr noundef nonnull @.str.3) #27
  %22 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %21) #27
  %23 = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.3) #27
  %24 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %23) #27
  br label %30

25:                                               ; preds = %30
  %26 = add nuw i64 %31, 1
  %27 = getelementptr inbounds [13 x %struct.ParmT], ptr %3, i64 0, i64 %26, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !28
  %29 = icmp eq ptr %28, null
  br i1 %29, label %49, label %30, !llvm.loop !30

30:                                               ; preds = %25, %20
  %31 = phi i64 [ 0, %20 ], [ %26, %25 ]
  %32 = phi ptr [ %8, %20 ], [ %28, %25 ]
  %33 = getelementptr inbounds [13 x %struct.ParmT], ptr %3, i64 0, i64 %31
  %34 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %33) #28
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %25

36:                                               ; preds = %30
  %.lcssa2 = phi i64 [ %31, %30 ]
  %.lcssa = phi ptr [ %32, %30 ]
  %37 = getelementptr inbounds [13 x %struct.ParmT], ptr %3, i64 0, i64 %.lcssa2, i32 1
  %38 = load i8, ptr %37, align 1, !tbaa !31
  %39 = sext i8 %38 to i32
  switch i32 %39, label %49 [
    i32 0, label %40
    i32 2, label %42
    i32 1, label %44
  ]

40:                                               ; preds = %36
  %41 = call i32 @atoi(ptr nocapture noundef nonnull %5) #28
  store i32 %41, ptr %.lcssa, align 4, !tbaa !12
  br label %49

42:                                               ; preds = %36
  %43 = call double @strtod(ptr nocapture noundef nonnull %5, ptr noundef null) #27
  store double %43, ptr %.lcssa, align 8, !tbaa !32
  br label %49

44:                                               ; preds = %36
  %45 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.lcssa, ptr noundef nonnull dereferenceable(1) %5) #27
  %46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa) #28
  %47 = add i64 %46, -1
  %48 = getelementptr inbounds i8, ptr %.lcssa, i64 %47
  store i8 0, ptr %48, align 1, !tbaa !34
  br label %49

49:                                               ; preds = %44, %42, %40, %36, %25
  br label %14, !llvm.loop !35

50:                                               ; preds = %14
  %51 = call i32 @fclose(ptr noundef nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [80 x i8], align 16
  %4 = alloca %struct.ImgT, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  tail call void @ParseInputFile(ptr noundef %7) #25
  call void @PGM_InitImage(ptr noundef nonnull %4, ptr noundef nonnull @IMAGE) #27
  %8 = load double, ptr @SIGMA, align 8, !tbaa !32
  %9 = load i32, ptr @VAR_THRESHOLD, align 4, !tbaa !12
  %10 = call i32 @PGM_LoadImage(ptr noundef nonnull %4) #27
  switch i32 %10, label %18 [
    i32 0, label %23
    i32 -1, label %13
    i32 -2, label %11
    i32 -3, label %12
  ]

11:                                               ; preds = %2
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %11, %2
  %14 = phi ptr [ @.str.6, %12 ], [ @.str.5, %11 ], [ @.str.4, %2 ]
  %15 = getelementptr inbounds %struct.ImgT, ptr %4, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !36
  %17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %14, ptr noundef %16) #25
  br label %18

18:                                               ; preds = %13, %2
  %19 = getelementptr inbounds %struct.ImgT, ptr %4, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !36
  call void @free(ptr noundef %20) #27
  %21 = getelementptr inbounds %struct.ImgT, ptr %4, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  call void @free(ptr noundef %22) #27
  br label %40

23:                                               ; preds = %2
  call void @PGM_PrintInfo(ptr noundef nonnull %4) #27
  call void @HorzVariance(ptr noundef nonnull %4, i32 noundef %9) #27
  %24 = fptrunc double %8 to float
  %25 = getelementptr inbounds %struct.ImgT, ptr %4, i64 0, i32 11
  %26 = load ptr, ptr %25, align 8, !tbaa !39
  %27 = getelementptr inbounds %struct.ImgT, ptr %4, i64 0, i32 5
  %28 = load i32, ptr %27, align 4, !tbaa !40
  %29 = getelementptr inbounds %struct.ImgT, ptr %4, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !41
  %31 = getelementptr inbounds %struct.ImgT, ptr %4, i64 0, i32 12
  %32 = call i32 @L_canny(float noundef %24, ptr noundef %26, i32 noundef %28, i32 noundef %30, ptr noundef nonnull %31, ptr noundef nonnull %3) #27
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %23
  %35 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %3) #25
  br label %40

36:                                               ; preds = %23
  %37 = call ptr @BuildConnectedComponents(ptr noundef nonnull %4, i32 noundef 0) #27
  store ptr %37, ptr %5, align 8, !tbaa !8
  call void @EliminateLargeSpreadComponents(ptr noundef nonnull %5, ptr noundef nonnull %4) #27
  call void @MergeRowComponents(ptr noundef nonnull %5, ptr noundef nonnull %4) #27
  call void @PairComponents(ptr noundef nonnull %5, ptr noundef nonnull %4) #27
  %38 = load ptr, ptr %5, align 8, !tbaa !8
  call void @ComputeBoundingBoxes(ptr noundef %38, ptr noundef nonnull %4) #27
  %39 = load ptr, ptr %5, align 8, !tbaa !8
  call void @FreeConnectedComponents(ptr noundef %39) #27
  call void @PGM_FreeImage(ptr noundef nonnull %4) #27
  br label %40

40:                                               ; preds = %36, %34, %18
  %41 = phi i32 [ -2, %18 ], [ -3, %34 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #24
  ret i32 %41
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind optsize uwtable
define internal void @PGM_InitImage(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %4 = add i64 %3, 1
  %5 = tail call noalias ptr @malloc(i64 noundef %4) #30
  %6 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !36
  %7 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #27
  %8 = tail call noalias ptr @strdup(ptr noundef %5) #27
  %9 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !38
  %10 = load i8, ptr %5, align 1, !tbaa !34
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %22, %2
  %13 = phi ptr [ %14, %22 ], [ %5, %2 ]
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !34
  %16 = icmp eq i8 %15, 47
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load ptr, ptr %9, align 8, !tbaa !38
  %19 = getelementptr inbounds i8, ptr %13, i64 2
  %20 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) %19) #27
  %21 = load i8, ptr %14, align 1, !tbaa !34
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i8 [ %21, %17 ], [ %15, %12 ]
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %12, !llvm.loop !42

25:                                               ; preds = %22
  %26 = load ptr, ptr %9, align 8, !tbaa !38
  br label %27

27:                                               ; preds = %25, %2
  %28 = phi ptr [ %26, %25 ], [ %8, %2 ]
  %29 = load i8, ptr %28, align 1, !tbaa !34
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %31, %27
  %32 = phi ptr [ %33, %31 ], [ %28, %27 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !34
  switch i8 %34, label %31 [
    i8 46, label %35
    i8 0, label %36
  ]

35:                                               ; preds = %31
  %.lcssa = phi ptr [ %33, %31 ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !34
  br label %36

36:                                               ; preds = %35, %31, %27
  store i8 0, ptr %0, align 8, !tbaa !43
  %37 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 11
  store ptr null, ptr %37, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal void @PGM_FreeImage(ptr nocapture noundef %0) #19 {
  %2 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  tail call void @free(ptr noundef %3) #27
  %4 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @free(ptr noundef %5) #27
  %6 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  tail call void @free(ptr noundef %7) #27
  %8 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  tail call void @free(ptr noundef %9) #27
  store i8 0, ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @PGM_PrintInfo(ptr nocapture noundef readonly %0) #3 {
  %2 = load i8, ptr %0, align 8, !tbaa !43
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %6, i32 noundef 47) #28
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds i8, ptr %7, i64 1
  %10 = select i1 %8, ptr %6, ptr %9
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %10) #25
  %12 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !40
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.9, i32 noundef %13) #25
  %15 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !41
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.10, i32 noundef %16) #25
  %18 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !46
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3.11, i32 noundef %19) #25
  br label %21

21:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @PGM_GetValue(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  %3 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 3
  br label %4

4:                                                ; preds = %18, %1
  %5 = load ptr, ptr %3, align 8, !tbaa !47
  %6 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %5, ptr noundef nonnull @.str.4.12, ptr noundef nonnull %2) #27
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load ptr, ptr %3, align 8, !tbaa !47
  %10 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %9, ptr noundef nonnull @.str.5.13, ptr noundef nonnull %2) #27
  %11 = load i32, ptr %2, align 4, !tbaa !12
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %13, %8
  %14 = load ptr, ptr %3, align 8, !tbaa !47
  %15 = call i32 @fgetc(ptr noundef %14) #25
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %13, !llvm.loop !48

18:                                               ; preds = %13, %8
  %19 = load ptr, ptr %3, align 8, !tbaa !47
  %20 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %19, ptr noundef nonnull @.str.6.14) #27
  br label %4, !llvm.loop !49

21:                                               ; preds = %4
  %22 = load i32, ptr %2, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret i32 %22
}

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #20

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind optsize uwtable
define internal i32 @PGM_Open(ptr nocapture noundef %0) #0 {
  %2 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #24
  %3 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  %5 = tail call noalias ptr @fopen(ptr noundef %4, ptr noundef nonnull @.str.7.15) #25
  %6 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 3
  store ptr %5, ptr %6, align 8, !tbaa !47
  %7 = icmp eq ptr %5, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 2, ptr noundef nonnull %5) #25
  %10 = icmp eq i64 %9, 2
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.8.16, i64 2)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = tail call i32 @PGM_GetValue(ptr noundef nonnull %0) #25
  %16 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 5
  store i32 %15, ptr %16, align 4, !tbaa !40
  %17 = tail call i32 @PGM_GetValue(ptr noundef nonnull %0) #25
  %18 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 4
  store i32 %17, ptr %18, align 8, !tbaa !41
  %19 = tail call i32 @PGM_GetValue(ptr noundef nonnull %0) #25
  %20 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 6
  store i32 %19, ptr %20, align 8, !tbaa !46
  store i8 1, ptr %0, align 8, !tbaa !43
  br label %21

21:                                               ; preds = %14, %11, %8, %1
  %22 = phi i32 [ 0, %14 ], [ -1, %1 ], [ -2, %11 ], [ -2, %8 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #24
  ret i32 %22
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind optsize uwtable
define internal i32 @PGM_LoadImage(ptr nocapture noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  store i32 0, ptr %3, align 4, !tbaa !12
  %4 = tail call i32 @PGM_Open(ptr noundef %0) #25, !range !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %88

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !40
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !41
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = tail call i32 @fclose(ptr noundef %16) #25
  br label %88

18:                                               ; preds = %10
  %19 = mul nsw i32 %12, %8
  %20 = sext i32 %19 to i64
  %21 = tail call noalias ptr @malloc(i64 noundef %20) #30
  %22 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 8
  store ptr %21, ptr %22, align 8, !tbaa !44
  %23 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !46
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = tail call noalias ptr @calloc(i64 noundef %26, i64 noundef 4) #26
  %28 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 16
  store ptr %27, ptr %28, align 8, !tbaa !51
  %29 = tail call noalias ptr @calloc(i64 noundef %26, i64 noundef 8) #26
  %30 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 17
  store ptr %29, ptr %30, align 8, !tbaa !52
  %31 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 11
  store ptr null, ptr %31, align 8, !tbaa !39
  %32 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !47
  %34 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %33, ptr noundef nonnull @.str.5.13, ptr noundef nonnull %3) #27
  %35 = load i32, ptr %3, align 4, !tbaa !12
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %37, %18
  %38 = load ptr, ptr %32, align 8, !tbaa !47
  %39 = call i32 @fgetc(ptr noundef %38) #25
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %37, !llvm.loop !53

41:                                               ; preds = %37, %18
  %42 = load ptr, ptr %32, align 8, !tbaa !47
  %43 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %42, ptr noundef nonnull @.str.6.14) #27
  %44 = load i32, ptr %7, align 4, !tbaa !40
  %45 = load i32, ptr %11, align 8, !tbaa !41
  %46 = mul nsw i32 %45, %44
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %56, %41
  %49 = phi i32 [ %46, %41 ], [ %71, %56 ]
  %50 = load i32, ptr %23, align 8, !tbaa !46
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %48
  %53 = load ptr, ptr %28, align 8, !tbaa !51
  %54 = sitofp i32 %49 to double
  %55 = load ptr, ptr %30, align 8, !tbaa !52
  br label %74

56:                                               ; preds = %56, %41
  %57 = phi i64 [ %68, %56 ], [ 0, %41 ]
  %58 = load ptr, ptr %32, align 8, !tbaa !47
  %59 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 1, ptr noundef %58) #25
  %60 = load i8, ptr %2, align 1, !tbaa !34
  %61 = load ptr, ptr %22, align 8, !tbaa !44
  %62 = getelementptr inbounds i8, ptr %61, i64 %57
  store i8 %60, ptr %62, align 1, !tbaa !34
  %63 = load ptr, ptr %28, align 8, !tbaa !51
  %64 = zext i8 %60 to i64
  %65 = getelementptr inbounds i32, ptr %63, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !12
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %65, align 4, !tbaa !12
  %68 = add nuw nsw i64 %57, 1
  %69 = load i32, ptr %7, align 4, !tbaa !40
  %70 = load i32, ptr %11, align 8, !tbaa !41
  %71 = mul nsw i32 %70, %69
  %72 = sext i32 %71 to i64
  %73 = icmp slt i64 %68, %72
  br i1 %73, label %56, label %48, !llvm.loop !54

74:                                               ; preds = %74, %52
  %75 = phi i8 [ 0, %52 ], [ %82, %74 ]
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds i32, ptr %53, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !12
  %79 = sitofp i32 %78 to double
  %80 = fdiv double %79, %54
  %81 = getelementptr inbounds double, ptr %55, i64 %76
  store double %80, ptr %81, align 8, !tbaa !32
  %82 = add i8 %75, 1
  %83 = zext i8 %82 to i32
  %84 = icmp sgt i32 %50, %83
  br i1 %84, label %74, label %85, !llvm.loop !55

85:                                               ; preds = %74, %48
  %86 = load ptr, ptr %32, align 8, !tbaa !47
  %87 = call i32 @fclose(ptr noundef %86) #25
  br label %88

88:                                               ; preds = %85, %14, %1
  %89 = phi i32 [ -3, %14 ], [ 0, %85 ], [ %4, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #24
  ret i32 %89
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @HorzVariance(ptr nocapture noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !40
  %5 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !41
  %7 = mul nsw i32 %6, %4
  %8 = sext i32 %7 to i64
  %9 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 4) #26
  %10 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 11
  store ptr %9, ptr %10, align 8, !tbaa !39
  %11 = icmp sgt i32 %6, 0
  br i1 %11, label %12, label %83

12:                                               ; preds = %2
  %13 = add i32 %4, -10
  %14 = icmp sgt i32 %4, 20
  %15 = load i32, ptr @HVAR_WINDOW, align 4
  %16 = sub i32 0, %15
  %17 = icmp slt i32 %15, 0
  %18 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 8
  %19 = shl nsw i32 %15, 1
  %20 = or i32 %19, 1
  %21 = sitofp i32 %20 to float
  %22 = icmp eq i32 %1, -1
  %23 = sitofp i32 %1 to float
  %24 = sext i32 %16 to i64
  %25 = tail call i32 @llvm.abs.i32(i32 %15, i1 false)
  %26 = add nuw i32 %25, 1
  %27 = sext i32 %4 to i64
  %28 = zext i32 %6 to i64
  %29 = zext i32 %13 to i64
  br label %30

30:                                               ; preds = %80, %12
  %31 = phi i64 [ 0, %12 ], [ %81, %80 ]
  br i1 %14, label %32, label %80

32:                                               ; preds = %30
  %33 = mul nsw i64 %31, %27
  br label %34

34:                                               ; preds = %71, %32
  %35 = phi i64 [ 10, %32 ], [ %78, %71 ]
  %36 = add nsw i64 %35, %33
  br i1 %17, label %52, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %18, align 8, !tbaa !44
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ %24, %37 ], [ %47, %39 ]
  %41 = phi float [ 0.000000e+00, %37 ], [ %46, %39 ]
  %42 = add nsw i64 %40, %36
  %43 = getelementptr inbounds i8, ptr %38, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !34
  %45 = uitofp i8 %44 to float
  %46 = fadd float %41, %45
  %47 = add nsw i64 %40, 1
  %48 = trunc i64 %47 to i32
  %49 = icmp eq i32 %26, %48
  br i1 %49, label %50, label %39, !llvm.loop !56

50:                                               ; preds = %39
  %.lcssa = phi float [ %46, %39 ]
  %51 = fdiv float %.lcssa, %21
  br i1 %17, label %52, label %55

52:                                               ; preds = %50, %34
  %53 = getelementptr inbounds float, ptr %9, i64 %36
  %54 = load float, ptr %53, align 4, !tbaa !14
  br label %71

55:                                               ; preds = %50
  %56 = load ptr, ptr %18, align 8, !tbaa !44
  %57 = getelementptr inbounds float, ptr %9, i64 %36
  %58 = load float, ptr %57, align 4, !tbaa !14
  br label %59

59:                                               ; preds = %59, %55
  %60 = phi i64 [ %24, %55 ], [ %68, %59 ]
  %61 = phi float [ %58, %55 ], [ %67, %59 ]
  %62 = add nsw i64 %60, %36
  %63 = getelementptr inbounds i8, ptr %56, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !34
  %65 = uitofp i8 %64 to float
  %66 = fsub float %65, %51
  %67 = tail call float @llvm.fmuladd.f32(float %66, float %66, float %61)
  store float %67, ptr %57, align 4, !tbaa !14
  %68 = add nsw i64 %60, 1
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %26, %69
  br i1 %70, label %71, label %59, !llvm.loop !57

71:                                               ; preds = %59, %52
  %72 = phi float [ %54, %52 ], [ %67, %59 ]
  %73 = getelementptr inbounds float, ptr %9, i64 %36
  %74 = fdiv float %72, %21
  %75 = fcmp ugt float %74, %23
  %76 = select i1 %75, float 2.550000e+02, float 0.000000e+00
  %77 = select i1 %22, float %74, float %76
  store float %77, ptr %73, align 4, !tbaa !14
  %78 = add nuw nsw i64 %35, 1
  %79 = icmp eq i64 %78, %29
  br i1 %79, label %80, label %34, !llvm.loop !58

80:                                               ; preds = %71, %30
  %81 = add nuw nsw i64 %31, 1
  %82 = icmp eq i64 %81, %28
  br i1 %82, label %83, label %30, !llvm.loop !59

83:                                               ; preds = %80, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind optsize uwtable
define internal ptr @BuildConnectedComponents(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %4 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !40
  %6 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !41
  %8 = mul nsw i32 %7, %5
  %9 = sext i32 %8 to i64
  %10 = tail call noalias ptr @calloc(i64 noundef %9, i64 noundef 4) #26
  %11 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !60
  %12 = icmp sgt i32 %7, 0
  br i1 %12, label %13, label %207

13:                                               ; preds = %2
  %14 = icmp sgt i32 %1, -1
  %15 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 12
  %16 = sitofp i32 %1 to float
  %17 = getelementptr inbounds %struct.ImgT, ptr %0, i64 0, i32 11
  br label %18

18:                                               ; preds = %198, %13
  %19 = phi i32 [ %7, %13 ], [ %200, %198 ]
  %20 = phi i32 [ %5, %13 ], [ %201, %198 ]
  %21 = phi i32 [ %5, %13 ], [ %202, %198 ]
  %22 = phi ptr [ null, %13 ], [ %203, %198 ]
  %23 = phi i32 [ 0, %13 ], [ %199, %198 ]
  %24 = icmp sgt i32 %21, 2
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = add nuw nsw i32 %23, 1
  br label %198

27:                                               ; preds = %18
  %28 = add nsw i32 %23, -1
  %29 = add nuw nsw i32 %23, 1
  br label %30

30:                                               ; preds = %190, %27
  %31 = phi i32 [ %20, %27 ], [ %191, %190 ]
  %32 = phi i32 [ %21, %27 ], [ %191, %190 ]
  %33 = phi i32 [ 1, %27 ], [ %193, %190 ]
  %34 = phi ptr [ %22, %27 ], [ %192, %190 ]
  %35 = mul nsw i32 %32, %23
  %36 = add nsw i32 %35, %33
  br i1 %14, label %37, label %43

37:                                               ; preds = %30
  %38 = load ptr, ptr %15, align 8, !tbaa !45
  %39 = sext i32 %36 to i64
  %40 = getelementptr inbounds float, ptr %38, i64 %39
  %41 = load float, ptr %40, align 4, !tbaa !14
  %42 = fcmp oeq float %41, %16
  br i1 %42, label %190, label %43

43:                                               ; preds = %37, %30
  %44 = load ptr, ptr %11, align 8, !tbaa !60
  br label %45

45:                                               ; preds = %61, %43
  %46 = phi i32 [ -1, %43 ], [ %62, %61 ]
  %47 = add nsw i32 %46, %23
  %48 = mul nsw i32 %47, %32
  %49 = add i32 %48, %33
  br label %50

50:                                               ; preds = %50, %45
  %51 = phi i64 [ %58, %50 ], [ -1, %45 ]
  %52 = trunc i64 %51 to i32
  %53 = add i32 %49, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %44, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !12
  %57 = icmp eq i32 %56, 0
  %58 = add nsw i64 %51, 1
  %59 = icmp slt i64 %51, 1
  %60 = and i1 %57, %59
  br i1 %60, label %50, label %61, !llvm.loop !61

61:                                               ; preds = %50
  %.lcssa1 = phi i32 [ %56, %50 ]
  %.lcssa = phi i1 [ %57, %50 ]
  %62 = add nsw i32 %46, 1
  %63 = icmp slt i32 %46, 0
  %64 = and i1 %.lcssa, %63
  br i1 %64, label %45, label %65, !llvm.loop !62

65:                                               ; preds = %61
  %.lcssa1.lcssa = phi i32 [ %.lcssa1, %61 ]
  %.lcssa.lcssa = phi i1 [ %.lcssa, %61 ]
  br i1 %.lcssa.lcssa, label %66, label %85

66:                                               ; preds = %65
  %67 = tail call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #30
  store ptr %67, ptr %3, align 8, !tbaa !8
  %68 = icmp eq ptr %34, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, ptr %34, align 8, !tbaa !63
  %71 = add nsw i32 %70, 1
  br label %72

72:                                               ; preds = %69, %66
  %73 = phi i32 [ %71, %69 ], [ 1, %66 ]
  store i32 %73, ptr %67, align 8, !tbaa !63
  %74 = getelementptr inbounds %struct._CompT, ptr %67, i64 0, i32 1
  store i32 0, ptr %74, align 4, !tbaa !65
  %75 = getelementptr inbounds %struct._CompT, ptr %67, i64 0, i32 2
  store i32 %23, ptr %75, align 8, !tbaa !66
  %76 = getelementptr inbounds %struct._CompT, ptr %67, i64 0, i32 3
  store i32 %33, ptr %76, align 4, !tbaa !67
  %77 = getelementptr inbounds %struct._CompT, ptr %67, i64 0, i32 4
  store i32 %23, ptr %77, align 8, !tbaa !68
  %78 = getelementptr inbounds %struct._CompT, ptr %67, i64 0, i32 5
  store i32 %33, ptr %78, align 4, !tbaa !69
  %79 = getelementptr inbounds %struct._CompT, ptr %67, i64 0, i32 6
  store i32 %23, ptr %79, align 8, !tbaa !70
  %80 = getelementptr inbounds %struct._CompT, ptr %67, i64 0, i32 7
  store i32 %23, ptr %80, align 4, !tbaa !71
  %81 = getelementptr inbounds %struct._CompT, ptr %67, i64 0, i32 8
  store i32 %23, ptr %81, align 8, !tbaa !72
  %82 = getelementptr inbounds %struct._CompT, ptr %67, i64 0, i32 9
  store <2 x float> zeroinitializer, ptr %82, align 4, !tbaa !14
  %83 = getelementptr inbounds %struct._CompT, ptr %67, i64 0, i32 12
  %84 = getelementptr inbounds %struct._CompT, ptr %67, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %83, i8 0, i64 17, i1 false)
  store ptr %34, ptr %84, align 8, !tbaa !73
  br label %94

85:                                               ; preds = %85, %65
  %86 = phi ptr [ %90, %85 ], [ %3, %65 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !8
  %88 = load i32, ptr %87, align 8, !tbaa !63
  %89 = icmp eq i32 %88, %.lcssa1.lcssa
  %90 = getelementptr inbounds %struct._CompT, ptr %87, i64 0, i32 15
  br i1 %89, label %91, label %85, !llvm.loop !74

91:                                               ; preds = %85
  %.lcssa2 = phi ptr [ %87, %85 ]
  %92 = getelementptr inbounds %struct._CompT, ptr %.lcssa2, i64 0, i32 12
  %93 = load ptr, ptr %92, align 8, !tbaa !75
  br label %94

94:                                               ; preds = %91, %72
  %95 = phi ptr [ null, %72 ], [ %93, %91 ]
  %96 = phi i32 [ %73, %72 ], [ %.lcssa1.lcssa, %91 ]
  %97 = phi ptr [ %67, %72 ], [ %.lcssa2, %91 ]
  %98 = phi ptr [ %67, %72 ], [ %34, %91 ]
  %99 = sext i32 %36 to i64
  %100 = getelementptr inbounds i32, ptr %44, i64 %99
  store i32 %96, ptr %100, align 4, !tbaa !12
  %101 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30
  store i32 %33, ptr %101, align 8, !tbaa !76
  %102 = getelementptr inbounds %struct._PixT, ptr %101, i64 0, i32 1
  store i32 %23, ptr %102, align 4, !tbaa !78
  %103 = getelementptr inbounds %struct._CompT, ptr %97, i64 0, i32 12
  %104 = getelementptr inbounds %struct._PixT, ptr %101, i64 0, i32 2
  store ptr %95, ptr %104, align 8, !tbaa !79
  store ptr %101, ptr %103, align 8, !tbaa !75
  %105 = getelementptr inbounds %struct._CompT, ptr %97, i64 0, i32 1
  %106 = load i32, ptr %105, align 4, !tbaa !65
  %107 = add nsw i32 %106, 1
  store i32 %107, ptr %105, align 4, !tbaa !65
  %108 = getelementptr inbounds %struct._CompT, ptr %97, i64 0, i32 2
  %109 = load i32, ptr %108, align 8, !tbaa !66
  %110 = mul nsw i32 %109, %106
  %111 = add nsw i32 %110, %23
  %112 = sdiv i32 %111, %107
  store i32 %112, ptr %108, align 8, !tbaa !66
  %113 = getelementptr inbounds %struct._CompT, ptr %97, i64 0, i32 3
  %114 = load i32, ptr %113, align 4, !tbaa !67
  %115 = tail call i32 @llvm.smax.i32(i32 %33, i32 %114)
  store i32 %115, ptr %113, align 4, !tbaa !67
  %116 = getelementptr inbounds %struct._CompT, ptr %97, i64 0, i32 4
  %117 = load i32, ptr %116, align 8, !tbaa !68
  %118 = tail call i32 @llvm.smax.i32(i32 %23, i32 %117)
  store i32 %118, ptr %116, align 8, !tbaa !68
  %119 = getelementptr inbounds %struct._CompT, ptr %97, i64 0, i32 5
  %120 = load i32, ptr %119, align 4, !tbaa !69
  %121 = tail call i32 @llvm.smin.i32(i32 %33, i32 %120)
  store i32 %121, ptr %119, align 4, !tbaa !69
  %122 = getelementptr inbounds %struct._CompT, ptr %97, i64 0, i32 6
  %123 = load i32, ptr %122, align 8, !tbaa !70
  %124 = tail call i32 @llvm.smin.i32(i32 %23, i32 %123)
  store i32 %124, ptr %122, align 8, !tbaa !70
  %125 = icmp sgt i32 %33, %120
  br i1 %125, label %128, label %126

126:                                              ; preds = %94
  %127 = getelementptr inbounds %struct._CompT, ptr %97, i64 0, i32 7
  store i32 %23, ptr %127, align 4, !tbaa !71
  br label %128

128:                                              ; preds = %126, %94
  %129 = icmp slt i32 %33, %114
  br i1 %129, label %132, label %130

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct._CompT, ptr %97, i64 0, i32 8
  store i32 %23, ptr %131, align 8, !tbaa !72
  br label %132

132:                                              ; preds = %130, %128
  %133 = load ptr, ptr %17, align 8, !tbaa !39
  %134 = load i32, ptr %4, align 4, !tbaa !40
  %135 = mul nsw i32 %134, %28
  %136 = add nsw i32 %135, %33
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, ptr %133, i64 %137
  %139 = load float, ptr %138, align 4, !tbaa !14
  %140 = getelementptr inbounds %struct._CompT, ptr %97, i64 0, i32 9
  %141 = load float, ptr %140, align 4, !tbaa !80
  %142 = fadd float %139, %141
  store float %142, ptr %140, align 4, !tbaa !80
  %143 = mul nsw i32 %134, %29
  %144 = add nsw i32 %143, %33
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, ptr %133, i64 %145
  %147 = load float, ptr %146, align 4, !tbaa !14
  %148 = getelementptr inbounds %struct._CompT, ptr %97, i64 0, i32 10
  %149 = load float, ptr %148, align 8, !tbaa !81
  %150 = fadd float %147, %149
  store float %150, ptr %148, align 8, !tbaa !81
  br label %151

151:                                              ; preds = %185, %132
  %152 = phi ptr [ %98, %132 ], [ %.lcssa5, %185 ]
  %153 = phi i32 [ -1, %132 ], [ %186, %185 ]
  %154 = add nsw i32 %153, %23
  br label %155

155:                                              ; preds = %181, %151
  %156 = phi ptr [ %152, %151 ], [ %182, %181 ]
  %157 = phi i32 [ -1, %151 ], [ %183, %181 ]
  %158 = load i32, ptr %4, align 4, !tbaa !40
  %159 = mul nsw i32 %158, %154
  %160 = add nsw i32 %157, %33
  %161 = add nsw i32 %160, %159
  %162 = load ptr, ptr %11, align 8, !tbaa !60
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, ptr %162, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !12
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %181, label %167

167:                                              ; preds = %155
  %168 = load i32, ptr %97, align 8, !tbaa !63
  %169 = icmp eq i32 %165, %168
  br i1 %169, label %181, label %170

170:                                              ; preds = %170, %167
  %171 = phi ptr [ %176, %170 ], [ %3, %167 ]
  %172 = phi ptr [ %173, %170 ], [ null, %167 ]
  %173 = load ptr, ptr %171, align 8, !tbaa !8
  %174 = load i32, ptr %173, align 8, !tbaa !63
  %175 = icmp eq i32 %174, %165
  %176 = getelementptr inbounds %struct._CompT, ptr %173, i64 0, i32 15
  br i1 %175, label %177, label %170, !llvm.loop !82

177:                                              ; preds = %170
  %.lcssa4 = phi ptr [ %172, %170 ]
  %.lcssa3 = phi ptr [ %173, %170 ]
  call void @MergeComponents(ptr noundef nonnull %97, ptr noundef nonnull %.lcssa3, ptr noundef %.lcssa4, ptr noundef nonnull %3, ptr noundef %0) #25
  %178 = icmp eq ptr %.lcssa4, null
  %179 = load ptr, ptr %3, align 8
  %180 = select i1 %178, ptr %179, ptr %156
  br label %181

181:                                              ; preds = %177, %167, %155
  %182 = phi ptr [ %156, %167 ], [ %156, %155 ], [ %180, %177 ]
  %183 = add nsw i32 %157, 1
  %184 = icmp eq i32 %183, 2
  br i1 %184, label %185, label %155, !llvm.loop !83

185:                                              ; preds = %181
  %.lcssa5 = phi ptr [ %182, %181 ]
  %186 = add nsw i32 %153, 1
  %187 = icmp eq i32 %186, 2
  br i1 %187, label %188, label %151, !llvm.loop !84

188:                                              ; preds = %185
  %.lcssa5.lcssa = phi ptr [ %.lcssa5, %185 ]
  %189 = load i32, ptr %4, align 4, !tbaa !40
  br label %190

190:                                              ; preds = %188, %37
  %191 = phi i32 [ %31, %37 ], [ %189, %188 ]
  %192 = phi ptr [ %34, %37 ], [ %.lcssa5.lcssa, %188 ]
  %193 = add nuw nsw i32 %33, 1
  %194 = add nsw i32 %191, -1
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %30, label %196, !llvm.loop !85

196:                                              ; preds = %190
  %.lcssa7 = phi i32 [ %191, %190 ]
  %.lcssa6 = phi ptr [ %192, %190 ]
  %197 = load i32, ptr %6, align 8, !tbaa !41
  br label %198

198:                                              ; preds = %196, %25
  %199 = phi i32 [ %26, %25 ], [ %29, %196 ]
  %200 = phi i32 [ %19, %25 ], [ %197, %196 ]
  %201 = phi i32 [ %20, %25 ], [ %.lcssa7, %196 ]
  %202 = phi i32 [ %21, %25 ], [ %.lcssa7, %196 ]
  %203 = phi ptr [ %22, %25 ], [ %.lcssa6, %196 ]
  %204 = icmp slt i32 %199, %200
  br i1 %204, label %18, label %205, !llvm.loop !86

205:                                              ; preds = %198
  %206 = load ptr, ptr %3, align 8, !tbaa !8
  br label %207

207:                                              ; preds = %205, %2
  %208 = phi ptr [ %206, %205 ], [ undef, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret ptr %208
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind optsize uwtable
define internal void @MergeComponents(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct._CompT, ptr %1, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = icmp eq ptr %7, null
  br i1 %8, label %71, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ImgT, ptr %4, i64 0, i32 5
  %11 = getelementptr inbounds %struct.ImgT, ptr %4, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  br label %13

13:                                               ; preds = %13, %9
  %14 = phi ptr [ %7, %9 ], [ %25, %13 ]
  %15 = getelementptr inbounds %struct._PixT, ptr %14, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !78
  %17 = load i32, ptr %10, align 4, !tbaa !40
  %18 = mul nsw i32 %17, %16
  %19 = load i32, ptr %14, align 8, !tbaa !76
  %20 = add nsw i32 %18, %19
  %21 = load i32, ptr %0, align 8, !tbaa !63
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, ptr %12, i64 %22
  store i32 %21, ptr %23, align 4, !tbaa !12
  %24 = getelementptr inbounds %struct._PixT, ptr %14, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !79
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %13, !llvm.loop !87

27:                                               ; preds = %13
  %.lcssa = phi ptr [ %14, %13 ]
  %28 = getelementptr inbounds %struct._CompT, ptr %0, i64 0, i32 12
  %29 = load ptr, ptr %28, align 8, !tbaa !75
  %30 = getelementptr inbounds %struct._PixT, ptr %.lcssa, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !79
  store ptr %7, ptr %28, align 8, !tbaa !75
  %31 = getelementptr inbounds %struct._CompT, ptr %1, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !65
  %33 = getelementptr inbounds %struct._CompT, ptr %0, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !65
  %35 = add nsw i32 %34, %32
  store i32 %35, ptr %33, align 4, !tbaa !65
  %36 = getelementptr inbounds %struct._CompT, ptr %0, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !66
  %38 = load i32, ptr %31, align 4, !tbaa !65
  %39 = sub nsw i32 %35, %38
  %40 = mul nsw i32 %39, %37
  %41 = getelementptr inbounds %struct._CompT, ptr %1, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !66
  %43 = mul nsw i32 %42, %38
  %44 = add nsw i32 %40, %43
  %45 = sdiv i32 %44, %35
  store i32 %45, ptr %36, align 8, !tbaa !66
  %46 = getelementptr inbounds %struct._CompT, ptr %1, i64 0, i32 3
  %47 = getelementptr inbounds %struct._CompT, ptr %0, i64 0, i32 3
  %48 = load <2 x i32>, ptr %46, align 4, !tbaa !12
  %49 = load <2 x i32>, ptr %47, align 4, !tbaa !12
  %50 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %48, <2 x i32> %49)
  store <2 x i32> %50, ptr %47, align 4, !tbaa !12
  %51 = getelementptr inbounds %struct._CompT, ptr %1, i64 0, i32 5
  %52 = getelementptr inbounds %struct._CompT, ptr %0, i64 0, i32 5
  %53 = load <2 x i32>, ptr %51, align 4, !tbaa !12
  %54 = load <2 x i32>, ptr %52, align 4, !tbaa !12
  %55 = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %53, <2 x i32> %54)
  store <2 x i32> %55, ptr %52, align 4, !tbaa !12
  %56 = load i32, ptr %51, align 4, !tbaa !69
  %57 = extractelement <2 x i32> %55, i64 0
  %58 = icmp eq i32 %57, %56
  br i1 %58, label %59, label %63

59:                                               ; preds = %27
  %60 = getelementptr inbounds %struct._CompT, ptr %1, i64 0, i32 7
  %61 = load i32, ptr %60, align 4, !tbaa !71
  %62 = getelementptr inbounds %struct._CompT, ptr %0, i64 0, i32 7
  store i32 %61, ptr %62, align 4, !tbaa !71
  br label %63

63:                                               ; preds = %59, %27
  %64 = load i32, ptr %46, align 4, !tbaa !67
  %65 = extractelement <2 x i32> %50, i64 0
  %66 = icmp eq i32 %65, %64
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct._CompT, ptr %1, i64 0, i32 8
  %69 = load i32, ptr %68, align 8, !tbaa !72
  %70 = getelementptr inbounds %struct._CompT, ptr %0, i64 0, i32 8
  store i32 %69, ptr %70, align 8, !tbaa !72
  br label %71

71:                                               ; preds = %67, %63, %5
  %72 = icmp eq ptr %2, null
  %73 = getelementptr inbounds %struct._CompT, ptr %1, i64 0, i32 15
  %74 = load ptr, ptr %73, align 8, !tbaa !73
  %75 = getelementptr inbounds %struct._CompT, ptr %2, i64 0, i32 15
  %76 = select i1 %72, ptr %3, ptr %75
  store ptr %74, ptr %76, align 8, !tbaa !8
  tail call void @free(ptr noundef nonnull %1) #27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #6

; Function Attrs: nounwind optsize uwtable
define internal void @EliminateLargeSpreadComponents(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %74, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ImgT, ptr %1, i64 0, i32 4
  %7 = getelementptr inbounds %struct.ImgT, ptr %1, i64 0, i32 5
  %8 = getelementptr inbounds %struct.ImgT, ptr %1, i64 0, i32 13
  %9 = load i32, ptr @KILL_SMALL_COMP, align 4, !tbaa !12
  br label %10

10:                                               ; preds = %69, %5
  %11 = phi i32 [ %9, %5 ], [ %70, %69 ]
  %12 = phi ptr [ %3, %5 ], [ %72, %69 ]
  %13 = phi ptr [ %0, %5 ], [ %71, %69 ]
  %14 = icmp eq i32 %11, 0
  %15 = getelementptr inbounds %struct._CompT, ptr %12, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !68
  %17 = getelementptr inbounds %struct._CompT, ptr %12, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !70
  %19 = sub nsw i32 %16, %18
  %20 = sitofp i32 %19 to double
  %21 = load i32, ptr %6, align 8, !tbaa !41
  %22 = sitofp i32 %21 to float
  %23 = fpext float %22 to double
  %24 = load double, ptr @VSPREAD_THRESHOLD, align 8, !tbaa !32
  %25 = fmul double %24, %23
  %26 = fcmp ugt double %25, %20
  br i1 %14, label %28, label %27

27:                                               ; preds = %10
  br i1 %26, label %29, label %37

28:                                               ; preds = %10
  br i1 %26, label %60, label %37

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct._CompT, ptr %12, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !67
  %32 = getelementptr inbounds %struct._CompT, ptr %12, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !69
  %34 = sub nsw i32 %31, %33
  %35 = load i32, ptr @SMALL_THRESHOLD, align 4, !tbaa !12
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %29, %28, %27
  %38 = getelementptr inbounds %struct._CompT, ptr %12, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %56, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %8, align 8, !tbaa !60
  br label %43

43:                                               ; preds = %43, %41
  %44 = phi ptr [ %39, %41 ], [ %54, %43 ]
  %45 = getelementptr inbounds %struct._PixT, ptr %44, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !78
  %47 = load i32, ptr %7, align 4, !tbaa !40
  %48 = mul nsw i32 %47, %46
  %49 = load i32, ptr %44, align 8, !tbaa !76
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %42, i64 %51
  store i32 0, ptr %52, align 4, !tbaa !12
  %53 = getelementptr inbounds %struct._PixT, ptr %44, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %43, !llvm.loop !88

56:                                               ; preds = %43, %37
  %57 = getelementptr inbounds %struct._CompT, ptr %12, i64 0, i32 15
  %58 = load ptr, ptr %57, align 8, !tbaa !73
  store ptr %58, ptr %13, align 8, !tbaa !8
  tail call void @free(ptr noundef %12) #27
  %59 = load i32, ptr @KILL_SMALL_COMP, align 4, !tbaa !12
  br label %69

60:                                               ; preds = %29, %28
  %61 = getelementptr inbounds %struct._CompT, ptr %12, i64 0, i32 9
  %62 = load float, ptr %61, align 4, !tbaa !80
  %63 = getelementptr inbounds %struct._CompT, ptr %12, i64 0, i32 10
  %64 = load float, ptr %63, align 8, !tbaa !81
  %65 = fcmp ult float %62, %64
  %66 = zext i1 %65 to i8
  %67 = getelementptr inbounds %struct._CompT, ptr %12, i64 0, i32 11
  store i8 %66, ptr %67, align 4, !tbaa !89
  %68 = getelementptr inbounds %struct._CompT, ptr %12, i64 0, i32 15
  br label %69

69:                                               ; preds = %60, %56
  %70 = phi i32 [ %59, %56 ], [ %11, %60 ]
  %71 = phi ptr [ %13, %56 ], [ %68, %60 ]
  %72 = load ptr, ptr %71, align 8, !tbaa !8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %10, !llvm.loop !90

74:                                               ; preds = %69, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @FreeConnectedComponents(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %15, %1
  %4 = phi ptr [ %6, %15 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct._CompT, ptr %4, i64 0, i32 15
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = getelementptr inbounds %struct._CompT, ptr %4, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %10, %3
  %11 = phi ptr [ %13, %10 ], [ %8, %3 ]
  %12 = getelementptr inbounds %struct._PixT, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  tail call void @free(ptr noundef nonnull %11) #27
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %10, !llvm.loop !91

15:                                               ; preds = %10, %3
  tail call void @free(ptr noundef %4) #27
  %16 = icmp eq ptr %6, null
  br i1 %16, label %17, label %3, !llvm.loop !92

17:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @MergeRowComponents(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %8, %5 ], [ %3, %2 ]
  tail call void @MergeToLeft(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef %1) #25
  %7 = getelementptr inbounds %struct._CompT, ptr %6, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !93

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @MergeToLeft(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct._CompT, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !69
  %6 = getelementptr inbounds %struct._CompT, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !71
  %8 = load i32, ptr @SAME_ROW_V, align 4, !tbaa !12
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %92, label %10

10:                                               ; preds = %3
  %11 = sub nsw i32 0, %8
  %12 = getelementptr inbounds %struct.ImgT, ptr %2, i64 0, i32 4
  %13 = getelementptr inbounds %struct.ImgT, ptr %2, i64 0, i32 5
  %14 = getelementptr inbounds %struct.ImgT, ptr %2, i64 0, i32 13
  %15 = getelementptr inbounds %struct._CompT, ptr %0, i64 0, i32 11
  br label %16

16:                                               ; preds = %87, %10
  %17 = phi i32 [ %8, %10 ], [ %88, %87 ]
  %18 = phi i32 [ 0, %10 ], [ %89, %87 ]
  %19 = phi i32 [ %11, %10 ], [ %90, %87 ]
  %20 = load i32, ptr @SAME_ROW_H, align 4, !tbaa !12
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %87

22:                                               ; preds = %16
  %23 = sub nsw i32 0, %20
  %24 = add nsw i32 %19, %7
  %25 = icmp slt i32 %24, 0
  br label %26

26:                                               ; preds = %81, %22
  %27 = phi i32 [ %18, %22 ], [ %82, %81 ]
  %28 = phi i32 [ %23, %22 ], [ %83, %81 ]
  br i1 %25, label %81, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %12, align 8, !tbaa !41
  %31 = icmp slt i32 %24, %30
  br i1 %31, label %32, label %81

32:                                               ; preds = %29
  %33 = add nsw i32 %28, %5
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %81, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr %13, align 4, !tbaa !40
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %35
  %39 = mul nsw i32 %36, %24
  %40 = add nsw i32 %39, %33
  %41 = mul nsw i32 %36, %30
  %42 = icmp sgt i32 %40, %41
  %43 = icmp slt i32 %40, 0
  %44 = or i1 %42, %43
  br i1 %44, label %81, label %45

45:                                               ; preds = %38
  %46 = load ptr, ptr %14, align 8, !tbaa !60
  %47 = zext i32 %40 to i64
  %48 = getelementptr inbounds i32, ptr %46, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %81, label %51

51:                                               ; preds = %45
  %52 = load i32, ptr %0, align 8, !tbaa !63
  %53 = icmp eq i32 %49, %52
  %54 = icmp eq i32 %49, %27
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %81, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %1, align 8, !tbaa !8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %70, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr %57, align 8, !tbaa !63
  %61 = icmp eq i32 %60, %49
  br i1 %61, label %72, label %65

62:                                               ; preds = %65
  %63 = load i32, ptr %68, align 8, !tbaa !63
  %64 = icmp eq i32 %63, %49
  br i1 %64, label %72, label %65, !llvm.loop !94

65:                                               ; preds = %62, %59
  %66 = phi ptr [ %68, %62 ], [ %57, %59 ]
  %67 = getelementptr inbounds %struct._CompT, ptr %66, i64 0, i32 15
  %68 = load ptr, ptr %67, align 8, !tbaa !8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %62, !llvm.loop !94

70:                                               ; preds = %65, %56
  %71 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  tail call void @exit(i32 noundef 1) #29
  unreachable

72:                                               ; preds = %62, %59
  %73 = phi ptr [ %57, %59 ], [ %68, %62 ]
  %74 = phi ptr [ null, %59 ], [ %66, %62 ]
  %75 = load i8, ptr %15, align 4, !tbaa !89
  %76 = getelementptr inbounds %struct._CompT, ptr %73, i64 0, i32 11
  %77 = load i8, ptr %76, align 4, !tbaa !89
  %78 = icmp eq i8 %75, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  tail call void @MergeComponents(ptr noundef nonnull %0, ptr noundef nonnull %73, ptr noundef %74, ptr noundef nonnull %1, ptr noundef %2) #25
  tail call void @MergeToLeft(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) #25
  %80 = load i32, ptr %73, align 8, !tbaa !63
  br label %81

81:                                               ; preds = %79, %72, %51, %45, %38, %35, %32, %29, %26
  %82 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %27, %32 ], [ %27, %35 ], [ %27, %38 ], [ %27, %51 ], [ %27, %45 ], [ %80, %79 ], [ %49, %72 ]
  %83 = add i32 %28, 1
  %84 = icmp eq i32 %28, 0
  br i1 %84, label %85, label %26, !llvm.loop !95

85:                                               ; preds = %81
  %.lcssa = phi i32 [ %82, %81 ]
  %86 = load i32, ptr @SAME_ROW_V, align 4, !tbaa !12
  br label %87

87:                                               ; preds = %85, %16
  %88 = phi i32 [ %17, %16 ], [ %86, %85 ]
  %89 = phi i32 [ %18, %16 ], [ %.lcssa, %85 ]
  %90 = add nsw i32 %19, 1
  %91 = icmp slt i32 %19, %88
  br i1 %91, label %16, label %92, !llvm.loop !96

92:                                               ; preds = %87, %3
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #23

; Function Attrs: nounwind optsize uwtable
define internal void @PairComponents(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %183, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ImgT, ptr %1, i64 0, i32 5
  %7 = getelementptr inbounds %struct.ImgT, ptr %1, i64 0, i32 4
  %8 = getelementptr inbounds %struct.ImgT, ptr %1, i64 0, i32 13
  br label %9

9:                                                ; preds = %169, %5
  %10 = phi ptr [ %3, %5 ], [ %181, %169 ]
  %11 = phi ptr [ null, %5 ], [ %179, %169 ]
  %12 = getelementptr inbounds %struct._CompT, ptr %10, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !97
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %169

15:                                               ; preds = %9
  %16 = load i32, ptr @MAX_CHAR_SIZE, align 4, !tbaa !12
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %143, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._CompT, ptr %10, i64 0, i32 5
  %20 = getelementptr inbounds %struct._CompT, ptr %10, i64 0, i32 3
  %21 = getelementptr inbounds %struct._CompT, ptr %10, i64 0, i32 11
  %22 = getelementptr inbounds %struct._CompT, ptr %10, i64 0, i32 2
  br label %23

23:                                               ; preds = %129, %18
  %24 = phi i32 [ %16, %18 ], [ %130, %129 ]
  %25 = phi i8 [ 0, %18 ], [ %133, %129 ]
  %26 = phi i8 [ 0, %18 ], [ %132, %129 ]
  %27 = phi i8 [ 0, %18 ], [ %134, %129 ]
  %28 = phi i32 [ 0, %18 ], [ %131, %129 ]
  %29 = phi i32 [ 1, %18 ], [ %135, %129 ]
  %30 = or i8 %27, %26
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %137

32:                                               ; preds = %23
  %33 = load i32, ptr %19, align 4, !tbaa !69
  %34 = load i32, ptr %20, align 4, !tbaa !67
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %129, label %36

36:                                               ; preds = %32
  %37 = sub nsw i32 0, %29
  br label %38

38:                                               ; preds = %115, %36
  %39 = phi i32 [ %34, %36 ], [ %116, %115 ]
  %40 = phi i8 [ %25, %36 ], [ %120, %115 ]
  %41 = phi i8 [ 0, %36 ], [ %119, %115 ]
  %42 = phi i8 [ 0, %36 ], [ %118, %115 ]
  %43 = phi i32 [ %28, %36 ], [ %117, %115 ]
  %44 = phi i32 [ %33, %36 ], [ %121, %115 ]
  %45 = or i8 %42, %41
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %123

47:                                               ; preds = %38
  %48 = icmp eq i8 %40, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %47
  %50 = load i32, ptr %19, align 4, !tbaa !69
  %51 = icmp eq i32 %44, %50
  br i1 %51, label %123, label %52

52:                                               ; preds = %49, %47
  %53 = load i8, ptr %21, align 4, !tbaa !89
  %54 = icmp eq i8 %53, 0
  %55 = select i1 %54, i32 %37, i32 %29
  %56 = load i32, ptr %22, align 8, !tbaa !66
  %57 = add nsw i32 %55, %56
  %58 = load i32, ptr %6, align 4, !tbaa !40
  %59 = mul nsw i32 %57, %58
  %60 = add nsw i32 %59, %44
  %61 = icmp slt i32 %57, 0
  br i1 %61, label %115, label %62

62:                                               ; preds = %52
  %63 = load i32, ptr %7, align 8, !tbaa !41
  %64 = icmp slt i32 %57, %63
  br i1 %64, label %65, label %115

65:                                               ; preds = %62
  %66 = mul nsw i32 %63, %58
  %67 = icmp sgt i32 %60, %66
  %68 = icmp slt i32 %60, 0
  %69 = or i1 %68, %67
  br i1 %69, label %115, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %8, align 8, !tbaa !60
  %72 = zext i32 %60 to i64
  %73 = getelementptr inbounds i32, ptr %71, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !12
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %107, label %76

76:                                               ; preds = %70
  %77 = load i32, ptr %10, align 8, !tbaa !63
  %78 = icmp eq i32 %74, %77
  %79 = icmp eq i32 %74, %43
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %107, label %81

81:                                               ; preds = %76
  %82 = load i32, ptr @MIN_CHAR_SIZE, align 4, !tbaa !12
  %83 = icmp slt i32 %29, %82
  br i1 %83, label %107, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %0, align 8, !tbaa !8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %91, %84
  %88 = phi ptr [ %93, %91 ], [ %85, %84 ]
  %89 = load i32, ptr %88, align 8, !tbaa !63
  %90 = icmp eq i32 %89, %74
  br i1 %90, label %98, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct._CompT, ptr %88, i64 0, i32 15
  %93 = load ptr, ptr %92, align 8, !tbaa !8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %87, !llvm.loop !98

95:                                               ; preds = %91, %84
  %96 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18) #25
  %97 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  tail call void @exit(i32 noundef 1) #29
  unreachable

98:                                               ; preds = %87
  %.lcssa = phi ptr [ %88, %87 ]
  %99 = getelementptr inbounds %struct._CompT, ptr %.lcssa, i64 0, i32 11
  %100 = load i8, ptr %99, align 4, !tbaa !89
  %101 = icmp eq i8 %53, %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  %103 = tail call signext i8 @Overlap(ptr noundef nonnull %10, ptr noundef nonnull %.lcssa) #25, !range !99
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  store ptr %.lcssa, ptr %12, align 8, !tbaa !97
  %106 = getelementptr inbounds %struct._CompT, ptr %.lcssa, i64 0, i32 13
  store ptr %10, ptr %106, align 8, !tbaa !97
  br label %107

107:                                              ; preds = %105, %102, %98, %81, %76, %70
  %108 = phi i8 [ 0, %105 ], [ 0, %76 ], [ 0, %70 ], [ 1, %81 ], [ 1, %98 ], [ 0, %102 ]
  %109 = phi i8 [ 1, %105 ], [ 0, %76 ], [ 0, %70 ], [ 0, %81 ], [ 0, %98 ], [ 0, %102 ]
  %110 = phi i8 [ %40, %105 ], [ %40, %76 ], [ %40, %70 ], [ %40, %81 ], [ %40, %98 ], [ 1, %102 ]
  %111 = load ptr, ptr %8, align 8, !tbaa !60
  %112 = getelementptr inbounds i32, ptr %111, i64 %72
  %113 = load i32, ptr %112, align 4, !tbaa !12
  %114 = load i32, ptr %20, align 4, !tbaa !67
  br label %115

115:                                              ; preds = %107, %65, %62, %52
  %116 = phi i32 [ %39, %52 ], [ %39, %62 ], [ %39, %65 ], [ %114, %107 ]
  %117 = phi i32 [ %43, %52 ], [ %43, %62 ], [ %43, %65 ], [ %113, %107 ]
  %118 = phi i8 [ 0, %52 ], [ 0, %62 ], [ 0, %65 ], [ %108, %107 ]
  %119 = phi i8 [ 0, %52 ], [ 0, %62 ], [ 0, %65 ], [ %109, %107 ]
  %120 = phi i8 [ %40, %52 ], [ %40, %62 ], [ %40, %65 ], [ %110, %107 ]
  %121 = add nsw i32 %44, 1
  %122 = icmp slt i32 %44, %116
  br i1 %122, label %38, label %123, !llvm.loop !100

123:                                              ; preds = %115, %49, %38
  %124 = phi i32 [ %117, %115 ], [ %43, %38 ], [ %43, %49 ]
  %125 = phi i8 [ %119, %115 ], [ %41, %38 ], [ 0, %49 ]
  %126 = phi i8 [ %120, %115 ], [ %40, %38 ], [ %40, %49 ]
  %127 = phi i8 [ %118, %115 ], [ %42, %38 ], [ 1, %49 ]
  %128 = load i32, ptr @MAX_CHAR_SIZE, align 4, !tbaa !12
  br label %129

129:                                              ; preds = %123, %32
  %130 = phi i32 [ %24, %32 ], [ %128, %123 ]
  %131 = phi i32 [ %28, %32 ], [ %124, %123 ]
  %132 = phi i8 [ 0, %32 ], [ %125, %123 ]
  %133 = phi i8 [ %25, %32 ], [ %126, %123 ]
  %134 = phi i8 [ 0, %32 ], [ %127, %123 ]
  %135 = add nuw nsw i32 %29, 1
  %136 = icmp slt i32 %29, %130
  br i1 %136, label %23, label %137, !llvm.loop !101

137:                                              ; preds = %129, %23
  %138 = phi i8 [ %27, %23 ], [ %134, %129 ]
  %139 = phi i8 [ %26, %23 ], [ %132, %129 ]
  %140 = icmp eq i8 %138, 0
  %141 = icmp ne i8 %139, 0
  %142 = and i1 %140, %141
  br i1 %142, label %169, label %143

143:                                              ; preds = %137, %15
  %144 = phi i8 [ %139, %137 ], [ 0, %15 ]
  %145 = phi i8 [ %138, %137 ], [ 0, %15 ]
  %146 = getelementptr inbounds %struct._CompT, ptr %10, i64 0, i32 12
  %147 = load ptr, ptr %146, align 8, !tbaa !75
  %148 = icmp eq ptr %147, null
  br i1 %148, label %163, label %149

149:                                              ; preds = %149, %143
  %150 = phi ptr [ %161, %149 ], [ %147, %143 ]
  %151 = load ptr, ptr %8, align 8, !tbaa !60
  %152 = getelementptr inbounds %struct._PixT, ptr %150, i64 0, i32 1
  %153 = load i32, ptr %152, align 4, !tbaa !78
  %154 = load i32, ptr %6, align 4, !tbaa !40
  %155 = mul nsw i32 %154, %153
  %156 = load i32, ptr %150, align 8, !tbaa !76
  %157 = add nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, ptr %151, i64 %158
  store i32 0, ptr %159, align 4, !tbaa !12
  %160 = getelementptr inbounds %struct._PixT, ptr %150, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !79
  tail call void @free(ptr noundef nonnull %150) #27
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %149, !llvm.loop !102

163:                                              ; preds = %149, %143
  %164 = icmp eq ptr %11, null
  %165 = getelementptr inbounds %struct._CompT, ptr %10, i64 0, i32 15
  %166 = load ptr, ptr %165, align 8, !tbaa !73
  %167 = getelementptr inbounds %struct._CompT, ptr %11, i64 0, i32 15
  %168 = select i1 %164, ptr %0, ptr %167
  store ptr %166, ptr %168, align 8, !tbaa !8
  tail call void @free(ptr noundef nonnull %10) #27
  br label %169

169:                                              ; preds = %163, %137, %9
  %170 = phi i8 [ 0, %137 ], [ %145, %163 ], [ 0, %9 ]
  %171 = phi i8 [ 1, %137 ], [ %144, %163 ], [ 1, %9 ]
  %172 = icmp eq i8 %170, 0
  %173 = icmp ne i8 %171, 0
  %174 = and i1 %172, %173
  %175 = getelementptr inbounds %struct._CompT, ptr %10, i64 0, i32 15
  %176 = icmp eq ptr %11, null
  %177 = getelementptr inbounds %struct._CompT, ptr %11, i64 0, i32 15
  %178 = select i1 %176, ptr %0, ptr %177
  %179 = select i1 %174, ptr %10, ptr %11
  %180 = select i1 %174, ptr %175, ptr %178
  %181 = load ptr, ptr %180, align 8, !tbaa !8
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %9, !llvm.loop !103

183:                                              ; preds = %169, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal signext i8 @Overlap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._CompT, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !67
  %5 = getelementptr inbounds %struct._CompT, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !69
  %7 = sub nsw i32 %4, %6
  %8 = getelementptr inbounds %struct._CompT, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !69
  %10 = sub nsw i32 %6, %9
  %11 = getelementptr inbounds %struct._CompT, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !67
  %13 = sub nsw i32 %12, %4
  %14 = sub nsw i32 %12, %9
  %15 = sub nsw i32 %4, %9
  %16 = sub nsw i32 %12, %6
  %17 = icmp sgt i32 %7, -1
  %18 = icmp sgt i32 %10, -1
  %19 = select i1 %17, i1 %18, i1 false
  %20 = icmp sgt i32 %13, -1
  %21 = select i1 %19, i1 %20, i1 false
  %22 = icmp sgt i32 %14, 0
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = sitofp i32 %7 to float
  %26 = sitofp i32 %15 to float
  %27 = fdiv float %25, %26
  %28 = sitofp i32 %16 to float
  %29 = fdiv float %25, %28
  %30 = fcmp oge float %27, 5.000000e-01
  %31 = fcmp oge float %29, 5.000000e-01
  %32 = select i1 %30, i1 %31, i1 false
  br label %84

33:                                               ; preds = %2
  %34 = icmp sgt i32 %7, 0
  %35 = icmp slt i32 %10, 1
  %36 = select i1 %34, i1 %35, i1 false
  %37 = icmp slt i32 %13, 1
  %38 = select i1 %36, i1 %37, i1 false
  %39 = icmp sgt i32 %14, -1
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = sitofp i32 %14 to float
  %43 = sitofp i32 %15 to float
  %44 = fdiv float %42, %43
  %45 = sitofp i32 %16 to float
  %46 = fdiv float %42, %45
  %47 = fcmp oge float %44, 5.000000e-01
  %48 = fcmp oge float %46, 5.000000e-01
  %49 = select i1 %47, i1 %48, i1 false
  br label %84

50:                                               ; preds = %33
  %51 = select i1 %36, i1 %20, i1 false
  %52 = select i1 %51, i1 %22, i1 false
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = sitofp i32 %15 to float
  %55 = sitofp i32 %16 to float
  %56 = fdiv float %54, %55
  %57 = fcmp oge float %56, 5.000000e-01
  br label %84

58:                                               ; preds = %50
  %59 = select i1 %34, i1 %18, i1 false
  %60 = select i1 %59, i1 %37, i1 false
  %61 = select i1 %60, i1 %22, i1 false
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = sitofp i32 %16 to float
  %64 = sitofp i32 %15 to float
  %65 = fdiv float %63, %64
  %66 = fcmp oge float %65, 5.000000e-01
  br label %84

67:                                               ; preds = %58
  %68 = icmp slt i32 %7, 0
  %69 = icmp sgt i32 %10, 0
  %70 = select i1 %68, i1 %69, i1 false
  %71 = icmp sgt i32 %13, 0
  %72 = select i1 %70, i1 %71, i1 false
  %73 = select i1 %72, i1 %22, i1 false
  br i1 %73, label %84, label %74

74:                                               ; preds = %67
  %75 = icmp slt i32 %10, 0
  %76 = select i1 %34, i1 %75, i1 false
  %77 = icmp slt i32 %13, 0
  %78 = select i1 %76, i1 %77, i1 false
  %79 = icmp slt i32 %14, 0
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %84, label %81

81:                                               ; preds = %74
  %82 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20) #25
  %83 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26)
  tail call void @exit(i32 noundef 1) #29
  unreachable

84:                                               ; preds = %74, %67, %62, %53, %41, %24
  %85 = phi i1 [ %32, %24 ], [ %49, %41 ], [ %57, %53 ], [ %66, %62 ], [ false, %67 ], [ false, %74 ]
  %86 = zext i1 %85 to i8
  ret i8 %86
}

; Function Attrs: nounwind optsize uwtable
define internal void @ComputeBoundingBoxes(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %110, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ImgT, ptr %1, i64 0, i32 5
  %6 = getelementptr inbounds %struct.ImgT, ptr %1, i64 0, i32 8
  br label %7

7:                                                ; preds = %12, %4
  %8 = phi ptr [ %0, %4 ], [ %14, %12 ]
  %9 = getelementptr inbounds %struct._CompT, ptr %8, i64 0, i32 11
  %10 = load i8, ptr %9, align 4, !tbaa !89
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %62, %40, %7
  %13 = getelementptr inbounds %struct._CompT, ptr %8, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = icmp eq ptr %14, null
  br i1 %15, label %78, label %7, !llvm.loop !104

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct._CompT, ptr %8, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !69
  %19 = getelementptr inbounds %struct._CompT, ptr %8, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !97
  %21 = getelementptr inbounds %struct._CompT, ptr %20, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !69
  %23 = tail call i32 @llvm.smin.i32(i32 %18, i32 %22)
  %24 = getelementptr inbounds %struct._CompT, ptr %8, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !67
  %26 = getelementptr inbounds %struct._CompT, ptr %20, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !67
  %28 = tail call i32 @llvm.smax.i32(i32 %25, i32 %27)
  %29 = getelementptr inbounds %struct._CompT, ptr %8, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !70
  %31 = getelementptr inbounds %struct._CompT, ptr %20, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !70
  %33 = tail call i32 @llvm.smin.i32(i32 %30, i32 %32)
  %34 = getelementptr inbounds %struct._CompT, ptr %8, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !68
  %36 = getelementptr inbounds %struct._CompT, ptr %20, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !68
  %38 = tail call i32 @llvm.smax.i32(i32 %35, i32 %37)
  %39 = icmp sgt i32 %23, %28
  br i1 %39, label %40, label %42

40:                                               ; preds = %42, %16
  %41 = icmp sgt i32 %33, %38
  br i1 %41, label %12, label %62

42:                                               ; preds = %42, %16
  %43 = phi i32 [ %60, %42 ], [ %23, %16 ]
  %44 = load i32, ptr %34, align 8, !tbaa !68
  %45 = load i32, ptr %5, align 4, !tbaa !40
  %46 = mul nsw i32 %45, %44
  %47 = add nsw i32 %46, %43
  %48 = load ptr, ptr %6, align 8, !tbaa !44
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, ptr %48, i64 %49
  store i8 -1, ptr %50, align 1, !tbaa !34
  %51 = load ptr, ptr %19, align 8, !tbaa !97
  %52 = getelementptr inbounds %struct._CompT, ptr %51, i64 0, i32 6
  %53 = load i32, ptr %52, align 8, !tbaa !70
  %54 = load i32, ptr %5, align 4, !tbaa !40
  %55 = mul nsw i32 %54, %53
  %56 = add nsw i32 %55, %43
  %57 = load ptr, ptr %6, align 8, !tbaa !44
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, ptr %57, i64 %58
  store i8 -1, ptr %59, align 1, !tbaa !34
  %60 = add i32 %43, 1
  %61 = icmp eq i32 %43, %28
  br i1 %61, label %40, label %42, !llvm.loop !105

62:                                               ; preds = %62, %40
  %63 = phi i32 [ %76, %62 ], [ %33, %40 ]
  %64 = load i32, ptr %5, align 4, !tbaa !40
  %65 = mul nsw i32 %64, %63
  %66 = add nsw i32 %65, %23
  %67 = load ptr, ptr %6, align 8, !tbaa !44
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, ptr %67, i64 %68
  store i8 -1, ptr %69, align 1, !tbaa !34
  %70 = load i32, ptr %5, align 4, !tbaa !40
  %71 = mul nsw i32 %70, %63
  %72 = add nsw i32 %71, %28
  %73 = load ptr, ptr %6, align 8, !tbaa !44
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, ptr %73, i64 %74
  store i8 -1, ptr %75, align 1, !tbaa !34
  %76 = add i32 %63, 1
  %77 = icmp eq i32 %63, %38
  br i1 %77, label %12, label %62, !llvm.loop !106

78:                                               ; preds = %12
  %79 = getelementptr inbounds %struct.ImgT, ptr %1, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !38
  %81 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %80) #28
  %82 = add i64 %81, 9
  %83 = tail call noalias ptr @malloc(i64 noundef %82) #30
  %84 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %83, ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %80) #27
  %85 = load ptr, ptr @stdout, align 8, !tbaa !8
  %86 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 3, i64 1, ptr %85)
  %87 = load i32, ptr %5, align 4, !tbaa !40
  %88 = getelementptr inbounds %struct.ImgT, ptr %1, i64 0, i32 4
  %89 = load i32, ptr %88, align 8, !tbaa !41
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef nonnull @.str.15, i32 noundef %87, i32 noundef %89) #25
  %91 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 4, i64 1, ptr %85)
  %92 = load i32, ptr %5, align 4, !tbaa !40
  %93 = load i32, ptr %88, align 8, !tbaa !41
  %94 = mul nsw i32 %93, %92
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %96, %78
  %97 = phi i64 [ %103, %96 ], [ 0, %78 ]
  %98 = load ptr, ptr %6, align 8, !tbaa !44
  %99 = getelementptr inbounds i8, ptr %98, i64 %97
  %100 = load i8, ptr %99, align 1, !tbaa !34
  %101 = sext i8 %100 to i32
  %102 = tail call i32 @fputc(i32 %101, ptr %85)
  %103 = add nuw nsw i64 %97, 1
  %104 = load i32, ptr %5, align 4, !tbaa !40
  %105 = load i32, ptr %88, align 8, !tbaa !41
  %106 = mul nsw i32 %105, %104
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %103, %107
  br i1 %108, label %96, label %109, !llvm.loop !107

109:                                              ; preds = %96, %78
  tail call void @free(ptr noundef %83) #27
  br label %110

110:                                              ; preds = %109, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #23

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind optsize memory(write, argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #23 = { nofree nounwind }
attributes #24 = { nounwind }
attributes #25 = { optsize }
attributes #26 = { nounwind optsize allocsize(0,1) }
attributes #27 = { nounwind optsize }
attributes #28 = { nounwind optsize willreturn memory(read) }
attributes #29 = { noreturn nounwind optsize }
attributes #30 = { nounwind optsize allocsize(0) }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{i32 0, i32 2}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !10, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !10, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = !{!29, !9, i64 32}
!29 = !{!"", !10, i64 0, !10, i64 25, !9, i64 32}
!30 = distinct !{!30, !17}
!31 = !{!29, !10, i64 25}
!32 = !{!33, !33, i64 0}
!33 = !{!"double", !10, i64 0}
!34 = !{!10, !10, i64 0}
!35 = distinct !{!35, !17}
!36 = !{!37, !9, i64 8}
!37 = !{!"", !10, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !33, i64 96, !33, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136}
!38 = !{!37, !9, i64 16}
!39 = !{!37, !9, i64 72}
!40 = !{!37, !13, i64 36}
!41 = !{!37, !13, i64 32}
!42 = distinct !{!42, !17}
!43 = !{!37, !10, i64 0}
!44 = !{!37, !9, i64 48}
!45 = !{!37, !9, i64 80}
!46 = !{!37, !13, i64 40}
!47 = !{!37, !9, i64 24}
!48 = distinct !{!48, !17}
!49 = distinct !{!49, !17}
!50 = !{i32 -2, i32 1}
!51 = !{!37, !9, i64 112}
!52 = !{!37, !9, i64 120}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !17}
!60 = !{!37, !9, i64 88}
!61 = distinct !{!61, !17}
!62 = distinct !{!62, !17}
!63 = !{!64, !13, i64 0}
!64 = !{!"_CompT", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !15, i64 36, !15, i64 40, !10, i64 44, !9, i64 48, !9, i64 56, !10, i64 64, !9, i64 72}
!65 = !{!64, !13, i64 4}
!66 = !{!64, !13, i64 8}
!67 = !{!64, !13, i64 12}
!68 = !{!64, !13, i64 16}
!69 = !{!64, !13, i64 20}
!70 = !{!64, !13, i64 24}
!71 = !{!64, !13, i64 28}
!72 = !{!64, !13, i64 32}
!73 = !{!64, !9, i64 72}
!74 = distinct !{!74, !17}
!75 = !{!64, !9, i64 48}
!76 = !{!77, !13, i64 0}
!77 = !{!"_PixT", !13, i64 0, !13, i64 4, !9, i64 8}
!78 = !{!77, !13, i64 4}
!79 = !{!77, !9, i64 8}
!80 = !{!64, !15, i64 36}
!81 = !{!64, !15, i64 40}
!82 = distinct !{!82, !17}
!83 = distinct !{!83, !17}
!84 = distinct !{!84, !17}
!85 = distinct !{!85, !17}
!86 = distinct !{!86, !17}
!87 = distinct !{!87, !17}
!88 = distinct !{!88, !17}
!89 = !{!64, !10, i64 44}
!90 = distinct !{!90, !17}
!91 = distinct !{!91, !17}
!92 = distinct !{!92, !17}
!93 = distinct !{!93, !17}
!94 = distinct !{!94, !17}
!95 = distinct !{!95, !17}
!96 = distinct !{!96, !17}
!97 = !{!64, !9, i64 56}
!98 = distinct !{!98, !17}
!99 = !{i8 0, i8 2}
!100 = distinct !{!100, !17}
!101 = distinct !{!101, !17}
!102 = distinct !{!102, !17}
!103 = distinct !{!103, !17}
!104 = distinct !{!104, !17}
!105 = distinct !{!105, !17}
!106 = distinct !{!106, !17}
!107 = distinct !{!107, !17}
