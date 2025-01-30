; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Polybench/stencils/jacobi-1d-imper/jacobi-1d-imper.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"A[%d] = %lf and B[%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define internal ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = sext i32 %1 to i64
  %5 = mul i64 %4, %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store ptr null, ptr %3, align 8, !tbaa !7
  %6 = call i32 @posix_memalign(ptr noundef nonnull %3, i64 noundef 32, i64 noundef %5) #9
  %7 = load ptr, ptr %3, align 8, !tbaa !7
  %8 = icmp eq ptr %7, null
  %9 = icmp ne i32 %6, 0
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load ptr, ptr @stderr, align 8, !tbaa !7
  %13 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %12) #10
  call void @exit(i32 noundef 1) #11
  unreachable

14:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 10000, i32 noundef 8) #12
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 10000, i32 noundef 8) #12
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 10000, i32 noundef 8) #12
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi i64 [ 0, %2 ], [ %16, %6 ]
  %8 = trunc i64 %7 to i32
  %9 = sitofp i32 %8 to double
  %10 = fadd double %9, 2.000000e+00
  %11 = fdiv double %10, 1.000000e+04
  %12 = getelementptr inbounds double, ptr %3, i64 %7
  store double %11, ptr %12, align 8, !tbaa !11
  %13 = fadd double %9, 3.000000e+00
  %14 = fdiv double %13, 1.000000e+04
  %15 = getelementptr inbounds double, ptr %5, i64 %7
  store double %14, ptr %15, align 8, !tbaa !11
  %16 = add nuw nsw i64 %7, 1
  %17 = icmp eq i64 %16, 10000
  br i1 %17, label %18, label %6, !llvm.loop !13

18:                                               ; preds = %42, %6
  %19 = phi i32 [ %43, %42 ], [ 0, %6 ]
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i64 [ 1, %18 ], [ %28, %20 ]
  %22 = add nsw i64 %21, -1
  %23 = getelementptr inbounds double, ptr %3, i64 %22
  %24 = load double, ptr %23, align 8, !tbaa !11
  %25 = getelementptr inbounds double, ptr %3, i64 %21
  %26 = load double, ptr %25, align 8, !tbaa !11
  %27 = fadd double %24, %26
  %28 = add nuw nsw i64 %21, 1
  %29 = getelementptr inbounds double, ptr %3, i64 %28
  %30 = load double, ptr %29, align 8, !tbaa !11
  %31 = fadd double %27, %30
  %32 = fmul double %31, 3.333300e-01
  %33 = getelementptr inbounds double, ptr %5, i64 %21
  store double %32, ptr %33, align 8, !tbaa !11
  %34 = icmp eq i64 %28, 9999
  br i1 %34, label %35, label %20, !llvm.loop !15

35:                                               ; preds = %35, %20
  %36 = phi i64 [ %40, %35 ], [ 1, %20 ]
  %37 = getelementptr inbounds double, ptr %5, i64 %36
  %38 = load double, ptr %37, align 8, !tbaa !11
  %39 = getelementptr inbounds double, ptr %3, i64 %36
  store double %38, ptr %39, align 8, !tbaa !11
  %40 = add nuw nsw i64 %36, 1
  %41 = icmp eq i64 %40, 9999
  br i1 %41, label %42, label %35, !llvm.loop !16

42:                                               ; preds = %35
  %43 = add nuw nsw i32 %19, 1
  %44 = icmp eq i32 %43, 100
  br i1 %44, label %45, label %18, !llvm.loop !17

45:                                               ; preds = %45, %42
  %46 = phi i64 [ %55, %45 ], [ 0, %42 ]
  %47 = trunc i64 %46 to i32
  %48 = sitofp i32 %47 to double
  %49 = fadd double %48, 2.000000e+00
  %50 = fdiv double %49, 1.000000e+04
  %51 = getelementptr inbounds double, ptr %4, i64 %46
  store double %50, ptr %51, align 8, !tbaa !11
  %52 = fadd double %48, 3.000000e+00
  %53 = fdiv double %52, 1.000000e+04
  %54 = getelementptr inbounds double, ptr %5, i64 %46
  store double %53, ptr %54, align 8, !tbaa !11
  %55 = add nuw nsw i64 %46, 1
  %56 = icmp eq i64 %55, 10000
  br i1 %56, label %57, label %45, !llvm.loop !13

57:                                               ; preds = %81, %45
  %58 = phi i32 [ %82, %81 ], [ 0, %45 ]
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi i64 [ 1, %57 ], [ %67, %59 ]
  %61 = add nsw i64 %60, -1
  %62 = getelementptr inbounds double, ptr %4, i64 %61
  %63 = load double, ptr %62, align 8, !tbaa !11
  %64 = getelementptr inbounds double, ptr %4, i64 %60
  %65 = load double, ptr %64, align 8, !tbaa !11
  %66 = fadd double %63, %65
  %67 = add nuw nsw i64 %60, 1
  %68 = getelementptr inbounds double, ptr %4, i64 %67
  %69 = load double, ptr %68, align 8, !tbaa !11
  %70 = fadd double %66, %69
  %71 = fmul double %70, 3.333300e-01
  %72 = getelementptr inbounds double, ptr %5, i64 %60
  store double %71, ptr %72, align 8, !tbaa !11
  %73 = icmp eq i64 %67, 9999
  br i1 %73, label %74, label %59, !llvm.loop !15

74:                                               ; preds = %74, %59
  %75 = phi i64 [ %79, %74 ], [ 1, %59 ]
  %76 = getelementptr inbounds double, ptr %5, i64 %75
  %77 = load double, ptr %76, align 8, !tbaa !11
  %78 = getelementptr inbounds double, ptr %4, i64 %75
  store double %77, ptr %78, align 8, !tbaa !11
  %79 = add nuw nsw i64 %75, 1
  %80 = icmp eq i64 %79, 9999
  br i1 %80, label %81, label %74, !llvm.loop !16

81:                                               ; preds = %74
  %82 = add nuw nsw i32 %58, 1
  %83 = icmp eq i32 %82, 100
  br i1 %83, label %84, label %57, !llvm.loop !17

84:                                               ; preds = %97, %81
  %85 = phi i64 [ %98, %97 ], [ 0, %81 ]
  %86 = getelementptr inbounds double, ptr %3, i64 %85
  %87 = load double, ptr %86, align 8, !tbaa !11
  %88 = getelementptr inbounds double, ptr %4, i64 %85
  %89 = load double, ptr %88, align 8, !tbaa !11
  %90 = fsub double %87, %89
  %91 = tail call double @llvm.fabs.f64(double %90)
  %92 = fcmp ule double %91, 1.000000e-05
  br i1 %92, label %97, label %93

93:                                               ; preds = %84
  %.lcssa4 = phi i64 [ %85, %84 ]
  %.lcssa2 = phi double [ %87, %84 ]
  %.lcssa = phi double [ %89, %84 ]
  %94 = trunc i64 %.lcssa4 to i32
  %95 = load ptr, ptr @stderr, align 8, !tbaa !7
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.2, i32 noundef %94, double noundef %.lcssa2, i32 noundef %94, double noundef %.lcssa, double noundef 1.000000e-05) #13
  br label %160

97:                                               ; preds = %84
  %98 = add nuw nsw i64 %85, 1
  %99 = icmp eq i64 %98, 10000
  br i1 %99, label %100, label %84, !llvm.loop !18

100:                                              ; preds = %97
  %101 = tail call noalias dereferenceable_or_null(160001) ptr @malloc(i64 noundef 160001) #14
  %102 = getelementptr inbounds i8, ptr %101, i64 160000
  store i8 0, ptr %102, align 1, !tbaa !19
  br label %103

103:                                              ; preds = %103, %100
  %104 = phi i64 [ 0, %100 ], [ %155, %103 ]
  %105 = getelementptr inbounds double, ptr %4, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !11
  %107 = shl nuw nsw i64 %104, 4
  %108 = trunc i64 %106 to i8
  %109 = and i8 %108, 15
  %110 = or i8 %109, 48
  %111 = getelementptr inbounds i8, ptr %101, i64 %107
  store i8 %110, ptr %111, align 1, !tbaa !19
  %112 = getelementptr inbounds i8, ptr %111, i64 1
  store i8 %110, ptr %112, align 1, !tbaa !19
  %113 = lshr i64 %106, 8
  %114 = trunc i64 %113 to i8
  %115 = and i8 %114, 15
  %116 = or i8 %115, 48
  %117 = getelementptr inbounds i8, ptr %111, i64 2
  store i8 %116, ptr %117, align 1, !tbaa !19
  %118 = getelementptr inbounds i8, ptr %111, i64 3
  store i8 %116, ptr %118, align 1, !tbaa !19
  %119 = lshr i64 %106, 16
  %120 = trunc i64 %119 to i8
  %121 = and i8 %120, 15
  %122 = or i8 %121, 48
  %123 = getelementptr inbounds i8, ptr %111, i64 4
  store i8 %122, ptr %123, align 1, !tbaa !19
  %124 = getelementptr inbounds i8, ptr %111, i64 5
  store i8 %122, ptr %124, align 1, !tbaa !19
  %125 = lshr i64 %106, 24
  %126 = trunc i64 %125 to i8
  %127 = and i8 %126, 15
  %128 = or i8 %127, 48
  %129 = getelementptr inbounds i8, ptr %111, i64 6
  store i8 %128, ptr %129, align 1, !tbaa !19
  %130 = getelementptr inbounds i8, ptr %111, i64 7
  store i8 %128, ptr %130, align 1, !tbaa !19
  %131 = lshr i64 %106, 32
  %132 = trunc i64 %131 to i8
  %133 = and i8 %132, 15
  %134 = or i8 %133, 48
  %135 = getelementptr inbounds i8, ptr %111, i64 8
  store i8 %134, ptr %135, align 1, !tbaa !19
  %136 = getelementptr inbounds i8, ptr %111, i64 9
  store i8 %134, ptr %136, align 1, !tbaa !19
  %137 = lshr i64 %106, 40
  %138 = trunc i64 %137 to i8
  %139 = and i8 %138, 15
  %140 = or i8 %139, 48
  %141 = getelementptr inbounds i8, ptr %111, i64 10
  store i8 %140, ptr %141, align 1, !tbaa !19
  %142 = getelementptr inbounds i8, ptr %111, i64 11
  store i8 %140, ptr %142, align 1, !tbaa !19
  %143 = lshr i64 %106, 48
  %144 = trunc i64 %143 to i8
  %145 = and i8 %144, 15
  %146 = or i8 %145, 48
  %147 = getelementptr inbounds i8, ptr %111, i64 12
  store i8 %146, ptr %147, align 1, !tbaa !19
  %148 = getelementptr inbounds i8, ptr %111, i64 13
  store i8 %146, ptr %148, align 1, !tbaa !19
  %149 = lshr i64 %106, 56
  %150 = trunc i64 %149 to i8
  %151 = and i8 %150, 15
  %152 = or i8 %151, 48
  %153 = getelementptr inbounds i8, ptr %111, i64 14
  store i8 %152, ptr %153, align 1, !tbaa !19
  %154 = getelementptr inbounds i8, ptr %111, i64 15
  store i8 %152, ptr %154, align 1, !tbaa !19
  %155 = add nuw nsw i64 %104, 1
  %156 = icmp eq i64 %155, 10000
  br i1 %156, label %157, label %103, !llvm.loop !20

157:                                              ; preds = %103
  %158 = load ptr, ptr @stderr, align 8, !tbaa !7
  %159 = tail call i32 @fputs(ptr noundef nonnull %101, ptr noundef %158) #13
  tail call void @free(ptr noundef nonnull %101) #9
  tail call void @free(ptr noundef %3) #9
  tail call void @free(ptr noundef %5) #9
  br label %160

160:                                              ; preds = %157, %93
  %161 = phi i32 [ 0, %157 ], [ 1, %93 ]
  ret i32 %161
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { cold optsize }
attributes #14 = { nounwind optsize allocsize(0) }

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
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = !{!9, !9, i64 0}
!20 = distinct !{!20, !14}
