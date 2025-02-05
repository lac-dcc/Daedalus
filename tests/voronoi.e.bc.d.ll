; ModuleID = 'voronoi.e.bc.ll'
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
  %7 = tail call i32 @atoi(ptr nocapture noundef %6) #19
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
  %15 = tail call i32 @atoi(ptr nocapture noundef %14) #19
  br label %30

16:                                               ; preds = %8, %4
  %17 = getelementptr inbounds ptr, ptr %1, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !7
  %19 = tail call i32 @atoi(ptr nocapture noundef %18) #19
  store i32 %19, ptr @NumNodes, align 4, !tbaa !11
  %20 = getelementptr inbounds ptr, ptr %1, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = tail call i32 @atoi(ptr nocapture noundef %21) #19
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
  %34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %31, i32 noundef %32, i32 noundef %33) #20
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
  %21 = tail call ptr @alloc_edge() #20
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
  %4 = tail call ptr @myalign(i32 noundef 128, i32 noundef 128) #20
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 127
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %4) #20
  tail call void @exit(i32 noundef -1) #21
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
  %5 = tail call noalias ptr @memalign(i64 noundef %3, i64 noundef %4) #22
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 %3) ]
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  tail call void @exit(i32 noundef -1) #21
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
  %22 = tail call ptr @alloc_edge() #20
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
  br i1 %3, label %46, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VERTEX, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %48, label %8

8:                                                ; preds = %8, %4
  %9 = phi ptr [ %11, %8 ], [ %0, %4 ]
  %10 = getelementptr inbounds %struct.VERTEX, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !25

13:                                               ; preds = %8
  %.lcssa = phi ptr [ %9, %8 ]
  %14 = tail call { ptr, ptr } @build_delaunay(ptr noundef nonnull %6, ptr noundef %1) #20
  %15 = extractvalue { ptr, ptr } %14, 0
  %16 = extractvalue { ptr, ptr } %14, 1
  %17 = getelementptr inbounds %struct.VERTEX, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = tail call { ptr, ptr } @build_delaunay(ptr noundef %18, ptr noundef nonnull %0) #20
  %20 = extractvalue { ptr, ptr } %19, 0
  %21 = extractvalue { ptr, ptr } %19, 1
  %22 = tail call { ptr, ptr } @do_merge(ptr noundef %20, ptr noundef %21, ptr noundef %15, ptr noundef %16) #20
  %23 = extractvalue { ptr, ptr } %22, 0
  %24 = extractvalue { ptr, ptr } %22, 1
  %25 = load ptr, ptr %23, align 8, !tbaa !15
  %26 = icmp eq ptr %25, %.lcssa
  br i1 %26, label %27, label %31

27:                                               ; preds = %31, %13
  %28 = phi ptr [ %23, %13 ], [ %37, %31 ]
  %29 = load ptr, ptr %24, align 8, !tbaa !15
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %137, label %40

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
  %41 = phi ptr [ %43, %40 ], [ %24, %27 ]
  %42 = call i64 @_wyvern_slice_build_delaunay__425401009(ptr %41)
  %43 = inttoptr i64 %42 to ptr
  %44 = load ptr, ptr %43, align 8, !tbaa !15
  %45 = icmp eq ptr %44, %1
  br i1 %45, label %137, label %40, !llvm.loop !27

46:                                               ; preds = %2
  %47 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef -1) #21
  unreachable

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.VERTEX, ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !24
  %51 = icmp eq ptr %50, null
  %52 = tail call ptr @alloc_edge() #20
  %53 = getelementptr inbounds %struct.edge_rec, ptr %52, i64 0, i32 1
  store ptr %52, ptr %53, align 8, !tbaa !18
  %54 = ptrtoint ptr %52 to i64
  %55 = add i64 %54, 32
  %56 = inttoptr i64 %55 to ptr
  %57 = add i64 %54, 96
  %58 = inttoptr i64 %57 to ptr
  %59 = getelementptr inbounds %struct.edge_rec, ptr %56, i64 0, i32 1
  %60 = add i64 %54, 64
  %61 = inttoptr i64 %60 to ptr
  %62 = getelementptr inbounds %struct.edge_rec, ptr %61, i64 0, i32 1
  %63 = getelementptr inbounds %struct.edge_rec, ptr %58, i64 0, i32 1
  br i1 %51, label %64, label %67

64:                                               ; preds = %48
  store ptr %0, ptr %52, align 8, !tbaa !15
  store ptr %58, ptr %59, align 8, !tbaa !18
  store ptr %61, ptr %62, align 8, !tbaa !18
  store ptr %1, ptr %61, align 8, !tbaa !15
  store ptr %56, ptr %63, align 8, !tbaa !18
  %65 = xor i64 %54, 64
  %66 = inttoptr i64 %65 to ptr
  br label %137

67:                                               ; preds = %48
  store ptr %50, ptr %52, align 8, !tbaa !15
  store ptr %58, ptr %59, align 8, !tbaa !18
  store ptr %61, ptr %62, align 8, !tbaa !18
  store ptr %0, ptr %61, align 8, !tbaa !15
  store ptr %56, ptr %63, align 8, !tbaa !18
  %68 = tail call ptr @alloc_edge() #20
  %69 = getelementptr inbounds %struct.edge_rec, ptr %68, i64 0, i32 1
  store ptr %68, ptr %69, align 8, !tbaa !18
  store ptr %0, ptr %68, align 8, !tbaa !15
  %70 = ptrtoint ptr %68 to i64
  %71 = add i64 %70, 32
  %72 = inttoptr i64 %71 to ptr
  %73 = add i64 %70, 96
  %74 = inttoptr i64 %73 to ptr
  %75 = getelementptr inbounds %struct.edge_rec, ptr %72, i64 0, i32 1
  store ptr %74, ptr %75, align 8, !tbaa !18
  %76 = add i64 %70, 64
  %77 = inttoptr i64 %76 to ptr
  %78 = getelementptr inbounds %struct.edge_rec, ptr %77, i64 0, i32 1
  store ptr %77, ptr %78, align 8, !tbaa !18
  store ptr %1, ptr %77, align 8, !tbaa !15
  %79 = getelementptr inbounds %struct.edge_rec, ptr %74, i64 0, i32 1
  store ptr %72, ptr %79, align 8, !tbaa !18
  %80 = xor i64 %54, 64
  %81 = inttoptr i64 %80 to ptr
  %82 = getelementptr inbounds %struct.edge_rec, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !18
  %84 = ptrtoint ptr %83 to i64
  %85 = add i64 %84, 32
  %86 = and i64 %85, 127
  %87 = and i64 %84, -128
  %88 = or i64 %86, %87
  %89 = inttoptr i64 %88 to ptr
  %90 = load ptr, ptr %69, align 8, !tbaa !18
  %91 = ptrtoint ptr %90 to i64
  %92 = add i64 %91, 32
  %93 = and i64 %92, 127
  %94 = and i64 %91, -128
  %95 = or i64 %93, %94
  %96 = inttoptr i64 %95 to ptr
  %97 = getelementptr inbounds %struct.edge_rec, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !18
  %99 = getelementptr inbounds %struct.edge_rec, ptr %89, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !18
  store ptr %98, ptr %99, align 8, !tbaa !18
  store ptr %100, ptr %97, align 8, !tbaa !18
  %101 = load ptr, ptr %82, align 8, !tbaa !18
  %102 = load ptr, ptr %69, align 8, !tbaa !18
  store ptr %101, ptr %69, align 8, !tbaa !18
  store ptr %102, ptr %82, align 8, !tbaa !18
  %103 = tail call ptr @connect_left(ptr noundef nonnull %68, ptr noundef nonnull %52) #20
  %104 = load double, ptr %50, align 8, !tbaa !28
  %105 = getelementptr inbounds %struct.VEC2, ptr %50, i64 0, i32 1
  %106 = load double, ptr %105, align 8, !tbaa !29
  %107 = load double, ptr %1, align 8, !tbaa !28
  %108 = getelementptr inbounds %struct.VEC2, ptr %1, i64 0, i32 1
  %109 = load double, ptr %108, align 8, !tbaa !29
  %110 = load double, ptr %0, align 8, !tbaa !28
  %111 = getelementptr inbounds %struct.VEC2, ptr %0, i64 0, i32 1
  %112 = load double, ptr %111, align 8, !tbaa !29
  %113 = fsub double %104, %110
  %114 = fsub double %109, %112
  %115 = fsub double %107, %110
  %116 = fsub double %106, %112
  %117 = fneg double %115
  %118 = fmul double %116, %117
  %119 = tail call double @llvm.fmuladd.f64(double %113, double %114, double %118)
  %120 = fcmp ule double %119, 0.000000e+00
  br i1 %120, label %125, label %121

121:                                              ; preds = %67
  %122 = ptrtoint ptr %103 to i64
  %123 = xor i64 %122, 64
  %124 = inttoptr i64 %123 to ptr
  br label %137

125:                                              ; preds = %67
  %126 = xor i64 %70, 64
  %127 = inttoptr i64 %126 to ptr
  %128 = fsub double %104, %107
  %129 = fsub double %112, %109
  %130 = fsub double %110, %107
  %131 = fsub double %106, %109
  %132 = fneg double %130
  %133 = fmul double %131, %132
  %134 = tail call double @llvm.fmuladd.f64(double %128, double %129, double %133)
  %135 = fcmp ule double %134, 0.000000e+00
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  tail call void @deleteedge(ptr noundef %103) #20
  br label %137

137:                                              ; preds = %136, %125, %121, %64, %40, %27
  %138 = phi ptr [ %124, %121 ], [ %52, %125 ], [ %52, %136 ], [ %52, %64 ], [ %28, %27 ], [ %28, %40 ]
  %139 = phi ptr [ %103, %121 ], [ %127, %125 ], [ %127, %136 ], [ %66, %64 ], [ %24, %27 ], [ %43, %40 ]
  %140 = insertvalue { ptr, ptr } poison, ptr %138, 0
  %141 = insertvalue { ptr, ptr } %140, ptr %139, 1
  ret { ptr, ptr } %141
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
  %69 = tail call ptr @connect_left(ptr noundef nonnull %.lcssa5, ptr noundef nonnull %.lcssa4.lcssa) #20
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
  %135 = tail call i32 @incircle(ptr noundef %134, ptr noundef %130, ptr noundef %126, ptr noundef nonnull %93) #20, !range !32
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %123
  tail call void @deleteedge(ptr noundef nonnull %124) #20
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
  %192 = tail call i32 @incircle(ptr noundef %191, ptr noundef %188, ptr noundef %185, ptr noundef nonnull %151) #20, !range !32
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %208, label %194

194:                                              ; preds = %181
  %195 = inttoptr i64 %183 to ptr
  tail call void @deleteedge(ptr noundef nonnull %182) #20
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
  %260 = tail call i32 @incircle(ptr noundef nonnull %226, ptr noundef %256, ptr noundef %257, ptr noundef nonnull %232) #20, !range !32
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %279, label %262

262:                                              ; preds = %259, %255
  %263 = tail call ptr @connect_left(ptr noundef nonnull %221, ptr noundef nonnull %101) #20
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
  %280 = tail call ptr @connect_right(ptr noundef nonnull %152, ptr noundef nonnull %94) #20
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
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %7, double noundef %9) #20
  %11 = getelementptr inbounds %struct.VERTEX, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !24
  tail call void @in_order(ptr noundef %12) #20
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
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %0) #20
  %6 = tail call i32 @dealwithargs(i32 noundef %0, ptr noundef %1) #23
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %6) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #24
  %8 = load i32, ptr @NumNodes, align 4, !tbaa !11
  %9 = add nsw i32 %8, -1
  call void @get_points(ptr nonnull sret(%struct.get_point) align 8 %3, i32 noundef 1, double noundef 1.000000e+00, i32 noundef %6, i32 noundef 1023, i32 noundef %9, i32 noundef 1) #20
  %10 = load ptr, ptr %3, align 8, !tbaa.struct !36
  %11 = getelementptr inbounds i8, ptr %3, i64 8
  %12 = load double, ptr %11, align 8, !tbaa.struct !37
  %13 = getelementptr inbounds i8, ptr %3, i64 16
  %14 = load i32, ptr %13, align 8, !tbaa.struct !38
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #24
  %15 = add nsw i32 %6, -1
  %16 = load i32, ptr @NumNodes, align 4, !tbaa !11
  call void @get_points(ptr nonnull sret(%struct.get_point) align 8 %4, i32 noundef %15, double noundef %12, i32 noundef %15, i32 noundef %14, i32 noundef 0, i32 noundef %16) #20
  %17 = load ptr, ptr %4, align 8, !tbaa.struct !36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #24
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  %19 = add nsw i32 %6, 1
  store i32 %19, ptr @num_vertices, align 4, !tbaa !11
  %20 = mul nsw i32 %19, 12
  store i32 %20, ptr @num_edgeparts, align 4, !tbaa !11
  %21 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #25
  %22 = sext i32 %20 to i64
  %23 = shl nsw i64 %22, 3
  %24 = tail call noalias ptr @malloc(i64 noundef %23) #25
  %25 = getelementptr inbounds %struct.EDGE_STACK, ptr %21, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !39
  %26 = mul nsw i32 %19, 6
  %27 = getelementptr inbounds %struct.EDGE_STACK, ptr %21, i64 0, i32 2
  store i32 %26, ptr %27, align 8, !tbaa !41
  %28 = load i32, ptr @flag, align 4, !tbaa !11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %2
  tail call void @in_order(ptr noundef %17) #20
  %31 = load i32, ptr @flag, align 4, !tbaa !11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load double, ptr %10, align 8, !tbaa !28
  %35 = getelementptr inbounds %struct.VEC2, ptr %10, i64 0, i32 1
  %36 = load double, ptr %35, align 8, !tbaa !29
  %37 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %34, double noundef %36) #20
  br label %38

38:                                               ; preds = %33, %30, %2
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %6) #20
  %40 = tail call { ptr, ptr } @build_delaunay(ptr noundef %17, ptr noundef %10) #20
  %41 = load i32, ptr @flag, align 4, !tbaa !11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = extractvalue { ptr, ptr } %40, 0
  tail call void @output_voronoi_diagram(ptr noundef %44, i32 noundef %6, ptr noundef nonnull %21) #23
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
  tail call void @get_points(ptr nonnull sret(%struct.get_point) align 8 %0, i32 noundef %13, double noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %15, i32 noundef %14) #20
  %16 = sub nsw i32 %3, %13
  %17 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #25
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
  %34 = tail call double @log(double noundef %33) #23
  %35 = sitofp i32 %16 to double
  %36 = fdiv double %34, %35
  %37 = tail call double @exp(double noundef %36) #23
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
  tail call void @get_points(ptr nonnull sret(%struct.get_point) align 8 %0, i32 noundef %13, double noundef %38, i32 noundef %57, i32 noundef %48, i32 noundef %5, i32 noundef %14) #20
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
  tail call void @push_nonzero_ring(ptr noundef nonnull %0, ptr noundef %1) #20
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
  tail call void @push_nonzero_ring(ptr noundef nonnull %0, ptr noundef %16) #20
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
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %10, double noundef %12, double noundef %14, double noundef %16) #20
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #24
  call void @V2_sub(ptr nonnull sret(%struct.VEC2) align 8 %6, ptr noundef nonnull byval(%struct.VEC2) align 8 %2, ptr noundef nonnull byval(%struct.VEC2) align 8 %3) #23
  %14 = call double @V2_magn(ptr noundef nonnull byval(%struct.VEC2) align 8 %6) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #24
  call void @V2_sum(ptr nonnull sret(%struct.VEC2) align 8 %13, ptr noundef nonnull byval(%struct.VEC2) align 8 %1, ptr noundef nonnull byval(%struct.VEC2) align 8 %2) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #24
  call void @V2_times(ptr nonnull sret(%struct.VEC2) align 8 %7, double noundef 5.000000e-01, ptr noundef nonnull byval(%struct.VEC2) align 8 %6) #23
  %15 = fcmp olt double %14, 0.000000e+00
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  call void @V2_sub(ptr nonnull sret(%struct.VEC2) align 8 %8, ptr noundef nonnull byval(%struct.VEC2) align 8 %2, ptr noundef nonnull byval(%struct.VEC2) align 8 %1) #23
  call void @V2_sub(ptr nonnull sret(%struct.VEC2) align 8 %9, ptr noundef nonnull byval(%struct.VEC2) align 8 %3, ptr noundef nonnull byval(%struct.VEC2) align 8 %1) #23
  %17 = call double @V2_cprod(ptr noundef nonnull byval(%struct.VEC2) align 8 %8, ptr noundef nonnull byval(%struct.VEC2) align 8 %9) #23
  %18 = fmul double %17, -2.000000e+00
  call void @V2_sub(ptr nonnull sret(%struct.VEC2) align 8 %10, ptr noundef nonnull byval(%struct.VEC2) align 8 %3, ptr noundef nonnull byval(%struct.VEC2) align 8 %2) #23
  %19 = call double @V2_dot(ptr noundef nonnull byval(%struct.VEC2) align 8 %10, ptr noundef nonnull byval(%struct.VEC2) align 8 %9) #23
  call void @V2_cross(ptr nonnull sret(%struct.VEC2) align 8 %11, ptr noundef nonnull byval(%struct.VEC2) align 8 %8) #23
  %20 = fdiv double %19, %18
  call void @V2_times(ptr nonnull sret(%struct.VEC2) align 8 %12, double noundef %20, ptr noundef nonnull byval(%struct.VEC2) align 8 %11) #23
  call void @V2_sum(ptr nonnull sret(%struct.VEC2) align 8 %5, ptr noundef nonnull byval(%struct.VEC2) align 8 %7, ptr noundef nonnull byval(%struct.VEC2) align 8 %12) #23
  br label %21

21:                                               ; preds = %16, %4
  %22 = phi ptr [ %5, %16 ], [ %7, %4 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %22, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #24
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #24
  %22 = load i32, ptr @voronoi, align 4, !tbaa !11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %80, label %24

24:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @zero_seen(ptr noundef %2, ptr noundef %0) #23
  %25 = getelementptr inbounds i8, ptr %8, i64 8
  %26 = getelementptr inbounds i8, ptr %5, i64 8
  br label %27

27:                                               ; preds = %27, %24
  %28 = phi ptr [ %0, %24 ], [ %78, %27 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #24
  %29 = ptrtoint ptr %28 to i64
  %30 = xor i64 %29, 64
  %31 = inttoptr i64 %30 to ptr
  %32 = load ptr, ptr %31, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %32, i64 24, i1 false), !tbaa.struct !50
  %33 = load ptr, ptr %28, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %33, i64 24, i1 false), !tbaa.struct !50
  %34 = call i64 @_wyvern_slice_build_delaunay__425401009(ptr %28)
  %35 = inttoptr i64 %34 to ptr
  %36 = load ptr, ptr %35, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %36, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #24
  call void @V2_sub(ptr nonnull sret(%struct.VEC2) align 8 %12, ptr noundef nonnull byval(%struct.VEC2) align 8 %9, ptr noundef nonnull byval(%struct.VEC2) align 8 %10) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #24
  call void @circle_center(ptr nonnull sret(%struct.VEC2) align 8 %13, ptr noundef nonnull byval(%struct.VEC2) align 8 %10, ptr noundef nonnull byval(%struct.VEC2) align 8 %9, ptr noundef nonnull byval(%struct.VEC2) align 8 %11) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #24
  call void @V2_sum(ptr nonnull sret(%struct.VEC2) align 8 %14, ptr noundef nonnull byval(%struct.VEC2) align 8 %10, ptr noundef nonnull byval(%struct.VEC2) align 8 %9) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #24
  call void @V2_times(ptr nonnull sret(%struct.VEC2) align 8 %15, double noundef 5.000000e-01, ptr noundef nonnull byval(%struct.VEC2) align 8 %6) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #24
  call void @V2_sub(ptr nonnull sret(%struct.VEC2) align 8 %16, ptr noundef nonnull byval(%struct.VEC2) align 8 %5, ptr noundef nonnull byval(%struct.VEC2) align 8 %7) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #24
  %37 = call double @V2_magn(ptr noundef nonnull byval(%struct.VEC2) align 8 %8) #23
  %38 = fadd double %37, 1.000000e+00
  %39 = call double @V2_magn(ptr noundef nonnull byval(%struct.VEC2) align 8 %4) #23
  %40 = fdiv double %38, %39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #24
  call void @V2_cross(ptr nonnull sret(%struct.VEC2) align 8 %17, ptr noundef nonnull byval(%struct.VEC2) align 8 %4) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #24
  call void @V2_times(ptr nonnull sret(%struct.VEC2) align 8 %18, double noundef %40, ptr noundef nonnull byval(%struct.VEC2) align 8 %6) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %18, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #24
  call void @V2_sum(ptr nonnull sret(%struct.VEC2) align 8 %19, ptr noundef nonnull byval(%struct.VEC2) align 8 %5, ptr noundef nonnull byval(%struct.VEC2) align 8 %7) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %19, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #24
  %41 = load double, ptr %8, align 8
  %42 = load double, ptr %25, align 8
  %43 = load double, ptr %5, align 8
  %44 = load double, ptr %26, align 8
  %45 = fptrunc double %43 to float
  %46 = fptrunc double %44 to float
  %47 = fptrunc double %41 to float
  %48 = fptrunc double %42 to float
  %49 = fcmp uno float %45, 0.000000e+00
  %50 = call float @llvm.fabs.f32(float %45)
  %51 = select i1 %49, float %50, float %45
  %52 = fcmp uno float %46, 0.000000e+00
  %53 = call float @llvm.fabs.f32(float %46)
  %54 = select i1 %52, float %53, float %46
  %55 = fcmp uno float %47, 0.000000e+00
  %56 = call float @llvm.fabs.f32(float %47)
  %57 = select i1 %55, float %56, float %47
  %58 = fcmp uno float %48, 0.000000e+00
  %59 = call float @llvm.fabs.f32(float %48)
  %60 = select i1 %58, float %59, float %48
  %61 = fpext float %51 to double
  %62 = fpext float %54 to double
  %63 = fpext float %57 to double
  %64 = fpext float %60 to double
  %65 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %61, double noundef %62, double noundef %63, double noundef %64) #20
  %66 = add i64 %29, 32
  %67 = and i64 %66, 127
  %68 = and i64 %29, -128
  %69 = or i64 %67, %68
  %70 = inttoptr i64 %69 to ptr
  %71 = getelementptr inbounds %struct.edge_rec, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !18
  %73 = ptrtoint ptr %72 to i64
  %74 = add i64 %73, 96
  %75 = and i64 %74, 127
  %76 = and i64 %73, -128
  %77 = or i64 %75, %76
  %78 = inttoptr i64 %77 to ptr
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #24
  %79 = icmp eq ptr %78, %0
  br i1 %79, label %80, label %27, !llvm.loop !51

80:                                               ; preds = %27, %3
  store i32 0, ptr %2, align 8, !tbaa !46
  call void @push_ring(ptr noundef nonnull %2, ptr noundef %0) #23
  %81 = load i32, ptr %2, align 8, !tbaa !46
  %82 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.12, i32 noundef %81) #20
  %83 = load i32, ptr %2, align 8, !tbaa !46
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %162, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds i8, ptr %7, i64 8
  %87 = getelementptr inbounds i8, ptr %6, i64 8
  br label %88

88:                                               ; preds = %156, %85
  %89 = call ptr (ptr, ...) @pop_edge(ptr noundef nonnull %2) #23
  %90 = getelementptr inbounds %struct.edge_rec, ptr %89, i64 0, i32 2
  %91 = load i64, ptr %90, align 8, !tbaa !19
  %92 = icmp eq i64 %91, 1
  br i1 %92, label %93, label %156

93:                                               ; preds = %153, %88
  %94 = phi ptr [ %96, %153 ], [ %89, %88 ]
  %95 = getelementptr inbounds %struct.edge_rec, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !18
  %97 = load ptr, ptr %94, align 8, !tbaa !15
  %98 = load double, ptr %97, align 8, !tbaa !28
  %99 = ptrtoint ptr %94 to i64
  %100 = xor i64 %99, 64
  %101 = inttoptr i64 %100 to ptr
  %102 = load ptr, ptr %101, align 8, !tbaa !15
  %103 = load double, ptr %102, align 8, !tbaa !28
  %104 = fcmp ult double %98, %103
  br i1 %104, label %153, label %105

105:                                              ; preds = %93
  call void @plot_dedge(ptr noundef nonnull %97, ptr noundef nonnull %102) #20
  %106 = getelementptr inbounds %struct.edge_rec, ptr %101, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !18
  %108 = load ptr, ptr %94, align 8, !tbaa !15
  %109 = load ptr, ptr %101, align 8, !tbaa !15
  %110 = ptrtoint ptr %96 to i64
  %111 = xor i64 %110, 64
  %112 = inttoptr i64 %111 to ptr
  %113 = load ptr, ptr %112, align 8, !tbaa !15
  %114 = ptrtoint ptr %107 to i64
  %115 = xor i64 %114, 64
  %116 = inttoptr i64 %115 to ptr
  %117 = load ptr, ptr %116, align 8, !tbaa !15
  %118 = call i32 @ccw(ptr noundef %108, ptr noundef %109, ptr noundef %113) #23
  %119 = call i32 @ccw(ptr noundef %108, ptr noundef %109, ptr noundef %117) #23
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %153, label %121

121:                                              ; preds = %105
  %122 = load ptr, ptr %94, align 8, !tbaa !15
  %123 = load ptr, ptr %101, align 8, !tbaa !15
  %124 = load ptr, ptr %112, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #24
  call void @circle_center(ptr nonnull sret(%struct.VEC2) align 8 %20, ptr noundef nonnull byval(%struct.VEC2) align 8 %122, ptr noundef nonnull byval(%struct.VEC2) align 8 %123, ptr noundef nonnull byval(%struct.VEC2) align 8 %124) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %20, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #24
  %125 = load ptr, ptr %101, align 8, !tbaa !15
  %126 = load ptr, ptr %94, align 8, !tbaa !15
  %127 = load ptr, ptr %116, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %21) #24
  call void @circle_center(ptr nonnull sret(%struct.VEC2) align 8 %21, ptr noundef nonnull byval(%struct.VEC2) align 8 %125, ptr noundef nonnull byval(%struct.VEC2) align 8 %126, ptr noundef nonnull byval(%struct.VEC2) align 8 %127) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %21, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #24
  %128 = load double, ptr %7, align 8
  %129 = load double, ptr %86, align 8
  %130 = load double, ptr %6, align 8
  %131 = load double, ptr %87, align 8
  %132 = fptrunc double %130 to float
  %133 = fptrunc double %131 to float
  %134 = fptrunc double %128 to float
  %135 = fptrunc double %129 to float
  %136 = fcmp uno float %132, 0.000000e+00
  %137 = call float @llvm.fabs.f32(float %132)
  %138 = select i1 %136, float %137, float %132
  %139 = fcmp uno float %133, 0.000000e+00
  %140 = call float @llvm.fabs.f32(float %133)
  %141 = select i1 %139, float %140, float %133
  %142 = fcmp uno float %134, 0.000000e+00
  %143 = call float @llvm.fabs.f32(float %134)
  %144 = select i1 %142, float %143, float %134
  %145 = fcmp uno float %135, 0.000000e+00
  %146 = call float @llvm.fabs.f32(float %135)
  %147 = select i1 %145, float %146, float %135
  %148 = fpext float %138 to double
  %149 = fpext float %141 to double
  %150 = fpext float %144 to double
  %151 = fpext float %147 to double
  %152 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %148, double noundef %149, double noundef %150, double noundef %151) #20
  br label %153

153:                                              ; preds = %121, %105, %93
  %154 = getelementptr inbounds %struct.edge_rec, ptr %94, i64 0, i32 2
  store i64 2, ptr %154, align 8, !tbaa !19
  %155 = icmp eq ptr %96, %89
  br i1 %155, label %156, label %93, !llvm.loop !52

156:                                              ; preds = %153, %88
  %157 = ptrtoint ptr %89 to i64
  %158 = xor i64 %157, 64
  %159 = inttoptr i64 %158 to ptr
  call void @push_ring(ptr noundef nonnull %2, ptr noundef %159) #23
  %160 = load i32, ptr %2, align 8, !tbaa !46
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %88, !llvm.loop !53

162:                                              ; preds = %156, %80
  %163 = phi ptr [ %0, %80 ], [ %89, %156 ]
  call void (ptr, ptr, ...) @zero_seen(ptr noundef nonnull %2, ptr noundef %163) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #24
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

; Function Attrs: noinline nounwind optsize willreturn
define internal i64 @_wyvern_slice_build_delaunay__425401009(ptr %0) #18 {
sliceclone_:
  %1 = getelementptr inbounds %struct.edge_rec, ptr %0, i64 0, i32 1
  %2 = load ptr, ptr %1, align 8, !tbaa !18
  %3 = ptrtoint ptr %2 to i64
  %4 = xor i64 %3, 64
  ret i64 %4
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
attributes #18 = { noinline nounwind optsize willreturn "Daedalus"="1" }
attributes #19 = { nounwind optsize willreturn memory(read) }
attributes #20 = { optsize }
attributes #21 = { noreturn nounwind optsize }
attributes #22 = { nounwind optsize allocsize(1) }
attributes #23 = { nounwind optsize }
attributes #24 = { nounwind }
attributes #25 = { nounwind optsize allocsize(0) }

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
