; ModuleID = '8b10b.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lookupTable5B = internal unnamed_addr constant [64 x i32] [i32 786816, i32 655778, i32 786528, i32 786624, i32 786592, i32 65698, i32 65730, i32 65760, i32 786720, i32 65826, i32 65858, i32 65888, i32 65922, i32 65952, i32 65984, i32 655840, i32 786976, i32 66082, i32 66114, i32 66144, i32 66178, i32 66208, i32 66240, i32 656096, i32 66306, i32 66336, i32 66368, i32 656224, i32 131968, i32 656288, i32 787072, i32 656034, i32 786816, i32 655778, i32 786528, i32 786624, i32 786592, i32 65698, i32 65730, i32 655586, i32 786720, i32 65826, i32 65858, i32 65888, i32 65922, i32 65952, i32 65984, i32 655840, i32 786976, i32 66082, i32 66114, i32 66144, i32 66178, i32 66208, i32 66240, i32 656096, i32 66306, i32 66336, i32 66368, i32 656224, i32 131968, i32 656288, i32 787072, i32 656034], align 16
@lookupTable3B = internal unnamed_addr constant [16 x i32] [i32 786440, i32 786436, i32 65545, i32 65548, i32 65553, i32 65556, i32 131096, i32 655388, i32 786440, i32 786436, i32 262153, i32 262156, i32 262161, i32 262164, i32 131096, i32 655373], align 16
@disparity0 = internal unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [48 x i8] c"Usage: input_name output_0_name number_of_bytes\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%8.8X\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp eq i32 %0, 3
  br i1 %3, label %4, label %98

4:                                                ; preds = %2
  %5 = getelementptr inbounds ptr, ptr %1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !7
  %7 = tail call i32 @atoi(ptr nocapture noundef %6) #6
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = sext i32 %7 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call noalias ptr @malloc(i64 noundef %11) #7
  %13 = getelementptr inbounds i32, ptr %12, i64 %10
  %14 = tail call noalias ptr @fopen(ptr noundef %9, ptr noundef nonnull @.str) #8
  %15 = tail call i64 @fread(ptr noundef %12, i64 noundef %10, i64 noundef 4, ptr noundef %14) #8
  %16 = tail call i32 @fclose(ptr noundef %14) #8
  %17 = icmp sgt i32 %7, 0
  br i1 %17, label %18, label %97

18:                                               ; preds = %4
  %19 = zext i32 %7 to i64
  %20 = load i32, ptr @disparity0, align 4, !tbaa !11
  br label %21

21:                                               ; preds = %84, %18
  %22 = phi i32 [ %20, %18 ], [ %.lcssa, %84 ]
  %23 = phi i32 [ 0, %18 ], [ %85, %84 ]
  br label %24

24:                                               ; preds = %77, %21
  %25 = phi i32 [ %22, %21 ], [ %78, %77 ]
  %26 = phi i64 [ 0, %21 ], [ %82, %77 ]
  %27 = getelementptr inbounds i32, ptr %12, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !11
  %29 = lshr i32 %28, 8
  %30 = lshr i32 %28, 3
  %31 = and i32 %30, 31
  %32 = shl nuw nsw i32 %29, 5
  %33 = or i32 %31, %32
  %34 = and i32 %28, 7
  %35 = shl nuw nsw i32 %29, 3
  %36 = or i32 %35, %34
  %37 = zext i32 %33 to i64
  %38 = getelementptr inbounds [64 x i32], ptr @lookupTable5B, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !11
  %40 = zext i32 %36 to i64
  %41 = getelementptr inbounds [16 x i32], ptr @lookupTable3B, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !11
  %43 = lshr i64 -540007956238728929, %37
  %44 = and i64 %43, 1
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %24
  %47 = and i32 %39, 994
  br label %60

48:                                               ; preds = %24
  %49 = lshr i32 %39, 18
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %25, %50
  %52 = and i32 %39, 994
  %53 = xor i32 %52, 994
  %54 = select i1 %51, i32 %52, i32 %53
  %55 = lshr i64 1692929461114011360, %37
  %56 = and i64 %55, 1
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = xor i32 %25, %58
  br label %60

60:                                               ; preds = %48, %46
  %61 = phi i32 [ %25, %46 ], [ %59, %48 ]
  %62 = phi i32 [ %47, %46 ], [ %54, %48 ]
  %63 = add nsw i64 %40, -6
  %64 = icmp ult i64 %63, -4
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = and i32 %42, 29
  br label %77

67:                                               ; preds = %60
  %68 = lshr i32 %42, 18
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %61, %69
  %71 = and i32 %42, 29
  %72 = xor i32 %71, 29
  %73 = select i1 %70, i32 %71, i32 %72
  %74 = lshr i32 %42, 19
  %75 = and i32 %74, 1
  %76 = xor i32 %61, %75
  br label %77

77:                                               ; preds = %67, %65
  %78 = phi i32 [ %61, %65 ], [ %76, %67 ]
  %79 = phi i32 [ %66, %65 ], [ %73, %67 ]
  %80 = or i32 %79, %62
  %81 = getelementptr inbounds i32, ptr %13, i64 %26
  store i32 %80, ptr %81, align 4, !tbaa !11
  %82 = add nuw nsw i64 %26, 1
  %83 = icmp eq i64 %82, %19
  br i1 %83, label %84, label %24, !llvm.loop !13

84:                                               ; preds = %77
  %.lcssa = phi i32 [ %78, %77 ]
  %85 = add nuw nsw i32 %23, 1
  %86 = icmp eq i32 %85, %7
  br i1 %86, label %87, label %21, !llvm.loop !15

87:                                               ; preds = %84
  %.lcssa.lcssa = phi i32 [ %.lcssa, %84 ]
  store i32 %.lcssa.lcssa, ptr @disparity0, align 4, !tbaa !11
  %88 = load ptr, ptr @stdout, align 8, !tbaa !7
  br label %89

89:                                               ; preds = %89, %87
  %90 = phi i64 [ %94, %89 ], [ 0, %87 ]
  %91 = getelementptr inbounds i32, ptr %13, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !11
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef nonnull @.str.1, i32 noundef %92) #8
  %94 = add nuw i64 %90, 128
  %95 = trunc i64 %94 to i32
  %96 = icmp sgt i32 %7, %95
  br i1 %96, label %89, label %97, !llvm.loop !16

97:                                               ; preds = %89, %4
  tail call void @free(ptr noundef %12) #9
  br label %100

98:                                               ; preds = %2
  %99 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %100

100:                                              ; preds = %98, %97
  %101 = phi i32 [ 0, %97 ], [ -1, %98 ]
  ret i32 %101
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #5

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind optsize willreturn memory(read) }
attributes #7 = { nounwind optsize allocsize(0) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }

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
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
