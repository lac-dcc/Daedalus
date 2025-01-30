; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Polybench/linear-algebra/kernels/gemver/gemver.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1

; Function Attrs: nounwind optsize uwtable
define internal ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = sext i32 %1 to i64
  %5 = mul i64 %4, %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store ptr null, ptr %3, align 8, !tbaa !7
  %6 = call i32 @posix_memalign(ptr noundef nonnull %3, i64 noundef 32, i64 noundef %5) #7
  %7 = load ptr, ptr %3, align 8, !tbaa !7
  %8 = icmp eq ptr %7, null
  %9 = icmp ne i32 %6, 0
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load ptr, ptr @stderr, align 8, !tbaa !7
  %13 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %12) #8
  call void @exit(i32 noundef 1) #9
  unreachable

14:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 16000000, i32 noundef 8) #10
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 16000000, i32 noundef 8) #10
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #10
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #10
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #10
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #10
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #10
  %10 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #10
  %11 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #10
  %12 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #10
  br label %13

13:                                               ; preds = %43, %2
  %14 = phi i64 [ 0, %2 ], [ %44, %43 ]
  %15 = trunc i64 %14 to i32
  %16 = sitofp i32 %15 to double
  %17 = getelementptr inbounds double, ptr %5, i64 %14
  store double %16, ptr %17, align 8, !tbaa !11
  %18 = icmp eq i64 %14, 3999
  %19 = uitofp i1 %18 to double
  %20 = fmul double %19, 5.000000e-01
  %21 = getelementptr inbounds double, ptr %7, i64 %14
  store double %20, ptr %21, align 8, !tbaa !11
  %22 = fmul double %19, 2.500000e-01
  %23 = getelementptr inbounds double, ptr %6, i64 %14
  store double %22, ptr %23, align 8, !tbaa !11
  %24 = fdiv double %19, 6.000000e+00
  %25 = getelementptr inbounds double, ptr %8, i64 %14
  store double %24, ptr %25, align 8, !tbaa !11
  %26 = fmul double %19, 1.250000e-01
  %27 = getelementptr inbounds double, ptr %11, i64 %14
  store double %26, ptr %27, align 8, !tbaa !11
  %28 = fdiv double %19, 9.000000e+00
  %29 = getelementptr inbounds double, ptr %12, i64 %14
  store double %28, ptr %29, align 8, !tbaa !11
  %30 = getelementptr inbounds double, ptr %9, i64 %14
  store double 0.000000e+00, ptr %30, align 8, !tbaa !11
  %31 = insertelement <2 x double> poison, double %16, i64 0
  %32 = shufflevector <2 x double> %31, <2 x double> poison, <2 x i32> zeroinitializer
  br label %33

33:                                               ; preds = %33, %13
  %34 = phi i64 [ 0, %13 ], [ %40, %33 ]
  %35 = phi <2 x i32> [ <i32 0, i32 1>, %13 ], [ %41, %33 ]
  %36 = sitofp <2 x i32> %35 to <2 x double>
  %37 = fmul <2 x double> %32, %36
  %38 = fdiv <2 x double> %37, <double 4.000000e+03, double 4.000000e+03>
  %39 = getelementptr inbounds [4000 x double], ptr %3, i64 %14, i64 %34
  store <2 x double> %38, ptr %39, align 8, !tbaa !11
  %40 = add nuw i64 %34, 2
  %41 = add <2 x i32> %35, <i32 2, i32 2>
  %42 = icmp eq i64 %40, 4000
  br i1 %42, label %43, label %33, !llvm.loop !13

43:                                               ; preds = %33
  %44 = add nuw nsw i64 %14, 1
  %45 = icmp eq i64 %44, 4000
  br i1 %45, label %46, label %13, !llvm.loop !17

46:                                               ; preds = %67, %43
  %47 = phi i64 [ %68, %67 ], [ 0, %43 ]
  %48 = getelementptr inbounds double, ptr %5, i64 %47
  %49 = getelementptr inbounds double, ptr %7, i64 %47
  br label %50

50:                                               ; preds = %50, %46
  %51 = phi i64 [ 0, %46 ], [ %65, %50 ]
  %52 = getelementptr inbounds [4000 x double], ptr %3, i64 %47, i64 %51
  %53 = load double, ptr %52, align 8, !tbaa !11
  %54 = load double, ptr %48, align 8, !tbaa !11
  %55 = getelementptr inbounds double, ptr %6, i64 %51
  %56 = load double, ptr %55, align 8, !tbaa !11
  %57 = fmul double %54, %56
  %58 = fadd double %53, %57
  %59 = load double, ptr %49, align 8, !tbaa !11
  %60 = getelementptr inbounds double, ptr %8, i64 %51
  %61 = load double, ptr %60, align 8, !tbaa !11
  %62 = fmul double %59, %61
  %63 = fadd double %58, %62
  %64 = getelementptr inbounds [4000 x double], ptr %4, i64 %47, i64 %51
  store double %63, ptr %64, align 8, !tbaa !11
  %65 = add nuw nsw i64 %51, 1
  %66 = icmp eq i64 %65, 4000
  br i1 %66, label %67, label %50, !llvm.loop !18

67:                                               ; preds = %50
  %68 = add nuw nsw i64 %47, 1
  %69 = icmp eq i64 %68, 4000
  br i1 %69, label %70, label %46, !llvm.loop !19

70:                                               ; preds = %85, %67
  %71 = phi i64 [ %86, %85 ], [ 0, %67 ]
  %72 = getelementptr inbounds double, ptr %10, i64 %71
  store double 0.000000e+00, ptr %72, align 8, !tbaa !11
  br label %73

73:                                               ; preds = %73, %70
  %74 = phi i64 [ 0, %70 ], [ %83, %73 ]
  %75 = phi double [ 0.000000e+00, %70 ], [ %82, %73 ]
  %76 = getelementptr inbounds [4000 x double], ptr %4, i64 %74, i64 %71
  %77 = load double, ptr %76, align 8, !tbaa !11
  %78 = fmul double %77, 1.231300e+04
  %79 = getelementptr inbounds double, ptr %11, i64 %74
  %80 = load double, ptr %79, align 8, !tbaa !11
  %81 = fmul double %78, %80
  %82 = fadd double %75, %81
  store double %82, ptr %72, align 8, !tbaa !11
  %83 = add nuw nsw i64 %74, 1
  %84 = icmp eq i64 %83, 4000
  br i1 %84, label %85, label %73, !llvm.loop !20

85:                                               ; preds = %73
  %86 = add nuw nsw i64 %71, 1
  %87 = icmp eq i64 %86, 4000
  br i1 %87, label %88, label %70, !llvm.loop !21

88:                                               ; preds = %88, %85
  %89 = phi i64 [ %95, %88 ], [ 0, %85 ]
  %90 = getelementptr inbounds double, ptr %10, i64 %89
  %91 = load double, ptr %90, align 8, !tbaa !11
  %92 = getelementptr inbounds double, ptr %12, i64 %89
  %93 = load double, ptr %92, align 8, !tbaa !11
  %94 = fadd double %91, %93
  store double %94, ptr %90, align 8, !tbaa !11
  %95 = add nuw nsw i64 %89, 1
  %96 = icmp eq i64 %95, 4000
  br i1 %96, label %97, label %88, !llvm.loop !22

97:                                               ; preds = %113, %88
  %98 = phi i64 [ %114, %113 ], [ 0, %88 ]
  %99 = getelementptr inbounds double, ptr %9, i64 %98
  %100 = load double, ptr %99, align 8, !tbaa !11
  br label %101

101:                                              ; preds = %101, %97
  %102 = phi i64 [ 0, %97 ], [ %111, %101 ]
  %103 = phi double [ %100, %97 ], [ %110, %101 ]
  %104 = getelementptr inbounds [4000 x double], ptr %4, i64 %98, i64 %102
  %105 = load double, ptr %104, align 8, !tbaa !11
  %106 = fmul double %105, 4.353200e+04
  %107 = getelementptr inbounds double, ptr %10, i64 %102
  %108 = load double, ptr %107, align 8, !tbaa !11
  %109 = fmul double %106, %108
  %110 = fadd double %103, %109
  store double %110, ptr %99, align 8, !tbaa !11
  %111 = add nuw nsw i64 %102, 1
  %112 = icmp eq i64 %111, 4000
  br i1 %112, label %113, label %101, !llvm.loop !23

113:                                              ; preds = %101
  %114 = add nuw nsw i64 %98, 1
  %115 = icmp eq i64 %114, 4000
  br i1 %115, label %116, label %97, !llvm.loop !24

116:                                              ; preds = %128, %113
  %117 = phi i64 [ %129, %128 ], [ 0, %113 ]
  %118 = load ptr, ptr @stderr, align 8, !tbaa !7
  %119 = getelementptr inbounds double, ptr %9, i64 %117
  %120 = load double, ptr %119, align 8, !tbaa !11
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef nonnull @.str.2, double noundef %120) #11
  %122 = trunc i64 %117 to i16
  %123 = urem i16 %122, 20
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  %126 = load ptr, ptr @stderr, align 8, !tbaa !7
  %127 = tail call i32 @fputc(i32 10, ptr %126)
  br label %128

128:                                              ; preds = %125, %116
  %129 = add nuw nsw i64 %117, 1
  %130 = icmp eq i64 %129, 4000
  br i1 %130, label %131, label %116, !llvm.loop !25

131:                                              ; preds = %128
  tail call void @free(ptr noundef %3) #7
  tail call void @free(ptr noundef %4) #7
  tail call void @free(ptr noundef %5) #7
  tail call void @free(ptr noundef %6) #7
  tail call void @free(ptr noundef %7) #7
  tail call void @free(ptr noundef %8) #7
  tail call void @free(ptr noundef nonnull %9) #7
  tail call void @free(ptr noundef %10) #7
  tail call void @free(ptr noundef %11) #7
  tail call void @free(ptr noundef %12) #7
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { cold optsize }

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
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
