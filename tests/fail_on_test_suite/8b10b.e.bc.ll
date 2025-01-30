; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/VersaBench/8b10b/8b10b.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lookupTable5B = internal global [64 x i32] [i32 786816, i32 655778, i32 786528, i32 786624, i32 786592, i32 65698, i32 65730, i32 65760, i32 786720, i32 65826, i32 65858, i32 65888, i32 65922, i32 65952, i32 65984, i32 655840, i32 786976, i32 66082, i32 66114, i32 66144, i32 66178, i32 66208, i32 66240, i32 656096, i32 66306, i32 66336, i32 66368, i32 656224, i32 131968, i32 656288, i32 787072, i32 656034, i32 786816, i32 655778, i32 786528, i32 786624, i32 786592, i32 65698, i32 65730, i32 655586, i32 786720, i32 65826, i32 65858, i32 65888, i32 65922, i32 65952, i32 65984, i32 655840, i32 786976, i32 66082, i32 66114, i32 66144, i32 66178, i32 66208, i32 66240, i32 656096, i32 66306, i32 66336, i32 66368, i32 656224, i32 131968, i32 656288, i32 787072, i32 656034], align 16
@lookupTable3B = internal global [16 x i32] [i32 786440, i32 786436, i32 65545, i32 65548, i32 65553, i32 65556, i32 131096, i32 655388, i32 786440, i32 786436, i32 262153, i32 262156, i32 262161, i32 262164, i32 131096, i32 655373], align 16
@disparity0 = internal global i32 0, align 4
@disparity1 = internal global i32 1, align 4
@str = private unnamed_addr constant [48 x i8] c"Usage: input_name output_0_name number_of_bytes\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%8.8X\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @calcSetup() #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @calc(i32 noundef %0, i32 noundef %1) #1 {
  %3 = lshr i32 %0, 3
  %4 = and i32 %3, 31
  %5 = shl i32 %1, 5
  %6 = or i32 %4, %5
  %7 = and i32 %0, 7
  %8 = shl i32 %1, 3
  %9 = or i32 %8, %7
  %10 = zext i32 %6 to i64
  %11 = getelementptr inbounds [64 x i32], ptr @lookupTable5B, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !7
  %13 = zext i32 %9 to i64
  %14 = getelementptr inbounds [16 x i32], ptr @lookupTable3B, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !7
  %16 = and i32 %12, 65536
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = and i32 %12, 994
  %20 = load i32, ptr @disparity0, align 4, !tbaa !7
  br label %34

21:                                               ; preds = %2
  %22 = load i32, ptr @disparity0, align 4, !tbaa !7
  %23 = lshr i32 %12, 18
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %22, %24
  %26 = and i32 %12, 994
  %27 = xor i32 %26, 994
  %28 = select i1 %25, i32 %26, i32 %27
  %29 = and i32 %12, 524288
  %30 = icmp eq i32 %29, 0
  %31 = xor i32 %22, 1
  %32 = select i1 %30, i32 %22, i32 %31
  %33 = select i1 %30, i32 %22, i32 %31
  br label %34

34:                                               ; preds = %21, %18
  %35 = phi i32 [ %20, %18 ], [ %32, %21 ]
  %36 = phi i32 [ %20, %18 ], [ %33, %21 ]
  %37 = phi i32 [ %19, %18 ], [ %28, %21 ]
  store i32 %35, ptr @disparity1, align 4, !tbaa !7
  %38 = and i32 %15, 65536
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = and i32 %15, 29
  br label %52

42:                                               ; preds = %34
  %43 = lshr i32 %15, 18
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %36, %44
  %46 = and i32 %15, 29
  %47 = xor i32 %46, 29
  %48 = select i1 %45, i32 %46, i32 %47
  %49 = lshr i32 %15, 19
  %50 = and i32 %49, 1
  %51 = xor i32 %36, %50
  br label %52

52:                                               ; preds = %42, %40
  %53 = phi i32 [ %36, %40 ], [ %51, %42 ]
  %54 = phi i32 [ %41, %40 ], [ %48, %42 ]
  store i32 %53, ptr @disparity0, align 4, !tbaa !7
  %55 = or i32 %54, %37
  ret i32 %55
}

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = icmp eq i32 %0, 3
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  tail call void (...) @calcSetup() #8
  %5 = getelementptr inbounds ptr, ptr %1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = tail call i32 @atoi(ptr nocapture noundef %6) #9
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  tail call void @runTestbench(i32 noundef %7, ptr noundef %9, ptr noundef null) #8
  br label %12

10:                                               ; preds = %2
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ 0, %4 ], [ -1, %10 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal void @runTestbench(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #2 {
  %4 = sext i32 %0 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #10
  %7 = getelementptr inbounds i32, ptr %6, i64 %4
  %8 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str) #11
  %9 = tail call i64 @fread(ptr noundef %6, i64 noundef %4, i64 noundef 4, ptr noundef %8) #11
  %10 = tail call i32 @fclose(ptr noundef %8) #11
  %11 = icmp sgt i32 %0, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %3
  %13 = zext i32 %0 to i64
  br label %14

14:                                               ; preds = %26, %12
  %15 = phi i32 [ 0, %12 ], [ %27, %26 ]
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %24, %16 ]
  %18 = getelementptr inbounds i32, ptr %6, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !7
  %20 = and i32 %19, 255
  %21 = lshr i32 %19, 8
  %22 = tail call i32 @calc(i32 noundef %20, i32 noundef %21) #8
  %23 = getelementptr inbounds i32, ptr %7, i64 %17
  store i32 %22, ptr %23, align 4, !tbaa !7
  %24 = add nuw nsw i64 %17, 1
  %25 = icmp eq i64 %24, %13
  br i1 %25, label %26, label %16, !llvm.loop !13

26:                                               ; preds = %16
  %27 = add nuw nsw i32 %15, 1
  %28 = icmp eq i32 %27, %0
  br i1 %28, label %29, label %14, !llvm.loop !15

29:                                               ; preds = %26
  %30 = load ptr, ptr @stdout, align 8, !tbaa !11
  br i1 %11, label %31, label %39

31:                                               ; preds = %31, %29
  %32 = phi i64 [ %36, %31 ], [ 0, %29 ]
  %33 = getelementptr inbounds i32, ptr %7, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !7
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.1, i32 noundef %34) #11
  %36 = add nuw i64 %32, 128
  %37 = trunc i64 %36 to i32
  %38 = icmp slt i32 %37, %0
  br i1 %38, label %31, label %39, !llvm.loop !16

39:                                               ; preds = %31, %29, %3
  tail call void @free(ptr noundef %6) #8
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize willreturn memory(read) }
attributes #10 = { nounwind optsize allocsize(0) }
attributes #11 = { optsize }

!llvm.ident = !{!0, !0, !0}
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
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
