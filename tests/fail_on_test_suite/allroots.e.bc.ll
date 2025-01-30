; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/Prolangs-C/allroots/allroots.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.A = internal global [4 x double] [double 4.100000e+00, double -3.900000e+00, double -1.000000e+00, double 1.000000e+00], align 16
@.str = private unnamed_addr constant [14 x i8] c"DEBUG: %g %g\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"x**%d - \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"x**%d + \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"   ROOT = %g\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"  ROOT = %g (from quadratic formula)\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"     DEFLATED to\0A(x - %g)*(\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%g)\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"\0A  ROOT = %g (from quadratic formula)\0A\00", align 1
@str.15 = private unnamed_addr constant [18 x i8] c"Find all roots of\00", align 1
@str.16 = private unnamed_addr constant [21 x i8] c"using NEWTON method.\00", align 1
@str.17 = private unnamed_addr constant [63 x i8] c"==============================================================\00", align 1
@str.18 = private unnamed_addr constant [9 x i8] c"No roots\00", align 1
@str.21 = private unnamed_addr constant [59 x i8] c"----> Refine Root on the Orginal Polynomial (non-deflated)\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"     NEWTON Called on interval [%g,%g]\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"     X[%d] = %g\0A\00", align 1
@DERIV_X = internal global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"ROOT: %g (approx.)\0A\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main() #0 {
  %1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef 0x40337AAE58825399, double noundef 0x401CF55906D75FA4) #9
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  %3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15)
  br label %4

4:                                                ; preds = %4, %0
  %5 = phi i64 [ 3, %0 ], [ %10, %4 ]
  %6 = getelementptr inbounds [4 x double], ptr @main.A, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !7
  %8 = tail call double @d_abs(double noundef %7) #10
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %8) #9
  %10 = add nsw i64 %5, -1
  %11 = getelementptr inbounds [4 x double], ptr @main.A, i64 0, i64 %10
  %12 = load double, ptr %11, align 8, !tbaa !7
  %13 = fcmp olt double %12, 0.000000e+00
  %14 = trunc i64 %5 to i32
  %15 = select i1 %13, ptr @.str.4, ptr @.str.5
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %15, i32 noundef %14) #9
  %17 = icmp ugt i64 %5, 1
  br i1 %17, label %4, label %18, !llvm.loop !11

18:                                               ; preds = %4
  %19 = load double, ptr @main.A, align 16, !tbaa !7
  %20 = tail call double @d_abs(double noundef %19) #10
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %20) #9
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  %23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  tail call void @allroots(i32 noundef 3, ptr noundef nonnull @main.A, i32 noundef 3, ptr noundef nonnull @main.A) #9
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal void @allroots(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = add nuw i32 %2, 1
  %8 = zext i32 %7 to i64
  br label %9

9:                                                ; preds = %9, %6
  %10 = phi i64 [ 0, %6 ], [ %16, %9 ]
  %11 = phi double [ 0.000000e+00, %6 ], [ %15, %9 ]
  %12 = getelementptr inbounds double, ptr %3, i64 %10
  %13 = load double, ptr %12, align 8, !tbaa !7
  %14 = tail call double @d_abs(double noundef %13) #10
  %15 = fadd double %11, %14
  %16 = add nuw nsw i64 %10, 1
  %17 = icmp eq i64 %16, %8
  br i1 %17, label %18, label %9, !llvm.loop !13

18:                                               ; preds = %9, %4
  %19 = phi double [ 0.000000e+00, %4 ], [ %15, %9 ]
  %20 = sext i32 %2 to i64
  %21 = getelementptr inbounds double, ptr %3, i64 %20
  %22 = load double, ptr %21, align 8, !tbaa !7
  %23 = tail call double @d_abs(double noundef %22) #10
  switch i32 %2, label %61 [
    i32 0, label %24
    i32 1, label %26
    i32 2, label %33
  ]

24:                                               ; preds = %18
  %25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  br label %65

26:                                               ; preds = %18
  %27 = load double, ptr %3, align 8, !tbaa !7
  %28 = fneg double %27
  %29 = getelementptr inbounds double, ptr %3, i64 1
  %30 = load double, ptr %29, align 8, !tbaa !7
  %31 = fdiv double %28, %30
  %32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %31) #9
  br label %65

33:                                               ; preds = %18
  %34 = getelementptr inbounds double, ptr %3, i64 1
  %35 = load double, ptr %34, align 8, !tbaa !7
  %36 = getelementptr inbounds double, ptr %3, i64 2
  %37 = load double, ptr %36, align 8, !tbaa !7
  %38 = load double, ptr %3, align 8, !tbaa !7
  %39 = fmul double %37, -4.000000e+00
  %40 = fmul double %39, %38
  %41 = tail call double @llvm.fmuladd.f64(double %35, double %35, double %40)
  %42 = tail call double @sqrt(double noundef %41) #10
  %43 = fsub double %42, %35
  %44 = load double, ptr %36, align 8, !tbaa !7
  %45 = fmul double %44, 2.000000e+00
  %46 = fdiv double %43, %45
  %47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %46) #9
  %48 = load double, ptr %34, align 8, !tbaa !7
  %49 = fneg double %48
  %50 = load double, ptr %36, align 8, !tbaa !7
  %51 = load double, ptr %3, align 8, !tbaa !7
  %52 = fmul double %50, -4.000000e+00
  %53 = fmul double %52, %51
  %54 = tail call double @llvm.fmuladd.f64(double %48, double %48, double %53)
  %55 = tail call double @sqrt(double noundef %54) #10
  %56 = fsub double %49, %55
  %57 = load double, ptr %36, align 8, !tbaa !7
  %58 = fmul double %57, 2.000000e+00
  %59 = fdiv double %56, %58
  %60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %59) #9
  br label %65

61:                                               ; preds = %18
  %62 = fdiv double %19, %23
  %63 = fsub double -1.000000e+00, %62
  %64 = tail call double @newton(i32 noundef %2, ptr noundef nonnull %3, double noundef %63, double noundef %62) #10
  tail call void @deflat(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, double noundef %64) #9
  br label %65

65:                                               ; preds = %61, %33, %26, %24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal void @deflat(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, double noundef %4) #0 {
  %6 = icmp eq i32 %2, %0
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  %9 = fadd double %4, -5.000000e-01
  %10 = fadd double %4, 5.000000e-01
  %11 = tail call double @newton(i32 noundef %0, ptr noundef %1, double noundef %9, double noundef %10) #10
  br label %12

12:                                               ; preds = %7, %5
  %13 = sext i32 %2 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 8) #11
  %15 = getelementptr inbounds double, ptr %3, i64 %13
  %16 = load double, ptr %15, align 8, !tbaa !7
  %17 = add nsw i32 %2, -1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double, ptr %14, i64 %18
  store double %16, ptr %19, align 8, !tbaa !7
  %20 = icmp sgt i32 %2, 1
  br i1 %20, label %21, label %28

21:                                               ; preds = %12
  %22 = add nsw i32 %2, -2
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 3
  %25 = add nuw nsw i64 %24, 8
  %26 = getelementptr i8, ptr %14, i64 %25
  %27 = load double, ptr %26, align 8
  br label %32

28:                                               ; preds = %32, %12
  %29 = icmp sgt i32 %2, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %28
  %31 = zext i32 %2 to i64
  br label %42

32:                                               ; preds = %32, %21
  %33 = phi double [ %27, %21 ], [ %38, %32 ]
  %34 = phi i64 [ %23, %21 ], [ %40, %32 ]
  %35 = add nuw nsw i64 %34, 1
  %36 = getelementptr inbounds double, ptr %3, i64 %35
  %37 = load double, ptr %36, align 8, !tbaa !7
  %38 = tail call double @llvm.fmuladd.f64(double %33, double %4, double %37)
  %39 = getelementptr inbounds double, ptr %14, i64 %34
  store double %38, ptr %39, align 8, !tbaa !7
  %40 = add nsw i64 %34, -1
  %41 = icmp eq i64 %34, 0
  br i1 %41, label %28, label %32, !llvm.loop !14

42:                                               ; preds = %42, %30
  %43 = phi i64 [ %31, %30 ], [ %48, %42 ]
  %44 = getelementptr inbounds double, ptr %3, i64 %43
  %45 = load double, ptr %44, align 8, !tbaa !7
  %46 = tail call double @d_abs(double noundef %45) #10
  %47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %46) #9
  %48 = add nsw i64 %43, -1
  %49 = and i64 %48, 4294967295
  %50 = getelementptr inbounds double, ptr %3, i64 %49
  %51 = load double, ptr %50, align 8, !tbaa !7
  %52 = fcmp olt double %51, 0.000000e+00
  %53 = trunc i64 %43 to i32
  %54 = select i1 %52, ptr @.str.4, ptr @.str.5
  %55 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %54, i32 noundef %53) #9
  %56 = icmp ugt i64 %43, 1
  br i1 %56, label %42, label %57, !llvm.loop !15

57:                                               ; preds = %42, %28
  %58 = load double, ptr %3, align 8, !tbaa !7
  %59 = tail call double @d_abs(double noundef %58) #10
  %60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %59) #9
  %61 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, double noundef %4) #9
  br i1 %20, label %62, label %79

62:                                               ; preds = %57
  %63 = zext i32 %17 to i64
  br label %64

64:                                               ; preds = %64, %62
  %65 = phi i64 [ %63, %62 ], [ %70, %64 ]
  %66 = getelementptr inbounds double, ptr %14, i64 %65
  %67 = load double, ptr %66, align 8, !tbaa !7
  %68 = tail call double @d_abs(double noundef %67) #10
  %69 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %68) #9
  %70 = add nsw i64 %65, -1
  %71 = and i64 %70, 4294967295
  %72 = getelementptr inbounds double, ptr %14, i64 %71
  %73 = load double, ptr %72, align 8, !tbaa !7
  %74 = fcmp olt double %73, 0.000000e+00
  %75 = trunc i64 %65 to i32
  %76 = select i1 %74, ptr @.str.4, ptr @.str.5
  %77 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %76, i32 noundef %75) #9
  %78 = icmp ugt i64 %65, 1
  br i1 %78, label %64, label %79, !llvm.loop !16

79:                                               ; preds = %64, %57
  %80 = load double, ptr %14, align 8, !tbaa !7
  %81 = tail call double @d_abs(double noundef %80) #10
  %82 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %81) #9
  %83 = icmp eq i32 %2, 3
  br i1 %83, label %84, label %118

84:                                               ; preds = %79
  %85 = getelementptr inbounds double, ptr %14, i64 1
  %86 = load double, ptr %85, align 8, !tbaa !7
  %87 = getelementptr inbounds double, ptr %14, i64 2
  %88 = load double, ptr %87, align 8, !tbaa !7
  %89 = fmul double %88, -4.000000e+00
  %90 = fmul double %89, %80
  %91 = tail call double @llvm.fmuladd.f64(double %86, double %86, double %90)
  %92 = tail call double @sqrt(double noundef %91) #10
  %93 = fsub double %92, %86
  %94 = load double, ptr %87, align 8, !tbaa !7
  %95 = fmul double %94, 2.000000e+00
  %96 = fdiv double %93, %95
  %97 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %96) #9
  %98 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  %99 = fadd double %96, -5.000000e-01
  %100 = fadd double %96, 5.000000e-01
  %101 = tail call double @newton(i32 noundef %0, ptr noundef %1, double noundef %99, double noundef %100) #10
  %102 = load double, ptr %85, align 8, !tbaa !7
  %103 = fneg double %102
  %104 = load double, ptr %14, align 8, !tbaa !7
  %105 = fmul double %94, -4.000000e+00
  %106 = fmul double %105, %104
  %107 = tail call double @llvm.fmuladd.f64(double %102, double %102, double %106)
  %108 = tail call double @sqrt(double noundef %107) #10
  %109 = fsub double %103, %108
  %110 = load double, ptr %87, align 8, !tbaa !7
  %111 = fmul double %110, 2.000000e+00
  %112 = fdiv double %109, %111
  %113 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %112) #9
  %114 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  %115 = fadd double %112, -5.000000e-01
  %116 = fadd double %112, 5.000000e-01
  %117 = tail call double @newton(i32 noundef %0, ptr noundef %1, double noundef %115, double noundef %116) #10
  br label %119

118:                                              ; preds = %79
  tail call void @allroots(i32 noundef %0, ptr noundef %1, i32 noundef %17, ptr noundef nonnull %14) #9
  br label %119

119:                                              ; preds = %118, %84
  tail call void @free(ptr noundef nonnull %14) #10
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind optsize memory(write, argmem: read, inaccessiblemem: none) uwtable
define internal double @HORNERS(i32 noundef %0, ptr nocapture noundef readonly %1, double noundef %2) #7 {
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds double, ptr %1, i64 %4
  %6 = load double, ptr %5, align 8, !tbaa !7
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = zext i32 %0 to i64
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i64 [ %9, %8 ], [ %14, %10 ]
  %12 = phi double [ %6, %8 ], [ %19, %10 ]
  %13 = phi double [ %6, %8 ], [ %18, %10 ]
  %14 = add nsw i64 %11, -1
  %15 = and i64 %14, 4294967295
  %16 = getelementptr inbounds double, ptr %1, i64 %15
  %17 = load double, ptr %16, align 8, !tbaa !7
  %18 = tail call double @llvm.fmuladd.f64(double %2, double %13, double %17)
  %19 = tail call double @llvm.fmuladd.f64(double %2, double %12, double %18)
  %20 = icmp ugt i64 %11, 2
  br i1 %20, label %10, label %21, !llvm.loop !17

21:                                               ; preds = %10, %3
  %22 = phi double [ %6, %3 ], [ %18, %10 ]
  %23 = phi double [ %6, %3 ], [ %19, %10 ]
  %24 = load double, ptr %1, align 8, !tbaa !7
  %25 = tail call double @llvm.fmuladd.f64(double %2, double %22, double %24)
  store double %23, ptr @DERIV_X, align 8, !tbaa !7
  ret double %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal double @d_abs(double noundef %0) #8 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = fneg double %0
  %4 = select i1 %2, double %3, double %0
  ret double %4
}

; Function Attrs: nounwind optsize uwtable
define internal double @newton(i32 noundef %0, ptr noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = fcmp olt double %3, %2
  %6 = select i1 %5, double %2, double %3
  %7 = select i1 %5, double %3, double %2
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %7, double noundef %6) #9
  %9 = fadd double %7, %6
  %10 = fmul double %9, 5.000000e-01
  br label %11

11:                                               ; preds = %22, %4
  %12 = phi double [ %7, %4 ], [ %13, %22 ]
  %13 = phi double [ %10, %4 ], [ %28, %22 ]
  %14 = phi i32 [ 0, %4 ], [ %23, %22 ]
  %15 = fsub double %13, %12
  %16 = tail call double @d_abs(double noundef %15) #10
  %17 = tail call double @d_abs(double noundef %13) #10
  %18 = fdiv double %16, %17
  %19 = fcmp ogt double %18, 5.000000e-06
  %20 = icmp ult i32 %14, 41
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %29

22:                                               ; preds = %11
  %23 = add nuw nsw i32 %14, 1
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %23, double noundef %13) #9
  %25 = tail call double @HORNERS(i32 noundef %0, ptr noundef %1, double noundef %13) #10
  %26 = load double, ptr @DERIV_X, align 8, !tbaa !7
  %27 = fdiv double %25, %26
  %28 = fsub double %13, %27
  br label %11, !llvm.loop !18

29:                                               ; preds = %11
  %.lcssa = phi double [ %13, %11 ]
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %.lcssa) #9
  ret double %.lcssa
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind optsize memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind optsize allocsize(0,1) }

!llvm.ident = !{!0, !0, !0}
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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
