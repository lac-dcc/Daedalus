; ModuleID = 'Shootout-hash.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ht_ht = type { i32, ptr, i32, ptr, i32 }
%struct.ht_node = type { ptr, i32, ptr }

@.str = private unnamed_addr constant [15 x i8] c"malloc ht_node\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"strdup newkey\00", align 1
@ht_prime_list = internal unnamed_addr constant [28 x i64] [i64 53, i64 97, i64 193, i64 389, i64 769, i64 1543, i64 3079, i64 6151, i64 12289, i64 24593, i64 49157, i64 98317, i64 196613, i64 393241, i64 786433, i64 1572869, i64 3145739, i64 6291469, i64 12582917, i64 25165843, i64 50331653, i64 100663319, i64 201326611, i64 402653189, i64 805306457, i64 1610612741, i64 3221225473, i64 4294967291], align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [32 x i8], align 16
  %4 = icmp eq i32 %0, 2
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  %6 = tail call fastcc ptr @ht_create(i32 noundef 3500000) #12
  br label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = tail call i32 @atoi(ptr nocapture noundef %9) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  %11 = tail call fastcc ptr @ht_create(i32 noundef %10) #12
  %12 = icmp slt i32 %10, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = load i32, ptr %11, align 8, !tbaa !11
  br label %110

15:                                               ; preds = %7, %5
  %16 = phi ptr [ %6, %5 ], [ %11, %7 ]
  %17 = phi i32 [ 3500000, %5 ], [ %10, %7 ]
  %18 = getelementptr inbounds %struct.ht_ht, ptr %16, i64 0, i32 1
  %19 = getelementptr inbounds %struct.ht_ht, ptr %16, i64 0, i32 4
  br label %20

20:                                               ; preds = %64, %15
  %21 = phi i32 [ 1, %15 ], [ %67, %64 ]
  %22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %21) #14
  %23 = load i8, ptr %3, align 16, !tbaa !14
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %25, %20
  %26 = phi i8 [ %33, %25 ], [ %23, %20 ]
  %27 = phi i64 [ %31, %25 ], [ 0, %20 ]
  %28 = phi ptr [ %32, %25 ], [ %3, %20 ]
  %29 = mul i64 %27, 5
  %30 = sext i8 %26 to i64
  %31 = add i64 %29, %30
  %32 = getelementptr inbounds i8, ptr %28, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !14
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %25, !llvm.loop !15

35:                                               ; preds = %25, %20
  %36 = phi i64 [ 0, %20 ], [ %31, %25 ]
  %37 = load i32, ptr %16, align 8, !tbaa !11
  %38 = sext i32 %37 to i64
  %39 = urem i64 %36, %38
  %40 = load ptr, ptr %18, align 8, !tbaa !17
  %41 = shl i64 %39, 32
  %42 = ashr exact i64 %41, 32
  %43 = getelementptr inbounds ptr, ptr %40, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !7
  %45 = icmp eq ptr %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %51, %35
  %47 = phi ptr [ %53, %51 ], [ %44, %35 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !18
  %49 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %48) #13
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.ht_node, ptr %47, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !7
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %46, !llvm.loop !20

55:                                               ; preds = %51
  %.lcssa = phi ptr [ %47, %51 ]
  %56 = getelementptr inbounds %struct.ht_node, ptr %.lcssa, i64 0, i32 2
  %57 = load i32, ptr %19, align 8, !tbaa !21
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %19, align 8, !tbaa !21
  %59 = call fastcc ptr @ht_node_create(ptr noundef nonnull %3) #12
  store ptr %59, ptr %56, align 8, !tbaa !22
  br label %64

60:                                               ; preds = %35
  %61 = load i32, ptr %19, align 8, !tbaa !21
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %19, align 8, !tbaa !21
  %63 = call fastcc ptr @ht_node_create(ptr noundef nonnull %3) #12
  store ptr %63, ptr %43, align 8, !tbaa !7
  br label %64

64:                                               ; preds = %60, %55, %46
  %65 = phi ptr [ %59, %55 ], [ %63, %60 ], [ %47, %46 ]
  %66 = getelementptr inbounds %struct.ht_node, ptr %65, i64 0, i32 1
  store i32 %21, ptr %66, align 8, !tbaa !23
  %67 = add nuw i32 %21, 1
  %68 = icmp eq i32 %21, %17
  br i1 %68, label %69, label %20, !llvm.loop !24

69:                                               ; preds = %105, %64
  %70 = phi i32 [ %108, %105 ], [ %17, %64 ]
  %71 = phi i32 [ %107, %105 ], [ 0, %64 ]
  %72 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %70) #14
  %73 = load i8, ptr %3, align 16, !tbaa !14
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %75, %69
  %76 = phi i8 [ %83, %75 ], [ %73, %69 ]
  %77 = phi i64 [ %81, %75 ], [ 0, %69 ]
  %78 = phi ptr [ %82, %75 ], [ %3, %69 ]
  %79 = mul i64 %77, 5
  %80 = sext i8 %76 to i64
  %81 = add i64 %79, %80
  %82 = getelementptr inbounds i8, ptr %78, i64 1
  %83 = load i8, ptr %82, align 1, !tbaa !14
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %75, !llvm.loop !15

85:                                               ; preds = %75, %69
  %86 = phi i64 [ 0, %69 ], [ %81, %75 ]
  %87 = load i32, ptr %16, align 8, !tbaa !11
  %88 = sext i32 %87 to i64
  %89 = urem i64 %86, %88
  %90 = load ptr, ptr %18, align 8, !tbaa !17
  %91 = shl i64 %89, 32
  %92 = ashr exact i64 %91, 32
  %93 = getelementptr inbounds ptr, ptr %90, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !7
  %95 = icmp eq ptr %94, null
  br i1 %95, label %105, label %96

96:                                               ; preds = %101, %85
  %97 = phi ptr [ %103, %101 ], [ %94, %85 ]
  %98 = load ptr, ptr %97, align 8, !tbaa !18
  %99 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %98) #13
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.ht_node, ptr %97, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !7
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %96, !llvm.loop !25

105:                                              ; preds = %101, %96, %85
  %106 = phi i32 [ 0, %85 ], [ 0, %101 ], [ 1, %96 ]
  %107 = add nuw nsw i32 %106, %71
  %108 = add nsw i32 %70, -1
  %109 = icmp sgt i32 %70, 1
  br i1 %109, label %69, label %110, !llvm.loop !26

110:                                              ; preds = %105, %13
  %111 = phi i32 [ %14, %13 ], [ %87, %105 ]
  %112 = phi ptr [ %11, %13 ], [ %16, %105 ]
  %113 = phi i32 [ 0, %13 ], [ %107, %105 ]
  %114 = icmp sgt i32 %111, 0
  br i1 %114, label %115, label %137

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.ht_ht, ptr %112, i64 0, i32 1
  br label %117

117:                                              ; preds = %132, %115
  %118 = phi i32 [ %111, %115 ], [ %133, %132 ]
  %119 = phi i64 [ 0, %115 ], [ %134, %132 ]
  %120 = load ptr, ptr %116, align 8, !tbaa !17
  %121 = getelementptr inbounds ptr, ptr %120, i64 %119
  %122 = load ptr, ptr %121, align 8, !tbaa !7
  %123 = icmp eq ptr %122, null
  br i1 %123, label %132, label %124

124:                                              ; preds = %124, %117
  %125 = phi ptr [ %127, %124 ], [ %122, %117 ]
  %126 = getelementptr inbounds %struct.ht_node, ptr %125, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !22
  %128 = load ptr, ptr %125, align 8, !tbaa !18
  tail call void @free(ptr noundef %128) #14
  tail call void @free(ptr noundef nonnull %125) #14
  %129 = icmp eq ptr %127, null
  br i1 %129, label %130, label %124, !llvm.loop !27

130:                                              ; preds = %124
  %131 = load i32, ptr %112, align 8, !tbaa !11
  br label %132

132:                                              ; preds = %130, %117
  %133 = phi i32 [ %131, %130 ], [ %118, %117 ]
  %134 = add nuw nsw i64 %119, 1
  %135 = sext i32 %133 to i64
  %136 = icmp slt i64 %134, %135
  br i1 %136, label %117, label %137, !llvm.loop !28

137:                                              ; preds = %132, %110
  %138 = getelementptr inbounds %struct.ht_ht, ptr %112, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !17
  tail call void @free(ptr noundef %139) #14
  tail call void @free(ptr noundef nonnull %112) #14
  %140 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %113) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define internal fastcc noalias ptr @ht_create(i32 noundef %0) unnamed_addr #2 {
  %2 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #15
  %3 = sext i32 %0 to i64
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i64 [ %9, %4 ], [ 0, %1 ]
  %6 = getelementptr inbounds [28 x i64], ptr @ht_prime_list, i64 0, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !29
  %8 = icmp ult i64 %7, %3
  %9 = add nuw i64 %5, 1
  br i1 %8, label %4, label %10, !llvm.loop !31

10:                                               ; preds = %4
  %.lcssa = phi i64 [ %7, %4 ]
  %11 = trunc i64 %.lcssa to i32
  store i32 %11, ptr %2, align 8, !tbaa !11
  %12 = shl i64 %.lcssa, 32
  %13 = ashr exact i64 %12, 32
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 8) #16
  %15 = getelementptr inbounds %struct.ht_ht, ptr %2, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !17
  %16 = getelementptr inbounds %struct.ht_ht, ptr %2, i64 0, i32 2
  store i32 0, ptr %16, align 8, !tbaa !32
  %17 = getelementptr inbounds %struct.ht_ht, ptr %2, i64 0, i32 3
  store ptr null, ptr %17, align 8, !tbaa !33
  %18 = getelementptr inbounds %struct.ht_ht, ptr %2, i64 0, i32 4
  store i32 0, ptr %18, align 8, !tbaa !21
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal fastcc noalias ptr @ht_node_create(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @perror(ptr noundef nonnull @.str) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

5:                                                ; preds = %1
  %6 = tail call noalias ptr @strdup(ptr noundef %0) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @perror(ptr noundef nonnull @.str.1) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

9:                                                ; preds = %5
  store ptr %6, ptr %2, align 8, !tbaa !18
  %10 = getelementptr inbounds %struct.ht_node, ptr %2, i64 0, i32 1
  store i32 0, ptr %10, align 8, !tbaa !23
  %11 = getelementptr inbounds %struct.ht_node, ptr %2, i64 0, i32 2
  store ptr null, ptr %11, align 8, !tbaa !22
  ret ptr %2
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize willreturn memory(read) }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind optsize allocsize(0) }
attributes #16 = { nounwind optsize allocsize(0,1) }
attributes #17 = { cold optsize }
attributes #18 = { noreturn nounwind optsize }

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
!11 = !{!12, !13, i64 0}
!12 = !{!"ht_ht", !13, i64 0, !8, i64 8, !13, i64 16, !8, i64 24, !13, i64 32}
!13 = !{!"int", !9, i64 0}
!14 = !{!9, !9, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!12, !8, i64 8}
!18 = !{!19, !8, i64 0}
!19 = !{!"ht_node", !8, i64 0, !13, i64 8, !8, i64 16}
!20 = distinct !{!20, !16}
!21 = !{!12, !13, i64 32}
!22 = !{!19, !8, i64 16}
!23 = !{!19, !13, i64 8}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = !{!30, !30, i64 0}
!30 = !{!"long", !9, i64 0}
!31 = distinct !{!31, !16}
!32 = !{!12, !13, i64 16}
!33 = !{!12, !8, i64 24}
