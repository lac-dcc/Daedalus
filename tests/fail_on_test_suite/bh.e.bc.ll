; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/Olden/bh/bh.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icstruct = type { [3 x i32], i16 }
%struct.datapoints = type { [3 x double], [3 x double], ptr, ptr }
%struct.tree = type { [3 x double], double, ptr, [64 x ptr], [64 x ptr] }
%struct.bnode = type { i16, double, [3 x double], i32, i32, [3 x double], [3 x double], [3 x double], double, ptr, ptr }
%struct.cnode = type { i16, double, [3 x double], i32, i32, [8 x ptr], ptr }
%struct.hgstruct = type { ptr, [3 x double], double, [3 x double] }
%struct.node = type { i16, double, [3 x double], i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"nbody = %d, numnodes = %d\0A\00", align 1
@nbody = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Bodies per %d = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Assertion Failure #%d\00", align 1
@cp_free_list = internal global ptr null, align 8
@bp_free_list = internal global ptr null, align 8
@str = private unnamed_addr constant [16 x i8] c"bodies created \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@NumNodes = internal global i32 0, align 4
@arg1 = internal global [4 x i8] zeroinitializer, align 4
@rmin = internal global [24 x i8] zeroinitializer, align 16
@root = internal global [8 x i8] zeroinitializer, align 8
@xxxrsize = internal global [8 x i8] zeroinitializer, align 8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: read) uwtable
define internal i32 @dealwithargs(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp sgt i32 %0, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds ptr, ptr %1, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !7
  %7 = tail call i32 @atoi(ptr nocapture noundef %6) #23
  store i32 %7, ptr @NumNodes, align 4, !tbaa !11
  br label %10

8:                                                ; preds = %2
  store i32 4, ptr @NumNodes, align 4, !tbaa !11
  %9 = icmp eq i32 %0, 2
  br i1 %9, label %10, label %14

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !7
  %13 = tail call i32 @atoi(ptr nocapture noundef %12) #23
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i32 [ %13, %10 ], [ 32, %8 ]
  store i32 %15, ptr @nbody, align 4, !tbaa !11
  ret i32 undef
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 (i32, ptr, ...) @dealwithargs(i32 noundef %0, ptr noundef %1) #24
  %4 = load i32, ptr @nbody, align 4, !tbaa !11
  %5 = load i32, ptr @NumNodes, align 4, !tbaa !11
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %4, i32 noundef %5) #25
  %7 = tail call ptr @old_main() #25
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @old_main() #2 {
  %1 = alloca %struct.icstruct, align 8
  %2 = alloca %struct.icstruct, align 8
  %3 = alloca [3 x double], align 16
  %4 = alloca [3 x double], align 16
  %5 = alloca [64 x i32], align 16
  %6 = alloca [64 x ptr], align 16
  %7 = alloca %struct.datapoints, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  %8 = load i32, ptr @NumNodes, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #26
  tail call void @srand(i32 noundef 123) #24
  %9 = tail call noalias dereferenceable_or_null(1064) ptr @malloc(i64 noundef 1064) #27
  %10 = getelementptr inbounds %struct.tree, ptr %9, i64 0, i32 2
  store ptr null, ptr %10, align 8, !tbaa !13
  store <2 x double> <double -2.000000e+00, double -2.000000e+00>, ptr %9, align 8, !tbaa !16
  %11 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 2
  store <2 x double> <double -2.000000e+00, double 4.000000e+00>, ptr %11, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false), !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false), !tbaa !16
  %12 = getelementptr inbounds %struct.datapoints, ptr %7, i64 0, i32 2
  %13 = getelementptr inbounds %struct.datapoints, ptr %7, i64 0, i32 3
  br label %14

14:                                               ; preds = %52, %0
  %15 = phi i64 [ 0, %0 ], [ %25, %52 ]
  %16 = phi ptr [ null, %0 ], [ %33, %52 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #26
  %17 = load i32, ptr @NumNodes, align 4, !tbaa !11
  %18 = sdiv i32 32, %17
  %19 = trunc i64 %15 to i8
  %20 = trunc i32 %18 to i8
  %21 = sdiv i8 %19, %20
  %22 = sext i8 %21 to i32
  %23 = load i32, ptr @nbody, align 4, !tbaa !11
  %24 = sdiv i32 %23, 32
  %25 = add nuw nsw i64 %15, 1
  %26 = trunc i64 %25 to i32
  call void @uniform_testdata(ptr nonnull sret(%struct.datapoints) align 8 %7, i32 noundef %22, i32 noundef %24, i32 noundef %26) #25
  %27 = load ptr, ptr %12, align 8, !tbaa !17
  %28 = getelementptr inbounds %struct.tree, ptr %9, i64 0, i32 3, i64 %15
  store ptr %27, ptr %28, align 8, !tbaa !7
  %29 = icmp eq ptr %16, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.bnode, ptr %16, i64 0, i32 9
  store ptr %27, ptr %31, align 8, !tbaa !19
  br label %32

32:                                               ; preds = %30, %14
  %33 = load ptr, ptr %13, align 8, !tbaa !22
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi i64 [ 0, %32 ], [ %41, %34 ]
  %36 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %35
  %37 = load double, ptr %36, align 8, !tbaa !16
  %38 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 %35
  %39 = load double, ptr %38, align 8, !tbaa !16
  %40 = fadd double %37, %39
  store double %40, ptr %36, align 8, !tbaa !16
  %41 = add nuw nsw i64 %35, 1
  %42 = icmp eq i64 %41, 3
  br i1 %42, label %43, label %34, !llvm.loop !23

43:                                               ; preds = %43, %34
  %44 = phi i64 [ %50, %43 ], [ 0, %34 ]
  %45 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %44
  %46 = load double, ptr %45, align 8, !tbaa !16
  %47 = getelementptr inbounds %struct.datapoints, ptr %7, i64 0, i32 1, i64 %44
  %48 = load double, ptr %47, align 8, !tbaa !16
  %49 = fadd double %46, %48
  store double %49, ptr %45, align 8, !tbaa !16
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, 3
  br i1 %51, label %52, label %43, !llvm.loop !25

52:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #26
  %53 = icmp eq i64 %25, 32
  br i1 %53, label %54, label %14, !llvm.loop !26

54:                                               ; preds = %52
  %55 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %56 = load i32, ptr @nbody, align 4, !tbaa !11
  %57 = sitofp i32 %56 to double
  br label %58

58:                                               ; preds = %58, %54
  %59 = phi i64 [ 0, %54 ], [ %63, %58 ]
  %60 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %59
  %61 = load double, ptr %60, align 8, !tbaa !16
  %62 = fdiv double %61, %57
  store double %62, ptr %60, align 8, !tbaa !16
  %63 = add nuw nsw i64 %59, 1
  %64 = icmp eq i64 %63, 3
  br i1 %64, label %65, label %58, !llvm.loop !27

65:                                               ; preds = %65, %58
  %66 = phi i64 [ %70, %65 ], [ 0, %58 ]
  %67 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %66
  %68 = load double, ptr %67, align 8, !tbaa !16
  %69 = fdiv double %68, %57
  store double %69, ptr %67, align 8, !tbaa !16
  %70 = add nuw nsw i64 %66, 1
  %71 = icmp eq i64 %70, 3
  br i1 %71, label %72, label %65, !llvm.loop !28

72:                                               ; preds = %65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %5, i8 0, i64 256, i1 false), !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %6, i8 0, i64 512, i1 false), !tbaa !7
  %73 = sdiv i32 64, %8
  %74 = getelementptr inbounds %struct.tree, ptr %9, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !7
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %79 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  br label %80

80:                                               ; preds = %134, %77
  %81 = phi ptr [ %75, %77 ], [ %147, %134 ]
  br label %85

82:                                               ; preds = %134, %72
  %83 = load i32, ptr @NumNodes, align 4, !tbaa !11
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %149, label %162

85:                                               ; preds = %85, %80
  %86 = phi i64 [ 0, %80 ], [ %92, %85 ]
  %87 = getelementptr inbounds %struct.bnode, ptr %81, i64 0, i32 2, i64 %86
  %88 = load double, ptr %87, align 8, !tbaa !16
  %89 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %86
  %90 = load double, ptr %89, align 8, !tbaa !16
  %91 = fsub double %88, %90
  store double %91, ptr %87, align 8, !tbaa !16
  %92 = add nuw nsw i64 %86, 1
  %93 = icmp eq i64 %92, 3
  br i1 %93, label %94, label %85, !llvm.loop !29

94:                                               ; preds = %94, %85
  %95 = phi i64 [ %101, %94 ], [ 0, %85 ]
  %96 = getelementptr inbounds %struct.bnode, ptr %81, i64 0, i32 5, i64 %95
  %97 = load double, ptr %96, align 8, !tbaa !16
  %98 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %95
  %99 = load double, ptr %98, align 8, !tbaa !16
  %100 = fsub double %97, %99
  store double %100, ptr %96, align 8, !tbaa !16
  %101 = add nuw nsw i64 %95, 1
  %102 = icmp eq i64 %101, 3
  br i1 %102, label %103, label %94, !llvm.loop !30

103:                                              ; preds = %94
  %104 = tail call { i64, i64 } @intcoord(ptr noundef nonnull %81, ptr noundef nonnull %9) #25
  %105 = extractvalue { i64, i64 } %104, 0
  %106 = extractvalue { i64, i64 } %104, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  store i64 %105, ptr %2, align 8
  store i64 %106, ptr %78, align 8
  br label %107

107:                                              ; preds = %107, %103
  %108 = phi i64 [ 0, %103 ], [ %118, %107 ]
  %109 = phi i32 [ 0, %103 ], [ %117, %107 ]
  %110 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 %108
  %111 = load i32, ptr %110, align 4, !tbaa !11
  %112 = and i32 %111, 536870912
  %113 = icmp eq i32 %112, 0
  %114 = trunc i64 %108 to i32
  %115 = lshr i32 4, %114
  %116 = select i1 %113, i32 0, i32 %115
  %117 = add nuw nsw i32 %116, %109
  %118 = add nuw nsw i64 %108, 1
  %119 = icmp eq i64 %118, 3
  br i1 %119, label %120, label %107, !llvm.loop !31

120:                                              ; preds = %107
  %.lcssa = phi i32 [ %117, %107 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1)
  store i64 %105, ptr %1, align 8
  store i64 %106, ptr %79, align 8
  br label %121

121:                                              ; preds = %121, %120
  %122 = phi i64 [ 0, %120 ], [ %132, %121 ]
  %123 = phi i32 [ 0, %120 ], [ %131, %121 ]
  %124 = getelementptr inbounds [3 x i32], ptr %1, i64 0, i64 %122
  %125 = load i32, ptr %124, align 4, !tbaa !11
  %126 = and i32 %125, 268435456
  %127 = icmp eq i32 %126, 0
  %128 = trunc i64 %122 to i32
  %129 = lshr i32 4, %128
  %130 = select i1 %127, i32 0, i32 %129
  %131 = add nuw nsw i32 %130, %123
  %132 = add nuw nsw i64 %122, 1
  %133 = icmp eq i64 %132, 3
  br i1 %133, label %134, label %121, !llvm.loop !31

134:                                              ; preds = %121
  %.lcssa1 = phi i32 [ %131, %121 ]
  %135 = shl i32 %.lcssa, 3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1)
  %136 = add nsw i32 %.lcssa1, %135
  %137 = sdiv i32 %136, %73
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !11
  %141 = add nsw i32 %140, 1
  store i32 %141, ptr %139, align 4, !tbaa !11
  %142 = getelementptr inbounds [64 x ptr], ptr %6, i64 0, i64 %138
  %143 = load ptr, ptr %142, align 8, !tbaa !7
  %144 = getelementptr inbounds %struct.bnode, ptr %81, i64 0, i32 10
  store ptr %143, ptr %144, align 8, !tbaa !32
  store ptr %81, ptr %142, align 8, !tbaa !7
  %145 = getelementptr inbounds %struct.bnode, ptr %81, i64 0, i32 3
  store i32 %137, ptr %145, align 8, !tbaa !33
  %146 = getelementptr inbounds %struct.bnode, ptr %81, i64 0, i32 9
  %147 = load ptr, ptr %146, align 8, !tbaa !7
  %148 = icmp eq ptr %147, null
  br i1 %148, label %82, label %80, !llvm.loop !34

149:                                              ; preds = %149, %82
  %150 = phi i64 [ %158, %149 ], [ 0, %82 ]
  %151 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !11
  %153 = trunc i64 %150 to i32
  %154 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %153, i32 noundef %152) #25
  %155 = getelementptr inbounds [64 x ptr], ptr %6, i64 0, i64 %150
  %156 = load ptr, ptr %155, align 8, !tbaa !7
  %157 = getelementptr inbounds %struct.tree, ptr %9, i64 0, i32 4, i64 %150
  store ptr %156, ptr %157, align 8, !tbaa !7
  %158 = add nuw nsw i64 %150, 1
  %159 = load i32, ptr @NumNodes, align 4, !tbaa !11
  %160 = sext i32 %159 to i64
  %161 = icmp slt i64 %158, %160
  br i1 %161, label %149, label %162, !llvm.loop !35

162:                                              ; preds = %149, %82
  br label %163

163:                                              ; preds = %163, %162
  %164 = phi double [ %166, %163 ], [ 0.000000e+00, %162 ]
  %165 = phi i32 [ %167, %163 ], [ 0, %162 ]
  tail call void @stepsystem(ptr noundef nonnull %9, i32 noundef %165) #25
  %166 = fadd double %164, 1.250000e-02
  %167 = add nuw nsw i32 %165, 1
  %168 = fcmp olt double %166, 2.001250e+00
  %169 = icmp ult i32 %165, 9
  %170 = and i1 %168, %169
  br i1 %170, label %163, label %171, !llvm.loop !36

171:                                              ; preds = %163
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  ret ptr %9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind optsize
declare void @srand(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind optsize uwtable
define internal void @uniform_testdata(ptr noalias nocapture sret(%struct.datapoints) align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = tail call noalias dereferenceable_or_null(144) ptr @malloc(i64 noundef 144) #27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  store i16 1, ptr %5, align 8, !tbaa !37
  %6 = getelementptr inbounds %struct.bnode, ptr %5, i64 0, i32 3
  store i32 %1, ptr %6, align 8, !tbaa !33
  %7 = getelementptr inbounds %struct.bnode, ptr %5, i64 0, i32 10
  store ptr null, ptr %7, align 8, !tbaa !32
  %8 = getelementptr inbounds %struct.bnode, ptr %5, i64 0, i32 4
  store i32 %1, ptr %8, align 4, !tbaa !38
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %108

10:                                               ; preds = %4
  %11 = sitofp i32 %3 to double
  %12 = fmul double %11, 1.230000e+02
  %13 = sitofp i32 %2 to double
  %14 = fdiv double 1.000000e+00, %13
  br label %15

15:                                               ; preds = %105, %10
  %16 = phi ptr [ %5, %10 ], [ %19, %105 ]
  %17 = phi i32 [ 0, %10 ], [ %106, %105 ]
  %18 = phi double [ %12, %10 ], [ %.lcssa5, %105 ]
  %19 = tail call noalias dereferenceable_or_null(144) ptr @malloc(i64 noundef 144) #27
  %20 = getelementptr inbounds %struct.bnode, ptr %19, i64 0, i32 3
  store i32 %1, ptr %20, align 8, !tbaa !33
  %21 = getelementptr inbounds %struct.bnode, ptr %19, i64 0, i32 10
  store ptr null, ptr %21, align 8, !tbaa !32
  %22 = getelementptr inbounds %struct.bnode, ptr %19, i64 0, i32 4
  store i32 %1, ptr %22, align 4, !tbaa !38
  %23 = getelementptr inbounds %struct.bnode, ptr %16, i64 0, i32 9
  store ptr %19, ptr %23, align 8, !tbaa !19
  store i16 1, ptr %19, align 8, !tbaa !37
  %24 = getelementptr inbounds %struct.bnode, ptr %19, i64 0, i32 1
  store double %14, ptr %24, align 8, !tbaa !39
  %25 = tail call double (double, ...) @my_rand(double noundef %18) #24
  %26 = tail call double (double, double, double, ...) @xrand(double noundef 0.000000e+00, double noundef 0x3FEFF7CED916872B, double noundef %25) #24
  %27 = tail call double @pow(double noundef %26, double noundef 0xBFE5555555555555) #24
  %28 = fadd double %27, -1.000000e+00
  %29 = tail call double @sqrt(double noundef %28) #24
  br label %30

30:                                               ; preds = %30, %15
  %31 = phi i64 [ 0, %15 ], [ %37, %30 ]
  %32 = phi double [ %25, %15 ], [ %33, %30 ]
  %33 = tail call double (double, ...) @my_rand(double noundef %32) #24
  %34 = tail call double (double, double, double, ...) @xrand(double noundef 0.000000e+00, double noundef 0x3FEFF7CED916872B, double noundef %33) #24
  %35 = fmul double %34, 4.000000e+00
  %36 = getelementptr inbounds %struct.bnode, ptr %19, i64 0, i32 2, i64 %31
  store double %35, ptr %36, align 8, !tbaa !16
  %37 = add nuw nsw i64 %31, 1
  %38 = icmp eq i64 %37, 3
  br i1 %38, label %39, label %30, !llvm.loop !40

39:                                               ; preds = %39, %30
  %.lcssa1 = phi double [ %.lcssa1, %39 ], [ %33, %30 ]
  %.lcssa = phi double [ %.lcssa, %39 ], [ %34, %30 ]
  %40 = phi i64 [ %46, %39 ], [ 0, %30 ]
  %41 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %40
  %42 = load double, ptr %41, align 8, !tbaa !16
  %43 = getelementptr inbounds %struct.bnode, ptr %19, i64 0, i32 2, i64 %40
  %44 = load double, ptr %43, align 8, !tbaa !16
  %45 = fadd double %42, %44
  store double %45, ptr %41, align 8, !tbaa !16
  %46 = add nuw nsw i64 %40, 1
  %47 = icmp eq i64 %46, 3
  br i1 %47, label %48, label %39, !llvm.loop !41

48:                                               ; preds = %48, %39
  %.lcssa.lcssa = phi double [ %.lcssa.lcssa, %48 ], [ %.lcssa, %39 ]
  %49 = phi double [ %52, %48 ], [ %.lcssa1, %39 ]
  %50 = tail call double (double, ...) @my_rand(double noundef %49) #24
  %51 = tail call double (double, double, double, ...) @xrand(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %50) #24
  %52 = tail call double (double, ...) @my_rand(double noundef %50) #24
  %53 = tail call double (double, double, double, ...) @xrand(double noundef 0.000000e+00, double noundef 1.000000e-01, double noundef %52) #24
  %54 = fmul double %51, %51
  %55 = fneg double %51
  %56 = tail call double @llvm.fmuladd.f64(double %55, double %51, double 1.000000e+00)
  %57 = tail call double @pow(double noundef %56, double noundef 3.500000e+00) #24
  %58 = fmul double %54, %57
  %59 = fcmp ogt double %53, %58
  br i1 %59, label %48, label %60, !llvm.loop !42

60:                                               ; preds = %48
  %.lcssa3 = phi double [ %51, %48 ]
  %.lcssa2 = phi double [ %52, %48 ]
  %.lcssa.lcssa.lcssa = phi double [ %.lcssa.lcssa, %48 ]
  %61 = fmul double %.lcssa3, 0x3FF6A09E667F3BCD
  %62 = tail call double @llvm.fmuladd.f64(double %.lcssa.lcssa.lcssa, double %.lcssa.lcssa.lcssa, double 1.000000e+00)
  %63 = tail call double @pow(double noundef %62, double noundef 2.500000e-01) #24
  %64 = fdiv double %61, %63
  br label %65

65:                                               ; preds = %73, %60
  %66 = phi i64 [ 0, %60 ], [ %74, %73 ]
  %67 = phi double [ %.lcssa2, %60 ], [ %68, %73 ]
  %68 = tail call double (double, ...) @my_rand(double noundef %67) #24
  %69 = tail call double (double, double, double, ...) @xrand(double noundef -1.000000e+00, double noundef 1.000000e+00, double noundef %68) #24
  %70 = getelementptr inbounds %struct.bnode, ptr %19, i64 0, i32 5, i64 %66
  store double %69, ptr %70, align 8, !tbaa !16
  %71 = add nuw nsw i64 %66, 1
  %72 = icmp eq i64 %71, 3
  br i1 %72, label %75, label %73

73:                                               ; preds = %83, %65
  %74 = phi i64 [ %71, %65 ], [ 0, %83 ]
  br label %65, !llvm.loop !43

75:                                               ; preds = %75, %65
  %76 = phi i64 [ %81, %75 ], [ 0, %65 ]
  %77 = phi double [ %80, %75 ], [ 0.000000e+00, %65 ]
  %78 = getelementptr inbounds %struct.bnode, ptr %19, i64 0, i32 5, i64 %76
  %79 = load double, ptr %78, align 8, !tbaa !16
  %80 = tail call double @llvm.fmuladd.f64(double %79, double %79, double %77)
  %81 = add nuw nsw i64 %76, 1
  %82 = icmp eq i64 %81, 3
  br i1 %82, label %83, label %75, !llvm.loop !44

83:                                               ; preds = %75
  %.lcssa4 = phi double [ %80, %75 ]
  %84 = fcmp ogt double %.lcssa4, 1.000000e+00
  br i1 %84, label %73, label %85

85:                                               ; preds = %83
  %.lcssa5 = phi double [ %68, %83 ]
  %.lcssa4.lcssa = phi double [ %.lcssa4, %83 ]
  %86 = fmul double %64, 0x3FF4D8D7A58FA312
  %87 = tail call double @sqrt(double noundef %.lcssa4.lcssa) #24
  %88 = fdiv double %86, %87
  br label %89

89:                                               ; preds = %89, %85
  %90 = phi i64 [ 0, %85 ], [ %94, %89 ]
  %91 = getelementptr inbounds %struct.bnode, ptr %19, i64 0, i32 5, i64 %90
  %92 = load double, ptr %91, align 8, !tbaa !16
  %93 = fmul double %88, %92
  store double %93, ptr %91, align 8, !tbaa !16
  %94 = add nuw nsw i64 %90, 1
  %95 = icmp eq i64 %94, 3
  br i1 %95, label %96, label %89, !llvm.loop !45

96:                                               ; preds = %96, %89
  %97 = phi i64 [ %103, %96 ], [ 0, %89 ]
  %98 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 1, i64 %97
  %99 = load double, ptr %98, align 8, !tbaa !16
  %100 = getelementptr inbounds %struct.bnode, ptr %19, i64 0, i32 5, i64 %97
  %101 = load double, ptr %100, align 8, !tbaa !16
  %102 = fadd double %99, %101
  store double %102, ptr %98, align 8, !tbaa !16
  %103 = add nuw nsw i64 %97, 1
  %104 = icmp eq i64 %103, 3
  br i1 %104, label %105, label %96, !llvm.loop !46

105:                                              ; preds = %96
  %106 = add nuw nsw i32 %17, 1
  %107 = icmp eq i32 %106, %2
  br i1 %107, label %108, label %15, !llvm.loop !47

108:                                              ; preds = %105, %4
  %109 = phi ptr [ %5, %4 ], [ %19, %105 ]
  %110 = getelementptr inbounds %struct.bnode, ptr %109, i64 0, i32 9
  store ptr null, ptr %110, align 8, !tbaa !19
  %111 = getelementptr inbounds %struct.bnode, ptr %5, i64 0, i32 9
  %112 = load ptr, ptr %111, align 8, !tbaa !19
  %113 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 2
  store ptr %112, ptr %113, align 8, !tbaa !17
  %114 = getelementptr inbounds %struct.datapoints, ptr %0, i64 0, i32 3
  store ptr %109, ptr %114, align 8, !tbaa !22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal { i64, i64 } @intcoord(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %4 = load double, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %6 = load double, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %10 = load double, ptr %9, align 8, !tbaa !16
  %11 = load double, ptr %1, align 8, !tbaa !16
  %12 = fsub double %6, %11
  %13 = fdiv double %12, %4
  %14 = fcmp oge double %13, 0.000000e+00
  %15 = fcmp olt double %13, 1.000000e+00
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = fmul double %13, 0x41D0000000000000
  %19 = tail call double @llvm.floor.f64(double %18)
  %20 = fptosi double %19 to i32
  %21 = zext i32 %20 to i64
  br label %22

22:                                               ; preds = %17, %2
  %23 = phi i64 [ %21, %17 ], [ 0, %2 ]
  %24 = phi i64 [ 4294967296, %17 ], [ 0, %2 ]
  %25 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %26 = load double, ptr %25, align 8, !tbaa !16
  %27 = fsub double %8, %26
  %28 = fdiv double %27, %4
  %29 = fcmp oge double %28, 0.000000e+00
  %30 = fcmp olt double %28, 1.000000e+00
  %31 = and i1 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = fmul double %28, 0x41D0000000000000
  %34 = tail call double @llvm.floor.f64(double %33)
  %35 = fptosi double %34 to i32
  %36 = zext i32 %35 to i64
  %37 = shl nuw i64 %36, 32
  br label %38

38:                                               ; preds = %32, %22
  %39 = phi i64 [ %37, %32 ], [ 0, %22 ]
  %40 = phi i64 [ %24, %32 ], [ 0, %22 ]
  %41 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %42 = load double, ptr %41, align 8, !tbaa !16
  %43 = fsub double %10, %42
  %44 = fdiv double %43, %4
  %45 = fcmp oge double %44, 0.000000e+00
  %46 = fcmp olt double %44, 1.000000e+00
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = fmul double %44, 0x41D0000000000000
  %50 = tail call double @llvm.floor.f64(double %49)
  %51 = fptosi double %50 to i32
  %52 = zext i32 %51 to i64
  br label %53

53:                                               ; preds = %48, %38
  %54 = phi i64 [ %52, %48 ], [ 0, %38 ]
  %55 = phi i64 [ %40, %48 ], [ 0, %38 ]
  %56 = or i64 %39, %23
  %57 = insertvalue { i64, i64 } poison, i64 %56, 0
  %58 = and i64 %55, 281470681743360
  %59 = or i64 %58, %54
  %60 = insertvalue { i64, i64 } %57, i64 %59, 1
  ret { i64, i64 } %60
}

; Function Attrs: nounwind optsize uwtable
define internal void @stepsystem(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @freetree(ptr noundef nonnull %4) #25
  store ptr null, ptr %3, align 8, !tbaa !13
  br label %7

7:                                                ; preds = %6, %2
  %8 = load i32, ptr @nbody, align 4, !tbaa !11
  %9 = tail call ptr @maketree(ptr poison, i32 noundef %8, ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0) #25
  store ptr %9, ptr %3, align 8, !tbaa !13
  tail call void @computegrav(ptr noundef nonnull %0, i32 noundef %1) #25
  %10 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  tail call void @vp(ptr noundef %11, i32 noundef %1) #25
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @freetree(ptr noundef %0) #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 8, !tbaa !49
  %5 = icmp eq i16 %4, 1
  br i1 %5, label %26, label %6

6:                                                ; preds = %12, %3
  %7 = phi i64 [ %13, %12 ], [ 7, %3 ]
  %8 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @freetree(ptr noundef nonnull %9) #25
  br label %12

12:                                               ; preds = %11, %6
  %13 = add nsw i64 %7, -1
  %14 = icmp eq i64 %7, 0
  br i1 %14, label %15, label %6, !llvm.loop !51

15:                                               ; preds = %12
  %16 = load i16, ptr %0, align 8, !tbaa !49
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load ptr, ptr @bp_free_list, align 8, !tbaa !7
  %20 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 9
  store ptr %19, ptr %20, align 8, !tbaa !19
  br label %24

21:                                               ; preds = %15
  %22 = load ptr, ptr @cp_free_list, align 8, !tbaa !7
  %23 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 6
  store ptr %22, ptr %23, align 8, !tbaa !52
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi ptr [ @cp_free_list, %21 ], [ @bp_free_list, %18 ]
  store ptr %0, ptr %25, align 8, !tbaa !7
  br label %26

26:                                               ; preds = %24, %3, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @maketree(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.tree, ptr %2, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !13
  store i32 %1, ptr @nbody, align 4, !tbaa !11
  %7 = load i32, ptr @NumNodes, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %5
  %10 = zext i32 %7 to i64
  br label %14

11:                                               ; preds = %34, %14
  %12 = phi ptr [ %15, %14 ], [ %35, %34 ]
  %13 = icmp sgt i64 %16, 1
  br i1 %13, label %14, label %39, !llvm.loop !54

14:                                               ; preds = %11, %9
  %15 = phi ptr [ null, %9 ], [ %12, %11 ]
  %16 = phi i64 [ %10, %9 ], [ %17, %11 ]
  %17 = add nsw i64 %16, -1
  %18 = and i64 %17, 4294967295
  %19 = getelementptr inbounds %struct.tree, ptr %2, i64 0, i32 4, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %11, label %22

22:                                               ; preds = %34, %14
  %23 = phi ptr [ %35, %34 ], [ %15, %14 ]
  %24 = phi ptr [ %37, %34 ], [ %20, %14 ]
  %25 = getelementptr inbounds %struct.bnode, ptr %24, i64 0, i32 1
  %26 = load double, ptr %25, align 8, !tbaa !39
  %27 = fcmp une double %26, 0.000000e+00
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  tail call void @expandbox(ptr noundef nonnull %24, ptr noundef %2, i32 poison, i32 poison) #25
  %29 = tail call { i64, i64 } @intcoord(ptr noundef nonnull %24, ptr noundef %2) #25
  %30 = extractvalue { i64, i64 } %29, 0
  %31 = extractvalue { i64, i64 } %29, 1
  %32 = load ptr, ptr %6, align 8, !tbaa !13
  %33 = tail call ptr @loadtree(ptr noundef nonnull %24, i64 %30, i64 %31, ptr noundef %32, i32 noundef 536870912, ptr noundef %2) #25
  store ptr %33, ptr %6, align 8, !tbaa !13
  br label %34

34:                                               ; preds = %28, %22
  %35 = phi ptr [ %23, %22 ], [ %33, %28 ]
  %36 = getelementptr inbounds %struct.bnode, ptr %24, i64 0, i32 10
  %37 = load ptr, ptr %36, align 8, !tbaa !7
  %38 = icmp eq ptr %37, null
  br i1 %38, label %11, label %22, !llvm.loop !55

39:                                               ; preds = %11, %5
  %40 = phi ptr [ null, %5 ], [ %12, %11 ]
  %41 = tail call double @hackcofm(ptr noundef %40) #25
  %42 = load ptr, ptr %6, align 8, !tbaa !13
  ret ptr %42
}

; Function Attrs: nounwind optsize uwtable
define internal void @computegrav(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 1
  %4 = load double, ptr %3, align 8, !tbaa !48
  %5 = load i32, ptr @NumNodes, align 4, !tbaa !11
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 2
  %9 = zext i32 %5 to i64
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi i64 [ %9, %7 ], [ %12, %10 ]
  %12 = add nsw i64 %11, -1
  %13 = load ptr, ptr %8, align 8, !tbaa !13
  %14 = and i64 %12, 4294967295
  %15 = getelementptr inbounds %struct.tree, ptr %0, i64 0, i32 4, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  tail call void @grav(double noundef %4, ptr noundef %13, ptr noundef %16, i32 poison, double poison) #25
  %17 = icmp ugt i64 %11, 1
  br i1 %17, label %10, label %18, !llvm.loop !56

18:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @vp(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca [3 x double], align 16
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #26
  %8 = icmp eq ptr %0, null
  br i1 %8, label %222, label %9

9:                                                ; preds = %2
  %10 = icmp sgt i32 %1, 0
  br label %11

11:                                               ; preds = %218, %9
  %12 = phi ptr [ %0, %9 ], [ %220, %218 ]
  %13 = getelementptr i8, ptr %12, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa !16
  br i1 %10, label %14, label %43

14:                                               ; preds = %14, %11
  %15 = phi i64 [ %22, %14 ], [ 0, %11 ]
  %16 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %15
  %17 = load double, ptr %16, align 8, !tbaa !16
  %18 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 6, i64 %15
  %19 = load double, ptr %18, align 8, !tbaa !16
  %20 = fsub double %17, %19
  %21 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %15
  store double %20, ptr %21, align 8, !tbaa !16
  %22 = add nuw nsw i64 %15, 1
  %23 = icmp eq i64 %22, 3
  br i1 %23, label %24, label %14, !llvm.loop !57

24:                                               ; preds = %24, %14
  %25 = phi i64 [ %30, %24 ], [ 0, %14 ]
  %26 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %25
  %27 = load double, ptr %26, align 8, !tbaa !16
  %28 = fmul double %27, 6.250000e-03
  %29 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %25
  store double %28, ptr %29, align 8, !tbaa !16
  %30 = add nuw nsw i64 %25, 1
  %31 = icmp eq i64 %30, 3
  br i1 %31, label %32, label %24, !llvm.loop !58

32:                                               ; preds = %32, %24
  %33 = phi i64 [ %39, %32 ], [ 0, %24 ]
  %34 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 5, i64 %33
  %35 = load double, ptr %34, align 8, !tbaa !16
  %36 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %33
  %37 = load double, ptr %36, align 8, !tbaa !16
  %38 = fadd double %35, %37
  store double %38, ptr %36, align 8, !tbaa !16
  %39 = add nuw nsw i64 %33, 1
  %40 = icmp eq i64 %39, 3
  br i1 %40, label %41, label %32, !llvm.loop !59

41:                                               ; preds = %32
  %42 = getelementptr i8, ptr %12, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 16 dereferenceable(24) %5, i64 24, i1 false), !tbaa !16
  br label %43

43:                                               ; preds = %41, %11
  %44 = getelementptr %struct.bnode, ptr %12, i64 0, i32 2
  %45 = load double, ptr %44, align 8, !tbaa !16
  %46 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 2, i64 1
  %47 = load double, ptr %46, align 8, !tbaa !16
  %48 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 2, i64 2
  %49 = load double, ptr %48, align 8, !tbaa !16
  %50 = fcmp uno double %45, 0.000000e+00
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 99) #25
  tail call void @abort() #28
  unreachable

53:                                               ; preds = %43
  %54 = fcmp uno double %47, 0.000000e+00
  br i1 %54, label %55, label %57

55:                                               ; preds = %53
  %56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 98) #25
  tail call void @abort() #28
  unreachable

57:                                               ; preds = %53
  %58 = fcmp uno double %49, 0.000000e+00
  br i1 %58, label %59, label %61

59:                                               ; preds = %57
  %60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 97) #25
  tail call void @abort() #28
  unreachable

61:                                               ; preds = %57
  %62 = tail call double @llvm.fabs.f64(double %45)
  %63 = fcmp olt double %62, 1.000000e+01
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 96) #25
  tail call void @abort() #28
  unreachable

66:                                               ; preds = %61
  %67 = tail call double @llvm.fabs.f64(double %47)
  %68 = fcmp olt double %67, 1.000000e+01
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 95) #25
  tail call void @abort() #28
  unreachable

71:                                               ; preds = %66
  %72 = tail call double @llvm.fabs.f64(double %49)
  %73 = fcmp olt double %72, 1.000000e+01
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = getelementptr i8, ptr %12, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %75, ptr noundef nonnull align 16 dereferenceable(24) %3, i64 24, i1 false), !tbaa !16
  %76 = load double, ptr %75, align 8, !tbaa !16
  %77 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 6, i64 1
  %78 = load double, ptr %77, align 8, !tbaa !16
  %79 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 6, i64 2
  %80 = load double, ptr %79, align 8, !tbaa !16
  %81 = fcmp uno double %76, 0.000000e+00
  br i1 %81, label %84, label %86

82:                                               ; preds = %71
  %83 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 94) #25
  tail call void @abort() #28
  unreachable

84:                                               ; preds = %74
  %85 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 89) #25
  tail call void @abort() #28
  unreachable

86:                                               ; preds = %74
  %87 = fcmp uno double %78, 0.000000e+00
  br i1 %87, label %88, label %90

88:                                               ; preds = %86
  %89 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 88) #25
  tail call void @abort() #28
  unreachable

90:                                               ; preds = %86
  %91 = fcmp uno double %80, 0.000000e+00
  br i1 %91, label %92, label %94

92:                                               ; preds = %90
  %93 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 87) #25
  tail call void @abort() #28
  unreachable

94:                                               ; preds = %90
  %95 = tail call double @llvm.fabs.f64(double %76)
  %96 = fcmp olt double %95, 1.000000e+04
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 86) #25
  tail call void @abort() #28
  unreachable

99:                                               ; preds = %94
  %100 = tail call double @llvm.fabs.f64(double %78)
  %101 = fcmp olt double %100, 1.000000e+04
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 85) #25
  tail call void @abort() #28
  unreachable

104:                                              ; preds = %99
  %105 = tail call double @llvm.fabs.f64(double %80)
  %106 = fcmp olt double %105, 1.000000e+04
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 84) #25
  tail call void @abort() #28
  unreachable

109:                                              ; preds = %109, %104
  %110 = phi i64 [ %115, %109 ], [ 0, %104 ]
  %111 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 6, i64 %110
  %112 = load double, ptr %111, align 8, !tbaa !16
  %113 = fmul double %112, 6.250000e-03
  %114 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %110
  store double %113, ptr %114, align 8, !tbaa !16
  %115 = add nuw nsw i64 %110, 1
  %116 = icmp eq i64 %115, 3
  br i1 %116, label %117, label %109, !llvm.loop !60

117:                                              ; preds = %109
  %118 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 5
  %119 = load double, ptr %118, align 8, !tbaa !16
  %120 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 5, i64 1
  %121 = load double, ptr %120, align 8, !tbaa !16
  %122 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 5, i64 2
  %123 = load double, ptr %122, align 8, !tbaa !16
  %124 = fcmp uno double %119, 0.000000e+00
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 79) #25
  tail call void @abort() #28
  unreachable

127:                                              ; preds = %117
  %128 = fcmp uno double %121, 0.000000e+00
  br i1 %128, label %129, label %131

129:                                              ; preds = %127
  %130 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 78) #25
  tail call void @abort() #28
  unreachable

131:                                              ; preds = %127
  %132 = fcmp uno double %123, 0.000000e+00
  br i1 %132, label %133, label %135

133:                                              ; preds = %131
  %134 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 77) #25
  tail call void @abort() #28
  unreachable

135:                                              ; preds = %131
  %136 = tail call double @llvm.fabs.f64(double %119)
  %137 = fcmp olt double %136, 1.000000e+04
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 76) #25
  tail call void @abort() #28
  unreachable

140:                                              ; preds = %135
  %141 = tail call double @llvm.fabs.f64(double %121)
  %142 = fcmp olt double %141, 1.000000e+04
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 75) #25
  tail call void @abort() #28
  unreachable

145:                                              ; preds = %140
  %146 = tail call double @llvm.fabs.f64(double %123)
  %147 = fcmp olt double %146, 1.000000e+04
  br i1 %147, label %150, label %148

148:                                              ; preds = %145
  %149 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 74) #25
  tail call void @abort() #28
  unreachable

150:                                              ; preds = %150, %145
  %151 = phi i64 [ %158, %150 ], [ 0, %145 ]
  %152 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 5, i64 %151
  %153 = load double, ptr %152, align 8, !tbaa !16
  %154 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %151
  %155 = load double, ptr %154, align 8, !tbaa !16
  %156 = fadd double %153, %155
  %157 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %151
  store double %156, ptr %157, align 8, !tbaa !16
  %158 = add nuw nsw i64 %151, 1
  %159 = icmp eq i64 %158, 3
  br i1 %159, label %160, label %150, !llvm.loop !61

160:                                              ; preds = %160, %150
  %161 = phi i64 [ %166, %160 ], [ 0, %150 ]
  %162 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %161
  %163 = load double, ptr %162, align 8, !tbaa !16
  %164 = fmul double %163, 1.250000e-02
  %165 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 %161
  store double %164, ptr %165, align 8, !tbaa !16
  %166 = add nuw nsw i64 %161, 1
  %167 = icmp eq i64 %166, 3
  br i1 %167, label %168, label %160, !llvm.loop !62

168:                                              ; preds = %168, %160
  %169 = phi i64 [ %175, %168 ], [ 0, %160 ]
  %170 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 2, i64 %169
  %171 = load double, ptr %170, align 8, !tbaa !16
  %172 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 %169
  %173 = load double, ptr %172, align 8, !tbaa !16
  %174 = fadd double %171, %173
  store double %174, ptr %172, align 8, !tbaa !16
  %175 = add nuw nsw i64 %169, 1
  %176 = icmp eq i64 %175, 3
  br i1 %176, label %177, label %168, !llvm.loop !63

177:                                              ; preds = %168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef nonnull align 16 dereferenceable(24) %7, i64 24, i1 false), !tbaa !16
  br label %178

178:                                              ; preds = %178, %177
  %179 = phi i64 [ 0, %177 ], [ %186, %178 ]
  %180 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %179
  %181 = load double, ptr %180, align 8, !tbaa !16
  %182 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %179
  %183 = load double, ptr %182, align 8, !tbaa !16
  %184 = fadd double %181, %183
  %185 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 5, i64 %179
  store double %184, ptr %185, align 8, !tbaa !16
  %186 = add nuw nsw i64 %179, 1
  %187 = icmp eq i64 %186, 3
  br i1 %187, label %188, label %178, !llvm.loop !64

188:                                              ; preds = %178
  %189 = load double, ptr %44, align 8, !tbaa !16
  %190 = load double, ptr %46, align 8, !tbaa !16
  %191 = load double, ptr %48, align 8, !tbaa !16
  %192 = fcmp uno double %189, 0.000000e+00
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 69) #25
  tail call void @abort() #28
  unreachable

195:                                              ; preds = %188
  %196 = fcmp uno double %190, 0.000000e+00
  br i1 %196, label %197, label %199

197:                                              ; preds = %195
  %198 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 68) #25
  tail call void @abort() #28
  unreachable

199:                                              ; preds = %195
  %200 = fcmp uno double %191, 0.000000e+00
  br i1 %200, label %201, label %203

201:                                              ; preds = %199
  %202 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 67) #25
  tail call void @abort() #28
  unreachable

203:                                              ; preds = %199
  %204 = tail call double @llvm.fabs.f64(double %189)
  %205 = fcmp olt double %204, 1.000000e+04
  br i1 %205, label %208, label %206

206:                                              ; preds = %203
  %207 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 66) #25
  tail call void @abort() #28
  unreachable

208:                                              ; preds = %203
  %209 = tail call double @llvm.fabs.f64(double %190)
  %210 = fcmp olt double %209, 1.000000e+04
  br i1 %210, label %213, label %211

211:                                              ; preds = %208
  %212 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 65) #25
  tail call void @abort() #28
  unreachable

213:                                              ; preds = %208
  %214 = tail call double @llvm.fabs.f64(double %191)
  %215 = fcmp olt double %214, 1.000000e+04
  br i1 %215, label %218, label %216

216:                                              ; preds = %213
  %217 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 64) #25
  tail call void @abort() #28
  unreachable

218:                                              ; preds = %213
  %219 = getelementptr inbounds %struct.bnode, ptr %12, i64 0, i32 10
  %220 = load ptr, ptr %219, align 8, !tbaa !32
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %11, !llvm.loop !65

222:                                              ; preds = %218, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #13

; Function Attrs: nounwind optsize uwtable
define internal void @grav(double noundef %0, ptr noundef %1, ptr noundef %2, i32 %3, double %4) #2 {
  %6 = alloca %struct.hgstruct, align 8
  %7 = alloca %struct.hgstruct, align 8
  %8 = icmp eq ptr %2, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %6, i64 8
  %11 = getelementptr inbounds %struct.hgstruct, ptr %6, i64 0, i32 2
  %12 = getelementptr inbounds i8, ptr %6, i64 40
  %13 = fmul double %0, %0
  br label %14

14:                                               ; preds = %14, %9
  %15 = phi ptr [ %2, %9 ], [ %21, %14 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #26
  store ptr %15, ptr %6, align 8, !tbaa !66
  %16 = getelementptr i8, ptr %15, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 24, i1 false), !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #26
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef %1, double noundef %13, double noundef 1.000000e+00, ptr noundef nonnull byval(%struct.hgstruct) align 8 %6, i32 noundef 0) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false), !tbaa.struct !68
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #26
  %17 = load double, ptr %11, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.bnode, ptr %15, i64 0, i32 8
  store double %17, ptr %18, align 8, !tbaa !71
  %19 = getelementptr i8, ptr %15, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa !16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #26
  %20 = getelementptr inbounds %struct.bnode, ptr %15, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !32
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !llvm.loop !72

23:                                               ; preds = %14, %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @expandbox(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 %2, i32 %3) #2 {
  %5 = alloca %struct.icstruct, align 8
  %6 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #26
  %7 = tail call i32 @ic_test(ptr noundef %0, ptr noundef %1) #25, !range !73
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %91

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %11 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 2
  %12 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  %13 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %14 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %15 = load double, ptr %10, align 8, !tbaa !48
  br label %16

16:                                               ; preds = %88, %9
  %17 = phi double [ %15, %9 ], [ %44, %88 ]
  %18 = fcmp olt double %17, 1.000000e+03
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 999) #25
  tail call void @abort() #28
  unreachable

21:                                               ; preds = %21, %16
  %22 = phi i64 [ %27, %21 ], [ 0, %16 ]
  %23 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %22
  %24 = load double, ptr %23, align 8, !tbaa !16
  %25 = tail call double @llvm.fmuladd.f64(double %17, double 5.000000e-01, double %24)
  %26 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %22
  store double %25, ptr %26, align 8, !tbaa !16
  %27 = add nuw nsw i64 %22, 1
  %28 = icmp eq i64 %27, 3
  br i1 %28, label %29, label %21, !llvm.loop !74

29:                                               ; preds = %40, %21
  %30 = phi i64 [ %41, %40 ], [ 0, %21 ]
  %31 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 %30
  %32 = load double, ptr %31, align 8, !tbaa !16
  %33 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %30
  %34 = load double, ptr %33, align 8, !tbaa !16
  %35 = fcmp olt double %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %30
  %38 = load double, ptr %37, align 8, !tbaa !16
  %39 = fsub double %38, %17
  store double %39, ptr %37, align 8, !tbaa !16
  br label %40

40:                                               ; preds = %36, %29
  %41 = add nuw nsw i64 %30, 1
  %42 = icmp eq i64 %41, 3
  br i1 %42, label %43, label %29, !llvm.loop !75

43:                                               ; preds = %40
  %44 = fmul double %17, 2.000000e+00
  store double %44, ptr %10, align 8, !tbaa !48
  %45 = load ptr, ptr %11, align 8, !tbaa !13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %88, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr @cp_free_list, align 8, !tbaa !7
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.cnode, ptr %48, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !52
  store ptr %52, ptr @cp_free_list, align 8, !tbaa !7
  br label %55

53:                                               ; preds = %47
  %54 = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #27
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi ptr [ %48, %50 ], [ %54, %53 ]
  store i16 2, ptr %56, align 8, !tbaa !76
  %57 = getelementptr inbounds %struct.cnode, ptr %56, i64 0, i32 3
  store i32 0, ptr %57, align 8, !tbaa !77
  %58 = getelementptr i8, ptr %56, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %58, i8 0, i64 64, i1 false), !tbaa !7
  %59 = load double, ptr %6, align 16, !tbaa !16
  %60 = load double, ptr %12, align 8, !tbaa !16
  %61 = load double, ptr %13, align 16, !tbaa !16
  %62 = tail call { i64, i64 } @intcoord1(double noundef %59, double noundef %60, double noundef %61, ptr noundef nonnull %1) #25
  %63 = extractvalue { i64, i64 } %62, 1
  %64 = and i64 %63, 281470681743360
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 1) #25
  tail call void @abort() #28
  unreachable

68:                                               ; preds = %55
  %69 = extractvalue { i64, i64 } %62, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  store i64 %69, ptr %5, align 8
  store i64 %63, ptr %14, align 8
  br label %70

70:                                               ; preds = %70, %68
  %71 = phi i64 [ 0, %68 ], [ %81, %70 ]
  %72 = phi i32 [ 0, %68 ], [ %80, %70 ]
  %73 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 %71
  %74 = load i32, ptr %73, align 4, !tbaa !11
  %75 = and i32 %74, 536870912
  %76 = icmp eq i32 %75, 0
  %77 = trunc i64 %71 to i32
  %78 = lshr i32 4, %77
  %79 = select i1 %76, i32 0, i32 %78
  %80 = add nuw nsw i32 %79, %72
  %81 = add nuw nsw i64 %71, 1
  %82 = icmp eq i64 %81, 3
  br i1 %82, label %83, label %70, !llvm.loop !31

83:                                               ; preds = %70
  %.lcssa = phi i32 [ %80, %70 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  %84 = load ptr, ptr %11, align 8, !tbaa !13
  %85 = zext i32 %.lcssa to i64
  %86 = getelementptr inbounds %struct.cnode, ptr %56, i64 0, i32 5, i64 %85
  store ptr %84, ptr %86, align 8, !tbaa !7
  store ptr %56, ptr %11, align 8, !tbaa !13
  %87 = tail call i32 @ic_test(ptr noundef %0, ptr noundef %1) #25, !range !73
  br label %88

88:                                               ; preds = %83, %43
  %89 = phi i32 [ %87, %83 ], [ 0, %43 ]
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %16, label %91, !llvm.loop !78

91:                                               ; preds = %88, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #26
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @loadtree(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #2 {
  %7 = alloca %struct.icstruct, align 8
  %8 = icmp eq ptr %3, null
  br i1 %8, label %47, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 2) #25
  tail call void @abort() #28
  unreachable

13:                                               ; preds = %9
  %14 = load i16, ptr %3, align 8, !tbaa !49
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load ptr, ptr @cp_free_list, align 8, !tbaa !7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.cnode, ptr %17, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  store ptr %21, ptr @cp_free_list, align 8, !tbaa !7
  br label %24

22:                                               ; preds = %16
  %23 = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #27
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi ptr [ %17, %19 ], [ %23, %22 ]
  store i16 2, ptr %25, align 8, !tbaa !76
  %26 = getelementptr inbounds %struct.cnode, ptr %25, i64 0, i32 3
  store i32 0, ptr %26, align 8, !tbaa !77
  %27 = getelementptr i8, ptr %25, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %27, i8 0, i64 64, i1 false), !tbaa !7
  %28 = tail call i32 @subindex(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %4) #25
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.cnode, ptr %25, i64 0, i32 5, i64 %29
  store ptr %3, ptr %30, align 8, !tbaa !7
  br label %31

31:                                               ; preds = %24, %13
  %32 = phi ptr [ %25, %24 ], [ %3, %13 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  store i64 %1, ptr %7, align 8
  %33 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  store i64 %2, ptr %33, align 8
  br label %34

34:                                               ; preds = %34, %31
  %35 = phi i64 [ 0, %31 ], [ %45, %34 ]
  %36 = phi i32 [ 0, %31 ], [ %44, %34 ]
  %37 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 %35
  %38 = load i32, ptr %37, align 4, !tbaa !11
  %39 = and i32 %38, %4
  %40 = icmp eq i32 %39, 0
  %41 = trunc i64 %35 to i32
  %42 = lshr i32 4, %41
  %43 = select i1 %40, i32 0, i32 %42
  %44 = add nuw nsw i32 %43, %36
  %45 = add nuw nsw i64 %35, 1
  %46 = icmp eq i64 %45, 3
  br i1 %46, label %49, label %34, !llvm.loop !31

47:                                               ; preds = %49, %6
  %48 = phi ptr [ %32, %49 ], [ %0, %6 ]
  ret ptr %48

49:                                               ; preds = %34
  %.lcssa = phi i32 [ %44, %34 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  %50 = zext i32 %.lcssa to i64
  %51 = getelementptr inbounds %struct.cnode, ptr %32, i64 0, i32 5, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !7
  %53 = ashr i32 %4, 1
  %54 = tail call ptr @loadtree(ptr noundef %0, i64 %1, i64 %2, ptr noundef %52, i32 noundef %53, ptr noundef %5) #25
  store ptr %54, ptr %51, align 8, !tbaa !7
  br label %47
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal double @hackcofm(ptr nocapture noundef %0) #14 {
  %2 = alloca [3 x double], align 16
  %3 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  %4 = load i16, ptr %0, align 8, !tbaa !49
  %5 = icmp eq i16 %4, 2
  br i1 %5, label %6, label %52

6:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false), !tbaa !16
  br label %7

7:                                                ; preds = %34, %6
  %8 = phi i64 [ 0, %6 ], [ %36, %34 ]
  %9 = phi double [ 0.000000e+00, %6 ], [ %35, %34 ]
  %10 = getelementptr inbounds %struct.cnode, ptr %0, i64 0, i32 5, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %7
  %14 = tail call double @hackcofm(ptr noundef nonnull %11) #25
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i64 [ 0, %13 ], [ %21, %15 ]
  %17 = getelementptr inbounds %struct.node, ptr %11, i64 0, i32 2, i64 %16
  %18 = load double, ptr %17, align 8, !tbaa !16
  %19 = fmul double %14, %18
  %20 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 %16
  store double %19, ptr %20, align 8, !tbaa !16
  %21 = add nuw nsw i64 %16, 1
  %22 = icmp eq i64 %21, 3
  br i1 %22, label %23, label %15, !llvm.loop !79

23:                                               ; preds = %23, %15
  %24 = phi i64 [ %30, %23 ], [ 0, %15 ]
  %25 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %24
  %26 = load double, ptr %25, align 8, !tbaa !16
  %27 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 %24
  %28 = load double, ptr %27, align 8, !tbaa !16
  %29 = fadd double %26, %28
  store double %29, ptr %25, align 8, !tbaa !16
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, 3
  br i1 %31, label %32, label %23, !llvm.loop !80

32:                                               ; preds = %23
  %33 = fadd double %9, %14
  br label %34

34:                                               ; preds = %32, %7
  %35 = phi double [ %9, %7 ], [ %33, %32 ]
  %36 = add nuw nsw i64 %8, 1
  %37 = icmp eq i64 %36, 8
  br i1 %37, label %38, label %7, !llvm.loop !81

38:                                               ; preds = %34
  %.lcssa = phi double [ %35, %34 ]
  %39 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 1
  store double %.lcssa, ptr %39, align 8, !tbaa !82
  %40 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2
  %41 = load <2 x double>, ptr %3, align 16, !tbaa !16
  store <2 x double> %41, ptr %40, align 8, !tbaa !16
  %42 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %43 = load double, ptr %42, align 16, !tbaa !16
  %44 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 2
  store double %43, ptr %44, align 8, !tbaa !16
  br label %45

45:                                               ; preds = %45, %38
  %46 = phi i64 [ 0, %38 ], [ %50, %45 ]
  %47 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 %46
  %48 = load double, ptr %47, align 8, !tbaa !16
  %49 = fdiv double %48, %.lcssa
  store double %49, ptr %47, align 8, !tbaa !16
  %50 = add nuw nsw i64 %46, 1
  %51 = icmp eq i64 %50, 3
  br i1 %51, label %55, label %45, !llvm.loop !83

52:                                               ; preds = %1
  %53 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 1
  %54 = load double, ptr %53, align 8, !tbaa !82
  br label %55

55:                                               ; preds = %52, %45
  %56 = phi double [ %54, %52 ], [ %.lcssa, %45 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #26
  ret double %56
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @subindex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #26
  %5 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %6 = load double, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %10 = load double, ptr %9, align 8, !tbaa !48
  %11 = load double, ptr %1, align 8, !tbaa !16
  %12 = fsub double %6, %11
  %13 = fdiv double %12, %10
  %14 = fcmp oge double %13, 0.000000e+00
  %15 = fcmp olt double %13, 1.000000e+00
  %16 = and i1 %14, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 5) #25
  tail call void @abort() #28
  unreachable

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %21 = load double, ptr %20, align 8, !tbaa !16
  %22 = fmul double %13, 0x41D0000000000000
  %23 = tail call double @llvm.floor.f64(double %22)
  %24 = fptosi double %23 to i32
  store i32 %24, ptr %4, align 4, !tbaa !11
  %25 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %26 = load double, ptr %25, align 8, !tbaa !16
  %27 = fsub double %21, %26
  %28 = fdiv double %27, %10
  %29 = fcmp oge double %28, 0.000000e+00
  %30 = fcmp olt double %28, 1.000000e+00
  %31 = and i1 %29, %30
  br i1 %31, label %34, label %32

32:                                               ; preds = %19
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 6) #25
  tail call void @abort() #28
  unreachable

34:                                               ; preds = %19
  %35 = fmul double %28, 0x41D0000000000000
  %36 = tail call double @llvm.floor.f64(double %35)
  %37 = fptosi double %36 to i32
  %38 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 1
  store i32 %37, ptr %38, align 4, !tbaa !11
  %39 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %40 = load double, ptr %39, align 8, !tbaa !16
  %41 = fsub double %8, %40
  %42 = fdiv double %41, %10
  %43 = fcmp oge double %42, 0.000000e+00
  %44 = fcmp olt double %42, 1.000000e+00
  %45 = and i1 %43, %44
  br i1 %45, label %48, label %46

46:                                               ; preds = %34
  %47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 7) #25
  tail call void @abort() #28
  unreachable

48:                                               ; preds = %34
  %49 = fmul double %42, 0x41D0000000000000
  %50 = tail call double @llvm.floor.f64(double %49)
  %51 = fptosi double %50 to i32
  %52 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 %51, ptr %52, align 4, !tbaa !11
  br label %53

53:                                               ; preds = %53, %48
  %54 = phi i64 [ 0, %48 ], [ %64, %53 ]
  %55 = phi i32 [ 0, %48 ], [ %63, %53 ]
  %56 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 %54
  %57 = load i32, ptr %56, align 4, !tbaa !11
  %58 = and i32 %57, %2
  %59 = icmp eq i32 %58, 0
  %60 = trunc i64 %54 to i32
  %61 = lshr i32 4, %60
  %62 = select i1 %59, i32 0, i32 %61
  %63 = add nuw nsw i32 %62, %55
  %64 = add nuw nsw i64 %54, 1
  %65 = icmp eq i64 %64, 3
  br i1 %65, label %66, label %53, !llvm.loop !84

66:                                               ; preds = %53
  %.lcssa = phi i32 [ %63, %53 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #26
  ret i32 %.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @ic_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #15 {
  %3 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2
  %4 = load double, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.bnode, ptr %0, i64 0, i32 2, i64 1
  %6 = getelementptr inbounds %struct.tree, ptr %1, i64 0, i32 1
  %7 = load double, ptr %6, align 8, !tbaa !48
  %8 = load double, ptr %1, align 8, !tbaa !16
  %9 = fsub double %4, %8
  %10 = fdiv double %9, %7
  %11 = fcmp oge double %10, 0.000000e+00
  %12 = fcmp olt double %10, 1.000000e+00
  %13 = and i1 %11, %12
  %14 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %15 = load <2 x double>, ptr %5, align 8, !tbaa !16
  %16 = load <2 x double>, ptr %14, align 8, !tbaa !16
  %17 = fsub <2 x double> %15, %16
  %18 = insertelement <2 x double> poison, double %7, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = fdiv <2 x double> %17, %19
  %21 = extractelement <2 x double> %20, i64 0
  %22 = fcmp oge double %21, 0.000000e+00
  %23 = fcmp olt <2 x double> %20, <double 1.000000e+00, double 1.000000e+00>
  %24 = extractelement <2 x i1> %23, i64 0
  %25 = and i1 %22, %24
  %26 = extractelement <2 x double> %20, i64 1
  %27 = fcmp oge double %26, 0.000000e+00
  %28 = extractelement <2 x i1> %23, i64 1
  %29 = and i1 %27, %28
  %30 = select i1 %29, i1 %25, i1 false
  %31 = select i1 %30, i1 %13, i1 false
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal { i64, i64 } @intcoord1(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef readonly %3) #9 {
  %5 = load double, ptr %3, align 8, !tbaa !16
  %6 = fsub double %0, %5
  %7 = getelementptr inbounds %struct.tree, ptr %3, i64 0, i32 1
  %8 = load double, ptr %7, align 8, !tbaa !48
  %9 = fdiv double %6, %8
  %10 = fcmp oge double %9, 0.000000e+00
  %11 = fcmp olt double %9, 1.000000e+00
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = fmul double %9, 0x41D0000000000000
  %15 = tail call double @llvm.floor.f64(double %14)
  %16 = fptosi double %15 to i32
  %17 = zext i32 %16 to i64
  br label %18

18:                                               ; preds = %13, %4
  %19 = phi i64 [ %17, %13 ], [ 0, %4 ]
  %20 = phi i64 [ 4294967296, %13 ], [ 0, %4 ]
  %21 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %22 = load double, ptr %21, align 8, !tbaa !16
  %23 = fsub double %1, %22
  %24 = fdiv double %23, %8
  %25 = fcmp oge double %24, 0.000000e+00
  %26 = fcmp olt double %24, 1.000000e+00
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = fmul double %24, 0x41D0000000000000
  %30 = tail call double @llvm.floor.f64(double %29)
  %31 = fptosi double %30 to i32
  %32 = zext i32 %31 to i64
  %33 = shl nuw i64 %32, 32
  br label %34

34:                                               ; preds = %28, %18
  %35 = phi i64 [ %33, %28 ], [ 0, %18 ]
  %36 = phi i64 [ %20, %28 ], [ 0, %18 ]
  %37 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %38 = load double, ptr %37, align 8, !tbaa !16
  %39 = fsub double %2, %38
  %40 = fdiv double %39, %8
  %41 = fcmp oge double %40, 0.000000e+00
  %42 = fcmp olt double %40, 1.000000e+00
  %43 = and i1 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = fmul double %40, 0x41D0000000000000
  %46 = tail call double @llvm.floor.f64(double %45)
  %47 = fptosi double %46 to i32
  %48 = zext i32 %47 to i64
  br label %49

49:                                               ; preds = %44, %34
  %50 = phi i64 [ %48, %44 ], [ 0, %34 ]
  %51 = phi i64 [ %36, %44 ], [ 0, %34 ]
  %52 = or i64 %35, %19
  %53 = insertvalue { i64, i64 } poison, i64 %52, 0
  %54 = and i64 %51, 281470681743360
  %55 = or i64 %54, %50
  %56 = insertvalue { i64, i64 } %53, i64 %55, 1
  ret { i64, i64 } %56
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind optsize memory(write, argmem: readwrite) uwtable
define internal void @gravsub(ptr noalias nocapture writeonly sret(%struct.hgstruct) align 8 %0, ptr nocapture noundef readonly %1, ptr nocapture noundef byval(%struct.hgstruct) align 8 %2) #17 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #26
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi i64 [ 0, %3 ], [ %14, %6 ]
  %8 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 2, i64 %7
  %9 = load double, ptr %8, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 1, i64 %7
  %11 = load double, ptr %10, align 8, !tbaa !16
  %12 = fsub double %9, %11
  %13 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %7
  store double %12, ptr %13, align 8, !tbaa !16
  %14 = add nuw nsw i64 %7, 1
  %15 = icmp eq i64 %14, 3
  br i1 %15, label %16, label %6, !llvm.loop !85

16:                                               ; preds = %16, %6
  %17 = phi i64 [ %22, %16 ], [ 0, %6 ]
  %18 = phi double [ %21, %16 ], [ 0.000000e+00, %6 ]
  %19 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %17
  %20 = load double, ptr %19, align 8, !tbaa !16
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %20, double %18)
  %22 = add nuw nsw i64 %17, 1
  %23 = icmp eq i64 %22, 3
  br i1 %23, label %24, label %16, !llvm.loop !86

24:                                               ; preds = %16
  %.lcssa = phi double [ %21, %16 ]
  %25 = fadd double %.lcssa, 0x3F647AE147AE147C
  %26 = tail call double @sqrt(double noundef %25) #24
  %27 = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 1
  %28 = load double, ptr %27, align 8, !tbaa !82
  %29 = fdiv double %28, %26
  %30 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 2
  %31 = load double, ptr %30, align 8, !tbaa !70
  %32 = fsub double %31, %29
  store double %32, ptr %30, align 8, !tbaa !70
  %33 = fdiv double %29, %25
  br label %34

34:                                               ; preds = %34, %24
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %35
  %37 = load double, ptr %36, align 8, !tbaa !16
  %38 = fmul double %33, %37
  %39 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %35
  store double %38, ptr %39, align 8, !tbaa !16
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, 3
  br i1 %41, label %42, label %34, !llvm.loop !87

42:                                               ; preds = %42, %34
  %43 = phi i64 [ %49, %42 ], [ 0, %34 ]
  %44 = getelementptr inbounds %struct.hgstruct, ptr %2, i64 0, i32 3, i64 %43
  %45 = load double, ptr %44, align 8, !tbaa !16
  %46 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %43
  %47 = load double, ptr %46, align 8, !tbaa !16
  %48 = fadd double %45, %47
  store double %48, ptr %44, align 8, !tbaa !16
  %49 = add nuw nsw i64 %43, 1
  %50 = icmp eq i64 %49, 3
  br i1 %50, label %51, label %42, !llvm.loop !88

51:                                               ; preds = %42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !tbaa.struct !68
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: read) uwtable
define internal signext i16 @subdivp(ptr nocapture noundef readonly %0, double noundef %1, double noundef %2, ptr nocapture noundef readonly byval(%struct.hgstruct) align 8 %3) #18 {
  %5 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #26
  %6 = load i16, ptr %0, align 8, !tbaa !49
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %30, label %8

8:                                                ; preds = %8, %4
  %9 = phi i64 [ %16, %8 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 2, i64 %9
  %11 = load double, ptr %10, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.hgstruct, ptr %3, i64 0, i32 1, i64 %9
  %13 = load double, ptr %12, align 8, !tbaa !16
  %14 = fsub double %11, %13
  %15 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %9
  store double %14, ptr %15, align 8, !tbaa !16
  %16 = add nuw nsw i64 %9, 1
  %17 = icmp eq i64 %16, 3
  br i1 %17, label %18, label %8, !llvm.loop !89

18:                                               ; preds = %18, %8
  %19 = phi i64 [ %24, %18 ], [ 0, %8 ]
  %20 = phi double [ %23, %18 ], [ 0.000000e+00, %8 ]
  %21 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %19
  %22 = load double, ptr %21, align 8, !tbaa !16
  %23 = tail call double @llvm.fmuladd.f64(double %22, double %22, double %20)
  %24 = add nuw nsw i64 %19, 1
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %26, label %18, !llvm.loop !90

26:                                               ; preds = %18
  %.lcssa = phi double [ %23, %18 ]
  %27 = fmul double %.lcssa, %2
  %28 = fcmp olt double %27, %1
  %29 = zext i1 %28 to i16
  br label %30

30:                                               ; preds = %26, %4
  %31 = phi i16 [ %29, %26 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  ret i16 %31
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none) uwtable
define internal double @my_rand(double noundef %0) #19 {
  %2 = tail call double @llvm.fmuladd.f64(double %0, double 1.680700e+04, double 1.000000e+00)
  %3 = fdiv double %2, 0x41DFFFFFFFC00000
  %4 = tail call double @llvm.floor.f64(double %3)
  %5 = tail call double @llvm.fmuladd.f64(double %4, double 0xC1DFFFFFFFC00000, double %2)
  ret double %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal double @xrand(double noundef %0, double noundef %1, double noundef %2) #20 {
  %4 = fsub double %1, %0
  %5 = fmul double %4, %2
  %6 = fdiv double %5, 0x41DFFFFFFFC00000
  %7 = fadd double %6, %0
  ret double %7
}

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @error(ptr nocapture noundef readonly %0) #21 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !7
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef %0) #29
  %4 = tail call ptr @__errno_location() #30
  %5 = load i32, ptr %4, align 4, !tbaa !11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @perror(ptr noundef nonnull @.str.9) #29
  br label %8

8:                                                ; preds = %7, %1
  tail call void @exit(i32 noundef 0) #28
  unreachable
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #22

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind optsize uwtable
define internal void @walksub(ptr noalias nocapture writeonly sret(%struct.hgstruct) align 8 %0, ptr noundef %1, double noundef %2, double noundef %3, ptr noundef byval(%struct.hgstruct) align 8 %4, i32 noundef %5) #2 {
  %7 = alloca %struct.hgstruct, align 8
  %8 = alloca %struct.hgstruct, align 8
  %9 = tail call signext i16 @subdivp(ptr noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4) #24
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = fmul double %2, 2.500000e-01
  %13 = add nsw i32 %5, 1
  br label %14

14:                                               ; preds = %20, %11
  %15 = phi i64 [ 0, %11 ], [ %21, %20 ]
  %16 = getelementptr inbounds %struct.cnode, ptr %1, i64 0, i32 5, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #26
  call void @walksub(ptr nonnull sret(%struct.hgstruct) align 8 %7, ptr noundef nonnull %17, double noundef %12, double noundef %3, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4, i32 noundef %13) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false), !tbaa.struct !68
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #26
  br label %20

20:                                               ; preds = %19, %14
  %21 = add nuw nsw i64 %15, 1
  %22 = icmp eq i64 %21, 8
  br i1 %22, label %27, label %14, !llvm.loop !91

23:                                               ; preds = %6
  %24 = load ptr, ptr %4, align 8, !tbaa !66
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #26
  call void @gravsub(ptr nonnull sret(%struct.hgstruct) align 8 %8, ptr noundef %1, ptr noundef nonnull byval(%struct.hgstruct) align 8 %4) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %8, i64 64, i1 false), !tbaa.struct !68
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #26
  br label %27

27:                                               ; preds = %26, %23, %20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !68
  ret void
}

attributes #0 = { mustprogress nofree nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree nounwind }
attributes #9 = { mustprogress nofree nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind optsize willreturn memory(read) }
attributes #24 = { nounwind optsize }
attributes #25 = { optsize }
attributes #26 = { nounwind }
attributes #27 = { nounwind optsize allocsize(0) }
attributes #28 = { noreturn nounwind optsize }
attributes #29 = { cold optsize }
attributes #30 = { nounwind optsize willreturn memory(none) }

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
!13 = !{!14, !8, i64 32}
!14 = !{!"", !9, i64 0, !15, i64 24, !8, i64 32, !9, i64 40, !9, i64 552}
!15 = !{!"double", !9, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!18, !8, i64 48}
!18 = !{!"", !9, i64 0, !9, i64 24, !8, i64 48, !8, i64 56}
!19 = !{!20, !8, i64 128}
!20 = !{!"bnode", !21, i64 0, !15, i64 8, !9, i64 16, !12, i64 40, !12, i64 44, !9, i64 48, !9, i64 72, !9, i64 96, !15, i64 120, !8, i64 128, !8, i64 136}
!21 = !{!"short", !9, i64 0}
!22 = !{!18, !8, i64 56}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !24}
!28 = distinct !{!28, !24}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = distinct !{!31, !24}
!32 = !{!20, !8, i64 136}
!33 = !{!20, !12, i64 40}
!34 = distinct !{!34, !24}
!35 = distinct !{!35, !24}
!36 = distinct !{!36, !24}
!37 = !{!20, !21, i64 0}
!38 = !{!20, !12, i64 44}
!39 = !{!20, !15, i64 8}
!40 = distinct !{!40, !24}
!41 = distinct !{!41, !24}
!42 = distinct !{!42, !24}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24}
!45 = distinct !{!45, !24}
!46 = distinct !{!46, !24}
!47 = distinct !{!47, !24}
!48 = !{!14, !15, i64 24}
!49 = !{!50, !21, i64 0}
!50 = !{!"node", !21, i64 0, !15, i64 8, !9, i64 16, !12, i64 40, !12, i64 44}
!51 = distinct !{!51, !24}
!52 = !{!53, !8, i64 112}
!53 = !{!"cnode", !21, i64 0, !15, i64 8, !9, i64 16, !12, i64 40, !12, i64 44, !9, i64 48, !8, i64 112}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
!56 = distinct !{!56, !24}
!57 = distinct !{!57, !24}
!58 = distinct !{!58, !24}
!59 = distinct !{!59, !24}
!60 = distinct !{!60, !24}
!61 = distinct !{!61, !24}
!62 = distinct !{!62, !24}
!63 = distinct !{!63, !24}
!64 = distinct !{!64, !24}
!65 = distinct !{!65, !24}
!66 = !{!67, !8, i64 0}
!67 = !{!"", !8, i64 0, !9, i64 8, !15, i64 32, !9, i64 40}
!68 = !{i64 0, i64 8, !7, i64 8, i64 24, !69, i64 32, i64 8, !16, i64 40, i64 24, !69}
!69 = !{!9, !9, i64 0}
!70 = !{!67, !15, i64 32}
!71 = !{!20, !15, i64 120}
!72 = distinct !{!72, !24}
!73 = !{i32 0, i32 2}
!74 = distinct !{!74, !24}
!75 = distinct !{!75, !24}
!76 = !{!53, !21, i64 0}
!77 = !{!53, !12, i64 40}
!78 = distinct !{!78, !24}
!79 = distinct !{!79, !24}
!80 = distinct !{!80, !24}
!81 = distinct !{!81, !24}
!82 = !{!50, !15, i64 8}
!83 = distinct !{!83, !24}
!84 = distinct !{!84, !24}
!85 = distinct !{!85, !24}
!86 = distinct !{!86, !24}
!87 = distinct !{!87, !24}
!88 = distinct !{!88, !24}
!89 = distinct !{!89, !24}
!90 = distinct !{!90, !24}
!91 = distinct !{!91, !24}
