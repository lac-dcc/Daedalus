; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Polybench/linear-algebra/solvers/dynprog/dynprog.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"A = %lf and B = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 125000, i32 noundef 4) #13
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 2500, i32 noundef 4) #13
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 2500, i32 noundef 4) #13
  br label %8

8:                                                ; preds = %22, %2
  %9 = phi i64 [ 0, %2 ], [ %23, %22 ]
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i64 [ 0, %8 ], [ %20, %10 ]
  %12 = mul nuw nsw i64 %11, %9
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 1
  %15 = getelementptr inbounds [50 x i32], ptr %6, i64 %9, i64 %11
  store i32 %14, ptr %15, align 4, !tbaa !11
  %16 = sub nsw i64 %9, %11
  %17 = trunc i64 %16 to i32
  %18 = sdiv i32 %17, 50
  %19 = getelementptr inbounds [50 x i32], ptr %7, i64 %9, i64 %11
  store i32 %18, ptr %19, align 4, !tbaa !11
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, 50
  br i1 %21, label %22, label %10, !llvm.loop !13

22:                                               ; preds = %10
  %23 = add nuw nsw i64 %9, 1
  %24 = icmp eq i64 %23, 50
  br i1 %24, label %25, label %8, !llvm.loop !15

25:                                               ; preds = %22
  call fastcc void @kernel_dynprog(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %5, ptr noundef nonnull %3) #13
  br label %26

26:                                               ; preds = %40, %25
  %27 = phi i64 [ 0, %25 ], [ %41, %40 ]
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i64 [ 0, %26 ], [ %38, %28 ]
  %30 = mul nuw nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  %32 = and i32 %31, 1
  %33 = getelementptr inbounds [50 x i32], ptr %6, i64 %27, i64 %29
  store i32 %32, ptr %33, align 4, !tbaa !11
  %34 = sub nsw i64 %27, %29
  %35 = trunc i64 %34 to i32
  %36 = sdiv i32 %35, 50
  %37 = getelementptr inbounds [50 x i32], ptr %7, i64 %27, i64 %29
  store i32 %36, ptr %37, align 4, !tbaa !11
  %38 = add nuw nsw i64 %29, 1
  %39 = icmp eq i64 %38, 50
  br i1 %39, label %40, label %28, !llvm.loop !13

40:                                               ; preds = %28
  %41 = add nuw nsw i64 %27, 1
  %42 = icmp eq i64 %41, 50
  br i1 %42, label %43, label %26, !llvm.loop !15

43:                                               ; preds = %40
  call fastcc void @kernel_dynprog(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %5, ptr noundef nonnull %4) #13
  %44 = load i32, ptr %3, align 4, !tbaa !11
  %45 = load i32, ptr %4, align 4, !tbaa !11
  %46 = sitofp i32 %44 to double
  %47 = sitofp i32 %45 to double
  %48 = fsub double %46, %47
  %49 = tail call double @llvm.fabs.f64(double %48)
  %50 = fcmp ogt double %49, 1.000000e-05
  %51 = load ptr, ptr @stderr, align 8, !tbaa !7
  br i1 %50, label %52, label %54

52:                                               ; preds = %43
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.2, double noundef %46, double noundef %47, double noundef 1.000000e-05) #14
  br label %58

54:                                               ; preds = %43
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.3, i32 noundef %45) #14
  %56 = load ptr, ptr @stderr, align 8, !tbaa !7
  %57 = tail call i32 @fputc(i32 10, ptr %56)
  tail call void @free(ptr noundef %5) #10
  tail call void @free(ptr noundef nonnull %6) #10
  tail call void @free(ptr noundef nonnull %7) #10
  br label %58

58:                                               ; preds = %54, %52
  %59 = phi i32 [ 0, %54 ], [ 1, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %59
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @kernel_dynprog(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #5 {
  %5 = getelementptr inbounds [50 x i32], ptr %0, i64 0, i64 49
  br label %6

6:                                                ; preds = %51, %4
  %7 = phi i32 [ 0, %4 ], [ %53, %51 ]
  %8 = phi i32 [ 0, %4 ], [ %54, %51 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10000) %0, i8 0, i64 10000, i1 false), !tbaa !11
  br label %12

9:                                                ; preds = %40
  %10 = add nuw nsw i64 %14, 1
  %11 = icmp eq i64 %17, 49
  br i1 %11, label %51, label %12, !llvm.loop !16

12:                                               ; preds = %9, %6
  %13 = phi i64 [ 0, %6 ], [ %17, %9 ]
  %14 = phi i64 [ 1, %6 ], [ %10, %9 ]
  %15 = mul nuw nsw i64 %13, 10204
  %16 = add nuw i64 %15, 200
  %17 = add nuw nsw i64 %13, 1
  br label %18

18:                                               ; preds = %40, %12
  %19 = phi i64 [ 0, %12 ], [ %50, %40 ]
  %20 = phi i64 [ %14, %12 ], [ %48, %40 ]
  %21 = getelementptr inbounds [50 x [50 x i32]], ptr %2, i64 %13, i64 %20, i64 %13
  store i32 0, ptr %21, align 4, !tbaa !11
  %22 = icmp ult i64 %17, %20
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = mul nuw nsw i64 %19, 200
  %25 = add i64 %16, %24
  %26 = getelementptr i8, ptr %2, i64 %25
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %28, %23
  %29 = phi i32 [ %27, %23 ], [ %36, %28 ]
  %30 = phi i64 [ %14, %23 ], [ %38, %28 ]
  %31 = getelementptr inbounds [50 x i32], ptr %0, i64 %13, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !11
  %33 = add nsw i32 %32, %29
  %34 = getelementptr inbounds [50 x i32], ptr %0, i64 %30, i64 %20
  %35 = load i32, ptr %34, align 4, !tbaa !11
  %36 = add nsw i32 %33, %35
  %37 = getelementptr inbounds [50 x [50 x i32]], ptr %2, i64 %13, i64 %20, i64 %30
  store i32 %36, ptr %37, align 4, !tbaa !11
  %38 = add nuw nsw i64 %30, 1
  %39 = icmp eq i64 %38, %20
  br i1 %39, label %40, label %28, !llvm.loop !17

40:                                               ; preds = %28, %18
  %41 = add nsw i64 %20, -1
  %42 = getelementptr inbounds [50 x [50 x i32]], ptr %2, i64 %13, i64 %20, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !11
  %44 = getelementptr inbounds [50 x i32], ptr %1, i64 %13, i64 %20
  %45 = load i32, ptr %44, align 4, !tbaa !11
  %46 = add nsw i32 %45, %43
  %47 = getelementptr inbounds [50 x i32], ptr %0, i64 %13, i64 %20
  store i32 %46, ptr %47, align 4, !tbaa !11
  %48 = add nuw nsw i64 %20, 1
  %49 = icmp eq i64 %48, 50
  %50 = add i64 %19, 1
  br i1 %49, label %9, label %18, !llvm.loop !18

51:                                               ; preds = %9
  %52 = load i32, ptr %5, align 4, !tbaa !11
  %53 = add nsw i32 %52, %7
  %54 = add nuw nsw i32 %8, 1
  %55 = icmp eq i32 %54, 10000
  br i1 %55, label %56, label %6, !llvm.loop !19

56:                                               ; preds = %51
  %.lcssa = phi i32 [ %53, %51 ]
  store i32 %.lcssa, ptr %3, align 4, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { cold }
attributes #12 = { noreturn nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { cold optsize }

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
!12 = !{!"int", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
