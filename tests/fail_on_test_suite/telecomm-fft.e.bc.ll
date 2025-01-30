; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/MiBench/telecomm-FFT/telecomm-fft.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [73 x i8] c">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Error in fft():  NumSamples=%u is not power of two\0A\00", align 1
@.str.1.2 = private unnamed_addr constant [7 x i8] c"RealIn\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RealOut\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ImagOut\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Error in fft_float():  %s == NULL\0A\00", align 1
@next = internal unnamed_addr global i64 1, align 8
@.str.2.3 = private unnamed_addr constant [30 x i8] c"make <waves> random sinusoids\00", align 1
@.str.4.4 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%f \09\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [60 x i8] c"A = %lf and B = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1
@str = private unnamed_addr constant [9 x i8] c"RealOut:\00", align 1
@str.10 = private unnamed_addr constant [9 x i8] c"ImagOut:\00", align 1
@str.11 = private unnamed_addr constant [31 x i8] c"Usage: fft <waves> <length> -i\00", align 1
@str.12 = private unnamed_addr constant [27 x i8] c"-i performs an inverse fft\00", align 1
@str.13 = private unnamed_addr constant [34 x i8] c"<length> is the number of samples\00", align 1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @IsPowerOfTwo(i32 noundef %0) #0 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @llvm.ctpop.i32(i32 %0), !range !7
  %5 = icmp ult i32 %4, 2
  %6 = zext i1 %5 to i32
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i32 [ 0, %1 ], [ %6, %3 ]
  ret i32 %8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #1

; Function Attrs: nounwind optsize uwtable
define internal i32 @NumberOfBitsNeeded(i32 noundef %0) #2 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !tbaa !8
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %0) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

6:                                                ; preds = %6, %1
  %7 = phi i32 [ %11, %6 ], [ 0, %1 ]
  %8 = shl nuw i32 1, %7
  %9 = and i32 %8, %0
  %10 = icmp eq i32 %9, 0
  %11 = add i32 %7, 1
  br i1 %10, label %6, label %12

12:                                               ; preds = %6
  %.lcssa = phi i32 [ %7, %6 ]
  ret i32 %.lcssa
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define internal i32 @ReverseBits(i32 noundef %0, i32 noundef %1) #5 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %10, %4 ], [ 0, %2 ]
  %6 = phi i32 [ %12, %4 ], [ 0, %2 ]
  %7 = phi i32 [ %11, %4 ], [ %0, %2 ]
  %8 = shl i32 %5, 1
  %9 = and i32 %7, 1
  %10 = or i32 %8, %9
  %11 = lshr i32 %7, 1
  %12 = add nuw i32 %6, 1
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %4, !llvm.loop !12

14:                                               ; preds = %4, %2
  %15 = phi i32 [ 0, %2 ], [ %10, %4 ]
  ret i32 %15
}

; Function Attrs: nounwind optsize uwtable
define internal void @fft_float(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5) #2 {
  %7 = tail call i32 @IsPowerOfTwo(i32 noundef %0) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load ptr, ptr @stderr, align 8, !tbaa !8
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef %0) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

12:                                               ; preds = %6
  %13 = icmp eq i32 %1, 0
  %14 = select i1 %13, double 0x401921FB54442D18, double 0xC01921FB54442D18
  tail call fastcc void @CheckPointer(ptr noundef %2, ptr noundef nonnull @.str.1.2) #17
  tail call fastcc void @CheckPointer(ptr noundef %4, ptr noundef nonnull @.str.2) #17
  tail call fastcc void @CheckPointer(ptr noundef %5, ptr noundef nonnull @.str.3) #17
  %15 = tail call i32 @NumberOfBitsNeeded(i32 noundef %0) #16
  %16 = icmp eq i32 %0, 0
  br i1 %16, label %138, label %17

17:                                               ; preds = %12
  %18 = icmp eq ptr %3, null
  %19 = zext i32 %0 to i64
  br label %22

20:                                               ; preds = %33
  %21 = icmp ult i32 %0, 2
  br i1 %21, label %119, label %38

22:                                               ; preds = %33, %17
  %23 = phi i64 [ 0, %17 ], [ %36, %33 ]
  %24 = trunc i64 %23 to i32
  %25 = tail call i32 @ReverseBits(i32 noundef %24, i32 noundef %15) #16
  %26 = getelementptr inbounds float, ptr %2, i64 %23
  %27 = load float, ptr %26, align 4, !tbaa !14
  %28 = zext i32 %25 to i64
  %29 = getelementptr inbounds float, ptr %4, i64 %28
  store float %27, ptr %29, align 4, !tbaa !14
  br i1 %18, label %33, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds float, ptr %3, i64 %23
  %32 = load float, ptr %31, align 4, !tbaa !14
  br label %33

33:                                               ; preds = %30, %22
  %34 = phi float [ %32, %30 ], [ 0.000000e+00, %22 ]
  %35 = getelementptr inbounds float, ptr %5, i64 %28
  store float %34, ptr %35, align 4, !tbaa !14
  %36 = add nuw nsw i64 %23, 1
  %37 = icmp eq i64 %36, %19
  br i1 %37, label %20, label %22, !llvm.loop !16

38:                                               ; preds = %116, %20
  %39 = phi i32 [ %117, %116 ], [ 2, %20 ]
  %40 = phi i32 [ %39, %116 ], [ 1, %20 ]
  %41 = uitofp i32 %39 to double
  %42 = fdiv double %14, %41
  %43 = fmul double %42, -2.000000e+00
  %44 = tail call double @sin(double noundef %43) #16
  %45 = tail call double @sin(double %42)
  %46 = fneg double %45
  %47 = tail call double @cos(double noundef %43) #16
  %48 = tail call double @cos(double %42)
  %49 = fcmp oeq double %43, 0x3FE921FB54442D18
  br i1 %49, label %53, label %50

50:                                               ; preds = %38
  %51 = fcmp oeq double %43, 0x3FC921FB54442D18
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52, %50, %38
  %54 = phi double [ 0x3FC8F8B83C69A60A, %52 ], [ %44, %50 ], [ 0x3FE6A09E667F3BCC, %38 ]
  %55 = phi double [ %47, %52 ], [ %47, %50 ], [ 0x3FE6A09E667F3BCD, %38 ]
  %56 = fcmp oeq double %42, 0xBFE921FB54442D18
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = fcmp oeq double %42, 0xBFC921FB54442D18
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59, %57, %53
  %61 = phi double [ 0x3FC8F8B83C69A60A, %59 ], [ %46, %57 ], [ 0x3FE6A09E667F3BCC, %53 ]
  %62 = phi double [ %48, %59 ], [ %48, %57 ], [ 0x3FE6A09E667F3BCD, %53 ]
  %63 = fmul double %62, 2.000000e+00
  %64 = icmp eq i32 %40, 0
  br label %65

65:                                               ; preds = %112, %60
  %66 = phi i32 [ %40, %60 ], [ %115, %112 ]
  %67 = phi i32 [ 0, %60 ], [ %113, %112 ]
  br i1 %64, label %112, label %68

68:                                               ; preds = %68, %65
  %69 = phi i32 [ %110, %68 ], [ %67, %65 ]
  %70 = phi double [ %77, %68 ], [ %61, %65 ]
  %71 = phi double [ %70, %68 ], [ %54, %65 ]
  %72 = phi double [ %75, %68 ], [ %62, %65 ]
  %73 = phi double [ %72, %68 ], [ %55, %65 ]
  %74 = fneg double %73
  %75 = tail call double @llvm.fmuladd.f64(double %63, double %72, double %74)
  %76 = fneg double %71
  %77 = tail call double @llvm.fmuladd.f64(double %63, double %70, double %76)
  %78 = add i32 %69, %40
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds float, ptr %4, i64 %79
  %81 = load float, ptr %80, align 4, !tbaa !14
  %82 = fpext float %81 to double
  %83 = getelementptr inbounds float, ptr %5, i64 %79
  %84 = load float, ptr %83, align 4, !tbaa !14
  %85 = fpext float %84 to double
  %86 = fneg double %77
  %87 = fmul double %86, %85
  %88 = tail call double @llvm.fmuladd.f64(double %75, double %82, double %87)
  %89 = fmul double %77, %82
  %90 = tail call double @llvm.fmuladd.f64(double %75, double %85, double %89)
  %91 = zext i32 %69 to i64
  %92 = getelementptr inbounds float, ptr %4, i64 %91
  %93 = load float, ptr %92, align 4, !tbaa !14
  %94 = fpext float %93 to double
  %95 = fsub double %94, %88
  %96 = fptrunc double %95 to float
  store float %96, ptr %80, align 4, !tbaa !14
  %97 = getelementptr inbounds float, ptr %5, i64 %91
  %98 = load float, ptr %97, align 4, !tbaa !14
  %99 = fpext float %98 to double
  %100 = fsub double %99, %90
  %101 = fptrunc double %100 to float
  store float %101, ptr %83, align 4, !tbaa !14
  %102 = load float, ptr %92, align 4, !tbaa !14
  %103 = fpext float %102 to double
  %104 = fadd double %88, %103
  %105 = fptrunc double %104 to float
  store float %105, ptr %92, align 4, !tbaa !14
  %106 = load float, ptr %97, align 4, !tbaa !14
  %107 = fpext float %106 to double
  %108 = fadd double %90, %107
  %109 = fptrunc double %108 to float
  store float %109, ptr %97, align 4, !tbaa !14
  %110 = add i32 %69, 1
  %111 = icmp eq i32 %110, %66
  br i1 %111, label %112, label %68, !llvm.loop !17

112:                                              ; preds = %68, %65
  %113 = add i32 %67, %39
  %114 = icmp ult i32 %113, %0
  %115 = add i32 %66, %39
  br i1 %114, label %65, label %116, !llvm.loop !18

116:                                              ; preds = %112
  %117 = shl i32 %39, 1
  %118 = icmp ugt i32 %117, %0
  br i1 %118, label %119, label %38, !llvm.loop !19

119:                                              ; preds = %116, %20
  br i1 %13, label %138, label %120

120:                                              ; preds = %119
  %121 = uitofp i32 %0 to double
  br i1 %16, label %138, label %122

122:                                              ; preds = %120
  %123 = zext i32 %0 to i64
  br label %124

124:                                              ; preds = %124, %122
  %125 = phi i64 [ 0, %122 ], [ %136, %124 ]
  %126 = getelementptr inbounds float, ptr %4, i64 %125
  %127 = load float, ptr %126, align 4, !tbaa !14
  %128 = fpext float %127 to double
  %129 = fdiv double %128, %121
  %130 = fptrunc double %129 to float
  store float %130, ptr %126, align 4, !tbaa !14
  %131 = getelementptr inbounds float, ptr %5, i64 %125
  %132 = load float, ptr %131, align 4, !tbaa !14
  %133 = fpext float %132 to double
  %134 = fdiv double %133, %121
  %135 = fptrunc double %134 to float
  store float %135, ptr %131, align 4, !tbaa !14
  %136 = add nuw nsw i64 %125, 1
  %137 = icmp eq i64 %136, %123
  br i1 %137, label %138, label %124, !llvm.loop !20

138:                                              ; preds = %124, %120, %119, %12
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @CheckPointer(ptr noundef readnone %0, ptr noundef %1) unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load ptr, ptr @stderr, align 8, !tbaa !8
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef %1) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

7:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind optsize uwtable
define internal void @fft_float_StrictFP(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5) #2 {
  %7 = tail call i32 @IsPowerOfTwo(i32 noundef %0) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load ptr, ptr @stderr, align 8, !tbaa !8
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef %0) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

12:                                               ; preds = %6
  %13 = icmp eq i32 %1, 0
  %14 = select i1 %13, double 0x401921FB54442D18, double 0xC01921FB54442D18
  tail call fastcc void @CheckPointer(ptr noundef %2, ptr noundef nonnull @.str.1.2) #17
  tail call fastcc void @CheckPointer(ptr noundef %4, ptr noundef nonnull @.str.2) #17
  tail call fastcc void @CheckPointer(ptr noundef %5, ptr noundef nonnull @.str.3) #17
  %15 = tail call i32 @NumberOfBitsNeeded(i32 noundef %0) #16
  %16 = icmp eq i32 %0, 0
  br i1 %16, label %139, label %17

17:                                               ; preds = %12
  %18 = icmp eq ptr %3, null
  %19 = zext i32 %0 to i64
  br label %22

20:                                               ; preds = %33
  %21 = icmp ult i32 %0, 2
  br i1 %21, label %120, label %38

22:                                               ; preds = %33, %17
  %23 = phi i64 [ 0, %17 ], [ %36, %33 ]
  %24 = trunc i64 %23 to i32
  %25 = tail call i32 @ReverseBits(i32 noundef %24, i32 noundef %15) #16
  %26 = getelementptr inbounds float, ptr %2, i64 %23
  %27 = load float, ptr %26, align 4, !tbaa !14
  %28 = zext i32 %25 to i64
  %29 = getelementptr inbounds float, ptr %4, i64 %28
  store float %27, ptr %29, align 4, !tbaa !14
  br i1 %18, label %33, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds float, ptr %3, i64 %23
  %32 = load float, ptr %31, align 4, !tbaa !14
  br label %33

33:                                               ; preds = %30, %22
  %34 = phi float [ %32, %30 ], [ 0.000000e+00, %22 ]
  %35 = getelementptr inbounds float, ptr %5, i64 %28
  store float %34, ptr %35, align 4, !tbaa !14
  %36 = add nuw nsw i64 %23, 1
  %37 = icmp eq i64 %36, %19
  br i1 %37, label %20, label %22, !llvm.loop !21

38:                                               ; preds = %117, %20
  %39 = phi i32 [ %118, %117 ], [ 2, %20 ]
  %40 = phi i32 [ %39, %117 ], [ 1, %20 ]
  %41 = uitofp i32 %39 to double
  %42 = fdiv double %14, %41
  %43 = fmul double %42, -2.000000e+00
  %44 = tail call double @sin(double noundef %43) #16
  %45 = tail call double @sin(double %42)
  %46 = fneg double %45
  %47 = tail call double @cos(double noundef %43) #16
  %48 = tail call double @cos(double %42)
  %49 = fcmp oeq double %43, 0x3FE921FB54442D18
  br i1 %49, label %53, label %50

50:                                               ; preds = %38
  %51 = fcmp oeq double %43, 0x3FC921FB54442D18
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52, %50, %38
  %54 = phi double [ 0x3FC8F8B83C69A60A, %52 ], [ %44, %50 ], [ 0x3FE6A09E667F3BCC, %38 ]
  %55 = phi double [ %47, %52 ], [ %47, %50 ], [ 0x3FE6A09E667F3BCD, %38 ]
  %56 = fcmp oeq double %42, 0xBFE921FB54442D18
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = fcmp oeq double %42, 0xBFC921FB54442D18
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59, %57, %53
  %61 = phi double [ 0x3FC8F8B83C69A60A, %59 ], [ %46, %57 ], [ 0x3FE6A09E667F3BCC, %53 ]
  %62 = phi double [ %48, %59 ], [ %48, %57 ], [ 0x3FE6A09E667F3BCD, %53 ]
  %63 = fmul double %62, 2.000000e+00
  %64 = icmp eq i32 %40, 0
  br label %65

65:                                               ; preds = %113, %60
  %66 = phi i32 [ %40, %60 ], [ %116, %113 ]
  %67 = phi i32 [ 0, %60 ], [ %114, %113 ]
  br i1 %64, label %113, label %68

68:                                               ; preds = %68, %65
  %69 = phi i32 [ %111, %68 ], [ %67, %65 ]
  %70 = phi double [ %77, %68 ], [ %61, %65 ]
  %71 = phi double [ %70, %68 ], [ %54, %65 ]
  %72 = phi double [ %75, %68 ], [ %62, %65 ]
  %73 = phi double [ %72, %68 ], [ %55, %65 ]
  %74 = fmul double %63, %72
  %75 = fsub double %74, %73
  %76 = fmul double %63, %70
  %77 = fsub double %76, %71
  %78 = add i32 %69, %40
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds float, ptr %4, i64 %79
  %81 = load float, ptr %80, align 4, !tbaa !14
  %82 = fpext float %81 to double
  %83 = fmul double %75, %82
  %84 = getelementptr inbounds float, ptr %5, i64 %79
  %85 = load float, ptr %84, align 4, !tbaa !14
  %86 = fpext float %85 to double
  %87 = fmul double %77, %86
  %88 = fsub double %83, %87
  %89 = fmul double %75, %86
  %90 = fmul double %77, %82
  %91 = fadd double %90, %89
  %92 = zext i32 %69 to i64
  %93 = getelementptr inbounds float, ptr %4, i64 %92
  %94 = load float, ptr %93, align 4, !tbaa !14
  %95 = fpext float %94 to double
  %96 = fsub double %95, %88
  %97 = fptrunc double %96 to float
  store float %97, ptr %80, align 4, !tbaa !14
  %98 = getelementptr inbounds float, ptr %5, i64 %92
  %99 = load float, ptr %98, align 4, !tbaa !14
  %100 = fpext float %99 to double
  %101 = fsub double %100, %91
  %102 = fptrunc double %101 to float
  store float %102, ptr %84, align 4, !tbaa !14
  %103 = load float, ptr %93, align 4, !tbaa !14
  %104 = fpext float %103 to double
  %105 = fadd double %88, %104
  %106 = fptrunc double %105 to float
  store float %106, ptr %93, align 4, !tbaa !14
  %107 = load float, ptr %98, align 4, !tbaa !14
  %108 = fpext float %107 to double
  %109 = fadd double %91, %108
  %110 = fptrunc double %109 to float
  store float %110, ptr %98, align 4, !tbaa !14
  %111 = add i32 %69, 1
  %112 = icmp eq i32 %111, %66
  br i1 %112, label %113, label %68, !llvm.loop !22

113:                                              ; preds = %68, %65
  %114 = add i32 %67, %39
  %115 = icmp ult i32 %114, %0
  %116 = add i32 %66, %39
  br i1 %115, label %65, label %117, !llvm.loop !23

117:                                              ; preds = %113
  %118 = shl i32 %39, 1
  %119 = icmp ugt i32 %118, %0
  br i1 %119, label %120, label %38, !llvm.loop !24

120:                                              ; preds = %117, %20
  br i1 %13, label %139, label %121

121:                                              ; preds = %120
  %122 = uitofp i32 %0 to double
  br i1 %16, label %139, label %123

123:                                              ; preds = %121
  %124 = zext i32 %0 to i64
  br label %125

125:                                              ; preds = %125, %123
  %126 = phi i64 [ 0, %123 ], [ %137, %125 ]
  %127 = getelementptr inbounds float, ptr %4, i64 %126
  %128 = load float, ptr %127, align 4, !tbaa !14
  %129 = fpext float %128 to double
  %130 = fdiv double %129, %122
  %131 = fptrunc double %130 to float
  store float %131, ptr %127, align 4, !tbaa !14
  %132 = getelementptr inbounds float, ptr %5, i64 %126
  %133 = load float, ptr %132, align 4, !tbaa !14
  %134 = fpext float %133 to double
  %135 = fdiv double %134, %122
  %136 = fptrunc double %135 to float
  store float %136, ptr %132, align 4, !tbaa !14
  %137 = add nuw nsw i64 %126, 1
  %138 = icmp eq i64 %137, %124
  br i1 %138, label %139, label %125, !llvm.loop !25

139:                                              ; preds = %125, %121, %120, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @rand() #7 {
  %1 = load i64, ptr @next, align 8, !tbaa !26
  %2 = mul i64 %1, 1103515245
  %3 = add i64 %2, 12345
  store i64 %3, ptr @next, align 8, !tbaa !26
  %4 = lshr i64 %3, 16
  %5 = trunc i64 %4 to i32
  %6 = urem i32 %5, 32767
  %7 = add nuw nsw i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @srand(i32 noundef %0) #8 {
  %2 = zext i32 %0 to i64
  store i64 %2, ptr @next, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = icmp slt i32 %0, 3
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.3) #17
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13)
  tail call void @exit(i32 noundef -1) #15
  unreachable

9:                                                ; preds = %2
  %10 = icmp eq i32 %0, 4
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = getelementptr inbounds ptr, ptr %1, i64 3
  %13 = load ptr, ptr %12, align 8, !tbaa !8
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(3) @.str.4.4, i64 noundef 2) #18
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %11, %9
  %18 = phi i32 [ %16, %11 ], [ 0, %9 ]
  %19 = getelementptr inbounds ptr, ptr %1, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !8
  %21 = tail call i32 @atoi(ptr nocapture noundef %20) #18
  %22 = getelementptr inbounds ptr, ptr %1, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !8
  %24 = tail call i32 @atoi(ptr nocapture noundef %23) #18
  store i64 1, ptr @next, align 8, !tbaa !26
  %25 = zext i32 %21 to i64
  %26 = shl nuw nsw i64 %25, 2
  %27 = tail call noalias ptr @malloc(i64 noundef %26) #19
  %28 = tail call noalias ptr @malloc(i64 noundef %26) #19
  %29 = tail call noalias ptr @malloc(i64 noundef %26) #19
  %30 = tail call noalias ptr @malloc(i64 noundef %26) #19
  %31 = tail call noalias ptr @malloc(i64 noundef %26) #19
  %32 = tail call noalias ptr @malloc(i64 noundef %26) #19
  %33 = zext i32 %24 to i64
  %34 = shl nuw nsw i64 %33, 2
  %35 = tail call noalias ptr @malloc(i64 noundef %34) #19
  %36 = tail call noalias ptr @malloc(i64 noundef %34) #19
  %37 = icmp eq i32 %24, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %40, %17
  %39 = icmp eq i32 %21, 0
  br i1 %39, label %105, label %49

40:                                               ; preds = %40, %17
  %41 = phi i64 [ %47, %40 ], [ 0, %17 ]
  %42 = trunc i64 %41 to i32
  %43 = urem i32 %42, 1000
  %44 = uitofp i32 %43 to float
  %45 = getelementptr inbounds float, ptr %35, i64 %41
  store float %44, ptr %45, align 4, !tbaa !14
  %46 = getelementptr inbounds float, ptr %36, i64 %41
  store float %44, ptr %46, align 4, !tbaa !14
  %47 = add nuw nsw i64 %41, 1
  %48 = icmp eq i64 %47, %33
  br i1 %48, label %38, label %40, !llvm.loop !28

49:                                               ; preds = %85, %38
  %50 = phi i64 [ %86, %85 ], [ 0, %38 ]
  %51 = getelementptr inbounds float, ptr %27, i64 %50
  store float 0.000000e+00, ptr %51, align 4, !tbaa !14
  br i1 %37, label %85, label %52

52:                                               ; preds = %49
  %53 = trunc i64 %50 to i32
  %54 = uitofp i32 %53 to float
  %55 = getelementptr inbounds float, ptr %28, i64 %50
  br label %56

56:                                               ; preds = %77, %52
  %57 = phi i64 [ 0, %52 ], [ %83, %77 ]
  %58 = load i64, ptr @next, align 8, !tbaa !26
  %59 = mul i64 %58, 1103515245
  %60 = add i64 %59, 12345
  store i64 %60, ptr @next, align 8, !tbaa !26
  %61 = lshr i64 %60, 16
  %62 = trunc i64 %61 to i32
  %63 = urem i32 %62, 32767
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  %66 = getelementptr inbounds float, ptr %35, i64 %57
  %67 = load float, ptr %66, align 4, !tbaa !14
  %68 = fpext float %67 to double
  %69 = getelementptr inbounds float, ptr %36, i64 %57
  %70 = load float, ptr %69, align 4, !tbaa !14
  %71 = fmul float %70, %54
  %72 = fpext float %71 to double
  br i1 %65, label %73, label %75

73:                                               ; preds = %56
  %74 = tail call double @cos(double noundef %72) #16
  br label %77

75:                                               ; preds = %56
  %76 = tail call double @sin(double noundef %72) #16
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi double [ %76, %75 ], [ %74, %73 ]
  %79 = load float, ptr %51, align 4, !tbaa !14
  %80 = fpext float %79 to double
  %81 = tail call double @llvm.fmuladd.f64(double %68, double %78, double %80)
  %82 = fptrunc double %81 to float
  store float %82, ptr %51, align 4, !tbaa !14
  store float 0.000000e+00, ptr %55, align 4, !tbaa !14
  %83 = add nuw nsw i64 %57, 1
  %84 = icmp eq i64 %83, %33
  br i1 %84, label %85, label %56, !llvm.loop !29

85:                                               ; preds = %77, %49
  %86 = add nuw nsw i64 %50, 1
  %87 = icmp eq i64 %86, %25
  br i1 %87, label %88, label %49, !llvm.loop !30

88:                                               ; preds = %85
  tail call void @fft_float(i32 noundef %21, i32 noundef %18, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30) #16
  tail call void @fft_float_StrictFP(i32 noundef %21, i32 noundef %18, ptr noundef %27, ptr noundef %28, ptr noundef %31, ptr noundef %32) #16
  %89 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br i1 %39, label %125, label %90

90:                                               ; preds = %100, %88
  %91 = phi i64 [ %103, %100 ], [ 0, %88 ]
  %92 = getelementptr inbounds float, ptr %29, i64 %91
  %93 = load float, ptr %92, align 4, !tbaa !14
  %94 = getelementptr inbounds float, ptr %31, i64 %91
  %95 = load float, ptr %94, align 4, !tbaa !14
  %96 = fsub float %93, %95
  %97 = tail call float @llvm.fabs.f32(float %96)
  %98 = fpext float %97 to double
  %99 = fcmp ogt double %98, 1.000000e-05
  br i1 %99, label %130, label %100

100:                                              ; preds = %90
  %101 = fpext float %95 to double
  %102 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %101) #17
  %103 = add nuw nsw i64 %91, 1
  %104 = icmp eq i64 %103, %25
  br i1 %104, label %107, label %90, !llvm.loop !31

105:                                              ; preds = %38
  tail call void @fft_float(i32 noundef %21, i32 noundef %18, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30) #16
  tail call void @fft_float_StrictFP(i32 noundef %21, i32 noundef %18, ptr noundef %27, ptr noundef %28, ptr noundef %31, ptr noundef %32) #16
  %106 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %107

107:                                              ; preds = %105, %100
  %108 = tail call i32 @putchar(i32 10)
  %109 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  br i1 %39, label %128, label %110

110:                                              ; preds = %120, %107
  %111 = phi i64 [ %123, %120 ], [ 0, %107 ]
  %112 = getelementptr inbounds float, ptr %30, i64 %111
  %113 = load float, ptr %112, align 4, !tbaa !14
  %114 = getelementptr inbounds float, ptr %32, i64 %111
  %115 = load float, ptr %114, align 4, !tbaa !14
  %116 = fsub float %113, %115
  %117 = tail call float @llvm.fabs.f32(float %116)
  %118 = fpext float %117 to double
  %119 = fcmp ogt double %118, 1.000000e-05
  br i1 %119, label %130, label %120

120:                                              ; preds = %110
  %121 = fpext float %115 to double
  %122 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %121) #17
  %123 = add nuw nsw i64 %111, 1
  %124 = icmp eq i64 %123, %25
  br i1 %124, label %128, label %110, !llvm.loop !32

125:                                              ; preds = %88
  %126 = tail call i32 @putchar(i32 10)
  %127 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  br label %128

128:                                              ; preds = %125, %120, %107
  %129 = tail call i32 @putchar(i32 10)
  tail call void @free(ptr noundef %27) #16
  tail call void @free(ptr noundef %28) #16
  tail call void @free(ptr noundef %29) #16
  tail call void @free(ptr noundef %30) #16
  tail call void @free(ptr noundef %31) #16
  tail call void @free(ptr noundef %32) #16
  tail call void @free(ptr noundef %35) #16
  tail call void @free(ptr noundef %36) #16
  tail call void @exit(i32 noundef 0) #15
  unreachable

130:                                              ; preds = %110, %90
  %131 = phi float [ %113, %110 ], [ %93, %90 ]
  %132 = phi float [ %115, %110 ], [ %95, %90 ]
  %133 = load ptr, ptr @stderr, align 8, !tbaa !8
  %134 = fpext float %131 to double
  %135 = fpext float %132 to double
  %136 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef nonnull @.str.9, double noundef %134, double noundef %135, double noundef 1.000000e-05) #14
  ret i32 1
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

attributes #0 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold optsize }
attributes #15 = { noreturn nounwind optsize }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize willreturn memory(read) }
attributes #19 = { nounwind optsize allocsize(0) }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{i32 0, i32 33}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !10, i64 0}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = !{!27, !27, i64 0}
!27 = !{!"long long", !10, i64 0}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
