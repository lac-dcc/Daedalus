; ModuleID = '/src/llvm-test-suite/build/SingleSource/UnitTests/Vector/SSE/Vector-sse.stepfft.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = internal global [2048 x float] zeroinitializer, align 16
@z = internal global [2048 x float] zeroinitializer, align 16
@w = internal global [1024 x float] zeroinitializer, align 16
@y = internal global [2048 x float] zeroinitializer, align 16
@.str = private unnamed_addr constant [29 x i8] c" for n=%d, fwd/bck error=%e\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" for n=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%g  \00", align 1

; Function Attrs: nofree nounwind optsize uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %86, %0
  %2 = phi i1 [ false, %0 ], [ true, %86 ]
  %3 = phi i1 [ true, %0 ], [ false, %86 ]
  %4 = phi float [ 3.310000e+02, %0 ], [ %27, %86 ]
  br i1 %2, label %5, label %6

5:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) @x, i8 0, i64 8192, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) @z, i8 0, i64 8192, i1 false), !tbaa !7
  br label %26

6:                                                ; preds = %6, %1
  %7 = phi i64 [ %24, %6 ], [ 0, %1 ]
  %8 = phi float [ %16, %6 ], [ %4, %1 ]
  %9 = fpext float %8 to double
  %10 = fmul double %9, 1.680700e+04
  %11 = tail call double @fmod(double noundef %10, double noundef 0x41DFFFFFFFC00000) #7
  %12 = fptrunc double %11 to float
  %13 = fpext float %12 to double
  %14 = fmul double %13, 1.680700e+04
  %15 = tail call double @fmod(double noundef %14, double noundef 0x41DFFFFFFFC00000) #7
  %16 = fptrunc double %15 to float
  %17 = getelementptr inbounds [2048 x float], ptr @x, i64 0, i64 %7
  %18 = getelementptr inbounds [2048 x float], ptr @z, i64 0, i64 %7
  %19 = insertelement <2 x double> poison, double %11, i64 0
  %20 = insertelement <2 x double> %19, double %15, i64 1
  %21 = fadd <2 x double> %20, <double -1.000000e+00, double -1.000000e+00>
  %22 = fdiv <2 x double> %21, <double 0x41DFFFFFFF800000, double 0x41DFFFFFFF800000>
  %23 = fptrunc <2 x double> %22 to <2 x float>
  store <2 x float> %23, ptr %17, align 8, !tbaa !7
  store <2 x float> %23, ptr %18, align 8, !tbaa !7
  %24 = add nuw nsw i64 %7, 2
  %25 = icmp ult i64 %7, 2046
  br i1 %25, label %6, label %26, !llvm.loop !11

26:                                               ; preds = %6, %5
  %27 = phi float [ %4, %5 ], [ %16, %6 ]
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i64 [ 0, %26 ], [ %40, %28 ]
  %30 = trunc i64 %29 to i32
  %31 = sitofp i32 %30 to float
  %32 = fmul float %31, 0x3F7921FB60000000
  %33 = fpext float %32 to double
  %34 = tail call double @cos(double noundef %33) #7
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds [2 x float], ptr @w, i64 %29
  store float %35, ptr %36, align 8, !tbaa !7
  %37 = tail call double @sin(double noundef %33) #7
  %38 = fptrunc double %37 to float
  %39 = getelementptr inbounds [2 x float], ptr @w, i64 %29, i64 1
  store float %38, ptr %39, align 4, !tbaa !7
  %40 = add nuw nsw i64 %29, 1
  %41 = icmp eq i64 %40, 512
  br i1 %41, label %42, label %28, !llvm.loop !13

42:                                               ; preds = %28
  br i1 %2, label %65, label %43

43:                                               ; preds = %42
  tail call void @cfft2(i32 noundef 1024, ptr noundef nonnull @x, ptr noundef nonnull @y, ptr noundef nonnull @w, double noundef 1.000000e+00) #8
  tail call void @cfft2(i32 noundef 1024, ptr noundef nonnull @y, ptr noundef nonnull @x, ptr noundef nonnull @w, double noundef -1.000000e+00) #8
  br label %44

44:                                               ; preds = %44, %43
  %45 = phi i64 [ 0, %43 ], [ %58, %44 ]
  %46 = phi float [ 0.000000e+00, %43 ], [ %57, %44 ]
  %47 = getelementptr inbounds [2048 x float], ptr @z, i64 0, i64 %45
  %48 = getelementptr inbounds [2048 x float], ptr @x, i64 0, i64 %45
  %49 = load <2 x float>, ptr %47, align 8, !tbaa !7
  %50 = load <2 x float>, ptr %48, align 8, !tbaa !7
  %51 = fmul <2 x float> %50, <float 0x3F50000000000000, float 0x3F50000000000000>
  %52 = fsub <2 x float> %49, %51
  %53 = fmul <2 x float> %52, %52
  %54 = shufflevector <2 x float> %53, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %55 = fadd <2 x float> %53, %54
  %56 = extractelement <2 x float> %55, i64 0
  %57 = fadd float %46, %56
  %58 = add nuw nsw i64 %45, 2
  %59 = icmp ult i64 %45, 2046
  br i1 %59, label %44, label %60, !llvm.loop !14

60:                                               ; preds = %44
  %.lcssa = phi float [ %57, %44 ]
  %61 = fmul float %.lcssa, 0x3F50000000000000
  %62 = tail call float @sqrtf(float noundef %61) #2
  %63 = fpext float %62 to double
  %64 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 1024, double noundef %63) #8
  br label %86

65:                                               ; preds = %65, %42
  %66 = phi i32 [ %67, %65 ], [ 0, %42 ]
  tail call void @cfft2(i32 noundef 1024, ptr noundef nonnull @x, ptr noundef nonnull @y, ptr noundef nonnull @w, double noundef 1.000000e+00) #8
  tail call void @cfft2(i32 noundef 1024, ptr noundef nonnull @y, ptr noundef nonnull @x, ptr noundef nonnull @w, double noundef -1.000000e+00) #8
  %67 = add nuw nsw i32 %66, 1
  %68 = icmp eq i32 %67, 20000
  br i1 %68, label %69, label %65, !llvm.loop !15

69:                                               ; preds = %65
  %70 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 1024) #8
  br label %71

71:                                               ; preds = %82, %69
  %72 = phi i64 [ 0, %69 ], [ %84, %82 ]
  %73 = phi i32 [ 0, %69 ], [ %83, %82 ]
  %74 = getelementptr inbounds [1024 x float], ptr @w, i64 0, i64 %72
  %75 = load float, ptr %74, align 4, !tbaa !7
  %76 = fpext float %75 to double
  %77 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %76) #8
  %78 = add i32 %73, 1
  %79 = icmp eq i32 %78, 4
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = tail call i32 @putchar(i32 10)
  br label %82

82:                                               ; preds = %80, %71
  %83 = phi i32 [ 0, %80 ], [ %78, %71 ]
  %84 = add nuw nsw i64 %72, 1
  %85 = icmp eq i64 %84, 1024
  br i1 %85, label %86, label %71, !llvm.loop !16

86:                                               ; preds = %82, %60
  br i1 %3, label %1, label %87, !llvm.loop !17

87:                                               ; preds = %86
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize memory(write, argmem: readwrite) uwtable
define internal void @cfft2(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, double noundef %4) #3 {
  %6 = fptrunc double %4 to float
  %7 = sitofp i32 %0 to float
  %8 = fpext float %7 to double
  %9 = tail call double @log(double noundef %8) #7
  %10 = fdiv double %9, 0x3FE60532EF13C385
  %11 = fptosi double %10 to i32
  %12 = sdiv i32 %0, 2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2 x float], ptr %1, i64 %13
  %15 = getelementptr inbounds [2 x float], ptr %2, i64 1
  %16 = fpext float %6 to double
  tail call void @step(i32 noundef %0, i32 noundef 1, ptr noundef %1, ptr noundef %14, ptr noundef %2, ptr noundef nonnull %15, ptr noundef %3, double noundef %16) #8
  %17 = icmp sgt i32 %11, 2
  br i1 %17, label %18, label %36

18:                                               ; preds = %5
  %19 = getelementptr inbounds [2 x float], ptr %2, i64 %13
  %20 = add i32 %11, -3
  br label %21

21:                                               ; preds = %32, %18
  %22 = phi i32 [ 1, %18 ], [ %33, %32 ]
  %23 = phi i32 [ 1, %18 ], [ %25, %32 ]
  %24 = phi i32 [ 0, %18 ], [ %34, %32 ]
  %25 = shl nsw i32 %23, 1
  %26 = icmp eq i32 %22, 0
  %27 = sext i32 %25 to i64
  br i1 %26, label %30, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds [2 x float], ptr %1, i64 %27
  tail call void @step(i32 noundef %0, i32 noundef %25, ptr noundef %2, ptr noundef %19, ptr noundef %1, ptr noundef nonnull %29, ptr noundef %3, double noundef %16) #8
  br label %32

30:                                               ; preds = %21
  %31 = getelementptr inbounds [2 x float], ptr %2, i64 %27
  tail call void @step(i32 noundef %0, i32 noundef %25, ptr noundef %1, ptr noundef %14, ptr noundef %2, ptr noundef nonnull %31, ptr noundef %3, double noundef %16) #8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ 0, %28 ], [ 1, %30 ]
  %34 = add nuw nsw i32 %24, 1
  %35 = icmp eq i32 %24, %20
  br i1 %35, label %36, label %21, !llvm.loop !18

36:                                               ; preds = %32, %5
  %37 = phi i32 [ 1, %5 ], [ %33, %32 ]
  %38 = icmp ne i32 %37, 0
  %39 = icmp sgt i32 %0, 0
  %40 = and i1 %39, %38
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = zext i32 %0 to i64
  br label %43

43:                                               ; preds = %43, %41
  %44 = phi i64 [ 0, %41 ], [ %51, %43 ]
  %45 = getelementptr inbounds [2 x float], ptr %2, i64 %44
  %46 = load float, ptr %45, align 4, !tbaa !7
  %47 = getelementptr inbounds [2 x float], ptr %1, i64 %44
  store float %46, ptr %47, align 4, !tbaa !7
  %48 = getelementptr inbounds [2 x float], ptr %2, i64 %44, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !7
  %50 = getelementptr inbounds [2 x float], ptr %1, i64 %44, i64 1
  store float %49, ptr %50, align 4, !tbaa !7
  %51 = add nuw nsw i64 %44, 1
  %52 = icmp eq i64 %51, %42
  br i1 %52, label %53, label %43, !llvm.loop !19

53:                                               ; preds = %43, %36
  %54 = getelementptr inbounds [2 x float], ptr %2, i64 %13
  tail call void @step(i32 noundef %0, i32 noundef %12, ptr noundef %1, ptr noundef %14, ptr noundef %2, ptr noundef %54, ptr noundef %3, double noundef %16) #8
  ret void
}

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @step(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef readonly %6, double noundef %7) #6 {
  %9 = shl nsw i32 %1, 1
  %10 = sdiv i32 %0, %9
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %91

12:                                               ; preds = %8
  %13 = fptrunc double %7 to float
  %14 = fcmp olt float %13, 0.000000e+00
  %15 = icmp slt i32 %1, 2
  %16 = sext i32 %1 to i64
  %17 = sext i32 %9 to i64
  %18 = zext i32 %10 to i64
  br label %19

19:                                               ; preds = %88, %12
  %20 = phi i64 [ 0, %12 ], [ %89, %88 ]
  %21 = mul nsw i64 %20, %16
  %22 = mul nsw i64 %20, %17
  %23 = getelementptr inbounds [2 x float], ptr %6, i64 %21
  %24 = load float, ptr %23, align 4, !tbaa !7
  %25 = getelementptr inbounds [2 x float], ptr %6, i64 %21, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !7
  %27 = fneg float %26
  %28 = select i1 %14, float %27, float %26
  br i1 %15, label %29, label %62

29:                                               ; preds = %19
  %30 = getelementptr inbounds [2 x float], ptr %2, i64 %21
  %31 = load float, ptr %30, align 4, !tbaa !7
  %32 = getelementptr inbounds [2 x float], ptr %3, i64 %21
  %33 = load float, ptr %32, align 4, !tbaa !7
  %34 = fsub float %31, %33
  %35 = fmul float %24, %34
  %36 = getelementptr inbounds [2 x float], ptr %2, i64 %21, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !7
  %38 = getelementptr inbounds [2 x float], ptr %3, i64 %21, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !7
  %40 = fsub float %37, %39
  %41 = fmul float %28, %40
  %42 = fsub float %35, %41
  %43 = getelementptr inbounds [2 x float], ptr %5, i64 %22
  store float %42, ptr %43, align 4, !tbaa !7
  %44 = load float, ptr %30, align 4, !tbaa !7
  %45 = load float, ptr %32, align 4, !tbaa !7
  %46 = fsub float %44, %45
  %47 = fmul float %28, %46
  %48 = load float, ptr %36, align 4, !tbaa !7
  %49 = load float, ptr %38, align 4, !tbaa !7
  %50 = fsub float %48, %49
  %51 = fmul float %24, %50
  %52 = fadd float %47, %51
  %53 = getelementptr inbounds [2 x float], ptr %5, i64 %22, i64 1
  store float %52, ptr %53, align 4, !tbaa !7
  %54 = load float, ptr %30, align 4, !tbaa !7
  %55 = load float, ptr %32, align 4, !tbaa !7
  %56 = fadd float %54, %55
  %57 = getelementptr inbounds [2 x float], ptr %4, i64 %22
  store float %56, ptr %57, align 4, !tbaa !7
  %58 = load float, ptr %36, align 4, !tbaa !7
  %59 = load float, ptr %38, align 4, !tbaa !7
  %60 = fadd float %58, %59
  %61 = getelementptr inbounds [2 x float], ptr %4, i64 %22, i64 1
  store float %60, ptr %61, align 4, !tbaa !7
  br label %88

62:                                               ; preds = %19
  %63 = insertelement <4 x float> poison, float %24, i64 0
  %64 = shufflevector <4 x float> %63, <4 x float> poison, <4 x i32> zeroinitializer
  %65 = fneg float %28
  %66 = insertelement <4 x float> poison, float %65, i64 0
  %67 = insertelement <4 x float> %66, float %28, i64 1
  %68 = insertelement <4 x float> %67, float %65, i64 2
  %69 = insertelement <4 x float> %68, float %28, i64 3
  br label %70

70:                                               ; preds = %70, %62
  %71 = phi i64 [ 0, %62 ], [ %86, %70 ]
  %72 = add nsw i64 %71, %21
  %73 = getelementptr inbounds [2 x float], ptr %2, i64 %72
  %74 = load <4 x float>, ptr %73, align 16, !tbaa !20
  %75 = getelementptr inbounds [2 x float], ptr %3, i64 %72
  %76 = load <4 x float>, ptr %75, align 16, !tbaa !20
  %77 = fadd <4 x float> %74, %76
  %78 = add nsw i64 %71, %22
  %79 = getelementptr inbounds [2 x float], ptr %4, i64 %78
  store <4 x float> %77, ptr %79, align 16, !tbaa !20
  %80 = fsub <4 x float> %74, %76
  %81 = shufflevector <4 x float> %80, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %82 = fmul <4 x float> %64, %80
  %83 = fmul <4 x float> %69, %81
  %84 = fadd <4 x float> %82, %83
  %85 = getelementptr inbounds [2 x float], ptr %5, i64 %78
  store <4 x float> %84, ptr %85, align 16, !tbaa !20
  %86 = add nuw nsw i64 %71, 2
  %87 = icmp slt i64 %86, %16
  br i1 %87, label %70, label %88, !llvm.loop !21

88:                                               ; preds = %70, %29
  %89 = add nuw nsw i64 %20, 1
  %90 = icmp eq i64 %89, %18
  br i1 %90, label %91, label %19, !llvm.loop !22

91:                                               ; preds = %88, %8
  ret void
}

attributes #0 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

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
!20 = !{!9, !9, i64 0}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
