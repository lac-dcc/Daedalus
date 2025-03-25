; ModuleID = 'test3.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Total number of characters in argv: %d\0A\00", align 1

; Function Attrs: nofree nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
BB_0:
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %BB_01, label %BB_02

BB_01:                                            ; preds = %BB_0
  %3 = zext i32 %0 to i64
  br label %BB_03

BB_02:                                            ; preds = %BB_04, %BB_0
  %4 = phi i32 [ 0, %BB_0 ], [ %12, %BB_04 ]
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %4) #2
  ret i32 0

BB_03:                                            ; preds = %BB_04, %BB_01
  %6 = phi i64 [ 0, %BB_01 ], [ %15, %BB_04 ]
  %7 = phi i32 [ 0, %BB_01 ], [ %12, %BB_04 ]
  %8 = getelementptr inbounds ptr, ptr %1, i64 %6
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = load i8, ptr %9, align 1, !tbaa !11
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %BB_04, label %BB_05

BB_04:                                            ; preds = %BB_05, %BB_03
  %12 = phi i32 [ %7, %BB_03 ], [ %19, %BB_05 ]
  %13 = sub nsw i32 %12, %7
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %13) #2
  %15 = add nuw nsw i64 %6, 1
  %16 = icmp eq i64 %15, %3
  br i1 %16, label %BB_02, label %BB_03, !llvm.loop !12

BB_05:                                            ; preds = %BB_05, %BB_03
  %17 = phi ptr [ %20, %BB_05 ], [ %9, %BB_03 ]
  %18 = phi i32 [ %19, %BB_05 ], [ %7, %BB_03 ]
  %19 = add nsw i32 %18, 1
  %20 = getelementptr inbounds i8, ptr %17, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !11
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %BB_04, label %BB_05, !llvm.loop !14
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

attributes #0 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize }

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
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
