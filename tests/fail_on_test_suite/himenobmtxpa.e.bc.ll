; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Misc/himenobmtxpa.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Mat = type { ptr, i32, i32, i32, i32 }

@omega = internal global float 0x3FE99999A0000000, align 4
@.str = private unnamed_addr constant [34 x i8] c"mimax = %d mjmax = %d mkmax = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"imax = %d jmax = %d kmax =%d\0A\00", align 1
@p = internal global %struct.Mat zeroinitializer, align 8
@bnd = internal global %struct.Mat zeroinitializer, align 8
@wrk1 = internal global %struct.Mat zeroinitializer, align 8
@wrk2 = internal global %struct.Mat zeroinitializer, align 8
@a = internal global %struct.Mat zeroinitializer, align 8
@b = internal global %struct.Mat zeroinitializer, align 8
@c = internal global %struct.Mat zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c" Loop executed for %d times\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" Gosa : %e \0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 64, i32 noundef 64, i32 noundef 128) #8
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 63, i32 noundef 63, i32 noundef 127) #8
  store <4 x i32> <i32 1, i32 64, i32 64, i32 128>, ptr getelementptr inbounds (%struct.Mat, ptr @p, i64 0, i32 1), align 8, !tbaa !7
  %5 = tail call noalias dereferenceable_or_null(2097152) ptr @malloc(i64 noundef 2097152) #9
  store ptr %5, ptr @p, align 8, !tbaa !11
  store <4 x i32> <i32 1, i32 64, i32 64, i32 128>, ptr getelementptr inbounds (%struct.Mat, ptr @bnd, i64 0, i32 1), align 8, !tbaa !7
  %6 = tail call noalias dereferenceable_or_null(2097152) ptr @malloc(i64 noundef 2097152) #9
  store ptr %6, ptr @bnd, align 8, !tbaa !11
  store <4 x i32> <i32 1, i32 64, i32 64, i32 128>, ptr getelementptr inbounds (%struct.Mat, ptr @wrk1, i64 0, i32 1), align 8, !tbaa !7
  %7 = tail call noalias dereferenceable_or_null(2097152) ptr @malloc(i64 noundef 2097152) #9
  store ptr %7, ptr @wrk1, align 8, !tbaa !11
  store <4 x i32> <i32 1, i32 64, i32 64, i32 128>, ptr getelementptr inbounds (%struct.Mat, ptr @wrk2, i64 0, i32 1), align 8, !tbaa !7
  %8 = tail call noalias dereferenceable_or_null(2097152) ptr @malloc(i64 noundef 2097152) #9
  store ptr %8, ptr @wrk2, align 8, !tbaa !11
  store <4 x i32> <i32 4, i32 64, i32 64, i32 128>, ptr getelementptr inbounds (%struct.Mat, ptr @a, i64 0, i32 1), align 8, !tbaa !7
  %9 = tail call noalias dereferenceable_or_null(8388608) ptr @malloc(i64 noundef 8388608) #9
  store ptr %9, ptr @a, align 8, !tbaa !11
  store <4 x i32> <i32 3, i32 64, i32 64, i32 128>, ptr getelementptr inbounds (%struct.Mat, ptr @b, i64 0, i32 1), align 8, !tbaa !7
  %10 = tail call noalias dereferenceable_or_null(6291456) ptr @malloc(i64 noundef 6291456) #9
  store ptr %10, ptr @b, align 8, !tbaa !11
  store <4 x i32> <i32 3, i32 64, i32 64, i32 128>, ptr getelementptr inbounds (%struct.Mat, ptr @c, i64 0, i32 1), align 8, !tbaa !7
  %11 = tail call noalias dereferenceable_or_null(6291456) ptr @malloc(i64 noundef 6291456) #9
  store ptr %11, ptr @c, align 8, !tbaa !11
  tail call void @mat_set_init(ptr noundef nonnull @p) #8
  tail call void @mat_set(ptr noundef nonnull @bnd, i32 noundef 0, float noundef 1.000000e+00) #8
  tail call void @mat_set(ptr noundef nonnull @wrk1, i32 noundef 0, float noundef 0.000000e+00) #8
  tail call void @mat_set(ptr noundef nonnull @wrk2, i32 noundef 0, float noundef 0.000000e+00) #8
  tail call void @mat_set(ptr noundef nonnull @a, i32 noundef 0, float noundef 1.000000e+00) #8
  tail call void @mat_set(ptr noundef nonnull @a, i32 noundef 1, float noundef 1.000000e+00) #8
  tail call void @mat_set(ptr noundef nonnull @a, i32 noundef 2, float noundef 1.000000e+00) #8
  tail call void @mat_set(ptr noundef nonnull @a, i32 noundef 3, float noundef 0x3FC5555560000000) #8
  tail call void @mat_set(ptr noundef nonnull @b, i32 noundef 0, float noundef 0.000000e+00) #8
  tail call void @mat_set(ptr noundef nonnull @b, i32 noundef 1, float noundef 0.000000e+00) #8
  tail call void @mat_set(ptr noundef nonnull @b, i32 noundef 2, float noundef 0.000000e+00) #8
  tail call void @mat_set(ptr noundef nonnull @c, i32 noundef 0, float noundef 1.000000e+00) #8
  tail call void @mat_set(ptr noundef nonnull @c, i32 noundef 1, float noundef 1.000000e+00) #8
  tail call void @mat_set(ptr noundef nonnull @c, i32 noundef 2, float noundef 1.000000e+00) #8
  %12 = tail call float @jacobi(i32 noundef 64, ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @p, ptr noundef nonnull @bnd, ptr noundef nonnull @wrk1, ptr noundef nonnull @wrk2) #8
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 64) #8
  %14 = fpext float %12 to double
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %14) #8
  %16 = load ptr, ptr @p, align 8, !tbaa !11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  tail call void @free(ptr noundef nonnull %16) #10
  br label %19

19:                                               ; preds = %18, %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @p, i8 0, i64 24, i1 false)
  %20 = load ptr, ptr @bnd, align 8, !tbaa !11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @free(ptr noundef nonnull %20) #10
  br label %23

23:                                               ; preds = %22, %19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @bnd, i8 0, i64 24, i1 false)
  %24 = load ptr, ptr @wrk1, align 8, !tbaa !11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %24) #10
  br label %27

27:                                               ; preds = %26, %23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @wrk1, i8 0, i64 24, i1 false)
  %28 = load ptr, ptr @wrk2, align 8, !tbaa !11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @free(ptr noundef nonnull %28) #10
  br label %31

31:                                               ; preds = %30, %27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @wrk2, i8 0, i64 24, i1 false)
  %32 = load ptr, ptr @a, align 8, !tbaa !11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @free(ptr noundef nonnull %32) #10
  br label %35

35:                                               ; preds = %34, %31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @a, i8 0, i64 24, i1 false)
  %36 = load ptr, ptr @b, align 8, !tbaa !11
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @free(ptr noundef nonnull %36) #10
  br label %39

39:                                               ; preds = %38, %35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @b, i8 0, i64 24, i1 false)
  %40 = load ptr, ptr @c, align 8, !tbaa !11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void @free(ptr noundef nonnull %40) #10
  br label %43

43:                                               ; preds = %42, %39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @c, i8 0, i64 24, i1 false)
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @mat_set_init(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.Mat, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !14
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %73

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Mat, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !15
  %8 = icmp sgt i32 %7, 0
  %9 = getelementptr inbounds %struct.Mat, ptr %0, i64 0, i32 4
  %10 = add nsw i32 %3, -1
  %11 = mul nsw i32 %10, %10
  %12 = sitofp i32 %11 to float
  %13 = zext i32 %7 to i64
  br label %14

14:                                               ; preds = %70, %5
  %15 = phi i32 [ 0, %5 ], [ %71, %70 ]
  br i1 %8, label %16, label %70

16:                                               ; preds = %14
  %17 = load i32, ptr %9, align 4, !tbaa !16
  %18 = icmp sgt i32 %17, 0
  %19 = mul nsw i32 %15, %15
  %20 = sitofp i32 %19 to float
  %21 = fdiv float %20, %12
  %22 = mul nsw i32 %7, %15
  %23 = zext i32 %17 to i64
  %24 = add nuw nsw i64 %23, 3
  %25 = and i64 %24, 8589934588
  %26 = add nsw i64 %23, -1
  %27 = insertelement <4 x i64> poison, i64 %26, i64 0
  %28 = shufflevector <4 x i64> %27, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %29

29:                                               ; preds = %67, %16
  %30 = phi i64 [ 0, %16 ], [ %68, %67 ]
  br i1 %18, label %31, label %67

31:                                               ; preds = %29
  %32 = load ptr, ptr %0, align 8, !tbaa !11
  %33 = trunc i64 %30 to i32
  %34 = add i32 %22, %33
  %35 = mul i32 %17, %34
  %36 = sext i32 %35 to i64
  br label %37

37:                                               ; preds = %63, %31
  %38 = phi i64 [ 0, %31 ], [ %64, %63 ]
  %39 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %31 ], [ %65, %63 ]
  %40 = icmp ule <4 x i64> %39, %28
  %41 = extractelement <4 x i1> %40, i64 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = add nsw i64 %38, %36
  %44 = getelementptr inbounds float, ptr %32, i64 %43
  store float %21, ptr %44, align 4, !tbaa !17
  br label %45

45:                                               ; preds = %42, %37
  %46 = extractelement <4 x i1> %40, i64 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = or i64 %38, 1
  %49 = add nsw i64 %48, %36
  %50 = getelementptr inbounds float, ptr %32, i64 %49
  store float %21, ptr %50, align 4, !tbaa !17
  br label %51

51:                                               ; preds = %47, %45
  %52 = extractelement <4 x i1> %40, i64 2
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  %54 = or i64 %38, 2
  %55 = add nsw i64 %54, %36
  %56 = getelementptr inbounds float, ptr %32, i64 %55
  store float %21, ptr %56, align 4, !tbaa !17
  br label %57

57:                                               ; preds = %53, %51
  %58 = extractelement <4 x i1> %40, i64 3
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  %60 = or i64 %38, 3
  %61 = add nsw i64 %60, %36
  %62 = getelementptr inbounds float, ptr %32, i64 %61
  store float %21, ptr %62, align 4, !tbaa !17
  br label %63

63:                                               ; preds = %59, %57
  %64 = add i64 %38, 4
  %65 = add <4 x i64> %39, <i64 4, i64 4, i64 4, i64 4>
  %66 = icmp eq i64 %64, %25
  br i1 %66, label %67, label %37, !llvm.loop !19

67:                                               ; preds = %63, %29
  %68 = add nuw nsw i64 %30, 1
  %69 = icmp eq i64 %68, %13
  br i1 %69, label %70, label %29, !llvm.loop !23

70:                                               ; preds = %67, %14
  %71 = add nuw nsw i32 %15, 1
  %72 = icmp eq i32 %71, %3
  br i1 %72, label %73, label %14, !llvm.loop !24

73:                                               ; preds = %70, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @mat_set(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2) #3 {
  %4 = getelementptr inbounds %struct.Mat, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !14
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %71

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Mat, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !15
  %10 = icmp sgt i32 %9, 0
  %11 = getelementptr inbounds %struct.Mat, ptr %0, i64 0, i32 4
  %12 = mul nsw i32 %5, %1
  %13 = zext i32 %9 to i64
  br label %14

14:                                               ; preds = %68, %7
  %15 = phi i32 [ 0, %7 ], [ %69, %68 ]
  br i1 %10, label %16, label %68

16:                                               ; preds = %14
  %17 = load i32, ptr %11, align 4, !tbaa !16
  %18 = icmp sgt i32 %17, 0
  %19 = add i32 %12, %15
  %20 = mul i32 %9, %19
  %21 = zext i32 %17 to i64
  %22 = add nuw nsw i64 %21, 3
  %23 = and i64 %22, 8589934588
  %24 = add nsw i64 %21, -1
  %25 = insertelement <4 x i64> poison, i64 %24, i64 0
  %26 = shufflevector <4 x i64> %25, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %27

27:                                               ; preds = %65, %16
  %28 = phi i64 [ 0, %16 ], [ %66, %65 ]
  br i1 %18, label %29, label %65

29:                                               ; preds = %27
  %30 = load ptr, ptr %0, align 8, !tbaa !11
  %31 = trunc i64 %28 to i32
  %32 = add i32 %20, %31
  %33 = mul i32 %17, %32
  %34 = sext i32 %33 to i64
  br label %35

35:                                               ; preds = %61, %29
  %36 = phi i64 [ 0, %29 ], [ %62, %61 ]
  %37 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %29 ], [ %63, %61 ]
  %38 = icmp ule <4 x i64> %37, %26
  %39 = extractelement <4 x i1> %38, i64 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = add nsw i64 %36, %34
  %42 = getelementptr inbounds float, ptr %30, i64 %41
  store float %2, ptr %42, align 4, !tbaa !17
  br label %43

43:                                               ; preds = %40, %35
  %44 = extractelement <4 x i1> %38, i64 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = or i64 %36, 1
  %47 = add nsw i64 %46, %34
  %48 = getelementptr inbounds float, ptr %30, i64 %47
  store float %2, ptr %48, align 4, !tbaa !17
  br label %49

49:                                               ; preds = %45, %43
  %50 = extractelement <4 x i1> %38, i64 2
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  %52 = or i64 %36, 2
  %53 = add nsw i64 %52, %34
  %54 = getelementptr inbounds float, ptr %30, i64 %53
  store float %2, ptr %54, align 4, !tbaa !17
  br label %55

55:                                               ; preds = %51, %49
  %56 = extractelement <4 x i1> %38, i64 3
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  %58 = or i64 %36, 3
  %59 = add nsw i64 %58, %34
  %60 = getelementptr inbounds float, ptr %30, i64 %59
  store float %2, ptr %60, align 4, !tbaa !17
  br label %61

61:                                               ; preds = %57, %55
  %62 = add i64 %36, 4
  %63 = add <4 x i64> %37, <i64 4, i64 4, i64 4, i64 4>
  %64 = icmp eq i64 %62, %23
  br i1 %64, label %65, label %35, !llvm.loop !25

65:                                               ; preds = %61, %27
  %66 = add nuw nsw i64 %28, 1
  %67 = icmp eq i64 %66, %13
  br i1 %67, label %68, label %27, !llvm.loop !26

68:                                               ; preds = %65, %14
  %69 = add nuw nsw i32 %15, 1
  %70 = icmp eq i32 %69, %5
  br i1 %70, label %71, label %14, !llvm.loop !27

71:                                               ; preds = %68, %3
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal float @jacobi(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7) #4 {
  %9 = getelementptr inbounds %struct.Mat, ptr %4, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !14
  %11 = add i32 %10, -1
  %12 = getelementptr inbounds %struct.Mat, ptr %4, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.Mat, ptr %4, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !16
  %16 = icmp sgt i32 %0, 0
  br i1 %16, label %17, label %340

17:                                               ; preds = %8
  %18 = add i32 %15, -1
  %19 = add i32 %13, -1
  %20 = icmp sgt i32 %10, 2
  %21 = icmp sgt i32 %13, 2
  %22 = icmp sgt i32 %15, 2
  %23 = getelementptr inbounds %struct.Mat, ptr %1, i64 0, i32 2
  %24 = getelementptr inbounds %struct.Mat, ptr %1, i64 0, i32 3
  %25 = getelementptr inbounds %struct.Mat, ptr %1, i64 0, i32 4
  %26 = mul i32 %15, %13
  %27 = getelementptr inbounds %struct.Mat, ptr %2, i64 0, i32 2
  %28 = getelementptr inbounds %struct.Mat, ptr %2, i64 0, i32 3
  %29 = getelementptr inbounds %struct.Mat, ptr %2, i64 0, i32 4
  %30 = getelementptr inbounds %struct.Mat, ptr %3, i64 0, i32 2
  %31 = getelementptr inbounds %struct.Mat, ptr %3, i64 0, i32 3
  %32 = getelementptr inbounds %struct.Mat, ptr %3, i64 0, i32 4
  %33 = getelementptr inbounds %struct.Mat, ptr %6, i64 0, i32 3
  %34 = getelementptr inbounds %struct.Mat, ptr %6, i64 0, i32 4
  %35 = getelementptr inbounds %struct.Mat, ptr %5, i64 0, i32 3
  %36 = getelementptr inbounds %struct.Mat, ptr %5, i64 0, i32 4
  %37 = getelementptr inbounds %struct.Mat, ptr %7, i64 0, i32 3
  %38 = getelementptr inbounds %struct.Mat, ptr %7, i64 0, i32 4
  %39 = sext i32 %15 to i64
  %40 = zext i32 %11 to i64
  %41 = zext i32 %19 to i64
  %42 = zext i32 %18 to i64
  %43 = zext i32 %19 to i64
  %44 = zext i32 %18 to i64
  br label %45

45:                                               ; preds = %336, %17
  %46 = phi i32 [ 0, %17 ], [ %338, %336 ]
  br i1 %20, label %48, label %336

47:                                               ; preds = %299
  %.lcssa = phi float [ %300, %299 ]
  br i1 %20, label %302, label %336

48:                                               ; preds = %299, %45
  %49 = phi i64 [ %51, %299 ], [ 1, %45 ]
  %50 = phi float [ %300, %299 ], [ 0.000000e+00, %45 ]
  %51 = add nuw nsw i64 %49, 1
  br i1 %21, label %52, label %299

52:                                               ; preds = %48
  %53 = trunc i64 %51 to i32
  %54 = mul i32 %26, %53
  %55 = trunc i64 %49 to i32
  %56 = mul i32 %26, %55
  %57 = trunc i64 %49 to i32
  %58 = add i32 %57, -1
  %59 = mul i32 %26, %58
  %60 = sext i32 %54 to i64
  %61 = sext i32 %59 to i64
  %62 = sext i32 %56 to i64
  br label %63

63:                                               ; preds = %295, %52
  %64 = phi i64 [ 1, %52 ], [ %296, %295 ]
  %65 = phi float [ %50, %52 ], [ %297, %295 ]
  br i1 %22, label %68, label %66

66:                                               ; preds = %63
  %67 = add nuw nsw i64 %64, 1
  br label %295

68:                                               ; preds = %63
  %69 = load ptr, ptr %1, align 8, !tbaa !11
  %70 = load i32, ptr %23, align 4, !tbaa !14
  %71 = load i32, ptr %24, align 8, !tbaa !15
  %72 = load i32, ptr %25, align 4, !tbaa !16
  %73 = mul nsw i32 %71, %55
  %74 = trunc i64 %64 to i32
  %75 = add i32 %73, %74
  %76 = mul i32 %75, %72
  %77 = load ptr, ptr %4, align 8, !tbaa !11
  %78 = mul nsw i64 %64, %39
  %79 = add nsw i64 %78, %60
  %80 = add i32 %70, %55
  %81 = mul i32 %80, %71
  %82 = add i32 %81, %74
  %83 = mul i32 %82, %72
  %84 = add nuw nsw i64 %64, 1
  %85 = mul nsw i64 %84, %39
  %86 = add nsw i64 %85, %62
  %87 = shl nsw i32 %70, 1
  %88 = add i32 %87, %55
  %89 = mul i32 %88, %71
  %90 = add i32 %89, %74
  %91 = mul i32 %90, %72
  %92 = add nsw i64 %78, %62
  %93 = load ptr, ptr %2, align 8, !tbaa !11
  %94 = load i32, ptr %27, align 4, !tbaa !14
  %95 = load i32, ptr %28, align 8, !tbaa !15
  %96 = load i32, ptr %29, align 4, !tbaa !16
  %97 = mul nsw i32 %95, %55
  %98 = add i32 %97, %74
  %99 = mul i32 %98, %96
  %100 = add nsw i64 %85, %60
  %101 = add nsw i64 %64, -1
  %102 = mul nsw i64 %101, %39
  %103 = add nsw i64 %102, %60
  %104 = add nsw i64 %85, %61
  %105 = add nsw i64 %102, %61
  %106 = add i32 %94, %55
  %107 = mul i32 %106, %95
  %108 = add i32 %107, %74
  %109 = mul i32 %108, %96
  %110 = add nsw i64 %102, %62
  %111 = shl nsw i32 %94, 1
  %112 = add i32 %111, %55
  %113 = mul i32 %112, %95
  %114 = add i32 %113, %74
  %115 = mul i32 %114, %96
  %116 = add nsw i64 %78, %61
  %117 = load ptr, ptr %3, align 8, !tbaa !11
  %118 = load i32, ptr %30, align 4, !tbaa !14
  %119 = load i32, ptr %31, align 8, !tbaa !15
  %120 = load i32, ptr %32, align 4, !tbaa !16
  %121 = mul nsw i32 %119, %55
  %122 = add i32 %121, %74
  %123 = mul i32 %122, %120
  %124 = add i32 %118, %55
  %125 = mul i32 %124, %119
  %126 = add i32 %125, %74
  %127 = mul i32 %126, %120
  %128 = shl nsw i32 %118, 1
  %129 = add i32 %128, %55
  %130 = mul i32 %129, %119
  %131 = add i32 %130, %74
  %132 = mul i32 %131, %120
  %133 = load ptr, ptr %6, align 8, !tbaa !11
  %134 = load i32, ptr %33, align 8, !tbaa !15
  %135 = load i32, ptr %34, align 4, !tbaa !16
  %136 = mul nsw i32 %134, %55
  %137 = add i32 %136, %74
  %138 = mul i32 %137, %135
  %139 = mul nsw i32 %70, 3
  %140 = add i32 %139, %55
  %141 = mul i32 %140, %71
  %142 = add i32 %141, %74
  %143 = mul i32 %142, %72
  %144 = load ptr, ptr %5, align 8, !tbaa !11
  %145 = load i32, ptr %35, align 8, !tbaa !15
  %146 = load i32, ptr %36, align 4, !tbaa !16
  %147 = mul nsw i32 %145, %55
  %148 = add i32 %147, %74
  %149 = mul i32 %148, %146
  %150 = load ptr, ptr %7, align 8, !tbaa !11
  %151 = load i32, ptr %37, align 8, !tbaa !15
  %152 = load i32, ptr %38, align 4, !tbaa !16
  %153 = mul nsw i32 %151, %55
  %154 = add i32 %153, %74
  %155 = mul i32 %154, %152
  %156 = sext i32 %76 to i64
  %157 = sext i32 %83 to i64
  %158 = sext i32 %91 to i64
  %159 = sext i32 %99 to i64
  %160 = sext i32 %109 to i64
  %161 = sext i32 %115 to i64
  %162 = sext i32 %123 to i64
  %163 = sext i32 %127 to i64
  %164 = sext i32 %132 to i64
  %165 = sext i32 %138 to i64
  %166 = sext i32 %143 to i64
  %167 = sext i32 %149 to i64
  %168 = sext i32 %155 to i64
  br label %169

169:                                              ; preds = %169, %68
  %170 = phi i64 [ 1, %68 ], [ %189, %169 ]
  %171 = phi float [ %65, %68 ], [ %289, %169 ]
  %172 = add nsw i64 %170, %156
  %173 = getelementptr inbounds float, ptr %69, i64 %172
  %174 = load float, ptr %173, align 4, !tbaa !17
  %175 = add nsw i64 %170, %79
  %176 = getelementptr inbounds float, ptr %77, i64 %175
  %177 = load float, ptr %176, align 4, !tbaa !17
  %178 = add nsw i64 %170, %157
  %179 = getelementptr inbounds float, ptr %69, i64 %178
  %180 = load float, ptr %179, align 4, !tbaa !17
  %181 = add nsw i64 %170, %86
  %182 = getelementptr inbounds float, ptr %77, i64 %181
  %183 = load float, ptr %182, align 4, !tbaa !17
  %184 = fmul float %180, %183
  %185 = tail call float @llvm.fmuladd.f32(float %174, float %177, float %184)
  %186 = add nsw i64 %170, %158
  %187 = getelementptr inbounds float, ptr %69, i64 %186
  %188 = load float, ptr %187, align 4, !tbaa !17
  %189 = add nuw nsw i64 %170, 1
  %190 = add nsw i64 %189, %92
  %191 = getelementptr inbounds float, ptr %77, i64 %190
  %192 = load float, ptr %191, align 4, !tbaa !17
  %193 = tail call float @llvm.fmuladd.f32(float %188, float %192, float %185)
  %194 = add nsw i64 %170, %159
  %195 = getelementptr inbounds float, ptr %93, i64 %194
  %196 = load float, ptr %195, align 4, !tbaa !17
  %197 = add nsw i64 %100, %170
  %198 = getelementptr inbounds float, ptr %77, i64 %197
  %199 = load float, ptr %198, align 4, !tbaa !17
  %200 = add nsw i64 %103, %170
  %201 = getelementptr inbounds float, ptr %77, i64 %200
  %202 = load float, ptr %201, align 4, !tbaa !17
  %203 = fsub float %199, %202
  %204 = add nsw i64 %104, %170
  %205 = getelementptr inbounds float, ptr %77, i64 %204
  %206 = load float, ptr %205, align 4, !tbaa !17
  %207 = fsub float %203, %206
  %208 = add nsw i64 %105, %170
  %209 = getelementptr inbounds float, ptr %77, i64 %208
  %210 = load float, ptr %209, align 4, !tbaa !17
  %211 = fadd float %207, %210
  %212 = tail call float @llvm.fmuladd.f32(float %196, float %211, float %193)
  %213 = add nsw i64 %170, %160
  %214 = getelementptr inbounds float, ptr %93, i64 %213
  %215 = load float, ptr %214, align 4, !tbaa !17
  %216 = add nsw i64 %189, %86
  %217 = getelementptr inbounds float, ptr %77, i64 %216
  %218 = load float, ptr %217, align 4, !tbaa !17
  %219 = add nsw i64 %189, %110
  %220 = getelementptr inbounds float, ptr %77, i64 %219
  %221 = load float, ptr %220, align 4, !tbaa !17
  %222 = fsub float %218, %221
  %223 = add nsw i64 %170, -1
  %224 = add nsw i64 %223, %86
  %225 = getelementptr inbounds float, ptr %77, i64 %224
  %226 = load float, ptr %225, align 4, !tbaa !17
  %227 = fsub float %222, %226
  %228 = add nsw i64 %223, %110
  %229 = getelementptr inbounds float, ptr %77, i64 %228
  %230 = load float, ptr %229, align 4, !tbaa !17
  %231 = fadd float %227, %230
  %232 = tail call float @llvm.fmuladd.f32(float %215, float %231, float %212)
  %233 = add nsw i64 %170, %161
  %234 = getelementptr inbounds float, ptr %93, i64 %233
  %235 = load float, ptr %234, align 4, !tbaa !17
  %236 = add nsw i64 %189, %79
  %237 = getelementptr inbounds float, ptr %77, i64 %236
  %238 = load float, ptr %237, align 4, !tbaa !17
  %239 = add nsw i64 %189, %116
  %240 = getelementptr inbounds float, ptr %77, i64 %239
  %241 = load float, ptr %240, align 4, !tbaa !17
  %242 = fsub float %238, %241
  %243 = add nsw i64 %223, %79
  %244 = getelementptr inbounds float, ptr %77, i64 %243
  %245 = load float, ptr %244, align 4, !tbaa !17
  %246 = fsub float %242, %245
  %247 = add nsw i64 %223, %116
  %248 = getelementptr inbounds float, ptr %77, i64 %247
  %249 = load float, ptr %248, align 4, !tbaa !17
  %250 = fadd float %246, %249
  %251 = tail call float @llvm.fmuladd.f32(float %235, float %250, float %232)
  %252 = add nsw i64 %170, %162
  %253 = getelementptr inbounds float, ptr %117, i64 %252
  %254 = load float, ptr %253, align 4, !tbaa !17
  %255 = add nsw i64 %170, %116
  %256 = getelementptr inbounds float, ptr %77, i64 %255
  %257 = load float, ptr %256, align 4, !tbaa !17
  %258 = tail call float @llvm.fmuladd.f32(float %254, float %257, float %251)
  %259 = add nsw i64 %170, %163
  %260 = getelementptr inbounds float, ptr %117, i64 %259
  %261 = load float, ptr %260, align 4, !tbaa !17
  %262 = add nsw i64 %170, %110
  %263 = getelementptr inbounds float, ptr %77, i64 %262
  %264 = load float, ptr %263, align 4, !tbaa !17
  %265 = tail call float @llvm.fmuladd.f32(float %261, float %264, float %258)
  %266 = add nsw i64 %170, %164
  %267 = getelementptr inbounds float, ptr %117, i64 %266
  %268 = load float, ptr %267, align 4, !tbaa !17
  %269 = add nsw i64 %223, %92
  %270 = getelementptr inbounds float, ptr %77, i64 %269
  %271 = load float, ptr %270, align 4, !tbaa !17
  %272 = tail call float @llvm.fmuladd.f32(float %268, float %271, float %265)
  %273 = add nsw i64 %170, %165
  %274 = getelementptr inbounds float, ptr %133, i64 %273
  %275 = load float, ptr %274, align 4, !tbaa !17
  %276 = fadd float %272, %275
  %277 = add nsw i64 %170, %166
  %278 = getelementptr inbounds float, ptr %69, i64 %277
  %279 = load float, ptr %278, align 4, !tbaa !17
  %280 = add nsw i64 %170, %92
  %281 = getelementptr inbounds float, ptr %77, i64 %280
  %282 = load float, ptr %281, align 4, !tbaa !17
  %283 = fneg float %282
  %284 = tail call float @llvm.fmuladd.f32(float %276, float %279, float %283)
  %285 = add nsw i64 %170, %167
  %286 = getelementptr inbounds float, ptr %144, i64 %285
  %287 = load float, ptr %286, align 4, !tbaa !17
  %288 = fmul float %284, %287
  %289 = tail call float @llvm.fmuladd.f32(float %288, float %288, float %171)
  %290 = load float, ptr @omega, align 4, !tbaa !17
  %291 = tail call float @llvm.fmuladd.f32(float %290, float %288, float %282)
  %292 = add nsw i64 %170, %168
  %293 = getelementptr inbounds float, ptr %150, i64 %292
  store float %291, ptr %293, align 4, !tbaa !17
  %294 = icmp eq i64 %189, %42
  br i1 %294, label %295, label %169, !llvm.loop !28

295:                                              ; preds = %169, %66
  %296 = phi i64 [ %67, %66 ], [ %84, %169 ]
  %297 = phi float [ %65, %66 ], [ %289, %169 ]
  %298 = icmp eq i64 %296, %41
  br i1 %298, label %299, label %63, !llvm.loop !29

299:                                              ; preds = %295, %48
  %300 = phi float [ %50, %48 ], [ %297, %295 ]
  %301 = icmp eq i64 %51, %40
  br i1 %301, label %47, label %48, !llvm.loop !30

302:                                              ; preds = %333, %47
  %303 = phi i32 [ %334, %333 ], [ 1, %47 ]
  br i1 %21, label %304, label %333

304:                                              ; preds = %302
  %305 = mul nsw i32 %303, %13
  br label %306

306:                                              ; preds = %330, %304
  %307 = phi i64 [ 1, %304 ], [ %331, %330 ]
  br i1 %22, label %308, label %330

308:                                              ; preds = %306
  %309 = load ptr, ptr %7, align 8, !tbaa !11
  %310 = load i32, ptr %37, align 8, !tbaa !15
  %311 = load i32, ptr %38, align 4, !tbaa !16
  %312 = mul nsw i32 %310, %303
  %313 = trunc i64 %307 to i32
  %314 = add i32 %312, %313
  %315 = mul i32 %314, %311
  %316 = load ptr, ptr %4, align 8, !tbaa !11
  %317 = add i32 %305, %313
  %318 = mul i32 %317, %15
  %319 = sext i32 %315 to i64
  %320 = sext i32 %318 to i64
  br label %321

321:                                              ; preds = %321, %308
  %322 = phi i64 [ 1, %308 ], [ %328, %321 ]
  %323 = add nsw i64 %322, %319
  %324 = getelementptr inbounds float, ptr %309, i64 %323
  %325 = load float, ptr %324, align 4, !tbaa !17
  %326 = add nsw i64 %322, %320
  %327 = getelementptr inbounds float, ptr %316, i64 %326
  store float %325, ptr %327, align 4, !tbaa !17
  %328 = add nuw nsw i64 %322, 1
  %329 = icmp eq i64 %328, %44
  br i1 %329, label %330, label %321, !llvm.loop !31

330:                                              ; preds = %321, %306
  %331 = add nuw nsw i64 %307, 1
  %332 = icmp eq i64 %331, %43
  br i1 %332, label %333, label %306, !llvm.loop !32

333:                                              ; preds = %330, %302
  %334 = add nuw nsw i32 %303, 1
  %335 = icmp eq i32 %334, %11
  br i1 %335, label %336, label %302, !llvm.loop !33

336:                                              ; preds = %333, %47, %45
  %337 = phi float [ %.lcssa, %47 ], [ 0.000000e+00, %45 ], [ %.lcssa, %333 ]
  %338 = add nuw nsw i32 %46, 1
  %339 = icmp eq i32 %338, %0
  br i1 %339, label %340, label %45, !llvm.loop !34

340:                                              ; preds = %336, %8
  %341 = phi float [ undef, %8 ], [ %337, %336 ]
  ret float %341
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize allocsize(0) }
attributes #10 = { nounwind optsize }

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
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"Mat", !13, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!12, !8, i64 12}
!15 = !{!12, !8, i64 16}
!16 = !{!12, !8, i64 20}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !9, i64 0}
!19 = distinct !{!19, !20, !21, !22}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20, !21, !22}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !20}
!28 = distinct !{!28, !20}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20}
