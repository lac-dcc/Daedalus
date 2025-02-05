; ModuleID = 'n-body.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.planet = type { double, double, double, double, double, double, double }

@bodies = internal unnamed_addr global [5 x %struct.planet] [%struct.planet { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0x4043BD3CC9BE45DE }, %struct.planet { double 0x40135DA0343CD92C, double 0xBFF290ABC01FDB7C, double 0xBFBA86F96C25EBF0, double 0x3FE367069B93CCBC, double 0x40067EF2F57D949B, double 0xBF99D2D79A5A0715, double 0x3FA34C95D9AB33D8 }, %struct.planet { double 0x4020AFCDC332CA67, double 0x40107FCB31DE01B0, double 0xBFD9D353E1EB467C, double 0xBFF02C21B8879442, double 0x3FFD35E9BF1F8F13, double 0x3F813C485F1123B4, double 0x3F871D490D07C637 }, %struct.planet { double 0x4029C9EACEA7D9CF, double 0xC02E38E8D626667E, double 0xBFCC9557BE257DA0, double 0x3FF1531CA9911BEF, double 0x3FEBCC7F3E54BBC5, double 0xBF862F6BFAF23E7C, double 0x3F5C3DD29CF41EB3 }, %struct.planet { double 0x402EC267A905572A, double 0xC039EB5833C8A220, double 0x3FC6F1F393ABE540, double 0x3FEF54B61659BC4A, double 0x3FE307C631C4FBA3, double 0xBFA1CB88587665F6, double 0x3F60A8F3531799AC }], align 16
@.str = private unnamed_addr constant [6 x i8] c"%.9f\0A\00", align 1

; Function Attrs: nofree nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %17, %3 ]
  %5 = phi double [ 0.000000e+00, %2 ], [ %16, %3 ]
  %6 = phi <2 x double> [ zeroinitializer, %2 ], [ %13, %3 ]
  %7 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %4, i32 3
  %8 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %4, i32 6
  %9 = load double, ptr %8, align 8, !tbaa !7
  %10 = load <2 x double>, ptr %7, align 8, !tbaa !12
  %11 = insertelement <2 x double> poison, double %9, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> %12, <2 x double> %6)
  %14 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %4, i32 5
  %15 = load double, ptr %14, align 8, !tbaa !13
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %9, double %5)
  %17 = add nuw nsw i64 %4, 1
  %18 = icmp eq i64 %17, 5
  br i1 %18, label %19, label %3, !llvm.loop !14

19:                                               ; preds = %3
  %.lcssa1 = phi <2 x double> [ %13, %3 ]
  %.lcssa = phi double [ %16, %3 ]
  %20 = fdiv <2 x double> %.lcssa1, <double 0xC043BD3CC9BE45DE, double 0xC043BD3CC9BE45DE>
  store <2 x double> %20, ptr getelementptr inbounds ([5 x %struct.planet], ptr @bodies, i64 0, i64 0, i32 3), align 8, !tbaa !12
  %21 = fdiv double %.lcssa, 0xC043BD3CC9BE45DE
  store double %21, ptr getelementptr inbounds ([5 x %struct.planet], ptr @bodies, i64 0, i64 0, i32 5), align 8, !tbaa !13
  %22 = tail call fastcc double @energy() #4
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %22) #4
  br label %24

24:                                               ; preds = %100, %19
  %25 = phi i32 [ 1, %19 ], [ %101, %100 ]
  br label %29

26:                                               ; preds = %45, %29
  %27 = add nuw nsw i64 %31, 1
  %28 = icmp eq i64 %32, 5
  br i1 %28, label %86, label %29, !llvm.loop !16

29:                                               ; preds = %26, %24
  %30 = phi i64 [ 0, %24 ], [ %32, %26 ]
  %31 = phi i64 [ 1, %24 ], [ %27, %26 ]
  %32 = add nuw nsw i64 %30, 1
  %33 = icmp ult i64 %30, 4
  br i1 %33, label %34, label %26

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %30
  %36 = load <2 x double>, ptr %35, align 8, !tbaa !12
  %37 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %30, i32 2
  %38 = load double, ptr %37, align 8, !tbaa !17
  %39 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %30, i32 3
  %40 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %30, i32 5
  %41 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %30, i32 6
  %42 = load double, ptr %41, align 8, !tbaa !7
  %43 = insertelement <2 x double> poison, double %42, i64 0
  %44 = shufflevector <2 x double> %43, <2 x double> poison, <2 x i32> zeroinitializer
  br label %45

45:                                               ; preds = %45, %34
  %46 = phi i64 [ %31, %34 ], [ %84, %45 ]
  %47 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %46
  %48 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %46, i32 2
  %49 = load double, ptr %48, align 8, !tbaa !17
  %50 = fsub double %38, %49
  %51 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %46, i32 6
  %52 = load double, ptr %51, align 8, !tbaa !7
  %53 = load double, ptr %40, align 8, !tbaa !13
  %54 = fneg double %50
  %55 = fmul double %52, %54
  %56 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %46, i32 3
  %57 = load <2 x double>, ptr %47, align 8, !tbaa !12
  %58 = fsub <2 x double> %36, %57
  %59 = fmul <2 x double> %58, %58
  %60 = extractelement <2 x double> %59, i64 1
  %61 = extractelement <2 x double> %58, i64 0
  %62 = tail call double @llvm.fmuladd.f64(double %61, double %61, double %60)
  %63 = tail call double @llvm.fmuladd.f64(double %50, double %50, double %62)
  %64 = tail call double @llvm.sqrt.f64(double %63)
  %65 = fmul double %64, %64
  %66 = fmul double %64, %65
  %67 = fdiv double 1.000000e-02, %66
  %68 = load <2 x double>, ptr %39, align 8, !tbaa !12
  %69 = fneg <2 x double> %58
  %70 = insertelement <2 x double> poison, double %52, i64 0
  %71 = shufflevector <2 x double> %70, <2 x double> poison, <2 x i32> zeroinitializer
  %72 = fmul <2 x double> %71, %69
  %73 = insertelement <2 x double> poison, double %67, i64 0
  %74 = shufflevector <2 x double> %73, <2 x double> poison, <2 x i32> zeroinitializer
  %75 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %72, <2 x double> %74, <2 x double> %68)
  store <2 x double> %75, ptr %39, align 8, !tbaa !12
  %76 = tail call double @llvm.fmuladd.f64(double %55, double %67, double %53)
  store double %76, ptr %40, align 8, !tbaa !13
  %77 = fmul <2 x double> %44, %58
  %78 = load <2 x double>, ptr %56, align 8, !tbaa !12
  %79 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %77, <2 x double> %74, <2 x double> %78)
  store <2 x double> %79, ptr %56, align 8, !tbaa !12
  %80 = fmul double %42, %50
  %81 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %46, i32 5
  %82 = load double, ptr %81, align 8, !tbaa !13
  %83 = tail call double @llvm.fmuladd.f64(double %80, double %67, double %82)
  store double %83, ptr %81, align 8, !tbaa !13
  %84 = add nuw nsw i64 %46, 1
  %85 = icmp eq i64 %84, 5
  br i1 %85, label %26, label %45, !llvm.loop !18

86:                                               ; preds = %86, %26
  %87 = phi i64 [ %98, %86 ], [ 0, %26 ]
  %88 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %87
  %89 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %87, i32 3
  %90 = load <2 x double>, ptr %89, align 8, !tbaa !12
  %91 = load <2 x double>, ptr %88, align 8, !tbaa !12
  %92 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %90, <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double> %91)
  store <2 x double> %92, ptr %88, align 8, !tbaa !12
  %93 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %87, i32 5
  %94 = load double, ptr %93, align 8, !tbaa !13
  %95 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %87, i32 2
  %96 = load double, ptr %95, align 8, !tbaa !17
  %97 = tail call double @llvm.fmuladd.f64(double %94, double 1.000000e-02, double %96)
  store double %97, ptr %95, align 8, !tbaa !17
  %98 = add nuw nsw i64 %87, 1
  %99 = icmp eq i64 %98, 5
  br i1 %99, label %100, label %86, !llvm.loop !19

100:                                              ; preds = %86
  %101 = add nuw nsw i32 %25, 1
  %102 = icmp eq i32 %101, 5000001
  br i1 %102, label %103, label %24, !llvm.loop !20

103:                                              ; preds = %100
  %104 = tail call fastcc double @energy() #4
  %105 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %104) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc double @energy() unnamed_addr #2 {
  br label %5

1:                                                ; preds = %31, %5
  %2 = phi double [ %21, %5 ], [ %51, %31 ]
  %3 = add nuw nsw i64 %7, 1
  %4 = icmp eq i64 %22, 5
  br i1 %4, label %54, label %5, !llvm.loop !21

5:                                                ; preds = %1, %0
  %6 = phi i64 [ 0, %0 ], [ %22, %1 ]
  %7 = phi i64 [ 1, %0 ], [ %3, %1 ]
  %8 = phi double [ 0.000000e+00, %0 ], [ %2, %1 ]
  %9 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %6, i32 6
  %10 = load double, ptr %9, align 8, !tbaa !7
  %11 = fmul double %10, 5.000000e-01
  %12 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %6, i32 3
  %13 = load double, ptr %12, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %6, i32 4
  %15 = load double, ptr %14, align 8, !tbaa !23
  %16 = fmul double %15, %15
  %17 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %16)
  %18 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %6, i32 5
  %19 = load double, ptr %18, align 8, !tbaa !13
  %20 = tail call double @llvm.fmuladd.f64(double %19, double %19, double %17)
  %21 = tail call double @llvm.fmuladd.f64(double %11, double %20, double %8)
  %22 = add nuw nsw i64 %6, 1
  %23 = icmp ult i64 %6, 4
  br i1 %23, label %24, label %1

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %6
  %26 = load double, ptr %25, align 8, !tbaa !24
  %27 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %6, i32 1
  %28 = load double, ptr %27, align 8, !tbaa !25
  %29 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %6, i32 2
  %30 = load double, ptr %29, align 8, !tbaa !17
  br label %31

31:                                               ; preds = %31, %24
  %32 = phi i64 [ %7, %24 ], [ %52, %31 ]
  %33 = phi double [ %21, %24 ], [ %51, %31 ]
  %34 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %32
  %35 = load double, ptr %34, align 8, !tbaa !24
  %36 = fsub double %26, %35
  %37 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %32, i32 1
  %38 = load double, ptr %37, align 8, !tbaa !25
  %39 = fsub double %28, %38
  %40 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %32, i32 2
  %41 = load double, ptr %40, align 8, !tbaa !17
  %42 = fsub double %30, %41
  %43 = fmul double %39, %39
  %44 = tail call double @llvm.fmuladd.f64(double %36, double %36, double %43)
  %45 = tail call double @llvm.fmuladd.f64(double %42, double %42, double %44)
  %46 = tail call double @llvm.sqrt.f64(double %45)
  %47 = getelementptr inbounds %struct.planet, ptr @bodies, i64 %32, i32 6
  %48 = load double, ptr %47, align 8, !tbaa !7
  %49 = fmul double %10, %48
  %50 = fdiv double %49, %46
  %51 = fsub double %33, %50
  %52 = add nuw nsw i64 %32, 1
  %53 = icmp eq i64 %52, 5
  br i1 %53, label %1, label %31, !llvm.loop !26

54:                                               ; preds = %1
  %.lcssa = phi double [ %2, %1 ]
  ret double %.lcssa
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

attributes #0 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !9, i64 48}
!8 = !{!"planet", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!9, !9, i64 0}
!13 = !{!8, !9, i64 40}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = !{!8, !9, i64 16}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = !{!8, !9, i64 24}
!23 = !{!8, !9, i64 32}
!24 = !{!8, !9, i64 0}
!25 = !{!8, !9, i64 8}
!26 = distinct !{!26, !15}
