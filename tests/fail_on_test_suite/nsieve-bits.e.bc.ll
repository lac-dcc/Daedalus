; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/BenchmarkGame/nsieve-bits.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call noalias dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %46, %2
  %6 = phi i32 [ %49, %46 ], [ 0, %2 ]
  %7 = lshr i32 40960000, %6
  %8 = lshr i32 5120000, %6
  %9 = add nuw nsw i32 %8, 4
  %10 = zext i32 %9 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 %10, i1 false)
  %11 = icmp ult i32 %7, 2
  br i1 %11, label %46, label %12

12:                                               ; preds = %42, %5
  %13 = phi i32 [ %43, %42 ], [ 0, %5 ]
  %14 = phi i32 [ %44, %42 ], [ 2, %5 ]
  %15 = lshr i32 %14, 5
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %3, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !7
  %19 = and i32 %14, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %12
  %24 = add i32 %13, 1
  %25 = shl nuw nsw i32 %14, 1
  %26 = icmp ugt i32 %25, %7
  br i1 %26, label %42, label %27

27:                                               ; preds = %39, %23
  %28 = phi i32 [ %40, %39 ], [ %25, %23 ]
  %29 = lshr i32 %28, 5
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %3, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !7
  %33 = and i32 %28, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %27
  %38 = xor i32 %32, %34
  store i32 %38, ptr %31, align 4, !tbaa !7
  br label %39

39:                                               ; preds = %37, %27
  %40 = add nuw nsw i32 %28, %14
  %41 = icmp ugt i32 %40, %7
  br i1 %41, label %42, label %27, !llvm.loop !11

42:                                               ; preds = %39, %23, %12
  %43 = phi i32 [ %13, %12 ], [ %24, %23 ], [ %24, %39 ]
  %44 = add nuw nsw i32 %14, 1
  %45 = icmp eq i32 %14, %7
  br i1 %45, label %46, label %12, !llvm.loop !13

46:                                               ; preds = %42, %5
  %47 = phi i32 [ 0, %5 ], [ %43, %42 ]
  %48 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7, i32 noundef %47) #6
  %49 = add nuw nsw i32 %6, 1
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %5, !llvm.loop !14

51:                                               ; preds = %46
  tail call void @free(ptr noundef %3) #7
  br label %52

52:                                               ; preds = %51, %2
  %53 = phi i32 [ 0, %51 ], [ 1, %2 ]
  ret i32 %53
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize allocsize(0) }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

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
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
