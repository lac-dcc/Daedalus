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
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  %6 = tail call fastcc ptr @ht_create(i32 noundef 3500000) #13
  br label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = tail call i32 @atoi(ptr nocapture noundef %9) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  %11 = tail call fastcc ptr @ht_create(i32 noundef %10) #13
  %12 = icmp slt i32 %10, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = load i32, ptr %11, align 8, !tbaa !11
  br label %106

15:                                               ; preds = %7, %5
  %16 = phi ptr [ %6, %5 ], [ %11, %7 ]
  %17 = phi i32 [ 3500000, %5 ], [ %10, %7 ]
  %18 = getelementptr inbounds %struct.ht_ht, ptr %16, i64 0, i32 1
  %19 = getelementptr inbounds %struct.ht_ht, ptr %16, i64 0, i32 4
  br label %20

20:                                               ; preds = %62, %15
  %21 = phi i32 [ 1, %15 ], [ %65, %62 ]
  %22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %21) #15
  %23 = load i8, ptr %3, align 16, !tbaa !14
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %25, %20
  %26 = phi i8 [ %31, %25 ], [ %23, %20 ]
  %27 = phi i64 [ %29, %25 ], [ 0, %20 ]
  %28 = phi ptr [ %30, %25 ], [ %3, %20 ]
  %29 = call i64 @_wyvern_slice_main__540096417(i8 %26, i64 %27)
  %30 = getelementptr inbounds i8, ptr %28, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !14
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %25, !llvm.loop !15

33:                                               ; preds = %25, %20
  %34 = phi i64 [ 0, %20 ], [ %29, %25 ]
  %35 = load i32, ptr %16, align 8, !tbaa !11
  %36 = sext i32 %35 to i64
  %37 = urem i64 %34, %36
  %38 = load ptr, ptr %18, align 8, !tbaa !17
  %39 = shl i64 %37, 32
  %40 = ashr exact i64 %39, 32
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !7
  %43 = icmp eq ptr %42, null
  br i1 %43, label %58, label %44

44:                                               ; preds = %49, %33
  %45 = phi ptr [ %51, %49 ], [ %42, %33 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !18
  %47 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %46) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.ht_node, ptr %45, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !7
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %44, !llvm.loop !20

53:                                               ; preds = %49
  %.lcssa = phi ptr [ %45, %49 ]
  %54 = getelementptr inbounds %struct.ht_node, ptr %.lcssa, i64 0, i32 2
  %55 = load i32, ptr %19, align 8, !tbaa !21
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %19, align 8, !tbaa !21
  %57 = call fastcc ptr @ht_node_create(ptr noundef nonnull %3) #13
  store ptr %57, ptr %54, align 8, !tbaa !22
  br label %62

58:                                               ; preds = %33
  %59 = load i32, ptr %19, align 8, !tbaa !21
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %19, align 8, !tbaa !21
  %61 = call fastcc ptr @ht_node_create(ptr noundef nonnull %3) #13
  store ptr %61, ptr %41, align 8, !tbaa !7
  br label %62

62:                                               ; preds = %58, %53, %44
  %63 = phi ptr [ %57, %53 ], [ %61, %58 ], [ %45, %44 ]
  %64 = getelementptr inbounds %struct.ht_node, ptr %63, i64 0, i32 1
  store i32 %21, ptr %64, align 8, !tbaa !23
  %65 = add nuw i32 %21, 1
  %66 = icmp eq i32 %21, %17
  br i1 %66, label %67, label %20, !llvm.loop !24

67:                                               ; preds = %101, %62
  %68 = phi i32 [ %104, %101 ], [ %17, %62 ]
  %69 = phi i32 [ %103, %101 ], [ 0, %62 ]
  %70 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %68) #15
  %71 = load i8, ptr %3, align 16, !tbaa !14
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %73, %67
  %74 = phi i8 [ %79, %73 ], [ %71, %67 ]
  %75 = phi i64 [ %77, %73 ], [ 0, %67 ]
  %76 = phi ptr [ %78, %73 ], [ %3, %67 ]
  %77 = call i64 @_wyvern_slice_main__540096417(i8 %74, i64 %75)
  %78 = getelementptr inbounds i8, ptr %76, i64 1
  %79 = load i8, ptr %78, align 1, !tbaa !14
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %73, !llvm.loop !15

81:                                               ; preds = %73, %67
  %82 = phi i64 [ 0, %67 ], [ %77, %73 ]
  %83 = load i32, ptr %16, align 8, !tbaa !11
  %84 = sext i32 %83 to i64
  %85 = urem i64 %82, %84
  %86 = load ptr, ptr %18, align 8, !tbaa !17
  %87 = shl i64 %85, 32
  %88 = ashr exact i64 %87, 32
  %89 = getelementptr inbounds ptr, ptr %86, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !7
  %91 = icmp eq ptr %90, null
  br i1 %91, label %101, label %92

92:                                               ; preds = %97, %81
  %93 = phi ptr [ %99, %97 ], [ %90, %81 ]
  %94 = load ptr, ptr %93, align 8, !tbaa !18
  %95 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %94) #14
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.ht_node, ptr %93, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !7
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %92, !llvm.loop !25

101:                                              ; preds = %97, %92, %81
  %102 = phi i32 [ 0, %81 ], [ 0, %97 ], [ 1, %92 ]
  %103 = add nuw nsw i32 %102, %69
  %104 = add nsw i32 %68, -1
  %105 = icmp sgt i32 %68, 1
  br i1 %105, label %67, label %106, !llvm.loop !26

106:                                              ; preds = %101, %13
  %107 = phi i32 [ %14, %13 ], [ %83, %101 ]
  %108 = phi ptr [ %11, %13 ], [ %16, %101 ]
  %109 = phi i32 [ 0, %13 ], [ %103, %101 ]
  %110 = icmp sgt i32 %107, 0
  br i1 %110, label %111, label %133

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.ht_ht, ptr %108, i64 0, i32 1
  br label %113

113:                                              ; preds = %128, %111
  %114 = phi i32 [ %107, %111 ], [ %129, %128 ]
  %115 = phi i64 [ 0, %111 ], [ %130, %128 ]
  %116 = load ptr, ptr %112, align 8, !tbaa !17
  %117 = getelementptr inbounds ptr, ptr %116, i64 %115
  %118 = load ptr, ptr %117, align 8, !tbaa !7
  %119 = icmp eq ptr %118, null
  br i1 %119, label %128, label %120

120:                                              ; preds = %120, %113
  %121 = phi ptr [ %123, %120 ], [ %118, %113 ]
  %122 = getelementptr inbounds %struct.ht_node, ptr %121, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !22
  %124 = load ptr, ptr %121, align 8, !tbaa !18
  tail call void @free(ptr noundef %124) #15
  tail call void @free(ptr noundef nonnull %121) #15
  %125 = icmp eq ptr %123, null
  br i1 %125, label %126, label %120, !llvm.loop !27

126:                                              ; preds = %120
  %127 = load i32, ptr %108, align 8, !tbaa !11
  br label %128

128:                                              ; preds = %126, %113
  %129 = phi i32 [ %127, %126 ], [ %114, %113 ]
  %130 = add nuw nsw i64 %115, 1
  %131 = sext i32 %129 to i64
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %113, label %133, !llvm.loop !28

133:                                              ; preds = %128, %106
  %134 = getelementptr inbounds %struct.ht_ht, ptr %108, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !17
  tail call void @free(ptr noundef %135) #15
  tail call void @free(ptr noundef nonnull %108) #15
  %136 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %109) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define internal fastcc noalias ptr @ht_create(i32 noundef %0) unnamed_addr #2 {
  %2 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #16
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
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 8) #17
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
  %2 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @perror(ptr noundef nonnull @.str) #18
  tail call void @exit(i32 noundef 1) #19
  unreachable

5:                                                ; preds = %1
  %6 = tail call noalias ptr @strdup(ptr noundef %0) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @perror(ptr noundef nonnull @.str.1) #18
  tail call void @exit(i32 noundef 1) #19
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

; Function Attrs: noinline nounwind optsize willreturn
define internal i64 @_wyvern_slice_main__540096417(i8 %0, i64 %1) #11 {
sliceclone_:
  %2 = mul i64 %1, 5
  %3 = sext i8 %0 to i64
  %4 = add i64 %2, %3
  ret i64 %4
}

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
attributes #11 = { noinline nounwind optsize willreturn "Daedalus"="1" }
attributes #12 = { nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize willreturn memory(read) }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind optsize allocsize(0) }
attributes #17 = { nounwind optsize allocsize(0,1) }
attributes #18 = { cold optsize }
attributes #19 = { noreturn nounwind optsize }

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
