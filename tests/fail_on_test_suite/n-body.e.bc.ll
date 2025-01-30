; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/BenchmarkGame/n-body.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.planet = type { double, double, double, double, double, double, double }

@bodies = internal global [5 x %struct.planet] [%struct.planet { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0x4043BD3CC9BE45DE }, %struct.planet { double 0x40135DA0343CD92C, double 0xBFF290ABC01FDB7C, double 0xBFBA86F96C25EBF0, double 0x3FE367069B93CCBC, double 0x40067EF2F57D949B, double 0xBF99D2D79A5A0715, double 0x3FA34C95D9AB33D8 }, %struct.planet { double 0x4020AFCDC332CA67, double 0x40107FCB31DE01B0, double 0xBFD9D353E1EB467C, double 0xBFF02C21B8879442, double 0x3FFD35E9BF1F8F13, double 0x3F813C485F1123B4, double 0x3F871D490D07C637 }, %struct.planet { double 0x4029C9EACEA7D9CF, double 0xC02E38E8D626667E, double 0xBFCC9557BE257DA0, double 0x3FF1531CA9911BEF, double 0x3FEBCC7F3E54BBC5, double 0xBF862F6BFAF23E7C, double 0x3F5C3DD29CF41EB3 }, %struct.planet { double 0x402EC267A905572A, double 0xC039EB5833C8A220, double 0x3FC6F1F393ABE540, double 0x3FEF54B61659BC4A, double 0x3FE307C631C4FBA3, double 0xBFA1CB88587665F6, double 0x3F60A8F3531799AC }], align 16
@.str = private unnamed_addr constant [6 x i8] c"%.9f\0A\00", align 1

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @advance(i32 noundef %0, ptr nocapture noundef %1, double noundef %2) #0 {
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %87

5:                                                ; preds = %3
  %6 = zext i32 %0 to i64
  %7 = zext i32 %0 to i64
  br label %16

8:                                                ; preds = %32, %16
  %9 = add nuw nsw i64 %18, 1
  %10 = icmp eq i64 %19, %7
  br i1 %10, label %11, label %16, !llvm.loop !7

11:                                               ; preds = %8
  br i1 %4, label %12, label %87

12:                                               ; preds = %11
  %13 = zext i32 %0 to i64
  %14 = insertelement <2 x double> poison, double %2, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  br label %73

16:                                               ; preds = %8, %5
  %17 = phi i64 [ 0, %5 ], [ %19, %8 ]
  %18 = phi i64 [ 1, %5 ], [ %9, %8 ]
  %19 = add nuw nsw i64 %17, 1
  %20 = icmp ult i64 %19, %6
  br i1 %20, label %21, label %8

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.planet, ptr %1, i64 %17
  %23 = load <2 x double>, ptr %22, align 8, !tbaa !9
  %24 = getelementptr inbounds %struct.planet, ptr %1, i64 %17, i32 2
  %25 = load double, ptr %24, align 8, !tbaa !13
  %26 = getelementptr inbounds %struct.planet, ptr %1, i64 %17, i32 3
  %27 = getelementptr inbounds %struct.planet, ptr %1, i64 %17, i32 5
  %28 = getelementptr inbounds %struct.planet, ptr %1, i64 %17, i32 6
  %29 = load double, ptr %28, align 8, !tbaa !15
  %30 = insertelement <2 x double> poison, double %29, i64 0
  %31 = shufflevector <2 x double> %30, <2 x double> poison, <2 x i32> zeroinitializer
  br label %32

32:                                               ; preds = %32, %21
  %33 = phi i64 [ %18, %21 ], [ %71, %32 ]
  %34 = getelementptr inbounds %struct.planet, ptr %1, i64 %33
  %35 = getelementptr inbounds %struct.planet, ptr %1, i64 %33, i32 2
  %36 = load double, ptr %35, align 8, !tbaa !13
  %37 = fsub double %25, %36
  %38 = getelementptr inbounds %struct.planet, ptr %1, i64 %33, i32 6
  %39 = load double, ptr %38, align 8, !tbaa !15
  %40 = load double, ptr %27, align 8, !tbaa !16
  %41 = fneg double %37
  %42 = fmul double %39, %41
  %43 = getelementptr inbounds %struct.planet, ptr %1, i64 %33, i32 3
  %44 = load <2 x double>, ptr %34, align 8, !tbaa !9
  %45 = fsub <2 x double> %23, %44
  %46 = fmul <2 x double> %45, %45
  %47 = extractelement <2 x double> %46, i64 1
  %48 = extractelement <2 x double> %45, i64 0
  %49 = tail call double @llvm.fmuladd.f64(double %48, double %48, double %47)
  %50 = tail call double @llvm.fmuladd.f64(double %37, double %37, double %49)
  %51 = tail call double @llvm.sqrt.f64(double %50)
  %52 = fmul double %51, %51
  %53 = fmul double %51, %52
  %54 = fdiv double %2, %53
  %55 = load <2 x double>, ptr %26, align 8, !tbaa !9
  %56 = fneg <2 x double> %45
  %57 = insertelement <2 x double> poison, double %39, i64 0
  %58 = shufflevector <2 x double> %57, <2 x double> poison, <2 x i32> zeroinitializer
  %59 = fmul <2 x double> %58, %56
  %60 = insertelement <2 x double> poison, double %54, i64 0
  %61 = shufflevector <2 x double> %60, <2 x double> poison, <2 x i32> zeroinitializer
  %62 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %59, <2 x double> %61, <2 x double> %55)
  store <2 x double> %62, ptr %26, align 8, !tbaa !9
  %63 = tail call double @llvm.fmuladd.f64(double %42, double %54, double %40)
  store double %63, ptr %27, align 8, !tbaa !16
  %64 = fmul <2 x double> %45, %31
  %65 = load <2 x double>, ptr %43, align 8, !tbaa !9
  %66 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %64, <2 x double> %61, <2 x double> %65)
  store <2 x double> %66, ptr %43, align 8, !tbaa !9
  %67 = fmul double %37, %29
  %68 = getelementptr inbounds %struct.planet, ptr %1, i64 %33, i32 5
  %69 = load double, ptr %68, align 8, !tbaa !16
  %70 = tail call double @llvm.fmuladd.f64(double %67, double %54, double %69)
  store double %70, ptr %68, align 8, !tbaa !16
  %71 = add nuw nsw i64 %33, 1
  %72 = icmp eq i64 %71, %7
  br i1 %72, label %8, label %32, !llvm.loop !17

73:                                               ; preds = %73, %12
  %74 = phi i64 [ 0, %12 ], [ %85, %73 ]
  %75 = getelementptr inbounds %struct.planet, ptr %1, i64 %74
  %76 = getelementptr inbounds %struct.planet, ptr %1, i64 %74, i32 3
  %77 = load <2 x double>, ptr %76, align 8, !tbaa !9
  %78 = load <2 x double>, ptr %75, align 8, !tbaa !9
  %79 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %77, <2 x double> %78)
  store <2 x double> %79, ptr %75, align 8, !tbaa !9
  %80 = getelementptr inbounds %struct.planet, ptr %1, i64 %74, i32 5
  %81 = load double, ptr %80, align 8, !tbaa !16
  %82 = getelementptr inbounds %struct.planet, ptr %1, i64 %74, i32 2
  %83 = load double, ptr %82, align 8, !tbaa !13
  %84 = tail call double @llvm.fmuladd.f64(double %2, double %81, double %83)
  store double %84, ptr %82, align 8, !tbaa !13
  %85 = add nuw nsw i64 %74, 1
  %86 = icmp eq i64 %85, %13
  br i1 %86, label %87, label %73, !llvm.loop !18

87:                                               ; preds = %73, %11, %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

; Function Attrs: nofree nosync nounwind optsize memory(argmem: read) uwtable
define internal double @energy(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %60

4:                                                ; preds = %2
  %5 = zext i32 %0 to i64
  %6 = zext i32 %0 to i64
  br label %11

7:                                                ; preds = %37, %11
  %8 = phi double [ %27, %11 ], [ %57, %37 ]
  %9 = add nuw nsw i64 %13, 1
  %10 = icmp eq i64 %28, %6
  br i1 %10, label %60, label %11, !llvm.loop !19

11:                                               ; preds = %7, %4
  %12 = phi i64 [ 0, %4 ], [ %28, %7 ]
  %13 = phi i64 [ 1, %4 ], [ %9, %7 ]
  %14 = phi double [ 0.000000e+00, %4 ], [ %8, %7 ]
  %15 = getelementptr inbounds %struct.planet, ptr %1, i64 %12, i32 6
  %16 = load double, ptr %15, align 8, !tbaa !15
  %17 = fmul double %16, 5.000000e-01
  %18 = getelementptr inbounds %struct.planet, ptr %1, i64 %12, i32 3
  %19 = load double, ptr %18, align 8, !tbaa !20
  %20 = getelementptr inbounds %struct.planet, ptr %1, i64 %12, i32 4
  %21 = load double, ptr %20, align 8, !tbaa !21
  %22 = fmul double %21, %21
  %23 = tail call double @llvm.fmuladd.f64(double %19, double %19, double %22)
  %24 = getelementptr inbounds %struct.planet, ptr %1, i64 %12, i32 5
  %25 = load double, ptr %24, align 8, !tbaa !16
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %25, double %23)
  %27 = tail call double @llvm.fmuladd.f64(double %17, double %26, double %14)
  %28 = add nuw nsw i64 %12, 1
  %29 = icmp ult i64 %28, %5
  br i1 %29, label %30, label %7

30:                                               ; preds = %11
  %31 = getelementptr inbounds %struct.planet, ptr %1, i64 %12
  %32 = load double, ptr %31, align 8, !tbaa !22
  %33 = getelementptr inbounds %struct.planet, ptr %1, i64 %12, i32 1
  %34 = load double, ptr %33, align 8, !tbaa !23
  %35 = getelementptr inbounds %struct.planet, ptr %1, i64 %12, i32 2
  %36 = load double, ptr %35, align 8, !tbaa !13
  br label %37

37:                                               ; preds = %37, %30
  %38 = phi i64 [ %13, %30 ], [ %58, %37 ]
  %39 = phi double [ %27, %30 ], [ %57, %37 ]
  %40 = getelementptr inbounds %struct.planet, ptr %1, i64 %38
  %41 = load double, ptr %40, align 8, !tbaa !22
  %42 = fsub double %32, %41
  %43 = getelementptr inbounds %struct.planet, ptr %1, i64 %38, i32 1
  %44 = load double, ptr %43, align 8, !tbaa !23
  %45 = fsub double %34, %44
  %46 = getelementptr inbounds %struct.planet, ptr %1, i64 %38, i32 2
  %47 = load double, ptr %46, align 8, !tbaa !13
  %48 = fsub double %36, %47
  %49 = fmul double %45, %45
  %50 = tail call double @llvm.fmuladd.f64(double %42, double %42, double %49)
  %51 = tail call double @llvm.fmuladd.f64(double %48, double %48, double %50)
  %52 = tail call double @llvm.sqrt.f64(double %51)
  %53 = getelementptr inbounds %struct.planet, ptr %1, i64 %38, i32 6
  %54 = load double, ptr %53, align 8, !tbaa !15
  %55 = fmul double %16, %54
  %56 = fdiv double %55, %52
  %57 = fsub double %39, %56
  %58 = add nuw nsw i64 %38, 1
  %59 = icmp eq i64 %58, %6
  br i1 %59, label %7, label %37, !llvm.loop !24

60:                                               ; preds = %7, %2
  %61 = phi double [ 0.000000e+00, %2 ], [ %8, %7 ]
  ret double %61
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @offset_momentum(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %22

4:                                                ; preds = %2
  %5 = zext i32 %0 to i64
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ 0, %4 ], [ %20, %6 ]
  %8 = phi double [ 0.000000e+00, %4 ], [ %19, %6 ]
  %9 = phi <2 x double> [ zeroinitializer, %4 ], [ %16, %6 ]
  %10 = getelementptr inbounds %struct.planet, ptr %1, i64 %7, i32 3
  %11 = getelementptr inbounds %struct.planet, ptr %1, i64 %7, i32 6
  %12 = load double, ptr %11, align 8, !tbaa !15
  %13 = load <2 x double>, ptr %10, align 8, !tbaa !9
  %14 = insertelement <2 x double> poison, double %12, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %16 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %15, <2 x double> %9)
  %17 = getelementptr inbounds %struct.planet, ptr %1, i64 %7, i32 5
  %18 = load double, ptr %17, align 8, !tbaa !16
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %12, double %8)
  %20 = add nuw nsw i64 %7, 1
  %21 = icmp eq i64 %20, %5
  br i1 %21, label %22, label %6, !llvm.loop !25

22:                                               ; preds = %6, %2
  %23 = phi double [ 0.000000e+00, %2 ], [ %19, %6 ]
  %24 = phi <2 x double> [ zeroinitializer, %2 ], [ %16, %6 ]
  %25 = fdiv <2 x double> %24, <double 0xC043BD3CC9BE45DE, double 0xC043BD3CC9BE45DE>
  %26 = getelementptr inbounds %struct.planet, ptr %1, i64 0, i32 3
  store <2 x double> %25, ptr %26, align 8, !tbaa !9
  %27 = fdiv double %23, 0xC043BD3CC9BE45DE
  %28 = getelementptr inbounds %struct.planet, ptr %1, i64 0, i32 5
  store double %27, ptr %28, align 8, !tbaa !16
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #3 {
  tail call void @offset_momentum(i32 noundef 5, ptr noundef nonnull @bodies) #5
  %3 = tail call double @energy(i32 noundef 5, ptr noundef nonnull @bodies) #5
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %3) #5
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ 1, %2 ], [ %7, %5 ]
  tail call void @advance(i32 noundef 5, ptr noundef nonnull @bodies, double noundef 1.000000e-02) #5
  %7 = add nuw nsw i32 %6, 1
  %8 = icmp eq i32 %7, 5000001
  br i1 %8, label %9, label %5, !llvm.loop !26

9:                                                ; preds = %5
  %10 = tail call double @energy(i32 noundef 5, ptr noundef nonnull @bodies) #5
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %10) #5
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

attributes #0 = { nofree nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !10, i64 16}
!14 = !{!"planet", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!15 = !{!14, !10, i64 48}
!16 = !{!14, !10, i64 40}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = !{!14, !10, i64 24}
!21 = !{!14, !10, i64 32}
!22 = !{!14, !10, i64 0}
!23 = !{!14, !10, i64 8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
