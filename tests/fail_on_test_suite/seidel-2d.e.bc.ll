; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Polybench/stencils/seidel-2d/seidel-2d.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define internal ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = sext i32 %1 to i64
  %5 = mul i64 %4, %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store ptr null, ptr %3, align 8, !tbaa !7
  %6 = call i32 @posix_memalign(ptr noundef nonnull %3, i64 noundef 32, i64 noundef %5) #10
  %7 = load ptr, ptr %3, align 8, !tbaa !7
  %8 = icmp eq ptr %7, null
  %9 = icmp ne i32 %6, 0
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load ptr, ptr @stderr, align 8, !tbaa !7
  %13 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %12) #11
  call void @exit(i32 noundef 1) #12
  unreachable

14:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret ptr %7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #13
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #13
  br label %5

5:                                                ; preds = %23, %2
  %6 = phi i64 [ 0, %2 ], [ %24, %23 ]
  %7 = trunc i64 %6 to i32
  %8 = sitofp i32 %7 to double
  %9 = insertelement <2 x double> poison, double %8, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi i64 [ 0, %5 ], [ %20, %11 ]
  %13 = phi <2 x i32> [ <i32 0, i32 1>, %5 ], [ %21, %11 ]
  %14 = add <2 x i32> %13, <i32 2, i32 2>
  %15 = sitofp <2 x i32> %14 to <2 x double>
  %16 = fmul <2 x double> %10, %15
  %17 = fadd <2 x double> %16, <double 2.000000e+00, double 2.000000e+00>
  %18 = fdiv <2 x double> %17, <double 1.000000e+03, double 1.000000e+03>
  %19 = getelementptr inbounds [1000 x double], ptr %3, i64 %6, i64 %12
  store <2 x double> %18, ptr %19, align 8, !tbaa !11
  %20 = add nuw i64 %12, 2
  %21 = add <2 x i32> %13, <i32 2, i32 2>
  %22 = icmp eq i64 %20, 1000
  br i1 %22, label %23, label %11, !llvm.loop !13

23:                                               ; preds = %11
  %24 = add nuw nsw i64 %6, 1
  %25 = icmp eq i64 %24, 1000
  br i1 %25, label %26, label %5, !llvm.loop !17

26:                                               ; preds = %23
  tail call fastcc void @kernel_seidel_2d(ptr noundef nonnull %3) #13
  br label %27

27:                                               ; preds = %45, %26
  %28 = phi i64 [ 0, %26 ], [ %46, %45 ]
  %29 = trunc i64 %28 to i32
  %30 = sitofp i32 %29 to double
  %31 = insertelement <2 x double> poison, double %30, i64 0
  %32 = shufflevector <2 x double> %31, <2 x double> poison, <2 x i32> zeroinitializer
  br label %33

33:                                               ; preds = %33, %27
  %34 = phi i64 [ 0, %27 ], [ %42, %33 ]
  %35 = phi <2 x i32> [ <i32 0, i32 1>, %27 ], [ %43, %33 ]
  %36 = add <2 x i32> %35, <i32 2, i32 2>
  %37 = sitofp <2 x i32> %36 to <2 x double>
  %38 = fmul <2 x double> %32, %37
  %39 = fadd <2 x double> %38, <double 2.000000e+00, double 2.000000e+00>
  %40 = fdiv <2 x double> %39, <double 1.000000e+03, double 1.000000e+03>
  %41 = getelementptr inbounds [1000 x double], ptr %4, i64 %28, i64 %34
  store <2 x double> %40, ptr %41, align 8, !tbaa !11
  %42 = add nuw i64 %34, 2
  %43 = add <2 x i32> %35, <i32 2, i32 2>
  %44 = icmp eq i64 %42, 1000
  br i1 %44, label %45, label %33, !llvm.loop !18

45:                                               ; preds = %33
  %46 = add nuw nsw i64 %28, 1
  %47 = icmp eq i64 %46, 1000
  br i1 %47, label %48, label %27, !llvm.loop !17

48:                                               ; preds = %45
  tail call fastcc void @kernel_seidel_2d(ptr noundef nonnull %4) #13
  br label %49

49:                                               ; preds = %68, %48
  %50 = phi i64 [ 0, %48 ], [ %69, %68 ]
  br label %51

51:                                               ; preds = %65, %49
  %52 = phi i64 [ 0, %49 ], [ %66, %65 ]
  %53 = getelementptr inbounds [1000 x double], ptr %3, i64 %50, i64 %52
  %54 = load double, ptr %53, align 8, !tbaa !11
  %55 = getelementptr inbounds [1000 x double], ptr %4, i64 %50, i64 %52
  %56 = load double, ptr %55, align 8, !tbaa !11
  %57 = fsub double %54, %56
  %58 = tail call double @llvm.fabs.f64(double %57)
  %59 = fcmp ule double %58, 1.000000e-05
  br i1 %59, label %65, label %60

60:                                               ; preds = %51
  %.lcssa6 = phi i64 [ %50, %51 ]
  %.lcssa4 = phi i64 [ %52, %51 ]
  %.lcssa2 = phi double [ %54, %51 ]
  %.lcssa = phi double [ %56, %51 ]
  %61 = trunc i64 %.lcssa6 to i32
  %62 = trunc i64 %.lcssa4 to i32
  %63 = load ptr, ptr @stderr, align 8, !tbaa !7
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.2, i32 noundef %61, i32 noundef %62, double noundef %.lcssa2, i32 noundef %61, i32 noundef %62, double noundef %.lcssa, double noundef 1.000000e-05) #14
  br label %136

65:                                               ; preds = %51
  %66 = add nuw nsw i64 %52, 1
  %67 = icmp eq i64 %66, 1000
  br i1 %67, label %68, label %51, !llvm.loop !19

68:                                               ; preds = %65
  %69 = add nuw nsw i64 %50, 1
  %70 = icmp eq i64 %69, 1000
  br i1 %70, label %71, label %49, !llvm.loop !20

71:                                               ; preds = %68
  %72 = tail call noalias dereferenceable_or_null(16001) ptr @malloc(i64 noundef 16001) #15
  %73 = getelementptr inbounds i8, ptr %72, i64 16000
  store i8 0, ptr %73, align 1, !tbaa !21
  br label %74

74:                                               ; preds = %130, %71
  %75 = phi i64 [ 0, %71 ], [ %133, %130 ]
  br label %76

76:                                               ; preds = %76, %74
  %77 = phi i64 [ 0, %74 ], [ %128, %76 ]
  %78 = getelementptr inbounds [1000 x double], ptr %4, i64 %75, i64 %77
  %79 = load i64, ptr %78, align 8, !tbaa !11
  %80 = shl nuw nsw i64 %77, 4
  %81 = trunc i64 %79 to i8
  %82 = and i8 %81, 15
  %83 = or i8 %82, 48
  %84 = getelementptr inbounds i8, ptr %72, i64 %80
  store i8 %83, ptr %84, align 1, !tbaa !21
  %85 = getelementptr inbounds i8, ptr %84, i64 1
  store i8 %83, ptr %85, align 1, !tbaa !21
  %86 = lshr i64 %79, 8
  %87 = trunc i64 %86 to i8
  %88 = and i8 %87, 15
  %89 = or i8 %88, 48
  %90 = getelementptr inbounds i8, ptr %84, i64 2
  store i8 %89, ptr %90, align 1, !tbaa !21
  %91 = getelementptr inbounds i8, ptr %84, i64 3
  store i8 %89, ptr %91, align 1, !tbaa !21
  %92 = lshr i64 %79, 16
  %93 = trunc i64 %92 to i8
  %94 = and i8 %93, 15
  %95 = or i8 %94, 48
  %96 = getelementptr inbounds i8, ptr %84, i64 4
  store i8 %95, ptr %96, align 1, !tbaa !21
  %97 = getelementptr inbounds i8, ptr %84, i64 5
  store i8 %95, ptr %97, align 1, !tbaa !21
  %98 = lshr i64 %79, 24
  %99 = trunc i64 %98 to i8
  %100 = and i8 %99, 15
  %101 = or i8 %100, 48
  %102 = getelementptr inbounds i8, ptr %84, i64 6
  store i8 %101, ptr %102, align 1, !tbaa !21
  %103 = getelementptr inbounds i8, ptr %84, i64 7
  store i8 %101, ptr %103, align 1, !tbaa !21
  %104 = lshr i64 %79, 32
  %105 = trunc i64 %104 to i8
  %106 = and i8 %105, 15
  %107 = or i8 %106, 48
  %108 = getelementptr inbounds i8, ptr %84, i64 8
  store i8 %107, ptr %108, align 1, !tbaa !21
  %109 = getelementptr inbounds i8, ptr %84, i64 9
  store i8 %107, ptr %109, align 1, !tbaa !21
  %110 = lshr i64 %79, 40
  %111 = trunc i64 %110 to i8
  %112 = and i8 %111, 15
  %113 = or i8 %112, 48
  %114 = getelementptr inbounds i8, ptr %84, i64 10
  store i8 %113, ptr %114, align 1, !tbaa !21
  %115 = getelementptr inbounds i8, ptr %84, i64 11
  store i8 %113, ptr %115, align 1, !tbaa !21
  %116 = lshr i64 %79, 48
  %117 = trunc i64 %116 to i8
  %118 = and i8 %117, 15
  %119 = or i8 %118, 48
  %120 = getelementptr inbounds i8, ptr %84, i64 12
  store i8 %119, ptr %120, align 1, !tbaa !21
  %121 = getelementptr inbounds i8, ptr %84, i64 13
  store i8 %119, ptr %121, align 1, !tbaa !21
  %122 = lshr i64 %79, 56
  %123 = trunc i64 %122 to i8
  %124 = and i8 %123, 15
  %125 = or i8 %124, 48
  %126 = getelementptr inbounds i8, ptr %84, i64 14
  store i8 %125, ptr %126, align 1, !tbaa !21
  %127 = getelementptr inbounds i8, ptr %84, i64 15
  store i8 %125, ptr %127, align 1, !tbaa !21
  %128 = add nuw nsw i64 %77, 1
  %129 = icmp eq i64 %128, 1000
  br i1 %129, label %130, label %76, !llvm.loop !22

130:                                              ; preds = %76
  %131 = load ptr, ptr @stderr, align 8, !tbaa !7
  %132 = tail call i32 @fputs(ptr noundef nonnull %72, ptr noundef %131) #14
  %133 = add nuw nsw i64 %75, 1
  %134 = icmp eq i64 %133, 1000
  br i1 %134, label %135, label %74, !llvm.loop !23

135:                                              ; preds = %130
  tail call void @free(ptr noundef nonnull %72) #10
  tail call void @free(ptr noundef %3) #10
  tail call void @free(ptr noundef nonnull %4) #10
  br label %136

136:                                              ; preds = %135, %60
  %137 = phi i32 [ 0, %135 ], [ 1, %60 ]
  ret i32 %137
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_seidel_2d(ptr nocapture noundef %0) unnamed_addr #5 {
  br label %2

2:                                                ; preds = %48, %1
  %3 = phi i32 [ 0, %1 ], [ %49, %48 ]
  %4 = load double, ptr %0, align 8, !tbaa !11
  br label %5

5:                                                ; preds = %46, %2
  %6 = phi double [ %4, %2 ], [ %13, %46 ]
  %7 = phi i64 [ 1, %2 ], [ %9, %46 ]
  %8 = add nsw i64 %7, -1
  %9 = add nuw nsw i64 %7, 1
  %10 = getelementptr inbounds [1000 x double], ptr %0, i64 %8, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !11
  %12 = getelementptr inbounds [1000 x double], ptr %0, i64 %7, i64 0
  %13 = load double, ptr %12, align 8, !tbaa !11
  %14 = getelementptr inbounds [1000 x double], ptr %0, i64 %7, i64 1
  %15 = load double, ptr %14, align 8, !tbaa !11
  %16 = getelementptr inbounds [1000 x double], ptr %0, i64 %9, i64 0
  %17 = load double, ptr %16, align 8, !tbaa !11
  %18 = getelementptr inbounds [1000 x double], ptr %0, i64 %9, i64 1
  %19 = load double, ptr %18, align 8, !tbaa !11
  br label %20

20:                                               ; preds = %20, %5
  %21 = phi double [ %19, %5 ], [ %42, %20 ]
  %22 = phi double [ %17, %5 ], [ %21, %20 ]
  %23 = phi double [ %15, %5 ], [ %37, %20 ]
  %24 = phi double [ %13, %5 ], [ %44, %20 ]
  %25 = phi double [ %11, %5 ], [ %31, %20 ]
  %26 = phi double [ %6, %5 ], [ %25, %20 ]
  %27 = phi i64 [ 1, %5 ], [ %29, %20 ]
  %28 = fadd double %26, %25
  %29 = add nuw nsw i64 %27, 1
  %30 = getelementptr inbounds [1000 x double], ptr %0, i64 %8, i64 %29
  %31 = load double, ptr %30, align 8, !tbaa !11
  %32 = fadd double %28, %31
  %33 = fadd double %32, %24
  %34 = getelementptr inbounds [1000 x double], ptr %0, i64 %7, i64 %27
  %35 = fadd double %33, %23
  %36 = getelementptr inbounds [1000 x double], ptr %0, i64 %7, i64 %29
  %37 = load double, ptr %36, align 8, !tbaa !11
  %38 = fadd double %35, %37
  %39 = fadd double %38, %22
  %40 = fadd double %39, %21
  %41 = getelementptr inbounds [1000 x double], ptr %0, i64 %9, i64 %29
  %42 = load double, ptr %41, align 8, !tbaa !11
  %43 = fadd double %40, %42
  %44 = fdiv double %43, 9.000000e+00
  store double %44, ptr %34, align 8, !tbaa !11
  %45 = icmp eq i64 %29, 999
  br i1 %45, label %46, label %20, !llvm.loop !24

46:                                               ; preds = %20
  %47 = icmp eq i64 %9, 999
  br i1 %47, label %48, label %5, !llvm.loop !25

48:                                               ; preds = %46
  %49 = add nuw nsw i32 %3, 1
  %50 = icmp eq i32 %49, 20
  br i1 %50, label %51, label %2, !llvm.loop !26

51:                                               ; preds = %48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { cold }
attributes #12 = { noreturn nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { cold optsize }
attributes #15 = { nounwind optsize allocsize(0) }

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
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = distinct !{!13, !14, !15, !16}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14, !15, !16}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = !{!9, !9, i64 0}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
