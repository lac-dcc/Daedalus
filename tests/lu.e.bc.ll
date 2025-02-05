; ModuleID = 'lu.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call fastcc ptr @polybench_alloc_data() #9
  %4 = tail call fastcc ptr @polybench_alloc_data() #9
  br label %5

5:                                                ; preds = %23, %2
  %6 = phi i64 [ 0, %2 ], [ %7, %23 ]
  %7 = add nuw nsw i64 %6, 1
  %8 = trunc i64 %7 to i32
  %9 = sitofp i32 %8 to double
  %10 = insertelement <2 x double> poison, double %9, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  br label %12

12:                                               ; preds = %12, %5
  %13 = phi i64 [ 0, %5 ], [ %20, %12 ]
  %14 = phi <2 x i32> [ <i32 0, i32 1>, %5 ], [ %21, %12 ]
  %15 = add <2 x i32> %14, <i32 1, i32 1>
  %16 = sitofp <2 x i32> %15 to <2 x double>
  %17 = fmul <2 x double> %11, %16
  %18 = fmul <2 x double> %17, <double 7.812500e-03, double 7.812500e-03>
  %19 = getelementptr inbounds [128 x double], ptr %3, i64 %6, i64 %13
  store <2 x double> %18, ptr %19, align 8, !tbaa !7
  %20 = add nuw nsw i64 %13, 2
  %21 = add <2 x i32> %14, <i32 2, i32 2>
  %22 = icmp eq i64 %20, 128
  br i1 %22, label %23, label %12, !llvm.loop !11

23:                                               ; preds = %12
  %24 = icmp eq i64 %7, 128
  br i1 %24, label %25, label %5, !llvm.loop !15

25:                                               ; preds = %23
  tail call fastcc void @kernel_lu(ptr noundef nonnull %3) #9
  br label %26

26:                                               ; preds = %44, %25
  %27 = phi i64 [ 0, %25 ], [ %28, %44 ]
  %28 = add nuw nsw i64 %27, 1
  %29 = trunc i64 %28 to i32
  %30 = sitofp i32 %29 to double
  %31 = insertelement <2 x double> poison, double %30, i64 0
  %32 = shufflevector <2 x double> %31, <2 x double> poison, <2 x i32> zeroinitializer
  br label %33

33:                                               ; preds = %33, %26
  %34 = phi i64 [ 0, %26 ], [ %41, %33 ]
  %35 = phi <2 x i32> [ <i32 0, i32 1>, %26 ], [ %42, %33 ]
  %36 = add <2 x i32> %35, <i32 1, i32 1>
  %37 = sitofp <2 x i32> %36 to <2 x double>
  %38 = fmul <2 x double> %32, %37
  %39 = fmul <2 x double> %38, <double 7.812500e-03, double 7.812500e-03>
  %40 = getelementptr inbounds [128 x double], ptr %4, i64 %27, i64 %34
  store <2 x double> %39, ptr %40, align 8, !tbaa !7
  %41 = add nuw nsw i64 %34, 2
  %42 = add <2 x i32> %35, <i32 2, i32 2>
  %43 = icmp eq i64 %41, 128
  br i1 %43, label %44, label %33, !llvm.loop !16

44:                                               ; preds = %33
  %45 = icmp eq i64 %28, 128
  br i1 %45, label %46, label %26, !llvm.loop !15

46:                                               ; preds = %44
  tail call fastcc void @kernel_lu(ptr noundef nonnull %4) #9
  br label %47

47:                                               ; preds = %66, %46
  %48 = phi i64 [ 0, %46 ], [ %67, %66 ]
  br label %49

49:                                               ; preds = %63, %47
  %50 = phi i64 [ 0, %47 ], [ %64, %63 ]
  %51 = getelementptr inbounds [128 x double], ptr %3, i64 %48, i64 %50
  %52 = load double, ptr %51, align 8, !tbaa !7
  %53 = getelementptr inbounds [128 x double], ptr %4, i64 %48, i64 %50
  %54 = load double, ptr %53, align 8, !tbaa !7
  %55 = fsub double %52, %54
  %56 = tail call double @llvm.fabs.f64(double %55)
  %57 = fcmp ule double %56, 1.000000e-05
  br i1 %57, label %63, label %58

58:                                               ; preds = %49
  %.lcssa6 = phi i64 [ %48, %49 ]
  %.lcssa4 = phi i64 [ %50, %49 ]
  %.lcssa2 = phi double [ %52, %49 ]
  %.lcssa = phi double [ %54, %49 ]
  %59 = trunc i64 %.lcssa6 to i32
  %60 = trunc i64 %.lcssa4 to i32
  %61 = load ptr, ptr @stderr, align 8, !tbaa !17
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.2, i32 noundef %59, i32 noundef %60, double noundef %.lcssa2, i32 noundef %59, i32 noundef %60, double noundef %.lcssa, double noundef 1.000000e-05) #10
  br label %134

63:                                               ; preds = %49
  %64 = add nuw nsw i64 %50, 1
  %65 = icmp eq i64 %64, 128
  br i1 %65, label %66, label %49, !llvm.loop !19

66:                                               ; preds = %63
  %67 = add nuw nsw i64 %48, 1
  %68 = icmp eq i64 %67, 128
  br i1 %68, label %69, label %47, !llvm.loop !20

69:                                               ; preds = %66
  %70 = tail call noalias dereferenceable_or_null(2049) ptr @malloc(i64 noundef 2049) #11
  %71 = getelementptr inbounds i8, ptr %70, i64 2048
  store i8 0, ptr %71, align 1, !tbaa !21
  br label %72

72:                                               ; preds = %128, %69
  %73 = phi i64 [ 0, %69 ], [ %131, %128 ]
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi i64 [ 0, %72 ], [ %126, %74 ]
  %76 = getelementptr inbounds [128 x double], ptr %4, i64 %73, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !7
  %78 = shl nuw nsw i64 %75, 4
  %79 = trunc i64 %77 to i8
  %80 = and i8 %79, 15
  %81 = or i8 %80, 48
  %82 = getelementptr inbounds i8, ptr %70, i64 %78
  store i8 %81, ptr %82, align 1, !tbaa !21
  %83 = getelementptr inbounds i8, ptr %82, i64 1
  store i8 %81, ptr %83, align 1, !tbaa !21
  %84 = lshr i64 %77, 8
  %85 = trunc i64 %84 to i8
  %86 = and i8 %85, 15
  %87 = or i8 %86, 48
  %88 = getelementptr inbounds i8, ptr %82, i64 2
  store i8 %87, ptr %88, align 1, !tbaa !21
  %89 = getelementptr inbounds i8, ptr %82, i64 3
  store i8 %87, ptr %89, align 1, !tbaa !21
  %90 = lshr i64 %77, 16
  %91 = trunc i64 %90 to i8
  %92 = and i8 %91, 15
  %93 = or i8 %92, 48
  %94 = getelementptr inbounds i8, ptr %82, i64 4
  store i8 %93, ptr %94, align 1, !tbaa !21
  %95 = getelementptr inbounds i8, ptr %82, i64 5
  store i8 %93, ptr %95, align 1, !tbaa !21
  %96 = lshr i64 %77, 24
  %97 = trunc i64 %96 to i8
  %98 = and i8 %97, 15
  %99 = or i8 %98, 48
  %100 = getelementptr inbounds i8, ptr %82, i64 6
  store i8 %99, ptr %100, align 1, !tbaa !21
  %101 = getelementptr inbounds i8, ptr %82, i64 7
  store i8 %99, ptr %101, align 1, !tbaa !21
  %102 = lshr i64 %77, 32
  %103 = trunc i64 %102 to i8
  %104 = and i8 %103, 15
  %105 = or i8 %104, 48
  %106 = getelementptr inbounds i8, ptr %82, i64 8
  store i8 %105, ptr %106, align 1, !tbaa !21
  %107 = getelementptr inbounds i8, ptr %82, i64 9
  store i8 %105, ptr %107, align 1, !tbaa !21
  %108 = lshr i64 %77, 40
  %109 = trunc i64 %108 to i8
  %110 = and i8 %109, 15
  %111 = or i8 %110, 48
  %112 = getelementptr inbounds i8, ptr %82, i64 10
  store i8 %111, ptr %112, align 1, !tbaa !21
  %113 = getelementptr inbounds i8, ptr %82, i64 11
  store i8 %111, ptr %113, align 1, !tbaa !21
  %114 = lshr i64 %77, 48
  %115 = trunc i64 %114 to i8
  %116 = and i8 %115, 15
  %117 = or i8 %116, 48
  %118 = getelementptr inbounds i8, ptr %82, i64 12
  store i8 %117, ptr %118, align 1, !tbaa !21
  %119 = getelementptr inbounds i8, ptr %82, i64 13
  store i8 %117, ptr %119, align 1, !tbaa !21
  %120 = lshr i64 %77, 56
  %121 = trunc i64 %120 to i8
  %122 = and i8 %121, 15
  %123 = or i8 %122, 48
  %124 = getelementptr inbounds i8, ptr %82, i64 14
  store i8 %123, ptr %124, align 1, !tbaa !21
  %125 = getelementptr inbounds i8, ptr %82, i64 15
  store i8 %123, ptr %125, align 1, !tbaa !21
  %126 = add nuw nsw i64 %75, 1
  %127 = icmp eq i64 %126, 128
  br i1 %127, label %128, label %74, !llvm.loop !22

128:                                              ; preds = %74
  %129 = load ptr, ptr @stderr, align 8, !tbaa !17
  %130 = tail call i32 @fputs(ptr noundef nonnull %70, ptr noundef %129) #10
  %131 = add nuw nsw i64 %73, 1
  %132 = icmp eq i64 %131, 128
  br i1 %132, label %133, label %72, !llvm.loop !23

133:                                              ; preds = %128
  tail call void @free(ptr noundef nonnull %70) #12
  tail call void @free(ptr noundef %3) #12
  tail call void @free(ptr noundef nonnull %4) #12
  br label %134

134:                                              ; preds = %133, %58
  %135 = phi i32 [ 0, %133 ], [ 1, %58 ]
  ret i32 %135
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @polybench_alloc_data() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #13
  store ptr null, ptr %1, align 8, !tbaa !17
  %2 = call i32 @posix_memalign(ptr noundef nonnull %1, i64 noundef 32, i64 noundef 131072) #12
  %3 = load ptr, ptr %1, align 8, !tbaa !17
  %4 = icmp eq ptr %3, null
  %5 = icmp ne i32 %2, 0
  %6 = select i1 %4, i1 true, i1 %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load ptr, ptr @stderr, align 8, !tbaa !17
  %9 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %8) #14
  call void @exit(i32 noundef 1) #15
  unreachable

10:                                               ; preds = %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #13
  ret ptr %3
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_lu(ptr nocapture noundef %0) unnamed_addr #1 {
  br label %5

2:                                                ; preds = %33, %5
  %3 = add nuw nsw i64 %7, 1
  %4 = icmp eq i64 %8, 128
  br i1 %4, label %36, label %5, !llvm.loop !24

5:                                                ; preds = %2, %1
  %6 = phi i64 [ 0, %1 ], [ %8, %2 ]
  %7 = phi i64 [ 1, %1 ], [ %3, %2 ]
  %8 = add nuw nsw i64 %6, 1
  %9 = icmp ult i64 %6, 127
  br i1 %9, label %10, label %2

10:                                               ; preds = %5
  %11 = getelementptr inbounds [128 x double], ptr %0, i64 %6, i64 %6
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i64 [ %7, %10 ], [ %18, %12 ]
  %14 = getelementptr inbounds [128 x double], ptr %0, i64 %6, i64 %13
  %15 = load double, ptr %14, align 8, !tbaa !7
  %16 = load double, ptr %11, align 8, !tbaa !7
  %17 = fdiv double %15, %16
  store double %17, ptr %14, align 8, !tbaa !7
  %18 = add nuw nsw i64 %13, 1
  %19 = icmp eq i64 %18, 128
  br i1 %19, label %20, label %12, !llvm.loop !25

20:                                               ; preds = %33, %12
  %21 = phi i64 [ %34, %33 ], [ %7, %12 ]
  %22 = getelementptr inbounds [128 x double], ptr %0, i64 %21, i64 %6
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi i64 [ %7, %20 ], [ %31, %23 ]
  %25 = getelementptr inbounds [128 x double], ptr %0, i64 %21, i64 %24
  %26 = load double, ptr %25, align 8, !tbaa !7
  %27 = load double, ptr %22, align 8, !tbaa !7
  %28 = getelementptr inbounds [128 x double], ptr %0, i64 %6, i64 %24
  %29 = load double, ptr %28, align 8, !tbaa !7
  %30 = tail call double @llvm.fmuladd.f64(double %27, double %29, double %26)
  store double %30, ptr %25, align 8, !tbaa !7
  %31 = add nuw nsw i64 %24, 1
  %32 = icmp eq i64 %31, 128
  br i1 %32, label %33, label %23, !llvm.loop !26

33:                                               ; preds = %23
  %34 = add nuw nsw i64 %21, 1
  %35 = icmp eq i64 %34, 128
  br i1 %35, label %2, label %20, !llvm.loop !27

36:                                               ; preds = %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nofree nounwind optsize
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind }
attributes #8 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize }
attributes #10 = { cold optsize }
attributes #11 = { nounwind optsize allocsize(0) }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind optsize }

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
!11 = distinct !{!11, !12, !13, !14}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12, !13, !14}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !9, i64 0}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = !{!9, !9, i64 0}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
