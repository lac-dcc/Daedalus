; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/BenchmarkGame/puzzle.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@next = internal unnamed_addr global i64 1, align 8
@.str = private unnamed_addr constant [21 x i8] c"Found duplicate: %d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @rand() #0 {
  %1 = load i64, ptr @next, align 8, !tbaa !7
  %2 = mul i64 %1, 1103515245
  %3 = add i64 %2, 12345
  store i64 %3, ptr @next, align 8, !tbaa !7
  %4 = lshr i64 %3, 16
  %5 = trunc i64 %4 to i32
  %6 = urem i32 %5, 32767
  %7 = add nuw nsw i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @srand(i32 noundef %0) #1 {
  %2 = zext i32 %0 to i64
  store i64 %2, ptr @next, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @shuffle(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = add nsw i32 %1, -1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %34, label %5

5:                                                ; preds = %2
  %6 = load i64, ptr @next, align 8, !tbaa !7
  %7 = sext i32 %3 to i64
  br label %8

8:                                                ; preds = %8, %5
  %9 = phi i64 [ %31, %8 ], [ %7, %5 ]
  %10 = phi i64 [ %14, %8 ], [ %6, %5 ]
  %11 = add i64 %9, 1
  %12 = uitofp i64 %11 to double
  %13 = mul i64 %10, 1103515245
  %14 = add i64 %13, 12345
  %15 = lshr i64 %14, 16
  %16 = trunc i64 %15 to i32
  %17 = urem i32 %16, 32767
  %18 = add nuw nsw i32 %17, 1
  %19 = sitofp i32 %18 to double
  %20 = fmul double %19, 0x3F00000000000000
  %21 = fmul double %20, %12
  %22 = fptosi double %21 to i32
  %23 = sext i32 %22 to i64
  %24 = icmp eq i64 %11, %23
  %25 = sext i1 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = getelementptr inbounds i32, ptr %0, i64 %9
  %28 = load i32, ptr %27, align 4, !tbaa !11
  %29 = getelementptr inbounds i32, ptr %0, i64 %26
  %30 = load i32, ptr %29, align 4, !tbaa !11
  store i32 %30, ptr %27, align 4, !tbaa !11
  store i32 %28, ptr %29, align 4, !tbaa !11
  %31 = add i64 %9, -1
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %8, !llvm.loop !13

33:                                               ; preds = %8
  %.lcssa = phi i64 [ %14, %8 ]
  store i64 %.lcssa, ptr @next, align 8, !tbaa !7
  br label %34

34:                                               ; preds = %33, %2
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal noalias ptr @createRandomArray(i32 noundef %0) #3 {
  %2 = add i32 %0, 1
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 2
  %5 = tail call noalias ptr @malloc(i64 noundef %4) #8
  %6 = icmp slt i32 %0, 0
  br i1 %6, label %44, label %7

7:                                                ; preds = %1
  %8 = zext i32 %2 to i64
  %9 = add nuw nsw i64 %8, 3
  %10 = and i64 %9, 8589934588
  %11 = add nsw i64 %8, -1
  %12 = insertelement <4 x i64> poison, i64 %11, i64 0
  %13 = shufflevector <4 x i64> %12, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %14

14:                                               ; preds = %40, %7
  %15 = phi i64 [ 0, %7 ], [ %41, %40 ]
  %16 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %7 ], [ %42, %40 ]
  %17 = trunc i64 %15 to i32
  %18 = icmp ule <4 x i64> %16, %13
  %19 = extractelement <4 x i1> %18, i64 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = getelementptr inbounds i32, ptr %5, i64 %15
  store i32 %17, ptr %21, align 4, !tbaa !11
  br label %22

22:                                               ; preds = %20, %14
  %23 = extractelement <4 x i1> %18, i64 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = or i64 %15, 1
  %26 = getelementptr inbounds i32, ptr %5, i64 %25
  %27 = or i32 %17, 1
  store i32 %27, ptr %26, align 4, !tbaa !11
  br label %28

28:                                               ; preds = %24, %22
  %29 = extractelement <4 x i1> %18, i64 2
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = or i64 %15, 2
  %32 = getelementptr inbounds i32, ptr %5, i64 %31
  %33 = or i32 %17, 2
  store i32 %33, ptr %32, align 4, !tbaa !11
  br label %34

34:                                               ; preds = %30, %28
  %35 = extractelement <4 x i1> %18, i64 3
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = or i64 %15, 3
  %38 = getelementptr inbounds i32, ptr %5, i64 %37
  %39 = or i32 %17, 3
  store i32 %39, ptr %38, align 4, !tbaa !11
  br label %40

40:                                               ; preds = %36, %34
  %41 = add i64 %15, 4
  %42 = add <4 x i64> %16, <i64 4, i64 4, i64 4, i64 4>
  %43 = icmp eq i64 %41, %10
  br i1 %43, label %44, label %14, !llvm.loop !15

44:                                               ; preds = %40, %1
  %45 = sitofp i32 %0 to double
  %46 = load i64, ptr @next, align 8, !tbaa !7
  %47 = mul i64 %46, 1103515245
  %48 = add i64 %47, 12345
  store i64 %48, ptr @next, align 8, !tbaa !7
  %49 = lshr i64 %48, 16
  %50 = trunc i64 %49 to i32
  %51 = urem i32 %50, 32767
  %52 = add nuw nsw i32 %51, 1
  %53 = sitofp i32 %52 to double
  %54 = fmul double %53, 0x3F00000000000000
  %55 = fmul double %54, %45
  %56 = fptosi double %55 to i32
  %57 = icmp eq i32 %56, %0
  %58 = add nsw i32 %56, 1
  %59 = sext i1 %57 to i32
  %60 = add nsw i32 %58, %59
  store i32 %60, ptr %5, align 4, !tbaa !11
  tail call void @shuffle(ptr noundef nonnull %5, i32 noundef %2) #9
  ret ptr %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main() #5 {
  store i64 1, ptr @next, align 8, !tbaa !7
  br label %1

1:                                                ; preds = %19, %0
  %2 = phi i32 [ 0, %0 ], [ %22, %19 ]
  %3 = tail call ptr @createRandomArray(i32 noundef 500000) #9
  br label %4

4:                                                ; preds = %16, %1
  %5 = phi i32 [ 0, %1 ], [ %17, %16 ]
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ %9, %6 ], [ 0, %4 ]
  %8 = phi i32 [ %14, %6 ], [ 0, %4 ]
  %9 = add nuw nsw i64 %7, 1
  %10 = getelementptr inbounds i32, ptr %3, i64 %7
  %11 = load i32, ptr %10, align 4, !tbaa !11
  %12 = xor i32 %11, %8
  %13 = trunc i64 %9 to i32
  %14 = xor i32 %12, %13
  %15 = icmp eq i64 %9, 500001
  br i1 %15, label %16, label %6, !llvm.loop !18

16:                                               ; preds = %6
  %.lcssa = phi i32 [ %14, %6 ]
  %17 = add nuw nsw i32 %5, 1
  %18 = icmp eq i32 %17, 200
  br i1 %18, label %19, label %4, !llvm.loop !19

19:                                               ; preds = %16
  %.lcssa.lcssa = phi i32 [ %.lcssa, %16 ]
  %20 = xor i32 %.lcssa.lcssa, 500001
  tail call void @free(ptr noundef nonnull %3) #10
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %20) #9
  %22 = add nuw nsw i32 %2, 1
  %23 = icmp eq i32 %22, 5
  br i1 %23, label %24, label %1, !llvm.loop !20

24:                                               ; preds = %19
  ret i32 0
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize allocsize(0) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }

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
!8 = !{!"long long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
