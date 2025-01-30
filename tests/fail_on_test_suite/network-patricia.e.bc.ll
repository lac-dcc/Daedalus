; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/MiBench/network-patricia/network-patricia.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptree = type { i64, ptr, i8, i8, ptr, ptr }
%struct.ptree_mask = type { i64, ptr }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <TCP stream>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"File %s doesn't seem to exist\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Allocating p-trie node\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Allocating p-trie mask data\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Allocating p-trie mask's node data\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%f %d\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%f %08x: \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"Failed on pat_insert\0A\00", align 1
@str = private unnamed_addr constant [7 x i8] c"Found.\00", align 1

; Function Attrs: nounwind optsize uwtable
define internal ptr @pat_insert(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %122

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %122, label %10

10:                                               ; preds = %6
  %11 = load i64, ptr %8, align 8, !tbaa !13
  %12 = load i64, ptr %0, align 8, !tbaa !15
  %13 = and i64 %12, %11
  store i64 %13, ptr %0, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 3
  %15 = load i8, ptr %14, align 1, !tbaa !16
  br label %16

16:                                               ; preds = %16, %10
  %17 = phi i8 [ %15, %10 ], [ %29, %16 ]
  %18 = phi ptr [ %1, %10 ], [ %27, %16 ]
  %19 = zext i8 %17 to i32
  %20 = lshr i32 -2147483648, %19
  %21 = sext i32 %20 to i64
  %22 = and i64 %13, %21
  %23 = icmp eq i64 %22, 0
  %24 = getelementptr inbounds %struct.ptree, ptr %18, i64 0, i32 5
  %25 = getelementptr inbounds %struct.ptree, ptr %18, i64 0, i32 4
  %26 = select i1 %23, ptr %25, ptr %24
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = getelementptr inbounds %struct.ptree, ptr %27, i64 0, i32 3
  %29 = load i8, ptr %28, align 1, !tbaa !16
  %30 = icmp slt i8 %17, %29
  br i1 %30, label %16, label %31, !llvm.loop !18

31:                                               ; preds = %16
  %.lcssa4 = phi ptr [ %27, %16 ]
  %32 = load i64, ptr %.lcssa4, align 8, !tbaa !15
  %33 = icmp eq i64 %13, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = xor i64 %32, %13
  br label %98

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ptree, ptr %.lcssa4, i64 0, i32 2
  %38 = load i8, ptr %37, align 8, !tbaa !20
  %39 = zext i8 %38 to i64
  %40 = icmp eq i8 %38, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = shl nuw nsw i64 %39, 4
  %43 = add nuw nsw i64 %42, 16
  %44 = tail call noalias ptr @malloc(i64 noundef %43) #12
  br label %89

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.ptree, ptr %.lcssa4, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !7
  %48 = zext i8 %38 to i64
  br label %52

49:                                               ; preds = %52
  %50 = add nuw nsw i64 %53, 1
  %51 = icmp eq i64 %50, %48
  br i1 %51, label %61, label %52, !llvm.loop !21

52:                                               ; preds = %49, %45
  %53 = phi i64 [ 0, %45 ], [ %50, %49 ]
  %54 = getelementptr inbounds %struct.ptree_mask, ptr %47, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !13
  %56 = icmp eq i64 %11, %55
  br i1 %56, label %57, label %49

57:                                               ; preds = %52
  %.lcssa2 = phi i64 [ %53, %52 ]
  %58 = getelementptr inbounds %struct.ptree_mask, ptr %8, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !22
  %60 = getelementptr inbounds %struct.ptree_mask, ptr %47, i64 %.lcssa2, i32 1
  store ptr %59, ptr %60, align 8, !tbaa !22
  tail call void @free(ptr noundef %8) #13
  tail call void @free(ptr noundef %0) #13
  br label %122

61:                                               ; preds = %49
  %62 = shl nuw nsw i64 %39, 4
  %63 = add nuw nsw i64 %62, 16
  %64 = tail call noalias ptr @malloc(i64 noundef %63) #12
  br i1 %40, label %89, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.ptree, ptr %.lcssa4, i64 0, i32 1
  br label %67

67:                                               ; preds = %80, %65
  %68 = phi i32 [ 0, %65 ], [ %82, %80 ]
  %69 = phi i32 [ 0, %65 ], [ %81, %80 ]
  %70 = phi ptr [ %64, %65 ], [ %83, %80 ]
  %71 = load i64, ptr %8, align 8, !tbaa !13
  %72 = load ptr, ptr %66, align 8, !tbaa !7
  %73 = sext i32 %69 to i64
  %74 = getelementptr inbounds %struct.ptree_mask, ptr %72, i64 %73
  %75 = load i64, ptr %74, align 8, !tbaa !13
  %76 = icmp ugt i64 %71, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %70, ptr noundef nonnull align 1 dereferenceable(16) %74, i64 16, i1 false)
  %78 = add nsw i32 %69, 1
  br label %80

79:                                               ; preds = %67
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %70, ptr noundef nonnull align 1 dereferenceable(16) %8, i64 16, i1 false)
  store i64 4294967295, ptr %8, align 8, !tbaa !13
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i32 [ %78, %77 ], [ %69, %79 ]
  %82 = phi i32 [ %68, %77 ], [ 1, %79 ]
  %83 = getelementptr inbounds %struct.ptree_mask, ptr %70, i64 1
  %84 = load i8, ptr %37, align 8, !tbaa !20
  %85 = zext i8 %84 to i32
  %86 = icmp slt i32 %81, %85
  br i1 %86, label %67, label %87, !llvm.loop !23

87:                                               ; preds = %80
  %.lcssa1 = phi i32 [ %82, %80 ]
  %.lcssa = phi ptr [ %83, %80 ]
  %88 = icmp eq i32 %.lcssa1, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %87, %61, %41
  %90 = phi ptr [ %.lcssa, %87 ], [ %44, %41 ], [ %64, %61 ]
  %91 = phi ptr [ %64, %87 ], [ %44, %41 ], [ %64, %61 ]
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %90, ptr noundef nonnull align 1 dereferenceable(16) %8, i64 16, i1 false)
  br label %92

92:                                               ; preds = %89, %87
  %93 = phi ptr [ %91, %89 ], [ %64, %87 ]
  tail call void @free(ptr noundef nonnull %8) #13
  tail call void @free(ptr noundef %0) #13
  %94 = load i8, ptr %37, align 8, !tbaa !20
  %95 = add i8 %94, 1
  store i8 %95, ptr %37, align 8, !tbaa !20
  %96 = getelementptr inbounds %struct.ptree, ptr %.lcssa4, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !7
  tail call void @free(ptr noundef %97) #13
  store ptr %93, ptr %96, align 8, !tbaa !7
  br label %122

98:                                               ; preds = %104, %34
  %99 = phi i32 [ 1, %34 ], [ %105, %104 ]
  %100 = lshr i32 -2147483648, %99
  %101 = zext i32 %100 to i64
  %102 = and i64 %35, %101
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = add nuw nsw i32 %99, 1
  %106 = icmp eq i32 %105, 32
  br i1 %106, label %107, label %98, !llvm.loop !24

107:                                              ; preds = %104, %98
  %108 = phi i32 [ 32, %104 ], [ %99, %98 ]
  %109 = zext i8 %15 to i32
  %110 = lshr i32 -2147483648, %109
  %111 = sext i32 %110 to i64
  %112 = and i64 %13, %111
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 5
  %116 = load ptr, ptr %115, align 8, !tbaa !25
  %117 = tail call fastcc ptr @insertR(ptr noundef %116, ptr noundef nonnull %0, i32 noundef %108, ptr noundef nonnull %1) #14
  store ptr %117, ptr %115, align 8, !tbaa !25
  br label %122

118:                                              ; preds = %107
  %119 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 4
  %120 = load ptr, ptr %119, align 8, !tbaa !26
  %121 = tail call fastcc ptr @insertR(ptr noundef %120, ptr noundef nonnull %0, i32 noundef %108, ptr noundef nonnull %1) #14
  store ptr %121, ptr %119, align 8, !tbaa !26
  br label %122

122:                                              ; preds = %118, %114, %92, %57, %6, %2
  %123 = phi ptr [ %.lcssa4, %57 ], [ %.lcssa4, %92 ], [ null, %6 ], [ null, %2 ], [ %0, %118 ], [ %0, %114 ]
  ret ptr %123
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc ptr @insertR(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 3
  %6 = load i8, ptr %5, align 1, !tbaa !16
  %7 = sext i8 %6 to i32
  %8 = icmp slt i32 %7, %2
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ptree, ptr %3, i64 0, i32 3
  %11 = load i8, ptr %10, align 1, !tbaa !16
  %12 = icmp sgt i8 %6, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %9, %4
  %14 = trunc i32 %2 to i8
  %15 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 3
  store i8 %14, ptr %15, align 1, !tbaa !16
  %16 = load i64, ptr %1, align 8, !tbaa !15
  %17 = lshr i32 -2147483648, %2
  %18 = sext i32 %17 to i64
  %19 = and i64 %16, %18
  %20 = icmp eq i64 %19, 0
  %21 = select i1 %20, ptr %1, ptr %0
  %22 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 4
  store ptr %21, ptr %22, align 8, !tbaa !26
  %23 = select i1 %20, ptr %0, ptr %1
  %24 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 5
  store ptr %23, ptr %24, align 8, !tbaa !25
  br label %31

25:                                               ; preds = %9
  %26 = load i64, ptr %1, align 8, !tbaa !15
  %27 = lshr i32 -2147483648, %7
  %28 = sext i32 %27 to i64
  %29 = and i64 %26, %28
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %37, label %33

31:                                               ; preds = %37, %33, %13
  %32 = phi ptr [ %1, %13 ], [ %0, %33 ], [ %0, %37 ]
  ret ptr %32

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !25
  %36 = tail call fastcc ptr @insertR(ptr noundef %35, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %0) #14
  store ptr %36, ptr %34, align 8, !tbaa !25
  br label %31

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !26
  %40 = tail call fastcc ptr @insertR(ptr noundef %39, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %0) #14
  store ptr %40, ptr %38, align 8, !tbaa !26
  br label %31
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal ptr @pat_search(i64 noundef %0, ptr noundef readonly %1) #5 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 3
  %6 = load i8, ptr %5, align 1, !tbaa !16
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi i8 [ %28, %7 ], [ %6, %4 ]
  %9 = phi ptr [ %17, %7 ], [ null, %4 ]
  %10 = phi ptr [ %26, %7 ], [ %1, %4 ]
  %11 = load i64, ptr %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.ptree, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = load i64, ptr %13, align 8, !tbaa !13
  %15 = and i64 %14, %0
  %16 = icmp eq i64 %11, %15
  %17 = select i1 %16, ptr %10, ptr %9
  %18 = zext i8 %8 to i32
  %19 = lshr i32 -2147483648, %18
  %20 = sext i32 %19 to i64
  %21 = and i64 %20, %0
  %22 = icmp eq i64 %21, 0
  %23 = getelementptr inbounds %struct.ptree, ptr %10, i64 0, i32 5
  %24 = getelementptr inbounds %struct.ptree, ptr %10, i64 0, i32 4
  %25 = select i1 %22, ptr %24, ptr %23
  %26 = load ptr, ptr %25, align 8, !tbaa !17
  %27 = getelementptr inbounds %struct.ptree, ptr %26, i64 0, i32 3
  %28 = load i8, ptr %27, align 1, !tbaa !16
  %29 = icmp slt i8 %8, %28
  br i1 %29, label %7, label %30, !llvm.loop !27

30:                                               ; preds = %7
  %.lcssa1 = phi ptr [ %17, %7 ]
  %.lcssa = phi ptr [ %26, %7 ]
  %31 = load i64, ptr %.lcssa, align 8, !tbaa !15
  %32 = getelementptr inbounds %struct.ptree, ptr %.lcssa, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !7
  %34 = load i64, ptr %33, align 8, !tbaa !13
  %35 = and i64 %34, %0
  %36 = icmp eq i64 %31, %35
  %37 = select i1 %36, ptr %.lcssa, ptr %.lcssa1
  br label %38

38:                                               ; preds = %30, %2
  %39 = phi ptr [ %37, %30 ], [ null, %2 ]
  ret ptr %39
}

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #6 {
  %3 = alloca [128 x i8], align 16
  %4 = alloca %struct.in_addr, align 4
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %6 = icmp slt i32 %0, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !17
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %8) #14
  tail call void @exit(i32 noundef -1) #16
  unreachable

10:                                               ; preds = %2
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !17
  %13 = tail call noalias ptr @fopen(ptr noundef %12, ptr noundef nonnull @.str.1) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load ptr, ptr %11, align 8, !tbaa !17
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %16) #14
  tail call void @exit(i32 noundef 1) #16
  unreachable

18:                                               ; preds = %10
  %19 = tail call dereferenceable_or_null(40) ptr @calloc(i64 1, i64 40)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @perror(ptr noundef nonnull @.str.3) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

22:                                               ; preds = %18
  %23 = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16)
  %24 = getelementptr inbounds %struct.ptree, ptr %19, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !7
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @perror(ptr noundef nonnull @.str.4) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

27:                                               ; preds = %22
  %28 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #12
  %29 = getelementptr inbounds %struct.ptree_mask, ptr %23, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !22
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void @perror(ptr noundef nonnull @.str.5) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

32:                                               ; preds = %27
  store i8 0, ptr %28, align 1
  %33 = getelementptr inbounds %struct.ptree, ptr %19, i64 0, i32 2
  store i8 1, ptr %33, align 8, !tbaa !20
  %34 = getelementptr inbounds %struct.ptree, ptr %19, i64 0, i32 5
  store ptr %19, ptr %34, align 8, !tbaa !25
  %35 = getelementptr inbounds %struct.ptree, ptr %19, i64 0, i32 4
  store ptr %19, ptr %35, align 8, !tbaa !26
  br label %36

36:                                               ; preds = %69, %32
  %37 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull %13) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %75, label %39

39:                                               ; preds = %36
  %40 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.6, ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  %41 = call dereferenceable_or_null(40) ptr @calloc(i64 1, i64 40)
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  call void @perror(ptr noundef nonnull @.str.3) #17
  call void @exit(i32 noundef 1) #16
  unreachable

44:                                               ; preds = %39
  %45 = call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16)
  %46 = getelementptr inbounds %struct.ptree, ptr %41, i64 0, i32 1
  store ptr %45, ptr %46, align 8, !tbaa !7
  %47 = icmp eq ptr %45, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  call void @perror(ptr noundef nonnull @.str.4) #17
  call void @exit(i32 noundef 1) #16
  unreachable

49:                                               ; preds = %44
  %50 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #12
  %51 = getelementptr inbounds %struct.ptree_mask, ptr %45, i64 0, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !22
  %52 = icmp eq ptr %50, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  call void @perror(ptr noundef nonnull @.str.5) #17
  call void @exit(i32 noundef 1) #16
  unreachable

54:                                               ; preds = %49
  store i8 0, ptr %50, align 1
  %55 = load i32, ptr %4, align 4, !tbaa !28
  %56 = zext i32 %55 to i64
  store i64 %56, ptr %41, align 8, !tbaa !15
  store i64 4294967295, ptr %45, align 8, !tbaa !13
  %57 = call ptr @pat_search(i64 noundef %56, ptr noundef nonnull %19) #13
  %58 = load i64, ptr %57, align 8, !tbaa !15
  %59 = load i32, ptr %4, align 4, !tbaa !28
  %60 = zext i32 %59 to i64
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load float, ptr %5, align 4, !tbaa !31
  %64 = fpext float %63 to double
  %65 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %64, i32 noundef %59) #14
  %66 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %69

67:                                               ; preds = %54
  %68 = call ptr @pat_insert(ptr noundef nonnull %41, ptr noundef nonnull %19) #13
  br label %69

69:                                               ; preds = %67, %62
  %70 = phi ptr [ %41, %62 ], [ %68, %67 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %36, !llvm.loop !33

72:                                               ; preds = %69
  %73 = load ptr, ptr @stderr, align 8, !tbaa !17
  %74 = call i64 @fwrite(ptr nonnull @.str.9, i64 21, i64 1, ptr %73) #18
  call void @exit(i32 noundef 1) #16
  unreachable

75:                                               ; preds = %36
  call void @exit(i32 noundef 0) #16
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind optsize allocsize(0) }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind optsize }
attributes #17 = { cold optsize }
attributes #18 = { cold }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !12, i64 8}
!8 = !{!"ptree", !9, i64 0, !12, i64 8, !10, i64 16, !10, i64 17, !12, i64 24, !12, i64 32}
!9 = !{!"long", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"any pointer", !10, i64 0}
!13 = !{!14, !9, i64 0}
!14 = !{!"ptree_mask", !9, i64 0, !12, i64 8}
!15 = !{!8, !9, i64 0}
!16 = !{!8, !10, i64 17}
!17 = !{!12, !12, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!8, !10, i64 16}
!21 = distinct !{!21, !19}
!22 = !{!14, !12, i64 8}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}
!25 = !{!8, !12, i64 32}
!26 = !{!8, !12, i64 24}
!27 = distinct !{!27, !19}
!28 = !{!29, !30, i64 0}
!29 = !{!"in_addr", !30, i64 0}
!30 = !{!"int", !10, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"float", !10, i64 0}
!33 = distinct !{!33, !19}
