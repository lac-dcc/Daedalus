; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Shootout/Shootout-hash.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ht_node = type { ptr, i32, ptr }
%struct.ht_ht = type { i32, ptr, i32, ptr, i32 }

@.str = private unnamed_addr constant [15 x i8] c"malloc ht_node\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"strdup newkey\00", align 1
@ht_prime_list = internal unnamed_addr constant [28 x i64] [i64 53, i64 97, i64 193, i64 389, i64 769, i64 1543, i64 3079, i64 6151, i64 12289, i64 24593, i64 49157, i64 98317, i64 196613, i64 393241, i64 786433, i64 1572869, i64 3145739, i64 6291469, i64 12582917, i64 25165843, i64 50331653, i64 100663319, i64 201326611, i64 402653189, i64 805306457, i64 1610612741, i64 3221225473, i64 4294967291], align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @ht_node_create(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @perror(ptr noundef nonnull @.str) #12
  tail call void @exit(i32 noundef 1) #13
  unreachable

5:                                                ; preds = %1
  %6 = tail call noalias ptr @strdup(ptr noundef %0) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @perror(ptr noundef nonnull @.str.1) #12
  tail call void @exit(i32 noundef 1) #13
  unreachable

9:                                                ; preds = %5
  store ptr %6, ptr %2, align 8, !tbaa !7
  %10 = getelementptr inbounds %struct.ht_node, ptr %2, i64 0, i32 1
  store i32 0, ptr %10, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.ht_node, ptr %2, i64 0, i32 2
  store ptr null, ptr %11, align 8, !tbaa !14
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define internal noalias ptr @ht_create(i32 noundef %0) #5 {
  %2 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #11
  %3 = sext i32 %0 to i64
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i64 [ %9, %4 ], [ 0, %1 ]
  %6 = getelementptr inbounds [28 x i64], ptr @ht_prime_list, i64 0, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !15
  %8 = icmp ult i64 %7, %3
  %9 = add nuw i64 %5, 1
  br i1 %8, label %4, label %10, !llvm.loop !17

10:                                               ; preds = %4
  %.lcssa = phi i64 [ %7, %4 ]
  %11 = trunc i64 %.lcssa to i32
  store i32 %11, ptr %2, align 8, !tbaa !19
  %12 = shl i64 %.lcssa, 32
  %13 = ashr exact i64 %12, 32
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 8) #15
  %15 = getelementptr inbounds %struct.ht_ht, ptr %2, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !21
  %16 = getelementptr inbounds %struct.ht_ht, ptr %2, i64 0, i32 2
  store i32 0, ptr %16, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.ht_ht, ptr %2, i64 0, i32 3
  store ptr null, ptr %17, align 8, !tbaa !23
  %18 = getelementptr inbounds %struct.ht_ht, ptr %2, i64 0, i32 4
  store i32 0, ptr %18, align 8, !tbaa !24
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal void @ht_destroy(ptr nocapture noundef %0) #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !19
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %26

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ht_ht, ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %21, %4
  %7 = phi i32 [ %2, %4 ], [ %22, %21 ]
  %8 = phi i64 [ 0, %4 ], [ %23, %21 ]
  %9 = load ptr, ptr %5, align 8, !tbaa !21
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %13, %6
  %14 = phi ptr [ %16, %13 ], [ %11, %6 ]
  %15 = getelementptr inbounds %struct.ht_node, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = load ptr, ptr %14, align 8, !tbaa !7
  tail call void @free(ptr noundef %17) #14
  tail call void @free(ptr noundef nonnull %14) #14
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %13, !llvm.loop !26

19:                                               ; preds = %13
  %20 = load i32, ptr %0, align 8, !tbaa !19
  br label %21

21:                                               ; preds = %19, %6
  %22 = phi i32 [ %20, %19 ], [ %7, %6 ]
  %23 = add nuw nsw i64 %8, 1
  %24 = sext i32 %22 to i64
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %6, label %26, !llvm.loop !27

26:                                               ; preds = %21, %1
  %27 = getelementptr inbounds %struct.ht_ht, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !21
  tail call void @free(ptr noundef %28) #14
  tail call void @free(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [32 x i8], align 16
  %4 = icmp eq i32 %0, 2
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %6 = tail call ptr @ht_create(i32 noundef 3500000) #17
  br label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !25
  %10 = tail call i32 @atoi(ptr nocapture noundef %9) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %11 = tail call ptr @ht_create(i32 noundef %10) #17
  %12 = icmp slt i32 %10, 1
  br i1 %12, label %112, label %13

13:                                               ; preds = %7, %5
  %14 = phi ptr [ %6, %5 ], [ %11, %7 ]
  %15 = phi i32 [ 3500000, %5 ], [ %10, %7 ]
  %16 = getelementptr inbounds %struct.ht_ht, ptr %14, i64 0, i32 1
  %17 = getelementptr inbounds %struct.ht_ht, ptr %14, i64 0, i32 4
  br label %22

18:                                               ; preds = %66
  %19 = icmp sgt i32 %15, 0
  br i1 %19, label %20, label %112

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.ht_ht, ptr %14, i64 0, i32 1
  br label %71

22:                                               ; preds = %66, %13
  %23 = phi i32 [ 1, %13 ], [ %69, %66 ]
  %24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %23) #14
  %25 = load i8, ptr %3, align 16, !tbaa !28
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %27, %22
  %28 = phi i8 [ %35, %27 ], [ %25, %22 ]
  %29 = phi i64 [ %33, %27 ], [ 0, %22 ]
  %30 = phi ptr [ %34, %27 ], [ %3, %22 ]
  %31 = mul i64 %29, 5
  %32 = sext i8 %28 to i64
  %33 = add i64 %31, %32
  %34 = getelementptr inbounds i8, ptr %30, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !28
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %27, !llvm.loop !29

37:                                               ; preds = %27, %22
  %38 = phi i64 [ 0, %22 ], [ %33, %27 ]
  %39 = load i32, ptr %14, align 8, !tbaa !19
  %40 = sext i32 %39 to i64
  %41 = urem i64 %38, %40
  %42 = load ptr, ptr %16, align 8, !tbaa !21
  %43 = shl i64 %41, 32
  %44 = ashr exact i64 %43, 32
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !25
  %47 = icmp eq ptr %46, null
  br i1 %47, label %62, label %48

48:                                               ; preds = %53, %37
  %49 = phi ptr [ %55, %53 ], [ %46, %37 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !7
  %51 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %50) #18
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ht_node, ptr %49, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !25
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %48, !llvm.loop !30

57:                                               ; preds = %53
  %.lcssa = phi ptr [ %49, %53 ]
  %58 = getelementptr inbounds %struct.ht_node, ptr %.lcssa, i64 0, i32 2
  %59 = load i32, ptr %17, align 8, !tbaa !24
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %17, align 8, !tbaa !24
  %61 = call ptr @ht_node_create(ptr noundef nonnull %3) #17
  store ptr %61, ptr %58, align 8, !tbaa !14
  br label %66

62:                                               ; preds = %37
  %63 = load i32, ptr %17, align 8, !tbaa !24
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %17, align 8, !tbaa !24
  %65 = call ptr @ht_node_create(ptr noundef nonnull %3) #17
  store ptr %65, ptr %45, align 8, !tbaa !25
  br label %66

66:                                               ; preds = %62, %57, %48
  %67 = phi ptr [ %61, %57 ], [ %65, %62 ], [ %49, %48 ]
  %68 = getelementptr inbounds %struct.ht_node, ptr %67, i64 0, i32 1
  store i32 %23, ptr %68, align 8, !tbaa !13
  %69 = add nuw i32 %23, 1
  %70 = icmp eq i32 %23, %15
  br i1 %70, label %18, label %22, !llvm.loop !31

71:                                               ; preds = %107, %20
  %72 = phi i32 [ %15, %20 ], [ %110, %107 ]
  %73 = phi i32 [ 0, %20 ], [ %109, %107 ]
  %74 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %72) #14
  %75 = load i8, ptr %3, align 16, !tbaa !28
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %77, %71
  %78 = phi i8 [ %85, %77 ], [ %75, %71 ]
  %79 = phi i64 [ %83, %77 ], [ 0, %71 ]
  %80 = phi ptr [ %84, %77 ], [ %3, %71 ]
  %81 = mul i64 %79, 5
  %82 = sext i8 %78 to i64
  %83 = add i64 %81, %82
  %84 = getelementptr inbounds i8, ptr %80, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !28
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %77, !llvm.loop !29

87:                                               ; preds = %77, %71
  %88 = phi i64 [ 0, %71 ], [ %83, %77 ]
  %89 = load i32, ptr %14, align 8, !tbaa !19
  %90 = sext i32 %89 to i64
  %91 = urem i64 %88, %90
  %92 = load ptr, ptr %21, align 8, !tbaa !21
  %93 = shl i64 %91, 32
  %94 = ashr exact i64 %93, 32
  %95 = getelementptr inbounds ptr, ptr %92, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !25
  %97 = icmp eq ptr %96, null
  br i1 %97, label %107, label %98

98:                                               ; preds = %103, %87
  %99 = phi ptr [ %105, %103 ], [ %96, %87 ]
  %100 = load ptr, ptr %99, align 8, !tbaa !7
  %101 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %100) #18
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.ht_node, ptr %99, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !25
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %98, !llvm.loop !32

107:                                              ; preds = %103, %98, %87
  %108 = phi i32 [ 0, %87 ], [ 1, %98 ], [ 0, %103 ]
  %109 = add nuw nsw i32 %108, %73
  %110 = add nsw i32 %72, -1
  %111 = icmp sgt i32 %72, 1
  br i1 %111, label %71, label %112, !llvm.loop !33

112:                                              ; preds = %107, %18, %7
  %113 = phi ptr [ %14, %18 ], [ %11, %7 ], [ %14, %107 ]
  %114 = phi i32 [ 0, %18 ], [ 0, %7 ], [ %109, %107 ]
  tail call void @ht_destroy(ptr noundef %113) #17
  %115 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %114) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind optsize allocsize(0) }
attributes #12 = { cold optsize }
attributes #13 = { noreturn nounwind optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind optsize allocsize(0,1) }
attributes #16 = { nounwind }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize willreturn memory(read) }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !9, i64 0}
!8 = !{!"ht_node", !9, i64 0, !12, i64 8, !9, i64 16}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"int", !10, i64 0}
!13 = !{!8, !12, i64 8}
!14 = !{!8, !9, i64 16}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !10, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!20, !12, i64 0}
!20 = !{!"ht_ht", !12, i64 0, !9, i64 8, !12, i64 16, !9, i64 24, !12, i64 32}
!21 = !{!20, !9, i64 8}
!22 = !{!20, !12, i64 16}
!23 = !{!20, !9, i64 24}
!24 = !{!20, !12, i64 32}
!25 = !{!9, !9, i64 0}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !18}
!28 = !{!10, !10, i64 0}
!29 = distinct !{!29, !18}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
