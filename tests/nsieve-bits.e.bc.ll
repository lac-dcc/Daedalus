; ModuleID = 'nsieve-bits.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call noalias dereferenceable_or_null(5120004) ptr @malloc(i64 noundef 5120004) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5

5:                                                ; preds = %45, %2
  %6 = phi i32 [ %47, %45 ], [ 0, %2 ]
  %7 = lshr i32 40960000, %6
  %8 = lshr i32 5120000, %6
  %9 = add nuw nsw i32 %8, 4
  %10 = zext i32 %9 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 %10, i1 false)
  br label %11

11:                                               ; preds = %41, %5
  %12 = phi i32 [ %42, %41 ], [ 0, %5 ]
  %13 = phi i32 [ %43, %41 ], [ 2, %5 ]
  %14 = lshr i32 %13, 5
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %3, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !7
  %18 = and i32 %13, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %11
  %23 = add i32 %12, 1
  %24 = shl nuw nsw i32 %13, 1
  %25 = icmp ugt i32 %24, %7
  br i1 %25, label %41, label %26

26:                                               ; preds = %38, %22
  %27 = phi i32 [ %39, %38 ], [ %24, %22 ]
  %28 = lshr i32 %27, 5
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %3, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !7
  %32 = and i32 %27, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %33, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = xor i32 %33, %31
  store i32 %37, ptr %30, align 4, !tbaa !7
  br label %38

38:                                               ; preds = %36, %26
  %39 = add nuw nsw i32 %27, %13
  %40 = icmp ugt i32 %39, %7
  br i1 %40, label %41, label %26, !llvm.loop !11

41:                                               ; preds = %38, %22, %11
  %42 = phi i32 [ %12, %11 ], [ %23, %22 ], [ %23, %38 ]
  %43 = add nuw nsw i32 %13, 1
  %44 = icmp eq i32 %13, %7
  br i1 %44, label %45, label %11, !llvm.loop !13

45:                                               ; preds = %41
  %.lcssa = phi i32 [ %42, %41 ]
  %46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7, i32 noundef %.lcssa) #6
  %47 = add nuw nsw i32 %6, 1
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %5, !llvm.loop !14

49:                                               ; preds = %45
  tail call void @free(ptr noundef nonnull %3) #7
  br label %50

50:                                               ; preds = %49, %2
  %51 = phi i32 [ 0, %49 ], [ 1, %2 ]
  ret i32 %51
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
