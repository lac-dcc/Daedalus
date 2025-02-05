; ModuleID = 'puzzle.e.bc.ll'
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

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main() #2 {
  store i64 1, ptr @next, align 8, !tbaa !7
  br label %1

1:                                                ; preds = %91, %0
  %2 = phi i32 [ 0, %0 ], [ %94, %91 ]
  %3 = tail call noalias dereferenceable_or_null(2000004) ptr @malloc(i64 noundef 2000004) #6
  br label %4

4:                                                ; preds = %30, %1
  %5 = phi i64 [ 0, %1 ], [ %31, %30 ]
  %6 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %1 ], [ %32, %30 ]
  %7 = trunc i64 %5 to i32
  %8 = icmp ult <4 x i64> %6, <i64 500001, i64 500001, i64 500001, i64 500001>
  %9 = extractelement <4 x i1> %8, i64 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds i32, ptr %3, i64 %5
  store i32 %7, ptr %11, align 4, !tbaa !11
  br label %12

12:                                               ; preds = %10, %4
  %13 = extractelement <4 x i1> %8, i64 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = or i64 %5, 1
  %16 = getelementptr inbounds i32, ptr %3, i64 %15
  %17 = or i32 %7, 1
  store i32 %17, ptr %16, align 4, !tbaa !11
  br label %18

18:                                               ; preds = %14, %12
  %19 = extractelement <4 x i1> %8, i64 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = or i64 %5, 2
  %22 = getelementptr inbounds i32, ptr %3, i64 %21
  %23 = or i32 %7, 2
  store i32 %23, ptr %22, align 4, !tbaa !11
  br label %24

24:                                               ; preds = %20, %18
  %25 = extractelement <4 x i1> %8, i64 3
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = or i64 %5, 3
  %28 = getelementptr inbounds i32, ptr %3, i64 %27
  %29 = or i32 %7, 3
  store i32 %29, ptr %28, align 4, !tbaa !11
  br label %30

30:                                               ; preds = %26, %24
  %31 = add nuw nsw i64 %5, 4
  %32 = add <4 x i64> %6, <i64 4, i64 4, i64 4, i64 4>
  %33 = icmp eq i64 %31, 500004
  br i1 %33, label %34, label %4, !llvm.loop !13

34:                                               ; preds = %30
  %35 = load i64, ptr @next, align 8, !tbaa !7
  %36 = mul i64 %35, 1103515245
  %37 = add i64 %36, 12345
  %38 = lshr i64 %37, 16
  %39 = trunc i64 %38 to i32
  %40 = urem i32 %39, 32767
  %41 = add nuw nsw i32 %40, 1
  %42 = sitofp i32 %41 to double
  %43 = fmul double %42, 0x3F00000000000000
  %44 = fmul double %43, 5.000000e+05
  %45 = fptosi double %44 to i32
  %46 = icmp eq i32 %45, 500000
  %47 = add nsw i32 %45, 1
  %48 = sext i1 %46 to i32
  %49 = add nsw i32 %47, %48
  store i32 %49, ptr %3, align 4, !tbaa !11
  br label %50

50:                                               ; preds = %50, %34
  %51 = phi i64 [ %73, %50 ], [ 500000, %34 ]
  %52 = phi i64 [ %56, %50 ], [ %37, %34 ]
  %53 = add nuw nsw i64 %51, 1
  %54 = uitofp i64 %53 to double
  %55 = mul i64 %52, 1103515245
  %56 = add i64 %55, 12345
  %57 = lshr i64 %56, 16
  %58 = trunc i64 %57 to i32
  %59 = urem i32 %58, 32767
  %60 = add nuw nsw i32 %59, 1
  %61 = sitofp i32 %60 to double
  %62 = fmul double %61, 0x3F00000000000000
  %63 = fmul double %62, %54
  %64 = fptosi double %63 to i32
  %65 = sext i32 %64 to i64
  %66 = icmp eq i64 %53, %65
  %67 = sext i1 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = getelementptr inbounds i32, ptr %3, i64 %51
  %70 = load i32, ptr %69, align 4, !tbaa !11
  %71 = getelementptr inbounds i32, ptr %3, i64 %68
  %72 = load i32, ptr %71, align 4, !tbaa !11
  store i32 %72, ptr %69, align 4, !tbaa !11
  store i32 %70, ptr %71, align 4, !tbaa !11
  %73 = add nsw i64 %51, -1
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %50, !llvm.loop !17

75:                                               ; preds = %50
  %.lcssa = phi i64 [ %56, %50 ]
  store i64 %.lcssa, ptr @next, align 8, !tbaa !7
  br label %76

76:                                               ; preds = %88, %75
  %77 = phi i32 [ 0, %75 ], [ %89, %88 ]
  br label %78

78:                                               ; preds = %78, %76
  %79 = phi i64 [ %81, %78 ], [ 0, %76 ]
  %80 = phi i32 [ %86, %78 ], [ 0, %76 ]
  %81 = add nuw nsw i64 %79, 1
  %82 = getelementptr inbounds i32, ptr %3, i64 %79
  %83 = load i32, ptr %82, align 4, !tbaa !11
  %84 = xor i32 %83, %80
  %85 = trunc i64 %81 to i32
  %86 = xor i32 %84, %85
  %87 = icmp eq i64 %81, 500001
  br i1 %87, label %88, label %78, !llvm.loop !18

88:                                               ; preds = %78
  %.lcssa1 = phi i32 [ %86, %78 ]
  %89 = add nuw nsw i32 %77, 1
  %90 = icmp eq i32 %89, 200
  br i1 %90, label %91, label %76, !llvm.loop !19

91:                                               ; preds = %88
  %.lcssa1.lcssa = phi i32 [ %.lcssa1, %88 ]
  %92 = xor i32 %.lcssa1.lcssa, 500001
  tail call void @free(ptr noundef nonnull %3) #7
  %93 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %92) #8
  %94 = add nuw nsw i32 %2, 1
  %95 = icmp eq i32 %94, 5
  br i1 %95, label %96, label %1, !llvm.loop !20

96:                                               ; preds = %91
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize allocsize(0) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

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
!13 = distinct !{!13, !14, !15, !16}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
