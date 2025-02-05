; ModuleID = 'puzzle.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@next = internal unnamed_addr global i64 1, align 8
@.str = private unnamed_addr constant [21 x i8] c"Found duplicate: %d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @rand() #0 {
  %1 = call i64 @_wyvern_slice_main__556358876()
  store i64 %1, ptr @next, align 8, !tbaa !7
  %2 = lshr i64 %1, 16
  %3 = trunc i64 %2 to i32
  %4 = urem i32 %3, 32767
  %5 = add nuw nsw i32 %4, 1
  ret i32 %5
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

1:                                                ; preds = %89, %0
  %2 = phi i32 [ 0, %0 ], [ %92, %89 ]
  %3 = tail call noalias dereferenceable_or_null(2000004) ptr @malloc(i64 noundef 2000004) #7
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
  %35 = call i64 @_wyvern_slice_main__556358876()
  %36 = lshr i64 %35, 16
  %37 = trunc i64 %36 to i32
  %38 = urem i32 %37, 32767
  %39 = add nuw nsw i32 %38, 1
  %40 = sitofp i32 %39 to double
  %41 = fmul double %40, 0x3F00000000000000
  %42 = fmul double %41, 5.000000e+05
  %43 = fptosi double %42 to i32
  %44 = icmp eq i32 %43, 500000
  %45 = add nsw i32 %43, 1
  %46 = sext i1 %44 to i32
  %47 = add nsw i32 %45, %46
  store i32 %47, ptr %3, align 4, !tbaa !11
  br label %48

48:                                               ; preds = %48, %34
  %49 = phi i64 [ %71, %48 ], [ 500000, %34 ]
  %50 = phi i64 [ %54, %48 ], [ %35, %34 ]
  %51 = add nuw nsw i64 %49, 1
  %52 = uitofp i64 %51 to double
  %53 = mul i64 %50, 1103515245
  %54 = add i64 %53, 12345
  %55 = lshr i64 %54, 16
  %56 = trunc i64 %55 to i32
  %57 = urem i32 %56, 32767
  %58 = add nuw nsw i32 %57, 1
  %59 = sitofp i32 %58 to double
  %60 = fmul double %59, 0x3F00000000000000
  %61 = fmul double %60, %52
  %62 = fptosi double %61 to i32
  %63 = sext i32 %62 to i64
  %64 = icmp eq i64 %51, %63
  %65 = sext i1 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = getelementptr inbounds i32, ptr %3, i64 %49
  %68 = load i32, ptr %67, align 4, !tbaa !11
  %69 = getelementptr inbounds i32, ptr %3, i64 %66
  %70 = load i32, ptr %69, align 4, !tbaa !11
  store i32 %70, ptr %67, align 4, !tbaa !11
  store i32 %68, ptr %69, align 4, !tbaa !11
  %71 = add nsw i64 %49, -1
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %48, !llvm.loop !17

73:                                               ; preds = %48
  %.lcssa = phi i64 [ %54, %48 ]
  store i64 %.lcssa, ptr @next, align 8, !tbaa !7
  br label %74

74:                                               ; preds = %86, %73
  %75 = phi i32 [ 0, %73 ], [ %87, %86 ]
  br label %76

76:                                               ; preds = %76, %74
  %77 = phi i64 [ %79, %76 ], [ 0, %74 ]
  %78 = phi i32 [ %84, %76 ], [ 0, %74 ]
  %79 = add nuw nsw i64 %77, 1
  %80 = getelementptr inbounds i32, ptr %3, i64 %77
  %81 = load i32, ptr %80, align 4, !tbaa !11
  %82 = xor i32 %81, %78
  %83 = trunc i64 %79 to i32
  %84 = xor i32 %82, %83
  %85 = icmp eq i64 %79, 500001
  br i1 %85, label %86, label %76, !llvm.loop !18

86:                                               ; preds = %76
  %.lcssa1 = phi i32 [ %84, %76 ]
  %87 = add nuw nsw i32 %75, 1
  %88 = icmp eq i32 %87, 200
  br i1 %88, label %89, label %74, !llvm.loop !19

89:                                               ; preds = %86
  %.lcssa1.lcssa = phi i32 [ %.lcssa1, %86 ]
  %90 = xor i32 %.lcssa1.lcssa, 500001
  tail call void @free(ptr noundef nonnull %3) #8
  %91 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %90) #9
  %92 = add nuw nsw i32 %2, 1
  %93 = icmp eq i32 %92, 5
  br i1 %93, label %94, label %1, !llvm.loop !20

94:                                               ; preds = %89
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize willreturn
define internal i64 @_wyvern_slice_main__556358876() #6 {
sliceclone_:
  %0 = load i64, ptr @next, align 8, !tbaa !7
  %1 = mul i64 %0, 1103515245
  %2 = add i64 %1, 12345
  ret i64 %2
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind optsize willreturn "Daedalus"="1" }
attributes #7 = { nounwind optsize allocsize(0) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

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
