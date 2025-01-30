; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/DOE-ProxyApps-C/miniGMG/miniGMG.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.box_type = type { double, %struct.anon, %struct.anon, %struct.anon, i32, i32, i32, i32, i32, [27 x i32], ptr, ptr, [2 x ptr], ptr }
%struct.anon = type { i32, i32, i32 }
%struct.subdomain_type = type { %struct.anon, %struct.anon, i32, i32, [27 x %struct.neighbor_type], ptr }
%struct.neighbor_type = type { i32, i32 }
%struct.domain_type = type { %struct.anon.4, i32, i32, i32, i32, [27 x i32], [10 x ptr], i32, i32, i32, i32, i32, i32, %struct.anon, %struct.anon, %struct.anon, %struct.anon, %struct.anon, i32, i32, i32, i32, i32, [10 x double], [10 x double], ptr }
%struct.anon.4 = type { [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], i64, i64, i64 }
%struct.bufferCopy_type = type { i32, i32, i32, %struct.anon, %struct.anon.11, %struct.anon.11 }
%struct.anon.11 = type { i32, i32, i32, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [26 x i8] c"creating domain...       \00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"#ghosts(%d)>bottom grid size(%d)\0A\00", align 1
@__const.create_domain.FacesEdgesCorners = private unnamed_addr constant [27 x i32] [i32 4, i32 10, i32 12, i32 14, i32 16, i32 22, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 0, i32 2, i32 6, i32 8, i32 18, i32 20, i32 24, i32 26, i32 13], align 16
@__const.create_domain.edges = private unnamed_addr constant [27 x i32] [i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0], align 16
@__const.create_domain.corners = private unnamed_addr constant [27 x i32] [i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1], align 16
@.str.4 = private unnamed_addr constant [32 x i8] c"  %d x %d x %d (per subdomain)\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"  %d x %d x %d (per process)\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"  %d x %d x %d (overall)\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"  %d-deep ghost zones\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"  allocated %llu MB\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"deallocating domain...   \00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"MGBuild...                      \00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"MGSolve...                      \00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"v-cycle=%2d, norm=%22.20f (%12.6e)\0A\00", align 1
@str.14 = private unnamed_addr constant [30 x i8] c"subdomain_dim's must be equal\00", align 1
@str.17 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.1.1 = private unnamed_addr constant [71 x i8] c"error, ranks_in_i*ranks_in_j*ranks_in_k(%d*%d*%d=%d) != MPI_Tasks(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%d MPI Tasks of %d threads\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"truncating the v-cycle at %d^3 subdomains\0A\00", align 1
@.str.4.2 = private unnamed_addr constant [58 x i8] c"initializing alpha, beta, RHS for the ``hard problem''...\00", align 1
@.str.6.3 = private unnamed_addr constant [30 x i8] c"Error test: h = %e, max = %e\0A\00", align 1
@.str.7.4 = private unnamed_addr constant [30 x i8] c"Error test: h = %e, L2  = %e\0A\00", align 1
@str = private unnamed_addr constant [5 x i8] c"done\00", align 1
@str.8 = private unnamed_addr constant [87 x i8] c"usage: ./a.out [log2_subdomain_dim]   [subdomains per rank in i,j,k]  [ranks in i,j,k]\00", align 1
@__const.exchange_boundary.edges = private unnamed_addr constant [27 x i32] [i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0], align 16
@__const.exchange_boundary.corners = private unnamed_addr constant [27 x i32] [i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1], align 16
@.str.1.9 = private unnamed_addr constant [35 x i8] c"  level=%2d, eigenvalue_max ~= %e\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.2.36 = private unnamed_addr constant [33 x i8] c"\0A  average value of f = %20.12e\0A\00", align 1

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @create_box(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = alloca ptr, align 8
  %11 = getelementptr inbounds %struct.box_type, ptr %0, i64 0, i32 8
  store i32 %1, ptr %11, align 4, !tbaa !7
  %12 = getelementptr inbounds %struct.box_type, ptr %0, i64 0, i32 1
  store i32 %2, ptr %12, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.box_type, ptr %0, i64 0, i32 1, i32 1
  store i32 %3, ptr %13, align 4, !tbaa !16
  %14 = getelementptr inbounds %struct.box_type, ptr %0, i64 0, i32 1, i32 2
  store i32 %4, ptr %14, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.box_type, ptr %0, i64 0, i32 2
  store i32 %5, ptr %15, align 4, !tbaa !18
  %16 = getelementptr inbounds %struct.box_type, ptr %0, i64 0, i32 2, i32 1
  store i32 %6, ptr %16, align 4, !tbaa !19
  %17 = getelementptr inbounds %struct.box_type, ptr %0, i64 0, i32 2, i32 2
  store i32 %7, ptr %17, align 4, !tbaa !20
  %18 = shl nsw i32 %8, 1
  %19 = add nsw i32 %18, %5
  %20 = getelementptr inbounds %struct.box_type, ptr %0, i64 0, i32 3
  store i32 %19, ptr %20, align 8, !tbaa !21
  %21 = add nsw i32 %18, %6
  %22 = getelementptr inbounds %struct.box_type, ptr %0, i64 0, i32 3, i32 1
  store i32 %21, ptr %22, align 4, !tbaa !22
  %23 = add nsw i32 %18, %7
  %24 = getelementptr inbounds %struct.box_type, ptr %0, i64 0, i32 3, i32 2
  store i32 %23, ptr %24, align 8, !tbaa !23
  %25 = getelementptr inbounds %struct.box_type, ptr %0, i64 0, i32 4
  store i32 %8, ptr %25, align 4, !tbaa !24
  %26 = getelementptr inbounds %struct.box_type, ptr %0, i64 0, i32 5
  store i32 %19, ptr %26, align 8, !tbaa !25
  %27 = mul nsw i32 %19, %21
  %28 = getelementptr inbounds %struct.box_type, ptr %0, i64 0, i32 6
  %29 = icmp slt i32 %19, 14
  %30 = sub nsw i32 14, %19
  %31 = select i1 %29, i32 %30, i32 0
  %32 = add i32 %27, 7
  %33 = add i32 %32, %31
  %34 = and i32 %33, -8
  store i32 %34, ptr %28, align 4, !tbaa !26
  %35 = mul nsw i32 %34, %23
  %36 = getelementptr inbounds %struct.box_type, ptr %0, i64 0, i32 7
  store i32 %35, ptr %36, align 8, !tbaa !27
  %37 = icmp slt i32 %5, 32
  %38 = and i32 %35, -2147483144
  %39 = icmp eq i32 %38, 64
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %41, %9
  %42 = phi i32 [ %43, %41 ], [ %35, %9 ]
  %43 = add nsw i32 %42, 8
  %44 = and i32 %43, -2147483144
  %45 = icmp eq i32 %44, 64
  br i1 %45, label %46, label %41, !llvm.loop !28

46:                                               ; preds = %41
  %.lcssa = phi i32 [ %43, %41 ]
  store i32 %.lcssa, ptr %36, align 8, !tbaa !27
  br label %47

47:                                               ; preds = %46, %9
  %48 = getelementptr inbounds %struct.box_type, ptr %0, i64 0, i32 10
  %49 = sext i32 %1 to i64
  %50 = shl nsw i64 %49, 3
  %51 = tail call i32 @posix_memalign(ptr noundef nonnull %48, i64 noundef 64, i64 noundef %50) #17
  %52 = load i32, ptr %11, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  %53 = load i32, ptr %36, align 8, !tbaa !27
  %54 = mul nsw i32 %53, %52
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 3
  %57 = call i32 @posix_memalign(ptr noundef nonnull %10, i64 noundef 64, i64 noundef %56) #17
  %58 = load ptr, ptr %10, align 8, !tbaa !30
  %59 = load i32, ptr %36, align 8, !tbaa !27
  %60 = load i32, ptr %11, align 4, !tbaa !7
  %61 = mul nsw i32 %60, %59
  %62 = sext i32 %61 to i64
  %63 = shl nsw i64 %62, 3
  call void @llvm.memset.p0.i64(ptr align 8 %58, i8 0, i64 %63, i1 false)
  %64 = load i32, ptr %36, align 8, !tbaa !27
  %65 = load i32, ptr %11, align 4, !tbaa !7
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %47
  %68 = sext i32 %64 to i64
  %69 = zext i32 %65 to i64
  br label %70

70:                                               ; preds = %70, %67
  %71 = phi i64 [ 0, %67 ], [ %77, %70 ]
  %72 = load ptr, ptr %10, align 8, !tbaa !30
  %73 = mul nsw i64 %71, %68
  %74 = getelementptr inbounds double, ptr %72, i64 %73
  %75 = load ptr, ptr %48, align 8, !tbaa !31
  %76 = getelementptr inbounds ptr, ptr %75, i64 %71
  store ptr %74, ptr %76, align 8, !tbaa !30
  %77 = add nuw nsw i64 %71, 1
  %78 = icmp eq i64 %77, %69
  br i1 %78, label %79, label %70, !llvm.loop !32

79:                                               ; preds = %70, %47
  %80 = getelementptr inbounds %struct.box_type, ptr %0, i64 0, i32 11
  %81 = load i32, ptr %28, align 4, !tbaa !26
  %82 = sext i32 %81 to i64
  %83 = shl nsw i64 %82, 3
  %84 = call i32 @posix_memalign(ptr noundef nonnull %80, i64 noundef 64, i64 noundef %83) #17
  %85 = load ptr, ptr %80, align 8, !tbaa !33
  %86 = load i32, ptr %28, align 4, !tbaa !26
  %87 = sext i32 %86 to i64
  %88 = shl nsw i64 %87, 3
  call void @llvm.memset.p0.i64(ptr align 8 %85, i8 0, i64 %88, i1 false)
  %89 = load i32, ptr %28, align 4, !tbaa !26
  %90 = sext i32 %89 to i64
  %91 = shl nsw i64 %90, 3
  %92 = getelementptr inbounds %struct.box_type, ptr %0, i64 0, i32 12
  %93 = call i32 @posix_memalign(ptr noundef nonnull %92, i64 noundef 64, i64 noundef %91) #17
  %94 = load ptr, ptr %92, align 8, !tbaa !30
  %95 = load i32, ptr %28, align 4, !tbaa !26
  %96 = sext i32 %95 to i64
  %97 = shl nsw i64 %96, 3
  call void @llvm.memset.p0.i64(ptr align 8 %94, i8 0, i64 %97, i1 false)
  %98 = load i32, ptr %28, align 4, !tbaa !26
  %99 = sext i32 %98 to i64
  %100 = shl nsw i64 %99, 3
  %101 = getelementptr inbounds %struct.box_type, ptr %0, i64 0, i32 12, i64 1
  %102 = call i32 @posix_memalign(ptr noundef nonnull %101, i64 noundef 64, i64 noundef %100) #17
  %103 = load ptr, ptr %101, align 8, !tbaa !30
  %104 = load i32, ptr %28, align 4, !tbaa !26
  %105 = sext i32 %104 to i64
  %106 = shl nsw i64 %105, 3
  call void @llvm.memset.p0.i64(ptr align 8 %103, i8 0, i64 %106, i1 false)
  %107 = load i32, ptr %28, align 4, !tbaa !26
  %108 = sub nsw i32 0, %8
  %109 = load i32, ptr %16, align 4, !tbaa !19
  %110 = add nsw i32 %109, %8
  %111 = icmp sgt i32 %110, %108
  br i1 %111, label %112, label %148

112:                                              ; preds = %79
  %113 = load i32, ptr %15, align 4, !tbaa !18
  %114 = add nsw i32 %113, %8
  %115 = icmp sgt i32 %114, %108
  %116 = sext i32 %108 to i64
  %117 = sext i32 %8 to i64
  br label %118

118:                                              ; preds = %145, %112
  %119 = phi i32 [ %108, %112 ], [ %146, %145 ]
  br i1 %115, label %120, label %145

120:                                              ; preds = %118
  %121 = add nsw i32 %119, %8
  %122 = load i32, ptr %26, align 8, !tbaa !25
  %123 = mul nsw i32 %122, %121
  %124 = sext i32 %123 to i64
  %125 = load ptr, ptr %80, align 8, !tbaa !33
  %126 = load ptr, ptr %92, align 8, !tbaa !30
  %127 = load ptr, ptr %101, align 8, !tbaa !30
  br label %128

128:                                              ; preds = %128, %120
  %129 = phi i64 [ %116, %120 ], [ %142, %128 ]
  %130 = add nsw i64 %129, %117
  %131 = add nsw i64 %130, %124
  %132 = trunc i64 %129 to i32
  %133 = xor i32 %119, %132
  %134 = and i32 %133, 1
  %135 = icmp ne i32 %134, 0
  %136 = getelementptr inbounds i64, ptr %125, i64 %131
  %137 = sext i1 %135 to i64
  %138 = select i1 %135, double 1.000000e+00, double 0.000000e+00
  %139 = select i1 %135, double 0.000000e+00, double 1.000000e+00
  store i64 %137, ptr %136, align 8, !tbaa !34
  %140 = getelementptr inbounds double, ptr %126, i64 %131
  store double %138, ptr %140, align 8, !tbaa !36
  %141 = getelementptr inbounds double, ptr %127, i64 %131
  store double %139, ptr %141, align 8, !tbaa !36
  %142 = add nsw i64 %129, 1
  %143 = trunc i64 %142 to i32
  %144 = icmp eq i32 %114, %143
  br i1 %144, label %145, label %128, !llvm.loop !37

145:                                              ; preds = %128, %118
  %146 = add nsw i32 %119, 1
  %147 = icmp eq i32 %146, %110
  br i1 %147, label %148, label %118, !llvm.loop !38

148:                                              ; preds = %145, %79
  %149 = mul nsw i32 %65, %64
  %150 = add i32 %149, %52
  %151 = add i32 %150, %89
  %152 = add i32 %151, %98
  %153 = add i32 %152, %107
  %154 = shl i32 %153, 3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  ret i32 %154
}

; Function Attrs: nofree nounwind optsize
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal void @destroy_box(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.box_type, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !31
  %4 = load ptr, ptr %3, align 8, !tbaa !30
  tail call void @free(ptr noundef %4) #17
  %5 = load ptr, ptr %2, align 8, !tbaa !31
  tail call void @free(ptr noundef %5) #17
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal i32 @create_subdomain(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #6 {
  %11 = getelementptr inbounds %struct.subdomain_type, ptr %0, i64 0, i32 2
  store i32 %9, ptr %11, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.subdomain_type, ptr %0, i64 0, i32 3
  store i32 %8, ptr %12, align 4, !tbaa !41
  store i32 %1, ptr %0, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  store i32 %2, ptr %13, align 4, !tbaa !43
  %14 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 2
  store i32 %3, ptr %14, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.subdomain_type, ptr %0, i64 0, i32 1
  store i32 %4, ptr %15, align 4, !tbaa !45
  %16 = getelementptr inbounds %struct.subdomain_type, ptr %0, i64 0, i32 1, i32 1
  store i32 %5, ptr %16, align 4, !tbaa !46
  %17 = getelementptr inbounds %struct.subdomain_type, ptr %0, i64 0, i32 1, i32 2
  store i32 %6, ptr %17, align 4, !tbaa !47
  %18 = getelementptr inbounds %struct.subdomain_type, ptr %0, i64 0, i32 5
  %19 = sext i32 %9 to i64
  %20 = mul nsw i64 %19, 216
  %21 = tail call i32 @posix_memalign(ptr noundef nonnull %18, i64 noundef 64, i64 noundef %20) #17
  %22 = icmp sgt i32 %9, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %10
  %24 = add nsw i32 %9, -1
  %25 = zext i32 %24 to i64
  %26 = zext i32 %9 to i64
  br label %27

27:                                               ; preds = %34, %23
  %28 = phi i64 [ 0, %23 ], [ %48, %34 ]
  %29 = phi i64 [ %20, %23 ], [ %47, %34 ]
  %30 = icmp eq i64 %28, %25
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = tail call i32 (...) @IterativeSolver_NumGrids() #17
  %33 = add nsw i32 %32, %7
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %33, %31 ], [ %7, %27 ]
  %36 = load ptr, ptr %18, align 8, !tbaa !48
  %37 = getelementptr inbounds %struct.box_type, ptr %36, i64 %28
  %38 = trunc i64 %28 to i32
  %39 = ashr i32 %1, %38
  %40 = ashr i32 %2, %38
  %41 = ashr i32 %3, %38
  %42 = ashr i32 %4, %38
  %43 = ashr i32 %5, %38
  %44 = ashr i32 %6, %38
  %45 = tail call i32 @create_box(ptr noundef %37, i32 noundef %35, i32 noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %8) #17
  %46 = zext i32 %45 to i64
  %47 = add i64 %29, %46
  %48 = add nuw nsw i64 %28, 1
  %49 = icmp eq i64 %48, %26
  br i1 %49, label %50, label %27, !llvm.loop !49

50:                                               ; preds = %34, %10
  %51 = phi i64 [ %20, %10 ], [ %47, %34 ]
  %52 = trunc i64 %51 to i32
  ret i32 %52
}

; Function Attrs: nounwind optsize uwtable
define internal void @destroy_subdomain(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.subdomain_type, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !39
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.subdomain_type, ptr %0, i64 0, i32 5
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i64 [ 0, %5 ], [ %11, %7 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.box_type, ptr %9, i64 %8
  tail call void @destroy_box(ptr noundef %10) #17
  %11 = add nuw nsw i64 %8, 1
  %12 = load i32, ptr %2, align 8, !tbaa !39
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %7, label %15, !llvm.loop !50

15:                                               ; preds = %7, %1
  %16 = getelementptr inbounds %struct.subdomain_type, ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  tail call void @free(ptr noundef %17) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @calculate_neighboring_subdomain_rank(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #7 {
  %11 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 17
  %12 = load i32, ptr %11, align 8, !tbaa !51
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 15
  %16 = load i32, ptr %15, align 8, !tbaa !54
  %17 = mul nsw i32 %16, %7
  %18 = add i32 %4, %1
  %19 = add i32 %18, %17
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %96, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 16
  %23 = load i32, ptr %22, align 4, !tbaa !55
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %96

25:                                               ; preds = %21, %10
  %26 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 17, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !56
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 15, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !57
  %32 = mul nsw i32 %31, %8
  %33 = add i32 %5, %2
  %34 = add i32 %33, %32
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %96, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 16, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !58
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %96

40:                                               ; preds = %36, %25
  %41 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 17, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !59
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 15, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !60
  br i1 %43, label %46, label %48

46:                                               ; preds = %40
  %47 = add nsw i32 %6, %3
  br label %57

48:                                               ; preds = %40
  %49 = mul nsw i32 %45, %9
  %50 = add i32 %6, %3
  %51 = add i32 %50, %49
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %96, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 16, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !61
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %53, %46
  %58 = phi i32 [ %47, %46 ], [ %50, %53 ]
  %59 = add nsw i32 %4, %1
  %60 = ashr i32 %59, 31
  %61 = add nsw i32 %60, %7
  %62 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 15
  %63 = load i32, ptr %62, align 8, !tbaa !54
  %64 = icmp sge i32 %59, %63
  %65 = zext i1 %64 to i32
  %66 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 14
  %67 = load i32, ptr %66, align 4, !tbaa !62
  %68 = add i32 %61, %67
  %69 = add i32 %68, %65
  %70 = srem i32 %69, %67
  %71 = add nsw i32 %5, %2
  %72 = ashr i32 %71, 31
  %73 = add nsw i32 %72, %8
  %74 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 15, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !57
  %76 = icmp sge i32 %71, %75
  %77 = zext i1 %76 to i32
  %78 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 14, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !63
  %80 = add i32 %73, %79
  %81 = add i32 %80, %77
  %82 = srem i32 %81, %79
  %83 = ashr i32 %58, 31
  %84 = add nsw i32 %83, %9
  %85 = icmp sge i32 %58, %45
  %86 = zext i1 %85 to i32
  %87 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 14, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !64
  %89 = add i32 %84, %88
  %90 = add i32 %89, %86
  %91 = srem i32 %90, %88
  %92 = mul i32 %91, %79
  %93 = add i32 %92, %82
  %94 = mul i32 %93, %67
  %95 = add i32 %94, %70
  br label %96

96:                                               ; preds = %57, %53, %48, %36, %29, %21, %14
  %97 = phi i32 [ %95, %57 ], [ -1, %14 ], [ -1, %21 ], [ -1, %29 ], [ -1, %36 ], [ -1, %48 ], [ -1, %53 ]
  ret i32 %97
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @create_domain(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr nocapture noundef readonly %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #6 {
  %16 = alloca [27 x i32], align 16
  %17 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 18
  store i32 %10, ptr %17, align 4, !tbaa !65
  %18 = icmp eq i32 %10, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) #19
  %21 = load ptr, ptr @stdout, align 8, !tbaa !30
  %22 = tail call i32 @fflush(ptr noundef %21) #19
  br label %23

23:                                               ; preds = %19, %15
  %24 = add nsw i32 %14, -1
  %25 = ashr i32 %1, %24
  %26 = icmp slt i32 %25, %13
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, ptr %17, align 4, !tbaa !65
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %13, i32 noundef %25) #19
  br label %32

32:                                               ; preds = %30, %27
  tail call void @exit(i32 noundef 0) #20
  unreachable

33:                                               ; preds = %23
  %34 = icmp eq i32 %1, %2
  %35 = icmp eq i32 %2, %3
  %36 = and i1 %34, %35
  %37 = icmp eq i32 %1, %3
  %38 = and i1 %37, %36
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load i32, ptr %17, align 4, !tbaa !65
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  br label %44

44:                                               ; preds = %42, %39
  tail call void @exit(i32 noundef 0) #20
  unreachable

45:                                               ; preds = %33
  %46 = mul nsw i32 %8, %7
  %47 = sdiv i32 %10, %46
  %48 = mul nsw i32 %47, %46
  %49 = srem i32 %10, %46
  %50 = sdiv i32 %49, %7
  %51 = mul nsw i32 %50, %7
  %52 = srem i32 %49, %7
  %53 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 14
  store i32 %7, ptr %53, align 4, !tbaa !62
  %54 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 14, i32 1
  store i32 %8, ptr %54, align 4, !tbaa !63
  %55 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 14, i32 2
  store i32 %9, ptr %55, align 4, !tbaa !64
  %56 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 15
  store i32 %4, ptr %56, align 8, !tbaa !54
  %57 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 15, i32 1
  store i32 %5, ptr %57, align 4, !tbaa !57
  %58 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 15, i32 2
  store i32 %6, ptr %58, align 8, !tbaa !60
  %59 = mul nsw i32 %7, %4
  %60 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 16
  store i32 %59, ptr %60, align 4, !tbaa !55
  %61 = mul nsw i32 %8, %5
  %62 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 16, i32 1
  store i32 %61, ptr %62, align 4, !tbaa !58
  %63 = mul nsw i32 %9, %6
  %64 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 16, i32 2
  store i32 %63, ptr %64, align 4, !tbaa !61
  %65 = mul nsw i32 %5, %4
  %66 = mul nsw i32 %65, %6
  %67 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 19
  store i32 %66, ptr %67, align 8, !tbaa !66
  %68 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %69 = sext i32 %66 to i64
  %70 = shl nsw i64 %69, 8
  %71 = tail call i32 @posix_memalign(ptr noundef nonnull %68, i64 noundef 64, i64 noundef %70) #17
  %72 = load i32, ptr %67, align 8, !tbaa !66
  %73 = sext i32 %72 to i64
  %74 = shl nsw i64 %73, 8
  %75 = load i32, ptr %60, align 4, !tbaa !55
  %76 = mul nsw i32 %75, %1
  %77 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 13
  store i32 %76, ptr %77, align 8, !tbaa !67
  %78 = load i32, ptr %62, align 4, !tbaa !58
  %79 = mul nsw i32 %78, %1
  %80 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 13, i32 1
  store i32 %79, ptr %80, align 4, !tbaa !68
  %81 = load i32, ptr %64, align 4, !tbaa !61
  %82 = mul nsw i32 %81, %1
  %83 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 13, i32 2
  store i32 %82, ptr %83, align 8, !tbaa !69
  %84 = load i32, ptr %11, align 4, !tbaa !70
  %85 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 17
  store i32 %84, ptr %85, align 8, !tbaa !51
  %86 = getelementptr inbounds i32, ptr %11, i64 1
  %87 = load i32, ptr %86, align 4, !tbaa !70
  %88 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 17, i32 1
  store i32 %87, ptr %88, align 4, !tbaa !56
  %89 = getelementptr inbounds i32, ptr %11, i64 2
  %90 = load i32, ptr %89, align 4, !tbaa !70
  %91 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 17, i32 2
  store i32 %90, ptr %91, align 8, !tbaa !59
  %92 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 20
  store i32 %14, ptr %92, align 4, !tbaa !71
  %93 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 21
  store i32 %12, ptr %93, align 8, !tbaa !72
  %94 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 22
  store i32 %13, ptr %94, align 4, !tbaa !73
  %95 = icmp sgt i32 %14, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %45
  %97 = zext i32 %14 to i64
  br label %103

98:                                               ; preds = %103, %45
  %99 = sext i32 %50 to i64
  %100 = sext i32 %8 to i64
  %101 = sext i32 %47 to i64
  %102 = sext i32 %9 to i64
  br label %109

103:                                              ; preds = %103, %96
  %104 = phi i64 [ 0, %96 ], [ %107, %103 ]
  %105 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 23, i64 %104
  store double -1.000000e+00, ptr %105, align 8, !tbaa !36
  %106 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 24, i64 %104
  store double -1.000000e+00, ptr %106, align 8, !tbaa !36
  %107 = add nuw nsw i64 %104, 1
  %108 = icmp eq i64 %107, %97
  br i1 %108, label %98, label %103, !llvm.loop !74

109:                                              ; preds = %177, %98
  %110 = phi i64 [ -1, %98 ], [ %178, %177 ]
  %111 = mul nsw i64 %110, 9
  %112 = add nsw i64 %111, 13
  %113 = add nsw i64 %110, %101
  %114 = trunc i64 %113 to i32
  %115 = add i32 %114, %9
  %116 = srem i32 %115, %9
  %117 = mul nsw i32 %116, %46
  %118 = icmp sgt i64 %113, -1
  %119 = icmp slt i64 %113, %102
  %120 = and i1 %118, %119
  br label %132

121:                                              ; preds = %177
  %122 = icmp sgt i32 %6, 0
  br i1 %122, label %123, label %270

123:                                              ; preds = %121
  %124 = icmp sgt i32 %5, 0
  %125 = icmp sgt i32 %4, 0
  %126 = mul nsw i32 %52, %4
  %127 = mul nsw i32 %50, %5
  %128 = mul nsw i32 %47, %6
  %129 = zext i32 %6 to i64
  %130 = zext i32 %5 to i64
  %131 = zext i32 %4 to i64
  br label %180

132:                                              ; preds = %174, %109
  %133 = phi i64 [ -1, %109 ], [ %175, %174 ]
  %134 = mul nsw i64 %133, 3
  %135 = add nsw i64 %112, %134
  %136 = add nsw i64 %133, %99
  %137 = trunc i64 %136 to i32
  %138 = add i32 %137, %8
  %139 = srem i32 %138, %8
  %140 = mul nsw i32 %139, %7
  %141 = icmp sgt i64 %136, -1
  %142 = icmp slt i64 %136, %100
  %143 = and i1 %141, %142
  br label %144

144:                                              ; preds = %171, %132
  %145 = phi i64 [ -1, %132 ], [ %172, %171 ]
  %146 = trunc i64 %145 to i32
  %147 = add nsw i64 %135, %145
  %148 = add nsw i32 %52, %146
  %149 = add nsw i32 %148, %7
  %150 = srem i32 %149, %7
  %151 = add nsw i32 %140, %150
  %152 = add nsw i32 %151, %117
  %153 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 5, i64 %147
  store i32 %152, ptr %153, align 4, !tbaa !70
  %154 = load i32, ptr %85, align 8, !tbaa !51
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %144
  %157 = icmp slt i32 %148, 0
  %158 = icmp sge i32 %148, %7
  %159 = or i1 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  store i32 -1, ptr %153, align 4, !tbaa !70
  br label %161

161:                                              ; preds = %160, %156, %144
  %162 = load i32, ptr %88, align 4, !tbaa !56
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %163, i1 true, i1 %143
  br i1 %164, label %166, label %165

165:                                              ; preds = %161
  store i32 -1, ptr %153, align 4, !tbaa !70
  br label %166

166:                                              ; preds = %165, %161
  %167 = load i32, ptr %91, align 8, !tbaa !59
  %168 = icmp eq i32 %167, 0
  %169 = select i1 %168, i1 true, i1 %120
  br i1 %169, label %171, label %170

170:                                              ; preds = %166
  store i32 -1, ptr %153, align 4, !tbaa !70
  br label %171

171:                                              ; preds = %170, %166
  %172 = add nsw i64 %145, 1
  %173 = icmp eq i64 %172, 2
  br i1 %173, label %174, label %144, !llvm.loop !75

174:                                              ; preds = %171
  %175 = add nsw i64 %133, 1
  %176 = icmp eq i64 %175, 2
  br i1 %176, label %177, label %132, !llvm.loop !76

177:                                              ; preds = %174
  %178 = add nsw i64 %110, 1
  %179 = icmp eq i64 %178, 2
  br i1 %179, label %121, label %109, !llvm.loop !77

180:                                              ; preds = %266, %123
  %181 = phi i64 [ 0, %123 ], [ %268, %266 ]
  %182 = phi i64 [ %74, %123 ], [ %267, %266 ]
  br i1 %124, label %183, label %266

183:                                              ; preds = %180
  %184 = trunc i64 %181 to i32
  %185 = mul i32 %184, %5
  %186 = trunc i64 %181 to i32
  %187 = add i32 %128, %186
  %188 = mul i32 %187, %1
  br label %189

189:                                              ; preds = %262, %183
  %190 = phi i64 [ 0, %183 ], [ %264, %262 ]
  %191 = phi i64 [ %182, %183 ], [ %263, %262 ]
  br i1 %125, label %192, label %262

192:                                              ; preds = %189
  %193 = trunc i64 %190 to i32
  %194 = add i32 %185, %193
  %195 = mul i32 %194, %4
  %196 = load ptr, ptr %68, align 8, !tbaa !78
  %197 = trunc i64 %190 to i32
  %198 = add i32 %127, %197
  %199 = mul i32 %198, %1
  br label %200

200:                                              ; preds = %258, %192
  %201 = phi ptr [ %196, %192 ], [ %213, %258 ]
  %202 = phi i64 [ 0, %192 ], [ %260, %258 ]
  %203 = phi i64 [ %191, %192 ], [ %259, %258 ]
  %204 = trunc i64 %202 to i32
  %205 = add i32 %195, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.subdomain_type, ptr %201, i64 %206
  %208 = trunc i64 %202 to i32
  %209 = add i32 %126, %208
  %210 = mul i32 %209, %1
  %211 = tail call i32 @create_subdomain(ptr noundef %207, i32 noundef %210, i32 noundef %199, i32 noundef %188, i32 noundef %1, i32 noundef %1, i32 noundef %1, i32 noundef %12, i32 noundef %13, i32 noundef %14) #19
  %212 = sext i32 %211 to i64
  %213 = load ptr, ptr %68, align 8, !tbaa !78
  %214 = load i32, ptr %56, align 8, !tbaa !54
  %215 = load i32, ptr %57, align 4, !tbaa !57
  %216 = load i32, ptr %58, align 8, !tbaa !60
  br label %217

217:                                              ; preds = %255, %200
  %218 = phi i64 [ -1, %200 ], [ %256, %255 ]
  %219 = mul nsw i64 %218, 9
  %220 = add nsw i64 %219, 13
  %221 = add nsw i64 %218, %181
  %222 = trunc i64 %221 to i32
  %223 = add i32 %216, %222
  %224 = srem i32 %223, %216
  %225 = mul i32 %224, %215
  %226 = trunc i64 %218 to i32
  br label %227

227:                                              ; preds = %252, %217
  %228 = phi i64 [ -1, %217 ], [ %253, %252 ]
  %229 = mul nsw i64 %228, 3
  %230 = add nsw i64 %220, %229
  %231 = add nsw i64 %228, %190
  %232 = trunc i64 %231 to i32
  %233 = add i32 %215, %232
  %234 = srem i32 %233, %215
  %235 = add i32 %225, %234
  %236 = mul i32 %235, %214
  %237 = trunc i64 %228 to i32
  br label %238

238:                                              ; preds = %238, %227
  %239 = phi i64 [ -1, %227 ], [ %250, %238 ]
  %240 = add nsw i64 %230, %239
  %241 = trunc i64 %239 to i32
  %242 = tail call i32 @calculate_neighboring_subdomain_rank(ptr noundef %0, i32 noundef %204, i32 noundef %193, i32 noundef %184, i32 noundef %241, i32 noundef %237, i32 noundef %226, i32 noundef %52, i32 noundef %50, i32 noundef %47) #19
  %243 = getelementptr inbounds %struct.subdomain_type, ptr %213, i64 %206, i32 4, i64 %240
  store i32 %242, ptr %243, align 8, !tbaa !79
  %244 = add nsw i64 %239, %202
  %245 = trunc i64 %244 to i32
  %246 = add i32 %214, %245
  %247 = srem i32 %246, %214
  %248 = add i32 %236, %247
  %249 = getelementptr inbounds %struct.subdomain_type, ptr %213, i64 %206, i32 4, i64 %240, i32 1
  store i32 %248, ptr %249, align 4, !tbaa !81
  %250 = add nsw i64 %239, 1
  %251 = icmp eq i64 %250, 2
  br i1 %251, label %252, label %238, !llvm.loop !82

252:                                              ; preds = %238
  %253 = add nsw i64 %228, 1
  %254 = icmp eq i64 %253, 2
  br i1 %254, label %255, label %227, !llvm.loop !83

255:                                              ; preds = %252
  %256 = add nsw i64 %218, 1
  %257 = icmp eq i64 %256, 2
  br i1 %257, label %258, label %217, !llvm.loop !84

258:                                              ; preds = %255
  %259 = add i64 %203, %212
  %260 = add nuw nsw i64 %202, 1
  %261 = icmp eq i64 %260, %131
  br i1 %261, label %262, label %200, !llvm.loop !85

262:                                              ; preds = %258, %189
  %263 = phi i64 [ %191, %189 ], [ %259, %258 ]
  %264 = add nuw nsw i64 %190, 1
  %265 = icmp eq i64 %264, %130
  br i1 %265, label %266, label %189, !llvm.loop !86

266:                                              ; preds = %262, %180
  %267 = phi i64 [ %182, %180 ], [ %263, %262 ]
  %268 = add nuw nsw i64 %181, 1
  %269 = icmp eq i64 %268, %129
  br i1 %269, label %270, label %180, !llvm.loop !87

270:                                              ; preds = %266, %121
  %271 = phi i64 [ %74, %121 ], [ %267, %266 ]
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %16) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) %16, i8 0, i64 108, i1 false)
  %272 = getelementptr inbounds [27 x i32], ptr %16, i64 0, i64 4
  store i32 1, ptr %272, align 16
  %273 = getelementptr inbounds [27 x i32], ptr %16, i64 0, i64 10
  store i32 1, ptr %273, align 8
  %274 = getelementptr inbounds [27 x i32], ptr %16, i64 0, i64 12
  store i32 1, ptr %274, align 16
  %275 = getelementptr inbounds [27 x i32], ptr %16, i64 0, i64 14
  store i32 1, ptr %275, align 8
  %276 = getelementptr inbounds [27 x i32], ptr %16, i64 0, i64 16
  store i32 1, ptr %276, align 16
  %277 = getelementptr inbounds [27 x i32], ptr %16, i64 0, i64 22
  store i32 1, ptr %277, align 8
  %278 = load i32, ptr %92, align 4, !tbaa !71
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %633

280:                                              ; preds = %270
  %281 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 7
  %282 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 8
  %283 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 9
  %284 = icmp sgt i32 %5, 0
  %285 = icmp sgt i32 %4, 0
  %286 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 10
  %287 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 11
  %288 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 12
  %289 = zext i32 %278 to i64
  %290 = zext i32 %4 to i64
  br label %291

291:                                              ; preds = %630, %280
  %292 = phi i64 [ 0, %280 ], [ %631, %630 ]
  %293 = phi i32 [ undef, %280 ], [ %.lcssa.lcssa, %630 ]
  %294 = phi i32 [ undef, %280 ], [ %.lcssa1.lcssa, %630 ]
  %295 = phi i32 [ undef, %280 ], [ %.lcssa2.lcssa, %630 ]
  %296 = phi i32 [ undef, %280 ], [ %.lcssa3.lcssa, %630 ]
  %297 = phi i32 [ undef, %280 ], [ %.lcssa4.lcssa, %630 ]
  %298 = phi i32 [ undef, %280 ], [ %.lcssa5.lcssa, %630 ]
  %299 = phi i32 [ undef, %280 ], [ %.lcssa6.lcssa, %630 ]
  %300 = phi i32 [ undef, %280 ], [ %.lcssa7.lcssa, %630 ]
  %301 = phi i32 [ undef, %280 ], [ %.lcssa8.lcssa, %630 ]
  %302 = phi i64 [ %271, %280 ], [ %.lcssa10, %630 ]
  %303 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 6, i64 %292
  br label %304

304:                                              ; preds = %625, %291
  %305 = phi i32 [ %293, %291 ], [ %.lcssa, %625 ]
  %306 = phi i32 [ %294, %291 ], [ %.lcssa1, %625 ]
  %307 = phi i32 [ %295, %291 ], [ %.lcssa2, %625 ]
  %308 = phi i32 [ %296, %291 ], [ %.lcssa3, %625 ]
  %309 = phi i32 [ %297, %291 ], [ %.lcssa4, %625 ]
  %310 = phi i32 [ %298, %291 ], [ %.lcssa5, %625 ]
  %311 = phi i32 [ %299, %291 ], [ %.lcssa6, %625 ]
  %312 = phi i32 [ %300, %291 ], [ %.lcssa7, %625 ]
  %313 = phi i32 [ %301, %291 ], [ %.lcssa8, %625 ]
  %314 = phi i1 [ false, %291 ], [ true, %625 ]
  %315 = phi i1 [ true, %291 ], [ false, %625 ]
  %316 = phi i64 [ %302, %291 ], [ %629, %625 ]
  store i32 0, ptr %281, align 8, !tbaa !88
  store i32 0, ptr %282, align 4, !tbaa !89
  store i32 0, ptr %283, align 8, !tbaa !90
  br label %317

317:                                              ; preds = %611, %304
  %318 = phi i64 [ 0, %304 ], [ %622, %611 ]
  %319 = phi i32 [ %305, %304 ], [ %621, %611 ]
  %320 = phi i32 [ %306, %304 ], [ %620, %611 ]
  %321 = phi i32 [ %307, %304 ], [ %619, %611 ]
  %322 = phi i32 [ %308, %304 ], [ %618, %611 ]
  %323 = phi i32 [ %309, %304 ], [ %617, %611 ]
  %324 = phi i32 [ %310, %304 ], [ %616, %611 ]
  %325 = phi i32 [ %311, %304 ], [ %615, %611 ]
  %326 = phi i32 [ %312, %304 ], [ %614, %611 ]
  %327 = phi i32 [ %313, %304 ], [ %613, %611 ]
  %328 = phi i32 [ 0, %304 ], [ %612, %611 ]
  %329 = getelementptr inbounds [27 x i32], ptr @__const.create_domain.FacesEdgesCorners, i64 0, i64 %318
  %330 = load i32, ptr %329, align 4, !tbaa !70
  %331 = srem i32 %330, 3
  %332 = add nsw i32 %331, -1
  %333 = sdiv i32 %330, 3
  %334 = srem i32 %333, 3
  %335 = add nsw i32 %334, -1
  %336 = sdiv i32 %330, 9
  %337 = srem i32 %336, 3
  %338 = add nsw i32 %337, -1
  br i1 %122, label %339, label %611

339:                                              ; preds = %317
  %340 = sext i32 %330 to i64
  %341 = getelementptr inbounds [27 x i32], ptr %16, i64 0, i64 %340
  %342 = getelementptr inbounds [27 x i32], ptr @__const.create_domain.edges, i64 0, i64 %340
  %343 = getelementptr inbounds [27 x i32], ptr @__const.create_domain.corners, i64 0, i64 %340
  br label %344

344:                                              ; preds = %598, %339
  %345 = phi i32 [ %319, %339 ], [ %608, %598 ]
  %346 = phi i32 [ %320, %339 ], [ %607, %598 ]
  %347 = phi i32 [ %321, %339 ], [ %606, %598 ]
  %348 = phi i32 [ %322, %339 ], [ %605, %598 ]
  %349 = phi i32 [ %323, %339 ], [ %604, %598 ]
  %350 = phi i32 [ %324, %339 ], [ %603, %598 ]
  %351 = phi i32 [ %325, %339 ], [ %602, %598 ]
  %352 = phi i32 [ %326, %339 ], [ %601, %598 ]
  %353 = phi i32 [ %327, %339 ], [ %600, %598 ]
  %354 = phi i32 [ 0, %339 ], [ %609, %598 ]
  %355 = phi i32 [ %328, %339 ], [ %599, %598 ]
  br i1 %284, label %356, label %598

356:                                              ; preds = %344
  %357 = mul i32 %354, %5
  %358 = add i32 %354, %338
  br label %359

359:                                              ; preds = %585, %356
  %360 = phi i32 [ %345, %356 ], [ %595, %585 ]
  %361 = phi i32 [ %346, %356 ], [ %594, %585 ]
  %362 = phi i32 [ %347, %356 ], [ %593, %585 ]
  %363 = phi i32 [ %348, %356 ], [ %592, %585 ]
  %364 = phi i32 [ %349, %356 ], [ %591, %585 ]
  %365 = phi i32 [ %350, %356 ], [ %590, %585 ]
  %366 = phi i32 [ %351, %356 ], [ %589, %585 ]
  %367 = phi i32 [ %352, %356 ], [ %588, %585 ]
  %368 = phi i32 [ %353, %356 ], [ %587, %585 ]
  %369 = phi i32 [ 0, %356 ], [ %596, %585 ]
  %370 = phi i32 [ %355, %356 ], [ %586, %585 ]
  br i1 %285, label %371, label %585

371:                                              ; preds = %359
  %372 = add i32 %369, %357
  %373 = mul i32 %372, %4
  %374 = load i32, ptr %17, align 4, !tbaa !65
  %375 = add i32 %369, %335
  br label %376

376:                                              ; preds = %572, %371
  %377 = phi i64 [ 0, %371 ], [ %583, %572 ]
  %378 = phi i32 [ %360, %371 ], [ %582, %572 ]
  %379 = phi i32 [ %361, %371 ], [ %581, %572 ]
  %380 = phi i32 [ %362, %371 ], [ %580, %572 ]
  %381 = phi i32 [ %363, %371 ], [ %579, %572 ]
  %382 = phi i32 [ %364, %371 ], [ %578, %572 ]
  %383 = phi i32 [ %365, %371 ], [ %577, %572 ]
  %384 = phi i32 [ %366, %371 ], [ %576, %572 ]
  %385 = phi i32 [ %367, %371 ], [ %575, %572 ]
  %386 = phi i32 [ %368, %371 ], [ %574, %572 ]
  %387 = phi i32 [ %370, %371 ], [ %573, %572 ]
  %388 = trunc i64 %377 to i32
  %389 = add i32 %373, %388
  %390 = tail call i32 @calculate_neighboring_subdomain_rank(ptr noundef %0, i32 noundef %388, i32 noundef %369, i32 noundef %354, i32 noundef %332, i32 noundef %335, i32 noundef %338, i32 noundef %52, i32 noundef %50, i32 noundef %47) #19
  %391 = icmp eq i32 %390, %374
  br i1 %391, label %392, label %572

392:                                              ; preds = %376
  %393 = load i32, ptr %56, align 8, !tbaa !54
  %394 = add i32 %332, %388
  %395 = add i32 %394, %393
  %396 = srem i32 %395, %393
  %397 = load i32, ptr %57, align 4, !tbaa !57
  %398 = add i32 %375, %397
  %399 = srem i32 %398, %397
  %400 = load i32, ptr %58, align 8, !tbaa !60
  %401 = add i32 %358, %400
  %402 = srem i32 %401, %400
  %403 = mul i32 %402, %397
  %404 = add i32 %403, %399
  %405 = mul i32 %404, %393
  %406 = add i32 %405, %396
  switch i32 %331, label %445 [
    i32 0, label %407
    i32 1, label %422
    i32 2, label %436
  ]

407:                                              ; preds = %392
  %408 = load ptr, ptr %68, align 8, !tbaa !78
  %409 = sext i32 %389 to i64
  %410 = getelementptr inbounds %struct.subdomain_type, ptr %408, i64 %409, i32 5
  %411 = load ptr, ptr %410, align 8, !tbaa !48
  %412 = getelementptr inbounds %struct.box_type, ptr %411, i64 %292, i32 4
  %413 = load i32, ptr %412, align 4, !tbaa !24
  %414 = sext i32 %406 to i64
  %415 = getelementptr inbounds %struct.subdomain_type, ptr %408, i64 %414, i32 5
  %416 = load ptr, ptr %415, align 8, !tbaa !48
  %417 = getelementptr inbounds %struct.box_type, ptr %416, i64 %292, i32 4
  %418 = load i32, ptr %417, align 4, !tbaa !24
  %419 = getelementptr inbounds %struct.box_type, ptr %416, i64 %292, i32 2
  %420 = load i32, ptr %419, align 4, !tbaa !18
  %421 = add nsw i32 %420, %418
  br label %445

422:                                              ; preds = %392
  %423 = load ptr, ptr %68, align 8, !tbaa !78
  %424 = sext i32 %389 to i64
  %425 = getelementptr inbounds %struct.subdomain_type, ptr %423, i64 %424, i32 5
  %426 = load ptr, ptr %425, align 8, !tbaa !48
  %427 = getelementptr inbounds %struct.box_type, ptr %426, i64 %292, i32 4
  %428 = load i32, ptr %427, align 4, !tbaa !24
  %429 = getelementptr inbounds %struct.box_type, ptr %426, i64 %292, i32 2
  %430 = load i32, ptr %429, align 4, !tbaa !18
  %431 = sext i32 %406 to i64
  %432 = getelementptr inbounds %struct.subdomain_type, ptr %423, i64 %431, i32 5
  %433 = load ptr, ptr %432, align 8, !tbaa !48
  %434 = getelementptr inbounds %struct.box_type, ptr %433, i64 %292, i32 4
  %435 = load i32, ptr %434, align 4, !tbaa !24
  br label %445

436:                                              ; preds = %392
  %437 = load ptr, ptr %68, align 8, !tbaa !78
  %438 = sext i32 %389 to i64
  %439 = getelementptr inbounds %struct.subdomain_type, ptr %437, i64 %438, i32 5
  %440 = load ptr, ptr %439, align 8, !tbaa !48
  %441 = getelementptr inbounds %struct.box_type, ptr %440, i64 %292, i32 2
  %442 = load i32, ptr %441, align 4, !tbaa !18
  %443 = getelementptr inbounds %struct.box_type, ptr %440, i64 %292, i32 4
  %444 = load i32, ptr %443, align 4, !tbaa !24
  br label %445

445:                                              ; preds = %436, %422, %407, %392
  %446 = phi i32 [ %386, %392 ], [ %442, %436 ], [ %428, %422 ], [ %413, %407 ]
  %447 = phi i32 [ %383, %392 ], [ 0, %436 ], [ %435, %422 ], [ %421, %407 ]
  %448 = phi i32 [ %380, %392 ], [ %444, %436 ], [ %430, %422 ], [ %413, %407 ]
  switch i32 %334, label %487 [
    i32 0, label %449
    i32 1, label %464
    i32 2, label %478
  ]

449:                                              ; preds = %445
  %450 = load ptr, ptr %68, align 8, !tbaa !78
  %451 = sext i32 %389 to i64
  %452 = getelementptr inbounds %struct.subdomain_type, ptr %450, i64 %451, i32 5
  %453 = load ptr, ptr %452, align 8, !tbaa !48
  %454 = getelementptr inbounds %struct.box_type, ptr %453, i64 %292, i32 4
  %455 = load i32, ptr %454, align 4, !tbaa !24
  %456 = sext i32 %406 to i64
  %457 = getelementptr inbounds %struct.subdomain_type, ptr %450, i64 %456, i32 5
  %458 = load ptr, ptr %457, align 8, !tbaa !48
  %459 = getelementptr inbounds %struct.box_type, ptr %458, i64 %292, i32 4
  %460 = load i32, ptr %459, align 4, !tbaa !24
  %461 = getelementptr inbounds %struct.box_type, ptr %458, i64 %292, i32 2, i32 1
  %462 = load i32, ptr %461, align 4, !tbaa !19
  %463 = add nsw i32 %462, %460
  br label %487

464:                                              ; preds = %445
  %465 = load ptr, ptr %68, align 8, !tbaa !78
  %466 = sext i32 %389 to i64
  %467 = getelementptr inbounds %struct.subdomain_type, ptr %465, i64 %466, i32 5
  %468 = load ptr, ptr %467, align 8, !tbaa !48
  %469 = getelementptr inbounds %struct.box_type, ptr %468, i64 %292, i32 4
  %470 = load i32, ptr %469, align 4, !tbaa !24
  %471 = getelementptr inbounds %struct.box_type, ptr %468, i64 %292, i32 2, i32 1
  %472 = load i32, ptr %471, align 4, !tbaa !19
  %473 = sext i32 %406 to i64
  %474 = getelementptr inbounds %struct.subdomain_type, ptr %465, i64 %473, i32 5
  %475 = load ptr, ptr %474, align 8, !tbaa !48
  %476 = getelementptr inbounds %struct.box_type, ptr %475, i64 %292, i32 4
  %477 = load i32, ptr %476, align 4, !tbaa !24
  br label %487

478:                                              ; preds = %445
  %479 = load ptr, ptr %68, align 8, !tbaa !78
  %480 = sext i32 %389 to i64
  %481 = getelementptr inbounds %struct.subdomain_type, ptr %479, i64 %480, i32 5
  %482 = load ptr, ptr %481, align 8, !tbaa !48
  %483 = getelementptr inbounds %struct.box_type, ptr %482, i64 %292, i32 2, i32 1
  %484 = load i32, ptr %483, align 4, !tbaa !19
  %485 = getelementptr inbounds %struct.box_type, ptr %482, i64 %292, i32 4
  %486 = load i32, ptr %485, align 4, !tbaa !24
  br label %487

487:                                              ; preds = %478, %464, %449, %445
  %488 = phi i32 [ %385, %445 ], [ %484, %478 ], [ %470, %464 ], [ %455, %449 ]
  %489 = phi i32 [ %382, %445 ], [ 0, %478 ], [ %477, %464 ], [ %463, %449 ]
  %490 = phi i32 [ %379, %445 ], [ %486, %478 ], [ %472, %464 ], [ %455, %449 ]
  switch i32 %337, label %529 [
    i32 0, label %491
    i32 1, label %506
    i32 2, label %520
  ]

491:                                              ; preds = %487
  %492 = load ptr, ptr %68, align 8, !tbaa !78
  %493 = sext i32 %389 to i64
  %494 = getelementptr inbounds %struct.subdomain_type, ptr %492, i64 %493, i32 5
  %495 = load ptr, ptr %494, align 8, !tbaa !48
  %496 = getelementptr inbounds %struct.box_type, ptr %495, i64 %292, i32 4
  %497 = load i32, ptr %496, align 4, !tbaa !24
  %498 = sext i32 %406 to i64
  %499 = getelementptr inbounds %struct.subdomain_type, ptr %492, i64 %498, i32 5
  %500 = load ptr, ptr %499, align 8, !tbaa !48
  %501 = getelementptr inbounds %struct.box_type, ptr %500, i64 %292, i32 4
  %502 = load i32, ptr %501, align 4, !tbaa !24
  %503 = getelementptr inbounds %struct.box_type, ptr %500, i64 %292, i32 2, i32 2
  %504 = load i32, ptr %503, align 4, !tbaa !20
  %505 = add nsw i32 %504, %502
  br label %529

506:                                              ; preds = %487
  %507 = load ptr, ptr %68, align 8, !tbaa !78
  %508 = sext i32 %389 to i64
  %509 = getelementptr inbounds %struct.subdomain_type, ptr %507, i64 %508, i32 5
  %510 = load ptr, ptr %509, align 8, !tbaa !48
  %511 = getelementptr inbounds %struct.box_type, ptr %510, i64 %292, i32 4
  %512 = load i32, ptr %511, align 4, !tbaa !24
  %513 = getelementptr inbounds %struct.box_type, ptr %510, i64 %292, i32 2, i32 2
  %514 = load i32, ptr %513, align 4, !tbaa !20
  %515 = sext i32 %406 to i64
  %516 = getelementptr inbounds %struct.subdomain_type, ptr %507, i64 %515, i32 5
  %517 = load ptr, ptr %516, align 8, !tbaa !48
  %518 = getelementptr inbounds %struct.box_type, ptr %517, i64 %292, i32 4
  %519 = load i32, ptr %518, align 4, !tbaa !24
  br label %529

520:                                              ; preds = %487
  %521 = load ptr, ptr %68, align 8, !tbaa !78
  %522 = sext i32 %389 to i64
  %523 = getelementptr inbounds %struct.subdomain_type, ptr %521, i64 %522, i32 5
  %524 = load ptr, ptr %523, align 8, !tbaa !48
  %525 = getelementptr inbounds %struct.box_type, ptr %524, i64 %292, i32 2, i32 2
  %526 = load i32, ptr %525, align 4, !tbaa !20
  %527 = getelementptr inbounds %struct.box_type, ptr %524, i64 %292, i32 4
  %528 = load i32, ptr %527, align 4, !tbaa !24
  br label %529

529:                                              ; preds = %520, %506, %491, %487
  %530 = phi i32 [ %384, %487 ], [ %526, %520 ], [ %512, %506 ], [ %497, %491 ]
  %531 = phi i32 [ %381, %487 ], [ 0, %520 ], [ %519, %506 ], [ %505, %491 ]
  %532 = phi i32 [ %378, %487 ], [ %528, %520 ], [ %514, %506 ], [ %497, %491 ]
  br i1 %314, label %533, label %570

533:                                              ; preds = %529
  %534 = load ptr, ptr %303, align 8, !tbaa !30
  %535 = sext i32 %387 to i64
  %536 = getelementptr inbounds %struct.bufferCopy_type, ptr %534, i64 %535, i32 3
  store i32 %448, ptr %536, align 4, !tbaa !91
  %537 = getelementptr inbounds %struct.bufferCopy_type, ptr %534, i64 %535, i32 3, i32 1
  store i32 %490, ptr %537, align 4, !tbaa !94
  %538 = getelementptr inbounds %struct.bufferCopy_type, ptr %534, i64 %535, i32 3, i32 2
  store i32 %532, ptr %538, align 4, !tbaa !95
  %539 = getelementptr inbounds %struct.bufferCopy_type, ptr %534, i64 %535, i32 4
  store i32 %389, ptr %539, align 8, !tbaa !96
  %540 = getelementptr inbounds %struct.bufferCopy_type, ptr %534, i64 %535, i32 4, i32 6
  store ptr null, ptr %540, align 8, !tbaa !97
  %541 = load ptr, ptr %303, align 8, !tbaa !30
  %542 = getelementptr inbounds %struct.bufferCopy_type, ptr %541, i64 %535, i32 4, i32 1
  store i32 %446, ptr %542, align 4, !tbaa !98
  %543 = getelementptr inbounds %struct.bufferCopy_type, ptr %541, i64 %535, i32 4, i32 2
  store i32 %488, ptr %543, align 8, !tbaa !99
  %544 = getelementptr inbounds %struct.bufferCopy_type, ptr %541, i64 %535, i32 4, i32 3
  store i32 %530, ptr %544, align 4, !tbaa !100
  %545 = load ptr, ptr %68, align 8, !tbaa !78
  %546 = sext i32 %389 to i64
  %547 = getelementptr inbounds %struct.subdomain_type, ptr %545, i64 %546, i32 5
  %548 = load ptr, ptr %547, align 8, !tbaa !48
  %549 = getelementptr inbounds %struct.box_type, ptr %548, i64 %292, i32 5
  %550 = getelementptr inbounds %struct.bufferCopy_type, ptr %541, i64 %535, i32 4, i32 4
  %551 = load <2 x i32>, ptr %549, align 8, !tbaa !70
  store <2 x i32> %551, ptr %550, align 8, !tbaa !70
  %552 = getelementptr inbounds %struct.bufferCopy_type, ptr %541, i64 %535, i32 5
  store i32 %406, ptr %552, align 8, !tbaa !101
  %553 = getelementptr inbounds %struct.bufferCopy_type, ptr %541, i64 %535, i32 5, i32 6
  store ptr null, ptr %553, align 8, !tbaa !102
  %554 = load ptr, ptr %303, align 8, !tbaa !30
  %555 = getelementptr inbounds %struct.bufferCopy_type, ptr %554, i64 %535, i32 5, i32 1
  store i32 %447, ptr %555, align 4, !tbaa !103
  %556 = getelementptr inbounds %struct.bufferCopy_type, ptr %554, i64 %535, i32 5, i32 2
  store i32 %489, ptr %556, align 8, !tbaa !104
  %557 = getelementptr inbounds %struct.bufferCopy_type, ptr %554, i64 %535, i32 5, i32 3
  store i32 %531, ptr %557, align 4, !tbaa !105
  %558 = sext i32 %406 to i64
  %559 = getelementptr inbounds %struct.subdomain_type, ptr %545, i64 %558, i32 5
  %560 = load ptr, ptr %559, align 8, !tbaa !48
  %561 = getelementptr inbounds %struct.box_type, ptr %560, i64 %292, i32 5
  %562 = getelementptr inbounds %struct.bufferCopy_type, ptr %554, i64 %535, i32 5, i32 4
  %563 = load <2 x i32>, ptr %561, align 8, !tbaa !70
  store <2 x i32> %563, ptr %562, align 8, !tbaa !70
  %564 = load i32, ptr %341, align 4, !tbaa !70
  %565 = getelementptr inbounds %struct.bufferCopy_type, ptr %554, i64 %535
  store i32 %564, ptr %565, align 8, !tbaa !106
  %566 = load i32, ptr %342, align 4, !tbaa !70
  %567 = getelementptr inbounds %struct.bufferCopy_type, ptr %554, i64 %535, i32 1
  store i32 %566, ptr %567, align 4, !tbaa !107
  %568 = load i32, ptr %343, align 4, !tbaa !70
  %569 = getelementptr inbounds %struct.bufferCopy_type, ptr %554, i64 %535, i32 2
  store i32 %568, ptr %569, align 8, !tbaa !108
  br label %570

570:                                              ; preds = %533, %529
  %571 = add nsw i32 %387, 1
  br label %572

572:                                              ; preds = %570, %376
  %573 = phi i32 [ %571, %570 ], [ %387, %376 ]
  %574 = phi i32 [ %446, %570 ], [ %386, %376 ]
  %575 = phi i32 [ %488, %570 ], [ %385, %376 ]
  %576 = phi i32 [ %530, %570 ], [ %384, %376 ]
  %577 = phi i32 [ %447, %570 ], [ %383, %376 ]
  %578 = phi i32 [ %489, %570 ], [ %382, %376 ]
  %579 = phi i32 [ %531, %570 ], [ %381, %376 ]
  %580 = phi i32 [ %448, %570 ], [ %380, %376 ]
  %581 = phi i32 [ %490, %570 ], [ %379, %376 ]
  %582 = phi i32 [ %532, %570 ], [ %378, %376 ]
  %583 = add nuw nsw i64 %377, 1
  %584 = icmp eq i64 %583, %290
  br i1 %584, label %585, label %376, !llvm.loop !109

585:                                              ; preds = %572, %359
  %586 = phi i32 [ %370, %359 ], [ %573, %572 ]
  %587 = phi i32 [ %368, %359 ], [ %574, %572 ]
  %588 = phi i32 [ %367, %359 ], [ %575, %572 ]
  %589 = phi i32 [ %366, %359 ], [ %576, %572 ]
  %590 = phi i32 [ %365, %359 ], [ %577, %572 ]
  %591 = phi i32 [ %364, %359 ], [ %578, %572 ]
  %592 = phi i32 [ %363, %359 ], [ %579, %572 ]
  %593 = phi i32 [ %362, %359 ], [ %580, %572 ]
  %594 = phi i32 [ %361, %359 ], [ %581, %572 ]
  %595 = phi i32 [ %360, %359 ], [ %582, %572 ]
  %596 = add nuw nsw i32 %369, 1
  %597 = icmp eq i32 %596, %5
  br i1 %597, label %598, label %359, !llvm.loop !110

598:                                              ; preds = %585, %344
  %599 = phi i32 [ %355, %344 ], [ %586, %585 ]
  %600 = phi i32 [ %353, %344 ], [ %587, %585 ]
  %601 = phi i32 [ %352, %344 ], [ %588, %585 ]
  %602 = phi i32 [ %351, %344 ], [ %589, %585 ]
  %603 = phi i32 [ %350, %344 ], [ %590, %585 ]
  %604 = phi i32 [ %349, %344 ], [ %591, %585 ]
  %605 = phi i32 [ %348, %344 ], [ %592, %585 ]
  %606 = phi i32 [ %347, %344 ], [ %593, %585 ]
  %607 = phi i32 [ %346, %344 ], [ %594, %585 ]
  %608 = phi i32 [ %345, %344 ], [ %595, %585 ]
  %609 = add nuw nsw i32 %354, 1
  %610 = icmp eq i32 %609, %6
  br i1 %610, label %611, label %344, !llvm.loop !111

611:                                              ; preds = %598, %317
  %612 = phi i32 [ %328, %317 ], [ %599, %598 ]
  %613 = phi i32 [ %327, %317 ], [ %600, %598 ]
  %614 = phi i32 [ %326, %317 ], [ %601, %598 ]
  %615 = phi i32 [ %325, %317 ], [ %602, %598 ]
  %616 = phi i32 [ %324, %317 ], [ %603, %598 ]
  %617 = phi i32 [ %323, %317 ], [ %604, %598 ]
  %618 = phi i32 [ %322, %317 ], [ %605, %598 ]
  %619 = phi i32 [ %321, %317 ], [ %606, %598 ]
  %620 = phi i32 [ %320, %317 ], [ %607, %598 ]
  %621 = phi i32 [ %319, %317 ], [ %608, %598 ]
  %622 = add nuw nsw i64 %318, 1
  %623 = icmp eq i64 %622, 26
  br i1 %623, label %624, label %317, !llvm.loop !112

624:                                              ; preds = %611
  %.lcssa9 = phi i32 [ %612, %611 ]
  %.lcssa8 = phi i32 [ %613, %611 ]
  %.lcssa7 = phi i32 [ %614, %611 ]
  %.lcssa6 = phi i32 [ %615, %611 ]
  %.lcssa5 = phi i32 [ %616, %611 ]
  %.lcssa4 = phi i32 [ %617, %611 ]
  %.lcssa3 = phi i32 [ %618, %611 ]
  %.lcssa2 = phi i32 [ %619, %611 ]
  %.lcssa1 = phi i32 [ %620, %611 ]
  %.lcssa = phi i32 [ %621, %611 ]
  store i32 %.lcssa9, ptr %286, align 4, !tbaa !113
  store i32 %.lcssa9, ptr %287, align 8, !tbaa !114
  store i32 %.lcssa9, ptr %288, align 4, !tbaa !115
  br i1 %315, label %625, label %630

625:                                              ; preds = %624
  %626 = sext i32 %.lcssa9 to i64
  %627 = mul nsw i64 %626, 88
  %628 = tail call noalias ptr @malloc(i64 noundef %627) #21
  store ptr %628, ptr %303, align 8, !tbaa !30
  %629 = add i64 %627, %316
  br label %304, !llvm.loop !116

630:                                              ; preds = %624
  %.lcssa10 = phi i64 [ %316, %624 ]
  %.lcssa8.lcssa = phi i32 [ %.lcssa8, %624 ]
  %.lcssa7.lcssa = phi i32 [ %.lcssa7, %624 ]
  %.lcssa6.lcssa = phi i32 [ %.lcssa6, %624 ]
  %.lcssa5.lcssa = phi i32 [ %.lcssa5, %624 ]
  %.lcssa4.lcssa = phi i32 [ %.lcssa4, %624 ]
  %.lcssa3.lcssa = phi i32 [ %.lcssa3, %624 ]
  %.lcssa2.lcssa = phi i32 [ %.lcssa2, %624 ]
  %.lcssa1.lcssa = phi i32 [ %.lcssa1, %624 ]
  %.lcssa.lcssa = phi i32 [ %.lcssa, %624 ]
  %631 = add nuw nsw i64 %292, 1
  %632 = icmp eq i64 %631, %289
  br i1 %632, label %633, label %291, !llvm.loop !117

633:                                              ; preds = %630, %270
  %634 = phi i64 [ %271, %270 ], [ %.lcssa10, %630 ]
  %635 = load i32, ptr %17, align 4, !tbaa !65
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %637, label %655

637:                                              ; preds = %633
  %638 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  %639 = load ptr, ptr @stdout, align 8, !tbaa !30
  %640 = tail call i32 @fflush(ptr noundef %639) #19
  %641 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %1, i32 noundef %1, i32 noundef %1) #19
  %642 = mul nsw i32 %4, %1
  %643 = mul nsw i32 %5, %1
  %644 = mul nsw i32 %6, %1
  %645 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %642, i32 noundef %643, i32 noundef %644) #19
  %646 = mul nsw i32 %59, %1
  %647 = mul nsw i32 %61, %1
  %648 = mul nsw i32 %63, %1
  %649 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %646, i32 noundef %647, i32 noundef %648) #19
  %650 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %13) #19
  %651 = lshr i64 %634, 20
  %652 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i64 noundef %651) #19
  %653 = load ptr, ptr @stdout, align 8, !tbaa !30
  %654 = tail call i32 @fflush(ptr noundef %653) #19
  br label %655

655:                                              ; preds = %637, %633
  %656 = trunc i64 %634 to i32
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %16) #18
  ret i32 %656
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind optsize uwtable
define internal void @destroy_domain(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 18
  %3 = load i32, ptr %2, align 4, !tbaa !65
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9) #19
  %7 = load ptr, ptr @stdout, align 8, !tbaa !30
  %8 = tail call i32 @fflush(ptr noundef %7) #19
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 19
  %11 = load i32, ptr %10, align 8, !tbaa !66
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i64 [ 0, %13 ], [ %19, %15 ]
  %17 = load ptr, ptr %14, align 8, !tbaa !78
  %18 = getelementptr inbounds %struct.subdomain_type, ptr %17, i64 %16
  tail call void @destroy_subdomain(ptr noundef %18) #19
  %19 = add nuw nsw i64 %16, 1
  %20 = load i32, ptr %10, align 8, !tbaa !66
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %15, label %23, !llvm.loop !118

23:                                               ; preds = %15, %9
  %24 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %25 = load ptr, ptr %24, align 8, !tbaa !78
  tail call void @free(ptr noundef %25) #17
  %26 = load i32, ptr %2, align 4, !tbaa !65
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  %30 = load ptr, ptr @stdout, align 8, !tbaa !30
  %31 = tail call i32 @fflush(ptr noundef %30) #19
  br label %32

32:                                               ; preds = %28, %23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @print_timing(ptr nocapture noundef %0) #11 {
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: write) uwtable
define internal void @MGResetTimers(ptr nocapture noundef writeonly %0) #12 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %0, i8 0, i64 400, i1 false)
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %15, %2 ]
  %4 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 5, i64 %3
  store <2 x i64> zeroinitializer, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 12, i64 %3
  store <2 x i64> zeroinitializer, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 13, i64 %3
  store <2 x i64> zeroinitializer, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 6, i64 %3
  store <2 x i64> zeroinitializer, ptr %7, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 8, i64 %3
  store <2 x i64> zeroinitializer, ptr %8, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 7, i64 %3
  store <2 x i64> zeroinitializer, ptr %9, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 9, i64 %3
  store <2 x i64> zeroinitializer, ptr %10, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 10, i64 %3
  store <2 x i64> zeroinitializer, ptr %11, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 11, i64 %3
  store <2 x i64> zeroinitializer, ptr %12, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 14, i64 %3
  store <2 x i64> zeroinitializer, ptr %13, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 15, i64 %3
  store <2 x i64> zeroinitializer, ptr %14, align 8, !tbaa !34
  %15 = add nuw i64 %3, 2
  %16 = icmp eq i64 %15, 10
  br i1 %16, label %17, label %2, !llvm.loop !119

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @MGBuild(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) #6 {
  %5 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 20
  %6 = load i32, ptr %5, align 4, !tbaa !71
  %7 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 18
  %8 = load i32, ptr %7, align 4, !tbaa !65
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #19
  %12 = load ptr, ptr @stdout, align 8, !tbaa !30
  %13 = tail call i32 @fflush(ptr noundef %12) #19
  br label %14

14:                                               ; preds = %10, %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %0, i8 0, i64 640, i1 false)
  br label %15

15:                                               ; preds = %15, %14
  %16 = phi i64 [ 0, %14 ], [ %25, %15 ]
  %17 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 12, i64 %16
  store <2 x i64> zeroinitializer, ptr %17, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 13, i64 %16
  store <2 x i64> zeroinitializer, ptr %18, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 8, i64 %16
  store <2 x i64> zeroinitializer, ptr %19, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 9, i64 %16
  store <2 x i64> zeroinitializer, ptr %20, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 10, i64 %16
  store <2 x i64> zeroinitializer, ptr %21, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 11, i64 %16
  store <2 x i64> zeroinitializer, ptr %22, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 14, i64 %16
  store <2 x i64> zeroinitializer, ptr %23, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 15, i64 %16
  store <2 x i64> zeroinitializer, ptr %24, align 8, !tbaa !34
  %25 = add nuw i64 %16, 2
  %26 = icmp eq i64 %25, 10
  br i1 %26, label %27, label %15, !llvm.loop !122

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %28, i8 0, i64 40, i1 false)
  %29 = tail call i64 (...) @CycleTime() #17
  %30 = icmp sgt i32 %6, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 19
  %33 = load i32, ptr %32, align 8, !tbaa !66
  %34 = icmp sgt i32 %33, 0
  %35 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %36 = zext i32 %6 to i64
  %37 = zext i32 %33 to i64
  br label %46

38:                                               ; preds = %62
  br i1 %30, label %39, label %67

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 19
  %41 = load i32, ptr %40, align 8, !tbaa !66
  %42 = icmp sgt i32 %41, 1
  %43 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %44 = zext i32 %6 to i64
  %45 = zext i32 %41 to i64
  br label %65

46:                                               ; preds = %62, %31
  %47 = phi i64 [ 0, %31 ], [ %63, %62 ]
  %48 = trunc i64 %47 to i32
  %49 = shl nuw i32 1, %48
  %50 = sitofp i32 %49 to double
  %51 = fmul double %50, %3
  %52 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 23, i64 %47
  store double %51, ptr %52, align 8, !tbaa !36
  br i1 %34, label %53, label %62

53:                                               ; preds = %46
  %54 = load ptr, ptr %35, align 8, !tbaa !78
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi i64 [ 0, %53 ], [ %60, %55 ]
  %57 = getelementptr inbounds %struct.subdomain_type, ptr %54, i64 %56, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !48
  %59 = getelementptr inbounds %struct.box_type, ptr %58, i64 %47
  store double %51, ptr %59, align 8, !tbaa !123
  %60 = add nuw nsw i64 %56, 1
  %61 = icmp eq i64 %60, %37
  br i1 %61, label %62, label %55, !llvm.loop !124

62:                                               ; preds = %55, %46
  %63 = add nuw nsw i64 %47, 1
  %64 = icmp eq i64 %63, %36
  br i1 %64, label %38, label %46, !llvm.loop !125

65:                                               ; preds = %95, %39
  %66 = phi i64 [ 0, %39 ], [ %96, %95 ]
  br i1 %42, label %72, label %95

67:                                               ; preds = %38, %27
  %68 = add i32 %6, -1
  br label %107

69:                                               ; preds = %95
  %70 = add i32 %6, -1
  %71 = icmp sgt i32 %6, 1
  br i1 %71, label %99, label %98

72:                                               ; preds = %72, %65
  %73 = phi i64 [ %93, %72 ], [ 1, %65 ]
  %74 = load ptr, ptr %43, align 8, !tbaa !78
  %75 = getelementptr inbounds %struct.subdomain_type, ptr %74, i64 0, i32 5
  %76 = load ptr, ptr %75, align 8, !tbaa !48
  %77 = getelementptr inbounds %struct.box_type, ptr %76, i64 %66, i32 11
  %78 = load ptr, ptr %77, align 8, !tbaa !33
  %79 = getelementptr inbounds %struct.subdomain_type, ptr %74, i64 %73, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !48
  %81 = getelementptr inbounds %struct.box_type, ptr %80, i64 %66, i32 11
  store ptr %78, ptr %81, align 8, !tbaa !33
  %82 = getelementptr inbounds %struct.box_type, ptr %76, i64 %66, i32 12
  %83 = load ptr, ptr %82, align 8, !tbaa !30
  %84 = getelementptr inbounds %struct.box_type, ptr %80, i64 %66, i32 12
  store ptr %83, ptr %84, align 8, !tbaa !30
  %85 = load ptr, ptr %43, align 8, !tbaa !78
  %86 = getelementptr inbounds %struct.subdomain_type, ptr %85, i64 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !48
  %88 = getelementptr inbounds %struct.box_type, ptr %87, i64 %66, i32 12, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !30
  %90 = getelementptr inbounds %struct.subdomain_type, ptr %85, i64 %73, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !48
  %92 = getelementptr inbounds %struct.box_type, ptr %91, i64 %66, i32 12, i64 1
  store ptr %89, ptr %92, align 8, !tbaa !30
  %93 = add nuw nsw i64 %73, 1
  %94 = icmp eq i64 %93, %45
  br i1 %94, label %95, label %72, !llvm.loop !126

95:                                               ; preds = %72, %65
  %96 = add nuw nsw i64 %66, 1
  %97 = icmp eq i64 %96, %44
  br i1 %97, label %69, label %65, !llvm.loop !127

98:                                               ; preds = %99, %69
  br i1 %30, label %103, label %107

99:                                               ; preds = %99, %69
  %100 = phi i32 [ %101, %99 ], [ 0, %69 ]
  tail call void @restriction(ptr noundef %0, i32 noundef %100, i32 noundef 2, i32 noundef 2) #17
  %101 = add nuw nsw i32 %100, 1
  %102 = icmp eq i32 %101, %70
  br i1 %102, label %98, label %99, !llvm.loop !128

103:                                              ; preds = %103, %98
  %104 = phi i32 [ %105, %103 ], [ 0, %98 ]
  tail call void @exchange_boundary(ptr noundef %0, i32 noundef %104, i32 noundef 2, i32 noundef 1, i32 noundef 1, i32 noundef 1) #17
  %105 = add nuw nsw i32 %104, 1
  %106 = icmp eq i32 %105, %6
  br i1 %106, label %107, label %103, !llvm.loop !129

107:                                              ; preds = %103, %98, %67
  %108 = phi i32 [ %68, %67 ], [ %70, %98 ], [ %70, %103 ]
  tail call void @exchange_boundary(ptr noundef %0, i32 noundef 0, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 1) #17
  tail call void @project_cell_to_face(ptr noundef %0, i32 noundef 0, i32 noundef 3, i32 noundef 5, i32 noundef 0) #17
  tail call void @project_cell_to_face(ptr noundef %0, i32 noundef 0, i32 noundef 3, i32 noundef 6, i32 noundef 1) #17
  tail call void @project_cell_to_face(ptr noundef %0, i32 noundef 0, i32 noundef 3, i32 noundef 7, i32 noundef 2) #17
  br i1 %30, label %110, label %126

109:                                              ; preds = %115
  br i1 %30, label %118, label %126

110:                                              ; preds = %115, %107
  %111 = phi i32 [ %113, %115 ], [ 0, %107 ]
  tail call void @exchange_boundary(ptr noundef %0, i32 noundef %111, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 1) #17
  tail call void @exchange_boundary(ptr noundef %0, i32 noundef %111, i32 noundef 6, i32 noundef 1, i32 noundef 1, i32 noundef 1) #17
  tail call void @exchange_boundary(ptr noundef %0, i32 noundef %111, i32 noundef 7, i32 noundef 1, i32 noundef 1, i32 noundef 1) #17
  %112 = icmp slt i32 %111, %108
  %113 = add nuw nsw i32 %111, 1
  br i1 %112, label %114, label %115

114:                                              ; preds = %110
  tail call void @restriction_betas(ptr noundef %0, i32 noundef %111, i32 noundef %113) #17
  br label %115

115:                                              ; preds = %114, %110
  %116 = icmp eq i32 %113, %6
  br i1 %116, label %109, label %110, !llvm.loop !130

117:                                              ; preds = %118
  br i1 %30, label %122, label %126

118:                                              ; preds = %118, %109
  %119 = phi i32 [ %120, %118 ], [ 0, %109 ]
  tail call void @rebuild_lambda(ptr noundef %0, i32 noundef %119, double noundef %1, double noundef %2) #17
  %120 = add nuw nsw i32 %119, 1
  %121 = icmp eq i32 %120, %6
  br i1 %121, label %117, label %118, !llvm.loop !131

122:                                              ; preds = %122, %117
  %123 = phi i32 [ %124, %122 ], [ 0, %117 ]
  tail call void @exchange_boundary(ptr noundef %0, i32 noundef %123, i32 noundef 4, i32 noundef 1, i32 noundef 1, i32 noundef 1) #17
  %124 = add nuw nsw i32 %123, 1
  %125 = icmp eq i32 %124, %6
  br i1 %125, label %126, label %122, !llvm.loop !132

126:                                              ; preds = %122, %117, %109, %107
  %127 = tail call i64 (...) @CycleTime() #17
  %128 = sub i64 %127, %29
  %129 = load i64, ptr %28, align 8, !tbaa !133
  %130 = add i64 %128, %129
  store i64 %130, ptr %28, align 8, !tbaa !133
  %131 = load i32, ptr %7, align 4, !tbaa !65
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  %135 = load ptr, ptr @stdout, align 8, !tbaa !30
  %136 = tail call i32 @fflush(ptr noundef %135) #19
  br label %137

137:                                              ; preds = %133, %126
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @MGSolve(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4, double noundef %5) #6 {
  %7 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !134
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %7, align 4, !tbaa !134
  %10 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 20
  %11 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 18
  %12 = load i32, ptr %11, align 4, !tbaa !65
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) #19
  %16 = load ptr, ptr @stdout, align 8, !tbaa !30
  %17 = tail call i32 @fflush(ptr noundef %16) #19
  br label %18

18:                                               ; preds = %14, %6
  %19 = tail call i64 (...) @CycleTime() #17
  tail call void @zero_grid(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #17
  tail call void @scale_grid(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 9, double noundef 1.000000e+00, i32 noundef %2) #17
  %20 = tail call i64 (...) @CycleTime() #17
  %21 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 1
  %22 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 15
  br label %23

23:                                               ; preds = %88, %18
  %24 = phi i32 [ 0, %18 ], [ %89, %88 ]
  %25 = load i32, ptr %21, align 8, !tbaa !135
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %21, align 8, !tbaa !135
  %27 = load i32, ptr %10, align 4, !tbaa !71
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %44

29:                                               ; preds = %29, %23
  %30 = phi i64 [ %33, %29 ], [ 0, %23 ]
  %31 = tail call i64 (...) @CycleTime() #17
  %32 = trunc i64 %30 to i32
  tail call void @smooth(ptr noundef nonnull %0, i32 noundef %32, i32 noundef 0, i32 noundef 9, double noundef %3, double noundef %4) #17
  tail call void @residual(ptr noundef nonnull %0, i32 noundef %32, i32 noundef 10, i32 noundef 0, i32 noundef 9, double noundef %3, double noundef %4) #17
  tail call void @restriction(ptr noundef nonnull %0, i32 noundef %32, i32 noundef 9, i32 noundef 10) #17
  %33 = add nuw nsw i64 %30, 1
  %34 = trunc i64 %33 to i32
  tail call void @zero_grid(ptr noundef nonnull %0, i32 noundef %34, i32 noundef 0) #17
  %35 = tail call i64 (...) @CycleTime() #17
  %36 = sub i64 %35, %31
  %37 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 15, i64 %30
  %38 = load i64, ptr %37, align 8, !tbaa !34
  %39 = add i64 %36, %38
  store i64 %39, ptr %37, align 8, !tbaa !34
  %40 = load i32, ptr %10, align 4, !tbaa !71
  %41 = add nsw i32 %40, -1
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %33, %42
  br i1 %43, label %29, label %44, !llvm.loop !136

44:                                               ; preds = %29, %23
  %45 = tail call i64 (...) @CycleTime() #17
  %46 = load i32, ptr %10, align 4, !tbaa !71
  %47 = add nsw i32 %46, -1
  tail call void @IterativeSolver(ptr noundef nonnull %0, i32 noundef %47, i32 noundef 0, i32 noundef 9, double noundef %3, double noundef %4, double noundef 1.000000e-03) #17
  %48 = tail call i64 (...) @CycleTime() #17
  %49 = sub i64 %48, %45
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 15, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !34
  %53 = add i64 %49, %52
  store i64 %53, ptr %51, align 8, !tbaa !34
  %54 = load i32, ptr %10, align 4, !tbaa !71
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %70

56:                                               ; preds = %44
  %57 = add nsw i32 %54, -2
  %58 = zext i32 %57 to i64
  br label %59

59:                                               ; preds = %59, %56
  %60 = phi i64 [ %58, %56 ], [ %68, %59 ]
  %61 = tail call i64 (...) @CycleTime() #17
  %62 = trunc i64 %60 to i32
  tail call void @interpolation_constant(ptr noundef nonnull %0, i32 noundef %62, double noundef 1.000000e+00, i32 noundef 0, i32 noundef 0) #17
  tail call void @smooth(ptr noundef nonnull %0, i32 noundef %62, i32 noundef 0, i32 noundef 9, double noundef %3, double noundef %4) #17
  %63 = tail call i64 (...) @CycleTime() #17
  %64 = sub i64 %63, %61
  %65 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 15, i64 %60
  %66 = load i64, ptr %65, align 8, !tbaa !34
  %67 = add i64 %64, %66
  store i64 %67, ptr %65, align 8, !tbaa !34
  %68 = add nsw i64 %60, -1
  %69 = icmp eq i64 %60, 0
  br i1 %69, label %70, label %59, !llvm.loop !137

70:                                               ; preds = %59, %44
  %71 = tail call i64 (...) @CycleTime() #17
  tail call void @residual(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 10, i32 noundef 0, i32 noundef %2, double noundef %3, double noundef %4) #17
  tail call void @mul_grids(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 10, double noundef 1.000000e+00, i32 noundef 10, i32 noundef 4) #17
  %72 = tail call double @norm(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 10) #17
  %73 = tail call i64 (...) @CycleTime() #17
  %74 = sub i64 %73, %71
  %75 = load i64, ptr %22, align 8, !tbaa !34
  %76 = add i64 %74, %75
  store i64 %76, ptr %22, align 8, !tbaa !34
  %77 = load i32, ptr %11, align 4, !tbaa !65
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %70
  %80 = add nuw nsw i32 %24, 1
  br label %88

81:                                               ; preds = %70
  %82 = icmp eq i32 %24, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %81
  %84 = tail call i32 @putchar(i32 10)
  br label %85

85:                                               ; preds = %83, %81
  %86 = add nuw nsw i32 %24, 1
  %87 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %86, double noundef %72, double noundef %72) #19
  br label %88

88:                                               ; preds = %85, %79
  %89 = phi i32 [ %80, %79 ], [ %86, %85 ]
  %90 = icmp eq i32 %89, 10
  br i1 %90, label %91, label %23, !llvm.loop !138

91:                                               ; preds = %88
  %92 = tail call i64 (...) @CycleTime() #17
  %93 = sub i64 %92, %20
  %94 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 17
  %95 = load i64, ptr %94, align 8, !tbaa !139
  %96 = add i64 %93, %95
  store i64 %96, ptr %94, align 8, !tbaa !139
  %97 = tail call i64 (...) @CycleTime() #17
  %98 = sub i64 %97, %19
  %99 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 18
  %100 = load i64, ptr %99, align 8, !tbaa !140
  %101 = add i64 %98, %100
  store i64 %101, ptr %99, align 8, !tbaa !140
  %102 = load i32, ptr %11, align 4, !tbaa !65
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %91
  %105 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  %106 = load ptr, ptr @stdout, align 8, !tbaa !30
  %107 = tail call i32 @fflush(ptr noundef %106) #19
  br label %108

108:                                              ; preds = %104, %91
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #6 {
  %3 = alloca %struct.domain_type, align 8
  %4 = alloca [3 x i32], align 4
  switch i32 %0, label %45 [
    i32 2, label %5
    i32 5, label %10
    i32 8, label %23
    i32 1, label %47
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !30
  %8 = tail call i32 @atoi(ptr nocapture noundef %7) #22
  %9 = lshr i32 256, %8
  br label %47

10:                                               ; preds = %2
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  %13 = tail call i32 @atoi(ptr nocapture noundef %12) #22
  %14 = getelementptr inbounds ptr, ptr %1, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !30
  %16 = tail call i32 @atoi(ptr nocapture noundef %15) #22
  %17 = getelementptr inbounds ptr, ptr %1, i64 3
  %18 = load ptr, ptr %17, align 8, !tbaa !30
  %19 = tail call i32 @atoi(ptr nocapture noundef %18) #22
  %20 = getelementptr inbounds ptr, ptr %1, i64 4
  %21 = load ptr, ptr %20, align 8, !tbaa !30
  %22 = tail call i32 @atoi(ptr nocapture noundef %21) #22
  br label %47

23:                                               ; preds = %2
  %24 = getelementptr inbounds ptr, ptr %1, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !30
  %26 = tail call i32 @atoi(ptr nocapture noundef %25) #22
  %27 = getelementptr inbounds ptr, ptr %1, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !30
  %29 = tail call i32 @atoi(ptr nocapture noundef %28) #22
  %30 = getelementptr inbounds ptr, ptr %1, i64 3
  %31 = load ptr, ptr %30, align 8, !tbaa !30
  %32 = tail call i32 @atoi(ptr nocapture noundef %31) #22
  %33 = getelementptr inbounds ptr, ptr %1, i64 4
  %34 = load ptr, ptr %33, align 8, !tbaa !30
  %35 = tail call i32 @atoi(ptr nocapture noundef %34) #22
  %36 = getelementptr inbounds ptr, ptr %1, i64 5
  %37 = load ptr, ptr %36, align 8, !tbaa !30
  %38 = tail call i32 @atoi(ptr nocapture noundef %37) #22
  %39 = getelementptr inbounds ptr, ptr %1, i64 6
  %40 = load ptr, ptr %39, align 8, !tbaa !30
  %41 = tail call i32 @atoi(ptr nocapture noundef %40) #22
  %42 = getelementptr inbounds ptr, ptr %1, i64 7
  %43 = load ptr, ptr %42, align 8, !tbaa !30
  %44 = tail call i32 @atoi(ptr nocapture noundef %43) #22
  br label %47

45:                                               ; preds = %2
  %46 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  tail call void @exit(i32 noundef 0) #20
  unreachable

47:                                               ; preds = %23, %10, %5, %2
  %48 = phi i32 [ 1, %5 ], [ 1, %10 ], [ %44, %23 ], [ %0, %2 ]
  %49 = phi i32 [ 1, %5 ], [ 1, %10 ], [ %41, %23 ], [ %0, %2 ]
  %50 = phi i32 [ 1, %5 ], [ 1, %10 ], [ %38, %23 ], [ %0, %2 ]
  %51 = phi i32 [ %9, %5 ], [ %22, %10 ], [ %35, %23 ], [ 4, %2 ]
  %52 = phi i32 [ %9, %5 ], [ %19, %10 ], [ %32, %23 ], [ 4, %2 ]
  %53 = phi i32 [ %9, %5 ], [ %16, %10 ], [ %29, %23 ], [ 4, %2 ]
  %54 = phi i32 [ %8, %5 ], [ %13, %10 ], [ %26, %23 ], [ 6, %2 ]
  %55 = mul i32 %49, %48
  %56 = mul i32 %55, %50
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %60, label %58

58:                                               ; preds = %47
  %59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.1, i32 noundef %50, i32 noundef %49, i32 noundef %48, i32 noundef %56, i32 noundef 1) #19
  tail call void @exit(i32 noundef 0) #20
  unreachable

60:                                               ; preds = %47
  %61 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 1, i32 noundef 1) #19
  %62 = shl nuw i32 1, %54
  %63 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 2) #19
  %64 = load ptr, ptr @stdout, align 8, !tbaa !30
  %65 = tail call i32 @fflush(ptr noundef %64) #19
  call void @llvm.lifetime.start.p0(i64 1784, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %66 = call i32 @create_domain(ptr noundef nonnull %3, i32 noundef %62, i32 noundef %62, i32 noundef %62, i32 noundef %53, i32 noundef %52, i32 noundef %51, i32 noundef %50, i32 noundef %49, i32 noundef %48, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 12, i32 noundef 1, i32 noundef %54) #17
  %67 = getelementptr inbounds %struct.domain_type, ptr %3, i64 0, i32 13
  %68 = load i32, ptr %67, align 8, !tbaa !67
  %69 = sitofp i32 %68 to double
  %70 = fdiv double 1.000000e+00, %69
  %71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4.2) #19
  %72 = load ptr, ptr @stdout, align 8, !tbaa !30
  %73 = call i32 @fflush(ptr noundef %72) #19
  call void @initialize_problem(ptr noundef nonnull %3, i32 noundef 0, double noundef %70, double noundef 9.000000e-01, double noundef 9.000000e-01) #17
  %74 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %75 = load ptr, ptr @stdout, align 8, !tbaa !30
  %76 = call i32 @fflush(ptr noundef %75) #19
  call void @MGBuild(ptr noundef nonnull %3, double noundef 9.000000e-01, double noundef 9.000000e-01, double noundef %70) #17
  call void @MGResetTimers(ptr noundef nonnull %3) #17
  call void @zero_grid(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0) #17
  call void @MGSolve(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 1, double noundef 9.000000e-01, double noundef 9.000000e-01, double noundef 1.000000e-15) #17
  call void @zero_grid(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0) #17
  call void @MGSolve(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 1, double noundef 9.000000e-01, double noundef 9.000000e-01, double noundef 1.000000e-15) #17
  call void @print_timing(ptr noundef nonnull %3) #17
  %77 = fmul double %70, %70
  %78 = fmul double %70, %77
  call void @add_grids(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 10, double noundef 1.000000e+00, i32 noundef 11, double noundef -1.000000e+00, i32 noundef 0) #17
  %79 = call double @norm(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 10) #17
  %80 = call double @dot(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 10, i32 noundef 10) #17
  %81 = fmul double %78, %80
  %82 = call double @sqrt(double noundef %81) #17
  %83 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6.3, double noundef %70, double noundef %79) #19
  %84 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7.4, double noundef %70, double noundef %82) #19
  call void @destroy_domain(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 1784, ptr nonnull %3) #18
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #14

; Function Attrs: inlinehint nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @DoBufferCopy(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #15 {
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 6, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !30
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds %struct.bufferCopy_type, ptr %7, i64 %8, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !91
  %11 = getelementptr inbounds %struct.bufferCopy_type, ptr %7, i64 %8, i32 3, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !94
  %13 = getelementptr inbounds %struct.bufferCopy_type, ptr %7, i64 %8, i32 3, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !95
  %15 = getelementptr inbounds %struct.bufferCopy_type, ptr %7, i64 %8, i32 4
  %16 = getelementptr inbounds %struct.bufferCopy_type, ptr %7, i64 %8, i32 4, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !98
  %18 = getelementptr inbounds %struct.bufferCopy_type, ptr %7, i64 %8, i32 4, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !99
  %20 = getelementptr inbounds %struct.bufferCopy_type, ptr %7, i64 %8, i32 4, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !100
  %22 = getelementptr inbounds %struct.bufferCopy_type, ptr %7, i64 %8, i32 4, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !141
  %24 = getelementptr inbounds %struct.bufferCopy_type, ptr %7, i64 %8, i32 4, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !142
  %26 = getelementptr inbounds %struct.bufferCopy_type, ptr %7, i64 %8, i32 5, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !103
  %28 = getelementptr inbounds %struct.bufferCopy_type, ptr %7, i64 %8, i32 5, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !104
  %30 = getelementptr inbounds %struct.bufferCopy_type, ptr %7, i64 %8, i32 5, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !105
  %32 = getelementptr inbounds %struct.bufferCopy_type, ptr %7, i64 %8, i32 5, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !143
  %34 = getelementptr inbounds %struct.bufferCopy_type, ptr %7, i64 %8, i32 5, i32 5
  %35 = load i32, ptr %34, align 4, !tbaa !144
  %36 = getelementptr inbounds %struct.bufferCopy_type, ptr %7, i64 %8, i32 4, i32 6
  %37 = getelementptr inbounds %struct.bufferCopy_type, ptr %7, i64 %8, i32 5, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !102
  %39 = load i32, ptr %15, align 8, !tbaa !96
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %51

41:                                               ; preds = %4
  %42 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %43 = load ptr, ptr %42, align 8, !tbaa !78
  %44 = zext i32 %39 to i64
  %45 = getelementptr inbounds %struct.subdomain_type, ptr %43, i64 %44, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  %47 = getelementptr inbounds %struct.box_type, ptr %46, i64 %5, i32 10
  %48 = load ptr, ptr %47, align 8, !tbaa !31
  %49 = sext i32 %2 to i64
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49
  br label %51

51:                                               ; preds = %41, %4
  %52 = phi ptr [ %50, %41 ], [ %36, %4 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !30
  %54 = getelementptr inbounds %struct.bufferCopy_type, ptr %7, i64 %8, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !101
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %59 = load ptr, ptr %58, align 8, !tbaa !78
  %60 = zext i32 %55 to i64
  %61 = getelementptr inbounds %struct.subdomain_type, ptr %59, i64 %60, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !48
  %63 = getelementptr inbounds %struct.box_type, ptr %62, i64 %5, i32 10
  %64 = load ptr, ptr %63, align 8, !tbaa !31
  %65 = sext i32 %2 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !30
  br label %68

68:                                               ; preds = %57, %51
  %69 = phi ptr [ %67, %57 ], [ %38, %51 ]
  switch i32 %10, label %80 [
    i32 1, label %75
    i32 4, label %70
  ]

70:                                               ; preds = %68
  %71 = icmp sgt i32 %14, 0
  br i1 %71, label %72, label %201

72:                                               ; preds = %70
  %73 = icmp sgt i32 %12, 0
  %74 = zext i32 %12 to i64
  br label %115

75:                                               ; preds = %68
  %76 = icmp sgt i32 %14, 0
  br i1 %76, label %77, label %201

77:                                               ; preds = %75
  %78 = icmp sgt i32 %12, 0
  %79 = zext i32 %12 to i64
  br label %86

80:                                               ; preds = %68
  %81 = icmp sgt i32 %14, 0
  br i1 %81, label %82, label %201

82:                                               ; preds = %80
  %83 = icmp sgt i32 %12, 0
  %84 = icmp sgt i32 %10, 0
  %85 = zext i32 %10 to i64
  br label %165

86:                                               ; preds = %112, %77
  %87 = phi i32 [ 0, %77 ], [ %113, %112 ]
  br i1 %78, label %88, label %112

88:                                               ; preds = %86
  %89 = add nsw i32 %87, %21
  %90 = mul nsw i32 %89, %25
  %91 = add i32 %90, %17
  %92 = add nsw i32 %87, %31
  %93 = mul nsw i32 %92, %35
  %94 = add i32 %93, %27
  br label %95

95:                                               ; preds = %95, %88
  %96 = phi i64 [ 0, %88 ], [ %110, %95 ]
  %97 = trunc i64 %96 to i32
  %98 = add i32 %19, %97
  %99 = mul i32 %98, %23
  %100 = add i32 %91, %99
  %101 = trunc i64 %96 to i32
  %102 = add i32 %29, %101
  %103 = mul i32 %102, %33
  %104 = add i32 %94, %103
  %105 = sext i32 %100 to i64
  %106 = getelementptr inbounds double, ptr %53, i64 %105
  %107 = load double, ptr %106, align 8, !tbaa !36
  %108 = sext i32 %104 to i64
  %109 = getelementptr inbounds double, ptr %69, i64 %108
  store double %107, ptr %109, align 8, !tbaa !36
  %110 = add nuw nsw i64 %96, 1
  %111 = icmp eq i64 %110, %79
  br i1 %111, label %112, label %95, !llvm.loop !145

112:                                              ; preds = %95, %86
  %113 = add nuw nsw i32 %87, 1
  %114 = icmp eq i32 %113, %14
  br i1 %114, label %201, label %86, !llvm.loop !146

115:                                              ; preds = %162, %72
  %116 = phi i32 [ 0, %72 ], [ %163, %162 ]
  br i1 %73, label %117, label %162

117:                                              ; preds = %115
  %118 = add nsw i32 %116, %21
  %119 = mul nsw i32 %118, %25
  %120 = add i32 %119, %17
  %121 = add nsw i32 %116, %31
  %122 = mul nsw i32 %121, %35
  %123 = add i32 %122, %27
  br label %124

124:                                              ; preds = %124, %117
  %125 = phi i64 [ 0, %117 ], [ %160, %124 ]
  %126 = trunc i64 %125 to i32
  %127 = add i32 %19, %126
  %128 = mul i32 %127, %23
  %129 = add i32 %120, %128
  %130 = trunc i64 %125 to i32
  %131 = add i32 %29, %130
  %132 = mul i32 %131, %33
  %133 = add i32 %123, %132
  %134 = sext i32 %129 to i64
  %135 = getelementptr inbounds double, ptr %53, i64 %134
  %136 = load double, ptr %135, align 8, !tbaa !36
  %137 = sext i32 %133 to i64
  %138 = getelementptr inbounds double, ptr %69, i64 %137
  store double %136, ptr %138, align 8, !tbaa !36
  %139 = add nsw i32 %129, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds double, ptr %53, i64 %140
  %142 = load double, ptr %141, align 8, !tbaa !36
  %143 = add nsw i32 %133, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds double, ptr %69, i64 %144
  store double %142, ptr %145, align 8, !tbaa !36
  %146 = add nsw i32 %129, 2
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds double, ptr %53, i64 %147
  %149 = load double, ptr %148, align 8, !tbaa !36
  %150 = add nsw i32 %133, 2
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds double, ptr %69, i64 %151
  store double %149, ptr %152, align 8, !tbaa !36
  %153 = add nsw i32 %129, 3
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds double, ptr %53, i64 %154
  %156 = load double, ptr %155, align 8, !tbaa !36
  %157 = add nsw i32 %133, 3
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds double, ptr %69, i64 %158
  store double %156, ptr %159, align 8, !tbaa !36
  %160 = add nuw nsw i64 %125, 1
  %161 = icmp eq i64 %160, %74
  br i1 %161, label %162, label %124, !llvm.loop !147

162:                                              ; preds = %124, %115
  %163 = add nuw nsw i32 %116, 1
  %164 = icmp eq i32 %163, %14
  br i1 %164, label %201, label %115, !llvm.loop !148

165:                                              ; preds = %198, %82
  %166 = phi i32 [ 0, %82 ], [ %199, %198 ]
  br i1 %83, label %167, label %198

167:                                              ; preds = %165
  %168 = add nsw i32 %166, %21
  %169 = mul nsw i32 %168, %25
  %170 = add i32 %169, %17
  %171 = add nsw i32 %166, %31
  %172 = mul nsw i32 %171, %35
  %173 = add i32 %172, %27
  br label %174

174:                                              ; preds = %195, %167
  %175 = phi i32 [ 0, %167 ], [ %196, %195 ]
  br i1 %84, label %176, label %195

176:                                              ; preds = %174
  %177 = add nsw i32 %175, %19
  %178 = mul nsw i32 %177, %23
  %179 = add i32 %170, %178
  %180 = add nsw i32 %175, %29
  %181 = mul nsw i32 %180, %33
  %182 = add i32 %173, %181
  br label %183

183:                                              ; preds = %183, %176
  %184 = phi i64 [ 0, %176 ], [ %193, %183 ]
  %185 = trunc i64 %184 to i32
  %186 = add i32 %179, %185
  %187 = add i32 %182, %185
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds double, ptr %53, i64 %188
  %190 = load double, ptr %189, align 8, !tbaa !36
  %191 = sext i32 %187 to i64
  %192 = getelementptr inbounds double, ptr %69, i64 %191
  store double %190, ptr %192, align 8, !tbaa !36
  %193 = add nuw nsw i64 %184, 1
  %194 = icmp eq i64 %193, %85
  br i1 %194, label %195, label %183, !llvm.loop !149

195:                                              ; preds = %183, %174
  %196 = add nuw nsw i32 %175, 1
  %197 = icmp eq i32 %196, %12
  br i1 %197, label %198, label %174, !llvm.loop !150

198:                                              ; preds = %195, %165
  %199 = add nuw nsw i32 %166, 1
  %200 = icmp eq i32 %199, %14
  br i1 %200, label %201, label %165, !llvm.loop !151

201:                                              ; preds = %198, %162, %112, %80, %75, %70
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @exchange_boundary(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #6 {
  %7 = alloca [27 x i32], align 16
  %8 = alloca [27 x i32], align 16
  %9 = tail call i64 (...) @CycleTime() #17
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) %7, i8 0, i64 108, i1 false)
  %10 = getelementptr inbounds [27 x i32], ptr %7, i64 0, i64 4
  store i32 1, ptr %10, align 16
  %11 = getelementptr inbounds [27 x i32], ptr %7, i64 0, i64 10
  store i32 1, ptr %11, align 8
  %12 = getelementptr inbounds [27 x i32], ptr %7, i64 0, i64 12
  store i32 1, ptr %12, align 16
  %13 = getelementptr inbounds [27 x i32], ptr %7, i64 0, i64 14
  store i32 1, ptr %13, align 8
  %14 = getelementptr inbounds [27 x i32], ptr %7, i64 0, i64 16
  store i32 1, ptr %14, align 16
  %15 = getelementptr inbounds [27 x i32], ptr %7, i64 0, i64 22
  store i32 1, ptr %15, align 8
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %8) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) %8, i8 0, i64 108, i1 false)
  %16 = icmp eq i32 %3, 0
  %17 = icmp eq i32 %4, 0
  %18 = icmp eq i32 %5, 0
  br label %19

19:                                               ; preds = %41, %6
  %20 = phi i64 [ 0, %6 ], [ %42, %41 ]
  br i1 %16, label %27, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds [27 x i32], ptr %7, i64 0, i64 %20
  %23 = load i32, ptr %22, align 4, !tbaa !70
  %24 = getelementptr inbounds [27 x i32], ptr %8, i64 0, i64 %20
  %25 = load i32, ptr %24, align 4, !tbaa !70
  %26 = or i32 %25, %23
  store i32 %26, ptr %24, align 4, !tbaa !70
  br label %27

27:                                               ; preds = %21, %19
  br i1 %17, label %34, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds [27 x i32], ptr @__const.exchange_boundary.edges, i64 0, i64 %20
  %30 = load i32, ptr %29, align 4, !tbaa !70
  %31 = getelementptr inbounds [27 x i32], ptr %8, i64 0, i64 %20
  %32 = load i32, ptr %31, align 4, !tbaa !70
  %33 = or i32 %32, %30
  store i32 %33, ptr %31, align 4, !tbaa !70
  br label %34

34:                                               ; preds = %28, %27
  br i1 %18, label %41, label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds [27 x i32], ptr @__const.exchange_boundary.corners, i64 0, i64 %20
  %37 = load i32, ptr %36, align 4, !tbaa !70
  %38 = getelementptr inbounds [27 x i32], ptr %8, i64 0, i64 %20
  %39 = load i32, ptr %38, align 4, !tbaa !70
  %40 = or i32 %39, %37
  store i32 %40, ptr %38, align 4, !tbaa !70
  br label %41

41:                                               ; preds = %35, %34
  %42 = add nuw nsw i64 %20, 1
  %43 = icmp eq i64 %42, 27
  br i1 %43, label %44, label %19, !llvm.loop !152

44:                                               ; preds = %41
  %45 = tail call i64 (...) @CycleTime() #17
  %46 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 9
  %47 = load i32, ptr %46, align 8, !tbaa !90
  %48 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 10
  %49 = load i32, ptr %48, align 4, !tbaa !113
  %50 = icmp slt i32 %47, %49
  %51 = sext i32 %1 to i64
  br i1 %50, label %52, label %84

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 6, i64 %51
  %54 = icmp ne i32 %3, 0
  %55 = icmp ne i32 %4, 0
  %56 = icmp ne i32 %5, 0
  %57 = sext i32 %47 to i64
  br label %58

58:                                               ; preds = %79, %52
  %59 = phi i32 [ %49, %52 ], [ %80, %79 ]
  %60 = phi i64 [ %57, %52 ], [ %81, %79 ]
  %61 = load ptr, ptr %53, align 8, !tbaa !30
  %62 = getelementptr inbounds %struct.bufferCopy_type, ptr %61, i64 %60
  %63 = load i32, ptr %62, align 8, !tbaa !106
  %64 = icmp ne i32 %63, 0
  %65 = and i1 %54, %64
  br i1 %65, label %76, label %66

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.bufferCopy_type, ptr %61, i64 %60, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !107
  %69 = icmp ne i32 %68, 0
  %70 = and i1 %55, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.bufferCopy_type, ptr %61, i64 %60, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !108
  %74 = icmp ne i32 %73, 0
  %75 = and i1 %56, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71, %66, %58
  %77 = trunc i64 %60 to i32
  tail call void @DoBufferCopy(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %77) #19
  %78 = load i32, ptr %48, align 4, !tbaa !113
  br label %79

79:                                               ; preds = %76, %71
  %80 = phi i32 [ %59, %71 ], [ %78, %76 ]
  %81 = add nsw i64 %60, 1
  %82 = sext i32 %80 to i64
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %58, label %84, !llvm.loop !153

84:                                               ; preds = %79, %44
  %85 = tail call i64 (...) @CycleTime() #17
  %86 = sub i64 %85, %45
  %87 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 7, i64 %51
  %88 = load i64, ptr %87, align 8, !tbaa !34
  %89 = add i64 %86, %88
  store i64 %89, ptr %87, align 8, !tbaa !34
  %90 = tail call i64 (...) @CycleTime() #17
  %91 = sub i64 %90, %9
  %92 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 5, i64 %51
  %93 = load i64, ptr %92, align 8, !tbaa !34
  %94 = add i64 %91, %93
  store i64 %94, ptr %92, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %7) #18
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @rebuild_lambda(ptr nocapture noundef %0, i32 noundef %1, double noundef %2, double noundef %3) #6 {
  %5 = tail call i64 (...) @CycleTime() #17
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 19
  %8 = load i32, ptr %7, align 8, !tbaa !66
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %151

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  %13 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 23, i64 %6
  %14 = zext i32 %8 to i64
  br label %15

15:                                               ; preds = %145, %10
  %16 = phi i64 [ 0, %10 ], [ %149, %145 ]
  %17 = phi double [ -1.000000e+00, %10 ], [ %148, %145 ]
  %18 = getelementptr inbounds %struct.subdomain_type, ptr %12, i64 %16, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.box_type, ptr %19, i64 %6, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !25
  %22 = getelementptr inbounds %struct.box_type, ptr %19, i64 %6, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !26
  %24 = getelementptr inbounds %struct.box_type, ptr %19, i64 %6, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !24
  %26 = getelementptr inbounds %struct.box_type, ptr %19, i64 %6, i32 2, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !20
  %28 = getelementptr inbounds %struct.box_type, ptr %19, i64 %6, i32 2, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !19
  %30 = getelementptr inbounds %struct.box_type, ptr %19, i64 %6, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !31
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !30
  %34 = add nsw i32 %21, 1
  %35 = add nsw i32 %34, %23
  %36 = mul nsw i32 %25, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, ptr %33, i64 %37
  %39 = getelementptr inbounds ptr, ptr %31, i64 5
  %40 = load ptr, ptr %39, align 8, !tbaa !30
  %41 = getelementptr inbounds double, ptr %40, i64 %37
  %42 = getelementptr inbounds ptr, ptr %31, i64 6
  %43 = load ptr, ptr %42, align 8, !tbaa !30
  %44 = getelementptr inbounds double, ptr %43, i64 %37
  %45 = getelementptr inbounds ptr, ptr %31, i64 7
  %46 = load ptr, ptr %45, align 8, !tbaa !30
  %47 = getelementptr inbounds double, ptr %46, i64 %37
  %48 = getelementptr inbounds ptr, ptr %31, i64 4
  %49 = load ptr, ptr %48, align 8, !tbaa !30
  %50 = getelementptr inbounds double, ptr %49, i64 %37
  %51 = icmp sgt i32 %27, 0
  br i1 %51, label %52, label %145

52:                                               ; preds = %15
  %53 = getelementptr inbounds %struct.box_type, ptr %19, i64 %6, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !18
  %55 = load double, ptr %13, align 8, !tbaa !36
  %56 = fmul double %55, %55
  %57 = fdiv double 1.000000e+00, %56
  %58 = icmp sgt i32 %29, 0
  %59 = icmp sgt i32 %54, 0
  %60 = fmul double %57, %3
  %61 = fneg double %60
  %62 = zext i32 %54 to i64
  %63 = insertelement <2 x double> poison, double %60, i64 0
  %64 = shufflevector <2 x double> %63, <2 x double> poison, <2 x i32> zeroinitializer
  br label %65

65:                                               ; preds = %141, %52
  %66 = phi double [ -1.000000e+00, %52 ], [ %142, %141 ]
  %67 = phi i32 [ 0, %52 ], [ %143, %141 ]
  br i1 %58, label %68, label %141

68:                                               ; preds = %65
  %69 = mul nsw i32 %67, %23
  br label %70

70:                                               ; preds = %137, %68
  %71 = phi i32 [ 0, %68 ], [ %139, %137 ]
  %72 = phi double [ %66, %68 ], [ %138, %137 ]
  br i1 %59, label %73, label %137

73:                                               ; preds = %70
  %74 = mul nsw i32 %71, %21
  %75 = add i32 %74, %69
  br label %76

76:                                               ; preds = %76, %73
  %77 = phi i64 [ 0, %73 ], [ %135, %76 ]
  %78 = phi double [ %72, %73 ], [ %134, %76 ]
  %79 = trunc i64 %77 to i32
  %80 = add i32 %75, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, ptr %41, i64 %81
  %83 = load double, ptr %82, align 8, !tbaa !36
  %84 = add nsw i32 %80, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, ptr %41, i64 %85
  %87 = load double, ptr %86, align 8, !tbaa !36
  %88 = insertelement <2 x double> poison, double %83, i64 0
  %89 = insertelement <2 x double> %88, double %87, i64 1
  %90 = fmul <2 x double> %64, %89
  %91 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %90)
  %92 = shufflevector <2 x double> %91, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %93 = fadd <2 x double> %91, %92
  %94 = extractelement <2 x double> %93, i64 0
  %95 = getelementptr inbounds double, ptr %44, i64 %81
  %96 = load double, ptr %95, align 8, !tbaa !36
  %97 = fmul double %60, %96
  %98 = tail call double @llvm.fabs.f64(double %97)
  %99 = fadd double %94, %98
  %100 = add nsw i32 %80, %21
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double, ptr %44, i64 %101
  %103 = load double, ptr %102, align 8, !tbaa !36
  %104 = fmul double %60, %103
  %105 = tail call double @llvm.fabs.f64(double %104)
  %106 = fadd double %99, %105
  %107 = getelementptr inbounds double, ptr %47, i64 %81
  %108 = load double, ptr %107, align 8, !tbaa !36
  %109 = fmul double %60, %108
  %110 = tail call double @llvm.fabs.f64(double %109)
  %111 = fadd double %106, %110
  %112 = add nsw i32 %80, %23
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds double, ptr %47, i64 %113
  %115 = load double, ptr %114, align 8, !tbaa !36
  %116 = fmul double %60, %115
  %117 = tail call double @llvm.fabs.f64(double %116)
  %118 = fadd double %111, %117
  %119 = getelementptr inbounds double, ptr %38, i64 %81
  %120 = load double, ptr %119, align 8, !tbaa !36
  %121 = fneg double %83
  %122 = fsub double %121, %87
  %123 = fsub double %122, %96
  %124 = fsub double %123, %103
  %125 = fsub double %124, %108
  %126 = fsub double %125, %115
  %127 = fmul double %126, %61
  %128 = tail call double @llvm.fmuladd.f64(double %2, double %120, double %127)
  %129 = fdiv double 1.000000e+00, %128
  %130 = getelementptr inbounds double, ptr %50, i64 %81
  store double %129, ptr %130, align 8, !tbaa !36
  %131 = fadd double %128, %118
  %132 = fdiv double %131, %128
  %133 = fcmp ogt double %132, %78
  %134 = select i1 %133, double %132, double %78
  %135 = add nuw nsw i64 %77, 1
  %136 = icmp eq i64 %135, %62
  br i1 %136, label %137, label %76, !llvm.loop !154

137:                                              ; preds = %76, %70
  %138 = phi double [ %72, %70 ], [ %134, %76 ]
  %139 = add nuw nsw i32 %71, 1
  %140 = icmp eq i32 %139, %29
  br i1 %140, label %141, label %70, !llvm.loop !155

141:                                              ; preds = %137, %65
  %142 = phi double [ %66, %65 ], [ %138, %137 ]
  %143 = add nuw nsw i32 %67, 1
  %144 = icmp eq i32 %143, %27
  br i1 %144, label %145, label %65, !llvm.loop !156

145:                                              ; preds = %141, %15
  %146 = phi double [ -1.000000e+00, %15 ], [ %142, %141 ]
  %147 = fcmp ogt double %146, %17
  %148 = select i1 %147, double %146, double %17
  %149 = add nuw nsw i64 %16, 1
  %150 = icmp eq i64 %149, %14
  br i1 %150, label %151, label %15, !llvm.loop !157

151:                                              ; preds = %145, %4
  %152 = phi double [ -1.000000e+00, %4 ], [ %148, %145 ]
  %153 = tail call i64 (...) @CycleTime() #17
  %154 = sub i64 %153, %5
  %155 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 12, i64 %6
  %156 = load i64, ptr %155, align 8, !tbaa !34
  %157 = add i64 %154, %156
  store i64 %157, ptr %155, align 8, !tbaa !34
  %158 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 18
  %159 = load i32, ptr %158, align 4, !tbaa !65
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %151
  %162 = icmp eq i32 %1, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %161
  %164 = tail call i32 @putchar(i32 10)
  br label %165

165:                                              ; preds = %163, %161
  %166 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.9, i32 noundef %1, double noundef %152) #19
  %167 = load ptr, ptr @stdout, align 8, !tbaa !30
  %168 = tail call i32 @fflush(ptr noundef %167) #19
  br label %169

169:                                              ; preds = %165, %151
  %170 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 24, i64 %6
  store double %152, ptr %170, align 8, !tbaa !36
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: nounwind optsize uwtable
define internal void @smooth(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5) #6 {
  %7 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 22
  %10 = load i32, ptr %9, align 4, !tbaa !73
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void @exchange_boundary(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef 1, i32 noundef 1) #19
  br label %13

13:                                               ; preds = %12, %6
  %14 = zext i1 %11 to i32
  %15 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 19
  %16 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 23, i64 %8
  %17 = sext i32 %3 to i64
  %18 = getelementptr inbounds [10 x i64], ptr %0, i64 0, i64 %8
  br label %19

19:                                               ; preds = %206, %13
  %20 = phi i32 [ 0, %13 ], [ %211, %206 ]
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 %2, i32 10
  tail call void @exchange_boundary(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %23, i32 noundef 1, i32 noundef %14, i32 noundef %14) #19
  %24 = tail call i64 (...) @CycleTime() #17
  %25 = load i32, ptr %15, align 8, !tbaa !66
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %206

27:                                               ; preds = %19
  %28 = load ptr, ptr %7, align 8, !tbaa !78
  %29 = zext i32 %25 to i64
  br label %30

30:                                               ; preds = %203, %27
  %31 = phi i64 [ 0, %27 ], [ %204, %203 ]
  %32 = getelementptr inbounds %struct.subdomain_type, ptr %28, i64 %31, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = getelementptr inbounds %struct.box_type, ptr %33, i64 %8, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !25
  %36 = getelementptr inbounds %struct.box_type, ptr %33, i64 %8, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !26
  %38 = getelementptr inbounds %struct.box_type, ptr %33, i64 %8, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !24
  %40 = getelementptr inbounds %struct.box_type, ptr %33, i64 %8, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !31
  %42 = getelementptr inbounds ptr, ptr %41, i64 %17
  %43 = load ptr, ptr %42, align 8, !tbaa !30
  %44 = add nsw i32 %35, 1
  %45 = add nsw i32 %44, %37
  %46 = mul nsw i32 %39, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, ptr %43, i64 %47
  %49 = getelementptr inbounds ptr, ptr %41, i64 2
  %50 = load ptr, ptr %49, align 8, !tbaa !30
  %51 = getelementptr inbounds double, ptr %50, i64 %47
  %52 = getelementptr inbounds ptr, ptr %41, i64 5
  %53 = load ptr, ptr %52, align 8, !tbaa !30
  %54 = getelementptr inbounds double, ptr %53, i64 %47
  %55 = getelementptr inbounds ptr, ptr %41, i64 6
  %56 = load ptr, ptr %55, align 8, !tbaa !30
  %57 = getelementptr inbounds double, ptr %56, i64 %47
  %58 = getelementptr inbounds ptr, ptr %41, i64 7
  %59 = load ptr, ptr %58, align 8, !tbaa !30
  %60 = getelementptr inbounds double, ptr %59, i64 %47
  %61 = getelementptr inbounds ptr, ptr %41, i64 4
  %62 = load ptr, ptr %61, align 8, !tbaa !30
  %63 = getelementptr inbounds double, ptr %62, i64 %47
  %64 = add nsw i32 %39, %20
  %65 = icmp sgt i32 %39, 0
  br i1 %65, label %66, label %203

66:                                               ; preds = %30
  %67 = getelementptr inbounds %struct.box_type, ptr %33, i64 %8, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !18
  %69 = getelementptr inbounds %struct.box_type, ptr %33, i64 %8, i32 2, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !19
  %71 = getelementptr inbounds %struct.box_type, ptr %33, i64 %8, i32 2, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !20
  %73 = load double, ptr %16, align 8, !tbaa !36
  %74 = fmul double %73, %73
  %75 = fdiv double -1.000000e+00, %74
  %76 = fmul double %75, %5
  %77 = sub nsw i32 1, %39
  %78 = zext i32 %39 to i64
  %79 = sext i32 %68 to i64
  %80 = sext i32 %70 to i64
  %81 = sext i32 %72 to i64
  br label %82

82:                                               ; preds = %199, %66
  %83 = phi i64 [ %78, %66 ], [ %87, %199 ]
  %84 = phi i32 [ %77, %66 ], [ %202, %199 ]
  %85 = phi i32 [ %20, %66 ], [ %200, %199 ]
  %86 = sext i32 %84 to i64
  %87 = add nsw i64 %83, -1
  %88 = and i32 %85, 1
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i32 %2, i32 10
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %41, i64 %91
  %93 = select i1 %89, i32 10, i32 %2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds ptr, ptr %41, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !30
  %97 = getelementptr inbounds double, ptr %96, i64 %47
  %98 = load ptr, ptr %92, align 8, !tbaa !30
  %99 = getelementptr inbounds double, ptr %98, i64 %47
  %100 = sub nsw i64 1, %83
  %101 = add nsw i64 %87, %81
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %199

103:                                              ; preds = %82
  %104 = add nsw i64 %87, %80
  %105 = icmp slt i64 %100, %104
  %106 = add nsw i64 %87, %79
  %107 = icmp slt i64 %100, %106
  %108 = trunc i64 %100 to i32
  br label %109

109:                                              ; preds = %195, %103
  %110 = phi i32 [ %108, %103 ], [ %196, %195 ]
  br i1 %105, label %111, label %195

111:                                              ; preds = %109
  %112 = mul nsw i32 %110, %37
  br label %113

113:                                              ; preds = %191, %111
  %114 = phi i32 [ %108, %111 ], [ %192, %191 ]
  br i1 %107, label %115, label %191

115:                                              ; preds = %113
  %116 = mul nsw i32 %114, %35
  %117 = add i32 %116, %112
  br label %118

118:                                              ; preds = %118, %115
  %119 = phi i64 [ %86, %115 ], [ %189, %118 ]
  %120 = trunc i64 %119 to i32
  %121 = add i32 %117, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds double, ptr %51, i64 %122
  %124 = load double, ptr %123, align 8, !tbaa !36
  %125 = fmul double %124, %4
  %126 = getelementptr inbounds double, ptr %99, i64 %122
  %127 = load double, ptr %126, align 8, !tbaa !36
  %128 = add nsw i32 %121, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, ptr %54, i64 %129
  %131 = load double, ptr %130, align 8, !tbaa !36
  %132 = getelementptr inbounds double, ptr %99, i64 %129
  %133 = load double, ptr %132, align 8, !tbaa !36
  %134 = fsub double %133, %127
  %135 = getelementptr inbounds double, ptr %54, i64 %122
  %136 = load double, ptr %135, align 8, !tbaa !36
  %137 = add nsw i32 %121, -1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds double, ptr %99, i64 %138
  %140 = load double, ptr %139, align 8, !tbaa !36
  %141 = fsub double %127, %140
  %142 = fneg double %136
  %143 = fmul double %141, %142
  %144 = tail call double @llvm.fmuladd.f64(double %131, double %134, double %143)
  %145 = add nsw i32 %121, %35
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds double, ptr %57, i64 %146
  %148 = load double, ptr %147, align 8, !tbaa !36
  %149 = getelementptr inbounds double, ptr %99, i64 %146
  %150 = load double, ptr %149, align 8, !tbaa !36
  %151 = fsub double %150, %127
  %152 = tail call double @llvm.fmuladd.f64(double %148, double %151, double %144)
  %153 = getelementptr inbounds double, ptr %57, i64 %122
  %154 = load double, ptr %153, align 8, !tbaa !36
  %155 = sub nsw i32 %121, %35
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds double, ptr %99, i64 %156
  %158 = load double, ptr %157, align 8, !tbaa !36
  %159 = fsub double %127, %158
  %160 = fneg double %154
  %161 = tail call double @llvm.fmuladd.f64(double %160, double %159, double %152)
  %162 = add nsw i32 %121, %37
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds double, ptr %60, i64 %163
  %165 = load double, ptr %164, align 8, !tbaa !36
  %166 = getelementptr inbounds double, ptr %99, i64 %163
  %167 = load double, ptr %166, align 8, !tbaa !36
  %168 = fsub double %167, %127
  %169 = tail call double @llvm.fmuladd.f64(double %165, double %168, double %161)
  %170 = getelementptr inbounds double, ptr %60, i64 %122
  %171 = load double, ptr %170, align 8, !tbaa !36
  %172 = sub nsw i32 %121, %37
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds double, ptr %99, i64 %173
  %175 = load double, ptr %174, align 8, !tbaa !36
  %176 = fsub double %127, %175
  %177 = fneg double %171
  %178 = tail call double @llvm.fmuladd.f64(double %177, double %176, double %169)
  %179 = fmul double %76, %178
  %180 = tail call double @llvm.fmuladd.f64(double %125, double %127, double %179)
  %181 = getelementptr inbounds double, ptr %63, i64 %122
  %182 = load double, ptr %181, align 8, !tbaa !36
  %183 = getelementptr inbounds double, ptr %48, i64 %122
  %184 = load double, ptr %183, align 8, !tbaa !36
  %185 = fsub double %180, %184
  %186 = fmul double %182, 0xBFE5555555555555
  %187 = tail call double @llvm.fmuladd.f64(double %186, double %185, double %127)
  %188 = getelementptr inbounds double, ptr %97, i64 %122
  store double %187, ptr %188, align 8, !tbaa !36
  %189 = add nsw i64 %119, 1
  %190 = icmp slt i64 %189, %106
  br i1 %190, label %118, label %191, !llvm.loop !158

191:                                              ; preds = %118, %113
  %192 = add nsw i32 %114, 1
  %193 = sext i32 %192 to i64
  %194 = icmp sgt i64 %104, %193
  br i1 %194, label %113, label %195, !llvm.loop !159

195:                                              ; preds = %191, %109
  %196 = add nsw i32 %110, 1
  %197 = sext i32 %196 to i64
  %198 = icmp sgt i64 %101, %197
  br i1 %198, label %109, label %199, !llvm.loop !160

199:                                              ; preds = %195, %82
  %200 = add nsw i32 %85, 1
  %201 = icmp slt i32 %200, %64
  %202 = add i32 %84, 1
  br i1 %201, label %82, label %203, !llvm.loop !161

203:                                              ; preds = %199, %30
  %204 = add nuw nsw i64 %31, 1
  %205 = icmp eq i64 %204, %29
  br i1 %205, label %206, label %30, !llvm.loop !162

206:                                              ; preds = %203, %19
  %207 = tail call i64 (...) @CycleTime() #17
  %208 = sub i64 %207, %24
  %209 = load i64, ptr %18, align 8, !tbaa !34
  %210 = add i64 %208, %209
  store i64 %210, ptr %18, align 8, !tbaa !34
  %211 = add nsw i32 %20, %10
  %212 = icmp slt i32 %211, 4
  br i1 %212, label %19, label %213, !llvm.loop !163

213:                                              ; preds = %206
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @residual(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, double noundef %6) #6 {
  tail call void @exchange_boundary(ptr noundef %0, i32 noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef 0) #19
  %8 = tail call i64 (...) @CycleTime() #17
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 19
  %11 = load i32, ptr %10, align 8, !tbaa !66
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %160

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 23, i64 %9
  %17 = sext i32 %3 to i64
  %18 = sext i32 %4 to i64
  %19 = sext i32 %2 to i64
  %20 = zext i32 %11 to i64
  br label %21

21:                                               ; preds = %157, %13
  %22 = phi i64 [ 0, %13 ], [ %158, %157 ]
  %23 = getelementptr inbounds %struct.subdomain_type, ptr %15, i64 %22, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.box_type, ptr %24, i64 %9, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !25
  %27 = getelementptr inbounds %struct.box_type, ptr %24, i64 %9, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !26
  %29 = getelementptr inbounds %struct.box_type, ptr %24, i64 %9, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !24
  %31 = getelementptr inbounds %struct.box_type, ptr %24, i64 %9, i32 2, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !20
  %33 = getelementptr inbounds %struct.box_type, ptr %24, i64 %9, i32 2, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !19
  %35 = getelementptr inbounds %struct.box_type, ptr %24, i64 %9, i32 10
  %36 = load ptr, ptr %35, align 8, !tbaa !31
  %37 = getelementptr inbounds ptr, ptr %36, i64 %17
  %38 = load ptr, ptr %37, align 8, !tbaa !30
  %39 = add nsw i32 %26, 1
  %40 = add nsw i32 %39, %28
  %41 = mul nsw i32 %30, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, ptr %38, i64 %42
  %44 = getelementptr inbounds ptr, ptr %36, i64 %18
  %45 = load ptr, ptr %44, align 8, !tbaa !30
  %46 = getelementptr inbounds double, ptr %45, i64 %42
  %47 = getelementptr inbounds ptr, ptr %36, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !30
  %49 = getelementptr inbounds double, ptr %48, i64 %42
  %50 = getelementptr inbounds ptr, ptr %36, i64 5
  %51 = load ptr, ptr %50, align 8, !tbaa !30
  %52 = getelementptr inbounds double, ptr %51, i64 %42
  %53 = getelementptr inbounds ptr, ptr %36, i64 6
  %54 = load ptr, ptr %53, align 8, !tbaa !30
  %55 = getelementptr inbounds double, ptr %54, i64 %42
  %56 = getelementptr inbounds ptr, ptr %36, i64 7
  %57 = load ptr, ptr %56, align 8, !tbaa !30
  %58 = getelementptr inbounds double, ptr %57, i64 %42
  %59 = getelementptr inbounds ptr, ptr %36, i64 %19
  %60 = load ptr, ptr %59, align 8, !tbaa !30
  %61 = getelementptr inbounds double, ptr %60, i64 %42
  %62 = icmp sgt i32 %32, 0
  br i1 %62, label %63, label %157

63:                                               ; preds = %21
  %64 = getelementptr inbounds %struct.box_type, ptr %24, i64 %9, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !18
  %66 = load double, ptr %16, align 8, !tbaa !36
  %67 = fmul double %66, %66
  %68 = icmp sgt i32 %34, 0
  %69 = icmp sgt i32 %65, 0
  %70 = fdiv double -1.000000e+00, %67
  %71 = fmul double %70, %6
  %72 = zext i32 %65 to i64
  br label %73

73:                                               ; preds = %154, %63
  %74 = phi i32 [ 0, %63 ], [ %155, %154 ]
  br i1 %68, label %75, label %154

75:                                               ; preds = %73
  %76 = mul nsw i32 %74, %28
  br label %77

77:                                               ; preds = %151, %75
  %78 = phi i32 [ 0, %75 ], [ %152, %151 ]
  br i1 %69, label %79, label %151

79:                                               ; preds = %77
  %80 = mul nsw i32 %78, %26
  %81 = add i32 %80, %76
  br label %82

82:                                               ; preds = %82, %79
  %83 = phi i64 [ 0, %79 ], [ %149, %82 ]
  %84 = trunc i64 %83 to i32
  %85 = add i32 %81, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, ptr %49, i64 %86
  %88 = load double, ptr %87, align 8, !tbaa !36
  %89 = fmul double %88, %5
  %90 = getelementptr inbounds double, ptr %43, i64 %86
  %91 = load double, ptr %90, align 8, !tbaa !36
  %92 = add nsw i32 %85, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double, ptr %52, i64 %93
  %95 = load double, ptr %94, align 8, !tbaa !36
  %96 = getelementptr inbounds double, ptr %43, i64 %93
  %97 = load double, ptr %96, align 8, !tbaa !36
  %98 = fsub double %97, %91
  %99 = getelementptr inbounds double, ptr %52, i64 %86
  %100 = load double, ptr %99, align 8, !tbaa !36
  %101 = add nsw i32 %85, -1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, ptr %43, i64 %102
  %104 = load double, ptr %103, align 8, !tbaa !36
  %105 = fsub double %91, %104
  %106 = fneg double %100
  %107 = fmul double %105, %106
  %108 = tail call double @llvm.fmuladd.f64(double %95, double %98, double %107)
  %109 = add nsw i32 %85, %26
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds double, ptr %55, i64 %110
  %112 = load double, ptr %111, align 8, !tbaa !36
  %113 = getelementptr inbounds double, ptr %43, i64 %110
  %114 = load double, ptr %113, align 8, !tbaa !36
  %115 = fsub double %114, %91
  %116 = tail call double @llvm.fmuladd.f64(double %112, double %115, double %108)
  %117 = getelementptr inbounds double, ptr %55, i64 %86
  %118 = load double, ptr %117, align 8, !tbaa !36
  %119 = sub nsw i32 %85, %26
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds double, ptr %43, i64 %120
  %122 = load double, ptr %121, align 8, !tbaa !36
  %123 = fsub double %91, %122
  %124 = fneg double %118
  %125 = tail call double @llvm.fmuladd.f64(double %124, double %123, double %116)
  %126 = add nsw i32 %85, %28
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds double, ptr %58, i64 %127
  %129 = load double, ptr %128, align 8, !tbaa !36
  %130 = getelementptr inbounds double, ptr %43, i64 %127
  %131 = load double, ptr %130, align 8, !tbaa !36
  %132 = fsub double %131, %91
  %133 = tail call double @llvm.fmuladd.f64(double %129, double %132, double %125)
  %134 = getelementptr inbounds double, ptr %58, i64 %86
  %135 = load double, ptr %134, align 8, !tbaa !36
  %136 = sub nsw i32 %85, %28
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds double, ptr %43, i64 %137
  %139 = load double, ptr %138, align 8, !tbaa !36
  %140 = fsub double %91, %139
  %141 = fneg double %135
  %142 = tail call double @llvm.fmuladd.f64(double %141, double %140, double %133)
  %143 = fmul double %71, %142
  %144 = tail call double @llvm.fmuladd.f64(double %89, double %91, double %143)
  %145 = getelementptr inbounds double, ptr %46, i64 %86
  %146 = load double, ptr %145, align 8, !tbaa !36
  %147 = fsub double %146, %144
  %148 = getelementptr inbounds double, ptr %61, i64 %86
  store double %147, ptr %148, align 8, !tbaa !36
  %149 = add nuw nsw i64 %83, 1
  %150 = icmp eq i64 %149, %72
  br i1 %150, label %151, label %82, !llvm.loop !164

151:                                              ; preds = %82, %77
  %152 = add nuw nsw i32 %78, 1
  %153 = icmp eq i32 %152, %34
  br i1 %153, label %154, label %77, !llvm.loop !165

154:                                              ; preds = %151, %73
  %155 = add nuw nsw i32 %74, 1
  %156 = icmp eq i32 %155, %32
  br i1 %156, label %157, label %73, !llvm.loop !166

157:                                              ; preds = %154, %21
  %158 = add nuw nsw i64 %22, 1
  %159 = icmp eq i64 %158, %20
  br i1 %159, label %160, label %21, !llvm.loop !167

160:                                              ; preds = %157, %7
  %161 = tail call i64 (...) @CycleTime() #17
  %162 = sub i64 %161, %8
  %163 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 2, i64 %9
  %164 = load i64, ptr %163, align 8, !tbaa !34
  %165 = add i64 %162, %164
  store i64 %165, ptr %163, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @restriction(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #6 {
  %5 = add nsw i32 %1, 1
  %6 = tail call i64 (...) @CycleTime() #17
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 19
  %9 = load i32, ptr %8, align 8, !tbaa !66
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = sext i32 %1 to i64
  br label %135

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = sext i32 %1 to i64
  %17 = sext i32 %3 to i64
  %18 = sext i32 %2 to i64
  %19 = zext i32 %9 to i64
  br label %20

20:                                               ; preds = %132, %13
  %21 = phi i64 [ 0, %13 ], [ %133, %132 ]
  %22 = getelementptr inbounds %struct.subdomain_type, ptr %15, i64 %21, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct.box_type, ptr %23, i64 %7, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !24
  %26 = getelementptr inbounds %struct.box_type, ptr %23, i64 %7, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !25
  %28 = getelementptr inbounds %struct.box_type, ptr %23, i64 %7, i32 6
  %29 = load i32, ptr %28, align 4, !tbaa !26
  %30 = getelementptr inbounds %struct.box_type, ptr %23, i64 %7, i32 2, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !19
  %32 = getelementptr inbounds %struct.box_type, ptr %23, i64 %7, i32 2, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !20
  %34 = getelementptr inbounds %struct.box_type, ptr %23, i64 %16, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !24
  %36 = getelementptr inbounds %struct.box_type, ptr %23, i64 %16, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !25
  %38 = getelementptr inbounds %struct.box_type, ptr %23, i64 %16, i32 6
  %39 = load i32, ptr %38, align 4, !tbaa !26
  %40 = getelementptr inbounds %struct.box_type, ptr %23, i64 %16, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !31
  %42 = getelementptr inbounds ptr, ptr %41, i64 %17
  %43 = load ptr, ptr %42, align 8, !tbaa !30
  %44 = add nsw i32 %37, 1
  %45 = add nsw i32 %44, %39
  %46 = mul nsw i32 %45, %35
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, ptr %43, i64 %47
  %49 = getelementptr inbounds %struct.box_type, ptr %23, i64 %7, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !31
  %51 = getelementptr inbounds ptr, ptr %50, i64 %18
  %52 = load ptr, ptr %51, align 8, !tbaa !30
  %53 = add nsw i32 %27, 1
  %54 = add nsw i32 %53, %29
  %55 = mul nsw i32 %54, %25
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, ptr %52, i64 %56
  %58 = icmp sgt i32 %33, 0
  br i1 %58, label %59, label %132

59:                                               ; preds = %20
  %60 = getelementptr inbounds %struct.box_type, ptr %23, i64 %7, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !18
  %62 = icmp sgt i32 %31, 0
  %63 = icmp sgt i32 %61, 0
  %64 = zext i32 %61 to i64
  br label %65

65:                                               ; preds = %129, %59
  %66 = phi i32 [ 0, %59 ], [ %130, %129 ]
  br i1 %62, label %67, label %129

67:                                               ; preds = %65
  %68 = mul nsw i32 %66, %29
  %69 = mul i32 %66, %39
  br label %70

70:                                               ; preds = %126, %67
  %71 = phi i32 [ 0, %67 ], [ %127, %126 ]
  br i1 %63, label %72, label %126

72:                                               ; preds = %70
  %73 = mul nsw i32 %71, %27
  %74 = add i32 %73, %68
  %75 = mul i32 %71, %37
  %76 = add i32 %75, %69
  br label %77

77:                                               ; preds = %77, %72
  %78 = phi i64 [ 0, %72 ], [ %124, %77 ]
  %79 = trunc i64 %78 to i32
  %80 = add i32 %74, %79
  %81 = add i32 %76, %79
  %82 = shl i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, ptr %48, i64 %83
  %85 = load double, ptr %84, align 8, !tbaa !36
  %86 = or i32 %82, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, ptr %48, i64 %87
  %89 = load double, ptr %88, align 8, !tbaa !36
  %90 = fadd double %85, %89
  %91 = add nsw i32 %82, %37
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, ptr %48, i64 %92
  %94 = load double, ptr %93, align 8, !tbaa !36
  %95 = fadd double %90, %94
  %96 = add nsw i32 %86, %37
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, ptr %48, i64 %97
  %99 = load double, ptr %98, align 8, !tbaa !36
  %100 = fadd double %95, %99
  %101 = add nsw i32 %82, %39
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, ptr %48, i64 %102
  %104 = load double, ptr %103, align 8, !tbaa !36
  %105 = fadd double %100, %104
  %106 = add nsw i32 %86, %39
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double, ptr %48, i64 %107
  %109 = load double, ptr %108, align 8, !tbaa !36
  %110 = fadd double %105, %109
  %111 = add nsw i32 %91, %39
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, ptr %48, i64 %112
  %114 = load double, ptr %113, align 8, !tbaa !36
  %115 = fadd double %110, %114
  %116 = add nsw i32 %96, %39
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds double, ptr %48, i64 %117
  %119 = load double, ptr %118, align 8, !tbaa !36
  %120 = fadd double %115, %119
  %121 = fmul double %120, 1.250000e-01
  %122 = sext i32 %80 to i64
  %123 = getelementptr inbounds double, ptr %57, i64 %122
  store double %121, ptr %123, align 8, !tbaa !36
  %124 = add nuw nsw i64 %78, 1
  %125 = icmp eq i64 %124, %64
  br i1 %125, label %126, label %77, !llvm.loop !168

126:                                              ; preds = %77, %70
  %127 = add nuw nsw i32 %71, 1
  %128 = icmp eq i32 %127, %31
  br i1 %128, label %129, label %70, !llvm.loop !169

129:                                              ; preds = %126, %65
  %130 = add nuw nsw i32 %66, 1
  %131 = icmp eq i32 %130, %33
  br i1 %131, label %132, label %65, !llvm.loop !170

132:                                              ; preds = %129, %20
  %133 = add nuw nsw i64 %21, 1
  %134 = icmp eq i64 %133, %19
  br i1 %134, label %135, label %20, !llvm.loop !171

135:                                              ; preds = %132, %11
  %136 = phi i64 [ %12, %11 ], [ %16, %132 ]
  %137 = tail call i64 (...) @CycleTime() #17
  %138 = sub i64 %137, %6
  %139 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 3, i64 %136
  %140 = load i64, ptr %139, align 8, !tbaa !34
  %141 = add i64 %138, %140
  store i64 %141, ptr %139, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @restriction_betas(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = tail call i64 (...) @CycleTime() #17
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 19
  %7 = load i32, ptr %6, align 8, !tbaa !66
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = sext i32 %1 to i64
  br label %241

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !78
  %14 = sext i32 %1 to i64
  %15 = zext i32 %7 to i64
  br label %16

16:                                               ; preds = %238, %11
  %17 = phi i64 [ 0, %11 ], [ %239, %238 ]
  %18 = getelementptr inbounds %struct.subdomain_type, ptr %13, i64 %17, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.box_type, ptr %19, i64 %5, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !24
  %22 = getelementptr inbounds %struct.box_type, ptr %19, i64 %5, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !25
  %24 = getelementptr inbounds %struct.box_type, ptr %19, i64 %5, i32 6
  %25 = load i32, ptr %24, align 4, !tbaa !26
  %26 = getelementptr inbounds %struct.box_type, ptr %19, i64 %5, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !18
  %28 = getelementptr inbounds %struct.box_type, ptr %19, i64 %5, i32 2, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !19
  %30 = getelementptr inbounds %struct.box_type, ptr %19, i64 %5, i32 2, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !20
  %32 = getelementptr inbounds %struct.box_type, ptr %19, i64 %14, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !24
  %34 = getelementptr inbounds %struct.box_type, ptr %19, i64 %14, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !25
  %36 = getelementptr inbounds %struct.box_type, ptr %19, i64 %14, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !26
  %38 = getelementptr inbounds %struct.box_type, ptr %19, i64 %14, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !31
  %40 = getelementptr inbounds ptr, ptr %39, i64 5
  %41 = load ptr, ptr %40, align 8, !tbaa !30
  %42 = mul nsw i32 %37, %33
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, ptr %41, i64 %43
  %45 = mul nsw i32 %35, %33
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, ptr %44, i64 %46
  %48 = sext i32 %33 to i64
  %49 = getelementptr inbounds double, ptr %47, i64 %48
  %50 = getelementptr inbounds %struct.box_type, ptr %19, i64 %5, i32 10
  %51 = load ptr, ptr %50, align 8, !tbaa !31
  %52 = getelementptr inbounds ptr, ptr %51, i64 5
  %53 = load ptr, ptr %52, align 8, !tbaa !30
  %54 = mul nsw i32 %25, %21
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, ptr %53, i64 %55
  %57 = mul nsw i32 %23, %21
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, ptr %56, i64 %58
  %60 = sext i32 %21 to i64
  %61 = getelementptr inbounds double, ptr %59, i64 %60
  %62 = icmp sgt i32 %31, 0
  br i1 %62, label %63, label %238

63:                                               ; preds = %16
  %64 = icmp sgt i32 %29, 0
  %65 = icmp sgt i32 %27, 0
  %66 = zext i32 %27 to i64
  br label %67

67:                                               ; preds = %111, %63
  %68 = phi i32 [ 0, %63 ], [ %112, %111 ]
  br i1 %64, label %69, label %111

69:                                               ; preds = %67
  %70 = mul nsw i32 %68, %25
  %71 = mul i32 %68, %37
  br label %72

72:                                               ; preds = %108, %69
  %73 = phi i32 [ 0, %69 ], [ %109, %108 ]
  br i1 %65, label %74, label %108

74:                                               ; preds = %72
  %75 = mul nsw i32 %73, %23
  %76 = add i32 %75, %70
  %77 = mul i32 %73, %35
  %78 = add i32 %77, %71
  br label %79

79:                                               ; preds = %79, %74
  %80 = phi i64 [ 0, %74 ], [ %106, %79 ]
  %81 = trunc i64 %80 to i32
  %82 = add i32 %76, %81
  %83 = add i32 %78, %81
  %84 = shl i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, ptr %49, i64 %85
  %87 = load double, ptr %86, align 8, !tbaa !36
  %88 = add nsw i32 %84, %35
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, ptr %49, i64 %89
  %91 = load double, ptr %90, align 8, !tbaa !36
  %92 = fadd double %87, %91
  %93 = add nsw i32 %84, %37
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds double, ptr %49, i64 %94
  %96 = load double, ptr %95, align 8, !tbaa !36
  %97 = fadd double %92, %96
  %98 = add nsw i32 %88, %37
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, ptr %49, i64 %99
  %101 = load double, ptr %100, align 8, !tbaa !36
  %102 = fadd double %97, %101
  %103 = fmul double %102, 2.500000e-01
  %104 = sext i32 %82 to i64
  %105 = getelementptr inbounds double, ptr %61, i64 %104
  store double %103, ptr %105, align 8, !tbaa !36
  %106 = add nuw nsw i64 %80, 1
  %107 = icmp eq i64 %106, %66
  br i1 %107, label %108, label %79, !llvm.loop !172

108:                                              ; preds = %79, %72
  %109 = add nuw nsw i32 %73, 1
  %110 = icmp eq i32 %109, %29
  br i1 %110, label %111, label %72, !llvm.loop !173

111:                                              ; preds = %108, %67
  %112 = add nuw nsw i32 %68, 1
  %113 = icmp eq i32 %112, %31
  br i1 %113, label %114, label %67, !llvm.loop !174

114:                                              ; preds = %111
  %115 = getelementptr inbounds ptr, ptr %39, i64 6
  %116 = load ptr, ptr %115, align 8, !tbaa !30
  %117 = getelementptr inbounds double, ptr %116, i64 %43
  %118 = getelementptr inbounds double, ptr %117, i64 %46
  %119 = getelementptr inbounds double, ptr %118, i64 %48
  %120 = getelementptr inbounds ptr, ptr %51, i64 6
  %121 = load ptr, ptr %120, align 8, !tbaa !30
  %122 = getelementptr inbounds double, ptr %121, i64 %55
  %123 = getelementptr inbounds double, ptr %122, i64 %58
  %124 = getelementptr inbounds double, ptr %123, i64 %60
  br i1 %62, label %125, label %238

125:                                              ; preds = %114
  %126 = icmp sgt i32 %29, 0
  %127 = icmp sgt i32 %27, 0
  %128 = zext i32 %27 to i64
  br label %129

129:                                              ; preds = %173, %125
  %130 = phi i32 [ 0, %125 ], [ %174, %173 ]
  br i1 %126, label %131, label %173

131:                                              ; preds = %129
  %132 = mul nsw i32 %130, %25
  %133 = mul i32 %130, %37
  br label %134

134:                                              ; preds = %170, %131
  %135 = phi i32 [ 0, %131 ], [ %171, %170 ]
  br i1 %127, label %136, label %170

136:                                              ; preds = %134
  %137 = mul nsw i32 %135, %23
  %138 = add i32 %137, %132
  %139 = mul i32 %135, %35
  %140 = add i32 %139, %133
  br label %141

141:                                              ; preds = %141, %136
  %142 = phi i64 [ 0, %136 ], [ %168, %141 ]
  %143 = trunc i64 %142 to i32
  %144 = add i32 %138, %143
  %145 = add i32 %140, %143
  %146 = shl i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds double, ptr %119, i64 %147
  %149 = load double, ptr %148, align 8, !tbaa !36
  %150 = or i32 %146, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds double, ptr %119, i64 %151
  %153 = load double, ptr %152, align 8, !tbaa !36
  %154 = fadd double %149, %153
  %155 = add nsw i32 %146, %37
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds double, ptr %119, i64 %156
  %158 = load double, ptr %157, align 8, !tbaa !36
  %159 = fadd double %154, %158
  %160 = add nsw i32 %150, %37
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds double, ptr %119, i64 %161
  %163 = load double, ptr %162, align 8, !tbaa !36
  %164 = fadd double %159, %163
  %165 = fmul double %164, 2.500000e-01
  %166 = sext i32 %144 to i64
  %167 = getelementptr inbounds double, ptr %124, i64 %166
  store double %165, ptr %167, align 8, !tbaa !36
  %168 = add nuw nsw i64 %142, 1
  %169 = icmp eq i64 %168, %128
  br i1 %169, label %170, label %141, !llvm.loop !175

170:                                              ; preds = %141, %134
  %171 = add nuw nsw i32 %135, 1
  %172 = icmp eq i32 %171, %29
  br i1 %172, label %173, label %134, !llvm.loop !176

173:                                              ; preds = %170, %129
  %174 = add nuw nsw i32 %130, 1
  %175 = icmp eq i32 %174, %31
  br i1 %175, label %176, label %129, !llvm.loop !177

176:                                              ; preds = %173
  %177 = getelementptr inbounds ptr, ptr %39, i64 7
  %178 = load ptr, ptr %177, align 8, !tbaa !30
  %179 = getelementptr inbounds double, ptr %178, i64 %43
  %180 = getelementptr inbounds double, ptr %179, i64 %46
  %181 = getelementptr inbounds double, ptr %180, i64 %48
  %182 = getelementptr inbounds ptr, ptr %51, i64 7
  %183 = load ptr, ptr %182, align 8, !tbaa !30
  %184 = getelementptr inbounds double, ptr %183, i64 %55
  %185 = getelementptr inbounds double, ptr %184, i64 %58
  %186 = getelementptr inbounds double, ptr %185, i64 %60
  br i1 %62, label %187, label %238

187:                                              ; preds = %176
  %188 = icmp sgt i32 %29, 0
  %189 = icmp sgt i32 %27, 0
  %190 = zext i32 %27 to i64
  br label %191

191:                                              ; preds = %235, %187
  %192 = phi i32 [ 0, %187 ], [ %236, %235 ]
  br i1 %188, label %193, label %235

193:                                              ; preds = %191
  %194 = mul nsw i32 %192, %25
  %195 = mul i32 %192, %37
  br label %196

196:                                              ; preds = %232, %193
  %197 = phi i32 [ 0, %193 ], [ %233, %232 ]
  br i1 %189, label %198, label %232

198:                                              ; preds = %196
  %199 = mul nsw i32 %197, %23
  %200 = add i32 %199, %194
  %201 = mul i32 %197, %35
  %202 = add i32 %201, %195
  br label %203

203:                                              ; preds = %203, %198
  %204 = phi i64 [ 0, %198 ], [ %230, %203 ]
  %205 = trunc i64 %204 to i32
  %206 = add i32 %200, %205
  %207 = add i32 %202, %205
  %208 = shl i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds double, ptr %181, i64 %209
  %211 = load double, ptr %210, align 8, !tbaa !36
  %212 = or i32 %208, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds double, ptr %181, i64 %213
  %215 = load double, ptr %214, align 8, !tbaa !36
  %216 = fadd double %211, %215
  %217 = add nsw i32 %208, %35
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds double, ptr %181, i64 %218
  %220 = load double, ptr %219, align 8, !tbaa !36
  %221 = fadd double %216, %220
  %222 = add nsw i32 %212, %35
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds double, ptr %181, i64 %223
  %225 = load double, ptr %224, align 8, !tbaa !36
  %226 = fadd double %221, %225
  %227 = fmul double %226, 2.500000e-01
  %228 = sext i32 %206 to i64
  %229 = getelementptr inbounds double, ptr %186, i64 %228
  store double %227, ptr %229, align 8, !tbaa !36
  %230 = add nuw nsw i64 %204, 1
  %231 = icmp eq i64 %230, %190
  br i1 %231, label %232, label %203, !llvm.loop !178

232:                                              ; preds = %203, %196
  %233 = add nuw nsw i32 %197, 1
  %234 = icmp eq i32 %233, %29
  br i1 %234, label %235, label %196, !llvm.loop !179

235:                                              ; preds = %232, %191
  %236 = add nuw nsw i32 %192, 1
  %237 = icmp eq i32 %236, %31
  br i1 %237, label %238, label %191, !llvm.loop !180

238:                                              ; preds = %235, %176, %114, %16
  %239 = add nuw nsw i64 %17, 1
  %240 = icmp eq i64 %239, %15
  br i1 %240, label %241, label %16, !llvm.loop !181

241:                                              ; preds = %238, %9
  %242 = phi i64 [ %10, %9 ], [ %14, %238 ]
  %243 = tail call i64 (...) @CycleTime() #17
  %244 = sub i64 %243, %4
  %245 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 3, i64 %242
  %246 = load i64, ptr %245, align 8, !tbaa !34
  %247 = add i64 %244, %246
  store i64 %247, ptr %245, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @interpolation_constant(ptr nocapture noundef %0, i32 noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) #6 {
  %6 = tail call i64 (...) @CycleTime() #17
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 19
  %9 = load i32, ptr %8, align 8, !tbaa !66
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %102

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %13 = add nsw i32 %1, 1
  %14 = load ptr, ptr %12, align 8, !tbaa !78
  %15 = sext i32 %13 to i64
  %16 = sext i32 %3 to i64
  %17 = sext i32 %4 to i64
  %18 = zext i32 %9 to i64
  br label %19

19:                                               ; preds = %99, %11
  %20 = phi i64 [ 0, %11 ], [ %100, %99 ]
  %21 = getelementptr inbounds %struct.subdomain_type, ptr %14, i64 %20, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.box_type, ptr %22, i64 %15, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !24
  %25 = getelementptr inbounds %struct.box_type, ptr %22, i64 %15, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !25
  %27 = getelementptr inbounds %struct.box_type, ptr %22, i64 %15, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !26
  %29 = getelementptr inbounds %struct.box_type, ptr %22, i64 %7, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !24
  %31 = getelementptr inbounds %struct.box_type, ptr %22, i64 %7, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !25
  %33 = getelementptr inbounds %struct.box_type, ptr %22, i64 %7, i32 6
  %34 = load i32, ptr %33, align 4, !tbaa !26
  %35 = getelementptr inbounds %struct.box_type, ptr %22, i64 %7, i32 2, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !19
  %37 = getelementptr inbounds %struct.box_type, ptr %22, i64 %7, i32 2, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !20
  %39 = getelementptr inbounds %struct.box_type, ptr %22, i64 %7, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !31
  %41 = getelementptr inbounds ptr, ptr %40, i64 %16
  %42 = load ptr, ptr %41, align 8, !tbaa !30
  %43 = add nsw i32 %32, 1
  %44 = add nsw i32 %43, %34
  %45 = mul nsw i32 %44, %30
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, ptr %42, i64 %46
  %48 = getelementptr inbounds %struct.box_type, ptr %22, i64 %15, i32 10
  %49 = load ptr, ptr %48, align 8, !tbaa !31
  %50 = getelementptr inbounds ptr, ptr %49, i64 %17
  %51 = load ptr, ptr %50, align 8, !tbaa !30
  %52 = add nsw i32 %26, 1
  %53 = add nsw i32 %52, %28
  %54 = mul nsw i32 %53, %24
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, ptr %51, i64 %55
  %57 = icmp sgt i32 %38, 0
  br i1 %57, label %58, label %99

58:                                               ; preds = %19
  %59 = getelementptr inbounds %struct.box_type, ptr %22, i64 %7, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !18
  %61 = icmp sgt i32 %36, 0
  %62 = icmp sgt i32 %60, 0
  %63 = zext i32 %60 to i64
  br label %64

64:                                               ; preds = %96, %58
  %65 = phi i32 [ 0, %58 ], [ %97, %96 ]
  br i1 %61, label %66, label %96

66:                                               ; preds = %64
  %67 = mul nsw i32 %65, %34
  %68 = lshr i32 %65, 1
  %69 = mul nsw i32 %68, %28
  br label %70

70:                                               ; preds = %93, %66
  %71 = phi i32 [ 0, %66 ], [ %94, %93 ]
  br i1 %62, label %72, label %93

72:                                               ; preds = %70
  %73 = mul nsw i32 %71, %32
  %74 = add i32 %73, %67
  %75 = lshr i32 %71, 1
  %76 = mul nsw i32 %75, %26
  %77 = add i32 %76, %69
  br label %78

78:                                               ; preds = %78, %72
  %79 = phi i64 [ 0, %72 ], [ %91, %78 ]
  %80 = trunc i64 %79 to i32
  %81 = add i32 %74, %80
  %82 = lshr i32 %80, 1
  %83 = add i32 %77, %82
  %84 = sext i32 %81 to i64
  %85 = getelementptr inbounds double, ptr %47, i64 %84
  %86 = load double, ptr %85, align 8, !tbaa !36
  %87 = sext i32 %83 to i64
  %88 = getelementptr inbounds double, ptr %56, i64 %87
  %89 = load double, ptr %88, align 8, !tbaa !36
  %90 = tail call double @llvm.fmuladd.f64(double %2, double %86, double %89)
  store double %90, ptr %85, align 8, !tbaa !36
  %91 = add nuw nsw i64 %79, 1
  %92 = icmp eq i64 %91, %63
  br i1 %92, label %93, label %78, !llvm.loop !182

93:                                               ; preds = %78, %70
  %94 = add nuw nsw i32 %71, 1
  %95 = icmp eq i32 %94, %36
  br i1 %95, label %96, label %70, !llvm.loop !183

96:                                               ; preds = %93, %64
  %97 = add nuw nsw i32 %65, 1
  %98 = icmp eq i32 %97, %38
  br i1 %98, label %99, label %64, !llvm.loop !184

99:                                               ; preds = %96, %19
  %100 = add nuw nsw i64 %20, 1
  %101 = icmp eq i64 %100, %18
  br i1 %101, label %102, label %19, !llvm.loop !185

102:                                              ; preds = %99, %5
  %103 = tail call i64 (...) @CycleTime() #17
  %104 = sub i64 %103, %6
  %105 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 4, i64 %7
  %106 = load i64, ptr %105, align 8, !tbaa !34
  %107 = add i64 %104, %106
  store i64 %107, ptr %105, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @zero_grid(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = tail call i64 (...) @CycleTime() #17
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 19
  %7 = load i32, ptr %6, align 8, !tbaa !66
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %75

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = sext i32 %2 to i64
  %13 = zext i32 %7 to i64
  br label %14

14:                                               ; preds = %72, %9
  %15 = phi i64 [ 0, %9 ], [ %73, %72 ]
  %16 = getelementptr inbounds %struct.subdomain_type, ptr %11, i64 %15, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.box_type, ptr %17, i64 %5, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !25
  %20 = getelementptr inbounds %struct.box_type, ptr %17, i64 %5, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !26
  %22 = getelementptr inbounds %struct.box_type, ptr %17, i64 %5, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !24
  %24 = getelementptr inbounds %struct.box_type, ptr %17, i64 %5, i32 2, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !20
  %26 = getelementptr inbounds %struct.box_type, ptr %17, i64 %5, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !31
  %28 = getelementptr inbounds ptr, ptr %27, i64 %12
  %29 = load ptr, ptr %28, align 8, !tbaa !30
  %30 = add nsw i32 %19, 1
  %31 = add nsw i32 %30, %21
  %32 = mul nsw i32 %23, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, ptr %29, i64 %33
  %35 = sub nsw i32 0, %23
  %36 = add nsw i32 %25, %23
  %37 = icmp sgt i32 %36, %35
  br i1 %37, label %38, label %72

38:                                               ; preds = %14
  %39 = getelementptr inbounds %struct.box_type, ptr %17, i64 %5, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !18
  %41 = getelementptr inbounds %struct.box_type, ptr %17, i64 %5, i32 2, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !19
  %43 = add nsw i32 %42, %23
  %44 = icmp sgt i32 %43, %35
  %45 = add i32 %40, %23
  %46 = icmp sgt i32 %45, %35
  %47 = zext i32 %35 to i64
  br label %48

48:                                               ; preds = %69, %38
  %49 = phi i32 [ %35, %38 ], [ %70, %69 ]
  br i1 %44, label %50, label %69

50:                                               ; preds = %48
  %51 = mul nsw i32 %49, %21
  br label %52

52:                                               ; preds = %66, %50
  %53 = phi i32 [ %35, %50 ], [ %67, %66 ]
  br i1 %46, label %54, label %66

54:                                               ; preds = %52
  %55 = mul nsw i32 %53, %19
  %56 = add i32 %55, %51
  br label %57

57:                                               ; preds = %57, %54
  %58 = phi i64 [ %47, %54 ], [ %63, %57 ]
  %59 = trunc i64 %58 to i32
  %60 = add i32 %56, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, ptr %34, i64 %61
  store double 0.000000e+00, ptr %62, align 8, !tbaa !36
  %63 = add i64 %58, 1
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %45, %64
  br i1 %65, label %66, label %57, !llvm.loop !186

66:                                               ; preds = %57, %52
  %67 = add nsw i32 %53, 1
  %68 = icmp eq i32 %67, %43
  br i1 %68, label %69, label %52, !llvm.loop !187

69:                                               ; preds = %66, %48
  %70 = add nsw i32 %49, 1
  %71 = icmp eq i32 %70, %36
  br i1 %71, label %72, label %48, !llvm.loop !188

72:                                               ; preds = %69, %14
  %73 = add nuw nsw i64 %15, 1
  %74 = icmp eq i64 %73, %13
  br i1 %74, label %75, label %14, !llvm.loop !189

75:                                               ; preds = %72, %3
  %76 = tail call i64 (...) @CycleTime() #17
  %77 = sub i64 %76, %4
  %78 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 12, i64 %5
  %79 = load i64, ptr %78, align 8, !tbaa !34
  %80 = add i64 %77, %79
  store i64 %80, ptr %78, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @add_grids(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, i32 noundef %4, double noundef %5, i32 noundef %6) #6 {
  %8 = tail call i64 (...) @CycleTime() #17
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 19
  %11 = load i32, ptr %10, align 8, !tbaa !66
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %88

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = sext i32 %2 to i64
  %17 = sext i32 %4 to i64
  %18 = sext i32 %6 to i64
  %19 = zext i32 %11 to i64
  br label %20

20:                                               ; preds = %85, %13
  %21 = phi i64 [ 0, %13 ], [ %86, %85 ]
  %22 = getelementptr inbounds %struct.subdomain_type, ptr %15, i64 %21, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct.box_type, ptr %23, i64 %9, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !25
  %26 = getelementptr inbounds %struct.box_type, ptr %23, i64 %9, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !26
  %28 = getelementptr inbounds %struct.box_type, ptr %23, i64 %9, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !24
  %30 = getelementptr inbounds %struct.box_type, ptr %23, i64 %9, i32 2, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !20
  %32 = getelementptr inbounds %struct.box_type, ptr %23, i64 %9, i32 2, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !19
  %34 = getelementptr inbounds %struct.box_type, ptr %23, i64 %9, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !31
  %36 = getelementptr inbounds ptr, ptr %35, i64 %16
  %37 = load ptr, ptr %36, align 8, !tbaa !30
  %38 = add nsw i32 %25, 1
  %39 = add nsw i32 %38, %27
  %40 = mul nsw i32 %29, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, ptr %37, i64 %41
  %43 = getelementptr inbounds ptr, ptr %35, i64 %17
  %44 = load ptr, ptr %43, align 8, !tbaa !30
  %45 = getelementptr inbounds double, ptr %44, i64 %41
  %46 = getelementptr inbounds ptr, ptr %35, i64 %18
  %47 = load ptr, ptr %46, align 8, !tbaa !30
  %48 = getelementptr inbounds double, ptr %47, i64 %41
  %49 = icmp sgt i32 %31, 0
  br i1 %49, label %50, label %85

50:                                               ; preds = %20
  %51 = getelementptr inbounds %struct.box_type, ptr %23, i64 %9, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !18
  %53 = icmp sgt i32 %33, 0
  %54 = icmp sgt i32 %52, 0
  %55 = zext i32 %52 to i64
  br label %56

56:                                               ; preds = %82, %50
  %57 = phi i32 [ 0, %50 ], [ %83, %82 ]
  br i1 %53, label %58, label %82

58:                                               ; preds = %56
  %59 = mul nsw i32 %57, %27
  br label %60

60:                                               ; preds = %79, %58
  %61 = phi i32 [ 0, %58 ], [ %80, %79 ]
  br i1 %54, label %62, label %79

62:                                               ; preds = %60
  %63 = mul nsw i32 %61, %25
  %64 = add i32 %63, %59
  br label %65

65:                                               ; preds = %65, %62
  %66 = phi i64 [ 0, %62 ], [ %77, %65 ]
  %67 = trunc i64 %66 to i32
  %68 = add i32 %64, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, ptr %45, i64 %69
  %71 = load double, ptr %70, align 8, !tbaa !36
  %72 = getelementptr inbounds double, ptr %48, i64 %69
  %73 = load double, ptr %72, align 8, !tbaa !36
  %74 = fmul double %73, %5
  %75 = tail call double @llvm.fmuladd.f64(double %3, double %71, double %74)
  %76 = getelementptr inbounds double, ptr %42, i64 %69
  store double %75, ptr %76, align 8, !tbaa !36
  %77 = add nuw nsw i64 %66, 1
  %78 = icmp eq i64 %77, %55
  br i1 %78, label %79, label %65, !llvm.loop !190

79:                                               ; preds = %65, %60
  %80 = add nuw nsw i32 %61, 1
  %81 = icmp eq i32 %80, %33
  br i1 %81, label %82, label %60, !llvm.loop !191

82:                                               ; preds = %79, %56
  %83 = add nuw nsw i32 %57, 1
  %84 = icmp eq i32 %83, %31
  br i1 %84, label %85, label %56, !llvm.loop !192

85:                                               ; preds = %82, %20
  %86 = add nuw nsw i64 %21, 1
  %87 = icmp eq i64 %86, %19
  br i1 %87, label %88, label %20, !llvm.loop !193

88:                                               ; preds = %85, %7
  %89 = tail call i64 (...) @CycleTime() #17
  %90 = sub i64 %89, %8
  %91 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 12, i64 %9
  %92 = load i64, ptr %91, align 8, !tbaa !34
  %93 = add i64 %90, %92
  store i64 %93, ptr %91, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @mul_grids(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5) #6 {
  %7 = tail call i64 (...) @CycleTime() #17
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 19
  %10 = load i32, ptr %9, align 8, !tbaa !66
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %87

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %14 = load ptr, ptr %13, align 8, !tbaa !78
  %15 = sext i32 %2 to i64
  %16 = sext i32 %4 to i64
  %17 = sext i32 %5 to i64
  %18 = zext i32 %10 to i64
  br label %19

19:                                               ; preds = %84, %12
  %20 = phi i64 [ 0, %12 ], [ %85, %84 ]
  %21 = getelementptr inbounds %struct.subdomain_type, ptr %14, i64 %20, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.box_type, ptr %22, i64 %8, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !25
  %25 = getelementptr inbounds %struct.box_type, ptr %22, i64 %8, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !26
  %27 = getelementptr inbounds %struct.box_type, ptr %22, i64 %8, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !24
  %29 = getelementptr inbounds %struct.box_type, ptr %22, i64 %8, i32 2, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !20
  %31 = getelementptr inbounds %struct.box_type, ptr %22, i64 %8, i32 2, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !19
  %33 = getelementptr inbounds %struct.box_type, ptr %22, i64 %8, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !31
  %35 = getelementptr inbounds ptr, ptr %34, i64 %15
  %36 = load ptr, ptr %35, align 8, !tbaa !30
  %37 = add nsw i32 %24, 1
  %38 = add nsw i32 %37, %26
  %39 = mul nsw i32 %28, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, ptr %36, i64 %40
  %42 = getelementptr inbounds ptr, ptr %34, i64 %16
  %43 = load ptr, ptr %42, align 8, !tbaa !30
  %44 = getelementptr inbounds double, ptr %43, i64 %40
  %45 = getelementptr inbounds ptr, ptr %34, i64 %17
  %46 = load ptr, ptr %45, align 8, !tbaa !30
  %47 = getelementptr inbounds double, ptr %46, i64 %40
  %48 = icmp sgt i32 %30, 0
  br i1 %48, label %49, label %84

49:                                               ; preds = %19
  %50 = getelementptr inbounds %struct.box_type, ptr %22, i64 %8, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !18
  %52 = icmp sgt i32 %32, 0
  %53 = icmp sgt i32 %51, 0
  %54 = zext i32 %51 to i64
  br label %55

55:                                               ; preds = %81, %49
  %56 = phi i32 [ 0, %49 ], [ %82, %81 ]
  br i1 %52, label %57, label %81

57:                                               ; preds = %55
  %58 = mul nsw i32 %56, %26
  br label %59

59:                                               ; preds = %78, %57
  %60 = phi i32 [ 0, %57 ], [ %79, %78 ]
  br i1 %53, label %61, label %78

61:                                               ; preds = %59
  %62 = mul nsw i32 %60, %24
  %63 = add i32 %62, %58
  br label %64

64:                                               ; preds = %64, %61
  %65 = phi i64 [ 0, %61 ], [ %76, %64 ]
  %66 = trunc i64 %65 to i32
  %67 = add i32 %63, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, ptr %44, i64 %68
  %70 = load double, ptr %69, align 8, !tbaa !36
  %71 = fmul double %70, %3
  %72 = getelementptr inbounds double, ptr %47, i64 %68
  %73 = load double, ptr %72, align 8, !tbaa !36
  %74 = fmul double %71, %73
  %75 = getelementptr inbounds double, ptr %41, i64 %68
  store double %74, ptr %75, align 8, !tbaa !36
  %76 = add nuw nsw i64 %65, 1
  %77 = icmp eq i64 %76, %54
  br i1 %77, label %78, label %64, !llvm.loop !194

78:                                               ; preds = %64, %59
  %79 = add nuw nsw i32 %60, 1
  %80 = icmp eq i32 %79, %32
  br i1 %80, label %81, label %59, !llvm.loop !195

81:                                               ; preds = %78, %55
  %82 = add nuw nsw i32 %56, 1
  %83 = icmp eq i32 %82, %30
  br i1 %83, label %84, label %55, !llvm.loop !196

84:                                               ; preds = %81, %19
  %85 = add nuw nsw i64 %20, 1
  %86 = icmp eq i64 %85, %18
  br i1 %86, label %87, label %19, !llvm.loop !197

87:                                               ; preds = %84, %6
  %88 = tail call i64 (...) @CycleTime() #17
  %89 = sub i64 %88, %7
  %90 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 12, i64 %8
  %91 = load i64, ptr %90, align 8, !tbaa !34
  %92 = add i64 %89, %91
  store i64 %92, ptr %90, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @scale_grid(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, i32 noundef %4) #6 {
  %6 = tail call i64 (...) @CycleTime() #17
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 19
  %9 = load i32, ptr %8, align 8, !tbaa !66
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %79

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !78
  %14 = sext i32 %2 to i64
  %15 = sext i32 %4 to i64
  %16 = zext i32 %9 to i64
  br label %17

17:                                               ; preds = %76, %11
  %18 = phi i64 [ 0, %11 ], [ %77, %76 ]
  %19 = getelementptr inbounds %struct.subdomain_type, ptr %13, i64 %18, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.box_type, ptr %20, i64 %7, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !25
  %23 = getelementptr inbounds %struct.box_type, ptr %20, i64 %7, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !26
  %25 = getelementptr inbounds %struct.box_type, ptr %20, i64 %7, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !24
  %27 = getelementptr inbounds %struct.box_type, ptr %20, i64 %7, i32 2, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !20
  %29 = getelementptr inbounds %struct.box_type, ptr %20, i64 %7, i32 2, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !19
  %31 = getelementptr inbounds %struct.box_type, ptr %20, i64 %7, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !31
  %33 = getelementptr inbounds ptr, ptr %32, i64 %14
  %34 = load ptr, ptr %33, align 8, !tbaa !30
  %35 = add nsw i32 %22, 1
  %36 = add nsw i32 %35, %24
  %37 = mul nsw i32 %26, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, ptr %34, i64 %38
  %40 = getelementptr inbounds ptr, ptr %32, i64 %15
  %41 = load ptr, ptr %40, align 8, !tbaa !30
  %42 = getelementptr inbounds double, ptr %41, i64 %38
  %43 = icmp sgt i32 %28, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %17
  %45 = getelementptr inbounds %struct.box_type, ptr %20, i64 %7, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !18
  %47 = icmp sgt i32 %30, 0
  %48 = icmp sgt i32 %46, 0
  %49 = zext i32 %46 to i64
  br label %50

50:                                               ; preds = %73, %44
  %51 = phi i32 [ 0, %44 ], [ %74, %73 ]
  br i1 %47, label %52, label %73

52:                                               ; preds = %50
  %53 = mul nsw i32 %51, %24
  br label %54

54:                                               ; preds = %70, %52
  %55 = phi i32 [ 0, %52 ], [ %71, %70 ]
  br i1 %48, label %56, label %70

56:                                               ; preds = %54
  %57 = mul nsw i32 %55, %22
  %58 = add i32 %57, %53
  br label %59

59:                                               ; preds = %59, %56
  %60 = phi i64 [ 0, %56 ], [ %68, %59 ]
  %61 = trunc i64 %60 to i32
  %62 = add i32 %58, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, ptr %42, i64 %63
  %65 = load double, ptr %64, align 8, !tbaa !36
  %66 = fmul double %65, %3
  %67 = getelementptr inbounds double, ptr %39, i64 %63
  store double %66, ptr %67, align 8, !tbaa !36
  %68 = add nuw nsw i64 %60, 1
  %69 = icmp eq i64 %68, %49
  br i1 %69, label %70, label %59, !llvm.loop !198

70:                                               ; preds = %59, %54
  %71 = add nuw nsw i32 %55, 1
  %72 = icmp eq i32 %71, %30
  br i1 %72, label %73, label %54, !llvm.loop !199

73:                                               ; preds = %70, %50
  %74 = add nuw nsw i32 %51, 1
  %75 = icmp eq i32 %74, %28
  br i1 %75, label %76, label %50, !llvm.loop !200

76:                                               ; preds = %73, %17
  %77 = add nuw nsw i64 %18, 1
  %78 = icmp eq i64 %77, %16
  br i1 %78, label %79, label %17, !llvm.loop !201

79:                                               ; preds = %76, %5
  %80 = tail call i64 (...) @CycleTime() #17
  %81 = sub i64 %80, %6
  %82 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 12, i64 %7
  %83 = load i64, ptr %82, align 8, !tbaa !34
  %84 = add i64 %81, %83
  store i64 %84, ptr %82, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal double @dot(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #6 {
  %5 = tail call i64 (...) @CycleTime() #17
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 19
  %8 = load i32, ptr %7, align 8, !tbaa !66
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %87

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  %13 = sext i32 %2 to i64
  %14 = sext i32 %3 to i64
  %15 = zext i32 %8 to i64
  br label %16

16:                                               ; preds = %82, %10
  %17 = phi i64 [ 0, %10 ], [ %85, %82 ]
  %18 = phi double [ 0.000000e+00, %10 ], [ %84, %82 ]
  %19 = getelementptr inbounds %struct.subdomain_type, ptr %12, i64 %17, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.box_type, ptr %20, i64 %6, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !25
  %23 = getelementptr inbounds %struct.box_type, ptr %20, i64 %6, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !26
  %25 = getelementptr inbounds %struct.box_type, ptr %20, i64 %6, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !24
  %27 = getelementptr inbounds %struct.box_type, ptr %20, i64 %6, i32 2, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !20
  %29 = getelementptr inbounds %struct.box_type, ptr %20, i64 %6, i32 2, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !19
  %31 = getelementptr inbounds %struct.box_type, ptr %20, i64 %6, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !31
  %33 = getelementptr inbounds ptr, ptr %32, i64 %13
  %34 = load ptr, ptr %33, align 8, !tbaa !30
  %35 = add nsw i32 %22, 1
  %36 = add nsw i32 %35, %24
  %37 = mul nsw i32 %26, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, ptr %34, i64 %38
  %40 = getelementptr inbounds ptr, ptr %32, i64 %14
  %41 = load ptr, ptr %40, align 8, !tbaa !30
  %42 = getelementptr inbounds double, ptr %41, i64 %38
  %43 = icmp sgt i32 %28, 0
  br i1 %43, label %44, label %82

44:                                               ; preds = %16
  %45 = getelementptr inbounds %struct.box_type, ptr %20, i64 %6, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !18
  %47 = icmp sgt i32 %30, 0
  %48 = icmp sgt i32 %46, 0
  %49 = zext i32 %46 to i64
  br label %50

50:                                               ; preds = %78, %44
  %51 = phi double [ 0.000000e+00, %44 ], [ %79, %78 ]
  %52 = phi i32 [ 0, %44 ], [ %80, %78 ]
  br i1 %47, label %53, label %78

53:                                               ; preds = %50
  %54 = mul nsw i32 %52, %24
  br label %55

55:                                               ; preds = %74, %53
  %56 = phi double [ %51, %53 ], [ %75, %74 ]
  %57 = phi i32 [ 0, %53 ], [ %76, %74 ]
  br i1 %48, label %58, label %74

58:                                               ; preds = %55
  %59 = mul nsw i32 %57, %22
  %60 = add i32 %59, %54
  br label %61

61:                                               ; preds = %61, %58
  %62 = phi i64 [ 0, %58 ], [ %72, %61 ]
  %63 = phi double [ %56, %58 ], [ %71, %61 ]
  %64 = trunc i64 %62 to i32
  %65 = add i32 %60, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, ptr %39, i64 %66
  %68 = load double, ptr %67, align 8, !tbaa !36
  %69 = getelementptr inbounds double, ptr %42, i64 %66
  %70 = load double, ptr %69, align 8, !tbaa !36
  %71 = tail call double @llvm.fmuladd.f64(double %68, double %70, double %63)
  %72 = add nuw nsw i64 %62, 1
  %73 = icmp eq i64 %72, %49
  br i1 %73, label %74, label %61, !llvm.loop !202

74:                                               ; preds = %61, %55
  %75 = phi double [ %56, %55 ], [ %71, %61 ]
  %76 = add nuw nsw i32 %57, 1
  %77 = icmp eq i32 %76, %30
  br i1 %77, label %78, label %55, !llvm.loop !203

78:                                               ; preds = %74, %50
  %79 = phi double [ %51, %50 ], [ %75, %74 ]
  %80 = add nuw nsw i32 %52, 1
  %81 = icmp eq i32 %80, %28
  br i1 %81, label %82, label %50, !llvm.loop !204

82:                                               ; preds = %78, %16
  %83 = phi double [ 0.000000e+00, %16 ], [ %79, %78 ]
  %84 = fadd double %18, %83
  %85 = add nuw nsw i64 %17, 1
  %86 = icmp eq i64 %85, %15
  br i1 %86, label %87, label %16, !llvm.loop !205

87:                                               ; preds = %82, %4
  %88 = phi double [ 0.000000e+00, %4 ], [ %84, %82 ]
  %89 = tail call i64 (...) @CycleTime() #17
  %90 = sub i64 %89, %5
  %91 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 12, i64 %6
  %92 = load i64, ptr %91, align 8, !tbaa !34
  %93 = add i64 %90, %92
  store i64 %93, ptr %91, align 8, !tbaa !34
  ret double %88
}

; Function Attrs: nounwind optsize uwtable
define internal double @norm(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = tail call i64 (...) @CycleTime() #17
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 19
  %7 = load i32, ptr %6, align 8, !tbaa !66
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %83

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = sext i32 %2 to i64
  %13 = zext i32 %7 to i64
  br label %14

14:                                               ; preds = %77, %9
  %15 = phi i64 [ 0, %9 ], [ %81, %77 ]
  %16 = phi double [ 0.000000e+00, %9 ], [ %80, %77 ]
  %17 = getelementptr inbounds %struct.subdomain_type, ptr %11, i64 %15, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.box_type, ptr %18, i64 %5, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !25
  %21 = getelementptr inbounds %struct.box_type, ptr %18, i64 %5, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !26
  %23 = getelementptr inbounds %struct.box_type, ptr %18, i64 %5, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !24
  %25 = getelementptr inbounds %struct.box_type, ptr %18, i64 %5, i32 2, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !20
  %27 = getelementptr inbounds %struct.box_type, ptr %18, i64 %5, i32 2, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !19
  %29 = getelementptr inbounds %struct.box_type, ptr %18, i64 %5, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !31
  %31 = getelementptr inbounds ptr, ptr %30, i64 %12
  %32 = load ptr, ptr %31, align 8, !tbaa !30
  %33 = add nsw i32 %20, 1
  %34 = add nsw i32 %33, %22
  %35 = mul nsw i32 %24, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, ptr %32, i64 %36
  %38 = icmp sgt i32 %26, 0
  br i1 %38, label %39, label %77

39:                                               ; preds = %14
  %40 = getelementptr inbounds %struct.box_type, ptr %18, i64 %5, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !18
  %42 = icmp sgt i32 %28, 0
  %43 = icmp sgt i32 %41, 0
  %44 = zext i32 %41 to i64
  br label %45

45:                                               ; preds = %73, %39
  %46 = phi double [ 0.000000e+00, %39 ], [ %74, %73 ]
  %47 = phi i32 [ 0, %39 ], [ %75, %73 ]
  br i1 %42, label %48, label %73

48:                                               ; preds = %45
  %49 = mul nsw i32 %47, %22
  br label %50

50:                                               ; preds = %69, %48
  %51 = phi double [ %46, %48 ], [ %70, %69 ]
  %52 = phi i32 [ 0, %48 ], [ %71, %69 ]
  br i1 %43, label %53, label %69

53:                                               ; preds = %50
  %54 = mul nsw i32 %52, %20
  %55 = add i32 %54, %49
  br label %56

56:                                               ; preds = %56, %53
  %57 = phi i64 [ 0, %53 ], [ %67, %56 ]
  %58 = phi double [ %51, %53 ], [ %66, %56 ]
  %59 = trunc i64 %57 to i32
  %60 = add i32 %55, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, ptr %37, i64 %61
  %63 = load double, ptr %62, align 8, !tbaa !36
  %64 = tail call double @llvm.fabs.f64(double %63)
  %65 = fcmp ogt double %64, %58
  %66 = select i1 %65, double %64, double %58
  %67 = add nuw nsw i64 %57, 1
  %68 = icmp eq i64 %67, %44
  br i1 %68, label %69, label %56, !llvm.loop !206

69:                                               ; preds = %56, %50
  %70 = phi double [ %51, %50 ], [ %66, %56 ]
  %71 = add nuw nsw i32 %52, 1
  %72 = icmp eq i32 %71, %28
  br i1 %72, label %73, label %50, !llvm.loop !207

73:                                               ; preds = %69, %45
  %74 = phi double [ %46, %45 ], [ %70, %69 ]
  %75 = add nuw nsw i32 %47, 1
  %76 = icmp eq i32 %75, %26
  br i1 %76, label %77, label %45, !llvm.loop !208

77:                                               ; preds = %73, %14
  %78 = phi double [ 0.000000e+00, %14 ], [ %74, %73 ]
  %79 = fcmp ogt double %78, %16
  %80 = select i1 %79, double %78, double %16
  %81 = add nuw nsw i64 %15, 1
  %82 = icmp eq i64 %81, %13
  br i1 %82, label %83, label %14, !llvm.loop !209

83:                                               ; preds = %77, %3
  %84 = phi double [ 0.000000e+00, %3 ], [ %80, %77 ]
  %85 = tail call i64 (...) @CycleTime() #17
  %86 = sub i64 %85, %4
  %87 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 12, i64 %5
  %88 = load i64, ptr %87, align 8, !tbaa !34
  %89 = add i64 %86, %88
  store i64 %89, ptr %87, align 8, !tbaa !34
  ret double %84
}

; Function Attrs: nounwind optsize uwtable
define internal double @mean(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = tail call i64 (...) @CycleTime() #17
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 19
  %7 = load i32, ptr %6, align 8, !tbaa !66
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %80

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = sext i32 %2 to i64
  %13 = zext i32 %7 to i64
  br label %14

14:                                               ; preds = %75, %9
  %15 = phi i64 [ 0, %9 ], [ %78, %75 ]
  %16 = phi double [ 0.000000e+00, %9 ], [ %77, %75 ]
  %17 = getelementptr inbounds %struct.subdomain_type, ptr %11, i64 %15, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.box_type, ptr %18, i64 %5, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !25
  %21 = getelementptr inbounds %struct.box_type, ptr %18, i64 %5, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !26
  %23 = getelementptr inbounds %struct.box_type, ptr %18, i64 %5, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !24
  %25 = getelementptr inbounds %struct.box_type, ptr %18, i64 %5, i32 2, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !20
  %27 = getelementptr inbounds %struct.box_type, ptr %18, i64 %5, i32 2, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !19
  %29 = getelementptr inbounds %struct.box_type, ptr %18, i64 %5, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !31
  %31 = getelementptr inbounds ptr, ptr %30, i64 %12
  %32 = load ptr, ptr %31, align 8, !tbaa !30
  %33 = add nsw i32 %20, 1
  %34 = add nsw i32 %33, %22
  %35 = mul nsw i32 %24, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, ptr %32, i64 %36
  %38 = icmp sgt i32 %26, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %14
  %40 = getelementptr inbounds %struct.box_type, ptr %18, i64 %5, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !18
  %42 = icmp sgt i32 %28, 0
  %43 = icmp sgt i32 %41, 0
  %44 = zext i32 %41 to i64
  br label %45

45:                                               ; preds = %71, %39
  %46 = phi double [ 0.000000e+00, %39 ], [ %72, %71 ]
  %47 = phi i32 [ 0, %39 ], [ %73, %71 ]
  br i1 %42, label %48, label %71

48:                                               ; preds = %45
  %49 = mul nsw i32 %47, %22
  br label %50

50:                                               ; preds = %67, %48
  %51 = phi double [ %46, %48 ], [ %68, %67 ]
  %52 = phi i32 [ 0, %48 ], [ %69, %67 ]
  br i1 %43, label %53, label %67

53:                                               ; preds = %50
  %54 = mul nsw i32 %52, %20
  %55 = add i32 %54, %49
  br label %56

56:                                               ; preds = %56, %53
  %57 = phi i64 [ 0, %53 ], [ %65, %56 ]
  %58 = phi double [ %51, %53 ], [ %64, %56 ]
  %59 = trunc i64 %57 to i32
  %60 = add i32 %55, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, ptr %37, i64 %61
  %63 = load double, ptr %62, align 8, !tbaa !36
  %64 = fadd double %58, %63
  %65 = add nuw nsw i64 %57, 1
  %66 = icmp eq i64 %65, %44
  br i1 %66, label %67, label %56, !llvm.loop !210

67:                                               ; preds = %56, %50
  %68 = phi double [ %51, %50 ], [ %64, %56 ]
  %69 = add nuw nsw i32 %52, 1
  %70 = icmp eq i32 %69, %28
  br i1 %70, label %71, label %50, !llvm.loop !211

71:                                               ; preds = %67, %45
  %72 = phi double [ %46, %45 ], [ %68, %67 ]
  %73 = add nuw nsw i32 %47, 1
  %74 = icmp eq i32 %73, %26
  br i1 %74, label %75, label %45, !llvm.loop !212

75:                                               ; preds = %71, %14
  %76 = phi double [ 0.000000e+00, %14 ], [ %72, %71 ]
  %77 = fadd double %16, %76
  %78 = add nuw nsw i64 %15, 1
  %79 = icmp eq i64 %78, %13
  br i1 %79, label %80, label %14, !llvm.loop !213

80:                                               ; preds = %75, %3
  %81 = phi double [ 0.000000e+00, %3 ], [ %77, %75 ]
  %82 = tail call i64 (...) @CycleTime() #17
  %83 = sub i64 %82, %4
  %84 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 12, i64 %5
  %85 = load i64, ptr %84, align 8, !tbaa !34
  %86 = add i64 %83, %85
  store i64 %86, ptr %84, align 8, !tbaa !34
  %87 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 13
  %88 = load <2 x i32>, ptr %87, align 8, !tbaa !70
  %89 = sitofp <2 x i32> %88 to <2 x double>
  %90 = shufflevector <2 x double> %89, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %91 = fmul <2 x double> %90, %89
  %92 = extractelement <2 x double> %91, i64 0
  %93 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 13, i32 2
  %94 = load i32, ptr %93, align 8, !tbaa !69
  %95 = sitofp i32 %94 to double
  %96 = fmul double %92, %95
  %97 = fdiv double %81, %96
  ret double %97
}

; Function Attrs: nounwind optsize uwtable
define internal void @shift_grid(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4) #6 {
  %6 = tail call i64 (...) @CycleTime() #17
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 19
  %9 = load i32, ptr %8, align 8, !tbaa !66
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %79

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !78
  %14 = sext i32 %2 to i64
  %15 = sext i32 %3 to i64
  %16 = zext i32 %9 to i64
  br label %17

17:                                               ; preds = %76, %11
  %18 = phi i64 [ 0, %11 ], [ %77, %76 ]
  %19 = getelementptr inbounds %struct.subdomain_type, ptr %13, i64 %18, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.box_type, ptr %20, i64 %7, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !25
  %23 = getelementptr inbounds %struct.box_type, ptr %20, i64 %7, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !26
  %25 = getelementptr inbounds %struct.box_type, ptr %20, i64 %7, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !24
  %27 = getelementptr inbounds %struct.box_type, ptr %20, i64 %7, i32 2, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !20
  %29 = getelementptr inbounds %struct.box_type, ptr %20, i64 %7, i32 2, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !19
  %31 = getelementptr inbounds %struct.box_type, ptr %20, i64 %7, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !31
  %33 = getelementptr inbounds ptr, ptr %32, i64 %14
  %34 = load ptr, ptr %33, align 8, !tbaa !30
  %35 = add nsw i32 %22, 1
  %36 = add nsw i32 %35, %24
  %37 = mul nsw i32 %26, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, ptr %34, i64 %38
  %40 = getelementptr inbounds ptr, ptr %32, i64 %15
  %41 = load ptr, ptr %40, align 8, !tbaa !30
  %42 = getelementptr inbounds double, ptr %41, i64 %38
  %43 = icmp sgt i32 %28, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %17
  %45 = getelementptr inbounds %struct.box_type, ptr %20, i64 %7, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !18
  %47 = icmp sgt i32 %30, 0
  %48 = icmp sgt i32 %46, 0
  %49 = zext i32 %46 to i64
  br label %50

50:                                               ; preds = %73, %44
  %51 = phi i32 [ 0, %44 ], [ %74, %73 ]
  br i1 %47, label %52, label %73

52:                                               ; preds = %50
  %53 = mul nsw i32 %51, %24
  br label %54

54:                                               ; preds = %70, %52
  %55 = phi i32 [ 0, %52 ], [ %71, %70 ]
  br i1 %48, label %56, label %70

56:                                               ; preds = %54
  %57 = mul nsw i32 %55, %22
  %58 = add i32 %57, %53
  br label %59

59:                                               ; preds = %59, %56
  %60 = phi i64 [ 0, %56 ], [ %68, %59 ]
  %61 = trunc i64 %60 to i32
  %62 = add i32 %58, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, ptr %42, i64 %63
  %65 = load double, ptr %64, align 8, !tbaa !36
  %66 = fadd double %65, %4
  %67 = getelementptr inbounds double, ptr %39, i64 %63
  store double %66, ptr %67, align 8, !tbaa !36
  %68 = add nuw nsw i64 %60, 1
  %69 = icmp eq i64 %68, %49
  br i1 %69, label %70, label %59, !llvm.loop !214

70:                                               ; preds = %59, %54
  %71 = add nuw nsw i32 %55, 1
  %72 = icmp eq i32 %71, %30
  br i1 %72, label %73, label %54, !llvm.loop !215

73:                                               ; preds = %70, %50
  %74 = add nuw nsw i32 %51, 1
  %75 = icmp eq i32 %74, %28
  br i1 %75, label %76, label %50, !llvm.loop !216

76:                                               ; preds = %73, %17
  %77 = add nuw nsw i64 %18, 1
  %78 = icmp eq i64 %77, %16
  br i1 %78, label %79, label %17, !llvm.loop !217

79:                                               ; preds = %76, %5
  %80 = tail call i64 (...) @CycleTime() #17
  %81 = sub i64 %80, %6
  %82 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 12, i64 %7
  %83 = load i64, ptr %82, align 8, !tbaa !34
  %84 = add i64 %81, %83
  store i64 %84, ptr %82, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @project_cell_to_face(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #6 {
  %6 = tail call i64 (...) @CycleTime() #17
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 19
  %9 = load i32, ptr %8, align 8, !tbaa !66
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %91

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !78
  %14 = sext i32 %2 to i64
  %15 = sext i32 %3 to i64
  %16 = zext i32 %9 to i64
  br label %17

17:                                               ; preds = %88, %11
  %18 = phi i64 [ 0, %11 ], [ %89, %88 ]
  %19 = phi i32 [ undef, %11 ], [ %50, %88 ]
  %20 = getelementptr inbounds %struct.subdomain_type, ptr %13, i64 %18, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct.box_type, ptr %21, i64 %7, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !25
  %24 = getelementptr inbounds %struct.box_type, ptr %21, i64 %7, i32 6
  %25 = load i32, ptr %24, align 4, !tbaa !26
  %26 = getelementptr inbounds %struct.box_type, ptr %21, i64 %7, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !24
  %28 = getelementptr inbounds %struct.box_type, ptr %21, i64 %7, i32 2
  %29 = getelementptr inbounds %struct.box_type, ptr %21, i64 %7, i32 2, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !20
  %31 = getelementptr inbounds %struct.box_type, ptr %21, i64 %7, i32 2, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !19
  %33 = load i32, ptr %28, align 4, !tbaa !18
  %34 = getelementptr inbounds %struct.box_type, ptr %21, i64 %7, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !31
  %36 = getelementptr inbounds ptr, ptr %35, i64 %14
  %37 = load ptr, ptr %36, align 8, !tbaa !30
  %38 = add nsw i32 %23, 1
  %39 = add nsw i32 %38, %25
  %40 = mul nsw i32 %27, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, ptr %37, i64 %41
  %43 = getelementptr inbounds ptr, ptr %35, i64 %15
  %44 = load ptr, ptr %43, align 8, !tbaa !30
  %45 = getelementptr inbounds double, ptr %44, i64 %41
  switch i32 %4, label %49 [
    i32 0, label %46
    i32 1, label %47
    i32 2, label %48
  ]

46:                                               ; preds = %17
  br label %49

47:                                               ; preds = %17
  br label %49

48:                                               ; preds = %17
  br label %49

49:                                               ; preds = %48, %47, %46, %17
  %50 = phi i32 [ %19, %17 ], [ %25, %48 ], [ %23, %47 ], [ 1, %46 ]
  %51 = icmp slt i32 %30, 0
  br i1 %51, label %88, label %52

52:                                               ; preds = %49
  %53 = icmp slt i32 %32, 0
  %54 = icmp slt i32 %33, 0
  %55 = add i32 %33, 1
  %56 = zext i32 %55 to i64
  br label %57

57:                                               ; preds = %85, %52
  %58 = phi i32 [ 0, %52 ], [ %86, %85 ]
  br i1 %53, label %85, label %59

59:                                               ; preds = %57
  %60 = mul nsw i32 %58, %25
  br label %61

61:                                               ; preds = %82, %59
  %62 = phi i32 [ 0, %59 ], [ %83, %82 ]
  br i1 %54, label %82, label %63

63:                                               ; preds = %61
  %64 = mul nsw i32 %62, %23
  %65 = add i32 %64, %60
  br label %66

66:                                               ; preds = %66, %63
  %67 = phi i64 [ 0, %63 ], [ %80, %66 ]
  %68 = trunc i64 %67 to i32
  %69 = add i32 %65, %68
  %70 = sub nsw i32 %69, %50
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, ptr %42, i64 %71
  %73 = load double, ptr %72, align 8, !tbaa !36
  %74 = sext i32 %69 to i64
  %75 = getelementptr inbounds double, ptr %42, i64 %74
  %76 = load double, ptr %75, align 8, !tbaa !36
  %77 = fadd double %73, %76
  %78 = fmul double %77, 5.000000e-01
  %79 = getelementptr inbounds double, ptr %45, i64 %74
  store double %78, ptr %79, align 8, !tbaa !36
  %80 = add nuw nsw i64 %67, 1
  %81 = icmp eq i64 %80, %56
  br i1 %81, label %82, label %66, !llvm.loop !218

82:                                               ; preds = %66, %61
  %83 = add nuw i32 %62, 1
  %84 = icmp eq i32 %62, %32
  br i1 %84, label %85, label %61, !llvm.loop !219

85:                                               ; preds = %82, %57
  %86 = add nuw i32 %58, 1
  %87 = icmp eq i32 %58, %30
  br i1 %87, label %88, label %57, !llvm.loop !220

88:                                               ; preds = %85, %49
  %89 = add nuw nsw i64 %18, 1
  %90 = icmp eq i64 %89, %16
  br i1 %90, label %91, label %17, !llvm.loop !221

91:                                               ; preds = %88, %5
  %92 = tail call i64 (...) @CycleTime() #17
  %93 = sub i64 %92, %6
  %94 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 12, i64 %7
  %95 = load i64, ptr %94, align 8, !tbaa !34
  %96 = add i64 %93, %95
  store i64 %96, ptr %94, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @initialize_problem(ptr nocapture noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4) #6 {
  %6 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 19
  %7 = load i32, ptr %6, align 8, !tbaa !66
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %309

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 25
  %11 = sext i32 %1 to i64
  %12 = load ptr, ptr %10, align 8, !tbaa !78
  %13 = insertelement <2 x double> poison, double %2, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  br label %15

15:                                               ; preds = %303, %9
  %16 = phi ptr [ %12, %9 ], [ %304, %303 ]
  %17 = phi i64 [ 0, %9 ], [ %305, %303 ]
  %18 = getelementptr inbounds %struct.subdomain_type, ptr %16, i64 %17, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.box_type, ptr %19, i64 %11, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !31
  %22 = getelementptr inbounds ptr, ptr %21, i64 11
  %23 = load ptr, ptr %22, align 8, !tbaa !30
  %24 = getelementptr inbounds %struct.box_type, ptr %19, i64 %11, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !27
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %23, i8 0, i64 %27, i1 false)
  %28 = load ptr, ptr %10, align 8, !tbaa !78
  %29 = getelementptr inbounds %struct.subdomain_type, ptr %28, i64 %17, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = getelementptr inbounds %struct.box_type, ptr %30, i64 %11, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !31
  %33 = getelementptr inbounds ptr, ptr %32, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !30
  %35 = getelementptr inbounds %struct.box_type, ptr %30, i64 %11, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !27
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %34, i8 0, i64 %38, i1 false)
  %39 = load ptr, ptr %10, align 8, !tbaa !78
  %40 = getelementptr inbounds %struct.subdomain_type, ptr %39, i64 %17, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  %42 = getelementptr inbounds %struct.box_type, ptr %41, i64 %11, i32 2, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !20
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %303

45:                                               ; preds = %296, %15
  %46 = phi ptr [ %297, %296 ], [ %41, %15 ]
  %47 = phi ptr [ %298, %296 ], [ %39, %15 ]
  %48 = phi i32 [ %299, %296 ], [ 0, %15 ]
  %49 = getelementptr inbounds %struct.box_type, ptr %46, i64 %11, i32 2, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !19
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %296

52:                                               ; preds = %286, %45
  %53 = phi ptr [ %287, %286 ], [ %46, %45 ]
  %54 = phi ptr [ %288, %286 ], [ %47, %45 ]
  %55 = phi i32 [ %289, %286 ], [ 0, %45 ]
  %56 = getelementptr inbounds %struct.box_type, ptr %53, i64 %11, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !18
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %286

59:                                               ; preds = %59, %52
  %60 = phi ptr [ %266, %59 ], [ %53, %52 ]
  %61 = phi i32 [ %282, %59 ], [ 0, %52 ]
  %62 = getelementptr inbounds %struct.box_type, ptr %60, i64 %11, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !15
  %64 = getelementptr inbounds %struct.box_type, ptr %60, i64 %11, i32 1, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !16
  %66 = add nsw i32 %65, %55
  %67 = sitofp i32 %66 to double
  %68 = fadd double %67, 5.000000e-01
  %69 = fmul double %68, %2
  %70 = getelementptr inbounds %struct.box_type, ptr %60, i64 %11, i32 1, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !17
  %72 = getelementptr inbounds %struct.box_type, ptr %60, i64 %11, i32 4
  %73 = load i32, ptr %72, align 4, !tbaa !24
  %74 = add nsw i32 %73, %61
  %75 = getelementptr inbounds %struct.box_type, ptr %60, i64 %11, i32 5
  %76 = load i32, ptr %75, align 8, !tbaa !25
  %77 = add nsw i32 %73, %55
  %78 = mul nsw i32 %76, %77
  %79 = add nsw i32 %74, %78
  %80 = getelementptr inbounds %struct.box_type, ptr %60, i64 %11, i32 6
  %81 = load i32, ptr %80, align 4, !tbaa !26
  %82 = add nsw i32 %73, %48
  %83 = mul nsw i32 %81, %82
  %84 = add nsw i32 %79, %83
  %85 = fadd double %69, -5.000000e-01
  %86 = fmul double %85, %85
  %87 = insertelement <2 x i32> poison, i32 %63, i64 0
  %88 = insertelement <2 x i32> %87, i32 %71, i64 1
  %89 = insertelement <2 x i32> poison, i32 %61, i64 0
  %90 = insertelement <2 x i32> %89, i32 %48, i64 1
  %91 = add nsw <2 x i32> %88, %90
  %92 = sitofp <2 x i32> %91 to <2 x double>
  %93 = fadd <2 x double> %92, <double 5.000000e-01, double 5.000000e-01>
  %94 = fmul <2 x double> %93, %14
  %95 = fadd <2 x double> %94, <double -5.000000e-01, double -5.000000e-01>
  %96 = fmul <2 x double> %95, %95
  %97 = extractelement <2 x double> %96, i64 0
  %98 = fadd double %97, %86
  %99 = extractelement <2 x double> %96, i64 1
  %100 = fadd double %98, %99
  %101 = extractelement <2 x double> %95, i64 1
  %102 = fmul double %101, 2.000000e+00
  %103 = tail call double @pow(double noundef %100, double noundef 5.000000e-01) #17
  %104 = tail call double @pow(double noundef %100, double noundef -5.000000e-01) #17
  %105 = tail call double @pow(double noundef %100, double noundef -5.000000e-01) #17
  %106 = fmul double %102, 5.000000e-01
  %107 = tail call double @pow(double noundef %100, double noundef -5.000000e-01) #17
  %108 = fmul double %106, %107
  %109 = tail call double @pow(double noundef %100, double noundef -5.000000e-01) #17
  %110 = tail call double @pow(double noundef %100, double noundef -1.500000e+00) #17
  %111 = tail call double @pow(double noundef %100, double noundef -5.000000e-01) #17
  %112 = tail call double @pow(double noundef %100, double noundef -1.500000e+00) #17
  %113 = tail call double @pow(double noundef %100, double noundef -5.000000e-01) #17
  %114 = tail call double @pow(double noundef %100, double noundef -1.500000e+00) #17
  %115 = fadd double %103, -2.500000e-01
  %116 = fmul double %115, 1.000000e+01
  %117 = tail call double @tanh(double noundef %116) #17
  %118 = tail call double @llvm.fmuladd.f64(double %117, double 4.500000e+00, double 5.500000e+00)
  %119 = tail call double @tanh(double noundef %116) #17
  %120 = fmul double %119, %119
  %121 = fsub double 1.000000e+00, %120
  %122 = tail call double @tanh(double noundef %116) #17
  %123 = fmul double %122, %122
  %124 = fsub double 1.000000e+00, %123
  %125 = fmul double %108, 4.500000e+01
  %126 = tail call double @tanh(double noundef %116) #17
  %127 = fmul double %126, %126
  %128 = fsub double 1.000000e+00, %127
  %129 = fmul double %125, %128
  %130 = fmul double %100, -2.000000e+01
  %131 = tail call double @exp(double noundef %130) #17
  %132 = extractelement <2 x double> %94, i64 0
  %133 = fmul double %132, 0x401921FB54442D18
  %134 = tail call double @sin(double noundef %133) #17
  %135 = fmul double %131, %134
  %136 = fmul double %69, 0x401921FB54442D18
  %137 = tail call double @sin(double noundef %136) #17
  %138 = fmul double %135, %137
  %139 = extractelement <2 x double> %94, i64 1
  %140 = fmul double %139, 0x401921FB54442D18
  %141 = tail call double @sin(double noundef %140) #17
  %142 = fmul double %138, %141
  %143 = tail call double @exp(double noundef %130) #17
  %144 = tail call double @cos(double noundef %133) #17
  %145 = tail call double @sin(double noundef %136) #17
  %146 = tail call double @sin(double noundef %140) #17
  %147 = tail call double @exp(double noundef %130) #17
  %148 = tail call double @sin(double noundef %133) #17
  %149 = tail call double @cos(double noundef %136) #17
  %150 = tail call double @sin(double noundef %140) #17
  %151 = fmul double %102, -2.000000e+01
  %152 = tail call double @exp(double noundef %130) #17
  %153 = fmul double %152, 0x401921FB54442D18
  %154 = tail call double @sin(double noundef %133) #17
  %155 = fmul double %153, %154
  %156 = tail call double @sin(double noundef %136) #17
  %157 = fmul double %155, %156
  %158 = tail call double @cos(double noundef %140) #17
  %159 = fmul double %157, %158
  %160 = tail call double @llvm.fmuladd.f64(double %151, double %142, double %159)
  %161 = tail call double @exp(double noundef %130) #17
  %162 = tail call double @cos(double noundef %133) #17
  %163 = tail call double @sin(double noundef %136) #17
  %164 = tail call double @sin(double noundef %140) #17
  %165 = tail call double @exp(double noundef %130) #17
  %166 = tail call double @sin(double noundef %133) #17
  %167 = tail call double @sin(double noundef %136) #17
  %168 = tail call double @sin(double noundef %140) #17
  %169 = tail call double @exp(double noundef %130) #17
  %170 = tail call double @sin(double noundef %133) #17
  %171 = tail call double @cos(double noundef %136) #17
  %172 = tail call double @sin(double noundef %140) #17
  %173 = tail call double @exp(double noundef %130) #17
  %174 = tail call double @sin(double noundef %133) #17
  %175 = tail call double @sin(double noundef %136) #17
  %176 = tail call double @sin(double noundef %140) #17
  %177 = insertelement <2 x double> %95, double %85, i64 1
  %178 = fmul <2 x double> %177, <double 2.000000e+00, double 2.000000e+00>
  %179 = extractelement <2 x double> %178, i64 0
  %180 = fmul double %179, 5.000000e-01
  %181 = fmul double %180, %104
  %182 = extractelement <2 x double> %178, i64 1
  %183 = fmul double %182, 5.000000e-01
  %184 = fmul double %183, %105
  %185 = fmul double %181, 4.500000e+01
  %186 = fmul double %185, %121
  %187 = fmul double %184, 4.500000e+01
  %188 = fmul double %187, %124
  %189 = fmul <2 x double> %178, <double -2.000000e+01, double -2.000000e+01>
  %190 = insertelement <2 x double> poison, double %143, i64 0
  %191 = insertelement <2 x double> %190, double %147, i64 1
  %192 = fmul <2 x double> %191, <double 0x401921FB54442D18, double 0x401921FB54442D18>
  %193 = insertelement <2 x double> poison, double %144, i64 0
  %194 = insertelement <2 x double> %193, double %148, i64 1
  %195 = fmul <2 x double> %192, %194
  %196 = insertelement <2 x double> poison, double %145, i64 0
  %197 = insertelement <2 x double> %196, double %149, i64 1
  %198 = fmul <2 x double> %195, %197
  %199 = insertelement <2 x double> poison, double %146, i64 0
  %200 = insertelement <2 x double> %199, double %150, i64 1
  %201 = fmul <2 x double> %198, %200
  %202 = insertelement <2 x double> poison, double %142, i64 0
  %203 = shufflevector <2 x double> %202, <2 x double> poison, <2 x i32> zeroinitializer
  %204 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %189, <2 x double> %203, <2 x double> %201)
  %205 = fmul <2 x double> %189, %204
  %206 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %203, <2 x double> <double -4.000000e+01, double -4.000000e+01>, <2 x double> %205)
  %207 = fmul <2 x double> %189, <double 0x401921FB54442D18, double 0x401921FB54442D18>
  %208 = insertelement <2 x double> poison, double %161, i64 0
  %209 = insertelement <2 x double> %208, double %169, i64 1
  %210 = fmul <2 x double> %207, %209
  %211 = insertelement <2 x double> poison, double %162, i64 0
  %212 = insertelement <2 x double> %211, double %170, i64 1
  %213 = fmul <2 x double> %210, %212
  %214 = insertelement <2 x double> poison, double %163, i64 0
  %215 = insertelement <2 x double> %214, double %171, i64 1
  %216 = fmul <2 x double> %213, %215
  %217 = insertelement <2 x double> poison, double %164, i64 0
  %218 = insertelement <2 x double> %217, double %172, i64 1
  %219 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %216, <2 x double> %218, <2 x double> %206)
  %220 = insertelement <2 x double> poison, double %165, i64 0
  %221 = insertelement <2 x double> %220, double %173, i64 1
  %222 = fmul <2 x double> %221, <double 0xC043BD3CC9BE45DE, double 0xC043BD3CC9BE45DE>
  %223 = insertelement <2 x double> poison, double %166, i64 0
  %224 = insertelement <2 x double> %223, double %174, i64 1
  %225 = fmul <2 x double> %222, %224
  %226 = insertelement <2 x double> poison, double %167, i64 0
  %227 = insertelement <2 x double> %226, double %175, i64 1
  %228 = fmul <2 x double> %225, %227
  %229 = insertelement <2 x double> poison, double %168, i64 0
  %230 = insertelement <2 x double> %229, double %176, i64 1
  %231 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %228, <2 x double> %230, <2 x double> %219)
  %232 = fmul double %151, %160
  %233 = tail call double @llvm.fmuladd.f64(double %142, double -4.000000e+01, double %232)
  %234 = fmul double %151, 0x401921FB54442D18
  %235 = tail call double @exp(double noundef %130) #17
  %236 = fmul double %234, %235
  %237 = tail call double @sin(double noundef %133) #17
  %238 = fmul double %236, %237
  %239 = tail call double @sin(double noundef %136) #17
  %240 = fmul double %238, %239
  %241 = tail call double @cos(double noundef %140) #17
  %242 = tail call double @llvm.fmuladd.f64(double %240, double %241, double %233)
  %243 = tail call double @exp(double noundef %130) #17
  %244 = tail call double @sin(double noundef %133) #17
  %245 = tail call double @sin(double noundef %136) #17
  %246 = tail call double @sin(double noundef %140) #17
  %247 = fmul double %243, 0xC043BD3CC9BE45DE
  %248 = fmul double %247, %244
  %249 = fmul double %248, %245
  %250 = tail call double @llvm.fmuladd.f64(double %249, double %246, double %242)
  %251 = extractelement <2 x double> %204, i64 1
  %252 = fmul double %188, %251
  %253 = extractelement <2 x double> %204, i64 0
  %254 = tail call double @llvm.fmuladd.f64(double %186, double %253, double %252)
  %255 = tail call double @llvm.fmuladd.f64(double %129, double %160, double %254)
  %256 = shufflevector <2 x double> %231, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %257 = fadd <2 x double> %231, %256
  %258 = extractelement <2 x double> %257, i64 0
  %259 = fadd double %258, %250
  %260 = tail call double @llvm.fmuladd.f64(double %118, double %259, double %255)
  %261 = fneg double %260
  %262 = fmul double %261, %4
  %263 = tail call double @llvm.fmuladd.f64(double %3, double %142, double %262)
  %264 = load ptr, ptr %10, align 8, !tbaa !78
  %265 = getelementptr inbounds %struct.subdomain_type, ptr %264, i64 %17, i32 5
  %266 = load ptr, ptr %265, align 8, !tbaa !48
  %267 = getelementptr inbounds %struct.box_type, ptr %266, i64 %11, i32 10
  %268 = load ptr, ptr %267, align 8, !tbaa !31
  %269 = getelementptr inbounds ptr, ptr %268, i64 2
  %270 = load ptr, ptr %269, align 8, !tbaa !30
  %271 = sext i32 %84 to i64
  %272 = getelementptr inbounds double, ptr %270, i64 %271
  store double 1.000000e+00, ptr %272, align 8, !tbaa !36
  %273 = getelementptr inbounds ptr, ptr %268, i64 3
  %274 = load ptr, ptr %273, align 8, !tbaa !30
  %275 = getelementptr inbounds double, ptr %274, i64 %271
  store double %118, ptr %275, align 8, !tbaa !36
  %276 = getelementptr inbounds ptr, ptr %268, i64 11
  %277 = load ptr, ptr %276, align 8, !tbaa !30
  %278 = getelementptr inbounds double, ptr %277, i64 %271
  store double %142, ptr %278, align 8, !tbaa !36
  %279 = getelementptr inbounds ptr, ptr %268, i64 1
  %280 = load ptr, ptr %279, align 8, !tbaa !30
  %281 = getelementptr inbounds double, ptr %280, i64 %271
  store double %263, ptr %281, align 8, !tbaa !36
  %282 = add nuw nsw i32 %61, 1
  %283 = getelementptr inbounds %struct.box_type, ptr %266, i64 %11, i32 2
  %284 = load i32, ptr %283, align 4, !tbaa !18
  %285 = icmp slt i32 %282, %284
  br i1 %285, label %59, label %286, !llvm.loop !222

286:                                              ; preds = %59, %52
  %287 = phi ptr [ %53, %52 ], [ %266, %59 ]
  %288 = phi ptr [ %54, %52 ], [ %264, %59 ]
  %289 = add nuw nsw i32 %55, 1
  %290 = getelementptr inbounds %struct.box_type, ptr %287, i64 %11, i32 2, i32 1
  %291 = load i32, ptr %290, align 4, !tbaa !19
  %292 = icmp slt i32 %289, %291
  br i1 %292, label %52, label %293, !llvm.loop !223

293:                                              ; preds = %286
  %.lcssa = phi ptr [ %288, %286 ]
  %294 = getelementptr inbounds %struct.subdomain_type, ptr %.lcssa, i64 %17, i32 5
  %295 = load ptr, ptr %294, align 8, !tbaa !48
  br label %296

296:                                              ; preds = %293, %45
  %297 = phi ptr [ %295, %293 ], [ %46, %45 ]
  %298 = phi ptr [ %.lcssa, %293 ], [ %47, %45 ]
  %299 = add nuw nsw i32 %48, 1
  %300 = getelementptr inbounds %struct.box_type, ptr %297, i64 %11, i32 2, i32 2
  %301 = load i32, ptr %300, align 4, !tbaa !20
  %302 = icmp slt i32 %299, %301
  br i1 %302, label %45, label %303, !llvm.loop !224

303:                                              ; preds = %296, %15
  %304 = phi ptr [ %39, %15 ], [ %298, %296 ]
  %305 = add nuw nsw i64 %17, 1
  %306 = load i32, ptr %6, align 8, !tbaa !66
  %307 = sext i32 %306 to i64
  %308 = icmp slt i64 %305, %307
  br i1 %308, label %15, label %309, !llvm.loop !225

309:                                              ; preds = %303, %5
  %310 = tail call double @mean(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1) #19
  %311 = getelementptr inbounds %struct.domain_type, ptr %0, i64 0, i32 18
  %312 = load i32, ptr %311, align 4, !tbaa !65
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %309
  %315 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.36, double noundef %310) #19
  %316 = load ptr, ptr @stdout, align 8, !tbaa !30
  %317 = tail call i32 @fflush(ptr noundef %316) #19
  br label %318

318:                                              ; preds = %314, %309
  %319 = fcmp une double %3, 0.000000e+00
  br i1 %319, label %320, label %323

320:                                              ; preds = %318
  %321 = fneg double %310
  tail call void @shift_grid(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1, i32 noundef 1, double noundef %321) #19
  %322 = fdiv double %321, %3
  tail call void @shift_grid(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 11, i32 noundef 11, double noundef %322) #19
  br label %323

323:                                              ; preds = %320, %318
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @tanh(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #16

; Function Attrs: nounwind optsize uwtable
define internal void @IterativeSolver(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, double noundef %6) #6 {
  br label %8

8:                                                ; preds = %8, %7
  %9 = phi i32 [ 0, %7 ], [ %10, %8 ]
  tail call void @smooth(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5) #17
  %10 = add nuw nsw i32 %9, 4
  %11 = icmp ult i32 %9, 44
  br i1 %11, label %8, label %12, !llvm.loop !226

12:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @IterativeSolver_NumGrids() #11 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i64 @CycleTime() #11 {
  ret i64 0
}

attributes #0 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }
attributes #19 = { optsize }
attributes #20 = { noreturn nounwind optsize }
attributes #21 = { nounwind optsize allocsize(0) }
attributes #22 = { nounwind optsize willreturn memory(read) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !13, i64 60}
!8 = !{!"", !9, i64 0, !12, i64 8, !12, i64 20, !12, i64 32, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !10, i64 64, !14, i64 176, !14, i64 184, !10, i64 192, !14, i64 208}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8}
!13 = !{!"int", !10, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!8, !13, i64 8}
!16 = !{!8, !13, i64 12}
!17 = !{!8, !13, i64 16}
!18 = !{!8, !13, i64 20}
!19 = !{!8, !13, i64 24}
!20 = !{!8, !13, i64 28}
!21 = !{!8, !13, i64 32}
!22 = !{!8, !13, i64 36}
!23 = !{!8, !13, i64 40}
!24 = !{!8, !13, i64 44}
!25 = !{!8, !13, i64 48}
!26 = !{!8, !13, i64 52}
!27 = !{!8, !13, i64 56}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!14, !14, i64 0}
!31 = !{!8, !14, i64 176}
!32 = distinct !{!32, !29}
!33 = !{!8, !14, i64 184}
!34 = !{!35, !35, i64 0}
!35 = !{!"long", !10, i64 0}
!36 = !{!9, !9, i64 0}
!37 = distinct !{!37, !29}
!38 = distinct !{!38, !29}
!39 = !{!40, !13, i64 24}
!40 = !{!"", !12, i64 0, !12, i64 12, !13, i64 24, !13, i64 28, !10, i64 32, !14, i64 248}
!41 = !{!40, !13, i64 28}
!42 = !{!40, !13, i64 0}
!43 = !{!40, !13, i64 4}
!44 = !{!40, !13, i64 8}
!45 = !{!40, !13, i64 12}
!46 = !{!40, !13, i64 16}
!47 = !{!40, !13, i64 20}
!48 = !{!40, !14, i64 248}
!49 = distinct !{!49, !29}
!50 = distinct !{!50, !29}
!51 = !{!52, !13, i64 1584}
!52 = !{!"", !53, i64 0, !13, i64 1304, !13, i64 1308, !13, i64 1312, !13, i64 1316, !10, i64 1320, !10, i64 1432, !13, i64 1512, !13, i64 1516, !13, i64 1520, !13, i64 1524, !13, i64 1528, !13, i64 1532, !12, i64 1536, !12, i64 1548, !12, i64 1560, !12, i64 1572, !12, i64 1584, !13, i64 1596, !13, i64 1600, !13, i64 1604, !13, i64 1608, !13, i64 1612, !10, i64 1616, !10, i64 1696, !14, i64 1776}
!53 = !{!"", !10, i64 0, !10, i64 80, !10, i64 160, !10, i64 240, !10, i64 320, !10, i64 400, !10, i64 480, !10, i64 560, !10, i64 640, !10, i64 720, !10, i64 800, !10, i64 880, !10, i64 960, !10, i64 1040, !10, i64 1120, !10, i64 1200, !35, i64 1280, !35, i64 1288, !35, i64 1296}
!54 = !{!52, !13, i64 1560}
!55 = !{!52, !13, i64 1572}
!56 = !{!52, !13, i64 1588}
!57 = !{!52, !13, i64 1564}
!58 = !{!52, !13, i64 1576}
!59 = !{!52, !13, i64 1592}
!60 = !{!52, !13, i64 1568}
!61 = !{!52, !13, i64 1580}
!62 = !{!52, !13, i64 1548}
!63 = !{!52, !13, i64 1552}
!64 = !{!52, !13, i64 1556}
!65 = !{!52, !13, i64 1596}
!66 = !{!52, !13, i64 1600}
!67 = !{!52, !13, i64 1536}
!68 = !{!52, !13, i64 1540}
!69 = !{!52, !13, i64 1544}
!70 = !{!13, !13, i64 0}
!71 = !{!52, !13, i64 1604}
!72 = !{!52, !13, i64 1608}
!73 = !{!52, !13, i64 1612}
!74 = distinct !{!74, !29}
!75 = distinct !{!75, !29}
!76 = distinct !{!76, !29}
!77 = distinct !{!77, !29}
!78 = !{!52, !14, i64 1776}
!79 = !{!80, !13, i64 0}
!80 = !{!"", !13, i64 0, !13, i64 4}
!81 = !{!80, !13, i64 4}
!82 = distinct !{!82, !29}
!83 = distinct !{!83, !29}
!84 = distinct !{!84, !29}
!85 = distinct !{!85, !29}
!86 = distinct !{!86, !29}
!87 = distinct !{!87, !29}
!88 = !{!52, !13, i64 1512}
!89 = !{!52, !13, i64 1516}
!90 = !{!52, !13, i64 1520}
!91 = !{!92, !13, i64 12}
!92 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !12, i64 12, !93, i64 24, !93, i64 56}
!93 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !14, i64 24}
!94 = !{!92, !13, i64 16}
!95 = !{!92, !13, i64 20}
!96 = !{!92, !13, i64 24}
!97 = !{!92, !14, i64 48}
!98 = !{!92, !13, i64 28}
!99 = !{!92, !13, i64 32}
!100 = !{!92, !13, i64 36}
!101 = !{!92, !13, i64 56}
!102 = !{!92, !14, i64 80}
!103 = !{!92, !13, i64 60}
!104 = !{!92, !13, i64 64}
!105 = !{!92, !13, i64 68}
!106 = !{!92, !13, i64 0}
!107 = !{!92, !13, i64 4}
!108 = !{!92, !13, i64 8}
!109 = distinct !{!109, !29}
!110 = distinct !{!110, !29}
!111 = distinct !{!111, !29}
!112 = distinct !{!112, !29}
!113 = !{!52, !13, i64 1524}
!114 = !{!52, !13, i64 1528}
!115 = !{!52, !13, i64 1532}
!116 = distinct !{!116, !29}
!117 = distinct !{!117, !29}
!118 = distinct !{!118, !29}
!119 = distinct !{!119, !29, !120, !121}
!120 = !{!"llvm.loop.isvectorized", i32 1}
!121 = !{!"llvm.loop.unroll.runtime.disable"}
!122 = distinct !{!122, !29, !120, !121}
!123 = !{!8, !9, i64 0}
!124 = distinct !{!124, !29}
!125 = distinct !{!125, !29}
!126 = distinct !{!126, !29}
!127 = distinct !{!127, !29}
!128 = distinct !{!128, !29}
!129 = distinct !{!129, !29}
!130 = distinct !{!130, !29}
!131 = distinct !{!131, !29}
!132 = distinct !{!132, !29}
!133 = !{!52, !35, i64 1280}
!134 = !{!52, !13, i64 1308}
!135 = !{!52, !13, i64 1304}
!136 = distinct !{!136, !29}
!137 = distinct !{!137, !29}
!138 = distinct !{!138, !29}
!139 = !{!52, !35, i64 1288}
!140 = !{!52, !35, i64 1296}
!141 = !{!92, !13, i64 40}
!142 = !{!92, !13, i64 44}
!143 = !{!92, !13, i64 72}
!144 = !{!92, !13, i64 76}
!145 = distinct !{!145, !29}
!146 = distinct !{!146, !29}
!147 = distinct !{!147, !29}
!148 = distinct !{!148, !29}
!149 = distinct !{!149, !29}
!150 = distinct !{!150, !29}
!151 = distinct !{!151, !29}
!152 = distinct !{!152, !29}
!153 = distinct !{!153, !29}
!154 = distinct !{!154, !29}
!155 = distinct !{!155, !29}
!156 = distinct !{!156, !29}
!157 = distinct !{!157, !29}
!158 = distinct !{!158, !29}
!159 = distinct !{!159, !29}
!160 = distinct !{!160, !29}
!161 = distinct !{!161, !29}
!162 = distinct !{!162, !29}
!163 = distinct !{!163, !29}
!164 = distinct !{!164, !29}
!165 = distinct !{!165, !29}
!166 = distinct !{!166, !29}
!167 = distinct !{!167, !29}
!168 = distinct !{!168, !29}
!169 = distinct !{!169, !29}
!170 = distinct !{!170, !29}
!171 = distinct !{!171, !29}
!172 = distinct !{!172, !29}
!173 = distinct !{!173, !29}
!174 = distinct !{!174, !29}
!175 = distinct !{!175, !29}
!176 = distinct !{!176, !29}
!177 = distinct !{!177, !29}
!178 = distinct !{!178, !29}
!179 = distinct !{!179, !29}
!180 = distinct !{!180, !29}
!181 = distinct !{!181, !29}
!182 = distinct !{!182, !29}
!183 = distinct !{!183, !29}
!184 = distinct !{!184, !29}
!185 = distinct !{!185, !29}
!186 = distinct !{!186, !29}
!187 = distinct !{!187, !29}
!188 = distinct !{!188, !29}
!189 = distinct !{!189, !29}
!190 = distinct !{!190, !29}
!191 = distinct !{!191, !29}
!192 = distinct !{!192, !29}
!193 = distinct !{!193, !29}
!194 = distinct !{!194, !29}
!195 = distinct !{!195, !29}
!196 = distinct !{!196, !29}
!197 = distinct !{!197, !29}
!198 = distinct !{!198, !29}
!199 = distinct !{!199, !29}
!200 = distinct !{!200, !29}
!201 = distinct !{!201, !29}
!202 = distinct !{!202, !29}
!203 = distinct !{!203, !29}
!204 = distinct !{!204, !29}
!205 = distinct !{!205, !29}
!206 = distinct !{!206, !29}
!207 = distinct !{!207, !29}
!208 = distinct !{!208, !29}
!209 = distinct !{!209, !29}
!210 = distinct !{!210, !29}
!211 = distinct !{!211, !29}
!212 = distinct !{!212, !29}
!213 = distinct !{!213, !29}
!214 = distinct !{!214, !29}
!215 = distinct !{!215, !29}
!216 = distinct !{!216, !29}
!217 = distinct !{!217, !29}
!218 = distinct !{!218, !29}
!219 = distinct !{!219, !29}
!220 = distinct !{!220, !29}
!221 = distinct !{!221, !29}
!222 = distinct !{!222, !29}
!223 = distinct !{!223, !29}
!224 = distinct !{!224, !29}
!225 = distinct !{!225, !29}
!226 = distinct !{!226, !29}
