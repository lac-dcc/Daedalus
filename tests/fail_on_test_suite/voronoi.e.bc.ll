; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/Olden/voronoi/voronoi.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edge_rec = type { ptr, ptr, i64, ptr }
%struct.VERTEX = type { %struct.VEC2, ptr, ptr }
%struct.VEC2 = type { double, double, double }
%struct.get_point = type { ptr, double, i32 }
%struct.EDGE_STACK = type { i32, ptr, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Voronoi with %d size on %d procs of dim %d\0A\00", align 1
@avail_edge = internal global ptr null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Aborting in alloc_edge, ans = 0x%p\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"X=%f, Y=%f\0A\00", align 1
@to_color = internal global i32 0, align 4
@to_3d_out = internal global i32 0, align 4
@to_off = internal global i32 0, align 4
@to_lincoln = internal global i32 0, align 4
@delaunay = internal global i32 0, align 4
@ahost = internal global i32 0, align 4
@interactive = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"argc = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"getting %d points\0A\00", align 1
@NumNodes = internal global i32 0, align 4
@num_vertices = internal global i32 0, align 4
@flag = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"Doing voronoi on %d nodes\0A\00", align 1
@num_edgeparts = internal global i32 0, align 4
@NDim = internal global i32 0, align 4
@str = private unnamed_addr constant [21 x i8] c"ERROR: Only 1 point!\00", align 1
@str.12 = private unnamed_addr constant [17 x i8] c"myalign() failed\00", align 1
@str.13 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@str.14 = private unnamed_addr constant [20 x i8] c"Done getting points\00", align 1
@str.15 = private unnamed_addr constant [43 x i8] c"cannot push onto stack: stack is too large\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Dedge %g %g %g %g \0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Vedge %g %g %g %g \0A\00", align 1
@voronoi = internal global i32 0, align 4
@.str.2.12 = private unnamed_addr constant [18 x i8] c"mystack_ptr = %d\0A\00", align 1

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @dealwithargs(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp sgt i32 %0, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds ptr, ptr %1, i64 3
  %6 = load ptr, ptr %5, align 8, !tbaa !7
  %7 = tail call i32 @atoi(ptr nocapture noundef %6) #18
  store i32 %7, ptr @flag, align 4, !tbaa !11
  br label %16

8:                                                ; preds = %2
  store i32 1, ptr @flag, align 4, !tbaa !11
  %9 = icmp eq i32 %0, 3
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  store i32 1, ptr @NumNodes, align 4, !tbaa !11
  %11 = icmp sgt i32 %0, 1
  br i1 %11, label %12, label %30

12:                                               ; preds = %10
  %13 = getelementptr inbounds ptr, ptr %1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !7
  %15 = tail call i32 @atoi(ptr nocapture noundef %14) #18
  br label %30

16:                                               ; preds = %8, %4
  %17 = getelementptr inbounds ptr, ptr %1, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !7
  %19 = tail call i32 @atoi(ptr nocapture noundef %18) #18
  store i32 %19, ptr @NumNodes, align 4, !tbaa !11
  %20 = getelementptr inbounds ptr, ptr %1, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = tail call i32 @atoi(ptr nocapture noundef %21) #18
  %23 = icmp sgt i32 %19, 1
  br i1 %23, label %24, label %30

24:                                               ; preds = %24, %16
  %25 = phi i32 [ %27, %24 ], [ 1, %16 ]
  %26 = phi i32 [ %28, %24 ], [ 0, %16 ]
  %27 = shl nsw i32 %25, 1
  %28 = add nuw nsw i32 %26, 1
  %29 = icmp slt i32 %27, %19
  br i1 %29, label %24, label %30, !llvm.loop !13

30:                                               ; preds = %24, %16, %12, %10
  %31 = phi i32 [ %22, %16 ], [ %15, %12 ], [ 32, %10 ], [ %22, %24 ]
  %32 = phi i32 [ %19, %16 ], [ 1, %12 ], [ 1, %10 ], [ %19, %24 ]
  %33 = phi i32 [ 0, %16 ], [ 0, %12 ], [ 0, %10 ], [ %28, %24 ]
  store i32 %33, ptr @NDim, align 4, !tbaa !11
  %34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %31, i32 noundef %32, i32 noundef %33) #19
  ret i32 %31
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal ptr @connect_left(ptr noundef %0, ptr nocapture noundef %1) #3 {
  %3 = ptrtoint ptr %0 to i64
  %4 = xor i64 %3, 64
  %5 = inttoptr i64 %4 to ptr
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = add i64 %3, 96
  %8 = and i64 %7, 127
  %9 = and i64 %3, -128
  %10 = or i64 %8, %9
  %11 = inttoptr i64 %10 to ptr
  %12 = getelementptr inbounds %struct.edge_rec, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = ptrtoint ptr %13 to i64
  %15 = add i64 %14, 32
  %16 = and i64 %15, 127
  %17 = and i64 %14, -128
  %18 = or i64 %16, %17
  %19 = inttoptr i64 %18 to ptr
  %20 = load ptr, ptr %1, align 8, !tbaa !15
  %21 = tail call ptr @alloc_edge() #19
  %22 = getelementptr inbounds %struct.edge_rec, ptr %21, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !18
  store ptr %6, ptr %21, align 8, !tbaa !15
  %23 = ptrtoint ptr %21 to i64
  %24 = add i64 %23, 32
  %25 = inttoptr i64 %24 to ptr
  %26 = add i64 %23, 96
  %27 = inttoptr i64 %26 to ptr
  %28 = getelementptr inbounds %struct.edge_rec, ptr %25, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !18
  %29 = add i64 %23, 64
  %30 = inttoptr i64 %29 to ptr
  %31 = getelementptr inbounds %struct.edge_rec, ptr %30, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !18
  store ptr %20, ptr %30, align 8, !tbaa !15
  %32 = getelementptr inbounds %struct.edge_rec, ptr %27, i64 0, i32 1
  store ptr %25, ptr %32, align 8, !tbaa !18
  %33 = load ptr, ptr %22, align 8, !tbaa !18
  %34 = ptrtoint ptr %33 to i64
  %35 = add i64 %34, 32
  %36 = and i64 %35, 127
  %37 = and i64 %34, -128
  %38 = or i64 %36, %37
  %39 = inttoptr i64 %38 to ptr
  %40 = getelementptr inbounds %struct.edge_rec, ptr %19, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !18
  %42 = ptrtoint ptr %41 to i64
  %43 = add i64 %42, 32
  %44 = and i64 %43, 127
  %45 = and i64 %42, -128
  %46 = or i64 %44, %45
  %47 = inttoptr i64 %46 to ptr
  %48 = getelementptr inbounds %struct.edge_rec, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !18
  %50 = getelementptr inbounds %struct.edge_rec, ptr %39, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !18
  store ptr %49, ptr %50, align 8, !tbaa !18
  store ptr %51, ptr %48, align 8, !tbaa !18
  %52 = load ptr, ptr %22, align 8, !tbaa !18
  %53 = load ptr, ptr %40, align 8, !tbaa !18
  store ptr %52, ptr %40, align 8, !tbaa !18
  store ptr %53, ptr %22, align 8, !tbaa !18
  %54 = xor i64 %23, 64
  %55 = inttoptr i64 %54 to ptr
  %56 = getelementptr inbounds %struct.edge_rec, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !18
  %58 = ptrtoint ptr %57 to i64
  %59 = add i64 %58, 32
  %60 = and i64 %59, 127
  %61 = and i64 %58, -128
  %62 = or i64 %60, %61
  %63 = inttoptr i64 %62 to ptr
  %64 = getelementptr inbounds %struct.edge_rec, ptr %1, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !18
  %66 = ptrtoint ptr %65 to i64
  %67 = add i64 %66, 32
  %68 = and i64 %67, 127
  %69 = and i64 %66, -128
  %70 = or i64 %68, %69
  %71 = inttoptr i64 %70 to ptr
  %72 = getelementptr inbounds %struct.edge_rec, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !18
  %74 = getelementptr inbounds %struct.edge_rec, ptr %63, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !18
  store ptr %73, ptr %74, align 8, !tbaa !18
  store ptr %75, ptr %72, align 8, !tbaa !18
  %76 = load ptr, ptr %56, align 8, !tbaa !18
  %77 = load ptr, ptr %64, align 8, !tbaa !18
  store ptr %76, ptr %64, align 8, !tbaa !18
  store ptr %77, ptr %56, align 8, !tbaa !18
  ret ptr %21
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @alloc_edge() #3 {
  %1 = load ptr, ptr @avail_edge, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = tail call ptr @myalign(i32 noundef 128, i32 noundef 128) #19
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 127
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %4) #19
  tail call void @exit(i32 noundef -1) #20
  unreachable

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.edge_rec, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  store ptr %12, ptr @avail_edge, align 8, !tbaa !7
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %4, %3 ], [ %1, %10 ]
  %15 = getelementptr inbounds %struct.edge_rec, ptr %14, i64 0, i32 2
  store i64 0, ptr %15, align 8, !tbaa !19
  %16 = getelementptr inbounds %struct.edge_rec, ptr %14, i64 1, i32 2
  store i64 0, ptr %16, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.edge_rec, ptr %14, i64 2, i32 2
  store i64 0, ptr %17, align 8, !tbaa !19
  %18 = getelementptr inbounds %struct.edge_rec, ptr %14, i64 3, i32 2
  store i64 0, ptr %18, align 8, !tbaa !19
  ret ptr %14
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @myalign(i32 noundef %0, i32 noundef %1) #3 {
  %3 = sext i32 %0 to i64
  %4 = sext i32 %1 to i64
  %5 = tail call noalias ptr @memalign(i64 noundef %3, i64 noundef %4) #21
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 %3) ]
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  tail call void @exit(i32 noundef -1) #20
  unreachable

9:                                                ; preds = %2
  ret ptr %5
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @memalign(i64 allocalign noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nounwind optsize uwtable
define internal ptr @connect_right(ptr noundef %0, ptr noundef %1) #3 {
  %3 = ptrtoint ptr %0 to i64
  %4 = xor i64 %3, 64
  %5 = inttoptr i64 %4 to ptr
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = load ptr, ptr %1, align 8, !tbaa !15
  %8 = ptrtoint ptr %1 to i64
  %9 = add i64 %8, 32
  %10 = and i64 %9, 127
  %11 = and i64 %8, -128
  %12 = or i64 %10, %11
  %13 = inttoptr i64 %12 to ptr
  %14 = getelementptr inbounds %struct.edge_rec, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = ptrtoint ptr %15 to i64
  %17 = add i64 %16, 32
  %18 = and i64 %17, 127
  %19 = and i64 %16, -128
  %20 = or i64 %18, %19
  %21 = inttoptr i64 %20 to ptr
  %22 = tail call ptr @alloc_edge() #19
  %23 = getelementptr inbounds %struct.edge_rec, ptr %22, i64 0, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !18
  store ptr %6, ptr %22, align 8, !tbaa !15
  %24 = ptrtoint ptr %22 to i64
  %25 = add i64 %24, 32
  %26 = inttoptr i64 %25 to ptr
  %27 = add i64 %24, 96
  %28 = inttoptr i64 %27 to ptr
  %29 = getelementptr inbounds %struct.edge_rec, ptr %26, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !18
  %30 = add i64 %24, 64
  %31 = inttoptr i64 %30 to ptr
  %32 = getelementptr inbounds %struct.edge_rec, ptr %31, i64 0, i32 1
  store ptr %31, ptr %32, align 8, !tbaa !18
  store ptr %7, ptr %31, align 8, !tbaa !15
  %33 = getelementptr inbounds %struct.edge_rec, ptr %28, i64 0, i32 1
  store ptr %26, ptr %33, align 8, !tbaa !18
  %34 = load ptr, ptr %23, align 8, !tbaa !18
  %35 = ptrtoint ptr %34 to i64
  %36 = add i64 %35, 32
  %37 = and i64 %36, 127
  %38 = and i64 %35, -128
  %39 = or i64 %37, %38
  %40 = inttoptr i64 %39 to ptr
  %41 = getelementptr inbounds %struct.edge_rec, ptr %5, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !18
  %43 = ptrtoint ptr %42 to i64
  %44 = add i64 %43, 32
  %45 = and i64 %44, 127
  %46 = and i64 %43, -128
  %47 = or i64 %45, %46
  %48 = inttoptr i64 %47 to ptr
  %49 = getelementptr inbounds %struct.edge_rec, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !18
  %51 = getelementptr inbounds %struct.edge_rec, ptr %40, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !18
  store ptr %50, ptr %51, align 8, !tbaa !18
  store ptr %52, ptr %49, align 8, !tbaa !18
  %53 = load ptr, ptr %23, align 8, !tbaa !18
  %54 = load ptr, ptr %41, align 8, !tbaa !18
  store ptr %53, ptr %41, align 8, !tbaa !18
  store ptr %54, ptr %23, align 8, !tbaa !18
  %55 = xor i64 %24, 64
  %56 = inttoptr i64 %55 to ptr
  %57 = getelementptr inbounds %struct.edge_rec, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !18
  %59 = ptrtoint ptr %58 to i64
  %60 = add i64 %59, 32
  %61 = and i64 %60, 127
  %62 = and i64 %59, -128
  %63 = or i64 %61, %62
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds %struct.edge_rec, ptr %21, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !18
  %67 = ptrtoint ptr %66 to i64
  %68 = add i64 %67, 32
  %69 = and i64 %68, 127
  %70 = and i64 %67, -128
  %71 = or i64 %69, %70
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds %struct.edge_rec, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !18
  %75 = getelementptr inbounds %struct.edge_rec, ptr %64, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !18
  store ptr %74, ptr %75, align 8, !tbaa !18
  store ptr %76, ptr %73, align 8, !tbaa !18
  %77 = load ptr, ptr %57, align 8, !tbaa !18
  %78 = load ptr, ptr %65, align 8, !tbaa !18
  store ptr %77, ptr %65, align 8, !tbaa !18
  store ptr %78, ptr %57, align 8, !tbaa !18
  ret ptr %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deleteedge(ptr noundef %0) #8 {
  %2 = ptrtoint ptr %0 to i64
  %3 = add i64 %2, 32
  %4 = and i64 %3, 127
  %5 = and i64 %2, -128
  %6 = or i64 %4, %5
  %7 = inttoptr i64 %6 to ptr
  %8 = getelementptr inbounds %struct.edge_rec, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = ptrtoint ptr %9 to i64
  %11 = add i64 %10, 32
  %12 = and i64 %11, 127
  %13 = and i64 %10, -128
  %14 = or i64 %12, %13
  %15 = inttoptr i64 %14 to ptr
  %16 = getelementptr inbounds %struct.edge_rec, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  %18 = ptrtoint ptr %17 to i64
  %19 = add i64 %18, 32
  %20 = and i64 %19, 127
  %21 = and i64 %18, -128
  %22 = or i64 %20, %21
  %23 = inttoptr i64 %22 to ptr
  %24 = getelementptr inbounds %struct.edge_rec, ptr %15, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !18
  %26 = ptrtoint ptr %25 to i64
  %27 = add i64 %26, 32
  %28 = and i64 %27, 127
  %29 = and i64 %26, -128
  %30 = or i64 %28, %29
  %31 = inttoptr i64 %30 to ptr
  %32 = getelementptr inbounds %struct.edge_rec, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !18
  %34 = getelementptr inbounds %struct.edge_rec, ptr %23, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !18
  store ptr %33, ptr %34, align 8, !tbaa !18
  store ptr %35, ptr %32, align 8, !tbaa !18
  %36 = load ptr, ptr %16, align 8, !tbaa !18
  %37 = load ptr, ptr %24, align 8, !tbaa !18
  store ptr %36, ptr %24, align 8, !tbaa !18
  store ptr %37, ptr %16, align 8, !tbaa !18
  %38 = xor i64 %2, 64
  %39 = inttoptr i64 %38 to ptr
  %40 = add i64 %38, 32
  %41 = and i64 %40, 127
  %42 = or i64 %41, %5
  %43 = inttoptr i64 %42 to ptr
  %44 = getelementptr inbounds %struct.edge_rec, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !18
  %46 = ptrtoint ptr %45 to i64
  %47 = add i64 %46, 32
  %48 = and i64 %47, 127
  %49 = and i64 %46, -128
  %50 = or i64 %48, %49
  %51 = inttoptr i64 %50 to ptr
  %52 = getelementptr inbounds %struct.edge_rec, ptr %39, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !18
  %54 = ptrtoint ptr %53 to i64
  %55 = add i64 %54, 32
  %56 = and i64 %55, 127
  %57 = and i64 %54, -128
  %58 = or i64 %56, %57
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds %struct.edge_rec, ptr %51, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !18
  %62 = ptrtoint ptr %61 to i64
  %63 = add i64 %62, 32
  %64 = and i64 %63, 127
  %65 = and i64 %62, -128
  %66 = or i64 %64, %65
  %67 = inttoptr i64 %66 to ptr
  %68 = getelementptr inbounds %struct.edge_rec, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !18
  %70 = getelementptr inbounds %struct.edge_rec, ptr %59, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !18
  store ptr %69, ptr %70, align 8, !tbaa !18
  store ptr %71, ptr %68, align 8, !tbaa !18
  %72 = load ptr, ptr %52, align 8, !tbaa !18
  %73 = load ptr, ptr %60, align 8, !tbaa !18
  store ptr %72, ptr %60, align 8, !tbaa !18
  store ptr %73, ptr %52, align 8, !tbaa !18
  %74 = inttoptr i64 %5 to ptr
  %75 = load ptr, ptr @avail_edge, align 8, !tbaa !7
  %76 = getelementptr inbounds %struct.edge_rec, ptr %74, i64 0, i32 1
  store ptr %75, ptr %76, align 8, !tbaa !18
  store ptr %74, ptr @avail_edge, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal { ptr, ptr } @build_delaunay(ptr noundef %0, ptr noundef %1) #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %49, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VERTEX, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %8, %4
  %9 = phi ptr [ %11, %8 ], [ %0, %4 ]
  %10 = getelementptr inbounds %struct.VERTEX, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !25

13:                                               ; preds = %8
  %.lcssa = phi ptr [ %9, %8 ]
  %14 = tail call { ptr, ptr } @build_delaunay(ptr noundef nonnull %6, ptr noundef %1) #19
  %15 = extractvalue { ptr, ptr } %14, 0
  %16 = extractvalue { ptr, ptr } %14, 1
  %17 = getelementptr inbounds %struct.VERTEX, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = tail call { ptr, ptr } @build_delaunay(ptr noundef %18, ptr noundef nonnull %0) #19
  %20 = extractvalue { ptr, ptr } %19, 0
  %21 = extractvalue { ptr, ptr } %19, 1
  %22 = tail call { ptr, ptr } @do_merge(ptr noundef %20, ptr noundef %21, ptr noundef %15, ptr noundef %16) #19
  %23 = extractvalue { ptr, ptr } %22, 0
  %24 = extractvalue { ptr, ptr } %22, 1
  %25 = load ptr, ptr %23, align 8, !tbaa !15
  %26 = icmp eq ptr %25, %.lcssa
  br i1 %26, label %27, label %31

27:                                               ; preds = %31, %13
  %28 = phi ptr [ %23, %13 ], [ %37, %31 ]
  %29 = load ptr, ptr %24, align 8, !tbaa !15
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %140, label %40

31:                                               ; preds = %31, %13
  %32 = phi ptr [ %37, %31 ], [ %23, %13 ]
  %33 = ptrtoint ptr %32 to i64
  %34 = xor i64 %33, 64
  %35 = inttoptr i64 %34 to ptr
  %36 = getelementptr inbounds %struct.edge_rec, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !18
  %38 = load ptr, ptr %37, align 8, !tbaa !15
  %39 = icmp eq ptr %38, %.lcssa
  br i1 %39, label %27, label %31, !llvm.loop !26

40:                                               ; preds = %40, %27
  %41 = phi ptr [ %46, %40 ], [ %24, %27 ]
  %42 = getelementptr inbounds %struct.edge_rec, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !18
  %44 = ptrtoint ptr %43 to i64
  %45 = xor i64 %44, 64
  %46 = inttoptr i64 %45 to ptr
  %47 = load ptr, ptr %46, align 8, !tbaa !15
  %48 = icmp eq ptr %47, %1
  br i1 %48, label %140, label %40, !llvm.loop !27

49:                                               ; preds = %2
  %50 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef -1) #20
  unreachable

51:                                               ; preds = %4
  %52 = getelementptr inbounds %struct.VERTEX, ptr %0, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !24
  %54 = icmp eq ptr %53, null
  %55 = tail call ptr @alloc_edge() #19
  %56 = getelementptr inbounds %struct.edge_rec, ptr %55, i64 0, i32 1
  store ptr %55, ptr %56, align 8, !tbaa !18
  %57 = ptrtoint ptr %55 to i64
  %58 = add i64 %57, 32
  %59 = inttoptr i64 %58 to ptr
  %60 = add i64 %57, 96
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds %struct.edge_rec, ptr %59, i64 0, i32 1
  %63 = add i64 %57, 64
  %64 = inttoptr i64 %63 to ptr
  %65 = getelementptr inbounds %struct.edge_rec, ptr %64, i64 0, i32 1
  %66 = getelementptr inbounds %struct.edge_rec, ptr %61, i64 0, i32 1
  br i1 %54, label %67, label %70

67:                                               ; preds = %51
  store ptr %0, ptr %55, align 8, !tbaa !15
  store ptr %61, ptr %62, align 8, !tbaa !18
  store ptr %64, ptr %65, align 8, !tbaa !18
  store ptr %1, ptr %64, align 8, !tbaa !15
  store ptr %59, ptr %66, align 8, !tbaa !18
  %68 = xor i64 %57, 64
  %69 = inttoptr i64 %68 to ptr
  br label %140

70:                                               ; preds = %51
  store ptr %53, ptr %55, align 8, !tbaa !15
  store ptr %61, ptr %62, align 8, !tbaa !18
  store ptr %64, ptr %65, align 8, !tbaa !18
  store ptr %0, ptr %64, align 8, !tbaa !15
  store ptr %59, ptr %66, align 8, !tbaa !18
  %71 = tail call ptr @alloc_edge() #19
  %72 = getelementptr inbounds %struct.edge_rec, ptr %71, i64 0, i32 1
  store ptr %71, ptr %72, align 8, !tbaa !18
  store ptr %0, ptr %71, align 8, !tbaa !15
  %73 = ptrtoint ptr %71 to i64
  %74 = add i64 %73, 32
  %75 = inttoptr i64 %74 to ptr
  %76 = add i64 %73, 96
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds %struct.edge_rec, ptr %75, i64 0, i32 1
  store ptr %77, ptr %78, align 8, !tbaa !18
  %79 = add i64 %73, 64
  %80 = inttoptr i64 %79 to ptr
  %81 = getelementptr inbounds %struct.edge_rec, ptr %80, i64 0, i32 1
  store ptr %80, ptr %81, align 8, !tbaa !18
  store ptr %1, ptr %80, align 8, !tbaa !15
  %82 = getelementptr inbounds %struct.edge_rec, ptr %77, i64 0, i32 1
  store ptr %75, ptr %82, align 8, !tbaa !18
  %83 = xor i64 %57, 64
  %84 = inttoptr i64 %83 to ptr
  %85 = getelementptr inbounds %struct.edge_rec, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !18
  %87 = ptrtoint ptr %86 to i64
  %88 = add i64 %87, 32
  %89 = and i64 %88, 127
  %90 = and i64 %87, -128
  %91 = or i64 %89, %90
  %92 = inttoptr i64 %91 to ptr
  %93 = load ptr, ptr %72, align 8, !tbaa !18
  %94 = ptrtoint ptr %93 to i64
  %95 = add i64 %94, 32
  %96 = and i64 %95, 127
  %97 = and i64 %94, -128
  %98 = or i64 %96, %97
  %99 = inttoptr i64 %98 to ptr
  %100 = getelementptr inbounds %struct.edge_rec, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !18
  %102 = getelementptr inbounds %struct.edge_rec, ptr %92, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !18
  store ptr %101, ptr %102, align 8, !tbaa !18
  store ptr %103, ptr %100, align 8, !tbaa !18
  %104 = load ptr, ptr %85, align 8, !tbaa !18
  %105 = load ptr, ptr %72, align 8, !tbaa !18
  store ptr %104, ptr %72, align 8, !tbaa !18
  store ptr %105, ptr %85, align 8, !tbaa !18
  %106 = tail call ptr @connect_left(ptr noundef nonnull %71, ptr noundef nonnull %55) #19
  %107 = load double, ptr %53, align 8, !tbaa !28
  %108 = getelementptr inbounds %struct.VEC2, ptr %53, i64 0, i32 1
  %109 = load double, ptr %108, align 8, !tbaa !29
  %110 = load double, ptr %1, align 8, !tbaa !28
  %111 = getelementptr inbounds %struct.VEC2, ptr %1, i64 0, i32 1
  %112 = load double, ptr %111, align 8, !tbaa !29
  %113 = load double, ptr %0, align 8, !tbaa !28
  %114 = getelementptr inbounds %struct.VEC2, ptr %0, i64 0, i32 1
  %115 = load double, ptr %114, align 8, !tbaa !29
  %116 = fsub double %107, %113
  %117 = fsub double %112, %115
  %118 = fsub double %110, %113
  %119 = fsub double %109, %115
  %120 = fneg double %118
  %121 = fmul double %119, %120
  %122 = tail call double @llvm.fmuladd.f64(double %116, double %117, double %121)
  %123 = fcmp ule double %122, 0.000000e+00
  br i1 %123, label %128, label %124

124:                                              ; preds = %70
  %125 = ptrtoint ptr %106 to i64
  %126 = xor i64 %125, 64
  %127 = inttoptr i64 %126 to ptr
  br label %140

128:                                              ; preds = %70
  %129 = xor i64 %73, 64
  %130 = inttoptr i64 %129 to ptr
  %131 = fsub double %107, %110
  %132 = fsub double %115, %112
  %133 = fsub double %113, %110
  %134 = fsub double %109, %112
  %135 = fneg double %133
  %136 = fmul double %134, %135
  %137 = tail call double @llvm.fmuladd.f64(double %131, double %132, double %136)
  %138 = fcmp ule double %137, 0.000000e+00
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  tail call void @deleteedge(ptr noundef %106) #19
  br label %140

140:                                              ; preds = %139, %128, %124, %67, %40, %27
  %141 = phi ptr [ %127, %124 ], [ %55, %128 ], [ %55, %139 ], [ %55, %67 ], [ %28, %27 ], [ %28, %40 ]
  %142 = phi ptr [ %106, %124 ], [ %130, %128 ], [ %130, %139 ], [ %69, %67 ], [ %24, %27 ], [ %46, %40 ]
  %143 = insertvalue { ptr, ptr } poison, ptr %141, 0
  %144 = insertvalue { ptr, ptr } %143, ptr %142, 1
  ret { ptr, ptr } %144
}

; Function Attrs: nounwind optsize uwtable
define internal { ptr, ptr } @do_merge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3 {
  br label %5

5:                                                ; preds = %65, %4
  %6 = phi ptr [ %1, %4 ], [ %.lcssa4, %65 ]
  %7 = phi ptr [ %2, %4 ], [ %67, %65 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = ptrtoint ptr %6 to i64
  %10 = load double, ptr %8, align 8, !tbaa !28
  %11 = getelementptr inbounds %struct.VEC2, ptr %8, i64 0, i32 1
  %12 = load double, ptr %11, align 8, !tbaa !29
  br label %13

13:                                               ; preds = %34, %5
  %14 = phi ptr [ %6, %5 ], [ %48, %34 ]
  %15 = phi i64 [ %9, %5 ], [ %47, %34 ]
  %16 = xor i64 %15, 64
  %17 = inttoptr i64 %16 to ptr
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  %19 = load ptr, ptr %14, align 8, !tbaa !15
  %20 = load double, ptr %19, align 8, !tbaa !28
  %21 = getelementptr inbounds %struct.VEC2, ptr %19, i64 0, i32 1
  %22 = load double, ptr %21, align 8, !tbaa !29
  %23 = load double, ptr %18, align 8, !tbaa !28
  %24 = getelementptr inbounds %struct.VEC2, ptr %18, i64 0, i32 1
  %25 = load double, ptr %24, align 8, !tbaa !29
  %26 = fsub double %20, %10
  %27 = fsub double %25, %12
  %28 = fsub double %23, %10
  %29 = fsub double %22, %12
  %30 = fneg double %28
  %31 = fmul double %29, %30
  %32 = tail call double @llvm.fmuladd.f64(double %26, double %27, double %31)
  %33 = fcmp ule double %32, 0.000000e+00
  br i1 %33, label %49, label %34

34:                                               ; preds = %13
  %35 = ptrtoint ptr %14 to i64
  %36 = add i64 %35, 96
  %37 = and i64 %36, 127
  %38 = and i64 %35, -128
  %39 = or i64 %37, %38
  %40 = inttoptr i64 %39 to ptr
  %41 = getelementptr inbounds %struct.edge_rec, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !18
  %43 = ptrtoint ptr %42 to i64
  %44 = add i64 %43, 32
  %45 = and i64 %44, 127
  %46 = and i64 %43, -128
  %47 = or i64 %45, %46
  %48 = inttoptr i64 %47 to ptr
  br label %13, !llvm.loop !30

49:                                               ; preds = %13
  %.lcssa4 = phi ptr [ %14, %13 ]
  %.lcssa3 = phi double [ %20, %13 ]
  %.lcssa2 = phi double [ %22, %13 ]
  %50 = ptrtoint ptr %7 to i64
  %51 = xor i64 %50, 64
  %52 = inttoptr i64 %51 to ptr
  %53 = load ptr, ptr %52, align 8, !tbaa !15
  %54 = load double, ptr %53, align 8, !tbaa !28
  %55 = getelementptr inbounds %struct.VEC2, ptr %53, i64 0, i32 1
  %56 = load double, ptr %55, align 8, !tbaa !29
  %57 = fsub double %54, %.lcssa3
  %58 = fsub double %12, %.lcssa2
  %59 = fsub double %10, %.lcssa3
  %60 = fsub double %56, %.lcssa2
  %61 = fneg double %59
  %62 = fmul double %60, %61
  %63 = tail call double @llvm.fmuladd.f64(double %57, double %58, double %62)
  %64 = fcmp ule double %63, 0.000000e+00
  br i1 %64, label %68, label %65

65:                                               ; preds = %49
  %66 = getelementptr inbounds %struct.edge_rec, ptr %52, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !18
  br label %5

68:                                               ; preds = %49
  %.lcssa5 = phi ptr [ %52, %49 ]
  %.lcssa4.lcssa = phi ptr [ %.lcssa4, %49 ]
  %69 = tail call ptr @connect_left(ptr noundef nonnull %.lcssa5, ptr noundef nonnull %.lcssa4.lcssa) #19
  %70 = ptrtoint ptr %69 to i64
  %71 = xor i64 %70, 64
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds %struct.edge_rec, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !18
  %75 = add i64 %70, 32
  %76 = and i64 %75, 127
  %77 = and i64 %70, -128
  %78 = or i64 %76, %77
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds %struct.edge_rec, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !18
  %82 = ptrtoint ptr %81 to i64
  %83 = add i64 %82, 32
  %84 = and i64 %83, 127
  %85 = and i64 %82, -128
  %86 = or i64 %84, %85
  %87 = inttoptr i64 %86 to ptr
  %88 = load ptr, ptr %69, align 8, !tbaa !15
  %89 = load ptr, ptr %72, align 8, !tbaa !15
  %90 = load ptr, ptr %3, align 8, !tbaa !15
  %91 = load ptr, ptr %0, align 8, !tbaa !15
  br label %92

92:                                               ; preds = %286, %68
  %93 = phi ptr [ %88, %68 ], [ %290, %286 ]
  %94 = phi ptr [ %69, %68 ], [ %287, %286 ]
  %95 = phi ptr [ %74, %68 ], [ %288, %286 ]
  %96 = phi ptr [ %87, %68 ], [ %289, %286 ]
  %97 = getelementptr inbounds %struct.edge_rec, ptr %95, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !18
  %99 = ptrtoint ptr %94 to i64
  %100 = xor i64 %99, 64
  %101 = inttoptr i64 %100 to ptr
  %102 = load ptr, ptr %101, align 8, !tbaa !15
  %103 = ptrtoint ptr %98 to i64
  %104 = xor i64 %103, 64
  %105 = inttoptr i64 %104 to ptr
  %106 = load ptr, ptr %105, align 8, !tbaa !15
  %107 = load double, ptr %106, align 8, !tbaa !28
  %108 = getelementptr inbounds %struct.VEC2, ptr %106, i64 0, i32 1
  %109 = load double, ptr %108, align 8, !tbaa !29
  %110 = load <2 x double>, ptr %93, align 8, !tbaa !31
  %111 = load <2 x double>, ptr %102, align 8, !tbaa !31
  %112 = extractelement <2 x double> %111, i64 1
  %113 = fsub double %109, %112
  %114 = extractelement <2 x double> %111, i64 0
  %115 = fsub double %107, %114
  %116 = fsub <2 x double> %110, %111
  %117 = fneg double %115
  %118 = extractelement <2 x double> %116, i64 1
  %119 = fmul double %118, %117
  %120 = extractelement <2 x double> %116, i64 0
  %121 = tail call double @llvm.fmuladd.f64(double %120, double %113, double %119)
  %122 = fcmp ule double %121, 0.000000e+00
  br i1 %122, label %148, label %123

123:                                              ; preds = %137, %92
  %124 = phi ptr [ %125, %137 ], [ %95, %92 ]
  %125 = phi ptr [ %139, %137 ], [ %98, %92 ]
  %126 = load ptr, ptr %124, align 8, !tbaa !15
  %127 = ptrtoint ptr %125 to i64
  %128 = xor i64 %127, 64
  %129 = inttoptr i64 %128 to ptr
  %130 = load ptr, ptr %129, align 8, !tbaa !15
  %131 = ptrtoint ptr %124 to i64
  %132 = xor i64 %131, 64
  %133 = inttoptr i64 %132 to ptr
  %134 = load ptr, ptr %133, align 8, !tbaa !15
  %135 = tail call i32 @incircle(ptr noundef %134, ptr noundef %130, ptr noundef %126, ptr noundef nonnull %93) #19, !range !32
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %123
  tail call void @deleteedge(ptr noundef nonnull %124) #19
  %138 = getelementptr inbounds %struct.edge_rec, ptr %125, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !18
  br label %123, !llvm.loop !33

140:                                              ; preds = %123
  %.lcssa = phi ptr [ %124, %123 ]
  %141 = load ptr, ptr %94, align 8, !tbaa !15
  %142 = load ptr, ptr %101, align 8, !tbaa !15
  %143 = load <2 x double>, ptr %141, align 8, !tbaa !31
  %144 = load <2 x double>, ptr %142, align 8, !tbaa !31
  %145 = fsub <2 x double> %143, %144
  %146 = extractelement <2 x double> %144, i64 0
  %147 = extractelement <2 x double> %144, i64 1
  br label %148

148:                                              ; preds = %140, %92
  %149 = phi double [ %147, %140 ], [ %112, %92 ]
  %150 = phi double [ %146, %140 ], [ %114, %92 ]
  %151 = phi ptr [ %142, %140 ], [ %102, %92 ]
  %152 = phi ptr [ %.lcssa, %140 ], [ %95, %92 ]
  %153 = phi <2 x double> [ %145, %140 ], [ %116, %92 ]
  %154 = ptrtoint ptr %96 to i64
  %155 = add i64 %154, 32
  %156 = and i64 %155, 127
  %157 = and i64 %154, -128
  %158 = or i64 %156, %157
  %159 = inttoptr i64 %158 to ptr
  %160 = getelementptr inbounds %struct.edge_rec, ptr %159, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !18
  %162 = ptrtoint ptr %161 to i64
  %163 = add i64 %162, 32
  %164 = and i64 %163, 127
  %165 = and i64 %162, -128
  %166 = or i64 %164, %165
  %167 = xor i64 %166, 64
  %168 = inttoptr i64 %167 to ptr
  %169 = load ptr, ptr %168, align 8, !tbaa !15
  %170 = load double, ptr %169, align 8, !tbaa !28
  %171 = getelementptr inbounds %struct.VEC2, ptr %169, i64 0, i32 1
  %172 = load double, ptr %171, align 8, !tbaa !29
  %173 = fsub double %172, %149
  %174 = fsub double %170, %150
  %175 = fneg double %174
  %176 = extractelement <2 x double> %153, i64 1
  %177 = fmul double %176, %175
  %178 = extractelement <2 x double> %153, i64 0
  %179 = tail call double @llvm.fmuladd.f64(double %178, double %173, double %177)
  %180 = fcmp ule double %179, 0.000000e+00
  br i1 %180, label %217, label %181

181:                                              ; preds = %194, %148
  %182 = phi ptr [ %195, %194 ], [ %96, %148 ]
  %183 = phi i64 [ %207, %194 ], [ %166, %148 ]
  %184 = phi i64 [ %183, %194 ], [ %154, %148 ]
  %185 = load ptr, ptr %182, align 8, !tbaa !15
  %186 = xor i64 %184, 64
  %187 = inttoptr i64 %186 to ptr
  %188 = load ptr, ptr %187, align 8, !tbaa !15
  %189 = xor i64 %183, 64
  %190 = inttoptr i64 %189 to ptr
  %191 = load ptr, ptr %190, align 8, !tbaa !15
  %192 = tail call i32 @incircle(ptr noundef %191, ptr noundef %188, ptr noundef %185, ptr noundef nonnull %151) #19, !range !32
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %208, label %194

194:                                              ; preds = %181
  %195 = inttoptr i64 %183 to ptr
  tail call void @deleteedge(ptr noundef nonnull %182) #19
  %196 = add i64 %183, 32
  %197 = and i64 %196, 127
  %198 = and i64 %183, -128
  %199 = or i64 %197, %198
  %200 = inttoptr i64 %199 to ptr
  %201 = getelementptr inbounds %struct.edge_rec, ptr %200, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !18
  %203 = ptrtoint ptr %202 to i64
  %204 = add i64 %203, 32
  %205 = and i64 %204, 127
  %206 = and i64 %203, -128
  %207 = or i64 %205, %206
  br label %181, !llvm.loop !34

208:                                              ; preds = %181
  %.lcssa1 = phi ptr [ %182, %181 ]
  %209 = load ptr, ptr %94, align 8, !tbaa !15
  %210 = load ptr, ptr %101, align 8, !tbaa !15
  %211 = load <2 x double>, ptr %209, align 8, !tbaa !31
  %212 = load <2 x double>, ptr %210, align 8, !tbaa !31
  %213 = fsub <2 x double> %211, %212
  %214 = ptrtoint ptr %.lcssa1 to i64
  %215 = extractelement <2 x double> %212, i64 0
  %216 = extractelement <2 x double> %212, i64 1
  br label %217

217:                                              ; preds = %208, %148
  %218 = phi i64 [ %214, %208 ], [ %154, %148 ]
  %219 = phi double [ %216, %208 ], [ %149, %148 ]
  %220 = phi double [ %215, %208 ], [ %150, %148 ]
  %221 = phi ptr [ %.lcssa1, %208 ], [ %96, %148 ]
  %222 = phi <2 x double> [ %213, %208 ], [ %153, %148 ]
  %223 = ptrtoint ptr %152 to i64
  %224 = xor i64 %223, 64
  %225 = inttoptr i64 %224 to ptr
  %226 = load ptr, ptr %225, align 8, !tbaa !15
  %227 = load double, ptr %226, align 8, !tbaa !28
  %228 = getelementptr inbounds %struct.VEC2, ptr %226, i64 0, i32 1
  %229 = load double, ptr %228, align 8, !tbaa !29
  %230 = xor i64 %218, 64
  %231 = inttoptr i64 %230 to ptr
  %232 = load ptr, ptr %231, align 8, !tbaa !15
  %233 = load double, ptr %232, align 8, !tbaa !28
  %234 = getelementptr inbounds %struct.VEC2, ptr %232, i64 0, i32 1
  %235 = load double, ptr %234, align 8, !tbaa !29
  %236 = insertelement <2 x double> poison, double %235, i64 0
  %237 = insertelement <2 x double> %236, double %229, i64 1
  %238 = insertelement <2 x double> poison, double %219, i64 0
  %239 = shufflevector <2 x double> %238, <2 x double> poison, <2 x i32> zeroinitializer
  %240 = fsub <2 x double> %237, %239
  %241 = insertelement <2 x double> poison, double %233, i64 0
  %242 = insertelement <2 x double> %241, double %227, i64 1
  %243 = insertelement <2 x double> poison, double %220, i64 0
  %244 = shufflevector <2 x double> %243, <2 x double> poison, <2 x i32> zeroinitializer
  %245 = fsub <2 x double> %242, %244
  %246 = fneg <2 x double> %245
  %247 = shufflevector <2 x double> %222, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %248 = fmul <2 x double> %247, %246
  %249 = shufflevector <2 x double> %222, <2 x double> poison, <2 x i32> zeroinitializer
  %250 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %249, <2 x double> %240, <2 x double> %248)
  %251 = fcmp ogt <2 x double> %250, zeroinitializer
  %252 = extractelement <2 x i1> %251, i64 0
  %253 = extractelement <2 x i1> %251, i64 1
  %254 = select i1 %253, i1 true, i1 %252
  br i1 %254, label %255, label %291

255:                                              ; preds = %217
  %256 = load ptr, ptr %152, align 8, !tbaa !15
  %257 = load ptr, ptr %221, align 8, !tbaa !15
  br i1 %253, label %258, label %262

258:                                              ; preds = %255
  br i1 %252, label %259, label %279

259:                                              ; preds = %258
  %260 = tail call i32 @incircle(ptr noundef nonnull %226, ptr noundef %256, ptr noundef %257, ptr noundef nonnull %232) #19, !range !32
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %279, label %262

262:                                              ; preds = %259, %255
  %263 = tail call ptr @connect_left(ptr noundef nonnull %221, ptr noundef nonnull %101) #19
  %264 = ptrtoint ptr %263 to i64
  %265 = xor i64 %264, 64
  %266 = add i64 %265, 96
  %267 = and i64 %266, 127
  %268 = and i64 %264, -128
  %269 = or i64 %267, %268
  %270 = inttoptr i64 %269 to ptr
  %271 = getelementptr inbounds %struct.edge_rec, ptr %270, i64 0, i32 1
  %272 = load ptr, ptr %271, align 8, !tbaa !18
  %273 = ptrtoint ptr %272 to i64
  %274 = add i64 %273, 32
  %275 = and i64 %274, 127
  %276 = and i64 %273, -128
  %277 = or i64 %275, %276
  %278 = inttoptr i64 %277 to ptr
  br label %286

279:                                              ; preds = %259, %258
  %280 = tail call ptr @connect_right(ptr noundef nonnull %152, ptr noundef nonnull %94) #19
  %281 = ptrtoint ptr %280 to i64
  %282 = xor i64 %281, 64
  %283 = inttoptr i64 %282 to ptr
  %284 = getelementptr inbounds %struct.edge_rec, ptr %280, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !18
  br label %286

286:                                              ; preds = %279, %262
  %287 = phi ptr [ %263, %262 ], [ %283, %279 ]
  %288 = phi ptr [ %152, %262 ], [ %285, %279 ]
  %289 = phi ptr [ %278, %262 ], [ %221, %279 ]
  %290 = load ptr, ptr %287, align 8, !tbaa !15
  br label %92

291:                                              ; preds = %217
  %292 = icmp eq ptr %89, %91
  %293 = select i1 %292, ptr %72, ptr %0
  %294 = icmp eq ptr %88, %90
  %295 = select i1 %294, ptr %69, ptr %3
  %296 = insertvalue { ptr, ptr } poison, ptr %293, 0
  %297 = insertvalue { ptr, ptr } %296, ptr %295, 1
  ret { ptr, ptr } %297
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @incircle(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #10 {
  %5 = load double, ptr %3, align 8, !tbaa !28
  %6 = getelementptr inbounds %struct.VEC2, ptr %3, i64 0, i32 1
  %7 = load double, ptr %6, align 8, !tbaa !29
  %8 = getelementptr inbounds %struct.VEC2, ptr %3, i64 0, i32 2
  %9 = load double, ptr %8, align 8, !tbaa !35
  %10 = load double, ptr %0, align 8, !tbaa !28
  %11 = fsub double %10, %5
  %12 = getelementptr inbounds %struct.VEC2, ptr %0, i64 0, i32 1
  %13 = load double, ptr %12, align 8, !tbaa !29
  %14 = fsub double %13, %7
  %15 = getelementptr inbounds %struct.VEC2, ptr %0, i64 0, i32 2
  %16 = load double, ptr %15, align 8, !tbaa !35
  %17 = load double, ptr %1, align 8, !tbaa !28
  %18 = fsub double %17, %5
  %19 = getelementptr inbounds %struct.VEC2, ptr %1, i64 0, i32 1
  %20 = load double, ptr %19, align 8, !tbaa !29
  %21 = fsub double %20, %7
  %22 = getelementptr inbounds %struct.VEC2, ptr %1, i64 0, i32 2
  %23 = load double, ptr %22, align 8, !tbaa !35
  %24 = load double, ptr %2, align 8, !tbaa !28
  %25 = fsub double %24, %5
  %26 = getelementptr inbounds %struct.VEC2, ptr %2, i64 0, i32 1
  %27 = load double, ptr %26, align 8, !tbaa !29
  %28 = fsub double %27, %7
  %29 = getelementptr inbounds %struct.VEC2, ptr %2, i64 0, i32 2
  %30 = load double, ptr %29, align 8, !tbaa !35
  %31 = fsub double %16, %9
  %32 = fneg double %21
  %33 = fmul double %25, %32
  %34 = tail call double @llvm.fmuladd.f64(double %18, double %28, double %33)
  %35 = fmul double %31, %34
  %36 = fsub double %23, %9
  %37 = fneg double %28
  %38 = fmul double %11, %37
  %39 = tail call double @llvm.fmuladd.f64(double %25, double %14, double %38)
  %40 = tail call double @llvm.fmuladd.f64(double %36, double %39, double %35)
  %41 = fsub double %30, %9
  %42 = fneg double %14
  %43 = fmul double %18, %42
  %44 = tail call double @llvm.fmuladd.f64(double %11, double %21, double %43)
  %45 = tail call double @llvm.fmuladd.f64(double %41, double %44, double %40)
  %46 = fcmp ogt double %45, 0.000000e+00
  %47 = zext i1 %46 to i32
  ret i32 %47
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @ccw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #10 {
  %4 = load double, ptr %0, align 8, !tbaa !28
  %5 = getelementptr inbounds %struct.VEC2, ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !29
  %7 = load double, ptr %1, align 8, !tbaa !28
  %8 = getelementptr inbounds %struct.VEC2, ptr %1, i64 0, i32 1
  %9 = load double, ptr %8, align 8, !tbaa !29
  %10 = load double, ptr %2, align 8, !tbaa !28
  %11 = getelementptr inbounds %struct.VEC2, ptr %2, i64 0, i32 1
  %12 = load double, ptr %11, align 8, !tbaa !29
  %13 = fsub double %4, %10
  %14 = fsub double %9, %12
  %15 = fsub double %7, %10
  %16 = fsub double %6, %12
  %17 = fneg double %15
  %18 = fmul double %16, %17
  %19 = tail call double @llvm.fmuladd.f64(double %13, double %14, double %18)
  %20 = fcmp ogt double %19, 0.000000e+00
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @splice(ptr nocapture noundef %0, ptr nocapture noundef %1) #8 {
  %3 = getelementptr inbounds %struct.edge_rec, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = ptrtoint ptr %4 to i64
  %6 = add i64 %5, 32
  %7 = and i64 %6, 127
  %8 = and i64 %5, -128
  %9 = or i64 %7, %8
  %10 = inttoptr i64 %9 to ptr
  %11 = getelementptr inbounds %struct.edge_rec, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  %13 = ptrtoint ptr %12 to i64
  %14 = add i64 %13, 32
  %15 = and i64 %14, 127
  %16 = and i64 %13, -128
  %17 = or i64 %15, %16
  %18 = inttoptr i64 %17 to ptr
  %19 = getelementptr inbounds %struct.edge_rec, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  %21 = getelementptr inbounds %struct.edge_rec, ptr %10, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !18
  store ptr %20, ptr %21, align 8, !tbaa !18
  store ptr %22, ptr %19, align 8, !tbaa !18
  %23 = load ptr, ptr %3, align 8, !tbaa !18
  %24 = load ptr, ptr %11, align 8, !tbaa !18
  store ptr %23, ptr %11, align 8, !tbaa !18
  store ptr %24, ptr %3, align 8, !tbaa !18
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @in_order(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %5, %1
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13)
  ret void

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %14, %5 ], [ %0, %1 ]
  %7 = load double, ptr %6, align 8, !tbaa !28
  %8 = getelementptr inbounds %struct.VEC2, ptr %6, i64 0, i32 1
  %9 = load double, ptr %8, align 8, !tbaa !29
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %7, double noundef %9) #19
  %11 = getelementptr inbounds %struct.VERTEX, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !24
  tail call void @in_order(ptr noundef %12) #19
  %13 = getelementptr inbounds %struct.VERTEX, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %3, label %5
}

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.get_point, align 8
  %4 = alloca %struct.get_point, align 8
  store i32 0, ptr @to_color, align 4, !tbaa !11
  store i32 0, ptr @to_3d_out, align 4, !tbaa !11
  store i32 0, ptr @to_off, align 4, !tbaa !11
  store i32 0, ptr @to_lincoln, align 4, !tbaa !11
  store i32 1, ptr @delaunay, align 4, !tbaa !11
  store i32 1, ptr @voronoi, align 4, !tbaa !11
  store i32 0, ptr @ahost, align 4, !tbaa !11
  store i32 0, ptr @interactive, align 4, !tbaa !11
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %0) #19
  %6 = tail call i32 @dealwithargs(i32 noundef %0, ptr noundef %1) #22
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %6) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  %8 = load i32, ptr @NumNodes, align 4, !tbaa !11
  %9 = add nsw i32 %8, -1
  call void @get_points(ptr nonnull sret(%struct.get_point) align 8 %3, i32 noundef 1, double noundef 1.000000e+00, i32 noundef %6, i32 noundef 1023, i32 noundef %9, i32 noundef 1) #19
  %10 = load ptr, ptr %3, align 8, !tbaa.struct !36
  %11 = getelementptr inbounds i8, ptr %3, i64 8
  %12 = load double, ptr %11, align 8, !tbaa.struct !37
  %13 = getelementptr inbounds i8, ptr %3, i64 16
  %14 = load i32, ptr %13, align 8, !tbaa.struct !38
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  %15 = add nsw i32 %6, -1
  %16 = load i32, ptr @NumNodes, align 4, !tbaa !11
  call void @get_points(ptr nonnull sret(%struct.get_point) align 8 %4, i32 noundef %15, double noundef %12, i32 noundef %15, i32 noundef %14, i32 noundef 0, i32 noundef %16) #19
  %17 = load ptr, ptr %4, align 8, !tbaa.struct !36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  %19 = add nsw i32 %6, 1
  store i32 %19, ptr @num_vertices, align 4, !tbaa !11
  %20 = mul nsw i32 %19, 12
  store i32 %20, ptr @num_edgeparts, align 4, !tbaa !11
  %21 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #24
  %22 = sext i32 %20 to i64
  %23 = shl nsw i64 %22, 3
  %24 = tail call noalias ptr @malloc(i64 noundef %23) #24
  %25 = getelementptr inbounds %struct.EDGE_STACK, ptr %21, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !39
  %26 = mul nsw i32 %19, 6
  %27 = getelementptr inbounds %struct.EDGE_STACK, ptr %21, i64 0, i32 2
  store i32 %26, ptr %27, align 8, !tbaa !41
  %28 = load i32, ptr @flag, align 4, !tbaa !11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %2
  tail call void @in_order(ptr noundef %17) #19
  %31 = load i32, ptr @flag, align 4, !tbaa !11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load double, ptr %10, align 8, !tbaa !28
  %35 = getelementptr inbounds %struct.VEC2, ptr %10, i64 0, i32 1
  %36 = load double, ptr %35, align 8, !tbaa !29
  %37 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %34, double noundef %36) #19
  br label %38

38:                                               ; preds = %33, %30, %2
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %6) #19
  %40 = tail call { ptr, ptr } @build_delaunay(ptr noundef %17, ptr noundef %10) #19
  %41 = load i32, ptr @flag, align 4, !tbaa !11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = extractvalue { ptr, ptr } %40, 0
  tail call void @output_voronoi_diagram(ptr noundef %44, i32 noundef %6, ptr noundef nonnull %21) #22
  br label %45

45:                                               ; preds = %43, %38
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @get_points(ptr noalias nocapture sret(%struct.get_point) align 8 %0, i32 noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #12 {
  %8 = icmp slt i32 %1, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.get_point, ptr %0, i64 0, i32 1
  store double %2, ptr %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.get_point, ptr %0, i64 0, i32 2
  store i32 %4, ptr %11, align 8, !tbaa !44
  br label %60

12:                                               ; preds = %7
  %13 = lshr i32 %1, 1
  %14 = sdiv i32 %6, 2
  %15 = add nsw i32 %14, %5
  tail call void @get_points(ptr nonnull sret(%struct.get_point) align 8 %0, i32 noundef %13, double noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %15, i32 noundef %14) #19
  %16 = sub nsw i32 %3, %13
  %17 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  %18 = getelementptr inbounds %struct.get_point, ptr %0, i64 0, i32 1
  %19 = load double, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.get_point, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !44
  %22 = sdiv i32 %21, 10000
  %23 = srem i32 %21, 10000
  %24 = mul nsw i32 %23, 3141
  %25 = mul nsw i32 %22, 5821
  %26 = add nsw i32 %24, %25
  %27 = srem i32 %26, 10000
  %28 = mul nsw i32 %27, 10000
  %29 = mul nsw i32 %23, 5821
  %30 = add nsw i32 %29, 1
  %31 = add nsw i32 %30, %28
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %32, 0x41DFFFFFFFC00000
  %34 = tail call double @log(double noundef %33) #22
  %35 = sitofp i32 %16 to double
  %36 = fdiv double %34, %35
  %37 = tail call double @exp(double noundef %36) #22
  %38 = fmul double %19, %37
  store double %38, ptr %17, align 8, !tbaa !28
  %39 = sdiv i32 %31, 10000
  %40 = srem i32 %31, 10000
  %41 = mul nsw i32 %40, 3141
  %42 = mul nsw i32 %39, 5821
  %43 = add nsw i32 %41, %42
  %44 = srem i32 %43, 10000
  %45 = mul nsw i32 %44, 10000
  %46 = mul nsw i32 %40, 5821
  %47 = add nsw i32 %46, 1
  %48 = add nsw i32 %47, %45
  store i32 %48, ptr %20, align 8, !tbaa !44
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %49, 0x41DFFFFFFFC00000
  %51 = getelementptr inbounds %struct.VEC2, ptr %17, i64 0, i32 1
  store double %50, ptr %51, align 8, !tbaa !29
  %52 = fmul double %50, %50
  %53 = tail call double @llvm.fmuladd.f64(double %38, double %38, double %52)
  %54 = getelementptr inbounds %struct.VEC2, ptr %17, i64 0, i32 2
  store double %53, ptr %54, align 8, !tbaa !35
  %55 = load ptr, ptr %0, align 8, !tbaa !45
  %56 = getelementptr inbounds %struct.VERTEX, ptr %17, i64 0, i32 2
  store ptr %55, ptr %56, align 8, !tbaa !20
  %57 = add nsw i32 %16, -1
  tail call void @get_points(ptr nonnull sret(%struct.get_point) align 8 %0, i32 noundef %13, double noundef %38, i32 noundef %57, i32 noundef %48, i32 noundef %5, i32 noundef %14) #19
  %58 = load ptr, ptr %0, align 8, !tbaa !45
  %59 = getelementptr inbounds %struct.VERTEX, ptr %17, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !24
  br label %60

60:                                               ; preds = %12, %9
  %61 = phi ptr [ null, %9 ], [ %17, %12 ]
  store ptr %61, ptr %0, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @pop_edge(ptr nocapture noundef %0) #15 {
  %2 = load i32, ptr %0, align 8, !tbaa !46
  %3 = add nsw i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.EDGE_STACK, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  ret ptr %8
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @push_ring(ptr nocapture noundef %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.edge_rec, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.EDGE_STACK, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.EDGE_STACK, ptr %0, i64 0, i32 1
  br label %9

9:                                                ; preds = %25, %6
  %10 = phi ptr [ %4, %6 ], [ %27, %25 ]
  %11 = getelementptr inbounds %struct.edge_rec, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !19
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  store i64 1, ptr %11, align 8, !tbaa !19
  %15 = load i32, ptr %0, align 8, !tbaa !46
  %16 = load i32, ptr %7, align 8, !tbaa !41
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15)
  br label %25

20:                                               ; preds = %14
  %21 = add nsw i32 %15, 1
  store i32 %21, ptr %0, align 8, !tbaa !46
  %22 = load ptr, ptr %8, align 8, !tbaa !39
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  store ptr %10, ptr %24, align 8, !tbaa !7
  br label %25

25:                                               ; preds = %20, %18, %9
  %26 = getelementptr inbounds %struct.edge_rec, ptr %10, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  %28 = icmp eq ptr %27, %1
  br i1 %28, label %29, label %9, !llvm.loop !47

29:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @push_nonzero_ring(ptr nocapture noundef %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.edge_rec, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.EDGE_STACK, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.EDGE_STACK, ptr %0, i64 0, i32 1
  br label %9

9:                                                ; preds = %25, %6
  %10 = phi ptr [ %4, %6 ], [ %27, %25 ]
  %11 = getelementptr inbounds %struct.edge_rec, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !19
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %9
  store i64 0, ptr %11, align 8, !tbaa !19
  %15 = load i32, ptr %0, align 8, !tbaa !46
  %16 = load i32, ptr %7, align 8, !tbaa !41
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15)
  br label %25

20:                                               ; preds = %14
  %21 = add nsw i32 %15, 1
  store i32 %21, ptr %0, align 8, !tbaa !46
  %22 = load ptr, ptr %8, align 8, !tbaa !39
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  store ptr %10, ptr %24, align 8, !tbaa !7
  br label %25

25:                                               ; preds = %20, %18, %9
  %26 = getelementptr inbounds %struct.edge_rec, ptr %10, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  %28 = icmp eq ptr %27, %1
  br i1 %28, label %29, label %9, !llvm.loop !48

29:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @zero_seen(ptr nocapture noundef %0, ptr noundef %1) #0 {
  store i32 0, ptr %0, align 8, !tbaa !46
  tail call void @push_nonzero_ring(ptr noundef nonnull %0, ptr noundef %1) #19
  %3 = load i32, ptr %0, align 8, !tbaa !46
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.EDGE_STACK, ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ %3, %5 ], [ %17, %7 ]
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %0, align 8, !tbaa !46
  %10 = load ptr, ptr %6, align 8, !tbaa !39
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = ptrtoint ptr %13 to i64
  %15 = xor i64 %14, 64
  %16 = inttoptr i64 %15 to ptr
  tail call void @push_nonzero_ring(ptr noundef nonnull %0, ptr noundef %16) #19
  %17 = load i32, ptr %0, align 8, !tbaa !46
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %7, !llvm.loop !49

19:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @plot_dedge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load double, ptr %0, align 8, !tbaa !28
  %4 = getelementptr inbounds %struct.VEC2, ptr %0, i64 0, i32 1
  %5 = load double, ptr %4, align 8, !tbaa !29
  %6 = load double, ptr %1, align 8, !tbaa !28
  %7 = getelementptr inbounds %struct.VEC2, ptr %1, i64 0, i32 1
  %8 = load double, ptr %7, align 8, !tbaa !29
  %9 = fptrunc double %3 to float
  %10 = fpext float %9 to double
  %11 = fptrunc double %5 to float
  %12 = fpext float %11 to double
  %13 = fptrunc double %6 to float
  %14 = fpext float %13 to double
  %15 = fptrunc double %8 to float
  %16 = fpext float %15 to double
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %10, double noundef %12, double noundef %14, double noundef %16) #19
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @circle_center(ptr noalias nocapture writeonly sret(%struct.VEC2) align 8 %0, ptr noundef byval(%struct.VEC2) align 8 %1, ptr noundef byval(%struct.VEC2) align 8 %2, ptr noundef byval(%struct.VEC2) align 8 %3) #3 {
  %5 = alloca %struct.VEC2, align 8
  %6 = alloca %struct.VEC2, align 8
  %7 = alloca %struct.VEC2, align 8
  %8 = alloca %struct.VEC2, align 8
  %9 = alloca %struct.VEC2, align 8
  %10 = alloca %struct.VEC2, align 8
  %11 = alloca %struct.VEC2, align 8
  %12 = alloca %struct.VEC2, align 8
  %13 = alloca %struct.VEC2, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #23
  call void @V2_sub(ptr nonnull sret(%struct.VEC2) align 8 %6, ptr noundef nonnull byval(%struct.VEC2) align 8 %2, ptr noundef nonnull byval(%struct.VEC2) align 8 %3) #22
  %14 = call double @V2_magn(ptr noundef nonnull byval(%struct.VEC2) align 8 %6) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #23
  call void @V2_sum(ptr nonnull sret(%struct.VEC2) align 8 %13, ptr noundef nonnull byval(%struct.VEC2) align 8 %1, ptr noundef nonnull byval(%struct.VEC2) align 8 %2) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #23
  call void @V2_times(ptr nonnull sret(%struct.VEC2) align 8 %7, double noundef 5.000000e-01, ptr noundef nonnull byval(%struct.VEC2) align 8 %6) #22
  %15 = fcmp olt double %14, 0.000000e+00
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  call void @V2_sub(ptr nonnull sret(%struct.VEC2) align 8 %8, ptr noundef nonnull byval(%struct.VEC2) align 8 %2, ptr noundef nonnull byval(%struct.VEC2) align 8 %1) #22
  call void @V2_sub(ptr nonnull sret(%struct.VEC2) align 8 %9, ptr noundef nonnull byval(%struct.VEC2) align 8 %3, ptr noundef nonnull byval(%struct.VEC2) align 8 %1) #22
  %17 = call double @V2_cprod(ptr noundef nonnull byval(%struct.VEC2) align 8 %8, ptr noundef nonnull byval(%struct.VEC2) align 8 %9) #22
  %18 = fmul double %17, -2.000000e+00
  call void @V2_sub(ptr nonnull sret(%struct.VEC2) align 8 %10, ptr noundef nonnull byval(%struct.VEC2) align 8 %3, ptr noundef nonnull byval(%struct.VEC2) align 8 %2) #22
  %19 = call double @V2_dot(ptr noundef nonnull byval(%struct.VEC2) align 8 %10, ptr noundef nonnull byval(%struct.VEC2) align 8 %9) #22
  call void @V2_cross(ptr nonnull sret(%struct.VEC2) align 8 %11, ptr noundef nonnull byval(%struct.VEC2) align 8 %8) #22
  %20 = fdiv double %19, %18
  call void @V2_times(ptr nonnull sret(%struct.VEC2) align 8 %12, double noundef %20, ptr noundef nonnull byval(%struct.VEC2) align 8 %11) #22
  call void @V2_sum(ptr nonnull sret(%struct.VEC2) align 8 %5, ptr noundef nonnull byval(%struct.VEC2) align 8 %7, ptr noundef nonnull byval(%struct.VEC2) align 8 %12) #22
  br label %21

21:                                               ; preds = %16, %4
  %22 = phi ptr [ %5, %16 ], [ %7, %4 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %22, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind optsize uwtable
define internal void @output_voronoi_diagram(ptr noundef %0, i32 noundef %1, ptr noundef %2) #3 {
  %4 = alloca %struct.VEC2, align 8
  %5 = alloca %struct.VEC2, align 8
  %6 = alloca %struct.VEC2, align 8
  %7 = alloca %struct.VEC2, align 8
  %8 = alloca %struct.VEC2, align 8
  %9 = alloca %struct.VEC2, align 8
  %10 = alloca %struct.VEC2, align 8
  %11 = alloca %struct.VEC2, align 8
  %12 = alloca %struct.VEC2, align 8
  %13 = alloca %struct.VEC2, align 8
  %14 = alloca %struct.VEC2, align 8
  %15 = alloca %struct.VEC2, align 8
  %16 = alloca %struct.VEC2, align 8
  %17 = alloca %struct.VEC2, align 8
  %18 = alloca %struct.VEC2, align 8
  %19 = alloca %struct.VEC2, align 8
  %20 = alloca %struct.VEC2, align 8
  %21 = alloca %struct.VEC2, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #23
  %22 = load i32, ptr @voronoi, align 4, !tbaa !11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %83, label %24

24:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @zero_seen(ptr noundef %2, ptr noundef %0) #22
  %25 = getelementptr inbounds i8, ptr %8, i64 8
  %26 = getelementptr inbounds i8, ptr %5, i64 8
  br label %27

27:                                               ; preds = %27, %24
  %28 = phi ptr [ %0, %24 ], [ %81, %27 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #23
  %29 = ptrtoint ptr %28 to i64
  %30 = xor i64 %29, 64
  %31 = inttoptr i64 %30 to ptr
  %32 = load ptr, ptr %31, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %32, i64 24, i1 false), !tbaa.struct !50
  %33 = load ptr, ptr %28, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %33, i64 24, i1 false), !tbaa.struct !50
  %34 = getelementptr inbounds %struct.edge_rec, ptr %28, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !18
  %36 = ptrtoint ptr %35 to i64
  %37 = xor i64 %36, 64
  %38 = inttoptr i64 %37 to ptr
  %39 = load ptr, ptr %38, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %39, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #23
  call void @V2_sub(ptr nonnull sret(%struct.VEC2) align 8 %12, ptr noundef nonnull byval(%struct.VEC2) align 8 %9, ptr noundef nonnull byval(%struct.VEC2) align 8 %10) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #23
  call void @circle_center(ptr nonnull sret(%struct.VEC2) align 8 %13, ptr noundef nonnull byval(%struct.VEC2) align 8 %10, ptr noundef nonnull byval(%struct.VEC2) align 8 %9, ptr noundef nonnull byval(%struct.VEC2) align 8 %11) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #23
  call void @V2_sum(ptr nonnull sret(%struct.VEC2) align 8 %14, ptr noundef nonnull byval(%struct.VEC2) align 8 %10, ptr noundef nonnull byval(%struct.VEC2) align 8 %9) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #23
  call void @V2_times(ptr nonnull sret(%struct.VEC2) align 8 %15, double noundef 5.000000e-01, ptr noundef nonnull byval(%struct.VEC2) align 8 %6) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #23
  call void @V2_sub(ptr nonnull sret(%struct.VEC2) align 8 %16, ptr noundef nonnull byval(%struct.VEC2) align 8 %5, ptr noundef nonnull byval(%struct.VEC2) align 8 %7) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #23
  %40 = call double @V2_magn(ptr noundef nonnull byval(%struct.VEC2) align 8 %8) #22
  %41 = fadd double %40, 1.000000e+00
  %42 = call double @V2_magn(ptr noundef nonnull byval(%struct.VEC2) align 8 %4) #22
  %43 = fdiv double %41, %42
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #23
  call void @V2_cross(ptr nonnull sret(%struct.VEC2) align 8 %17, ptr noundef nonnull byval(%struct.VEC2) align 8 %4) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #23
  call void @V2_times(ptr nonnull sret(%struct.VEC2) align 8 %18, double noundef %43, ptr noundef nonnull byval(%struct.VEC2) align 8 %6) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %18, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #23
  call void @V2_sum(ptr nonnull sret(%struct.VEC2) align 8 %19, ptr noundef nonnull byval(%struct.VEC2) align 8 %5, ptr noundef nonnull byval(%struct.VEC2) align 8 %7) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %19, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #23
  %44 = load double, ptr %8, align 8
  %45 = load double, ptr %25, align 8
  %46 = load double, ptr %5, align 8
  %47 = load double, ptr %26, align 8
  %48 = fptrunc double %46 to float
  %49 = fptrunc double %47 to float
  %50 = fptrunc double %44 to float
  %51 = fptrunc double %45 to float
  %52 = fcmp uno float %48, 0.000000e+00
  %53 = call float @llvm.fabs.f32(float %48)
  %54 = select i1 %52, float %53, float %48
  %55 = fcmp uno float %49, 0.000000e+00
  %56 = call float @llvm.fabs.f32(float %49)
  %57 = select i1 %55, float %56, float %49
  %58 = fcmp uno float %50, 0.000000e+00
  %59 = call float @llvm.fabs.f32(float %50)
  %60 = select i1 %58, float %59, float %50
  %61 = fcmp uno float %51, 0.000000e+00
  %62 = call float @llvm.fabs.f32(float %51)
  %63 = select i1 %61, float %62, float %51
  %64 = fpext float %54 to double
  %65 = fpext float %57 to double
  %66 = fpext float %60 to double
  %67 = fpext float %63 to double
  %68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %64, double noundef %65, double noundef %66, double noundef %67) #19
  %69 = add i64 %29, 32
  %70 = and i64 %69, 127
  %71 = and i64 %29, -128
  %72 = or i64 %70, %71
  %73 = inttoptr i64 %72 to ptr
  %74 = getelementptr inbounds %struct.edge_rec, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !18
  %76 = ptrtoint ptr %75 to i64
  %77 = add i64 %76, 96
  %78 = and i64 %77, 127
  %79 = and i64 %76, -128
  %80 = or i64 %78, %79
  %81 = inttoptr i64 %80 to ptr
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #23
  %82 = icmp eq ptr %81, %0
  br i1 %82, label %83, label %27, !llvm.loop !51

83:                                               ; preds = %27, %3
  store i32 0, ptr %2, align 8, !tbaa !46
  call void @push_ring(ptr noundef nonnull %2, ptr noundef %0) #22
  %84 = load i32, ptr %2, align 8, !tbaa !46
  %85 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.12, i32 noundef %84) #19
  %86 = load i32, ptr %2, align 8, !tbaa !46
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %165, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds i8, ptr %7, i64 8
  %90 = getelementptr inbounds i8, ptr %6, i64 8
  br label %91

91:                                               ; preds = %159, %88
  %92 = call ptr (ptr, ...) @pop_edge(ptr noundef nonnull %2) #22
  %93 = getelementptr inbounds %struct.edge_rec, ptr %92, i64 0, i32 2
  %94 = load i64, ptr %93, align 8, !tbaa !19
  %95 = icmp eq i64 %94, 1
  br i1 %95, label %96, label %159

96:                                               ; preds = %156, %91
  %97 = phi ptr [ %99, %156 ], [ %92, %91 ]
  %98 = getelementptr inbounds %struct.edge_rec, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !18
  %100 = load ptr, ptr %97, align 8, !tbaa !15
  %101 = load double, ptr %100, align 8, !tbaa !28
  %102 = ptrtoint ptr %97 to i64
  %103 = xor i64 %102, 64
  %104 = inttoptr i64 %103 to ptr
  %105 = load ptr, ptr %104, align 8, !tbaa !15
  %106 = load double, ptr %105, align 8, !tbaa !28
  %107 = fcmp ult double %101, %106
  br i1 %107, label %156, label %108

108:                                              ; preds = %96
  call void @plot_dedge(ptr noundef nonnull %100, ptr noundef nonnull %105) #19
  %109 = getelementptr inbounds %struct.edge_rec, ptr %104, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !18
  %111 = load ptr, ptr %97, align 8, !tbaa !15
  %112 = load ptr, ptr %104, align 8, !tbaa !15
  %113 = ptrtoint ptr %99 to i64
  %114 = xor i64 %113, 64
  %115 = inttoptr i64 %114 to ptr
  %116 = load ptr, ptr %115, align 8, !tbaa !15
  %117 = ptrtoint ptr %110 to i64
  %118 = xor i64 %117, 64
  %119 = inttoptr i64 %118 to ptr
  %120 = load ptr, ptr %119, align 8, !tbaa !15
  %121 = call i32 @ccw(ptr noundef %111, ptr noundef %112, ptr noundef %116) #22
  %122 = call i32 @ccw(ptr noundef %111, ptr noundef %112, ptr noundef %120) #22
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %156, label %124

124:                                              ; preds = %108
  %125 = load ptr, ptr %97, align 8, !tbaa !15
  %126 = load ptr, ptr %104, align 8, !tbaa !15
  %127 = load ptr, ptr %115, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #23
  call void @circle_center(ptr nonnull sret(%struct.VEC2) align 8 %20, ptr noundef nonnull byval(%struct.VEC2) align 8 %125, ptr noundef nonnull byval(%struct.VEC2) align 8 %126, ptr noundef nonnull byval(%struct.VEC2) align 8 %127) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %20, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #23
  %128 = load ptr, ptr %104, align 8, !tbaa !15
  %129 = load ptr, ptr %97, align 8, !tbaa !15
  %130 = load ptr, ptr %119, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %21) #23
  call void @circle_center(ptr nonnull sret(%struct.VEC2) align 8 %21, ptr noundef nonnull byval(%struct.VEC2) align 8 %128, ptr noundef nonnull byval(%struct.VEC2) align 8 %129, ptr noundef nonnull byval(%struct.VEC2) align 8 %130) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %21, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #23
  %131 = load double, ptr %7, align 8
  %132 = load double, ptr %89, align 8
  %133 = load double, ptr %6, align 8
  %134 = load double, ptr %90, align 8
  %135 = fptrunc double %133 to float
  %136 = fptrunc double %134 to float
  %137 = fptrunc double %131 to float
  %138 = fptrunc double %132 to float
  %139 = fcmp uno float %135, 0.000000e+00
  %140 = call float @llvm.fabs.f32(float %135)
  %141 = select i1 %139, float %140, float %135
  %142 = fcmp uno float %136, 0.000000e+00
  %143 = call float @llvm.fabs.f32(float %136)
  %144 = select i1 %142, float %143, float %136
  %145 = fcmp uno float %137, 0.000000e+00
  %146 = call float @llvm.fabs.f32(float %137)
  %147 = select i1 %145, float %146, float %137
  %148 = fcmp uno float %138, 0.000000e+00
  %149 = call float @llvm.fabs.f32(float %138)
  %150 = select i1 %148, float %149, float %138
  %151 = fpext float %141 to double
  %152 = fpext float %144 to double
  %153 = fpext float %147 to double
  %154 = fpext float %150 to double
  %155 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %151, double noundef %152, double noundef %153, double noundef %154) #19
  br label %156

156:                                              ; preds = %124, %108, %96
  %157 = getelementptr inbounds %struct.edge_rec, ptr %97, i64 0, i32 2
  store i64 2, ptr %157, align 8, !tbaa !19
  %158 = icmp eq ptr %99, %92
  br i1 %158, label %159, label %96, !llvm.loop !52

159:                                              ; preds = %156, %91
  %160 = ptrtoint ptr %92 to i64
  %161 = xor i64 %160, 64
  %162 = inttoptr i64 %161 to ptr
  call void @push_ring(ptr noundef nonnull %2, ptr noundef %162) #22
  %163 = load i32, ptr %2, align 8, !tbaa !46
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %91, !llvm.loop !53

165:                                              ; preds = %159, %83
  %166 = phi ptr [ %0, %83 ], [ %92, %159 ]
  call void (ptr, ptr, ...) @zero_seen(ptr noundef nonnull %2, ptr noundef %166) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal double @V2_cprod(ptr nocapture noundef readonly byval(%struct.VEC2) align 8 %0, ptr nocapture noundef readonly byval(%struct.VEC2) align 8 %1) #10 {
  %3 = load double, ptr %0, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.VEC2, ptr %1, i64 0, i32 1
  %5 = load double, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.VEC2, ptr %0, i64 0, i32 1
  %7 = load double, ptr %6, align 8, !tbaa !55
  %8 = load double, ptr %1, align 8, !tbaa !54
  %9 = fneg double %7
  %10 = fmul double %8, %9
  %11 = tail call double @llvm.fmuladd.f64(double %3, double %5, double %10)
  ret double %11
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal double @V2_dot(ptr nocapture noundef readonly byval(%struct.VEC2) align 8 %0, ptr nocapture noundef readonly byval(%struct.VEC2) align 8 %1) #10 {
  %3 = load double, ptr %0, align 8, !tbaa !54
  %4 = load double, ptr %1, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.VEC2, ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.VEC2, ptr %1, i64 0, i32 1
  %8 = load double, ptr %7, align 8, !tbaa !55
  %9 = fmul double %6, %8
  %10 = tail call double @llvm.fmuladd.f64(double %3, double %4, double %9)
  ret double %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @V2_times(ptr noalias nocapture writeonly sret(%struct.VEC2) align 8 %0, double noundef %1, ptr nocapture noundef readonly byval(%struct.VEC2) align 8 %2) #17 {
  %4 = load <2 x double>, ptr %2, align 8, !tbaa !31
  %5 = insertelement <2 x double> poison, double %1, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = fmul <2 x double> %4, %6
  store <2 x double> %7, ptr %0, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @V2_sum(ptr noalias nocapture writeonly sret(%struct.VEC2) align 8 %0, ptr nocapture noundef readonly byval(%struct.VEC2) align 8 %1, ptr nocapture noundef readonly byval(%struct.VEC2) align 8 %2) #17 {
  %4 = load <2 x double>, ptr %1, align 8, !tbaa !31
  %5 = load <2 x double>, ptr %2, align 8, !tbaa !31
  %6 = fadd <2 x double> %4, %5
  store <2 x double> %6, ptr %0, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @V2_sub(ptr noalias nocapture writeonly sret(%struct.VEC2) align 8 %0, ptr nocapture noundef readonly byval(%struct.VEC2) align 8 %1, ptr nocapture noundef readonly byval(%struct.VEC2) align 8 %2) #17 {
  %4 = load <2 x double>, ptr %1, align 8, !tbaa !31
  %5 = load <2 x double>, ptr %2, align 8, !tbaa !31
  %6 = fsub <2 x double> %4, %5
  store <2 x double> %6, ptr %0, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal double @V2_magn(ptr nocapture noundef readonly byval(%struct.VEC2) align 8 %0) #10 {
  %2 = load double, ptr %0, align 8, !tbaa !54
  %3 = getelementptr inbounds %struct.VEC2, ptr %0, i64 0, i32 1
  %4 = load double, ptr %3, align 8, !tbaa !55
  %5 = fmul double %4, %4
  %6 = tail call double @llvm.fmuladd.f64(double %2, double %2, double %5)
  %7 = tail call double @llvm.sqrt.f64(double %6)
  ret double %7
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @V2_cross(ptr noalias nocapture writeonly sret(%struct.VEC2) align 8 %0, ptr nocapture noundef readonly byval(%struct.VEC2) align 8 %1) #17 {
  %3 = getelementptr inbounds %struct.VEC2, ptr %1, i64 0, i32 1
  %4 = load double, ptr %3, align 8, !tbaa !55
  store double %4, ptr %0, align 8, !tbaa !54
  %5 = load double, ptr %1, align 8, !tbaa !54
  %6 = fneg double %5
  %7 = getelementptr inbounds %struct.VEC2, ptr %0, i64 0, i32 1
  store double %6, ptr %7, align 8, !tbaa !55
  ret void
}

attributes #0 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nofree nounwind }
attributes #8 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind optsize willreturn memory(read) }
attributes #19 = { optsize }
attributes #20 = { noreturn nounwind optsize }
attributes #21 = { nounwind optsize allocsize(1) }
attributes #22 = { nounwind optsize }
attributes #23 = { nounwind }
attributes #24 = { nounwind optsize allocsize(0) }

!llvm.ident = !{!0, !0, !0, !0}
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
!15 = !{!16, !8, i64 0}
!16 = !{!"edge_rec", !8, i64 0, !8, i64 8, !17, i64 16, !8, i64 24}
!17 = !{!"long", !9, i64 0}
!18 = !{!16, !8, i64 8}
!19 = !{!16, !17, i64 16}
!20 = !{!21, !8, i64 32}
!21 = !{!"VERTEX", !22, i64 0, !8, i64 24, !8, i64 32}
!22 = !{!"VEC2", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"double", !9, i64 0}
!24 = !{!21, !8, i64 24}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = !{!21, !23, i64 0}
!29 = !{!21, !23, i64 8}
!30 = distinct !{!30, !14}
!31 = !{!23, !23, i64 0}
!32 = !{i32 0, i32 2}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = !{!21, !23, i64 16}
!36 = !{i64 0, i64 8, !7, i64 8, i64 8, !31, i64 16, i64 4, !11}
!37 = !{i64 0, i64 8, !31, i64 8, i64 4, !11}
!38 = !{i64 0, i64 4, !11}
!39 = !{!40, !8, i64 8}
!40 = !{!"EDGE_STACK", !12, i64 0, !8, i64 8, !12, i64 16}
!41 = !{!40, !12, i64 16}
!42 = !{!43, !23, i64 8}
!43 = !{!"get_point", !8, i64 0, !23, i64 8, !12, i64 16}
!44 = !{!43, !12, i64 16}
!45 = !{!43, !8, i64 0}
!46 = !{!40, !12, i64 0}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = !{i64 0, i64 8, !31, i64 8, i64 8, !31, i64 16, i64 8, !31}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !14}
!54 = !{!22, !23, i64 0}
!55 = !{!22, !23, i64 8}
