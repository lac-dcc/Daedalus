; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/VersaBench/beamformer/beamformer.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BeamFirData = type { i32, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"i:\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@numiters = internal unnamed_addr global i32 100, align 4
@detector_out_StrictFP = internal global [4 x [512 x float]] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"A = %lf and B = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %5, %2
  %4 = tail call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str) #15
  switch i32 %4, label %5 [
    i32 -1, label %9
    i32 105, label %6
  ]

5:                                                ; preds = %6, %3
  br label %3, !llvm.loop !7

6:                                                ; preds = %3
  %7 = load ptr, ptr @optarg, align 8, !tbaa !9
  %8 = tail call i32 @atoi(ptr nocapture noundef %7) #16
  store i32 %8, ptr @numiters, align 4, !tbaa !13
  br label %5

9:                                                ; preds = %3
  tail call void @begin_StrictFP() #17
  tail call void @begin() #17
  ret i32 0
}

; Function Attrs: nounwind optsize
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize uwtable
define internal void @begin_StrictFP() #3 {
  %1 = alloca [12 x %struct.BeamFirData], align 16
  %2 = alloca [12 x %struct.BeamFirData], align 16
  %3 = alloca [4 x %struct.BeamFirData], align 16
  %4 = alloca [24576 x float], align 16
  %5 = alloca [24576 x float], align 16
  %6 = alloca [12 x [12288 x float]], align 16
  %7 = alloca [4 x [24 x float]], align 16
  %8 = alloca [12288 x float], align 16
  %9 = alloca [1024 x float], align 16
  %10 = alloca [1024 x float], align 16
  %11 = alloca [512 x float], align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 98304, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 98304, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 589824, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 49152, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %11) #18
  br label %12

12:                                               ; preds = %12, %0
  %13 = phi i64 [ 0, %0 ], [ %16, %12 ]
  %14 = getelementptr inbounds [12 x %struct.BeamFirData], ptr %1, i64 0, i64 %13
  call void @BeamFirSetup_StrictFP(ptr noundef nonnull %14, i32 noundef 64) #17
  %15 = getelementptr inbounds [12 x %struct.BeamFirData], ptr %2, i64 0, i64 %13
  call void @BeamFirSetup_StrictFP(ptr noundef nonnull %15, i32 noundef 64) #17
  %16 = add nuw nsw i64 %13, 1
  %17 = icmp eq i64 %16, 12
  br i1 %17, label %18, label %12, !llvm.loop !15

18:                                               ; preds = %37, %12
  %19 = phi i64 [ %38, %37 ], [ 0, %12 ]
  %20 = getelementptr inbounds [4 x %struct.BeamFirData], ptr %3, i64 0, i64 %19
  call void @BeamFirSetup_StrictFP(ptr noundef nonnull %20, i32 noundef 512) #17
  %21 = getelementptr inbounds [4 x [24 x float]], ptr %7, i64 0, i64 %19
  %22 = shl nuw nsw i64 %19, 1
  %23 = getelementptr inbounds float, ptr %21, i64 %22
  br label %24

24:                                               ; preds = %31, %18
  %25 = phi i64 [ 0, %18 ], [ %35, %31 ]
  %26 = icmp eq i64 %25, %19
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store float 1.000000e+00, ptr %23, align 8, !tbaa !16
  br label %31

28:                                               ; preds = %24
  %29 = shl nuw nsw i64 %25, 1
  %30 = getelementptr inbounds float, ptr %21, i64 %29
  store float 0.000000e+00, ptr %30, align 8, !tbaa !16
  br label %31

31:                                               ; preds = %28, %27
  %32 = phi i64 [ %22, %27 ], [ %29, %28 ]
  %33 = or i64 %32, 1
  %34 = getelementptr inbounds float, ptr %21, i64 %33
  store float 0.000000e+00, ptr %34, align 4, !tbaa !16
  %35 = add nuw nsw i64 %25, 1
  %36 = icmp eq i64 %35, 12
  br i1 %36, label %37, label %24, !llvm.loop !18

37:                                               ; preds = %31
  %38 = add nuw nsw i64 %19, 1
  %39 = icmp eq i64 %38, 4
  br i1 %39, label %40, label %18, !llvm.loop !19

40:                                               ; preds = %69, %37
  %41 = phi i64 [ %70, %69 ], [ 0, %37 ]
  %42 = trunc i64 %41 to i32
  br label %45

43:                                               ; preds = %45
  %44 = getelementptr inbounds [12 x %struct.BeamFirData], ptr %1, i64 0, i64 %41
  br label %54

45:                                               ; preds = %45, %40
  %46 = phi i64 [ 0, %40 ], [ %49, %45 ]
  %47 = shl nuw nsw i64 %46, 11
  %48 = getelementptr inbounds float, ptr %4, i64 %47
  call void @InputGenerate_StrictFP(i32 noundef %42, ptr noundef nonnull %48, i32 noundef 1024) #17
  %49 = add nuw nsw i64 %46, 1
  %50 = icmp eq i64 %49, 12
  br i1 %50, label %43, label %45, !llvm.loop !20

51:                                               ; preds = %54
  %52 = getelementptr inbounds [12 x %struct.BeamFirData], ptr %2, i64 0, i64 %41
  %53 = getelementptr inbounds [12 x [12288 x float]], ptr %6, i64 0, i64 %41
  br label %61

54:                                               ; preds = %54, %43
  %55 = phi i64 [ 0, %43 ], [ %59, %54 ]
  %56 = shl nuw nsw i64 %55, 1
  %57 = getelementptr inbounds float, ptr %4, i64 %56
  %58 = getelementptr inbounds float, ptr %5, i64 %56
  call void @BeamFirFilter_StrictFP(ptr noundef nonnull %44, i32 noundef 1024, i32 noundef 1, ptr noundef nonnull %57, ptr noundef nonnull %58) #17
  %59 = add nuw nsw i64 %55, 1
  %60 = icmp eq i64 %59, 1024
  br i1 %60, label %51, label %54, !llvm.loop !21

61:                                               ; preds = %61, %51
  %62 = phi i64 [ 0, %51 ], [ %67, %61 ]
  %63 = shl nuw nsw i64 %62, 1
  %64 = shl nuw nsw i64 %62, 2
  %65 = getelementptr inbounds float, ptr %5, i64 %64
  %66 = getelementptr inbounds float, ptr %53, i64 %63
  call void @BeamFirFilter_StrictFP(ptr noundef nonnull %52, i32 noundef 1024, i32 noundef 2, ptr noundef nonnull %65, ptr noundef nonnull %66) #17
  %67 = add nuw nsw i64 %62, 1
  %68 = icmp eq i64 %67, 512
  br i1 %68, label %69, label %61, !llvm.loop !22

69:                                               ; preds = %61
  %70 = add nuw nsw i64 %41, 1
  %71 = icmp eq i64 %70, 12
  br i1 %71, label %72, label %40, !llvm.loop !23

72:                                               ; preds = %85, %69
  %73 = phi i64 [ %86, %85 ], [ 0, %69 ]
  %74 = shl nuw nsw i64 %73, 1
  br label %75

75:                                               ; preds = %75, %72
  %76 = phi i64 [ 0, %72 ], [ %83, %75 ]
  %77 = shl nuw nsw i64 %76, 1
  %78 = getelementptr inbounds [12 x [12288 x float]], ptr %6, i64 0, i64 %73, i64 %77
  %79 = mul nuw nsw i64 %76, 24
  %80 = add nuw nsw i64 %79, %74
  %81 = getelementptr inbounds [12288 x float], ptr %8, i64 0, i64 %80
  %82 = load <2 x float>, ptr %78, align 8, !tbaa !16
  store <2 x float> %82, ptr %81, align 8, !tbaa !16
  %83 = add nuw nsw i64 %76, 1
  %84 = icmp eq i64 %83, 512
  br i1 %84, label %85, label %75, !llvm.loop !24

85:                                               ; preds = %75
  %86 = add nuw nsw i64 %73, 1
  %87 = icmp eq i64 %86, 12
  br i1 %87, label %88, label %72, !llvm.loop !25

88:                                               ; preds = %149, %85
  %89 = phi i64 [ %150, %149 ], [ 0, %85 ]
  %90 = shl nuw nsw i64 %89, 11
  %91 = getelementptr i8, ptr @detector_out_StrictFP, i64 %90
  %92 = getelementptr inbounds [4 x [24 x float]], ptr %7, i64 0, i64 %89
  br label %95

93:                                               ; preds = %124
  %94 = getelementptr inbounds [4 x %struct.BeamFirData], ptr %3, i64 0, i64 %89
  br label %128

95:                                               ; preds = %124, %88
  %96 = phi i64 [ 0, %88 ], [ %126, %124 ]
  %97 = mul nuw nsw i64 %96, 24
  %98 = getelementptr inbounds float, ptr %8, i64 %97
  %99 = shl nuw nsw i64 %96, 1
  br label %100

100:                                              ; preds = %100, %95
  %101 = phi i64 [ 0, %95 ], [ %122, %100 ]
  %102 = phi <2 x float> [ zeroinitializer, %95 ], [ %121, %100 ]
  %103 = shl nuw nsw i64 %101, 1
  %104 = getelementptr inbounds float, ptr %92, i64 %103
  %105 = getelementptr inbounds float, ptr %98, i64 %103
  %106 = load float, ptr %105, align 8, !tbaa !16
  %107 = or i64 %103, 1
  %108 = getelementptr inbounds float, ptr %98, i64 %107
  %109 = load float, ptr %108, align 4, !tbaa !16
  %110 = load <2 x float>, ptr %104, align 8, !tbaa !16
  %111 = insertelement <2 x float> poison, float %109, i64 0
  %112 = shufflevector <2 x float> %111, <2 x float> poison, <2 x i32> zeroinitializer
  %113 = fmul <2 x float> %110, %112
  %114 = shufflevector <2 x float> %113, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %115 = insertelement <2 x float> poison, float %106, i64 0
  %116 = shufflevector <2 x float> %115, <2 x float> poison, <2 x i32> zeroinitializer
  %117 = fmul <2 x float> %116, %110
  %118 = fsub <2 x float> %117, %114
  %119 = fadd <2 x float> %117, %114
  %120 = shufflevector <2 x float> %118, <2 x float> %119, <2 x i32> <i32 0, i32 3>
  %121 = fadd <2 x float> %102, %120
  %122 = add nuw nsw i64 %101, 1
  %123 = icmp eq i64 %122, 12
  br i1 %123, label %124, label %100, !llvm.loop !26

124:                                              ; preds = %100
  %.lcssa = phi <2 x float> [ %121, %100 ]
  %125 = getelementptr inbounds float, ptr %9, i64 %99
  store <2 x float> %.lcssa, ptr %125, align 8, !tbaa !16
  %126 = add nuw nsw i64 %96, 1
  %127 = icmp eq i64 %126, 512
  br i1 %127, label %93, label %95, !llvm.loop !27

128:                                              ; preds = %128, %93
  %129 = phi i64 [ 0, %93 ], [ %133, %128 ]
  %130 = shl nuw nsw i64 %129, 1
  %131 = getelementptr inbounds float, ptr %9, i64 %130
  %132 = getelementptr inbounds float, ptr %10, i64 %130
  call void @BeamFirFilter_StrictFP(ptr noundef nonnull %94, i32 noundef 512, i32 noundef 1, ptr noundef nonnull %131, ptr noundef nonnull %132) #17
  %133 = add nuw nsw i64 %129, 1
  %134 = icmp eq i64 %133, 512
  br i1 %134, label %135, label %128, !llvm.loop !28

135:                                              ; preds = %135, %128
  %136 = phi i64 [ %147, %135 ], [ 0, %128 ]
  %137 = shl nuw nsw i64 %136, 1
  %138 = getelementptr inbounds float, ptr %10, i64 %137
  %139 = load <8 x float>, ptr %138, align 16, !tbaa !16
  %140 = fmul <8 x float> %139, %139
  %141 = shufflevector <8 x float> %140, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %142 = fmul <8 x float> %139, %139
  %143 = shufflevector <8 x float> %142, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %144 = fadd <4 x float> %141, %143
  %145 = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %144)
  %146 = getelementptr inbounds float, ptr %11, i64 %136
  store <4 x float> %145, ptr %146, align 16, !tbaa !16
  %147 = add nuw i64 %136, 4
  %148 = icmp eq i64 %147, 512
  br i1 %148, label %149, label %135, !llvm.loop !29

149:                                              ; preds = %135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %91, ptr noundef nonnull align 16 dereferenceable(2048) %11, i64 2048, i1 false), !tbaa !16
  %150 = add nuw nsw i64 %89, 1
  %151 = icmp eq i64 %150, 4
  br i1 %151, label %152, label %88, !llvm.loop !32

152:                                              ; preds = %149
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 49152, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 589824, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 98304, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 98304, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %1) #18
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @begin() #0 {
  %1 = alloca [12 x %struct.BeamFirData], align 16
  %2 = alloca [12 x %struct.BeamFirData], align 16
  %3 = alloca [4 x %struct.BeamFirData], align 16
  %4 = alloca [24576 x float], align 16
  %5 = alloca [24576 x float], align 16
  %6 = alloca [12 x [12288 x float]], align 16
  %7 = alloca [4 x [24 x float]], align 16
  %8 = alloca [12288 x float], align 16
  %9 = alloca [1024 x float], align 16
  %10 = alloca [1024 x float], align 16
  %11 = alloca [512 x float], align 16
  %12 = alloca [4 x [512 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 98304, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 98304, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 589824, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 49152, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %12) #18
  br label %13

13:                                               ; preds = %13, %0
  %14 = phi i64 [ 0, %0 ], [ %17, %13 ]
  %15 = getelementptr inbounds [12 x %struct.BeamFirData], ptr %1, i64 0, i64 %14
  call void @BeamFirSetup(ptr noundef nonnull %15, i32 noundef 64) #17
  %16 = getelementptr inbounds [12 x %struct.BeamFirData], ptr %2, i64 0, i64 %14
  call void @BeamFirSetup(ptr noundef nonnull %16, i32 noundef 64) #17
  %17 = add nuw nsw i64 %14, 1
  %18 = icmp eq i64 %17, 12
  br i1 %18, label %19, label %13, !llvm.loop !33

19:                                               ; preds = %38, %13
  %20 = phi i64 [ %39, %38 ], [ 0, %13 ]
  %21 = getelementptr inbounds [4 x %struct.BeamFirData], ptr %3, i64 0, i64 %20
  call void @BeamFirSetup(ptr noundef nonnull %21, i32 noundef 512) #17
  %22 = getelementptr inbounds [4 x [24 x float]], ptr %7, i64 0, i64 %20
  %23 = shl nuw nsw i64 %20, 1
  %24 = getelementptr inbounds float, ptr %22, i64 %23
  br label %25

25:                                               ; preds = %32, %19
  %26 = phi i64 [ 0, %19 ], [ %36, %32 ]
  %27 = icmp eq i64 %26, %20
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store float 1.000000e+00, ptr %24, align 8, !tbaa !16
  br label %32

29:                                               ; preds = %25
  %30 = shl nuw nsw i64 %26, 1
  %31 = getelementptr inbounds float, ptr %22, i64 %30
  store float 0.000000e+00, ptr %31, align 8, !tbaa !16
  br label %32

32:                                               ; preds = %29, %28
  %33 = phi i64 [ %23, %28 ], [ %30, %29 ]
  %34 = or i64 %33, 1
  %35 = getelementptr inbounds float, ptr %22, i64 %34
  store float 0.000000e+00, ptr %35, align 4, !tbaa !16
  %36 = add nuw nsw i64 %26, 1
  %37 = icmp eq i64 %36, 12
  br i1 %37, label %38, label %25, !llvm.loop !34

38:                                               ; preds = %32
  %39 = add nuw nsw i64 %20, 1
  %40 = icmp eq i64 %39, 4
  br i1 %40, label %42, label %19, !llvm.loop !35

41:                                               ; preds = %180
  br label %42, !llvm.loop !36

42:                                               ; preds = %41, %38
  %43 = load i32, ptr @numiters, align 4, !tbaa !13
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = add nsw i32 %43, -1
  store i32 %46, ptr @numiters, align 4, !tbaa !13
  %47 = icmp sgt i32 %43, 0
  br i1 %47, label %48, label %183

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %78, %48
  %50 = phi i64 [ %79, %78 ], [ 0, %48 ]
  %51 = trunc i64 %50 to i32
  br label %54

52:                                               ; preds = %54
  %53 = getelementptr inbounds [12 x %struct.BeamFirData], ptr %1, i64 0, i64 %50
  br label %63

54:                                               ; preds = %54, %49
  %55 = phi i64 [ 0, %49 ], [ %58, %54 ]
  %56 = shl nuw nsw i64 %55, 11
  %57 = getelementptr inbounds float, ptr %4, i64 %56
  call void @InputGenerate(i32 noundef %51, ptr noundef nonnull %57, i32 noundef 1024) #17
  %58 = add nuw nsw i64 %55, 1
  %59 = icmp eq i64 %58, 12
  br i1 %59, label %52, label %54, !llvm.loop !37

60:                                               ; preds = %63
  %61 = getelementptr inbounds [12 x %struct.BeamFirData], ptr %2, i64 0, i64 %50
  %62 = getelementptr inbounds [12 x [12288 x float]], ptr %6, i64 0, i64 %50
  br label %70

63:                                               ; preds = %63, %52
  %64 = phi i64 [ 0, %52 ], [ %68, %63 ]
  %65 = shl nuw nsw i64 %64, 1
  %66 = getelementptr inbounds float, ptr %4, i64 %65
  %67 = getelementptr inbounds float, ptr %5, i64 %65
  call void @BeamFirFilter(ptr noundef nonnull %53, i32 noundef 1024, i32 noundef 1, ptr noundef nonnull %66, ptr noundef nonnull %67) #17
  %68 = add nuw nsw i64 %64, 1
  %69 = icmp eq i64 %68, 1024
  br i1 %69, label %60, label %63, !llvm.loop !38

70:                                               ; preds = %70, %60
  %71 = phi i64 [ 0, %60 ], [ %76, %70 ]
  %72 = shl nuw nsw i64 %71, 1
  %73 = shl nuw nsw i64 %71, 2
  %74 = getelementptr inbounds float, ptr %5, i64 %73
  %75 = getelementptr inbounds float, ptr %62, i64 %72
  call void @BeamFirFilter(ptr noundef nonnull %61, i32 noundef 1024, i32 noundef 2, ptr noundef nonnull %74, ptr noundef nonnull %75) #17
  %76 = add nuw nsw i64 %71, 1
  %77 = icmp eq i64 %76, 512
  br i1 %77, label %78, label %70, !llvm.loop !39

78:                                               ; preds = %70
  %79 = add nuw nsw i64 %50, 1
  %80 = icmp eq i64 %79, 12
  br i1 %80, label %81, label %49, !llvm.loop !40

81:                                               ; preds = %94, %78
  %82 = phi i64 [ %95, %94 ], [ 0, %78 ]
  %83 = shl nuw nsw i64 %82, 1
  br label %84

84:                                               ; preds = %84, %81
  %85 = phi i64 [ 0, %81 ], [ %92, %84 ]
  %86 = shl nuw nsw i64 %85, 1
  %87 = getelementptr inbounds [12 x [12288 x float]], ptr %6, i64 0, i64 %82, i64 %86
  %88 = mul nuw nsw i64 %85, 24
  %89 = add nuw nsw i64 %88, %83
  %90 = getelementptr inbounds [12288 x float], ptr %8, i64 0, i64 %89
  %91 = load <2 x float>, ptr %87, align 8, !tbaa !16
  store <2 x float> %91, ptr %90, align 8, !tbaa !16
  %92 = add nuw nsw i64 %85, 1
  %93 = icmp eq i64 %92, 512
  br i1 %93, label %94, label %84, !llvm.loop !41

94:                                               ; preds = %84
  %95 = add nuw nsw i64 %82, 1
  %96 = icmp eq i64 %95, 12
  br i1 %96, label %97, label %81, !llvm.loop !42

97:                                               ; preds = %155, %94
  %98 = phi i64 [ %156, %155 ], [ 0, %94 ]
  %99 = shl nuw nsw i64 %98, 11
  %100 = getelementptr i8, ptr %12, i64 %99
  %101 = getelementptr inbounds [4 x [24 x float]], ptr %7, i64 0, i64 %98
  br label %104

102:                                              ; preds = %131
  %103 = getelementptr inbounds [4 x %struct.BeamFirData], ptr %3, i64 0, i64 %98
  br label %135

104:                                              ; preds = %131, %97
  %105 = phi i64 [ 0, %97 ], [ %133, %131 ]
  %106 = mul nuw nsw i64 %105, 24
  %107 = getelementptr inbounds float, ptr %8, i64 %106
  %108 = shl nuw nsw i64 %105, 1
  br label %109

109:                                              ; preds = %109, %104
  %110 = phi i64 [ 0, %104 ], [ %129, %109 ]
  %111 = phi <2 x float> [ zeroinitializer, %104 ], [ %128, %109 ]
  %112 = shl nuw nsw i64 %110, 1
  %113 = getelementptr inbounds float, ptr %101, i64 %112
  %114 = load float, ptr %113, align 8, !tbaa !16
  %115 = getelementptr inbounds float, ptr %107, i64 %112
  %116 = or i64 %112, 1
  %117 = getelementptr inbounds float, ptr %101, i64 %116
  %118 = load float, ptr %117, align 4, !tbaa !16
  %119 = fneg float %118
  %120 = load <2 x float>, ptr %115, align 8, !tbaa !16
  %121 = insertelement <2 x float> poison, float %118, i64 0
  %122 = insertelement <2 x float> %121, float %119, i64 1
  %123 = fmul <2 x float> %120, %122
  %124 = shufflevector <2 x float> %123, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %125 = insertelement <2 x float> poison, float %114, i64 0
  %126 = shufflevector <2 x float> %125, <2 x float> poison, <2 x i32> zeroinitializer
  %127 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %126, <2 x float> %120, <2 x float> %124)
  %128 = fadd <2 x float> %111, %127
  %129 = add nuw nsw i64 %110, 1
  %130 = icmp eq i64 %129, 12
  br i1 %130, label %131, label %109, !llvm.loop !43

131:                                              ; preds = %109
  %.lcssa = phi <2 x float> [ %128, %109 ]
  %132 = getelementptr inbounds float, ptr %9, i64 %108
  store <2 x float> %.lcssa, ptr %132, align 8, !tbaa !16
  %133 = add nuw nsw i64 %105, 1
  %134 = icmp eq i64 %133, 512
  br i1 %134, label %102, label %104, !llvm.loop !44

135:                                              ; preds = %135, %102
  %136 = phi i64 [ 0, %102 ], [ %140, %135 ]
  %137 = shl nuw nsw i64 %136, 1
  %138 = getelementptr inbounds float, ptr %9, i64 %137
  %139 = getelementptr inbounds float, ptr %10, i64 %137
  call void @BeamFirFilter(ptr noundef nonnull %103, i32 noundef 512, i32 noundef 1, ptr noundef nonnull %138, ptr noundef nonnull %139) #17
  %140 = add nuw nsw i64 %136, 1
  %141 = icmp eq i64 %140, 512
  br i1 %141, label %142, label %135, !llvm.loop !45

142:                                              ; preds = %142, %135
  %143 = phi i64 [ %153, %142 ], [ 0, %135 ]
  %144 = shl nuw nsw i64 %143, 1
  %145 = getelementptr inbounds float, ptr %10, i64 %144
  %146 = load <8 x float>, ptr %145, align 16, !tbaa !16
  %147 = shufflevector <8 x float> %146, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %148 = fmul <8 x float> %146, %146
  %149 = shufflevector <8 x float> %148, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %150 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %147, <4 x float> %147, <4 x float> %149)
  %151 = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %150)
  %152 = getelementptr inbounds float, ptr %11, i64 %143
  store <4 x float> %151, ptr %152, align 16, !tbaa !16
  %153 = add nuw i64 %143, 4
  %154 = icmp eq i64 %153, 512
  br i1 %154, label %155, label %142, !llvm.loop !46

155:                                              ; preds = %142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %100, ptr noundef nonnull align 16 dereferenceable(2048) %11, i64 2048, i1 false), !tbaa !16
  %156 = add nuw nsw i64 %98, 1
  %157 = icmp eq i64 %156, 4
  br i1 %157, label %158, label %97, !llvm.loop !47

158:                                              ; preds = %180, %155
  %159 = phi i64 [ %181, %180 ], [ 0, %155 ]
  br label %160

160:                                              ; preds = %175, %158
  %161 = phi i64 [ 0, %158 ], [ %178, %175 ]
  %162 = getelementptr inbounds [4 x [512 x float]], ptr %12, i64 0, i64 %161, i64 %159
  %163 = load float, ptr %162, align 4, !tbaa !16
  %164 = getelementptr inbounds [4 x [512 x float]], ptr @detector_out_StrictFP, i64 0, i64 %161, i64 %159
  %165 = load float, ptr %164, align 4, !tbaa !16
  %166 = fsub float %163, %165
  %167 = tail call float @llvm.fabs.f32(float %166)
  %168 = fpext float %167 to double
  %169 = fcmp ogt double %168, 1.000000e-05
  br i1 %169, label %170, label %175

170:                                              ; preds = %160
  %.lcssa3 = phi float [ %163, %160 ]
  %.lcssa1 = phi float [ %165, %160 ]
  %171 = load ptr, ptr @stderr, align 8, !tbaa !9
  %172 = fpext float %.lcssa3 to double
  %173 = fpext float %.lcssa1 to double
  %174 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %171, ptr noundef nonnull @.str.2, double noundef %172, double noundef %173, double noundef 1.000000e-05) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

175:                                              ; preds = %160
  %176 = fpext float %165 to double
  %177 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %176) #17
  %178 = add nuw nsw i64 %161, 1
  %179 = icmp eq i64 %178, 4
  br i1 %179, label %180, label %160, !llvm.loop !48

180:                                              ; preds = %175
  %181 = add nuw nsw i64 %159, 1
  %182 = icmp eq i64 %181, 512
  br i1 %182, label %41, label %158, !llvm.loop !49

183:                                              ; preds = %45
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 49152, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 589824, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 98304, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 98304, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %1) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write, inaccessiblemem: readwrite) uwtable
define internal void @BeamFirSetup(ptr nocapture noundef writeonly %0, i32 noundef %1) #5 {
  store i32 %1, ptr %0, align 8, !tbaa !50
  %3 = getelementptr inbounds %struct.BeamFirData, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !52
  %4 = getelementptr inbounds %struct.BeamFirData, ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 8, !tbaa !53
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #21
  %8 = getelementptr inbounds %struct.BeamFirData, ptr %0, i64 0, i32 3
  store ptr %7, ptr %8, align 8, !tbaa !54
  %9 = tail call noalias ptr @malloc(i64 noundef %6) #21
  %10 = getelementptr inbounds %struct.BeamFirData, ptr %0, i64 0, i32 4
  store ptr %9, ptr %10, align 8, !tbaa !55
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %7, align 4, !tbaa !16
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = getelementptr float, ptr %7, i64 1
  %14 = shl nuw i32 %1, 1
  %15 = tail call i32 @llvm.smax.i32(i32 %14, i32 2)
  %16 = add nsw i32 %15, -2
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  %19 = or i64 %18, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %13, i8 0, i64 %19, i1 false), !tbaa !16
  %20 = getelementptr i8, ptr %9, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %20, i8 0, i64 %19, i1 false), !tbaa !16
  br label %21

21:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nofree nounwind optsize memory(write) uwtable
define internal void @InputGenerate(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #6 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %3
  %6 = icmp eq i32 %0, 1
  %7 = getelementptr inbounds float, ptr %1, i64 512
  %8 = zext i32 %2 to i64
  br label %9

9:                                                ; preds = %26, %5
  %10 = phi i64 [ 0, %5 ], [ %27, %26 ]
  %11 = icmp eq i64 %10, 256
  %12 = and i1 %6, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store <2 x float> <float 1.600000e+01, float 1.700000e+01>, ptr %7, align 4, !tbaa !16
  br label %26

14:                                               ; preds = %9
  %15 = trunc i64 %10 to i32
  %16 = mul nsw i32 %15, %0
  %17 = sitofp i32 %16 to double
  %18 = tail call double @sqrt(double noundef %17) #15
  %19 = fptrunc double %18 to float
  %20 = shl nuw nsw i64 %10, 1
  %21 = getelementptr inbounds float, ptr %1, i64 %20
  %22 = fadd float %19, 1.000000e+00
  %23 = insertelement <2 x float> poison, float %19, i64 0
  %24 = insertelement <2 x float> %23, float %22, i64 1
  %25 = fneg <2 x float> %24
  store <2 x float> %25, ptr %21, align 4, !tbaa !16
  br label %26

26:                                               ; preds = %14, %13
  %27 = add nuw nsw i64 %10, 1
  %28 = icmp eq i64 %27, %8
  br i1 %28, label %29, label %9, !llvm.loop !56

29:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @BeamFirFilter(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) #7 {
  %6 = load i32, ptr %0, align 8, !tbaa !50
  %7 = add nsw i32 %6, -1
  %8 = shl i32 %6, 1
  %9 = add nsw i32 %8, -1
  %10 = getelementptr inbounds %struct.BeamFirData, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = sub nsw i32 %7, %11
  %13 = shl nsw i32 %12, 1
  %14 = load float, ptr %3, align 4, !tbaa !16
  %15 = getelementptr inbounds %struct.BeamFirData, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = sext i32 %13 to i64
  %18 = getelementptr inbounds float, ptr %16, i64 %17
  store float %14, ptr %18, align 4, !tbaa !16
  %19 = getelementptr inbounds float, ptr %3, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !16
  %21 = or i32 %13, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, ptr %16, i64 %22
  store float %20, ptr %23, align 4, !tbaa !16
  %24 = icmp sgt i32 %6, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.BeamFirData, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = sext i32 %8 to i64
  br label %29

29:                                               ; preds = %29, %25
  %30 = phi i64 [ 0, %25 ], [ %51, %29 ]
  %31 = phi i32 [ %13, %25 ], [ %50, %29 ]
  %32 = phi <2 x float> [ zeroinitializer, %25 ], [ %48, %29 ]
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds float, ptr %16, i64 %33
  %35 = getelementptr inbounds float, ptr %27, i64 %30
  %36 = load float, ptr %35, align 4, !tbaa !16
  %37 = or i64 %30, 1
  %38 = getelementptr inbounds float, ptr %27, i64 %37
  %39 = load float, ptr %38, align 4, !tbaa !16
  %40 = load <2 x float>, ptr %34, align 4, !tbaa !16
  %41 = insertelement <2 x float> poison, float %39, i64 0
  %42 = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %43 = fmul <2 x float> %40, %42
  %44 = shufflevector <2 x float> %43, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %45 = insertelement <2 x float> poison, float %36, i64 0
  %46 = shufflevector <2 x float> %45, <2 x float> poison, <2 x i32> zeroinitializer
  %47 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %40, <2 x float> %46, <2 x float> %44)
  %48 = fadd <2 x float> %32, %47
  %49 = add nsw i32 %31, 2
  %50 = and i32 %49, %9
  %51 = add nuw nsw i64 %30, 2
  %52 = icmp slt i64 %51, %28
  br i1 %52, label %29, label %53, !llvm.loop !57

53:                                               ; preds = %29, %5
  %54 = phi <2 x float> [ zeroinitializer, %5 ], [ %48, %29 ]
  %55 = add nsw i32 %11, 1
  %56 = and i32 %55, %7
  store i32 %56, ptr %10, align 8, !tbaa !53
  store <2 x float> %54, ptr %4, align 4, !tbaa !16
  %57 = getelementptr inbounds %struct.BeamFirData, ptr %0, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !52
  %59 = add nsw i32 %58, %2
  store i32 %59, ptr %57, align 4, !tbaa !52
  %60 = icmp eq i32 %59, %1
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  store i32 0, ptr %57, align 4, !tbaa !52
  store i32 0, ptr %10, align 8, !tbaa !53
  br i1 %24, label %62, label %66

62:                                               ; preds = %61
  %63 = tail call i32 @llvm.smax.i32(i32 %8, i32 1)
  %64 = zext i32 %63 to i64
  %65 = shl nuw nsw i64 %64, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %16, i8 0, i64 %65, i1 false), !tbaa !16
  br label %66

66:                                               ; preds = %62, %61, %53
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write, inaccessiblemem: readwrite) uwtable
define internal void @BeamFirSetup_StrictFP(ptr nocapture noundef writeonly %0, i32 noundef %1) #5 {
  store i32 %1, ptr %0, align 8, !tbaa !50
  %3 = getelementptr inbounds %struct.BeamFirData, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !52
  %4 = getelementptr inbounds %struct.BeamFirData, ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 8, !tbaa !53
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #21
  %8 = getelementptr inbounds %struct.BeamFirData, ptr %0, i64 0, i32 3
  store ptr %7, ptr %8, align 8, !tbaa !54
  %9 = tail call noalias ptr @malloc(i64 noundef %6) #21
  %10 = getelementptr inbounds %struct.BeamFirData, ptr %0, i64 0, i32 4
  store ptr %9, ptr %10, align 8, !tbaa !55
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %7, align 4, !tbaa !16
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = getelementptr float, ptr %7, i64 1
  %14 = shl nuw i32 %1, 1
  %15 = tail call i32 @llvm.smax.i32(i32 %14, i32 2)
  %16 = add nsw i32 %15, -2
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  %19 = or i64 %18, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %13, i8 0, i64 %19, i1 false), !tbaa !16
  %20 = getelementptr i8, ptr %9, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %20, i8 0, i64 %19, i1 false), !tbaa !16
  br label %21

21:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nofree nounwind optsize memory(write) uwtable
define internal void @InputGenerate_StrictFP(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #6 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %3
  %6 = icmp eq i32 %0, 1
  %7 = getelementptr inbounds float, ptr %1, i64 512
  %8 = zext i32 %2 to i64
  br label %9

9:                                                ; preds = %26, %5
  %10 = phi i64 [ 0, %5 ], [ %27, %26 ]
  %11 = icmp eq i64 %10, 256
  %12 = and i1 %6, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store <2 x float> <float 1.600000e+01, float 1.700000e+01>, ptr %7, align 4, !tbaa !16
  br label %26

14:                                               ; preds = %9
  %15 = trunc i64 %10 to i32
  %16 = mul nsw i32 %15, %0
  %17 = sitofp i32 %16 to double
  %18 = tail call double @sqrt(double noundef %17) #15
  %19 = fptrunc double %18 to float
  %20 = shl nuw nsw i64 %10, 1
  %21 = getelementptr inbounds float, ptr %1, i64 %20
  %22 = fadd float %19, 1.000000e+00
  %23 = insertelement <2 x float> poison, float %19, i64 0
  %24 = insertelement <2 x float> %23, float %22, i64 1
  %25 = fneg <2 x float> %24
  store <2 x float> %25, ptr %21, align 4, !tbaa !16
  br label %26

26:                                               ; preds = %14, %13
  %27 = add nuw nsw i64 %10, 1
  %28 = icmp eq i64 %27, %8
  br i1 %28, label %29, label %9, !llvm.loop !58

29:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @BeamFirFilter_StrictFP(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) #7 {
  %6 = load i32, ptr %0, align 8, !tbaa !50
  %7 = add nsw i32 %6, -1
  %8 = shl i32 %6, 1
  %9 = add nsw i32 %8, -1
  %10 = getelementptr inbounds %struct.BeamFirData, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !53
  %12 = sub nsw i32 %7, %11
  %13 = shl nsw i32 %12, 1
  %14 = load float, ptr %3, align 4, !tbaa !16
  %15 = getelementptr inbounds %struct.BeamFirData, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = sext i32 %13 to i64
  %18 = getelementptr inbounds float, ptr %16, i64 %17
  store float %14, ptr %18, align 4, !tbaa !16
  %19 = getelementptr inbounds float, ptr %3, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !16
  %21 = or i32 %13, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, ptr %16, i64 %22
  store float %20, ptr %23, align 4, !tbaa !16
  %24 = icmp sgt i32 %6, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.BeamFirData, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = sext i32 %8 to i64
  br label %29

29:                                               ; preds = %29, %25
  %30 = phi i64 [ 0, %25 ], [ %52, %29 ]
  %31 = phi i32 [ %13, %25 ], [ %51, %29 ]
  %32 = phi <2 x float> [ zeroinitializer, %25 ], [ %49, %29 ]
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds float, ptr %16, i64 %33
  %35 = getelementptr inbounds float, ptr %27, i64 %30
  %36 = load float, ptr %35, align 4, !tbaa !16
  %37 = or i64 %30, 1
  %38 = getelementptr inbounds float, ptr %27, i64 %37
  %39 = load float, ptr %38, align 4, !tbaa !16
  %40 = load <2 x float>, ptr %34, align 4, !tbaa !16
  %41 = insertelement <2 x float> poison, float %36, i64 0
  %42 = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %43 = fmul <2 x float> %40, %42
  %44 = insertelement <2 x float> poison, float %39, i64 0
  %45 = shufflevector <2 x float> %44, <2 x float> poison, <2 x i32> zeroinitializer
  %46 = fmul <2 x float> %40, %45
  %47 = shufflevector <2 x float> %46, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %48 = fadd <2 x float> %43, %47
  %49 = fadd <2 x float> %32, %48
  %50 = add nsw i32 %31, 2
  %51 = and i32 %50, %9
  %52 = add nuw nsw i64 %30, 2
  %53 = icmp slt i64 %52, %28
  br i1 %53, label %29, label %54, !llvm.loop !59

54:                                               ; preds = %29, %5
  %55 = phi <2 x float> [ zeroinitializer, %5 ], [ %49, %29 ]
  %56 = add nsw i32 %11, 1
  %57 = and i32 %56, %7
  store i32 %57, ptr %10, align 8, !tbaa !53
  store <2 x float> %55, ptr %4, align 4, !tbaa !16
  %58 = getelementptr inbounds %struct.BeamFirData, ptr %0, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !52
  %60 = add nsw i32 %59, %2
  store i32 %60, ptr %58, align 4, !tbaa !52
  %61 = icmp eq i32 %60, %1
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  store i32 0, ptr %58, align 4, !tbaa !52
  store i32 0, ptr %10, align 8, !tbaa !53
  br i1 %24, label %63, label %67

63:                                               ; preds = %62
  %64 = tail call i32 @llvm.smax.i32(i32 %8, i32 1)
  %65 = zext i32 %64 to i64
  %66 = shl nuw nsw i64 %65, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %16, i8 0, i64 %66, i1 false), !tbaa !16
  br label %67

67:                                               ; preds = %63, %62, %54
  ret void
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind optsize willreturn memory(read) }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { cold optsize }
attributes #20 = { noreturn nounwind optsize }
attributes #21 = { nounwind optsize allocsize(0) }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !11, i64 0}
!15 = distinct !{!15, !8}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !11, i64 0}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8, !30, !31}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
!41 = distinct !{!41, !8}
!42 = distinct !{!42, !8}
!43 = distinct !{!43, !8}
!44 = distinct !{!44, !8}
!45 = distinct !{!45, !8}
!46 = distinct !{!46, !8, !30, !31}
!47 = distinct !{!47, !8}
!48 = distinct !{!48, !8}
!49 = distinct !{!49, !8}
!50 = !{!51, !14, i64 0}
!51 = !{!"BeamFirData", !14, i64 0, !14, i64 4, !14, i64 8, !10, i64 16, !10, i64 24}
!52 = !{!51, !14, i64 4}
!53 = !{!51, !14, i64 8}
!54 = !{!51, !10, i64 16}
!55 = !{!51, !10, i64 24}
!56 = distinct !{!56, !8}
!57 = distinct !{!57, !8}
!58 = distinct !{!58, !8}
!59 = distinct !{!59, !8}
