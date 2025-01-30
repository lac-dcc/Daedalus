; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Stanford/Oscar.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@seed = internal global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"  %15.3f%15.3f\00", align 1
@e = internal global [130 x %struct.complex] zeroinitializer, align 16
@zr = internal global float 0.000000e+00, align 4
@zi = internal global float 0.000000e+00, align 4
@z = internal global [257 x %struct.complex] zeroinitializer, align 16
@w = internal global [257 x %struct.complex] zeroinitializer, align 16

; Function Attrs: nofree nounwind optsize uwtable
define internal void @Printcomplex(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @putchar(i32 10)
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i32 [ %1, %4 ], [ %26, %6 ]
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.complex, ptr %0, i64 %8
  %10 = load float, ptr %9, align 4, !tbaa !7
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds %struct.complex, ptr %0, i64 %8, i32 1
  %13 = load float, ptr %12, align 4, !tbaa !12
  %14 = fpext float %13 to double
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %11, double noundef %14) #6
  %16 = add nsw i32 %7, %3
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.complex, ptr %0, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !7
  %20 = fpext float %19 to double
  %21 = getelementptr inbounds %struct.complex, ptr %0, i64 %17, i32 1
  %22 = load float, ptr %21, align 4, !tbaa !12
  %23 = fpext float %22 to double
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %20, double noundef %23) #6
  %25 = tail call i32 @putchar(i32 10)
  %26 = add nsw i32 %16, %3
  %27 = icmp sgt i32 %26, %2
  br i1 %27, label %28, label %6, !llvm.loop !13

28:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @Exptab(i32 noundef %0, ptr nocapture noundef %1) #3 {
  %3 = alloca [26 x float], align 16
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %3) #7
  br label %4

4:                                                ; preds = %30, %2
  %5 = phi i64 [ 1, %2 ], [ %35, %30 ]
  %6 = phi float [ 4.000000e+00, %2 ], [ %34, %30 ]
  %7 = fdiv float 0x400921FB60000000, %6
  br label %8

8:                                                ; preds = %26, %4
  %9 = phi float [ %7, %4 ], [ %14, %26 ]
  %10 = phi float [ 1.000000e+00, %4 ], [ %27, %26 ]
  %11 = phi i32 [ 1, %4 ], [ %13, %26 ]
  %12 = phi i32 [ 2, %4 ], [ %28, %26 ]
  %13 = mul nsw i32 %12, %11
  %14 = fmul float %7, %9
  %15 = and i32 %12, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %8
  %18 = and i32 %12, 3
  %19 = icmp eq i32 %18, 0
  %20 = sitofp i32 %13 to float
  %21 = fdiv float %14, %20
  br i1 %19, label %22, label %24

22:                                               ; preds = %17
  %23 = fadd float %10, %21
  br label %26

24:                                               ; preds = %17
  %25 = fsub float %10, %21
  br label %26

26:                                               ; preds = %24, %22, %8
  %27 = phi float [ %23, %22 ], [ %25, %24 ], [ %10, %8 ]
  %28 = add nuw nsw i32 %12, 1
  %29 = icmp eq i32 %28, 11
  br i1 %29, label %30, label %8, !llvm.loop !15

30:                                               ; preds = %26
  %.lcssa = phi float [ %27, %26 ]
  %31 = fmul float %.lcssa, 2.000000e+00
  %32 = fdiv float 1.000000e+00, %31
  %33 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %5
  store float %32, ptr %33, align 4, !tbaa !16
  %34 = fadd float %6, %6
  %35 = add nuw nsw i64 %5, 1
  %36 = icmp eq i64 %35, 26
  br i1 %36, label %37, label %4, !llvm.loop !17

37:                                               ; preds = %30
  %38 = sdiv i32 %0, 2
  %39 = sdiv i32 %0, 4
  %40 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %40, align 4, !tbaa !16
  %41 = add nsw i32 %39, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.complex, ptr %1, i64 %42
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %43, align 4, !tbaa !16
  %44 = add nsw i32 %38, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.complex, ptr %1, i64 %45
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %46, align 4, !tbaa !16
  %47 = sext i32 %38 to i64
  br label %48

48:                                               ; preds = %78, %37
  %49 = phi i32 [ 1, %37 ], [ %80, %78 ]
  %50 = phi i32 [ %39, %37 ], [ %51, %78 ]
  %51 = sdiv i32 %50, 2
  %52 = sext i32 %49 to i64
  %53 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %52
  %54 = load float, ptr %53, align 4, !tbaa !16
  %55 = add nsw i32 %51, 1
  %56 = sext i32 %51 to i64
  %57 = sext i32 %50 to i64
  %58 = insertelement <2 x float> poison, float %54, i64 0
  %59 = shufflevector <2 x float> %58, <2 x float> poison, <2 x i32> zeroinitializer
  br label %60

60:                                               ; preds = %60, %48
  %61 = phi i64 [ %76, %60 ], [ %56, %48 ]
  %62 = trunc i64 %61 to i32
  %63 = add i32 %55, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.complex, ptr %1, i64 %64
  %66 = add nsw i64 %61, 1
  %67 = trunc i64 %66 to i32
  %68 = sub i32 %67, %51
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.complex, ptr %1, i64 %69
  %71 = getelementptr inbounds %struct.complex, ptr %1, i64 %66
  %72 = load <2 x float>, ptr %65, align 4, !tbaa !16
  %73 = load <2 x float>, ptr %70, align 4, !tbaa !16
  %74 = fadd <2 x float> %72, %73
  %75 = fmul <2 x float> %59, %74
  store <2 x float> %75, ptr %71, align 4, !tbaa !16
  %76 = add nsw i64 %61, %57
  %77 = icmp sgt i64 %76, %47
  br i1 %77, label %78, label %60, !llvm.loop !18

78:                                               ; preds = %60
  %79 = tail call i32 @llvm.smin.i32(i32 %49, i32 24)
  %80 = add nsw i32 %79, 1
  %81 = icmp sgt i32 %50, 3
  br i1 %81, label %48, label %82, !llvm.loop !19

82:                                               ; preds = %78
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @Fft(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, float noundef %4) #3 {
  %6 = sdiv i32 %0, 2
  %7 = sext i32 %6 to i64
  %8 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  %9 = add nuw i32 %8, 1
  %10 = zext i32 %9 to i64
  br label %11

11:                                               ; preds = %70, %5
  %12 = phi i32 [ 1, %5 ], [ %71, %70 ]
  %13 = sext i32 %12 to i64
  br label %14

14:                                               ; preds = %59, %11
  %15 = phi i64 [ %60, %59 ], [ %13, %11 ]
  %16 = phi i32 [ %62, %59 ], [ 0, %11 ]
  %17 = phi i64 [ %.lcssa, %59 ], [ 1, %11 ]
  %18 = add nsw i32 %16, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.complex, ptr %3, i64 %19
  %21 = getelementptr inbounds %struct.complex, ptr %3, i64 %19, i32 1
  %22 = shl i64 %17, 32
  %23 = ashr exact i64 %22, 32
  %24 = sext i32 %16 to i64
  br label %25

25:                                               ; preds = %25, %14
  %26 = phi i64 [ %57, %25 ], [ %23, %14 ]
  %27 = getelementptr inbounds %struct.complex, ptr %1, i64 %26
  %28 = add nsw i64 %26, %7
  %29 = getelementptr inbounds %struct.complex, ptr %1, i64 %28
  %30 = add nsw i64 %26, %24
  %31 = getelementptr inbounds %struct.complex, ptr %2, i64 %30
  %32 = getelementptr inbounds %struct.complex, ptr %1, i64 %26, i32 1
  %33 = getelementptr inbounds %struct.complex, ptr %1, i64 %28, i32 1
  %34 = load <2 x float>, ptr %27, align 4, !tbaa !16
  %35 = load <2 x float>, ptr %29, align 4, !tbaa !16
  %36 = fadd <2 x float> %34, %35
  store <2 x float> %36, ptr %31, align 4, !tbaa !16
  %37 = load float, ptr %20, align 4, !tbaa !7
  %38 = load float, ptr %27, align 4, !tbaa !7
  %39 = load float, ptr %29, align 4, !tbaa !7
  %40 = fsub float %38, %39
  %41 = load float, ptr %21, align 4, !tbaa !12
  %42 = load float, ptr %32, align 4, !tbaa !12
  %43 = load float, ptr %33, align 4, !tbaa !12
  %44 = fsub float %42, %43
  %45 = fneg float %41
  %46 = fmul float %44, %45
  %47 = tail call float @llvm.fmuladd.f32(float %37, float %40, float %46)
  %48 = add nsw i64 %26, %15
  %49 = getelementptr inbounds %struct.complex, ptr %2, i64 %48
  store float %47, ptr %49, align 4, !tbaa !7
  %50 = load float, ptr %20, align 4, !tbaa !7
  %51 = load float, ptr %27, align 4, !tbaa !7
  %52 = load float, ptr %29, align 4, !tbaa !7
  %53 = fsub float %51, %52
  %54 = fmul float %41, %53
  %55 = tail call float @llvm.fmuladd.f32(float %50, float %44, float %54)
  %56 = getelementptr inbounds %struct.complex, ptr %2, i64 %48, i32 1
  store float %55, ptr %56, align 4, !tbaa !12
  %57 = add nsw i64 %26, 1
  %58 = icmp slt i64 %26, %15
  br i1 %58, label %25, label %59, !llvm.loop !20

59:                                               ; preds = %25
  %.lcssa = phi i64 [ %57, %25 ]
  %60 = add i64 %15, %13
  %61 = icmp sgt i64 %60, %7
  %62 = trunc i64 %15 to i32
  br i1 %61, label %63, label %14, !llvm.loop !21

63:                                               ; preds = %63, %59
  %64 = phi i64 [ %68, %63 ], [ 1, %59 ]
  %65 = getelementptr inbounds %struct.complex, ptr %1, i64 %64
  %66 = getelementptr inbounds %struct.complex, ptr %2, i64 %64
  %67 = load i64, ptr %66, align 4
  store i64 %67, ptr %65, align 4
  %68 = add nuw nsw i64 %64, 1
  %69 = icmp eq i64 %68, %10
  br i1 %69, label %70, label %63, !llvm.loop !22

70:                                               ; preds = %63
  %71 = shl nsw i32 %12, 1
  %72 = icmp sgt i32 %71, %6
  br i1 %72, label %73, label %11, !llvm.loop !23

73:                                               ; preds = %70
  %74 = icmp slt i32 %0, 1
  br i1 %74, label %88, label %75

75:                                               ; preds = %73
  %76 = fneg float %4
  %77 = add nuw i32 %0, 1
  %78 = zext i32 %77 to i64
  %79 = insertelement <2 x float> poison, float %4, i64 0
  %80 = insertelement <2 x float> %79, float %76, i64 1
  br label %81

81:                                               ; preds = %81, %75
  %82 = phi i64 [ 1, %75 ], [ %86, %81 ]
  %83 = getelementptr inbounds %struct.complex, ptr %1, i64 %82
  %84 = load <2 x float>, ptr %83, align 4, !tbaa !16
  %85 = fmul <2 x float> %84, %80
  store <2 x float> %85, ptr %83, align 4, !tbaa !16
  %86 = add nuw nsw i64 %82, 1
  %87 = icmp eq i64 %86, %78
  br i1 %87, label %88, label %81, !llvm.loop !24

88:                                               ; preds = %81, %73
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nofree nounwind optsize uwtable
define internal void @Oscar() #0 {
  tail call void @Exptab(i32 noundef 256, ptr noundef nonnull @e) #6
  br label %5

1:                                                ; preds = %5
  %.lcssa1 = phi <2 x float> [ %17, %5 ]
  %.lcssa = phi i32 [ %21, %5 ]
  %2 = zext i32 %.lcssa to i64
  store i64 %2, ptr @seed, align 8, !tbaa !25
  %3 = extractelement <2 x float> %.lcssa1, i64 0
  store float %3, ptr @zr, align 4, !tbaa !16
  %4 = extractelement <2 x float> %.lcssa1, i64 1
  store float %4, ptr @zi, align 4, !tbaa !16
  br label %22

5:                                                ; preds = %5, %0
  %6 = phi i64 [ 1, %0 ], [ %19, %5 ]
  %7 = phi i32 [ 5767, %0 ], [ %21, %5 ]
  %8 = mul nuw nsw i32 %7, 4855
  %9 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %6
  %10 = add nuw nsw i32 %8, 1731
  %11 = mul i32 %10, 4855
  %12 = add i32 %11, 1731
  %13 = insertelement <2 x i32> poison, i32 %10, i64 0
  %14 = insertelement <2 x i32> %13, i32 %12, i64 1
  %15 = and <2 x i32> %14, <i32 8191, i32 8191>
  %16 = sitofp <2 x i32> %15 to <2 x float>
  %17 = fmul <2 x float> %16, <float 0x3F20000000000000, float 0x3F20000000000000>
  %18 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> <float 2.000000e+01, float 2.000000e+01>, <2 x float> <float -1.000000e+01, float -1.000000e+01>)
  store <2 x float> %18, ptr %9, align 8, !tbaa !16
  %19 = add nuw nsw i64 %6, 1
  %20 = icmp eq i64 %19, 257
  %21 = extractelement <2 x i32> %15, i64 1
  br i1 %20, label %1, label %5, !llvm.loop !27

22:                                               ; preds = %22, %1
  %23 = phi i32 [ 1, %1 ], [ %24, %22 ]
  tail call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02) #6
  %24 = add nuw nsw i32 %23, 1
  %25 = icmp eq i32 %24, 21
  br i1 %25, label %26, label %22, !llvm.loop !28

26:                                               ; preds = %22
  tail call void @Printcomplex(ptr noundef nonnull @z, i32 noundef 1, i32 noundef 256, i32 noundef 17) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nofree nounwind optsize uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %3, %1 ]
  tail call void @Oscar() #6
  %3 = add nuw nsw i32 %2, 1
  %4 = icmp eq i32 %3, 10
  br i1 %4, label %5, label %1, !llvm.loop !29

5:                                                ; preds = %1
  ret i32 0
}

attributes #0 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !9, i64 0}
!8 = !{!"complex", !9, i64 0, !9, i64 4}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!8, !9, i64 4}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!9, !9, i64 0}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = !{!26, !26, i64 0}
!26 = !{!"long", !10, i64 0}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
