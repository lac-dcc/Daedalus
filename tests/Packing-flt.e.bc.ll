; ModuleID = 'Packing-flt.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalData = type { [32000 x float], [3 x i32], [4 x i8], [32000 x float], [5 x i32], [12 x i8], [32000 x float], [7 x i32], [4 x i8], [32000 x float], [11 x i32], [4 x i8], [32000 x float], [13 x i32], [12 x i8], [256 x [256 x float]], [17 x i32], [12 x i8], [256 x [256 x float]], [19 x i32], [4 x i8], [256 x [256 x float]], [23 x i32], [4 x i8], [256 x [256 x float]] }

@global_data = internal unnamed_addr global %struct.GlobalData zeroinitializer, align 16
@array = internal unnamed_addr global [65536 x float] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"%.*G \0A\00", align 1
@digits = internal unnamed_addr global i32 6, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"s000 \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"s111 \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"s112 \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"s113 \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"s114 \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"s115 \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"s116 \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"s118 \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"s119 \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"s121 \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"s122 \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"s123 \00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"s124 \00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"s125 \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"s126 \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"s127 \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"s128 \00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"s131 \00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"s132 \00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"s141 \00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"s151 \00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"s152 \00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"s161 \00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"s162 \00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"s171 \00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"s172 \00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"s173 \00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"s174 \00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"s175 \00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"s176 \00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"s211 \00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"s212 \00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"s221 \00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"s222 \00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"s231 \00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"s232 \00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"s233 \00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"s234 \00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"s235 \00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"s241 \00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"s242 \00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"s243 \00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"s244 \00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"s251 \00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"s252 \00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"s253 \00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"s254 \00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"s255 \00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"s256 \00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"s257 \00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"s258 \00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"s261 \00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"s271 \00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"s272 \00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"s273 \00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"s274 \00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"s275 \00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"s276 \00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"s277 \00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"s278 \00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"s279 \00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"s2710\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"s2711\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"s2712\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"s281 \00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"s291 \00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"s292 \00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"s293 \00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"s2101\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"s2102\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"s2111\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"s311 \00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"s312 \00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"s313 \00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"s314 \00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"s315 \00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"s316 \00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"s317 \00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"s318 \00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"s319 \00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"s3110\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"s3111\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"s3112\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"s3113\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"s321 \00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"s322 \00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"s323 \00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"s331 \00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"s332 \00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"s341 \00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"s342 \00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"s343 \00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"s351 \00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"s352 \00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"s353 \00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"s411 \00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"s412 \00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"s413 \00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"s414 \00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"s415 \00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"s421 \00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"s422 \00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"s423 \00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"s424 \00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"s431 \00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"s432 \00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"s441 \00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"s442 \00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"s443 \00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"s451 \00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"s452 \00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"s453 \00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"s471 \00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"s481 \00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"s482 \00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"s491 \00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"s4112\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"s4113\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"s4114\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"s4115\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"s4116\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"s4117\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"s4121\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"va\09\00", align 1
@.str.125 = private unnamed_addr constant [6 x i8] c"vag  \00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"vas  \00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"vif  \00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"vpv  \00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"vtv  \00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"vpvtv\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"vpvts\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"vpvpv\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"vtvtv\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"vsumr\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"vdotr\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"vbor \00", align 1
@ntimes = internal unnamed_addr global i32 200000, align 4
@.str.137 = private unnamed_addr constant [14 x i8] c"S341\09 %.2f \09\09\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"S342\09 %.2f \09\09\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"S343\09 %.2f \09\09\00", align 1
@xx = internal global ptr null, align 8
@.str.141 = private unnamed_addr constant [31 x i8] c"Running each loop %d times...\0A\00", align 1
@str = private unnamed_addr constant [29 x i8] c"Loop \09 Time(Sec) \09 Checksum \00", align 1

; Function Attrs: nofree nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %4 = call i32 @posix_memalign(ptr noundef nonnull %3, i64 noundef 16, i64 noundef 128000) #9
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr @ntimes, align 4, !tbaa !7
  %8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.141, i32 noundef %7) #10
  br label %19

9:                                                ; preds = %2
  %10 = getelementptr inbounds ptr, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = call i32 @atoi(ptr nocapture noundef %11) #11
  store i32 %12, ptr @ntimes, align 4, !tbaa !7
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.141, i32 noundef %12) #10
  %14 = icmp eq i32 %0, 2
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %1, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = call i32 @atoi(ptr nocapture noundef %17) #11
  store i32 %18, ptr @digits, align 4, !tbaa !7
  br label %19

19:                                               ; preds = %15, %9, %6
  %20 = load ptr, ptr %3, align 8, !tbaa !11
  %21 = call i32 @posix_memalign(ptr noundef nonnull @xx, i64 noundef 16, i64 noundef 128000) #9
  %22 = call i32 @putchar(i32 10)
  br label %88

23:                                               ; preds = %106, %23
  %24 = phi i64 [ %26, %23 ], [ 0, %106 ]
  %25 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %24
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %25, align 16, !tbaa !13
  %26 = add nuw nsw i64 %24, 4
  %27 = icmp eq i64 %26, 32000
  br i1 %27, label %28, label %23, !llvm.loop !15

28:                                               ; preds = %28, %23
  %29 = phi i64 [ %31, %28 ], [ 0, %23 ]
  %30 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %29
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %30, align 16, !tbaa !13
  %31 = add nuw nsw i64 %29, 4
  %32 = icmp eq i64 %31, 32000
  br i1 %32, label %33, label %28, !llvm.loop !18

33:                                               ; preds = %33, %28
  %34 = phi i64 [ %36, %33 ], [ 0, %28 ]
  %35 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %34
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %35, align 16, !tbaa !13
  %36 = add nuw nsw i64 %34, 4
  %37 = icmp eq i64 %36, 32000
  br i1 %37, label %38, label %33, !llvm.loop !19

38:                                               ; preds = %38, %33
  %39 = phi i64 [ %41, %38 ], [ 0, %33 ]
  %40 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %39
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %40, align 16, !tbaa !13
  %41 = add nuw nsw i64 %39, 4
  %42 = icmp eq i64 %41, 32000
  br i1 %42, label %43, label %38, !llvm.loop !20

43:                                               ; preds = %56, %38
  %44 = phi i64 [ %45, %56 ], [ 0, %38 ]
  %45 = add nuw nsw i64 %44, 1
  %46 = trunc i64 %45 to i32
  %47 = sitofp i32 %46 to float
  %48 = fdiv float 1.000000e+00, %47
  %49 = insertelement <4 x float> poison, float %48, i64 0
  %50 = shufflevector <4 x float> %49, <4 x float> poison, <4 x i32> zeroinitializer
  br label %51

51:                                               ; preds = %51, %43
  %52 = phi i64 [ 0, %43 ], [ %54, %51 ]
  %53 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %44, i64 %52
  store <4 x float> %50, ptr %53, align 16, !tbaa !13
  %54 = add nuw nsw i64 %52, 4
  %55 = icmp eq i64 %54, 256
  br i1 %55, label %56, label %51, !llvm.loop !21

56:                                               ; preds = %51
  %57 = icmp eq i64 %45, 256
  br i1 %57, label %58, label %43

58:                                               ; preds = %71, %56
  %59 = phi i64 [ %60, %71 ], [ 0, %56 ]
  %60 = add nuw nsw i64 %59, 1
  %61 = trunc i64 %60 to i32
  %62 = sitofp i32 %61 to float
  %63 = fdiv float 1.000000e+00, %62
  %64 = insertelement <4 x float> poison, float %63, i64 0
  %65 = shufflevector <4 x float> %64, <4 x float> poison, <4 x i32> zeroinitializer
  br label %66

66:                                               ; preds = %66, %58
  %67 = phi i64 [ 0, %58 ], [ %69, %66 ]
  %68 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %59, i64 %67
  store <4 x float> %65, ptr %68, align 16, !tbaa !13
  %69 = add nuw nsw i64 %67, 4
  %70 = icmp eq i64 %69, 256
  br i1 %70, label %71, label %66, !llvm.loop !22

71:                                               ; preds = %66
  %72 = icmp eq i64 %60, 256
  br i1 %72, label %73, label %58

73:                                               ; preds = %86, %71
  %74 = phi i64 [ %75, %86 ], [ 0, %71 ]
  %75 = add nuw nsw i64 %74, 1
  %76 = trunc i64 %75 to i32
  %77 = sitofp i32 %76 to float
  %78 = fdiv float 1.000000e+00, %77
  %79 = insertelement <4 x float> poison, float %78, i64 0
  %80 = shufflevector <4 x float> %79, <4 x float> poison, <4 x i32> zeroinitializer
  br label %81

81:                                               ; preds = %81, %73
  %82 = phi i64 [ 0, %73 ], [ %84, %81 ]
  %83 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %74, i64 %82
  store <4 x float> %80, ptr %83, align 16, !tbaa !13
  %84 = add nuw nsw i64 %82, 4
  %85 = icmp eq i64 %84, 256
  br i1 %85, label %86, label %81, !llvm.loop !23

86:                                               ; preds = %81
  %87 = icmp eq i64 %75, 256
  br i1 %87, label %111, label %73

88:                                               ; preds = %88, %19
  %89 = phi i64 [ 0, %19 ], [ %104, %88 ]
  %90 = add nuw nsw i64 %89, 4
  %91 = getelementptr inbounds i32, ptr %20, i64 %89
  %92 = trunc i64 %90 to i32
  store i32 %92, ptr %91, align 4, !tbaa !7
  %93 = add nuw nsw i64 %89, 2
  %94 = add nuw nsw i64 %89, 1
  %95 = getelementptr inbounds i32, ptr %20, i64 %94
  %96 = trunc i64 %93 to i32
  store i32 %96, ptr %95, align 4, !tbaa !7
  %97 = getelementptr inbounds i32, ptr %20, i64 %93
  %98 = trunc i64 %89 to i32
  store i32 %98, ptr %97, align 4, !tbaa !7
  %99 = add nuw nsw i64 %89, 3
  %100 = getelementptr inbounds i32, ptr %20, i64 %99
  %101 = trunc i64 %99 to i32
  store i32 %101, ptr %100, align 4, !tbaa !7
  %102 = getelementptr inbounds i32, ptr %20, i64 %90
  %103 = trunc i64 %94 to i32
  store i32 %103, ptr %102, align 4, !tbaa !7
  %104 = add nuw nsw i64 %89, 5
  %105 = icmp ult i64 %89, 31995
  br i1 %105, label %88, label %106

106:                                              ; preds = %106, %88
  %107 = phi i64 [ %109, %106 ], [ 0, %88 ]
  %108 = getelementptr inbounds float, ptr @global_data, i64 %107
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %108, align 16, !tbaa !13
  %109 = add nuw nsw i64 %107, 4
  %110 = icmp eq i64 %109, 32000
  br i1 %110, label %23, label %106, !llvm.loop !24

111:                                              ; preds = %86
  %112 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call fastcc void @init(ptr noundef nonnull @.str.90) #10
  %113 = load i32, ptr @ntimes, align 4, !tbaa !7
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %117, %111
  %116 = phi i32 [ %118, %117 ], [ 0, %111 ]
  br label %120

117:                                              ; preds = %130
  %118 = add nuw nsw i32 %116, 1
  %119 = icmp eq i32 %118, %113
  br i1 %119, label %134, label %115

120:                                              ; preds = %130, %115
  %121 = phi i64 [ 0, %115 ], [ %132, %130 ]
  %122 = phi i32 [ -1, %115 ], [ %131, %130 ]
  %123 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %121
  %124 = load float, ptr %123, align 4, !tbaa !13
  %125 = fcmp ogt float %124, 0.000000e+00
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = add nsw i32 %122, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, ptr @global_data, i64 %128
  store float %124, ptr %129, align 4, !tbaa !13
  br label %130

130:                                              ; preds = %126, %120
  %131 = phi i32 [ %127, %126 ], [ %122, %120 ]
  %132 = add nuw nsw i64 %121, 1
  %133 = icmp eq i64 %132, 32000
  br i1 %133, label %117, label %120

134:                                              ; preds = %117, %111
  %135 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.137, double noundef 0.000000e+00) #10
  call fastcc void @check(i32 noundef 1) #10
  call fastcc void @init(ptr noundef nonnull @.str.91) #10
  %136 = load i32, ptr @ntimes, align 4, !tbaa !7
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %140, %134
  %139 = phi i32 [ %141, %140 ], [ 0, %134 ]
  br label %143

140:                                              ; preds = %154
  %141 = add nuw nsw i32 %139, 1
  %142 = icmp eq i32 %141, %136
  br i1 %142, label %158, label %138

143:                                              ; preds = %154, %138
  %144 = phi i64 [ 0, %138 ], [ %156, %154 ]
  %145 = phi i32 [ -1, %138 ], [ %155, %154 ]
  %146 = getelementptr inbounds float, ptr @global_data, i64 %144
  %147 = load float, ptr %146, align 4, !tbaa !13
  %148 = fcmp ogt float %147, 0.000000e+00
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  %150 = add nsw i32 %145, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %151
  %153 = load float, ptr %152, align 4, !tbaa !13
  store float %153, ptr %146, align 4, !tbaa !13
  br label %154

154:                                              ; preds = %149, %143
  %155 = phi i32 [ %150, %149 ], [ %145, %143 ]
  %156 = add nuw nsw i64 %144, 1
  %157 = icmp eq i64 %156, 32000
  br i1 %157, label %140, label %143

158:                                              ; preds = %140, %134
  %159 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.138, double noundef 0.000000e+00) #10
  call fastcc void @check(i32 noundef 1) #10
  call fastcc void @init(ptr noundef nonnull @.str.92) #10
  %160 = load i32, ptr @ntimes, align 4, !tbaa !7
  %161 = icmp sgt i32 %160, 255
  br i1 %161, label %162, label %192

162:                                              ; preds = %158
  %163 = lshr i32 %160, 8
  %164 = mul nuw nsw i32 %163, 10
  br label %165

165:                                              ; preds = %170, %162
  %166 = phi i32 [ %171, %170 ], [ 0, %162 ]
  br label %167

167:                                              ; preds = %173, %165
  %168 = phi i64 [ 0, %165 ], [ %174, %173 ]
  %169 = phi i32 [ -1, %165 ], [ %.lcssa, %173 ]
  br label %176

170:                                              ; preds = %173
  %171 = add nuw nsw i32 %166, 1
  %172 = icmp eq i32 %171, %164
  br i1 %172, label %192, label %165

173:                                              ; preds = %188
  %.lcssa = phi i32 [ %189, %188 ]
  %174 = add nuw nsw i64 %168, 1
  %175 = icmp eq i64 %174, 256
  br i1 %175, label %170, label %167

176:                                              ; preds = %188, %167
  %177 = phi i64 [ 0, %167 ], [ %190, %188 ]
  %178 = phi i32 [ %169, %167 ], [ %189, %188 ]
  %179 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %177, i64 %168
  %180 = load float, ptr %179, align 4, !tbaa !13
  %181 = fcmp ogt float %180, 0.000000e+00
  br i1 %181, label %182, label %188

182:                                              ; preds = %176
  %183 = add nsw i32 %178, 1
  %184 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %177, i64 %168
  %185 = load float, ptr %184, align 4, !tbaa !13
  %186 = sext i32 %183 to i64
  %187 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %186
  store float %185, ptr %187, align 4, !tbaa !13
  br label %188

188:                                              ; preds = %182, %176
  %189 = phi i32 [ %183, %182 ], [ %178, %176 ]
  %190 = add nuw nsw i64 %177, 1
  %191 = icmp eq i64 %190, 256
  br i1 %191, label %173, label %176

192:                                              ; preds = %170, %158
  %193 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.139, double noundef 0.000000e+00) #10
  call fastcc void @check(i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize memory(write, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @init(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.1) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %3413, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.2) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %56

7:                                                ; preds = %7, %4
  %8 = phi i64 [ %10, %7 ], [ 0, %4 ]
  %9 = getelementptr inbounds float, ptr @global_data, i64 %8
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %9, align 16, !tbaa !13
  %10 = add nuw nsw i64 %8, 4
  %11 = icmp eq i64 %10, 32000
  br i1 %11, label %12, label %7, !llvm.loop !25

12:                                               ; preds = %12, %7
  %13 = phi i64 [ %20, %12 ], [ 0, %7 ]
  %14 = phi <4 x i32> [ %21, %12 ], [ <i32 0, i32 1, i32 2, i32 3>, %7 ]
  %15 = add <4 x i32> %14, <i32 1, i32 1, i32 1, i32 1>
  %16 = mul <4 x i32> %15, %15
  %17 = sitofp <4 x i32> %16 to <4 x float>
  %18 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %17
  %19 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %13
  store <4 x float> %18, ptr %19, align 16, !tbaa !13
  %20 = add nuw nsw i64 %13, 4
  %21 = add <4 x i32> %14, <i32 4, i32 4, i32 4, i32 4>
  %22 = icmp eq i64 %20, 32000
  br i1 %22, label %23, label %12, !llvm.loop !26

23:                                               ; preds = %23, %12
  %24 = phi i64 [ %31, %23 ], [ 0, %12 ]
  %25 = phi <4 x i32> [ %32, %23 ], [ <i32 0, i32 1, i32 2, i32 3>, %12 ]
  %26 = add <4 x i32> %25, <i32 1, i32 1, i32 1, i32 1>
  %27 = mul <4 x i32> %26, %26
  %28 = sitofp <4 x i32> %27 to <4 x float>
  %29 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %28
  %30 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %24
  store <4 x float> %29, ptr %30, align 16, !tbaa !13
  %31 = add nuw nsw i64 %24, 4
  %32 = add <4 x i32> %25, <i32 4, i32 4, i32 4, i32 4>
  %33 = icmp eq i64 %31, 32000
  br i1 %33, label %34, label %23, !llvm.loop !27

34:                                               ; preds = %34, %23
  %35 = phi i64 [ %42, %34 ], [ 0, %23 ]
  %36 = phi <4 x i32> [ %43, %34 ], [ <i32 0, i32 1, i32 2, i32 3>, %23 ]
  %37 = add <4 x i32> %36, <i32 1, i32 1, i32 1, i32 1>
  %38 = mul <4 x i32> %37, %37
  %39 = sitofp <4 x i32> %38 to <4 x float>
  %40 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %39
  %41 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %35
  store <4 x float> %40, ptr %41, align 16, !tbaa !13
  %42 = add nuw nsw i64 %35, 4
  %43 = add <4 x i32> %36, <i32 4, i32 4, i32 4, i32 4>
  %44 = icmp eq i64 %42, 32000
  br i1 %44, label %45, label %34, !llvm.loop !28

45:                                               ; preds = %45, %34
  %46 = phi i64 [ %53, %45 ], [ 0, %34 ]
  %47 = phi <4 x i32> [ %54, %45 ], [ <i32 0, i32 1, i32 2, i32 3>, %34 ]
  %48 = add <4 x i32> %47, <i32 1, i32 1, i32 1, i32 1>
  %49 = mul <4 x i32> %48, %48
  %50 = sitofp <4 x i32> %49 to <4 x float>
  %51 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %50
  %52 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %46
  store <4 x float> %51, ptr %52, align 16, !tbaa !13
  %53 = add nuw nsw i64 %46, 4
  %54 = add <4 x i32> %47, <i32 4, i32 4, i32 4, i32 4>
  %55 = icmp eq i64 %53, 32000
  br i1 %55, label %3413, label %45, !llvm.loop !29

56:                                               ; preds = %4
  %57 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.3) #11
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %59, %56
  %60 = phi i64 [ %62, %59 ], [ 0, %56 ]
  %61 = getelementptr inbounds float, ptr @global_data, i64 %60
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %61, align 16, !tbaa !13
  %62 = add nuw nsw i64 %60, 4
  %63 = icmp eq i64 %62, 32000
  br i1 %63, label %64, label %59, !llvm.loop !30

64:                                               ; preds = %64, %59
  %65 = phi i64 [ %72, %64 ], [ 0, %59 ]
  %66 = phi <4 x i32> [ %73, %64 ], [ <i32 0, i32 1, i32 2, i32 3>, %59 ]
  %67 = add <4 x i32> %66, <i32 1, i32 1, i32 1, i32 1>
  %68 = mul <4 x i32> %67, %67
  %69 = sitofp <4 x i32> %68 to <4 x float>
  %70 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %69
  %71 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %65
  store <4 x float> %70, ptr %71, align 16, !tbaa !13
  %72 = add nuw nsw i64 %65, 4
  %73 = add <4 x i32> %66, <i32 4, i32 4, i32 4, i32 4>
  %74 = icmp eq i64 %72, 32000
  br i1 %74, label %3413, label %64, !llvm.loop !31

75:                                               ; preds = %56
  %76 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.4) #11
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %78, %75
  %79 = phi i64 [ %81, %78 ], [ 0, %75 ]
  %80 = getelementptr inbounds float, ptr @global_data, i64 %79
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %80, align 16, !tbaa !13
  %81 = add nuw nsw i64 %79, 4
  %82 = icmp eq i64 %81, 32000
  br i1 %82, label %83, label %78, !llvm.loop !32

83:                                               ; preds = %83, %78
  %84 = phi i64 [ %91, %83 ], [ 0, %78 ]
  %85 = phi <4 x i32> [ %92, %83 ], [ <i32 0, i32 1, i32 2, i32 3>, %78 ]
  %86 = add <4 x i32> %85, <i32 1, i32 1, i32 1, i32 1>
  %87 = mul <4 x i32> %86, %86
  %88 = sitofp <4 x i32> %87 to <4 x float>
  %89 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %88
  %90 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %84
  store <4 x float> %89, ptr %90, align 16, !tbaa !13
  %91 = add nuw nsw i64 %84, 4
  %92 = add <4 x i32> %85, <i32 4, i32 4, i32 4, i32 4>
  %93 = icmp eq i64 %91, 32000
  br i1 %93, label %3413, label %83, !llvm.loop !33

94:                                               ; preds = %75
  %95 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.5) #11
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %128

97:                                               ; preds = %110, %94
  %98 = phi i64 [ %99, %110 ], [ 0, %94 ]
  %99 = add nuw nsw i64 %98, 1
  %100 = trunc i64 %99 to i32
  %101 = sitofp i32 %100 to float
  %102 = fdiv float 1.000000e+00, %101
  %103 = insertelement <4 x float> poison, float %102, i64 0
  %104 = shufflevector <4 x float> %103, <4 x float> poison, <4 x i32> zeroinitializer
  br label %105

105:                                              ; preds = %105, %97
  %106 = phi i64 [ 0, %97 ], [ %108, %105 ]
  %107 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %98, i64 %106
  store <4 x float> %104, ptr %107, align 16, !tbaa !13
  %108 = add nuw nsw i64 %106, 4
  %109 = icmp eq i64 %108, 256
  br i1 %109, label %110, label %105, !llvm.loop !34

110:                                              ; preds = %105
  %111 = icmp eq i64 %99, 256
  br i1 %111, label %112, label %97

112:                                              ; preds = %126, %110
  %113 = phi i64 [ %114, %126 ], [ 0, %110 ]
  %114 = add nuw nsw i64 %113, 1
  %115 = trunc i64 %114 to i32
  %116 = mul nsw i32 %115, %115
  %117 = sitofp i32 %116 to float
  %118 = fdiv float 1.000000e+00, %117
  %119 = insertelement <4 x float> poison, float %118, i64 0
  %120 = shufflevector <4 x float> %119, <4 x float> poison, <4 x i32> zeroinitializer
  br label %121

121:                                              ; preds = %121, %112
  %122 = phi i64 [ 0, %112 ], [ %124, %121 ]
  %123 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %113, i64 %122
  store <4 x float> %120, ptr %123, align 16, !tbaa !13
  %124 = add nuw nsw i64 %122, 4
  %125 = icmp eq i64 %124, 256
  br i1 %125, label %126, label %121, !llvm.loop !35

126:                                              ; preds = %121
  %127 = icmp eq i64 %114, 256
  br i1 %127, label %3413, label %112

128:                                              ; preds = %94
  %129 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.6) #11
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %166

131:                                              ; preds = %131, %128
  %132 = phi i64 [ %134, %131 ], [ 0, %128 ]
  %133 = getelementptr inbounds float, ptr @global_data, i64 %132
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %133, align 16, !tbaa !13
  %134 = add nuw nsw i64 %132, 4
  %135 = icmp eq i64 %134, 32000
  br i1 %135, label %136, label %131, !llvm.loop !36

136:                                              ; preds = %143, %131
  %137 = phi i64 [ %144, %143 ], [ 0, %131 ]
  br label %138

138:                                              ; preds = %138, %136
  %139 = phi i64 [ 0, %136 ], [ %141, %138 ]
  %140 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %137, i64 %139
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %140, align 16, !tbaa !13
  %141 = add nuw nsw i64 %139, 4
  %142 = icmp eq i64 %141, 256
  br i1 %142, label %143, label %138, !llvm.loop !37

143:                                              ; preds = %138
  %144 = add nuw nsw i64 %137, 1
  %145 = icmp eq i64 %144, 256
  br i1 %145, label %146, label %136

146:                                              ; preds = %153, %143
  %147 = phi i64 [ %154, %153 ], [ 0, %143 ]
  br label %148

148:                                              ; preds = %148, %146
  %149 = phi i64 [ 0, %146 ], [ %151, %148 ]
  %150 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %147, i64 %149
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %150, align 16, !tbaa !13
  %151 = add nuw nsw i64 %149, 4
  %152 = icmp eq i64 %151, 256
  br i1 %152, label %153, label %148, !llvm.loop !38

153:                                              ; preds = %148
  %154 = add nuw nsw i64 %147, 1
  %155 = icmp eq i64 %154, 256
  br i1 %155, label %156, label %146

156:                                              ; preds = %163, %153
  %157 = phi i64 [ %164, %163 ], [ 0, %153 ]
  br label %158

158:                                              ; preds = %158, %156
  %159 = phi i64 [ 0, %156 ], [ %161, %158 ]
  %160 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %157, i64 %159
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %160, align 16, !tbaa !13
  %161 = add nuw nsw i64 %159, 4
  %162 = icmp eq i64 %161, 256
  br i1 %162, label %163, label %158, !llvm.loop !39

163:                                              ; preds = %158
  %164 = add nuw nsw i64 %157, 1
  %165 = icmp eq i64 %164, 256
  br i1 %165, label %3413, label %156

166:                                              ; preds = %128
  %167 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.7) #11
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %169, %166
  %170 = phi i64 [ %172, %169 ], [ 0, %166 ]
  %171 = getelementptr inbounds float, ptr @global_data, i64 %170
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %171, align 16, !tbaa !13
  %172 = add nuw nsw i64 %170, 4
  %173 = icmp eq i64 %172, 32000
  br i1 %173, label %3413, label %169, !llvm.loop !40

174:                                              ; preds = %166
  %175 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.8) #11
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %177, %174
  %178 = phi i64 [ %180, %177 ], [ 0, %174 ]
  %179 = getelementptr inbounds float, ptr @global_data, i64 %178
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %179, align 16, !tbaa !13
  %180 = add nuw nsw i64 %178, 4
  %181 = icmp eq i64 %180, 32000
  br i1 %181, label %182, label %177, !llvm.loop !41

182:                                              ; preds = %189, %177
  %183 = phi i64 [ %190, %189 ], [ 0, %177 ]
  br label %184

184:                                              ; preds = %184, %182
  %185 = phi i64 [ 0, %182 ], [ %187, %184 ]
  %186 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %183, i64 %185
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %186, align 16, !tbaa !13
  %187 = add nuw nsw i64 %185, 4
  %188 = icmp eq i64 %187, 256
  br i1 %188, label %189, label %184, !llvm.loop !42

189:                                              ; preds = %184
  %190 = add nuw nsw i64 %183, 1
  %191 = icmp eq i64 %190, 256
  br i1 %191, label %3413, label %182

192:                                              ; preds = %174
  %193 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.9) #11
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %221

195:                                              ; preds = %202, %192
  %196 = phi i64 [ %203, %202 ], [ 0, %192 ]
  br label %197

197:                                              ; preds = %197, %195
  %198 = phi i64 [ 0, %195 ], [ %200, %197 ]
  %199 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %196, i64 %198
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %199, align 16, !tbaa !13
  %200 = add nuw nsw i64 %198, 4
  %201 = icmp eq i64 %200, 256
  br i1 %201, label %202, label %197, !llvm.loop !43

202:                                              ; preds = %197
  %203 = add nuw nsw i64 %196, 1
  %204 = icmp eq i64 %203, 256
  br i1 %204, label %205, label %195

205:                                              ; preds = %219, %202
  %206 = phi i64 [ %207, %219 ], [ 0, %202 ]
  %207 = add nuw nsw i64 %206, 1
  %208 = trunc i64 %207 to i32
  %209 = mul nsw i32 %208, %208
  %210 = sitofp i32 %209 to float
  %211 = fdiv float 1.000000e+00, %210
  %212 = insertelement <4 x float> poison, float %211, i64 0
  %213 = shufflevector <4 x float> %212, <4 x float> poison, <4 x i32> zeroinitializer
  br label %214

214:                                              ; preds = %214, %205
  %215 = phi i64 [ 0, %205 ], [ %217, %214 ]
  %216 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %206, i64 %215
  store <4 x float> %213, ptr %216, align 16, !tbaa !13
  %217 = add nuw nsw i64 %215, 4
  %218 = icmp eq i64 %217, 256
  br i1 %218, label %219, label %214, !llvm.loop !44

219:                                              ; preds = %214
  %220 = icmp eq i64 %207, 256
  br i1 %220, label %3413, label %205

221:                                              ; preds = %192
  %222 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.10) #11
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %240

224:                                              ; preds = %224, %221
  %225 = phi i64 [ %227, %224 ], [ 0, %221 ]
  %226 = getelementptr inbounds float, ptr @global_data, i64 %225
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %226, align 16, !tbaa !13
  %227 = add nuw nsw i64 %225, 4
  %228 = icmp eq i64 %227, 32000
  br i1 %228, label %229, label %224, !llvm.loop !45

229:                                              ; preds = %229, %224
  %230 = phi i64 [ %237, %229 ], [ 0, %224 ]
  %231 = phi <4 x i32> [ %238, %229 ], [ <i32 0, i32 1, i32 2, i32 3>, %224 ]
  %232 = add <4 x i32> %231, <i32 1, i32 1, i32 1, i32 1>
  %233 = mul <4 x i32> %232, %232
  %234 = sitofp <4 x i32> %233 to <4 x float>
  %235 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %234
  %236 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %230
  store <4 x float> %235, ptr %236, align 16, !tbaa !13
  %237 = add nuw nsw i64 %230, 4
  %238 = add <4 x i32> %231, <i32 4, i32 4, i32 4, i32 4>
  %239 = icmp eq i64 %237, 32000
  br i1 %239, label %3413, label %229, !llvm.loop !46

240:                                              ; preds = %221
  %241 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.11) #11
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %259

243:                                              ; preds = %243, %240
  %244 = phi i64 [ %246, %243 ], [ 0, %240 ]
  %245 = getelementptr inbounds float, ptr @global_data, i64 %244
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %245, align 16, !tbaa !13
  %246 = add nuw nsw i64 %244, 4
  %247 = icmp eq i64 %246, 32000
  br i1 %247, label %248, label %243, !llvm.loop !47

248:                                              ; preds = %248, %243
  %249 = phi i64 [ %256, %248 ], [ 0, %243 ]
  %250 = phi <4 x i32> [ %257, %248 ], [ <i32 0, i32 1, i32 2, i32 3>, %243 ]
  %251 = add <4 x i32> %250, <i32 1, i32 1, i32 1, i32 1>
  %252 = mul <4 x i32> %251, %251
  %253 = sitofp <4 x i32> %252 to <4 x float>
  %254 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %253
  %255 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %249
  store <4 x float> %254, ptr %255, align 16, !tbaa !13
  %256 = add nuw nsw i64 %249, 4
  %257 = add <4 x i32> %250, <i32 4, i32 4, i32 4, i32 4>
  %258 = icmp eq i64 %256, 32000
  br i1 %258, label %3413, label %248, !llvm.loop !48

259:                                              ; preds = %240
  %260 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.12) #11
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %293

262:                                              ; preds = %259
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %263

263:                                              ; preds = %263, %262
  %264 = phi i64 [ 0, %262 ], [ %266, %263 ]
  %265 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %264
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %265, align 16, !tbaa !13
  %266 = add nuw nsw i64 %264, 4
  %267 = icmp eq i64 %266, 32000
  br i1 %267, label %268, label %263, !llvm.loop !49

268:                                              ; preds = %268, %263
  %269 = phi i64 [ %271, %268 ], [ 0, %263 ]
  %270 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %269
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %270, align 16, !tbaa !13
  %271 = add nuw nsw i64 %269, 4
  %272 = icmp eq i64 %271, 32000
  br i1 %272, label %273, label %268, !llvm.loop !50

273:                                              ; preds = %273, %268
  %274 = phi i64 [ %280, %273 ], [ 0, %268 ]
  %275 = phi <4 x i32> [ %281, %273 ], [ <i32 0, i32 1, i32 2, i32 3>, %268 ]
  %276 = add <4 x i32> %275, <i32 1, i32 1, i32 1, i32 1>
  %277 = sitofp <4 x i32> %276 to <4 x float>
  %278 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %277
  %279 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %274
  store <4 x float> %278, ptr %279, align 16, !tbaa !13
  %280 = add nuw nsw i64 %274, 4
  %281 = add <4 x i32> %275, <i32 4, i32 4, i32 4, i32 4>
  %282 = icmp eq i64 %280, 32000
  br i1 %282, label %283, label %273, !llvm.loop !51

283:                                              ; preds = %283, %273
  %284 = phi i64 [ %290, %283 ], [ 0, %273 ]
  %285 = phi <4 x i32> [ %291, %283 ], [ <i32 0, i32 1, i32 2, i32 3>, %273 ]
  %286 = add <4 x i32> %285, <i32 1, i32 1, i32 1, i32 1>
  %287 = sitofp <4 x i32> %286 to <4 x float>
  %288 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %287
  %289 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %284
  store <4 x float> %288, ptr %289, align 16, !tbaa !13
  %290 = add nuw nsw i64 %284, 4
  %291 = add <4 x i32> %285, <i32 4, i32 4, i32 4, i32 4>
  %292 = icmp eq i64 %290, 32000
  br i1 %292, label %3413, label %283, !llvm.loop !52

293:                                              ; preds = %259
  %294 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.13) #11
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %327

296:                                              ; preds = %293
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %297

297:                                              ; preds = %297, %296
  %298 = phi i64 [ 0, %296 ], [ %300, %297 ]
  %299 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %298
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %299, align 16, !tbaa !13
  %300 = add nuw nsw i64 %298, 4
  %301 = icmp eq i64 %300, 32000
  br i1 %301, label %302, label %297, !llvm.loop !53

302:                                              ; preds = %302, %297
  %303 = phi i64 [ %305, %302 ], [ 0, %297 ]
  %304 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %303
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %304, align 16, !tbaa !13
  %305 = add nuw nsw i64 %303, 4
  %306 = icmp eq i64 %305, 32000
  br i1 %306, label %307, label %302, !llvm.loop !54

307:                                              ; preds = %307, %302
  %308 = phi i64 [ %314, %307 ], [ 0, %302 ]
  %309 = phi <4 x i32> [ %315, %307 ], [ <i32 0, i32 1, i32 2, i32 3>, %302 ]
  %310 = add <4 x i32> %309, <i32 1, i32 1, i32 1, i32 1>
  %311 = sitofp <4 x i32> %310 to <4 x float>
  %312 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %311
  %313 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %308
  store <4 x float> %312, ptr %313, align 16, !tbaa !13
  %314 = add nuw nsw i64 %308, 4
  %315 = add <4 x i32> %309, <i32 4, i32 4, i32 4, i32 4>
  %316 = icmp eq i64 %314, 32000
  br i1 %316, label %317, label %307, !llvm.loop !55

317:                                              ; preds = %317, %307
  %318 = phi i64 [ %324, %317 ], [ 0, %307 ]
  %319 = phi <4 x i32> [ %325, %317 ], [ <i32 0, i32 1, i32 2, i32 3>, %307 ]
  %320 = add <4 x i32> %319, <i32 1, i32 1, i32 1, i32 1>
  %321 = sitofp <4 x i32> %320 to <4 x float>
  %322 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %321
  %323 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %318
  store <4 x float> %322, ptr %323, align 16, !tbaa !13
  %324 = add nuw nsw i64 %318, 4
  %325 = add <4 x i32> %319, <i32 4, i32 4, i32 4, i32 4>
  %326 = icmp eq i64 %324, 32000
  br i1 %326, label %3413, label %317, !llvm.loop !56

327:                                              ; preds = %293
  %328 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.14) #11
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %361

330:                                              ; preds = %327
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @array, i8 0, i64 128000, i1 false), !tbaa !13
  br label %331

331:                                              ; preds = %338, %330
  %332 = phi i64 [ %339, %338 ], [ 0, %330 ]
  br label %333

333:                                              ; preds = %333, %331
  %334 = phi i64 [ 0, %331 ], [ %336, %333 ]
  %335 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %332, i64 %334
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %335, align 16, !tbaa !13
  %336 = add nuw nsw i64 %334, 4
  %337 = icmp eq i64 %336, 256
  br i1 %337, label %338, label %333, !llvm.loop !57

338:                                              ; preds = %333
  %339 = add nuw nsw i64 %332, 1
  %340 = icmp eq i64 %339, 256
  br i1 %340, label %341, label %331

341:                                              ; preds = %348, %338
  %342 = phi i64 [ %349, %348 ], [ 0, %338 ]
  br label %343

343:                                              ; preds = %343, %341
  %344 = phi i64 [ 0, %341 ], [ %346, %343 ]
  %345 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %342, i64 %344
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, ptr %345, align 16, !tbaa !13
  %346 = add nuw nsw i64 %344, 4
  %347 = icmp eq i64 %346, 256
  br i1 %347, label %348, label %343, !llvm.loop !58

348:                                              ; preds = %343
  %349 = add nuw nsw i64 %342, 1
  %350 = icmp eq i64 %349, 256
  br i1 %350, label %351, label %341

351:                                              ; preds = %358, %348
  %352 = phi i64 [ %359, %358 ], [ 0, %348 ]
  br label %353

353:                                              ; preds = %353, %351
  %354 = phi i64 [ 0, %351 ], [ %356, %353 ]
  %355 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %352, i64 %354
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, ptr %355, align 16, !tbaa !13
  %356 = add nuw nsw i64 %354, 4
  %357 = icmp eq i64 %356, 256
  br i1 %357, label %358, label %353, !llvm.loop !59

358:                                              ; preds = %353
  %359 = add nuw nsw i64 %352, 1
  %360 = icmp eq i64 %359, 256
  br i1 %360, label %3413, label %351

361:                                              ; preds = %327
  %362 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.15) #11
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %399

364:                                              ; preds = %371, %361
  %365 = phi i64 [ %372, %371 ], [ 0, %361 ]
  br label %366

366:                                              ; preds = %366, %364
  %367 = phi i64 [ 0, %364 ], [ %369, %366 ]
  %368 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %365, i64 %367
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %368, align 16, !tbaa !13
  %369 = add nuw nsw i64 %367, 4
  %370 = icmp eq i64 %369, 256
  br i1 %370, label %371, label %366, !llvm.loop !60

371:                                              ; preds = %366
  %372 = add nuw nsw i64 %365, 1
  %373 = icmp eq i64 %372, 256
  br i1 %373, label %374, label %364

374:                                              ; preds = %374, %371
  %375 = phi i64 [ %381, %374 ], [ 0, %371 ]
  %376 = phi <4 x i32> [ %382, %374 ], [ <i32 0, i32 1, i32 2, i32 3>, %371 ]
  %377 = add <4 x i32> %376, <i32 1, i32 1, i32 1, i32 1>
  %378 = sitofp <4 x i32> %377 to <4 x float>
  %379 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %378
  %380 = getelementptr inbounds float, ptr @array, i64 %375
  store <4 x float> %379, ptr %380, align 16, !tbaa !13
  %381 = add nuw nsw i64 %375, 4
  %382 = add <4 x i32> %376, <i32 4, i32 4, i32 4, i32 4>
  %383 = icmp eq i64 %381, 32000
  br i1 %383, label %384, label %374, !llvm.loop !61

384:                                              ; preds = %397, %374
  %385 = phi i64 [ %386, %397 ], [ 0, %374 ]
  %386 = add nuw nsw i64 %385, 1
  %387 = trunc i64 %386 to i32
  %388 = sitofp i32 %387 to float
  %389 = fdiv float 1.000000e+00, %388
  %390 = insertelement <4 x float> poison, float %389, i64 0
  %391 = shufflevector <4 x float> %390, <4 x float> poison, <4 x i32> zeroinitializer
  br label %392

392:                                              ; preds = %392, %384
  %393 = phi i64 [ 0, %384 ], [ %395, %392 ]
  %394 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %385, i64 %393
  store <4 x float> %391, ptr %394, align 16, !tbaa !13
  %395 = add nuw nsw i64 %393, 4
  %396 = icmp eq i64 %395, 256
  br i1 %396, label %397, label %392, !llvm.loop !62

397:                                              ; preds = %392
  %398 = icmp eq i64 %386, 256
  br i1 %398, label %3413, label %384

399:                                              ; preds = %361
  %400 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.16) #11
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %438

402:                                              ; preds = %399
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %403

403:                                              ; preds = %403, %402
  %404 = phi i64 [ 0, %402 ], [ %406, %403 ]
  %405 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %404
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %405, align 16, !tbaa !13
  %406 = add nuw nsw i64 %404, 4
  %407 = icmp eq i64 %406, 32000
  br i1 %407, label %408, label %403, !llvm.loop !63

408:                                              ; preds = %408, %403
  %409 = phi i64 [ %415, %408 ], [ 0, %403 ]
  %410 = phi <4 x i32> [ %416, %408 ], [ <i32 0, i32 1, i32 2, i32 3>, %403 ]
  %411 = add <4 x i32> %410, <i32 1, i32 1, i32 1, i32 1>
  %412 = sitofp <4 x i32> %411 to <4 x float>
  %413 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %412
  %414 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %409
  store <4 x float> %413, ptr %414, align 16, !tbaa !13
  %415 = add nuw nsw i64 %409, 4
  %416 = add <4 x i32> %410, <i32 4, i32 4, i32 4, i32 4>
  %417 = icmp eq i64 %415, 32000
  br i1 %417, label %418, label %408, !llvm.loop !64

418:                                              ; preds = %418, %408
  %419 = phi i64 [ %425, %418 ], [ 0, %408 ]
  %420 = phi <4 x i32> [ %426, %418 ], [ <i32 0, i32 1, i32 2, i32 3>, %408 ]
  %421 = add <4 x i32> %420, <i32 1, i32 1, i32 1, i32 1>
  %422 = sitofp <4 x i32> %421 to <4 x float>
  %423 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %422
  %424 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %419
  store <4 x float> %423, ptr %424, align 16, !tbaa !13
  %425 = add nuw nsw i64 %419, 4
  %426 = add <4 x i32> %420, <i32 4, i32 4, i32 4, i32 4>
  %427 = icmp eq i64 %425, 32000
  br i1 %427, label %428, label %418, !llvm.loop !65

428:                                              ; preds = %428, %418
  %429 = phi i64 [ %435, %428 ], [ 0, %418 ]
  %430 = phi <4 x i32> [ %436, %428 ], [ <i32 0, i32 1, i32 2, i32 3>, %418 ]
  %431 = add <4 x i32> %430, <i32 1, i32 1, i32 1, i32 1>
  %432 = sitofp <4 x i32> %431 to <4 x float>
  %433 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %432
  %434 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %429
  store <4 x float> %433, ptr %434, align 16, !tbaa !13
  %435 = add nuw nsw i64 %429, 4
  %436 = add <4 x i32> %430, <i32 4, i32 4, i32 4, i32 4>
  %437 = icmp eq i64 %435, 32000
  br i1 %437, label %3413, label %428, !llvm.loop !66

438:                                              ; preds = %399
  %439 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.17) #11
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %457

441:                                              ; preds = %438
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %442

442:                                              ; preds = %442, %441
  %443 = phi i64 [ 0, %441 ], [ %445, %442 ]
  %444 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %443
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, ptr %444, align 16, !tbaa !13
  %445 = add nuw nsw i64 %443, 4
  %446 = icmp eq i64 %445, 32000
  br i1 %446, label %447, label %442, !llvm.loop !67

447:                                              ; preds = %447, %442
  %448 = phi i64 [ %450, %447 ], [ 0, %442 ]
  %449 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %448
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %449, align 16, !tbaa !13
  %450 = add nuw nsw i64 %448, 4
  %451 = icmp eq i64 %450, 32000
  br i1 %451, label %452, label %447, !llvm.loop !68

452:                                              ; preds = %452, %447
  %453 = phi i64 [ %455, %452 ], [ 0, %447 ]
  %454 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %453
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %454, align 16, !tbaa !13
  %455 = add nuw nsw i64 %453, 4
  %456 = icmp eq i64 %455, 32000
  br i1 %456, label %3413, label %452, !llvm.loop !69

457:                                              ; preds = %438
  %458 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.18) #11
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %476

460:                                              ; preds = %460, %457
  %461 = phi i64 [ %463, %460 ], [ 0, %457 ]
  %462 = getelementptr inbounds float, ptr @global_data, i64 %461
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %462, align 16, !tbaa !13
  %463 = add nuw nsw i64 %461, 4
  %464 = icmp eq i64 %463, 32000
  br i1 %464, label %465, label %460, !llvm.loop !70

465:                                              ; preds = %465, %460
  %466 = phi i64 [ %473, %465 ], [ 0, %460 ]
  %467 = phi <4 x i32> [ %474, %465 ], [ <i32 0, i32 1, i32 2, i32 3>, %460 ]
  %468 = add <4 x i32> %467, <i32 1, i32 1, i32 1, i32 1>
  %469 = mul <4 x i32> %468, %468
  %470 = sitofp <4 x i32> %469 to <4 x float>
  %471 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %470
  %472 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %466
  store <4 x float> %471, ptr %472, align 16, !tbaa !13
  %473 = add nuw nsw i64 %466, 4
  %474 = add <4 x i32> %467, <i32 4, i32 4, i32 4, i32 4>
  %475 = icmp eq i64 %473, 32000
  br i1 %475, label %3413, label %465, !llvm.loop !71

476:                                              ; preds = %457
  %477 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.19) #11
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %509

479:                                              ; preds = %486, %476
  %480 = phi i64 [ %487, %486 ], [ 0, %476 ]
  br label %481

481:                                              ; preds = %481, %479
  %482 = phi i64 [ 0, %479 ], [ %484, %481 ]
  %483 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %480, i64 %482
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %483, align 16, !tbaa !13
  %484 = add nuw nsw i64 %482, 4
  %485 = icmp eq i64 %484, 256
  br i1 %485, label %486, label %481, !llvm.loop !72

486:                                              ; preds = %481
  %487 = add nuw nsw i64 %480, 1
  %488 = icmp eq i64 %487, 256
  br i1 %488, label %489, label %479

489:                                              ; preds = %489, %486
  %490 = phi i64 [ %496, %489 ], [ 0, %486 ]
  %491 = phi <4 x i32> [ %497, %489 ], [ <i32 0, i32 1, i32 2, i32 3>, %486 ]
  %492 = add <4 x i32> %491, <i32 1, i32 1, i32 1, i32 1>
  %493 = sitofp <4 x i32> %492 to <4 x float>
  %494 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %493
  %495 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %490
  store <4 x float> %494, ptr %495, align 16, !tbaa !13
  %496 = add nuw nsw i64 %490, 4
  %497 = add <4 x i32> %491, <i32 4, i32 4, i32 4, i32 4>
  %498 = icmp eq i64 %496, 32000
  br i1 %498, label %499, label %489, !llvm.loop !73

499:                                              ; preds = %499, %489
  %500 = phi i64 [ %506, %499 ], [ 0, %489 ]
  %501 = phi <4 x i32> [ %507, %499 ], [ <i32 0, i32 1, i32 2, i32 3>, %489 ]
  %502 = add <4 x i32> %501, <i32 1, i32 1, i32 1, i32 1>
  %503 = sitofp <4 x i32> %502 to <4 x float>
  %504 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %503
  %505 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %500
  store <4 x float> %504, ptr %505, align 16, !tbaa !13
  %506 = add nuw nsw i64 %500, 4
  %507 = add <4 x i32> %501, <i32 4, i32 4, i32 4, i32 4>
  %508 = icmp eq i64 %506, 32000
  br i1 %508, label %3413, label %499, !llvm.loop !74

509:                                              ; preds = %476
  %510 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.20) #11
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %533

512:                                              ; preds = %512, %509
  %513 = phi i64 [ %515, %512 ], [ 0, %509 ]
  %514 = getelementptr inbounds float, ptr @array, i64 %513
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %514, align 16, !tbaa !13
  %515 = add nuw nsw i64 %513, 4
  %516 = icmp eq i64 %515, 32000
  br i1 %516, label %517, label %512, !llvm.loop !75

517:                                              ; preds = %531, %512
  %518 = phi i64 [ %519, %531 ], [ 0, %512 ]
  %519 = add nuw nsw i64 %518, 1
  %520 = trunc i64 %519 to i32
  %521 = mul nsw i32 %520, %520
  %522 = sitofp i32 %521 to float
  %523 = fdiv float 1.000000e+00, %522
  %524 = insertelement <4 x float> poison, float %523, i64 0
  %525 = shufflevector <4 x float> %524, <4 x float> poison, <4 x i32> zeroinitializer
  br label %526

526:                                              ; preds = %526, %517
  %527 = phi i64 [ 0, %517 ], [ %529, %526 ]
  %528 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %518, i64 %527
  store <4 x float> %525, ptr %528, align 16, !tbaa !13
  %529 = add nuw nsw i64 %527, 4
  %530 = icmp eq i64 %529, 256
  br i1 %530, label %531, label %526, !llvm.loop !76

531:                                              ; preds = %526
  %532 = icmp eq i64 %519, 256
  br i1 %532, label %3413, label %517

533:                                              ; preds = %509
  %534 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.21) #11
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %536, label %552

536:                                              ; preds = %536, %533
  %537 = phi i64 [ %539, %536 ], [ 0, %533 ]
  %538 = getelementptr inbounds float, ptr @global_data, i64 %537
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %538, align 16, !tbaa !13
  %539 = add nuw nsw i64 %537, 4
  %540 = icmp eq i64 %539, 32000
  br i1 %540, label %541, label %536, !llvm.loop !77

541:                                              ; preds = %541, %536
  %542 = phi i64 [ %549, %541 ], [ 0, %536 ]
  %543 = phi <4 x i32> [ %550, %541 ], [ <i32 0, i32 1, i32 2, i32 3>, %536 ]
  %544 = add <4 x i32> %543, <i32 1, i32 1, i32 1, i32 1>
  %545 = mul <4 x i32> %544, %544
  %546 = sitofp <4 x i32> %545 to <4 x float>
  %547 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %546
  %548 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %542
  store <4 x float> %547, ptr %548, align 16, !tbaa !13
  %549 = add nuw nsw i64 %542, 4
  %550 = add <4 x i32> %543, <i32 4, i32 4, i32 4, i32 4>
  %551 = icmp eq i64 %549, 32000
  br i1 %551, label %3413, label %541, !llvm.loop !78

552:                                              ; preds = %533
  %553 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.22) #11
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %591

555:                                              ; preds = %555, %552
  %556 = phi i64 [ %558, %555 ], [ 0, %552 ]
  %557 = getelementptr inbounds float, ptr @global_data, i64 %556
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %557, align 16, !tbaa !13
  %558 = add nuw nsw i64 %556, 4
  %559 = icmp eq i64 %558, 32000
  br i1 %559, label %560, label %555, !llvm.loop !79

560:                                              ; preds = %555
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), i8 0, i64 128000, i1 false), !tbaa !13
  br label %561

561:                                              ; preds = %561, %560
  %562 = phi i64 [ 0, %560 ], [ %568, %561 ]
  %563 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %560 ], [ %569, %561 ]
  %564 = add <4 x i32> %563, <i32 1, i32 1, i32 1, i32 1>
  %565 = sitofp <4 x i32> %564 to <4 x float>
  %566 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %565
  %567 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %562
  store <4 x float> %566, ptr %567, align 16, !tbaa !13
  %568 = add nuw nsw i64 %562, 4
  %569 = add <4 x i32> %563, <i32 4, i32 4, i32 4, i32 4>
  %570 = icmp eq i64 %568, 32000
  br i1 %570, label %571, label %561, !llvm.loop !80

571:                                              ; preds = %571, %561
  %572 = phi i64 [ %578, %571 ], [ 0, %561 ]
  %573 = phi <4 x i32> [ %579, %571 ], [ <i32 0, i32 1, i32 2, i32 3>, %561 ]
  %574 = add <4 x i32> %573, <i32 1, i32 1, i32 1, i32 1>
  %575 = sitofp <4 x i32> %574 to <4 x float>
  %576 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %575
  %577 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %572
  store <4 x float> %576, ptr %577, align 16, !tbaa !13
  %578 = add nuw nsw i64 %572, 4
  %579 = add <4 x i32> %573, <i32 4, i32 4, i32 4, i32 4>
  %580 = icmp eq i64 %578, 32000
  br i1 %580, label %581, label %571, !llvm.loop !81

581:                                              ; preds = %581, %571
  %582 = phi i64 [ %588, %581 ], [ 0, %571 ]
  %583 = phi <4 x i32> [ %589, %581 ], [ <i32 0, i32 1, i32 2, i32 3>, %571 ]
  %584 = add <4 x i32> %583, <i32 1, i32 1, i32 1, i32 1>
  %585 = sitofp <4 x i32> %584 to <4 x float>
  %586 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %585
  %587 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %582
  store <4 x float> %586, ptr %587, align 16, !tbaa !13
  %588 = add nuw nsw i64 %582, 4
  %589 = add <4 x i32> %583, <i32 4, i32 4, i32 4, i32 4>
  %590 = icmp eq i64 %588, 32000
  br i1 %590, label %3413, label %581, !llvm.loop !82

591:                                              ; preds = %552
  %592 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.23) #11
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %594, label %634

594:                                              ; preds = %594, %591
  %595 = phi i64 [ %597, %594 ], [ 0, %591 ]
  %596 = getelementptr inbounds float, ptr @global_data, i64 %595
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %596, align 16, !tbaa !13
  %597 = add nuw nsw i64 %595, 4
  %598 = icmp eq i64 %597, 32000
  br i1 %598, label %599, label %594, !llvm.loop !83

599:                                              ; preds = %599, %594
  %600 = phi i64 [ %602, %599 ], [ 0, %594 ]
  %601 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %600
  store float 1.000000e+00, ptr %601, align 8, !tbaa !13
  %602 = add nuw nsw i64 %600, 2
  %603 = icmp ult i64 %600, 31998
  br i1 %603, label %599, label %604

604:                                              ; preds = %604, %599
  %605 = phi i64 [ %607, %604 ], [ 0, %599 ]
  %606 = getelementptr inbounds float, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 1), i64 %605
  store float -1.000000e+00, ptr %606, align 4, !tbaa !13
  %607 = add nuw nsw i64 %605, 2
  %608 = icmp ult i64 %605, 31998
  br i1 %608, label %604, label %609

609:                                              ; preds = %609, %604
  %610 = phi i64 [ %612, %609 ], [ 0, %604 ]
  %611 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %610
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %611, align 16, !tbaa !13
  %612 = add nuw nsw i64 %610, 4
  %613 = icmp eq i64 %612, 32000
  br i1 %613, label %614, label %609, !llvm.loop !84

614:                                              ; preds = %614, %609
  %615 = phi i64 [ %621, %614 ], [ 0, %609 ]
  %616 = phi <4 x i32> [ %622, %614 ], [ <i32 0, i32 1, i32 2, i32 3>, %609 ]
  %617 = add <4 x i32> %616, <i32 1, i32 1, i32 1, i32 1>
  %618 = sitofp <4 x i32> %617 to <4 x float>
  %619 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %618
  %620 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %615
  store <4 x float> %619, ptr %620, align 16, !tbaa !13
  %621 = add nuw nsw i64 %615, 4
  %622 = add <4 x i32> %616, <i32 4, i32 4, i32 4, i32 4>
  %623 = icmp eq i64 %621, 32000
  br i1 %623, label %624, label %614, !llvm.loop !85

624:                                              ; preds = %624, %614
  %625 = phi i64 [ %631, %624 ], [ 0, %614 ]
  %626 = phi <4 x i32> [ %632, %624 ], [ <i32 0, i32 1, i32 2, i32 3>, %614 ]
  %627 = add <4 x i32> %626, <i32 1, i32 1, i32 1, i32 1>
  %628 = sitofp <4 x i32> %627 to <4 x float>
  %629 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %628
  %630 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %625
  store <4 x float> %629, ptr %630, align 16, !tbaa !13
  %631 = add nuw nsw i64 %625, 4
  %632 = add <4 x i32> %626, <i32 4, i32 4, i32 4, i32 4>
  %633 = icmp eq i64 %631, 32000
  br i1 %633, label %3413, label %624, !llvm.loop !86

634:                                              ; preds = %591
  %635 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.24) #11
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %637, label %662

637:                                              ; preds = %637, %634
  %638 = phi i64 [ %640, %637 ], [ 0, %634 ]
  %639 = getelementptr inbounds float, ptr @global_data, i64 %638
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %639, align 16, !tbaa !13
  %640 = add nuw nsw i64 %638, 4
  %641 = icmp eq i64 %640, 32000
  br i1 %641, label %642, label %637, !llvm.loop !87

642:                                              ; preds = %642, %637
  %643 = phi i64 [ %649, %642 ], [ 0, %637 ]
  %644 = phi <4 x i32> [ %650, %642 ], [ <i32 0, i32 1, i32 2, i32 3>, %637 ]
  %645 = add <4 x i32> %644, <i32 1, i32 1, i32 1, i32 1>
  %646 = sitofp <4 x i32> %645 to <4 x float>
  %647 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %646
  %648 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %643
  store <4 x float> %647, ptr %648, align 16, !tbaa !13
  %649 = add nuw nsw i64 %643, 4
  %650 = add <4 x i32> %644, <i32 4, i32 4, i32 4, i32 4>
  %651 = icmp eq i64 %649, 32000
  br i1 %651, label %652, label %642, !llvm.loop !88

652:                                              ; preds = %652, %642
  %653 = phi i64 [ %659, %652 ], [ 0, %642 ]
  %654 = phi <4 x i32> [ %660, %652 ], [ <i32 0, i32 1, i32 2, i32 3>, %642 ]
  %655 = add <4 x i32> %654, <i32 1, i32 1, i32 1, i32 1>
  %656 = sitofp <4 x i32> %655 to <4 x float>
  %657 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %656
  %658 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %653
  store <4 x float> %657, ptr %658, align 16, !tbaa !13
  %659 = add nuw nsw i64 %653, 4
  %660 = add <4 x i32> %654, <i32 4, i32 4, i32 4, i32 4>
  %661 = icmp eq i64 %659, 32000
  br i1 %661, label %3413, label %652, !llvm.loop !89

662:                                              ; preds = %634
  %663 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.25) #11
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %665, label %681

665:                                              ; preds = %665, %662
  %666 = phi i64 [ %668, %665 ], [ 0, %662 ]
  %667 = getelementptr inbounds float, ptr @global_data, i64 %666
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %667, align 16, !tbaa !13
  %668 = add nuw nsw i64 %666, 4
  %669 = icmp eq i64 %668, 32000
  br i1 %669, label %670, label %665, !llvm.loop !90

670:                                              ; preds = %670, %665
  %671 = phi i64 [ %678, %670 ], [ 0, %665 ]
  %672 = phi <4 x i32> [ %679, %670 ], [ <i32 0, i32 1, i32 2, i32 3>, %665 ]
  %673 = add <4 x i32> %672, <i32 1, i32 1, i32 1, i32 1>
  %674 = mul <4 x i32> %673, %673
  %675 = sitofp <4 x i32> %674 to <4 x float>
  %676 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %675
  %677 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %671
  store <4 x float> %676, ptr %677, align 16, !tbaa !13
  %678 = add nuw nsw i64 %671, 4
  %679 = add <4 x i32> %672, <i32 4, i32 4, i32 4, i32 4>
  %680 = icmp eq i64 %678, 32000
  br i1 %680, label %3413, label %670, !llvm.loop !91

681:                                              ; preds = %662
  %682 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.26) #11
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %684, label %700

684:                                              ; preds = %684, %681
  %685 = phi i64 [ %687, %684 ], [ 0, %681 ]
  %686 = getelementptr inbounds float, ptr @global_data, i64 %685
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %686, align 16, !tbaa !13
  %687 = add nuw nsw i64 %685, 4
  %688 = icmp eq i64 %687, 32000
  br i1 %688, label %689, label %684, !llvm.loop !92

689:                                              ; preds = %689, %684
  %690 = phi i64 [ %697, %689 ], [ 0, %684 ]
  %691 = phi <4 x i32> [ %698, %689 ], [ <i32 0, i32 1, i32 2, i32 3>, %684 ]
  %692 = add <4 x i32> %691, <i32 1, i32 1, i32 1, i32 1>
  %693 = mul <4 x i32> %692, %692
  %694 = sitofp <4 x i32> %693 to <4 x float>
  %695 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %694
  %696 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %690
  store <4 x float> %695, ptr %696, align 16, !tbaa !13
  %697 = add nuw nsw i64 %690, 4
  %698 = add <4 x i32> %691, <i32 4, i32 4, i32 4, i32 4>
  %699 = icmp eq i64 %697, 32000
  br i1 %699, label %3413, label %689, !llvm.loop !93

700:                                              ; preds = %681
  %701 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.27) #11
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %703, label %719

703:                                              ; preds = %703, %700
  %704 = phi i64 [ %706, %703 ], [ 0, %700 ]
  %705 = getelementptr inbounds float, ptr @global_data, i64 %704
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %705, align 16, !tbaa !13
  %706 = add nuw nsw i64 %704, 4
  %707 = icmp eq i64 %706, 32000
  br i1 %707, label %708, label %703, !llvm.loop !94

708:                                              ; preds = %708, %703
  %709 = phi i64 [ %716, %708 ], [ 0, %703 ]
  %710 = phi <4 x i32> [ %717, %708 ], [ <i32 0, i32 1, i32 2, i32 3>, %703 ]
  %711 = add <4 x i32> %710, <i32 1, i32 1, i32 1, i32 1>
  %712 = mul <4 x i32> %711, %711
  %713 = sitofp <4 x i32> %712 to <4 x float>
  %714 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %713
  %715 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %709
  store <4 x float> %714, ptr %715, align 16, !tbaa !13
  %716 = add nuw nsw i64 %709, 4
  %717 = add <4 x i32> %710, <i32 4, i32 4, i32 4, i32 4>
  %718 = icmp eq i64 %716, 32000
  br i1 %718, label %3413, label %708, !llvm.loop !95

719:                                              ; preds = %700
  %720 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.28) #11
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %722, label %738

722:                                              ; preds = %722, %719
  %723 = phi i64 [ %725, %722 ], [ 0, %719 ]
  %724 = getelementptr inbounds float, ptr @global_data, i64 %723
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %724, align 16, !tbaa !13
  %725 = add nuw nsw i64 %723, 4
  %726 = icmp eq i64 %725, 32000
  br i1 %726, label %727, label %722, !llvm.loop !96

727:                                              ; preds = %727, %722
  %728 = phi i64 [ %735, %727 ], [ 0, %722 ]
  %729 = phi <4 x i32> [ %736, %727 ], [ <i32 0, i32 1, i32 2, i32 3>, %722 ]
  %730 = add <4 x i32> %729, <i32 1, i32 1, i32 1, i32 1>
  %731 = mul <4 x i32> %730, %730
  %732 = sitofp <4 x i32> %731 to <4 x float>
  %733 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %732
  %734 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %728
  store <4 x float> %733, ptr %734, align 16, !tbaa !13
  %735 = add nuw nsw i64 %728, 4
  %736 = add <4 x i32> %729, <i32 4, i32 4, i32 4, i32 4>
  %737 = icmp eq i64 %735, 32000
  br i1 %737, label %3413, label %727, !llvm.loop !97

738:                                              ; preds = %719
  %739 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.29) #11
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %741, label %757

741:                                              ; preds = %741, %738
  %742 = phi i64 [ %744, %741 ], [ 0, %738 ]
  %743 = getelementptr inbounds float, ptr @global_data, i64 %742
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %743, align 16, !tbaa !13
  %744 = add nuw nsw i64 %742, 4
  %745 = icmp eq i64 %744, 32000
  br i1 %745, label %746, label %741, !llvm.loop !98

746:                                              ; preds = %746, %741
  %747 = phi i64 [ %754, %746 ], [ 0, %741 ]
  %748 = phi <4 x i32> [ %755, %746 ], [ <i32 0, i32 1, i32 2, i32 3>, %741 ]
  %749 = add <4 x i32> %748, <i32 1, i32 1, i32 1, i32 1>
  %750 = mul <4 x i32> %749, %749
  %751 = sitofp <4 x i32> %750 to <4 x float>
  %752 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %751
  %753 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %747
  store <4 x float> %752, ptr %753, align 16, !tbaa !13
  %754 = add nuw nsw i64 %747, 4
  %755 = add <4 x i32> %748, <i32 4, i32 4, i32 4, i32 4>
  %756 = icmp eq i64 %754, 32000
  br i1 %756, label %3413, label %746, !llvm.loop !99

757:                                              ; preds = %738
  %758 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.30) #11
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %760, label %785

760:                                              ; preds = %760, %757
  %761 = phi i64 [ %763, %760 ], [ 0, %757 ]
  %762 = getelementptr inbounds float, ptr @global_data, i64 %761
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %762, align 16, !tbaa !13
  %763 = add nuw nsw i64 %761, 4
  %764 = icmp eq i64 %763, 32000
  br i1 %764, label %765, label %760, !llvm.loop !100

765:                                              ; preds = %765, %760
  %766 = phi i64 [ %772, %765 ], [ 0, %760 ]
  %767 = phi <4 x i32> [ %773, %765 ], [ <i32 0, i32 1, i32 2, i32 3>, %760 ]
  %768 = add <4 x i32> %767, <i32 1, i32 1, i32 1, i32 1>
  %769 = sitofp <4 x i32> %768 to <4 x float>
  %770 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %769
  %771 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %766
  store <4 x float> %770, ptr %771, align 16, !tbaa !13
  %772 = add nuw nsw i64 %766, 4
  %773 = add <4 x i32> %767, <i32 4, i32 4, i32 4, i32 4>
  %774 = icmp eq i64 %772, 32000
  br i1 %774, label %775, label %765, !llvm.loop !101

775:                                              ; preds = %775, %765
  %776 = phi i64 [ %782, %775 ], [ 0, %765 ]
  %777 = phi <4 x i32> [ %783, %775 ], [ <i32 0, i32 1, i32 2, i32 3>, %765 ]
  %778 = add <4 x i32> %777, <i32 1, i32 1, i32 1, i32 1>
  %779 = sitofp <4 x i32> %778 to <4 x float>
  %780 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %779
  %781 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %776
  store <4 x float> %780, ptr %781, align 16, !tbaa !13
  %782 = add nuw nsw i64 %776, 4
  %783 = add <4 x i32> %777, <i32 4, i32 4, i32 4, i32 4>
  %784 = icmp eq i64 %782, 32000
  br i1 %784, label %3413, label %775, !llvm.loop !102

785:                                              ; preds = %757
  %786 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.31) #11
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %788, label %824

788:                                              ; preds = %785
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %789

789:                                              ; preds = %789, %788
  %790 = phi i64 [ 0, %788 ], [ %792, %789 ]
  %791 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %790
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %791, align 16, !tbaa !13
  %792 = add nuw nsw i64 %790, 4
  %793 = icmp eq i64 %792, 32000
  br i1 %793, label %794, label %789, !llvm.loop !103

794:                                              ; preds = %794, %789
  %795 = phi i64 [ %801, %794 ], [ 0, %789 ]
  %796 = phi <4 x i32> [ %802, %794 ], [ <i32 0, i32 1, i32 2, i32 3>, %789 ]
  %797 = add <4 x i32> %796, <i32 1, i32 1, i32 1, i32 1>
  %798 = sitofp <4 x i32> %797 to <4 x float>
  %799 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %798
  %800 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %795
  store <4 x float> %799, ptr %800, align 16, !tbaa !13
  %801 = add nuw nsw i64 %795, 4
  %802 = add <4 x i32> %796, <i32 4, i32 4, i32 4, i32 4>
  %803 = icmp eq i64 %801, 32000
  br i1 %803, label %804, label %794, !llvm.loop !104

804:                                              ; preds = %804, %794
  %805 = phi i64 [ %811, %804 ], [ 0, %794 ]
  %806 = phi <4 x i32> [ %812, %804 ], [ <i32 0, i32 1, i32 2, i32 3>, %794 ]
  %807 = add <4 x i32> %806, <i32 1, i32 1, i32 1, i32 1>
  %808 = sitofp <4 x i32> %807 to <4 x float>
  %809 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %808
  %810 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %805
  store <4 x float> %809, ptr %810, align 16, !tbaa !13
  %811 = add nuw nsw i64 %805, 4
  %812 = add <4 x i32> %806, <i32 4, i32 4, i32 4, i32 4>
  %813 = icmp eq i64 %811, 32000
  br i1 %813, label %814, label %804, !llvm.loop !105

814:                                              ; preds = %814, %804
  %815 = phi i64 [ %821, %814 ], [ 0, %804 ]
  %816 = phi <4 x i32> [ %822, %814 ], [ <i32 0, i32 1, i32 2, i32 3>, %804 ]
  %817 = add <4 x i32> %816, <i32 1, i32 1, i32 1, i32 1>
  %818 = sitofp <4 x i32> %817 to <4 x float>
  %819 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %818
  %820 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %815
  store <4 x float> %819, ptr %820, align 16, !tbaa !13
  %821 = add nuw nsw i64 %815, 4
  %822 = add <4 x i32> %816, <i32 4, i32 4, i32 4, i32 4>
  %823 = icmp eq i64 %821, 32000
  br i1 %823, label %3413, label %814, !llvm.loop !106

824:                                              ; preds = %785
  %825 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.32) #11
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %827, label %857

827:                                              ; preds = %827, %824
  %828 = phi i64 [ %834, %827 ], [ 0, %824 ]
  %829 = phi <4 x i32> [ %835, %827 ], [ <i32 0, i32 1, i32 2, i32 3>, %824 ]
  %830 = add <4 x i32> %829, <i32 1, i32 1, i32 1, i32 1>
  %831 = sitofp <4 x i32> %830 to <4 x float>
  %832 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %831
  %833 = getelementptr inbounds float, ptr @global_data, i64 %828
  store <4 x float> %832, ptr %833, align 16, !tbaa !13
  %834 = add nuw nsw i64 %828, 4
  %835 = add <4 x i32> %829, <i32 4, i32 4, i32 4, i32 4>
  %836 = icmp eq i64 %834, 32000
  br i1 %836, label %837, label %827, !llvm.loop !107

837:                                              ; preds = %837, %827
  %838 = phi i64 [ %840, %837 ], [ 0, %827 ]
  %839 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %838
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %839, align 16, !tbaa !13
  %840 = add nuw nsw i64 %838, 4
  %841 = icmp eq i64 %840, 32000
  br i1 %841, label %842, label %837, !llvm.loop !108

842:                                              ; preds = %842, %837
  %843 = phi i64 [ %845, %842 ], [ 0, %837 ]
  %844 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %843
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %844, align 16, !tbaa !13
  %845 = add nuw nsw i64 %843, 4
  %846 = icmp eq i64 %845, 32000
  br i1 %846, label %847, label %842, !llvm.loop !109

847:                                              ; preds = %847, %842
  %848 = phi i64 [ %854, %847 ], [ 0, %842 ]
  %849 = phi <4 x i32> [ %855, %847 ], [ <i32 0, i32 1, i32 2, i32 3>, %842 ]
  %850 = add <4 x i32> %849, <i32 1, i32 1, i32 1, i32 1>
  %851 = sitofp <4 x i32> %850 to <4 x float>
  %852 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %851
  %853 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %848
  store <4 x float> %852, ptr %853, align 16, !tbaa !13
  %854 = add nuw nsw i64 %848, 4
  %855 = add <4 x i32> %849, <i32 4, i32 4, i32 4, i32 4>
  %856 = icmp eq i64 %854, 32000
  br i1 %856, label %3413, label %847, !llvm.loop !110

857:                                              ; preds = %824
  %858 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.33) #11
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %860, label %895

860:                                              ; preds = %860, %857
  %861 = phi i64 [ %863, %860 ], [ 0, %857 ]
  %862 = getelementptr inbounds float, ptr @global_data, i64 %861
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %862, align 16, !tbaa !13
  %863 = add nuw nsw i64 %861, 4
  %864 = icmp eq i64 %863, 32000
  br i1 %864, label %865, label %860, !llvm.loop !111

865:                                              ; preds = %865, %860
  %866 = phi i64 [ %872, %865 ], [ 0, %860 ]
  %867 = phi <4 x i32> [ %873, %865 ], [ <i32 0, i32 1, i32 2, i32 3>, %860 ]
  %868 = add <4 x i32> %867, <i32 1, i32 1, i32 1, i32 1>
  %869 = sitofp <4 x i32> %868 to <4 x float>
  %870 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %869
  %871 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %866
  store <4 x float> %870, ptr %871, align 16, !tbaa !13
  %872 = add nuw nsw i64 %866, 4
  %873 = add <4 x i32> %867, <i32 4, i32 4, i32 4, i32 4>
  %874 = icmp eq i64 %872, 32000
  br i1 %874, label %875, label %865, !llvm.loop !112

875:                                              ; preds = %875, %865
  %876 = phi i64 [ %882, %875 ], [ 0, %865 ]
  %877 = phi <4 x i32> [ %883, %875 ], [ <i32 0, i32 1, i32 2, i32 3>, %865 ]
  %878 = add <4 x i32> %877, <i32 1, i32 1, i32 1, i32 1>
  %879 = sitofp <4 x i32> %878 to <4 x float>
  %880 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %879
  %881 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %876
  store <4 x float> %880, ptr %881, align 16, !tbaa !13
  %882 = add nuw nsw i64 %876, 4
  %883 = add <4 x i32> %877, <i32 4, i32 4, i32 4, i32 4>
  %884 = icmp eq i64 %882, 32000
  br i1 %884, label %885, label %875, !llvm.loop !113

885:                                              ; preds = %885, %875
  %886 = phi i64 [ %892, %885 ], [ 0, %875 ]
  %887 = phi <4 x i32> [ %893, %885 ], [ <i32 0, i32 1, i32 2, i32 3>, %875 ]
  %888 = add <4 x i32> %887, <i32 1, i32 1, i32 1, i32 1>
  %889 = sitofp <4 x i32> %888 to <4 x float>
  %890 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %889
  %891 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %886
  store <4 x float> %890, ptr %891, align 16, !tbaa !13
  %892 = add nuw nsw i64 %886, 4
  %893 = add <4 x i32> %887, <i32 4, i32 4, i32 4, i32 4>
  %894 = icmp eq i64 %892, 32000
  br i1 %894, label %3413, label %885, !llvm.loop !114

895:                                              ; preds = %857
  %896 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.34) #11
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %898, label %909

898:                                              ; preds = %895
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %899

899:                                              ; preds = %899, %898
  %900 = phi i64 [ 0, %898 ], [ %902, %899 ]
  %901 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %900
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %901, align 16, !tbaa !13
  %902 = add nuw nsw i64 %900, 4
  %903 = icmp eq i64 %902, 32000
  br i1 %903, label %904, label %899, !llvm.loop !115

904:                                              ; preds = %904, %899
  %905 = phi i64 [ %907, %904 ], [ 0, %899 ]
  %906 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %905
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %906, align 16, !tbaa !13
  %907 = add nuw nsw i64 %905, 4
  %908 = icmp eq i64 %907, 32000
  br i1 %908, label %3413, label %904, !llvm.loop !116

909:                                              ; preds = %895
  %910 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.35) #11
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %912, label %938

912:                                              ; preds = %919, %909
  %913 = phi i64 [ %920, %919 ], [ 0, %909 ]
  br label %914

914:                                              ; preds = %914, %912
  %915 = phi i64 [ 0, %912 ], [ %917, %914 ]
  %916 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %913, i64 %915
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %916, align 16, !tbaa !13
  %917 = add nuw nsw i64 %915, 4
  %918 = icmp eq i64 %917, 256
  br i1 %918, label %919, label %914, !llvm.loop !117

919:                                              ; preds = %914
  %920 = add nuw nsw i64 %913, 1
  %921 = icmp eq i64 %920, 256
  br i1 %921, label %922, label %912

922:                                              ; preds = %936, %919
  %923 = phi i64 [ %924, %936 ], [ 0, %919 ]
  %924 = add nuw nsw i64 %923, 1
  %925 = trunc i64 %924 to i32
  %926 = mul nsw i32 %925, %925
  %927 = sitofp i32 %926 to float
  %928 = fdiv float 1.000000e+00, %927
  %929 = insertelement <4 x float> poison, float %928, i64 0
  %930 = shufflevector <4 x float> %929, <4 x float> poison, <4 x i32> zeroinitializer
  br label %931

931:                                              ; preds = %931, %922
  %932 = phi i64 [ 0, %922 ], [ %934, %931 ]
  %933 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %923, i64 %932
  store <4 x float> %930, ptr %933, align 16, !tbaa !13
  %934 = add nuw nsw i64 %932, 4
  %935 = icmp eq i64 %934, 256
  br i1 %935, label %936, label %931, !llvm.loop !118

936:                                              ; preds = %931
  %937 = icmp eq i64 %924, 256
  br i1 %937, label %3413, label %922

938:                                              ; preds = %909
  %939 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.36) #11
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %941, label %952

941:                                              ; preds = %948, %938
  %942 = phi i64 [ %949, %948 ], [ 0, %938 ]
  br label %943

943:                                              ; preds = %943, %941
  %944 = phi i64 [ 0, %941 ], [ %946, %943 ]
  %945 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %942, i64 %944
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %945, align 16, !tbaa !13
  %946 = add nuw nsw i64 %944, 4
  %947 = icmp eq i64 %946, 256
  br i1 %947, label %948, label %943, !llvm.loop !119

948:                                              ; preds = %943
  %949 = add nuw nsw i64 %942, 1
  %950 = icmp eq i64 %949, 256
  br i1 %950, label %951, label %941

951:                                              ; preds = %948
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(262144) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i8 0, i64 262144, i1 false), !tbaa !13
  br label %3413

952:                                              ; preds = %938
  %953 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.37) #11
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %955, label %1000

955:                                              ; preds = %968, %952
  %956 = phi i64 [ %957, %968 ], [ 0, %952 ]
  %957 = add nuw nsw i64 %956, 1
  %958 = trunc i64 %957 to i32
  %959 = sitofp i32 %958 to float
  %960 = fdiv float 1.000000e+00, %959
  %961 = insertelement <4 x float> poison, float %960, i64 0
  %962 = shufflevector <4 x float> %961, <4 x float> poison, <4 x i32> zeroinitializer
  br label %963

963:                                              ; preds = %963, %955
  %964 = phi i64 [ 0, %955 ], [ %966, %963 ]
  %965 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %956, i64 %964
  store <4 x float> %962, ptr %965, align 16, !tbaa !13
  %966 = add nuw nsw i64 %964, 4
  %967 = icmp eq i64 %966, 256
  br i1 %967, label %968, label %963, !llvm.loop !120

968:                                              ; preds = %963
  %969 = icmp eq i64 %957, 256
  br i1 %969, label %970, label %955

970:                                              ; preds = %983, %968
  %971 = phi i64 [ %972, %983 ], [ 0, %968 ]
  %972 = add nuw nsw i64 %971, 1
  %973 = trunc i64 %972 to i32
  %974 = sitofp i32 %973 to float
  %975 = fdiv float 1.000000e+00, %974
  %976 = insertelement <4 x float> poison, float %975, i64 0
  %977 = shufflevector <4 x float> %976, <4 x float> poison, <4 x i32> zeroinitializer
  br label %978

978:                                              ; preds = %978, %970
  %979 = phi i64 [ 0, %970 ], [ %981, %978 ]
  %980 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %971, i64 %979
  store <4 x float> %977, ptr %980, align 16, !tbaa !13
  %981 = add nuw nsw i64 %979, 4
  %982 = icmp eq i64 %981, 256
  br i1 %982, label %983, label %978, !llvm.loop !121

983:                                              ; preds = %978
  %984 = icmp eq i64 %972, 256
  br i1 %984, label %985, label %970

985:                                              ; preds = %998, %983
  %986 = phi i64 [ %987, %998 ], [ 0, %983 ]
  %987 = add nuw nsw i64 %986, 1
  %988 = trunc i64 %987 to i32
  %989 = sitofp i32 %988 to float
  %990 = fdiv float 1.000000e+00, %989
  %991 = insertelement <4 x float> poison, float %990, i64 0
  %992 = shufflevector <4 x float> %991, <4 x float> poison, <4 x i32> zeroinitializer
  br label %993

993:                                              ; preds = %993, %985
  %994 = phi i64 [ 0, %985 ], [ %996, %993 ]
  %995 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %986, i64 %994
  store <4 x float> %992, ptr %995, align 16, !tbaa !13
  %996 = add nuw nsw i64 %994, 4
  %997 = icmp eq i64 %996, 256
  br i1 %997, label %998, label %993, !llvm.loop !122

998:                                              ; preds = %993
  %999 = icmp eq i64 %987, 256
  br i1 %999, label %3413, label %985

1000:                                             ; preds = %952
  %1001 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.38) #11
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1003, label %1043

1003:                                             ; preds = %1010, %1000
  %1004 = phi i64 [ %1011, %1010 ], [ 0, %1000 ]
  br label %1005

1005:                                             ; preds = %1005, %1003
  %1006 = phi i64 [ 0, %1003 ], [ %1008, %1005 ]
  %1007 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1004, i64 %1006
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1007, align 16, !tbaa !13
  %1008 = add nuw nsw i64 %1006, 4
  %1009 = icmp eq i64 %1008, 256
  br i1 %1009, label %1010, label %1005, !llvm.loop !123

1010:                                             ; preds = %1005
  %1011 = add nuw nsw i64 %1004, 1
  %1012 = icmp eq i64 %1011, 256
  br i1 %1012, label %1013, label %1003

1013:                                             ; preds = %1026, %1010
  %1014 = phi i64 [ %1015, %1026 ], [ 0, %1010 ]
  %1015 = add nuw nsw i64 %1014, 1
  %1016 = trunc i64 %1015 to i32
  %1017 = sitofp i32 %1016 to float
  %1018 = fdiv float 1.000000e+00, %1017
  %1019 = insertelement <4 x float> poison, float %1018, i64 0
  %1020 = shufflevector <4 x float> %1019, <4 x float> poison, <4 x i32> zeroinitializer
  br label %1021

1021:                                             ; preds = %1021, %1013
  %1022 = phi i64 [ 0, %1013 ], [ %1024, %1021 ]
  %1023 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %1014, i64 %1022
  store <4 x float> %1020, ptr %1023, align 16, !tbaa !13
  %1024 = add nuw nsw i64 %1022, 4
  %1025 = icmp eq i64 %1024, 256
  br i1 %1025, label %1026, label %1021, !llvm.loop !124

1026:                                             ; preds = %1021
  %1027 = icmp eq i64 %1015, 256
  br i1 %1027, label %1028, label %1013

1028:                                             ; preds = %1041, %1026
  %1029 = phi i64 [ %1030, %1041 ], [ 0, %1026 ]
  %1030 = add nuw nsw i64 %1029, 1
  %1031 = trunc i64 %1030 to i32
  %1032 = sitofp i32 %1031 to float
  %1033 = fdiv float 1.000000e+00, %1032
  %1034 = insertelement <4 x float> poison, float %1033, i64 0
  %1035 = shufflevector <4 x float> %1034, <4 x float> poison, <4 x i32> zeroinitializer
  br label %1036

1036:                                             ; preds = %1036, %1028
  %1037 = phi i64 [ 0, %1028 ], [ %1039, %1036 ]
  %1038 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %1029, i64 %1037
  store <4 x float> %1035, ptr %1038, align 16, !tbaa !13
  %1039 = add nuw nsw i64 %1037, 4
  %1040 = icmp eq i64 %1039, 256
  br i1 %1040, label %1041, label %1036, !llvm.loop !125

1041:                                             ; preds = %1036
  %1042 = icmp eq i64 %1030, 256
  br i1 %1042, label %3413, label %1028

1043:                                             ; preds = %1000
  %1044 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.39) #11
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1046, label %1097

1046:                                             ; preds = %1046, %1043
  %1047 = phi i64 [ %1049, %1046 ], [ 0, %1043 ]
  %1048 = getelementptr inbounds float, ptr @global_data, i64 %1047
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1048, align 16, !tbaa !13
  %1049 = add nuw nsw i64 %1047, 4
  %1050 = icmp eq i64 %1049, 32000
  br i1 %1050, label %1051, label %1046, !llvm.loop !126

1051:                                             ; preds = %1051, %1046
  %1052 = phi i64 [ %1058, %1051 ], [ 0, %1046 ]
  %1053 = phi <4 x i32> [ %1059, %1051 ], [ <i32 0, i32 1, i32 2, i32 3>, %1046 ]
  %1054 = add <4 x i32> %1053, <i32 1, i32 1, i32 1, i32 1>
  %1055 = sitofp <4 x i32> %1054 to <4 x float>
  %1056 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1055
  %1057 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1052
  store <4 x float> %1056, ptr %1057, align 16, !tbaa !13
  %1058 = add nuw nsw i64 %1052, 4
  %1059 = add <4 x i32> %1053, <i32 4, i32 4, i32 4, i32 4>
  %1060 = icmp eq i64 %1058, 32000
  br i1 %1060, label %1061, label %1051, !llvm.loop !127

1061:                                             ; preds = %1061, %1051
  %1062 = phi i64 [ %1068, %1061 ], [ 0, %1051 ]
  %1063 = phi <4 x i32> [ %1069, %1061 ], [ <i32 0, i32 1, i32 2, i32 3>, %1051 ]
  %1064 = add <4 x i32> %1063, <i32 1, i32 1, i32 1, i32 1>
  %1065 = sitofp <4 x i32> %1064 to <4 x float>
  %1066 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1065
  %1067 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1062
  store <4 x float> %1066, ptr %1067, align 16, !tbaa !13
  %1068 = add nuw nsw i64 %1062, 4
  %1069 = add <4 x i32> %1063, <i32 4, i32 4, i32 4, i32 4>
  %1070 = icmp eq i64 %1068, 32000
  br i1 %1070, label %1071, label %1061, !llvm.loop !128

1071:                                             ; preds = %1078, %1061
  %1072 = phi i64 [ %1079, %1078 ], [ 0, %1061 ]
  br label %1073

1073:                                             ; preds = %1073, %1071
  %1074 = phi i64 [ 0, %1071 ], [ %1076, %1073 ]
  %1075 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1072, i64 %1074
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1075, align 16, !tbaa !13
  %1076 = add nuw nsw i64 %1074, 4
  %1077 = icmp eq i64 %1076, 256
  br i1 %1077, label %1078, label %1073, !llvm.loop !129

1078:                                             ; preds = %1073
  %1079 = add nuw nsw i64 %1072, 1
  %1080 = icmp eq i64 %1079, 256
  br i1 %1080, label %1081, label %1071

1081:                                             ; preds = %1095, %1078
  %1082 = phi i64 [ %1083, %1095 ], [ 0, %1078 ]
  %1083 = add nuw nsw i64 %1082, 1
  %1084 = trunc i64 %1083 to i32
  %1085 = mul nsw i32 %1084, %1084
  %1086 = sitofp i32 %1085 to float
  %1087 = fdiv float 1.000000e+00, %1086
  %1088 = insertelement <4 x float> poison, float %1087, i64 0
  %1089 = shufflevector <4 x float> %1088, <4 x float> poison, <4 x i32> zeroinitializer
  br label %1090

1090:                                             ; preds = %1090, %1081
  %1091 = phi i64 [ 0, %1081 ], [ %1093, %1090 ]
  %1092 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %1082, i64 %1091
  store <4 x float> %1089, ptr %1092, align 16, !tbaa !13
  %1093 = add nuw nsw i64 %1091, 4
  %1094 = icmp eq i64 %1093, 256
  br i1 %1094, label %1095, label %1090, !llvm.loop !130

1095:                                             ; preds = %1090
  %1096 = icmp eq i64 %1083, 256
  br i1 %1096, label %3413, label %1081

1097:                                             ; preds = %1043
  %1098 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.40) #11
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1100, label %1120

1100:                                             ; preds = %1100, %1097
  %1101 = phi i64 [ %1103, %1100 ], [ 0, %1097 ]
  %1102 = getelementptr inbounds float, ptr @global_data, i64 %1101
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1102, align 16, !tbaa !13
  %1103 = add nuw nsw i64 %1101, 4
  %1104 = icmp eq i64 %1103, 32000
  br i1 %1104, label %1105, label %1100, !llvm.loop !131

1105:                                             ; preds = %1105, %1100
  %1106 = phi i64 [ %1108, %1105 ], [ 0, %1100 ]
  %1107 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1106
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1107, align 16, !tbaa !13
  %1108 = add nuw nsw i64 %1106, 4
  %1109 = icmp eq i64 %1108, 32000
  br i1 %1109, label %1110, label %1105, !llvm.loop !132

1110:                                             ; preds = %1110, %1105
  %1111 = phi i64 [ %1113, %1110 ], [ 0, %1105 ]
  %1112 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1111
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1112, align 16, !tbaa !13
  %1113 = add nuw nsw i64 %1111, 4
  %1114 = icmp eq i64 %1113, 32000
  br i1 %1114, label %1115, label %1110, !llvm.loop !133

1115:                                             ; preds = %1115, %1110
  %1116 = phi i64 [ %1118, %1115 ], [ 0, %1110 ]
  %1117 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1116
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1117, align 16, !tbaa !13
  %1118 = add nuw nsw i64 %1116, 4
  %1119 = icmp eq i64 %1118, 32000
  br i1 %1119, label %3413, label %1115, !llvm.loop !134

1120:                                             ; preds = %1097
  %1121 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.41) #11
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1123, label %1143

1123:                                             ; preds = %1123, %1120
  %1124 = phi i64 [ %1126, %1123 ], [ 0, %1120 ]
  %1125 = getelementptr inbounds float, ptr @global_data, i64 %1124
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1125, align 16, !tbaa !13
  %1126 = add nuw nsw i64 %1124, 4
  %1127 = icmp eq i64 %1126, 32000
  br i1 %1127, label %1128, label %1123, !llvm.loop !135

1128:                                             ; preds = %1128, %1123
  %1129 = phi i64 [ %1131, %1128 ], [ 0, %1123 ]
  %1130 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1129
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1130, align 16, !tbaa !13
  %1131 = add nuw nsw i64 %1129, 4
  %1132 = icmp eq i64 %1131, 32000
  br i1 %1132, label %1133, label %1128, !llvm.loop !136

1133:                                             ; preds = %1133, %1128
  %1134 = phi i64 [ %1136, %1133 ], [ 0, %1128 ]
  %1135 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1134
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1135, align 16, !tbaa !13
  %1136 = add nuw nsw i64 %1134, 4
  %1137 = icmp eq i64 %1136, 32000
  br i1 %1137, label %1138, label %1133, !llvm.loop !137

1138:                                             ; preds = %1138, %1133
  %1139 = phi i64 [ %1141, %1138 ], [ 0, %1133 ]
  %1140 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1139
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1140, align 16, !tbaa !13
  %1141 = add nuw nsw i64 %1139, 4
  %1142 = icmp eq i64 %1141, 32000
  br i1 %1142, label %3413, label %1138, !llvm.loop !138

1143:                                             ; preds = %1120
  %1144 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.42) #11
  %1145 = icmp eq i32 %1144, 0
  br i1 %1145, label %1146, label %1182

1146:                                             ; preds = %1143
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %1147

1147:                                             ; preds = %1147, %1146
  %1148 = phi i64 [ 0, %1146 ], [ %1150, %1147 ]
  %1149 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1148
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1149, align 16, !tbaa !13
  %1150 = add nuw nsw i64 %1148, 4
  %1151 = icmp eq i64 %1150, 32000
  br i1 %1151, label %1152, label %1147, !llvm.loop !139

1152:                                             ; preds = %1152, %1147
  %1153 = phi i64 [ %1159, %1152 ], [ 0, %1147 ]
  %1154 = phi <4 x i32> [ %1160, %1152 ], [ <i32 0, i32 1, i32 2, i32 3>, %1147 ]
  %1155 = add <4 x i32> %1154, <i32 1, i32 1, i32 1, i32 1>
  %1156 = sitofp <4 x i32> %1155 to <4 x float>
  %1157 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1156
  %1158 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1153
  store <4 x float> %1157, ptr %1158, align 16, !tbaa !13
  %1159 = add nuw nsw i64 %1153, 4
  %1160 = add <4 x i32> %1154, <i32 4, i32 4, i32 4, i32 4>
  %1161 = icmp eq i64 %1159, 32000
  br i1 %1161, label %1162, label %1152, !llvm.loop !140

1162:                                             ; preds = %1162, %1152
  %1163 = phi i64 [ %1169, %1162 ], [ 0, %1152 ]
  %1164 = phi <4 x i32> [ %1170, %1162 ], [ <i32 0, i32 1, i32 2, i32 3>, %1152 ]
  %1165 = add <4 x i32> %1164, <i32 1, i32 1, i32 1, i32 1>
  %1166 = sitofp <4 x i32> %1165 to <4 x float>
  %1167 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1166
  %1168 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1163
  store <4 x float> %1167, ptr %1168, align 16, !tbaa !13
  %1169 = add nuw nsw i64 %1163, 4
  %1170 = add <4 x i32> %1164, <i32 4, i32 4, i32 4, i32 4>
  %1171 = icmp eq i64 %1169, 32000
  br i1 %1171, label %1172, label %1162, !llvm.loop !141

1172:                                             ; preds = %1172, %1162
  %1173 = phi i64 [ %1179, %1172 ], [ 0, %1162 ]
  %1174 = phi <4 x i32> [ %1180, %1172 ], [ <i32 0, i32 1, i32 2, i32 3>, %1162 ]
  %1175 = add <4 x i32> %1174, <i32 1, i32 1, i32 1, i32 1>
  %1176 = sitofp <4 x i32> %1175 to <4 x float>
  %1177 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1176
  %1178 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1173
  store <4 x float> %1177, ptr %1178, align 16, !tbaa !13
  %1179 = add nuw nsw i64 %1173, 4
  %1180 = add <4 x i32> %1174, <i32 4, i32 4, i32 4, i32 4>
  %1181 = icmp eq i64 %1179, 32000
  br i1 %1181, label %3413, label %1172, !llvm.loop !142

1182:                                             ; preds = %1143
  %1183 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.43) #11
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %1185, label %1201

1185:                                             ; preds = %1182
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %1186

1186:                                             ; preds = %1186, %1185
  %1187 = phi i64 [ 0, %1185 ], [ %1189, %1186 ]
  %1188 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1187
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1188, align 16, !tbaa !13
  %1189 = add nuw nsw i64 %1187, 4
  %1190 = icmp eq i64 %1189, 32000
  br i1 %1190, label %1191, label %1186, !llvm.loop !143

1191:                                             ; preds = %1191, %1186
  %1192 = phi i64 [ %1194, %1191 ], [ 0, %1186 ]
  %1193 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1192
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1193, align 16, !tbaa !13
  %1194 = add nuw nsw i64 %1192, 4
  %1195 = icmp eq i64 %1194, 32000
  br i1 %1195, label %1196, label %1191, !llvm.loop !144

1196:                                             ; preds = %1196, %1191
  %1197 = phi i64 [ %1199, %1196 ], [ 0, %1191 ]
  %1198 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1197
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1198, align 16, !tbaa !13
  %1199 = add nuw nsw i64 %1197, 4
  %1200 = icmp eq i64 %1199, 32000
  br i1 %1200, label %3413, label %1196, !llvm.loop !145

1201:                                             ; preds = %1182
  %1202 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.44) #11
  %1203 = icmp eq i32 %1202, 0
  br i1 %1203, label %1204, label %1240

1204:                                             ; preds = %1201
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %1205

1205:                                             ; preds = %1205, %1204
  %1206 = phi i64 [ 0, %1204 ], [ %1208, %1205 ]
  %1207 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1206
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1207, align 16, !tbaa !13
  %1208 = add nuw nsw i64 %1206, 4
  %1209 = icmp eq i64 %1208, 32000
  br i1 %1209, label %1210, label %1205, !llvm.loop !146

1210:                                             ; preds = %1210, %1205
  %1211 = phi i64 [ %1217, %1210 ], [ 0, %1205 ]
  %1212 = phi <4 x i32> [ %1218, %1210 ], [ <i32 0, i32 1, i32 2, i32 3>, %1205 ]
  %1213 = add <4 x i32> %1212, <i32 1, i32 1, i32 1, i32 1>
  %1214 = sitofp <4 x i32> %1213 to <4 x float>
  %1215 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1214
  %1216 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1211
  store <4 x float> %1215, ptr %1216, align 16, !tbaa !13
  %1217 = add nuw nsw i64 %1211, 4
  %1218 = add <4 x i32> %1212, <i32 4, i32 4, i32 4, i32 4>
  %1219 = icmp eq i64 %1217, 32000
  br i1 %1219, label %1220, label %1210, !llvm.loop !147

1220:                                             ; preds = %1220, %1210
  %1221 = phi i64 [ %1227, %1220 ], [ 0, %1210 ]
  %1222 = phi <4 x i32> [ %1228, %1220 ], [ <i32 0, i32 1, i32 2, i32 3>, %1210 ]
  %1223 = add <4 x i32> %1222, <i32 1, i32 1, i32 1, i32 1>
  %1224 = sitofp <4 x i32> %1223 to <4 x float>
  %1225 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1224
  %1226 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1221
  store <4 x float> %1225, ptr %1226, align 16, !tbaa !13
  %1227 = add nuw nsw i64 %1221, 4
  %1228 = add <4 x i32> %1222, <i32 4, i32 4, i32 4, i32 4>
  %1229 = icmp eq i64 %1227, 32000
  br i1 %1229, label %1230, label %1220, !llvm.loop !148

1230:                                             ; preds = %1230, %1220
  %1231 = phi i64 [ %1237, %1230 ], [ 0, %1220 ]
  %1232 = phi <4 x i32> [ %1238, %1230 ], [ <i32 0, i32 1, i32 2, i32 3>, %1220 ]
  %1233 = add <4 x i32> %1232, <i32 1, i32 1, i32 1, i32 1>
  %1234 = sitofp <4 x i32> %1233 to <4 x float>
  %1235 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1234
  %1236 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1231
  store <4 x float> %1235, ptr %1236, align 16, !tbaa !13
  %1237 = add nuw nsw i64 %1231, 4
  %1238 = add <4 x i32> %1232, <i32 4, i32 4, i32 4, i32 4>
  %1239 = icmp eq i64 %1237, 32000
  br i1 %1239, label %3413, label %1230, !llvm.loop !149

1240:                                             ; preds = %1201
  %1241 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.45) #11
  %1242 = icmp eq i32 %1241, 0
  br i1 %1242, label %1243, label %1254

1243:                                             ; preds = %1240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %1244

1244:                                             ; preds = %1244, %1243
  %1245 = phi i64 [ 0, %1243 ], [ %1247, %1244 ]
  %1246 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1245
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1246, align 16, !tbaa !13
  %1247 = add nuw nsw i64 %1245, 4
  %1248 = icmp eq i64 %1247, 32000
  br i1 %1248, label %1249, label %1244, !llvm.loop !150

1249:                                             ; preds = %1249, %1244
  %1250 = phi i64 [ %1252, %1249 ], [ 0, %1244 ]
  %1251 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1250
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1251, align 16, !tbaa !13
  %1252 = add nuw nsw i64 %1250, 4
  %1253 = icmp eq i64 %1252, 32000
  br i1 %1253, label %3413, label %1249, !llvm.loop !151

1254:                                             ; preds = %1240
  %1255 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.46) #11
  %1256 = icmp eq i32 %1255, 0
  br i1 %1256, label %1257, label %1282

1257:                                             ; preds = %1257, %1254
  %1258 = phi i64 [ %1260, %1257 ], [ 0, %1254 ]
  %1259 = getelementptr inbounds float, ptr @global_data, i64 %1258
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1259, align 16, !tbaa !13
  %1260 = add nuw nsw i64 %1258, 4
  %1261 = icmp eq i64 %1260, 32000
  br i1 %1261, label %1262, label %1257, !llvm.loop !152

1262:                                             ; preds = %1262, %1257
  %1263 = phi i64 [ %1265, %1262 ], [ 0, %1257 ]
  %1264 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1263
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1264, align 16, !tbaa !13
  %1265 = add nuw nsw i64 %1263, 4
  %1266 = icmp eq i64 %1265, 32000
  br i1 %1266, label %1267, label %1262, !llvm.loop !153

1267:                                             ; preds = %1267, %1262
  %1268 = phi i64 [ %1270, %1267 ], [ 0, %1262 ]
  %1269 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1268
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1269, align 16, !tbaa !13
  %1270 = add nuw nsw i64 %1268, 4
  %1271 = icmp eq i64 %1270, 32000
  br i1 %1271, label %1272, label %1267, !llvm.loop !154

1272:                                             ; preds = %1272, %1267
  %1273 = phi i64 [ %1279, %1272 ], [ 0, %1267 ]
  %1274 = phi <4 x i32> [ %1280, %1272 ], [ <i32 0, i32 1, i32 2, i32 3>, %1267 ]
  %1275 = add <4 x i32> %1274, <i32 1, i32 1, i32 1, i32 1>
  %1276 = sitofp <4 x i32> %1275 to <4 x float>
  %1277 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1276
  %1278 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1273
  store <4 x float> %1277, ptr %1278, align 16, !tbaa !13
  %1279 = add nuw nsw i64 %1273, 4
  %1280 = add <4 x i32> %1274, <i32 4, i32 4, i32 4, i32 4>
  %1281 = icmp eq i64 %1279, 32000
  br i1 %1281, label %3413, label %1272, !llvm.loop !155

1282:                                             ; preds = %1254
  %1283 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.47) #11
  %1284 = icmp eq i32 %1283, 0
  br i1 %1284, label %1285, label %1291

1285:                                             ; preds = %1282
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %1286

1286:                                             ; preds = %1286, %1285
  %1287 = phi i64 [ 0, %1285 ], [ %1289, %1286 ]
  %1288 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1287
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1288, align 16, !tbaa !13
  %1289 = add nuw nsw i64 %1287, 4
  %1290 = icmp eq i64 %1289, 32000
  br i1 %1290, label %3413, label %1286, !llvm.loop !156

1291:                                             ; preds = %1282
  %1292 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.48) #11
  %1293 = icmp eq i32 %1292, 0
  br i1 %1293, label %1294, label %1300

1294:                                             ; preds = %1291
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %1295

1295:                                             ; preds = %1295, %1294
  %1296 = phi i64 [ 0, %1294 ], [ %1298, %1295 ]
  %1297 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1296
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1297, align 16, !tbaa !13
  %1298 = add nuw nsw i64 %1296, 4
  %1299 = icmp eq i64 %1298, 32000
  br i1 %1299, label %3413, label %1295, !llvm.loop !157

1300:                                             ; preds = %1291
  %1301 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.49) #11
  %1302 = icmp eq i32 %1301, 0
  br i1 %1302, label %1303, label %1328

1303:                                             ; preds = %1303, %1300
  %1304 = phi i64 [ %1306, %1303 ], [ 0, %1300 ]
  %1305 = getelementptr inbounds float, ptr @global_data, i64 %1304
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1305, align 16, !tbaa !13
  %1306 = add nuw nsw i64 %1304, 4
  %1307 = icmp eq i64 %1306, 32000
  br i1 %1307, label %1308, label %1303, !llvm.loop !158

1308:                                             ; preds = %1315, %1303
  %1309 = phi i64 [ %1316, %1315 ], [ 0, %1303 ]
  br label %1310

1310:                                             ; preds = %1310, %1308
  %1311 = phi i64 [ 0, %1308 ], [ %1313, %1310 ]
  %1312 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1309, i64 %1311
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, ptr %1312, align 16, !tbaa !13
  %1313 = add nuw nsw i64 %1311, 4
  %1314 = icmp eq i64 %1313, 256
  br i1 %1314, label %1315, label %1310, !llvm.loop !159

1315:                                             ; preds = %1310
  %1316 = add nuw nsw i64 %1309, 1
  %1317 = icmp eq i64 %1316, 256
  br i1 %1317, label %1318, label %1308

1318:                                             ; preds = %1325, %1315
  %1319 = phi i64 [ %1326, %1325 ], [ 0, %1315 ]
  br label %1320

1320:                                             ; preds = %1320, %1318
  %1321 = phi i64 [ 0, %1318 ], [ %1323, %1320 ]
  %1322 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %1319, i64 %1321
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1322, align 16, !tbaa !13
  %1323 = add nuw nsw i64 %1321, 4
  %1324 = icmp eq i64 %1323, 256
  br i1 %1324, label %1325, label %1320, !llvm.loop !160

1325:                                             ; preds = %1320
  %1326 = add nuw nsw i64 %1319, 1
  %1327 = icmp eq i64 %1326, 256
  br i1 %1327, label %3413, label %1318

1328:                                             ; preds = %1300
  %1329 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.50) #11
  %1330 = icmp eq i32 %1329, 0
  br i1 %1330, label %1331, label %1356

1331:                                             ; preds = %1331, %1328
  %1332 = phi i64 [ %1334, %1331 ], [ 0, %1328 ]
  %1333 = getelementptr inbounds float, ptr @global_data, i64 %1332
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1333, align 16, !tbaa !13
  %1334 = add nuw nsw i64 %1332, 4
  %1335 = icmp eq i64 %1334, 32000
  br i1 %1335, label %1336, label %1331, !llvm.loop !161

1336:                                             ; preds = %1343, %1331
  %1337 = phi i64 [ %1344, %1343 ], [ 0, %1331 ]
  br label %1338

1338:                                             ; preds = %1338, %1336
  %1339 = phi i64 [ 0, %1336 ], [ %1341, %1338 ]
  %1340 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1337, i64 %1339
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, ptr %1340, align 16, !tbaa !13
  %1341 = add nuw nsw i64 %1339, 4
  %1342 = icmp eq i64 %1341, 256
  br i1 %1342, label %1343, label %1338, !llvm.loop !162

1343:                                             ; preds = %1338
  %1344 = add nuw nsw i64 %1337, 1
  %1345 = icmp eq i64 %1344, 256
  br i1 %1345, label %1346, label %1336

1346:                                             ; preds = %1353, %1343
  %1347 = phi i64 [ %1354, %1353 ], [ 0, %1343 ]
  br label %1348

1348:                                             ; preds = %1348, %1346
  %1349 = phi i64 [ 0, %1346 ], [ %1351, %1348 ]
  %1350 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %1347, i64 %1349
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1350, align 16, !tbaa !13
  %1351 = add nuw nsw i64 %1349, 4
  %1352 = icmp eq i64 %1351, 256
  br i1 %1352, label %1353, label %1348, !llvm.loop !163

1353:                                             ; preds = %1348
  %1354 = add nuw nsw i64 %1347, 1
  %1355 = icmp eq i64 %1354, 256
  br i1 %1355, label %3413, label %1346

1356:                                             ; preds = %1328
  %1357 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.51) #11
  %1358 = icmp eq i32 %1357, 0
  br i1 %1358, label %1359, label %1406

1359:                                             ; preds = %1359, %1356
  %1360 = phi i64 [ %1366, %1359 ], [ 0, %1356 ]
  %1361 = phi <4 x i32> [ %1367, %1359 ], [ <i32 0, i32 1, i32 2, i32 3>, %1356 ]
  %1362 = add <4 x i32> %1361, <i32 1, i32 1, i32 1, i32 1>
  %1363 = sitofp <4 x i32> %1362 to <4 x float>
  %1364 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1363
  %1365 = getelementptr inbounds float, ptr @global_data, i64 %1360
  store <4 x float> %1364, ptr %1365, align 16, !tbaa !13
  %1366 = add nuw nsw i64 %1360, 4
  %1367 = add <4 x i32> %1361, <i32 4, i32 4, i32 4, i32 4>
  %1368 = icmp eq i64 %1366, 32000
  br i1 %1368, label %1369, label %1359, !llvm.loop !164

1369:                                             ; preds = %1359
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), i8 0, i64 128000, i1 false), !tbaa !13
  br label %1370

1370:                                             ; preds = %1370, %1369
  %1371 = phi i64 [ 0, %1369 ], [ %1377, %1370 ]
  %1372 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %1369 ], [ %1378, %1370 ]
  %1373 = add <4 x i32> %1372, <i32 1, i32 1, i32 1, i32 1>
  %1374 = sitofp <4 x i32> %1373 to <4 x float>
  %1375 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1374
  %1376 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1371
  store <4 x float> %1375, ptr %1376, align 16, !tbaa !13
  %1377 = add nuw nsw i64 %1371, 4
  %1378 = add <4 x i32> %1372, <i32 4, i32 4, i32 4, i32 4>
  %1379 = icmp eq i64 %1377, 32000
  br i1 %1379, label %1380, label %1370, !llvm.loop !165

1380:                                             ; preds = %1380, %1370
  %1381 = phi i64 [ %1387, %1380 ], [ 0, %1370 ]
  %1382 = phi <4 x i32> [ %1388, %1380 ], [ <i32 0, i32 1, i32 2, i32 3>, %1370 ]
  %1383 = add <4 x i32> %1382, <i32 1, i32 1, i32 1, i32 1>
  %1384 = sitofp <4 x i32> %1383 to <4 x float>
  %1385 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1384
  %1386 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1381
  store <4 x float> %1385, ptr %1386, align 16, !tbaa !13
  %1387 = add nuw nsw i64 %1381, 4
  %1388 = add <4 x i32> %1382, <i32 4, i32 4, i32 4, i32 4>
  %1389 = icmp eq i64 %1387, 32000
  br i1 %1389, label %1390, label %1380, !llvm.loop !166

1390:                                             ; preds = %1380
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 0), i8 0, i64 128000, i1 false), !tbaa !13
  br label %1391

1391:                                             ; preds = %1404, %1390
  %1392 = phi i64 [ %1393, %1404 ], [ 0, %1390 ]
  %1393 = add nuw nsw i64 %1392, 1
  %1394 = trunc i64 %1393 to i32
  %1395 = sitofp i32 %1394 to float
  %1396 = fdiv float 1.000000e+00, %1395
  %1397 = insertelement <4 x float> poison, float %1396, i64 0
  %1398 = shufflevector <4 x float> %1397, <4 x float> poison, <4 x i32> zeroinitializer
  br label %1399

1399:                                             ; preds = %1399, %1391
  %1400 = phi i64 [ 0, %1391 ], [ %1402, %1399 ]
  %1401 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1392, i64 %1400
  store <4 x float> %1398, ptr %1401, align 16, !tbaa !13
  %1402 = add nuw nsw i64 %1400, 4
  %1403 = icmp eq i64 %1402, 256
  br i1 %1403, label %1404, label %1399, !llvm.loop !167

1404:                                             ; preds = %1399
  %1405 = icmp eq i64 %1393, 256
  br i1 %1405, label %3413, label %1391

1406:                                             ; preds = %1356
  %1407 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.52) #11
  %1408 = icmp eq i32 %1407, 0
  br i1 %1408, label %1409, label %1441

1409:                                             ; preds = %1409, %1406
  %1410 = phi i64 [ %1412, %1409 ], [ 0, %1406 ]
  %1411 = getelementptr inbounds float, ptr @global_data, i64 %1410
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1411, align 16, !tbaa !13
  %1412 = add nuw nsw i64 %1410, 4
  %1413 = icmp eq i64 %1412, 32000
  br i1 %1413, label %1414, label %1409, !llvm.loop !168

1414:                                             ; preds = %1414, %1409
  %1415 = phi i64 [ %1422, %1414 ], [ 0, %1409 ]
  %1416 = phi <4 x i32> [ %1423, %1414 ], [ <i32 0, i32 1, i32 2, i32 3>, %1409 ]
  %1417 = add <4 x i32> %1416, <i32 1, i32 1, i32 1, i32 1>
  %1418 = mul <4 x i32> %1417, %1417
  %1419 = sitofp <4 x i32> %1418 to <4 x float>
  %1420 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1419
  %1421 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1415
  store <4 x float> %1420, ptr %1421, align 16, !tbaa !13
  %1422 = add nuw nsw i64 %1415, 4
  %1423 = add <4 x i32> %1416, <i32 4, i32 4, i32 4, i32 4>
  %1424 = icmp eq i64 %1422, 32000
  br i1 %1424, label %1425, label %1414, !llvm.loop !169

1425:                                             ; preds = %1425, %1414
  %1426 = phi i64 [ %1433, %1425 ], [ 0, %1414 ]
  %1427 = phi <4 x i32> [ %1434, %1425 ], [ <i32 0, i32 1, i32 2, i32 3>, %1414 ]
  %1428 = add <4 x i32> %1427, <i32 1, i32 1, i32 1, i32 1>
  %1429 = mul <4 x i32> %1428, %1428
  %1430 = sitofp <4 x i32> %1429 to <4 x float>
  %1431 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1430
  %1432 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1426
  store <4 x float> %1431, ptr %1432, align 16, !tbaa !13
  %1433 = add nuw nsw i64 %1426, 4
  %1434 = add <4 x i32> %1427, <i32 4, i32 4, i32 4, i32 4>
  %1435 = icmp eq i64 %1433, 32000
  br i1 %1435, label %1436, label %1425, !llvm.loop !170

1436:                                             ; preds = %1436, %1425
  %1437 = phi i64 [ %1439, %1436 ], [ 0, %1425 ]
  %1438 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1437
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1438, align 16, !tbaa !13
  %1439 = add nuw nsw i64 %1437, 4
  %1440 = icmp eq i64 %1439, 32000
  br i1 %1440, label %3413, label %1436, !llvm.loop !171

1441:                                             ; preds = %1406
  %1442 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.53) #11
  %1443 = icmp eq i32 %1442, 0
  br i1 %1443, label %1444, label %1469

1444:                                             ; preds = %1444, %1441
  %1445 = phi i64 [ %1447, %1444 ], [ 0, %1441 ]
  %1446 = getelementptr inbounds float, ptr @global_data, i64 %1445
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1446, align 16, !tbaa !13
  %1447 = add nuw nsw i64 %1445, 4
  %1448 = icmp eq i64 %1447, 32000
  br i1 %1448, label %1449, label %1444, !llvm.loop !172

1449:                                             ; preds = %1449, %1444
  %1450 = phi i64 [ %1456, %1449 ], [ 0, %1444 ]
  %1451 = phi <4 x i32> [ %1457, %1449 ], [ <i32 0, i32 1, i32 2, i32 3>, %1444 ]
  %1452 = add <4 x i32> %1451, <i32 1, i32 1, i32 1, i32 1>
  %1453 = sitofp <4 x i32> %1452 to <4 x float>
  %1454 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1453
  %1455 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1450
  store <4 x float> %1454, ptr %1455, align 16, !tbaa !13
  %1456 = add nuw nsw i64 %1450, 4
  %1457 = add <4 x i32> %1451, <i32 4, i32 4, i32 4, i32 4>
  %1458 = icmp eq i64 %1456, 32000
  br i1 %1458, label %1459, label %1449, !llvm.loop !173

1459:                                             ; preds = %1459, %1449
  %1460 = phi i64 [ %1466, %1459 ], [ 0, %1449 ]
  %1461 = phi <4 x i32> [ %1467, %1459 ], [ <i32 0, i32 1, i32 2, i32 3>, %1449 ]
  %1462 = add <4 x i32> %1461, <i32 1, i32 1, i32 1, i32 1>
  %1463 = sitofp <4 x i32> %1462 to <4 x float>
  %1464 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1463
  %1465 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1460
  store <4 x float> %1464, ptr %1465, align 16, !tbaa !13
  %1466 = add nuw nsw i64 %1460, 4
  %1467 = add <4 x i32> %1461, <i32 4, i32 4, i32 4, i32 4>
  %1468 = icmp eq i64 %1466, 32000
  br i1 %1468, label %3413, label %1459, !llvm.loop !174

1469:                                             ; preds = %1441
  %1470 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.54) #11
  %1471 = icmp eq i32 %1470, 0
  br i1 %1471, label %1472, label %1507

1472:                                             ; preds = %1472, %1469
  %1473 = phi i64 [ %1475, %1472 ], [ 0, %1469 ]
  %1474 = getelementptr inbounds float, ptr @global_data, i64 %1473
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1474, align 16, !tbaa !13
  %1475 = add nuw nsw i64 %1473, 4
  %1476 = icmp eq i64 %1475, 32000
  br i1 %1476, label %1477, label %1472, !llvm.loop !175

1477:                                             ; preds = %1477, %1472
  %1478 = phi i64 [ %1480, %1477 ], [ 0, %1472 ]
  %1479 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1478
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1479, align 16, !tbaa !13
  %1480 = add nuw nsw i64 %1478, 4
  %1481 = icmp eq i64 %1480, 32000
  br i1 %1481, label %1482, label %1477, !llvm.loop !176

1482:                                             ; preds = %1482, %1477
  %1483 = phi i64 [ %1489, %1482 ], [ 0, %1477 ]
  %1484 = phi <4 x i32> [ %1490, %1482 ], [ <i32 0, i32 1, i32 2, i32 3>, %1477 ]
  %1485 = add <4 x i32> %1484, <i32 1, i32 1, i32 1, i32 1>
  %1486 = sitofp <4 x i32> %1485 to <4 x float>
  %1487 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1486
  %1488 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1483
  store <4 x float> %1487, ptr %1488, align 16, !tbaa !13
  %1489 = add nuw nsw i64 %1483, 4
  %1490 = add <4 x i32> %1484, <i32 4, i32 4, i32 4, i32 4>
  %1491 = icmp eq i64 %1489, 32000
  br i1 %1491, label %1492, label %1482, !llvm.loop !177

1492:                                             ; preds = %1492, %1482
  %1493 = phi i64 [ %1499, %1492 ], [ 0, %1482 ]
  %1494 = phi <4 x i32> [ %1500, %1492 ], [ <i32 0, i32 1, i32 2, i32 3>, %1482 ]
  %1495 = add <4 x i32> %1494, <i32 1, i32 1, i32 1, i32 1>
  %1496 = sitofp <4 x i32> %1495 to <4 x float>
  %1497 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1496
  %1498 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1493
  store <4 x float> %1497, ptr %1498, align 16, !tbaa !13
  %1499 = add nuw nsw i64 %1493, 4
  %1500 = add <4 x i32> %1494, <i32 4, i32 4, i32 4, i32 4>
  %1501 = icmp eq i64 %1499, 32000
  br i1 %1501, label %1502, label %1492, !llvm.loop !178

1502:                                             ; preds = %1502, %1492
  %1503 = phi i64 [ %1505, %1502 ], [ 0, %1492 ]
  %1504 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1503
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, ptr %1504, align 16, !tbaa !13
  %1505 = add nuw nsw i64 %1503, 4
  %1506 = icmp eq i64 %1505, 32000
  br i1 %1506, label %3413, label %1502, !llvm.loop !179

1507:                                             ; preds = %1469
  %1508 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.55) #11
  %1509 = icmp eq i32 %1508, 0
  br i1 %1509, label %1510, label %1540

1510:                                             ; preds = %1510, %1507
  %1511 = phi i64 [ %1513, %1510 ], [ 0, %1507 ]
  %1512 = getelementptr inbounds float, ptr @global_data, i64 %1511
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1512, align 16, !tbaa !13
  %1513 = add nuw nsw i64 %1511, 4
  %1514 = icmp eq i64 %1513, 32000
  br i1 %1514, label %1515, label %1510, !llvm.loop !180

1515:                                             ; preds = %1515, %1510
  %1516 = phi i64 [ %1518, %1515 ], [ 0, %1510 ]
  %1517 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1516
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1517, align 16, !tbaa !13
  %1518 = add nuw nsw i64 %1516, 4
  %1519 = icmp eq i64 %1518, 32000
  br i1 %1519, label %1520, label %1515, !llvm.loop !181

1520:                                             ; preds = %1520, %1515
  %1521 = phi i64 [ %1523, %1520 ], [ 0, %1515 ]
  %1522 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1521
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1522, align 16, !tbaa !13
  %1523 = add nuw nsw i64 %1521, 4
  %1524 = icmp eq i64 %1523, 32000
  br i1 %1524, label %1525, label %1520, !llvm.loop !182

1525:                                             ; preds = %1525, %1520
  %1526 = phi i64 [ %1528, %1525 ], [ 0, %1520 ]
  %1527 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1526
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1527, align 16, !tbaa !13
  %1528 = add nuw nsw i64 %1526, 4
  %1529 = icmp eq i64 %1528, 32000
  br i1 %1529, label %1530, label %1525, !llvm.loop !183

1530:                                             ; preds = %1530, %1525
  %1531 = phi i64 [ %1537, %1530 ], [ 0, %1525 ]
  %1532 = phi <4 x i32> [ %1538, %1530 ], [ <i32 0, i32 1, i32 2, i32 3>, %1525 ]
  %1533 = add <4 x i32> %1532, <i32 1, i32 1, i32 1, i32 1>
  %1534 = sitofp <4 x i32> %1533 to <4 x float>
  %1535 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1534
  %1536 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1531
  store <4 x float> %1535, ptr %1536, align 16, !tbaa !13
  %1537 = add nuw nsw i64 %1531, 4
  %1538 = add <4 x i32> %1532, <i32 4, i32 4, i32 4, i32 4>
  %1539 = icmp eq i64 %1537, 32000
  br i1 %1539, label %3413, label %1530, !llvm.loop !184

1540:                                             ; preds = %1507
  %1541 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.56) #11
  %1542 = icmp eq i32 %1541, 0
  br i1 %1542, label %1543, label %1574

1543:                                             ; preds = %1540
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %1544

1544:                                             ; preds = %1544, %1543
  %1545 = phi i64 [ 0, %1543 ], [ %1547, %1544 ]
  %1546 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1545
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1546, align 16, !tbaa !13
  %1547 = add nuw nsw i64 %1545, 4
  %1548 = icmp eq i64 %1547, 32000
  br i1 %1548, label %1549, label %1544, !llvm.loop !185

1549:                                             ; preds = %1549, %1544
  %1550 = phi i64 [ %1552, %1549 ], [ 0, %1544 ]
  %1551 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1550
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1551, align 16, !tbaa !13
  %1552 = add nuw nsw i64 %1550, 4
  %1553 = icmp eq i64 %1552, 32000
  br i1 %1553, label %1554, label %1549, !llvm.loop !186

1554:                                             ; preds = %1554, %1549
  %1555 = phi i64 [ %1561, %1554 ], [ 0, %1549 ]
  %1556 = phi <4 x i32> [ %1562, %1554 ], [ <i32 0, i32 1, i32 2, i32 3>, %1549 ]
  %1557 = add <4 x i32> %1556, <i32 1, i32 1, i32 1, i32 1>
  %1558 = sitofp <4 x i32> %1557 to <4 x float>
  %1559 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1558
  %1560 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1555
  store <4 x float> %1559, ptr %1560, align 16, !tbaa !13
  %1561 = add nuw nsw i64 %1555, 4
  %1562 = add <4 x i32> %1556, <i32 4, i32 4, i32 4, i32 4>
  %1563 = icmp eq i64 %1561, 32000
  br i1 %1563, label %1564, label %1554, !llvm.loop !187

1564:                                             ; preds = %1564, %1554
  %1565 = phi i64 [ %1571, %1564 ], [ 0, %1554 ]
  %1566 = phi <4 x i32> [ %1572, %1564 ], [ <i32 0, i32 1, i32 2, i32 3>, %1554 ]
  %1567 = add <4 x i32> %1566, <i32 1, i32 1, i32 1, i32 1>
  %1568 = sitofp <4 x i32> %1567 to <4 x float>
  %1569 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1568
  %1570 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1565
  store <4 x float> %1569, ptr %1570, align 16, !tbaa !13
  %1571 = add nuw nsw i64 %1565, 4
  %1572 = add <4 x i32> %1566, <i32 4, i32 4, i32 4, i32 4>
  %1573 = icmp eq i64 %1571, 32000
  br i1 %1573, label %3413, label %1564, !llvm.loop !188

1574:                                             ; preds = %1540
  %1575 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.57) #11
  %1576 = icmp eq i32 %1575, 0
  br i1 %1576, label %1577, label %1607

1577:                                             ; preds = %1584, %1574
  %1578 = phi i64 [ %1585, %1584 ], [ 0, %1574 ]
  br label %1579

1579:                                             ; preds = %1579, %1577
  %1580 = phi i64 [ 0, %1577 ], [ %1582, %1579 ]
  %1581 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1578, i64 %1580
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1581, align 16, !tbaa !13
  %1582 = add nuw nsw i64 %1580, 4
  %1583 = icmp eq i64 %1582, 256
  br i1 %1583, label %1584, label %1579, !llvm.loop !189

1584:                                             ; preds = %1579
  %1585 = add nuw nsw i64 %1578, 1
  %1586 = icmp eq i64 %1585, 256
  br i1 %1586, label %1587, label %1577

1587:                                             ; preds = %1594, %1584
  %1588 = phi i64 [ %1595, %1594 ], [ 0, %1584 ]
  br label %1589

1589:                                             ; preds = %1589, %1587
  %1590 = phi i64 [ 0, %1587 ], [ %1592, %1589 ]
  %1591 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %1588, i64 %1590
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1591, align 16, !tbaa !13
  %1592 = add nuw nsw i64 %1590, 4
  %1593 = icmp eq i64 %1592, 256
  br i1 %1593, label %1594, label %1589, !llvm.loop !190

1594:                                             ; preds = %1589
  %1595 = add nuw nsw i64 %1588, 1
  %1596 = icmp eq i64 %1595, 256
  br i1 %1596, label %1597, label %1587

1597:                                             ; preds = %1604, %1594
  %1598 = phi i64 [ %1605, %1604 ], [ 0, %1594 ]
  br label %1599

1599:                                             ; preds = %1599, %1597
  %1600 = phi i64 [ 0, %1597 ], [ %1602, %1599 ]
  %1601 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %1598, i64 %1600
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1601, align 16, !tbaa !13
  %1602 = add nuw nsw i64 %1600, 4
  %1603 = icmp eq i64 %1602, 256
  br i1 %1603, label %1604, label %1599, !llvm.loop !191

1604:                                             ; preds = %1599
  %1605 = add nuw nsw i64 %1598, 1
  %1606 = icmp eq i64 %1605, 256
  br i1 %1606, label %3413, label %1597

1607:                                             ; preds = %1574
  %1608 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.58) #11
  %1609 = icmp eq i32 %1608, 0
  br i1 %1609, label %1610, label %1645

1610:                                             ; preds = %1610, %1607
  %1611 = phi i64 [ %1613, %1610 ], [ 0, %1607 ]
  %1612 = getelementptr inbounds float, ptr @global_data, i64 %1611
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1612, align 16, !tbaa !13
  %1613 = add nuw nsw i64 %1611, 4
  %1614 = icmp eq i64 %1613, 32000
  br i1 %1614, label %1615, label %1610, !llvm.loop !192

1615:                                             ; preds = %1615, %1610
  %1616 = phi i64 [ %1622, %1615 ], [ 0, %1610 ]
  %1617 = phi <4 x i32> [ %1623, %1615 ], [ <i32 0, i32 1, i32 2, i32 3>, %1610 ]
  %1618 = add <4 x i32> %1617, <i32 1, i32 1, i32 1, i32 1>
  %1619 = sitofp <4 x i32> %1618 to <4 x float>
  %1620 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1619
  %1621 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1616
  store <4 x float> %1620, ptr %1621, align 16, !tbaa !13
  %1622 = add nuw nsw i64 %1616, 4
  %1623 = add <4 x i32> %1617, <i32 4, i32 4, i32 4, i32 4>
  %1624 = icmp eq i64 %1622, 32000
  br i1 %1624, label %1625, label %1615, !llvm.loop !193

1625:                                             ; preds = %1625, %1615
  %1626 = phi i64 [ %1632, %1625 ], [ 0, %1615 ]
  %1627 = phi <4 x i32> [ %1633, %1625 ], [ <i32 0, i32 1, i32 2, i32 3>, %1615 ]
  %1628 = add <4 x i32> %1627, <i32 1, i32 1, i32 1, i32 1>
  %1629 = sitofp <4 x i32> %1628 to <4 x float>
  %1630 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1629
  %1631 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1626
  store <4 x float> %1630, ptr %1631, align 16, !tbaa !13
  %1632 = add nuw nsw i64 %1626, 4
  %1633 = add <4 x i32> %1627, <i32 4, i32 4, i32 4, i32 4>
  %1634 = icmp eq i64 %1632, 32000
  br i1 %1634, label %1635, label %1625, !llvm.loop !194

1635:                                             ; preds = %1635, %1625
  %1636 = phi i64 [ %1642, %1635 ], [ 0, %1625 ]
  %1637 = phi <4 x i32> [ %1643, %1635 ], [ <i32 0, i32 1, i32 2, i32 3>, %1625 ]
  %1638 = add <4 x i32> %1637, <i32 1, i32 1, i32 1, i32 1>
  %1639 = sitofp <4 x i32> %1638 to <4 x float>
  %1640 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1639
  %1641 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1636
  store <4 x float> %1640, ptr %1641, align 16, !tbaa !13
  %1642 = add nuw nsw i64 %1636, 4
  %1643 = add <4 x i32> %1637, <i32 4, i32 4, i32 4, i32 4>
  %1644 = icmp eq i64 %1642, 32000
  br i1 %1644, label %3413, label %1635, !llvm.loop !195

1645:                                             ; preds = %1607
  %1646 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.59) #11
  %1647 = icmp eq i32 %1646, 0
  br i1 %1647, label %1648, label %1693

1648:                                             ; preds = %1648, %1645
  %1649 = phi i64 [ %1651, %1648 ], [ 0, %1645 ]
  %1650 = getelementptr inbounds float, ptr @global_data, i64 %1649
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1650, align 16, !tbaa !13
  %1651 = add nuw nsw i64 %1649, 4
  %1652 = icmp eq i64 %1651, 32000
  br i1 %1652, label %1653, label %1648, !llvm.loop !196

1653:                                             ; preds = %1653, %1648
  %1654 = phi i64 [ %1656, %1653 ], [ 0, %1648 ]
  %1655 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1654
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1655, align 16, !tbaa !13
  %1656 = add nuw nsw i64 %1654, 4
  %1657 = icmp eq i64 %1656, 32000
  br i1 %1657, label %1658, label %1653, !llvm.loop !197

1658:                                             ; preds = %1658, %1653
  %1659 = phi i64 [ %1661, %1658 ], [ 0, %1653 ]
  %1660 = getelementptr inbounds float, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 16000), i64 %1659
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, ptr %1660, align 16, !tbaa !13
  %1661 = add nuw nsw i64 %1659, 4
  %1662 = icmp eq i64 %1661, 32000
  br i1 %1662, label %1663, label %1658, !llvm.loop !198

1663:                                             ; preds = %1663, %1658
  %1664 = phi i64 [ %1670, %1663 ], [ 0, %1658 ]
  %1665 = phi <4 x i32> [ %1671, %1663 ], [ <i32 0, i32 1, i32 2, i32 3>, %1658 ]
  %1666 = add <4 x i32> %1665, <i32 1, i32 1, i32 1, i32 1>
  %1667 = sitofp <4 x i32> %1666 to <4 x float>
  %1668 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1667
  %1669 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1664
  store <4 x float> %1668, ptr %1669, align 16, !tbaa !13
  %1670 = add nuw nsw i64 %1664, 4
  %1671 = add <4 x i32> %1665, <i32 4, i32 4, i32 4, i32 4>
  %1672 = icmp eq i64 %1670, 32000
  br i1 %1672, label %1673, label %1663, !llvm.loop !199

1673:                                             ; preds = %1673, %1663
  %1674 = phi i64 [ %1680, %1673 ], [ 0, %1663 ]
  %1675 = phi <4 x i32> [ %1681, %1673 ], [ <i32 0, i32 1, i32 2, i32 3>, %1663 ]
  %1676 = add <4 x i32> %1675, <i32 1, i32 1, i32 1, i32 1>
  %1677 = sitofp <4 x i32> %1676 to <4 x float>
  %1678 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1677
  %1679 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1674
  store <4 x float> %1678, ptr %1679, align 16, !tbaa !13
  %1680 = add nuw nsw i64 %1674, 4
  %1681 = add <4 x i32> %1675, <i32 4, i32 4, i32 4, i32 4>
  %1682 = icmp eq i64 %1680, 32000
  br i1 %1682, label %1683, label %1673, !llvm.loop !200

1683:                                             ; preds = %1683, %1673
  %1684 = phi i64 [ %1690, %1683 ], [ 0, %1673 ]
  %1685 = phi <4 x i32> [ %1691, %1683 ], [ <i32 0, i32 1, i32 2, i32 3>, %1673 ]
  %1686 = add <4 x i32> %1685, <i32 1, i32 1, i32 1, i32 1>
  %1687 = sitofp <4 x i32> %1686 to <4 x float>
  %1688 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1687
  %1689 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1684
  store <4 x float> %1688, ptr %1689, align 16, !tbaa !13
  %1690 = add nuw nsw i64 %1684, 4
  %1691 = add <4 x i32> %1685, <i32 4, i32 4, i32 4, i32 4>
  %1692 = icmp eq i64 %1690, 32000
  br i1 %1692, label %3413, label %1683, !llvm.loop !201

1693:                                             ; preds = %1645
  %1694 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.60) #11
  %1695 = icmp eq i32 %1694, 0
  br i1 %1695, label %1696, label %1741

1696:                                             ; preds = %1696, %1693
  %1697 = phi i64 [ %1699, %1696 ], [ 0, %1693 ]
  %1698 = getelementptr inbounds float, ptr @global_data, i64 %1697
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, ptr %1698, align 16, !tbaa !13
  %1699 = add nuw nsw i64 %1697, 4
  %1700 = icmp eq i64 %1699, 32000
  br i1 %1700, label %1701, label %1696, !llvm.loop !202

1701:                                             ; preds = %1701, %1696
  %1702 = phi i64 [ %1704, %1701 ], [ 0, %1696 ]
  %1703 = getelementptr inbounds float, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 16000), i64 %1702
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1703, align 16, !tbaa !13
  %1704 = add nuw nsw i64 %1702, 4
  %1705 = icmp eq i64 %1704, 32000
  br i1 %1705, label %1706, label %1701, !llvm.loop !203

1706:                                             ; preds = %1706, %1701
  %1707 = phi i64 [ %1709, %1706 ], [ 0, %1701 ]
  %1708 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1707
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1708, align 16, !tbaa !13
  %1709 = add nuw nsw i64 %1707, 4
  %1710 = icmp eq i64 %1709, 32000
  br i1 %1710, label %1711, label %1706, !llvm.loop !204

1711:                                             ; preds = %1711, %1706
  %1712 = phi i64 [ %1718, %1711 ], [ 0, %1706 ]
  %1713 = phi <4 x i32> [ %1719, %1711 ], [ <i32 0, i32 1, i32 2, i32 3>, %1706 ]
  %1714 = add <4 x i32> %1713, <i32 1, i32 1, i32 1, i32 1>
  %1715 = sitofp <4 x i32> %1714 to <4 x float>
  %1716 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1715
  %1717 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1712
  store <4 x float> %1716, ptr %1717, align 16, !tbaa !13
  %1718 = add nuw nsw i64 %1712, 4
  %1719 = add <4 x i32> %1713, <i32 4, i32 4, i32 4, i32 4>
  %1720 = icmp eq i64 %1718, 32000
  br i1 %1720, label %1721, label %1711, !llvm.loop !205

1721:                                             ; preds = %1721, %1711
  %1722 = phi i64 [ %1728, %1721 ], [ 0, %1711 ]
  %1723 = phi <4 x i32> [ %1729, %1721 ], [ <i32 0, i32 1, i32 2, i32 3>, %1711 ]
  %1724 = add <4 x i32> %1723, <i32 1, i32 1, i32 1, i32 1>
  %1725 = sitofp <4 x i32> %1724 to <4 x float>
  %1726 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1725
  %1727 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1722
  store <4 x float> %1726, ptr %1727, align 16, !tbaa !13
  %1728 = add nuw nsw i64 %1722, 4
  %1729 = add <4 x i32> %1723, <i32 4, i32 4, i32 4, i32 4>
  %1730 = icmp eq i64 %1728, 32000
  br i1 %1730, label %1731, label %1721, !llvm.loop !206

1731:                                             ; preds = %1731, %1721
  %1732 = phi i64 [ %1738, %1731 ], [ 0, %1721 ]
  %1733 = phi <4 x i32> [ %1739, %1731 ], [ <i32 0, i32 1, i32 2, i32 3>, %1721 ]
  %1734 = add <4 x i32> %1733, <i32 1, i32 1, i32 1, i32 1>
  %1735 = sitofp <4 x i32> %1734 to <4 x float>
  %1736 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1735
  %1737 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1732
  store <4 x float> %1736, ptr %1737, align 16, !tbaa !13
  %1738 = add nuw nsw i64 %1732, 4
  %1739 = add <4 x i32> %1733, <i32 4, i32 4, i32 4, i32 4>
  %1740 = icmp eq i64 %1738, 32000
  br i1 %1740, label %3413, label %1731, !llvm.loop !207

1741:                                             ; preds = %1693
  %1742 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.61) #11
  %1743 = icmp eq i32 %1742, 0
  br i1 %1743, label %1744, label %1789

1744:                                             ; preds = %1744, %1741
  %1745 = phi i64 [ %1747, %1744 ], [ 0, %1741 ]
  %1746 = getelementptr inbounds float, ptr @global_data, i64 %1745
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, ptr %1746, align 16, !tbaa !13
  %1747 = add nuw nsw i64 %1745, 4
  %1748 = icmp eq i64 %1747, 32000
  br i1 %1748, label %1749, label %1744, !llvm.loop !208

1749:                                             ; preds = %1749, %1744
  %1750 = phi i64 [ %1752, %1749 ], [ 0, %1744 ]
  %1751 = getelementptr inbounds float, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 16000), i64 %1750
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1751, align 16, !tbaa !13
  %1752 = add nuw nsw i64 %1750, 4
  %1753 = icmp eq i64 %1752, 32000
  br i1 %1753, label %1754, label %1749, !llvm.loop !209

1754:                                             ; preds = %1754, %1749
  %1755 = phi i64 [ %1757, %1754 ], [ 0, %1749 ]
  %1756 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1755
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1756, align 16, !tbaa !13
  %1757 = add nuw nsw i64 %1755, 4
  %1758 = icmp eq i64 %1757, 32000
  br i1 %1758, label %1759, label %1754, !llvm.loop !210

1759:                                             ; preds = %1759, %1754
  %1760 = phi i64 [ %1766, %1759 ], [ 0, %1754 ]
  %1761 = phi <4 x i32> [ %1767, %1759 ], [ <i32 0, i32 1, i32 2, i32 3>, %1754 ]
  %1762 = add <4 x i32> %1761, <i32 1, i32 1, i32 1, i32 1>
  %1763 = sitofp <4 x i32> %1762 to <4 x float>
  %1764 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1763
  %1765 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1760
  store <4 x float> %1764, ptr %1765, align 16, !tbaa !13
  %1766 = add nuw nsw i64 %1760, 4
  %1767 = add <4 x i32> %1761, <i32 4, i32 4, i32 4, i32 4>
  %1768 = icmp eq i64 %1766, 32000
  br i1 %1768, label %1769, label %1759, !llvm.loop !211

1769:                                             ; preds = %1769, %1759
  %1770 = phi i64 [ %1776, %1769 ], [ 0, %1759 ]
  %1771 = phi <4 x i32> [ %1777, %1769 ], [ <i32 0, i32 1, i32 2, i32 3>, %1759 ]
  %1772 = add <4 x i32> %1771, <i32 1, i32 1, i32 1, i32 1>
  %1773 = sitofp <4 x i32> %1772 to <4 x float>
  %1774 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1773
  %1775 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1770
  store <4 x float> %1774, ptr %1775, align 16, !tbaa !13
  %1776 = add nuw nsw i64 %1770, 4
  %1777 = add <4 x i32> %1771, <i32 4, i32 4, i32 4, i32 4>
  %1778 = icmp eq i64 %1776, 32000
  br i1 %1778, label %1779, label %1769, !llvm.loop !212

1779:                                             ; preds = %1779, %1769
  %1780 = phi i64 [ %1786, %1779 ], [ 0, %1769 ]
  %1781 = phi <4 x i32> [ %1787, %1779 ], [ <i32 0, i32 1, i32 2, i32 3>, %1769 ]
  %1782 = add <4 x i32> %1781, <i32 1, i32 1, i32 1, i32 1>
  %1783 = sitofp <4 x i32> %1782 to <4 x float>
  %1784 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1783
  %1785 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1780
  store <4 x float> %1784, ptr %1785, align 16, !tbaa !13
  %1786 = add nuw nsw i64 %1780, 4
  %1787 = add <4 x i32> %1781, <i32 4, i32 4, i32 4, i32 4>
  %1788 = icmp eq i64 %1786, 32000
  br i1 %1788, label %3413, label %1779, !llvm.loop !213

1789:                                             ; preds = %1741
  %1790 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.62) #11
  %1791 = icmp eq i32 %1790, 0
  br i1 %1791, label %1792, label %1832

1792:                                             ; preds = %1792, %1789
  %1793 = phi i64 [ %1795, %1792 ], [ 0, %1789 ]
  %1794 = getelementptr inbounds float, ptr @global_data, i64 %1793
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1794, align 16, !tbaa !13
  %1795 = add nuw nsw i64 %1793, 4
  %1796 = icmp eq i64 %1795, 32000
  br i1 %1796, label %1797, label %1792, !llvm.loop !214

1797:                                             ; preds = %1797, %1792
  %1798 = phi i64 [ %1800, %1797 ], [ 0, %1792 ]
  %1799 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1798
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1799, align 16, !tbaa !13
  %1800 = add nuw nsw i64 %1798, 4
  %1801 = icmp eq i64 %1800, 32000
  br i1 %1801, label %1802, label %1797, !llvm.loop !215

1802:                                             ; preds = %1802, %1797
  %1803 = phi i64 [ %1809, %1802 ], [ 0, %1797 ]
  %1804 = phi <4 x i32> [ %1810, %1802 ], [ <i32 0, i32 1, i32 2, i32 3>, %1797 ]
  %1805 = add <4 x i32> %1804, <i32 1, i32 1, i32 1, i32 1>
  %1806 = sitofp <4 x i32> %1805 to <4 x float>
  %1807 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1806
  %1808 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1803
  store <4 x float> %1807, ptr %1808, align 16, !tbaa !13
  %1809 = add nuw nsw i64 %1803, 4
  %1810 = add <4 x i32> %1804, <i32 4, i32 4, i32 4, i32 4>
  %1811 = icmp eq i64 %1809, 32000
  br i1 %1811, label %1812, label %1802, !llvm.loop !216

1812:                                             ; preds = %1812, %1802
  %1813 = phi i64 [ %1819, %1812 ], [ 0, %1802 ]
  %1814 = phi <4 x i32> [ %1820, %1812 ], [ <i32 0, i32 1, i32 2, i32 3>, %1802 ]
  %1815 = add <4 x i32> %1814, <i32 1, i32 1, i32 1, i32 1>
  %1816 = sitofp <4 x i32> %1815 to <4 x float>
  %1817 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1816
  %1818 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1813
  store <4 x float> %1817, ptr %1818, align 16, !tbaa !13
  %1819 = add nuw nsw i64 %1813, 4
  %1820 = add <4 x i32> %1814, <i32 4, i32 4, i32 4, i32 4>
  %1821 = icmp eq i64 %1819, 32000
  br i1 %1821, label %1822, label %1812, !llvm.loop !217

1822:                                             ; preds = %1822, %1812
  %1823 = phi i64 [ %1829, %1822 ], [ 0, %1812 ]
  %1824 = phi <4 x i32> [ %1830, %1822 ], [ <i32 0, i32 1, i32 2, i32 3>, %1812 ]
  %1825 = add <4 x i32> %1824, <i32 1, i32 1, i32 1, i32 1>
  %1826 = sitofp <4 x i32> %1825 to <4 x float>
  %1827 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1826
  %1828 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1823
  store <4 x float> %1827, ptr %1828, align 16, !tbaa !13
  %1829 = add nuw nsw i64 %1823, 4
  %1830 = add <4 x i32> %1824, <i32 4, i32 4, i32 4, i32 4>
  %1831 = icmp eq i64 %1829, 32000
  br i1 %1831, label %3413, label %1822, !llvm.loop !218

1832:                                             ; preds = %1789
  %1833 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.63) #11
  %1834 = icmp eq i32 %1833, 0
  br i1 %1834, label %1835, label %1860

1835:                                             ; preds = %1835, %1832
  %1836 = phi i64 [ %1838, %1835 ], [ 0, %1832 ]
  %1837 = getelementptr inbounds float, ptr @global_data, i64 %1836
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1837, align 16, !tbaa !13
  %1838 = add nuw nsw i64 %1836, 4
  %1839 = icmp eq i64 %1838, 32000
  br i1 %1839, label %1840, label %1835, !llvm.loop !219

1840:                                             ; preds = %1840, %1835
  %1841 = phi i64 [ %1847, %1840 ], [ 0, %1835 ]
  %1842 = phi <4 x i32> [ %1848, %1840 ], [ <i32 0, i32 1, i32 2, i32 3>, %1835 ]
  %1843 = add <4 x i32> %1842, <i32 1, i32 1, i32 1, i32 1>
  %1844 = sitofp <4 x i32> %1843 to <4 x float>
  %1845 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1844
  %1846 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1841
  store <4 x float> %1845, ptr %1846, align 16, !tbaa !13
  %1847 = add nuw nsw i64 %1841, 4
  %1848 = add <4 x i32> %1842, <i32 4, i32 4, i32 4, i32 4>
  %1849 = icmp eq i64 %1847, 32000
  br i1 %1849, label %1850, label %1840, !llvm.loop !220

1850:                                             ; preds = %1850, %1840
  %1851 = phi i64 [ %1857, %1850 ], [ 0, %1840 ]
  %1852 = phi <4 x i32> [ %1858, %1850 ], [ <i32 0, i32 1, i32 2, i32 3>, %1840 ]
  %1853 = add <4 x i32> %1852, <i32 1, i32 1, i32 1, i32 1>
  %1854 = sitofp <4 x i32> %1853 to <4 x float>
  %1855 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1854
  %1856 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1851
  store <4 x float> %1855, ptr %1856, align 16, !tbaa !13
  %1857 = add nuw nsw i64 %1851, 4
  %1858 = add <4 x i32> %1852, <i32 4, i32 4, i32 4, i32 4>
  %1859 = icmp eq i64 %1857, 32000
  br i1 %1859, label %3413, label %1850, !llvm.loop !221

1860:                                             ; preds = %1832
  %1861 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.64) #11
  %1862 = icmp eq i32 %1861, 0
  br i1 %1862, label %1863, label %1888

1863:                                             ; preds = %1863, %1860
  %1864 = phi i64 [ %1866, %1863 ], [ 0, %1860 ]
  %1865 = getelementptr inbounds float, ptr @global_data, i64 %1864
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1865, align 16, !tbaa !13
  %1866 = add nuw nsw i64 %1864, 4
  %1867 = icmp eq i64 %1866, 32000
  br i1 %1867, label %1868, label %1863, !llvm.loop !222

1868:                                             ; preds = %1868, %1863
  %1869 = phi i64 [ %1875, %1868 ], [ 0, %1863 ]
  %1870 = phi <4 x i32> [ %1876, %1868 ], [ <i32 0, i32 1, i32 2, i32 3>, %1863 ]
  %1871 = add <4 x i32> %1870, <i32 1, i32 1, i32 1, i32 1>
  %1872 = sitofp <4 x i32> %1871 to <4 x float>
  %1873 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1872
  %1874 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1869
  store <4 x float> %1873, ptr %1874, align 16, !tbaa !13
  %1875 = add nuw nsw i64 %1869, 4
  %1876 = add <4 x i32> %1870, <i32 4, i32 4, i32 4, i32 4>
  %1877 = icmp eq i64 %1875, 32000
  br i1 %1877, label %1878, label %1868, !llvm.loop !223

1878:                                             ; preds = %1878, %1868
  %1879 = phi i64 [ %1885, %1878 ], [ 0, %1868 ]
  %1880 = phi <4 x i32> [ %1886, %1878 ], [ <i32 0, i32 1, i32 2, i32 3>, %1868 ]
  %1881 = add <4 x i32> %1880, <i32 1, i32 1, i32 1, i32 1>
  %1882 = sitofp <4 x i32> %1881 to <4 x float>
  %1883 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1882
  %1884 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1879
  store <4 x float> %1883, ptr %1884, align 16, !tbaa !13
  %1885 = add nuw nsw i64 %1879, 4
  %1886 = add <4 x i32> %1880, <i32 4, i32 4, i32 4, i32 4>
  %1887 = icmp eq i64 %1885, 32000
  br i1 %1887, label %3413, label %1878, !llvm.loop !224

1888:                                             ; preds = %1860
  %1889 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.65) #11
  %1890 = icmp eq i32 %1889, 0
  br i1 %1890, label %1891, label %1902

1891:                                             ; preds = %1888
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %1892

1892:                                             ; preds = %1892, %1891
  %1893 = phi i64 [ 0, %1891 ], [ %1895, %1892 ]
  %1894 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1893
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1894, align 16, !tbaa !13
  %1895 = add nuw nsw i64 %1893, 4
  %1896 = icmp eq i64 %1895, 32000
  br i1 %1896, label %1897, label %1892, !llvm.loop !225

1897:                                             ; preds = %1897, %1892
  %1898 = phi i64 [ %1900, %1897 ], [ 0, %1892 ]
  %1899 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1898
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1899, align 16, !tbaa !13
  %1900 = add nuw nsw i64 %1898, 4
  %1901 = icmp eq i64 %1900, 32000
  br i1 %1901, label %3413, label %1897, !llvm.loop !226

1902:                                             ; preds = %1888
  %1903 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.66) #11
  %1904 = icmp eq i32 %1903, 0
  br i1 %1904, label %1905, label %1911

1905:                                             ; preds = %1902
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %1906

1906:                                             ; preds = %1906, %1905
  %1907 = phi i64 [ 0, %1905 ], [ %1909, %1906 ]
  %1908 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1907
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1908, align 16, !tbaa !13
  %1909 = add nuw nsw i64 %1907, 4
  %1910 = icmp eq i64 %1909, 32000
  br i1 %1910, label %3413, label %1906, !llvm.loop !227

1911:                                             ; preds = %1902
  %1912 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.67) #11
  %1913 = icmp eq i32 %1912, 0
  br i1 %1913, label %1914, label %1920

1914:                                             ; preds = %1911
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %1915

1915:                                             ; preds = %1915, %1914
  %1916 = phi i64 [ 0, %1914 ], [ %1918, %1915 ]
  %1917 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1916
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1917, align 16, !tbaa !13
  %1918 = add nuw nsw i64 %1916, 4
  %1919 = icmp eq i64 %1918, 32000
  br i1 %1919, label %3413, label %1915, !llvm.loop !228

1920:                                             ; preds = %1911
  %1921 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.68) #11
  %1922 = icmp eq i32 %1921, 0
  br i1 %1922, label %1923, label %1933

1923:                                             ; preds = %1923, %1920
  %1924 = phi i64 [ %1930, %1923 ], [ 0, %1920 ]
  %1925 = phi <4 x i32> [ %1931, %1923 ], [ <i32 0, i32 1, i32 2, i32 3>, %1920 ]
  %1926 = add <4 x i32> %1925, <i32 1, i32 1, i32 1, i32 1>
  %1927 = sitofp <4 x i32> %1926 to <4 x float>
  %1928 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1927
  %1929 = getelementptr inbounds float, ptr @global_data, i64 %1924
  store <4 x float> %1928, ptr %1929, align 16, !tbaa !13
  %1930 = add nuw nsw i64 %1924, 4
  %1931 = add <4 x i32> %1925, <i32 4, i32 4, i32 4, i32 4>
  %1932 = icmp eq i64 %1930, 32000
  br i1 %1932, label %3413, label %1923, !llvm.loop !229

1933:                                             ; preds = %1920
  %1934 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.69) #11
  %1935 = icmp eq i32 %1934, 0
  br i1 %1935, label %1936, label %1976

1936:                                             ; preds = %1943, %1933
  %1937 = phi i64 [ %1944, %1943 ], [ 0, %1933 ]
  br label %1938

1938:                                             ; preds = %1938, %1936
  %1939 = phi i64 [ 0, %1936 ], [ %1941, %1938 ]
  %1940 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1937, i64 %1939
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1940, align 16, !tbaa !13
  %1941 = add nuw nsw i64 %1939, 4
  %1942 = icmp eq i64 %1941, 256
  br i1 %1942, label %1943, label %1938, !llvm.loop !230

1943:                                             ; preds = %1938
  %1944 = add nuw nsw i64 %1937, 1
  %1945 = icmp eq i64 %1944, 256
  br i1 %1945, label %1946, label %1936

1946:                                             ; preds = %1959, %1943
  %1947 = phi i64 [ %1948, %1959 ], [ 0, %1943 ]
  %1948 = add nuw nsw i64 %1947, 1
  %1949 = trunc i64 %1948 to i32
  %1950 = sitofp i32 %1949 to float
  %1951 = fdiv float 1.000000e+00, %1950
  %1952 = insertelement <4 x float> poison, float %1951, i64 0
  %1953 = shufflevector <4 x float> %1952, <4 x float> poison, <4 x i32> zeroinitializer
  br label %1954

1954:                                             ; preds = %1954, %1946
  %1955 = phi i64 [ 0, %1946 ], [ %1957, %1954 ]
  %1956 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %1947, i64 %1955
  store <4 x float> %1953, ptr %1956, align 16, !tbaa !13
  %1957 = add nuw nsw i64 %1955, 4
  %1958 = icmp eq i64 %1957, 256
  br i1 %1958, label %1959, label %1954, !llvm.loop !231

1959:                                             ; preds = %1954
  %1960 = icmp eq i64 %1948, 256
  br i1 %1960, label %1961, label %1946

1961:                                             ; preds = %1974, %1959
  %1962 = phi i64 [ %1963, %1974 ], [ 0, %1959 ]
  %1963 = add nuw nsw i64 %1962, 1
  %1964 = trunc i64 %1963 to i32
  %1965 = sitofp i32 %1964 to float
  %1966 = fdiv float 1.000000e+00, %1965
  %1967 = insertelement <4 x float> poison, float %1966, i64 0
  %1968 = shufflevector <4 x float> %1967, <4 x float> poison, <4 x i32> zeroinitializer
  br label %1969

1969:                                             ; preds = %1969, %1961
  %1970 = phi i64 [ 0, %1961 ], [ %1972, %1969 ]
  %1971 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %1962, i64 %1970
  store <4 x float> %1968, ptr %1971, align 16, !tbaa !13
  %1972 = add nuw nsw i64 %1970, 4
  %1973 = icmp eq i64 %1972, 256
  br i1 %1973, label %1974, label %1969, !llvm.loop !232

1974:                                             ; preds = %1969
  %1975 = icmp eq i64 %1963, 256
  br i1 %1975, label %3413, label %1961

1976:                                             ; preds = %1933
  %1977 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.70) #11
  %1978 = icmp eq i32 %1977, 0
  br i1 %1978, label %1979, label %1980

1979:                                             ; preds = %1976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(262144) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i8 0, i64 262144, i1 false), !tbaa !13
  br label %3413

1980:                                             ; preds = %1976
  %1981 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.71) #11
  %1982 = icmp eq i32 %1981, 0
  br i1 %1982, label %1983, label %1984

1983:                                             ; preds = %1980
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(262144) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i8 0, i64 262144, i1 false), !tbaa !13
  br label %3413

1984:                                             ; preds = %1980
  %1985 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.72) #11
  %1986 = icmp eq i32 %1985, 0
  br i1 %1986, label %1987, label %1997

1987:                                             ; preds = %1987, %1984
  %1988 = phi i64 [ %1994, %1987 ], [ 0, %1984 ]
  %1989 = phi <4 x i32> [ %1995, %1987 ], [ <i32 0, i32 1, i32 2, i32 3>, %1984 ]
  %1990 = add <4 x i32> %1989, <i32 1, i32 1, i32 1, i32 1>
  %1991 = sitofp <4 x i32> %1990 to <4 x float>
  %1992 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1991
  %1993 = getelementptr inbounds float, ptr @global_data, i64 %1988
  store <4 x float> %1992, ptr %1993, align 16, !tbaa !13
  %1994 = add nuw nsw i64 %1988, 4
  %1995 = add <4 x i32> %1989, <i32 4, i32 4, i32 4, i32 4>
  %1996 = icmp eq i64 %1994, 32000
  br i1 %1996, label %3413, label %1987, !llvm.loop !233

1997:                                             ; preds = %1984
  %1998 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.73) #11
  %1999 = icmp eq i32 %1998, 0
  br i1 %1999, label %2000, label %2005

2000:                                             ; preds = %2000, %1997
  %2001 = phi i64 [ %2003, %2000 ], [ 0, %1997 ]
  %2002 = getelementptr inbounds float, ptr @global_data, i64 %2001
  store <4 x float> <float 0x3FF0000100000000, float 0x3FF0000100000000, float 0x3FF0000100000000, float 0x3FF0000100000000>, ptr %2002, align 16, !tbaa !13
  %2003 = add nuw nsw i64 %2001, 4
  %2004 = icmp eq i64 %2003, 32000
  br i1 %2004, label %3413, label %2000, !llvm.loop !234

2005:                                             ; preds = %1997
  %2006 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.74) #11
  %2007 = icmp eq i32 %2006, 0
  br i1 %2007, label %2008, label %2028

2008:                                             ; preds = %2008, %2005
  %2009 = phi i64 [ %2015, %2008 ], [ 0, %2005 ]
  %2010 = phi <4 x i32> [ %2016, %2008 ], [ <i32 0, i32 1, i32 2, i32 3>, %2005 ]
  %2011 = add <4 x i32> %2010, <i32 1, i32 1, i32 1, i32 1>
  %2012 = sitofp <4 x i32> %2011 to <4 x float>
  %2013 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2012
  %2014 = getelementptr inbounds float, ptr @global_data, i64 %2009
  store <4 x float> %2013, ptr %2014, align 16, !tbaa !13
  %2015 = add nuw nsw i64 %2009, 4
  %2016 = add <4 x i32> %2010, <i32 4, i32 4, i32 4, i32 4>
  %2017 = icmp eq i64 %2015, 32000
  br i1 %2017, label %2018, label %2008, !llvm.loop !235

2018:                                             ; preds = %2018, %2008
  %2019 = phi i64 [ %2025, %2018 ], [ 0, %2008 ]
  %2020 = phi <4 x i32> [ %2026, %2018 ], [ <i32 0, i32 1, i32 2, i32 3>, %2008 ]
  %2021 = add <4 x i32> %2020, <i32 1, i32 1, i32 1, i32 1>
  %2022 = sitofp <4 x i32> %2021 to <4 x float>
  %2023 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2022
  %2024 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2019
  store <4 x float> %2023, ptr %2024, align 16, !tbaa !13
  %2025 = add nuw nsw i64 %2019, 4
  %2026 = add <4 x i32> %2020, <i32 4, i32 4, i32 4, i32 4>
  %2027 = icmp eq i64 %2025, 32000
  br i1 %2027, label %3413, label %2018, !llvm.loop !236

2028:                                             ; preds = %2005
  %2029 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.75) #11
  %2030 = icmp eq i32 %2029, 0
  br i1 %2030, label %2031, label %2041

2031:                                             ; preds = %2031, %2028
  %2032 = phi i64 [ %2038, %2031 ], [ 0, %2028 ]
  %2033 = phi <4 x i32> [ %2039, %2031 ], [ <i32 0, i32 1, i32 2, i32 3>, %2028 ]
  %2034 = add <4 x i32> %2033, <i32 1, i32 1, i32 1, i32 1>
  %2035 = sitofp <4 x i32> %2034 to <4 x float>
  %2036 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2035
  %2037 = getelementptr inbounds float, ptr @global_data, i64 %2032
  store <4 x float> %2036, ptr %2037, align 16, !tbaa !13
  %2038 = add nuw nsw i64 %2032, 4
  %2039 = add <4 x i32> %2033, <i32 4, i32 4, i32 4, i32 4>
  %2040 = icmp eq i64 %2038, 32000
  br i1 %2040, label %3413, label %2031, !llvm.loop !237

2041:                                             ; preds = %2028
  %2042 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.76) #11
  %2043 = icmp eq i32 %2042, 0
  br i1 %2043, label %2044, label %2054

2044:                                             ; preds = %2044, %2041
  %2045 = phi i64 [ %2051, %2044 ], [ 0, %2041 ]
  %2046 = phi <4 x i32> [ %2052, %2044 ], [ <i32 0, i32 1, i32 2, i32 3>, %2041 ]
  %2047 = add <4 x i32> %2046, <i32 1, i32 1, i32 1, i32 1>
  %2048 = sitofp <4 x i32> %2047 to <4 x float>
  %2049 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2048
  %2050 = getelementptr inbounds float, ptr @global_data, i64 %2045
  store <4 x float> %2049, ptr %2050, align 16, !tbaa !13
  %2051 = add nuw nsw i64 %2045, 4
  %2052 = add <4 x i32> %2046, <i32 4, i32 4, i32 4, i32 4>
  %2053 = icmp eq i64 %2051, 32000
  br i1 %2053, label %3413, label %2044, !llvm.loop !238

2054:                                             ; preds = %2041
  %2055 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.77) #11
  %2056 = icmp eq i32 %2055, 0
  br i1 %2056, label %2057, label %2067

2057:                                             ; preds = %2057, %2054
  %2058 = phi i64 [ %2064, %2057 ], [ 0, %2054 ]
  %2059 = phi <4 x i32> [ %2065, %2057 ], [ <i32 0, i32 1, i32 2, i32 3>, %2054 ]
  %2060 = add <4 x i32> %2059, <i32 1, i32 1, i32 1, i32 1>
  %2061 = sitofp <4 x i32> %2060 to <4 x float>
  %2062 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2061
  %2063 = getelementptr inbounds float, ptr @global_data, i64 %2058
  store <4 x float> %2062, ptr %2063, align 16, !tbaa !13
  %2064 = add nuw nsw i64 %2058, 4
  %2065 = add <4 x i32> %2059, <i32 4, i32 4, i32 4, i32 4>
  %2066 = icmp eq i64 %2064, 32000
  br i1 %2066, label %3413, label %2057, !llvm.loop !239

2067:                                             ; preds = %2054
  %2068 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.78) #11
  %2069 = icmp eq i32 %2068, 0
  br i1 %2069, label %3413, label %2070

2070:                                             ; preds = %2067
  %2071 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.79) #11
  %2072 = icmp eq i32 %2071, 0
  br i1 %2072, label %2073, label %2084

2073:                                             ; preds = %2073, %2070
  %2074 = phi i64 [ %2080, %2073 ], [ 0, %2070 ]
  %2075 = phi <4 x i32> [ %2081, %2073 ], [ <i32 0, i32 1, i32 2, i32 3>, %2070 ]
  %2076 = add <4 x i32> %2075, <i32 1, i32 1, i32 1, i32 1>
  %2077 = sitofp <4 x i32> %2076 to <4 x float>
  %2078 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2077
  %2079 = getelementptr inbounds float, ptr @global_data, i64 %2074
  store <4 x float> %2078, ptr %2079, align 16, !tbaa !13
  %2080 = add nuw nsw i64 %2074, 4
  %2081 = add <4 x i32> %2075, <i32 4, i32 4, i32 4, i32 4>
  %2082 = icmp eq i64 %2080, 32000
  br i1 %2082, label %2083, label %2073, !llvm.loop !240

2083:                                             ; preds = %2073
  store float -2.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 31999), align 4, !tbaa !13
  br label %3413

2084:                                             ; preds = %2070
  %2085 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.80) #11
  %2086 = icmp eq i32 %2085, 0
  br i1 %2086, label %2087, label %2118

2087:                                             ; preds = %2084
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), i8 0, i64 128000, i1 false), !tbaa !13
  br label %2088

2088:                                             ; preds = %2088, %2087
  %2089 = phi i64 [ 0, %2087 ], [ %2095, %2088 ]
  %2090 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %2087 ], [ %2096, %2088 ]
  %2091 = add <4 x i32> %2090, <i32 1, i32 1, i32 1, i32 1>
  %2092 = sitofp <4 x i32> %2091 to <4 x float>
  %2093 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2092
  %2094 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2089
  store <4 x float> %2093, ptr %2094, align 16, !tbaa !13
  %2095 = add nuw nsw i64 %2089, 4
  %2096 = add <4 x i32> %2090, <i32 4, i32 4, i32 4, i32 4>
  %2097 = icmp eq i64 %2095, 32000
  br i1 %2097, label %2098, label %2088, !llvm.loop !241

2098:                                             ; preds = %2098, %2088
  %2099 = phi i64 [ %2105, %2098 ], [ 0, %2088 ]
  %2100 = phi <4 x i32> [ %2106, %2098 ], [ <i32 0, i32 1, i32 2, i32 3>, %2088 ]
  %2101 = add <4 x i32> %2100, <i32 1, i32 1, i32 1, i32 1>
  %2102 = sitofp <4 x i32> %2101 to <4 x float>
  %2103 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2102
  %2104 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2099
  store <4 x float> %2103, ptr %2104, align 16, !tbaa !13
  %2105 = add nuw nsw i64 %2099, 4
  %2106 = add <4 x i32> %2100, <i32 4, i32 4, i32 4, i32 4>
  %2107 = icmp eq i64 %2105, 32000
  br i1 %2107, label %2108, label %2098, !llvm.loop !242

2108:                                             ; preds = %2108, %2098
  %2109 = phi i64 [ %2115, %2108 ], [ 0, %2098 ]
  %2110 = phi <4 x i32> [ %2116, %2108 ], [ <i32 0, i32 1, i32 2, i32 3>, %2098 ]
  %2111 = add <4 x i32> %2110, <i32 1, i32 1, i32 1, i32 1>
  %2112 = sitofp <4 x i32> %2111 to <4 x float>
  %2113 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2112
  %2114 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %2109
  store <4 x float> %2113, ptr %2114, align 16, !tbaa !13
  %2115 = add nuw nsw i64 %2109, 4
  %2116 = add <4 x i32> %2110, <i32 4, i32 4, i32 4, i32 4>
  %2117 = icmp eq i64 %2115, 32000
  br i1 %2117, label %3413, label %2108, !llvm.loop !243

2118:                                             ; preds = %2084
  %2119 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.81) #11
  %2120 = icmp eq i32 %2119, 0
  br i1 %2120, label %2121, label %2137

2121:                                             ; preds = %2134, %2118
  %2122 = phi i64 [ %2123, %2134 ], [ 0, %2118 ]
  %2123 = add nuw nsw i64 %2122, 1
  %2124 = trunc i64 %2123 to i32
  %2125 = sitofp i32 %2124 to float
  %2126 = fdiv float 1.000000e+00, %2125
  %2127 = insertelement <4 x float> poison, float %2126, i64 0
  %2128 = shufflevector <4 x float> %2127, <4 x float> poison, <4 x i32> zeroinitializer
  br label %2129

2129:                                             ; preds = %2129, %2121
  %2130 = phi i64 [ 0, %2121 ], [ %2132, %2129 ]
  %2131 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %2122, i64 %2130
  store <4 x float> %2128, ptr %2131, align 16, !tbaa !13
  %2132 = add nuw nsw i64 %2130, 4
  %2133 = icmp eq i64 %2132, 256
  br i1 %2133, label %2134, label %2129, !llvm.loop !244

2134:                                             ; preds = %2129
  %2135 = icmp eq i64 %2123, 256
  br i1 %2135, label %2136, label %2121

2136:                                             ; preds = %2134
  store float 2.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 255, i64 255), align 4, !tbaa !13
  br label %3413

2137:                                             ; preds = %2118
  %2138 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.82) #11
  %2139 = icmp eq i32 %2138, 0
  br i1 %2139, label %2140, label %2150

2140:                                             ; preds = %2140, %2137
  %2141 = phi i64 [ %2147, %2140 ], [ 0, %2137 ]
  %2142 = phi <4 x i32> [ %2148, %2140 ], [ <i32 0, i32 1, i32 2, i32 3>, %2137 ]
  %2143 = add <4 x i32> %2142, <i32 1, i32 1, i32 1, i32 1>
  %2144 = sitofp <4 x i32> %2143 to <4 x float>
  %2145 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2144
  %2146 = getelementptr inbounds float, ptr @global_data, i64 %2141
  store <4 x float> %2145, ptr %2146, align 16, !tbaa !13
  %2147 = add nuw nsw i64 %2141, 4
  %2148 = add <4 x i32> %2142, <i32 4, i32 4, i32 4, i32 4>
  %2149 = icmp eq i64 %2147, 32000
  br i1 %2149, label %3413, label %2140, !llvm.loop !245

2150:                                             ; preds = %2137
  %2151 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.83) #11
  %2152 = icmp eq i32 %2151, 0
  br i1 %2152, label %2153, label %2165

2153:                                             ; preds = %2153, %2150
  %2154 = phi i64 [ %2161, %2153 ], [ 0, %2150 ]
  %2155 = phi <4 x i32> [ %2162, %2153 ], [ <i32 0, i32 1, i32 2, i32 3>, %2150 ]
  %2156 = add <4 x i32> %2155, <i32 1, i32 1, i32 1, i32 1>
  %2157 = mul <4 x i32> %2156, %2156
  %2158 = sitofp <4 x i32> %2157 to <4 x float>
  %2159 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2158
  %2160 = getelementptr inbounds float, ptr @global_data, i64 %2154
  store <4 x float> %2159, ptr %2160, align 16, !tbaa !13
  %2161 = add nuw nsw i64 %2154, 4
  %2162 = add <4 x i32> %2155, <i32 4, i32 4, i32 4, i32 4>
  %2163 = icmp eq i64 %2161, 32000
  br i1 %2163, label %2164, label %2153, !llvm.loop !246

2164:                                             ; preds = %2153
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), i8 0, i64 128000, i1 false), !tbaa !13
  br label %3413

2165:                                             ; preds = %2150
  %2166 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.84) #11
  %2167 = icmp eq i32 %2166, 0
  br i1 %2167, label %2168, label %2179

2168:                                             ; preds = %2168, %2165
  %2169 = phi i64 [ %2175, %2168 ], [ 0, %2165 ]
  %2170 = phi <4 x i32> [ %2176, %2168 ], [ <i32 0, i32 1, i32 2, i32 3>, %2165 ]
  %2171 = add <4 x i32> %2170, <i32 1, i32 1, i32 1, i32 1>
  %2172 = sitofp <4 x i32> %2171 to <4 x float>
  %2173 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2172
  %2174 = getelementptr inbounds float, ptr @global_data, i64 %2169
  store <4 x float> %2173, ptr %2174, align 16, !tbaa !13
  %2175 = add nuw nsw i64 %2169, 4
  %2176 = add <4 x i32> %2170, <i32 4, i32 4, i32 4, i32 4>
  %2177 = icmp eq i64 %2175, 32000
  br i1 %2177, label %2178, label %2168, !llvm.loop !247

2178:                                             ; preds = %2168
  store float -2.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 31999), align 4, !tbaa !13
  br label %3413

2179:                                             ; preds = %2165
  %2180 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.85) #11
  %2181 = icmp eq i32 %2180, 0
  br i1 %2181, label %2182, label %2188

2182:                                             ; preds = %2182, %2179
  %2183 = phi i64 [ %2185, %2182 ], [ 0, %2179 ]
  %2184 = getelementptr inbounds float, ptr @global_data, i64 %2183
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2184, align 16, !tbaa !13
  %2185 = add nuw nsw i64 %2183, 4
  %2186 = icmp eq i64 %2185, 32000
  br i1 %2186, label %2187, label %2182, !llvm.loop !248

2187:                                             ; preds = %2182
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), i8 0, i64 128000, i1 false), !tbaa !13
  br label %3413

2188:                                             ; preds = %2179
  %2189 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.86) #11
  %2190 = icmp eq i32 %2189, 0
  br i1 %2190, label %2191, label %2197

2191:                                             ; preds = %2191, %2188
  %2192 = phi i64 [ %2194, %2191 ], [ 0, %2188 ]
  %2193 = getelementptr inbounds float, ptr @global_data, i64 %2192
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2193, align 16, !tbaa !13
  %2194 = add nuw nsw i64 %2192, 4
  %2195 = icmp eq i64 %2194, 32000
  br i1 %2195, label %2196, label %2191, !llvm.loop !249

2196:                                             ; preds = %2191
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), i8 0, i64 128000, i1 false), !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 0), i8 0, i64 128000, i1 false), !tbaa !13
  br label %3413

2197:                                             ; preds = %2188
  %2198 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.87) #11
  %2199 = icmp eq i32 %2198, 0
  br i1 %2199, label %2200, label %2240

2200:                                             ; preds = %2200, %2197
  %2201 = phi i64 [ %2203, %2200 ], [ 0, %2197 ]
  %2202 = getelementptr inbounds float, ptr @global_data, i64 %2201
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2202, align 16, !tbaa !13
  %2203 = add nuw nsw i64 %2201, 4
  %2204 = icmp eq i64 %2203, 32000
  br i1 %2204, label %2205, label %2200, !llvm.loop !250

2205:                                             ; preds = %2205, %2200
  %2206 = phi i64 [ %2208, %2205 ], [ 0, %2200 ]
  %2207 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2206
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2207, align 16, !tbaa !13
  %2208 = add nuw nsw i64 %2206, 4
  %2209 = icmp eq i64 %2208, 32000
  br i1 %2209, label %2210, label %2205, !llvm.loop !251

2210:                                             ; preds = %2210, %2205
  %2211 = phi i64 [ %2217, %2210 ], [ 0, %2205 ]
  %2212 = phi <4 x i32> [ %2218, %2210 ], [ <i32 0, i32 1, i32 2, i32 3>, %2205 ]
  %2213 = add <4 x i32> %2212, <i32 1, i32 1, i32 1, i32 1>
  %2214 = sitofp <4 x i32> %2213 to <4 x float>
  %2215 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2214
  %2216 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2211
  store <4 x float> %2215, ptr %2216, align 16, !tbaa !13
  %2217 = add nuw nsw i64 %2211, 4
  %2218 = add <4 x i32> %2212, <i32 4, i32 4, i32 4, i32 4>
  %2219 = icmp eq i64 %2217, 32000
  br i1 %2219, label %2220, label %2210, !llvm.loop !252

2220:                                             ; preds = %2220, %2210
  %2221 = phi i64 [ %2227, %2220 ], [ 0, %2210 ]
  %2222 = phi <4 x i32> [ %2228, %2220 ], [ <i32 0, i32 1, i32 2, i32 3>, %2210 ]
  %2223 = add <4 x i32> %2222, <i32 1, i32 1, i32 1, i32 1>
  %2224 = sitofp <4 x i32> %2223 to <4 x float>
  %2225 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2224
  %2226 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2221
  store <4 x float> %2225, ptr %2226, align 16, !tbaa !13
  %2227 = add nuw nsw i64 %2221, 4
  %2228 = add <4 x i32> %2222, <i32 4, i32 4, i32 4, i32 4>
  %2229 = icmp eq i64 %2227, 32000
  br i1 %2229, label %2230, label %2220, !llvm.loop !253

2230:                                             ; preds = %2230, %2220
  %2231 = phi i64 [ %2237, %2230 ], [ 0, %2220 ]
  %2232 = phi <4 x i32> [ %2238, %2230 ], [ <i32 0, i32 1, i32 2, i32 3>, %2220 ]
  %2233 = add <4 x i32> %2232, <i32 1, i32 1, i32 1, i32 1>
  %2234 = sitofp <4 x i32> %2233 to <4 x float>
  %2235 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2234
  %2236 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %2231
  store <4 x float> %2235, ptr %2236, align 16, !tbaa !13
  %2237 = add nuw nsw i64 %2231, 4
  %2238 = add <4 x i32> %2232, <i32 4, i32 4, i32 4, i32 4>
  %2239 = icmp eq i64 %2237, 32000
  br i1 %2239, label %3413, label %2230, !llvm.loop !254

2240:                                             ; preds = %2197
  %2241 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.88) #11
  %2242 = icmp eq i32 %2241, 0
  br i1 %2242, label %2243, label %2254

2243:                                             ; preds = %2243, %2240
  %2244 = phi i64 [ %2250, %2243 ], [ 0, %2240 ]
  %2245 = phi <4 x i32> [ %2251, %2243 ], [ <i32 0, i32 1, i32 2, i32 3>, %2240 ]
  %2246 = add <4 x i32> %2245, <i32 1, i32 1, i32 1, i32 1>
  %2247 = sitofp <4 x i32> %2246 to <4 x float>
  %2248 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2247
  %2249 = getelementptr inbounds float, ptr @global_data, i64 %2244
  store <4 x float> %2248, ptr %2249, align 16, !tbaa !13
  %2250 = add nuw nsw i64 %2244, 4
  %2251 = add <4 x i32> %2245, <i32 4, i32 4, i32 4, i32 4>
  %2252 = icmp eq i64 %2250, 32000
  br i1 %2252, label %2253, label %2243, !llvm.loop !255

2253:                                             ; preds = %2243
  store float -1.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 31999), align 4, !tbaa !13
  br label %3413

2254:                                             ; preds = %2240
  %2255 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.89) #11
  %2256 = icmp eq i32 %2255, 0
  br i1 %2256, label %2257, label %2269

2257:                                             ; preds = %2257, %2254
  %2258 = phi i64 [ %2265, %2257 ], [ 0, %2254 ]
  %2259 = phi <4 x i32> [ %2266, %2257 ], [ <i32 0, i32 1, i32 2, i32 3>, %2254 ]
  %2260 = add <4 x i32> %2259, <i32 1, i32 1, i32 1, i32 1>
  %2261 = mul <4 x i32> %2260, %2260
  %2262 = sitofp <4 x i32> %2261 to <4 x float>
  %2263 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2262
  %2264 = getelementptr inbounds float, ptr @global_data, i64 %2258
  store <4 x float> %2263, ptr %2264, align 16, !tbaa !13
  %2265 = add nuw nsw i64 %2258, 4
  %2266 = add <4 x i32> %2259, <i32 4, i32 4, i32 4, i32 4>
  %2267 = icmp eq i64 %2265, 32000
  br i1 %2267, label %2268, label %2257, !llvm.loop !256

2268:                                             ; preds = %2257
  store float 2.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 31999), align 4, !tbaa !13
  br label %3413

2269:                                             ; preds = %2254
  %2270 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.90) #11
  %2271 = icmp eq i32 %2270, 0
  br i1 %2271, label %2272, label %2283

2272:                                             ; preds = %2269
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %2273

2273:                                             ; preds = %2273, %2272
  %2274 = phi i64 [ 0, %2272 ], [ %2280, %2273 ]
  %2275 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %2272 ], [ %2281, %2273 ]
  %2276 = add <4 x i32> %2275, <i32 1, i32 1, i32 1, i32 1>
  %2277 = sitofp <4 x i32> %2276 to <4 x float>
  %2278 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2277
  %2279 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2274
  store <4 x float> %2278, ptr %2279, align 16, !tbaa !13
  %2280 = add nuw nsw i64 %2274, 4
  %2281 = add <4 x i32> %2275, <i32 4, i32 4, i32 4, i32 4>
  %2282 = icmp eq i64 %2280, 32000
  br i1 %2282, label %3413, label %2273, !llvm.loop !257

2283:                                             ; preds = %2269
  %2284 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.91) #11
  %2285 = icmp eq i32 %2284, 0
  br i1 %2285, label %2286, label %2306

2286:                                             ; preds = %2286, %2283
  %2287 = phi i64 [ %2293, %2286 ], [ 0, %2283 ]
  %2288 = phi <4 x i32> [ %2294, %2286 ], [ <i32 0, i32 1, i32 2, i32 3>, %2283 ]
  %2289 = add <4 x i32> %2288, <i32 1, i32 1, i32 1, i32 1>
  %2290 = sitofp <4 x i32> %2289 to <4 x float>
  %2291 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2290
  %2292 = getelementptr inbounds float, ptr @global_data, i64 %2287
  store <4 x float> %2291, ptr %2292, align 16, !tbaa !13
  %2293 = add nuw nsw i64 %2287, 4
  %2294 = add <4 x i32> %2288, <i32 4, i32 4, i32 4, i32 4>
  %2295 = icmp eq i64 %2293, 32000
  br i1 %2295, label %2296, label %2286, !llvm.loop !258

2296:                                             ; preds = %2296, %2286
  %2297 = phi i64 [ %2303, %2296 ], [ 0, %2286 ]
  %2298 = phi <4 x i32> [ %2304, %2296 ], [ <i32 0, i32 1, i32 2, i32 3>, %2286 ]
  %2299 = add <4 x i32> %2298, <i32 1, i32 1, i32 1, i32 1>
  %2300 = sitofp <4 x i32> %2299 to <4 x float>
  %2301 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2300
  %2302 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2297
  store <4 x float> %2301, ptr %2302, align 16, !tbaa !13
  %2303 = add nuw nsw i64 %2297, 4
  %2304 = add <4 x i32> %2298, <i32 4, i32 4, i32 4, i32 4>
  %2305 = icmp eq i64 %2303, 32000
  br i1 %2305, label %3413, label %2296, !llvm.loop !259

2306:                                             ; preds = %2283
  %2307 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.92) #11
  %2308 = icmp eq i32 %2307, 0
  br i1 %2308, label %2309, label %2334

2309:                                             ; preds = %2322, %2306
  %2310 = phi i64 [ %2311, %2322 ], [ 0, %2306 ]
  %2311 = add nuw nsw i64 %2310, 1
  %2312 = trunc i64 %2311 to i32
  %2313 = sitofp i32 %2312 to float
  %2314 = fdiv float 1.000000e+00, %2313
  %2315 = insertelement <4 x float> poison, float %2314, i64 0
  %2316 = shufflevector <4 x float> %2315, <4 x float> poison, <4 x i32> zeroinitializer
  br label %2317

2317:                                             ; preds = %2317, %2309
  %2318 = phi i64 [ 0, %2309 ], [ %2320, %2317 ]
  %2319 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %2310, i64 %2318
  store <4 x float> %2316, ptr %2319, align 16, !tbaa !13
  %2320 = add nuw nsw i64 %2318, 4
  %2321 = icmp eq i64 %2320, 256
  br i1 %2321, label %2322, label %2317, !llvm.loop !260

2322:                                             ; preds = %2317
  %2323 = icmp eq i64 %2311, 256
  br i1 %2323, label %2324, label %2309

2324:                                             ; preds = %2331, %2322
  %2325 = phi i64 [ %2332, %2331 ], [ 0, %2322 ]
  br label %2326

2326:                                             ; preds = %2326, %2324
  %2327 = phi i64 [ 0, %2324 ], [ %2329, %2326 ]
  %2328 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %2325, i64 %2327
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2328, align 16, !tbaa !13
  %2329 = add nuw nsw i64 %2327, 4
  %2330 = icmp eq i64 %2329, 256
  br i1 %2330, label %2331, label %2326, !llvm.loop !261

2331:                                             ; preds = %2326
  %2332 = add nuw nsw i64 %2325, 1
  %2333 = icmp eq i64 %2332, 256
  br i1 %2333, label %3413, label %2324

2334:                                             ; preds = %2306
  %2335 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.93) #11
  %2336 = icmp eq i32 %2335, 0
  br i1 %2336, label %2337, label %2348

2337:                                             ; preds = %2337, %2334
  %2338 = phi i64 [ %2340, %2337 ], [ 0, %2334 ]
  %2339 = getelementptr inbounds float, ptr @global_data, i64 %2338
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2339, align 16, !tbaa !13
  %2340 = add nuw nsw i64 %2338, 4
  %2341 = icmp eq i64 %2340, 32000
  br i1 %2341, label %2342, label %2337, !llvm.loop !262

2342:                                             ; preds = %2342, %2337
  %2343 = phi i64 [ %2345, %2342 ], [ 0, %2337 ]
  %2344 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2343
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2344, align 16, !tbaa !13
  %2345 = add nuw nsw i64 %2343, 4
  %2346 = icmp eq i64 %2345, 32000
  br i1 %2346, label %2347, label %2342, !llvm.loop !263

2347:                                             ; preds = %2342
  store float 1.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 0), align 16, !tbaa !13
  br label %3413

2348:                                             ; preds = %2334
  %2349 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.94) #11
  %2350 = icmp eq i32 %2349, 0
  br i1 %2350, label %2351, label %2371

2351:                                             ; preds = %2351, %2348
  %2352 = phi i64 [ %2358, %2351 ], [ 0, %2348 ]
  %2353 = phi <4 x i32> [ %2359, %2351 ], [ <i32 0, i32 1, i32 2, i32 3>, %2348 ]
  %2354 = add <4 x i32> %2353, <i32 1, i32 1, i32 1, i32 1>
  %2355 = sitofp <4 x i32> %2354 to <4 x float>
  %2356 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2355
  %2357 = getelementptr inbounds float, ptr @global_data, i64 %2352
  store <4 x float> %2356, ptr %2357, align 16, !tbaa !13
  %2358 = add nuw nsw i64 %2352, 4
  %2359 = add <4 x i32> %2353, <i32 4, i32 4, i32 4, i32 4>
  %2360 = icmp eq i64 %2358, 32000
  br i1 %2360, label %2361, label %2351, !llvm.loop !264

2361:                                             ; preds = %2361, %2351
  %2362 = phi i64 [ %2368, %2361 ], [ 0, %2351 ]
  %2363 = phi <4 x i32> [ %2369, %2361 ], [ <i32 0, i32 1, i32 2, i32 3>, %2351 ]
  %2364 = add <4 x i32> %2363, <i32 1, i32 1, i32 1, i32 1>
  %2365 = sitofp <4 x i32> %2364 to <4 x float>
  %2366 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2365
  %2367 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2362
  store <4 x float> %2366, ptr %2367, align 16, !tbaa !13
  %2368 = add nuw nsw i64 %2362, 4
  %2369 = add <4 x i32> %2363, <i32 4, i32 4, i32 4, i32 4>
  %2370 = icmp eq i64 %2368, 32000
  br i1 %2370, label %3413, label %2361, !llvm.loop !265

2371:                                             ; preds = %2348
  %2372 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.95) #11
  %2373 = icmp eq i32 %2372, 0
  br i1 %2373, label %2374, label %2385

2374:                                             ; preds = %2374, %2371
  %2375 = phi i64 [ %2377, %2374 ], [ 0, %2371 ]
  %2376 = getelementptr inbounds float, ptr @global_data, i64 %2375
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2376, align 16, !tbaa !13
  %2377 = add nuw nsw i64 %2375, 4
  %2378 = icmp eq i64 %2377, 32000
  br i1 %2378, label %2379, label %2374, !llvm.loop !266

2379:                                             ; preds = %2379, %2374
  %2380 = phi i64 [ %2382, %2379 ], [ 0, %2374 ]
  %2381 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2380
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2381, align 16, !tbaa !13
  %2382 = add nuw nsw i64 %2380, 4
  %2383 = icmp eq i64 %2382, 32000
  br i1 %2383, label %2384, label %2379, !llvm.loop !267

2384:                                             ; preds = %2379
  store float 1.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 0), align 16, !tbaa !13
  br label %3413

2385:                                             ; preds = %2371
  %2386 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.96) #11
  %2387 = icmp eq i32 %2386, 0
  br i1 %2387, label %2388, label %2413

2388:                                             ; preds = %2388, %2385
  %2389 = phi i64 [ %2391, %2388 ], [ 0, %2385 ]
  %2390 = getelementptr inbounds float, ptr @global_data, i64 %2389
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2390, align 16, !tbaa !13
  %2391 = add nuw nsw i64 %2389, 4
  %2392 = icmp eq i64 %2391, 32000
  br i1 %2392, label %2393, label %2388, !llvm.loop !268

2393:                                             ; preds = %2393, %2388
  %2394 = phi i64 [ %2400, %2393 ], [ 0, %2388 ]
  %2395 = phi <4 x i32> [ %2401, %2393 ], [ <i32 0, i32 1, i32 2, i32 3>, %2388 ]
  %2396 = add <4 x i32> %2395, <i32 1, i32 1, i32 1, i32 1>
  %2397 = sitofp <4 x i32> %2396 to <4 x float>
  %2398 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2397
  %2399 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2394
  store <4 x float> %2398, ptr %2399, align 16, !tbaa !13
  %2400 = add nuw nsw i64 %2394, 4
  %2401 = add <4 x i32> %2395, <i32 4, i32 4, i32 4, i32 4>
  %2402 = icmp eq i64 %2400, 32000
  br i1 %2402, label %2403, label %2393, !llvm.loop !269

2403:                                             ; preds = %2403, %2393
  %2404 = phi i64 [ %2410, %2403 ], [ 0, %2393 ]
  %2405 = phi <4 x i32> [ %2411, %2403 ], [ <i32 0, i32 1, i32 2, i32 3>, %2393 ]
  %2406 = add <4 x i32> %2405, <i32 1, i32 1, i32 1, i32 1>
  %2407 = sitofp <4 x i32> %2406 to <4 x float>
  %2408 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2407
  %2409 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2404
  store <4 x float> %2408, ptr %2409, align 16, !tbaa !13
  %2410 = add nuw nsw i64 %2404, 4
  %2411 = add <4 x i32> %2405, <i32 4, i32 4, i32 4, i32 4>
  %2412 = icmp eq i64 %2410, 32000
  br i1 %2412, label %3413, label %2403, !llvm.loop !270

2413:                                             ; preds = %2385
  %2414 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.97) #11
  %2415 = icmp eq i32 %2414, 0
  br i1 %2415, label %2416, label %2441

2416:                                             ; preds = %2416, %2413
  %2417 = phi i64 [ %2419, %2416 ], [ 0, %2413 ]
  %2418 = getelementptr inbounds float, ptr @global_data, i64 %2417
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2418, align 16, !tbaa !13
  %2419 = add nuw nsw i64 %2417, 4
  %2420 = icmp eq i64 %2419, 32000
  br i1 %2420, label %2421, label %2416, !llvm.loop !271

2421:                                             ; preds = %2421, %2416
  %2422 = phi i64 [ %2428, %2421 ], [ 0, %2416 ]
  %2423 = phi <4 x i32> [ %2429, %2421 ], [ <i32 0, i32 1, i32 2, i32 3>, %2416 ]
  %2424 = add <4 x i32> %2423, <i32 1, i32 1, i32 1, i32 1>
  %2425 = sitofp <4 x i32> %2424 to <4 x float>
  %2426 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2425
  %2427 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2422
  store <4 x float> %2426, ptr %2427, align 16, !tbaa !13
  %2428 = add nuw nsw i64 %2422, 4
  %2429 = add <4 x i32> %2423, <i32 4, i32 4, i32 4, i32 4>
  %2430 = icmp eq i64 %2428, 32000
  br i1 %2430, label %2431, label %2421, !llvm.loop !272

2431:                                             ; preds = %2431, %2421
  %2432 = phi i64 [ %2438, %2431 ], [ 0, %2421 ]
  %2433 = phi <4 x i32> [ %2439, %2431 ], [ <i32 0, i32 1, i32 2, i32 3>, %2421 ]
  %2434 = add <4 x i32> %2433, <i32 1, i32 1, i32 1, i32 1>
  %2435 = sitofp <4 x i32> %2434 to <4 x float>
  %2436 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2435
  %2437 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2432
  store <4 x float> %2436, ptr %2437, align 16, !tbaa !13
  %2438 = add nuw nsw i64 %2432, 4
  %2439 = add <4 x i32> %2433, <i32 4, i32 4, i32 4, i32 4>
  %2440 = icmp eq i64 %2438, 32000
  br i1 %2440, label %3413, label %2431, !llvm.loop !273

2441:                                             ; preds = %2413
  %2442 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.98) #11
  %2443 = icmp eq i32 %2442, 0
  br i1 %2443, label %2444, label %2475

2444:                                             ; preds = %2441
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %2445

2445:                                             ; preds = %2445, %2444
  %2446 = phi i64 [ 0, %2444 ], [ %2448, %2445 ]
  %2447 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2446
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2447, align 16, !tbaa !13
  %2448 = add nuw nsw i64 %2446, 4
  %2449 = icmp eq i64 %2448, 32000
  br i1 %2449, label %2450, label %2445, !llvm.loop !274

2450:                                             ; preds = %2450, %2445
  %2451 = phi i64 [ %2453, %2450 ], [ 0, %2445 ]
  %2452 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2451
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2452, align 16, !tbaa !13
  %2453 = add nuw nsw i64 %2451, 4
  %2454 = icmp eq i64 %2453, 32000
  br i1 %2454, label %2455, label %2450, !llvm.loop !275

2455:                                             ; preds = %2455, %2450
  %2456 = phi i64 [ %2462, %2455 ], [ 0, %2450 ]
  %2457 = phi <4 x i32> [ %2463, %2455 ], [ <i32 0, i32 1, i32 2, i32 3>, %2450 ]
  %2458 = add <4 x i32> %2457, <i32 1, i32 1, i32 1, i32 1>
  %2459 = sitofp <4 x i32> %2458 to <4 x float>
  %2460 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2459
  %2461 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2456
  store <4 x float> %2460, ptr %2461, align 16, !tbaa !13
  %2462 = add nuw nsw i64 %2456, 4
  %2463 = add <4 x i32> %2457, <i32 4, i32 4, i32 4, i32 4>
  %2464 = icmp eq i64 %2462, 32000
  br i1 %2464, label %2465, label %2455, !llvm.loop !276

2465:                                             ; preds = %2465, %2455
  %2466 = phi i64 [ %2472, %2465 ], [ 0, %2455 ]
  %2467 = phi <4 x i32> [ %2473, %2465 ], [ <i32 0, i32 1, i32 2, i32 3>, %2455 ]
  %2468 = add <4 x i32> %2467, <i32 1, i32 1, i32 1, i32 1>
  %2469 = sitofp <4 x i32> %2468 to <4 x float>
  %2470 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2469
  %2471 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %2466
  store <4 x float> %2470, ptr %2471, align 16, !tbaa !13
  %2472 = add nuw nsw i64 %2466, 4
  %2473 = add <4 x i32> %2467, <i32 4, i32 4, i32 4, i32 4>
  %2474 = icmp eq i64 %2472, 32000
  br i1 %2474, label %3413, label %2465, !llvm.loop !277

2475:                                             ; preds = %2441
  %2476 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.99) #11
  %2477 = icmp eq i32 %2476, 0
  br i1 %2477, label %2478, label %2518

2478:                                             ; preds = %2485, %2475
  %2479 = phi i64 [ %2486, %2485 ], [ 0, %2475 ]
  br label %2480

2480:                                             ; preds = %2480, %2478
  %2481 = phi i64 [ 0, %2478 ], [ %2483, %2480 ]
  %2482 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %2479, i64 %2481
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2482, align 16, !tbaa !13
  %2483 = add nuw nsw i64 %2481, 4
  %2484 = icmp eq i64 %2483, 256
  br i1 %2484, label %2485, label %2480, !llvm.loop !278

2485:                                             ; preds = %2480
  %2486 = add nuw nsw i64 %2479, 1
  %2487 = icmp eq i64 %2486, 256
  br i1 %2487, label %2488, label %2478

2488:                                             ; preds = %2501, %2485
  %2489 = phi i64 [ %2490, %2501 ], [ 0, %2485 ]
  %2490 = add nuw nsw i64 %2489, 1
  %2491 = trunc i64 %2490 to i32
  %2492 = sitofp i32 %2491 to float
  %2493 = fdiv float 1.000000e+00, %2492
  %2494 = insertelement <4 x float> poison, float %2493, i64 0
  %2495 = shufflevector <4 x float> %2494, <4 x float> poison, <4 x i32> zeroinitializer
  br label %2496

2496:                                             ; preds = %2496, %2488
  %2497 = phi i64 [ 0, %2488 ], [ %2499, %2496 ]
  %2498 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %2489, i64 %2497
  store <4 x float> %2495, ptr %2498, align 16, !tbaa !13
  %2499 = add nuw nsw i64 %2497, 4
  %2500 = icmp eq i64 %2499, 256
  br i1 %2500, label %2501, label %2496, !llvm.loop !279

2501:                                             ; preds = %2496
  %2502 = icmp eq i64 %2490, 256
  br i1 %2502, label %2503, label %2488

2503:                                             ; preds = %2516, %2501
  %2504 = phi i64 [ %2505, %2516 ], [ 0, %2501 ]
  %2505 = add nuw nsw i64 %2504, 1
  %2506 = trunc i64 %2505 to i32
  %2507 = sitofp i32 %2506 to float
  %2508 = fdiv float 1.000000e+00, %2507
  %2509 = insertelement <4 x float> poison, float %2508, i64 0
  %2510 = shufflevector <4 x float> %2509, <4 x float> poison, <4 x i32> zeroinitializer
  br label %2511

2511:                                             ; preds = %2511, %2503
  %2512 = phi i64 [ 0, %2503 ], [ %2514, %2511 ]
  %2513 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %2504, i64 %2512
  store <4 x float> %2510, ptr %2513, align 16, !tbaa !13
  %2514 = add nuw nsw i64 %2512, 4
  %2515 = icmp eq i64 %2514, 256
  br i1 %2515, label %2516, label %2511, !llvm.loop !280

2516:                                             ; preds = %2511
  %2517 = icmp eq i64 %2505, 256
  br i1 %2517, label %3413, label %2503

2518:                                             ; preds = %2475
  %2519 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.100) #11
  %2520 = icmp eq i32 %2519, 0
  br i1 %2520, label %2521, label %2547

2521:                                             ; preds = %2521, %2518
  %2522 = phi i64 [ %2524, %2521 ], [ 0, %2518 ]
  %2523 = getelementptr inbounds float, ptr @global_data, i64 %2522
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2523, align 16, !tbaa !13
  %2524 = add nuw nsw i64 %2522, 4
  %2525 = icmp eq i64 %2524, 32000
  br i1 %2525, label %2526, label %2521, !llvm.loop !281

2526:                                             ; preds = %2526, %2521
  %2527 = phi i64 [ %2533, %2526 ], [ 0, %2521 ]
  %2528 = phi <4 x i32> [ %2534, %2526 ], [ <i32 0, i32 1, i32 2, i32 3>, %2521 ]
  %2529 = add <4 x i32> %2528, <i32 1, i32 1, i32 1, i32 1>
  %2530 = sitofp <4 x i32> %2529 to <4 x float>
  %2531 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2530
  %2532 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2527
  store <4 x float> %2531, ptr %2532, align 16, !tbaa !13
  %2533 = add nuw nsw i64 %2527, 4
  %2534 = add <4 x i32> %2528, <i32 4, i32 4, i32 4, i32 4>
  %2535 = icmp eq i64 %2533, 32000
  br i1 %2535, label %2536, label %2526, !llvm.loop !282

2536:                                             ; preds = %2536, %2526
  %2537 = phi i64 [ %2543, %2536 ], [ 0, %2526 ]
  %2538 = phi <4 x i32> [ %2544, %2536 ], [ <i32 0, i32 1, i32 2, i32 3>, %2526 ]
  %2539 = add <4 x i32> %2538, <i32 1, i32 1, i32 1, i32 1>
  %2540 = sitofp <4 x i32> %2539 to <4 x float>
  %2541 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2540
  %2542 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2537
  store <4 x float> %2541, ptr %2542, align 16, !tbaa !13
  %2543 = add nuw nsw i64 %2537, 4
  %2544 = add <4 x i32> %2538, <i32 4, i32 4, i32 4, i32 4>
  %2545 = icmp eq i64 %2543, 32000
  br i1 %2545, label %2546, label %2536, !llvm.loop !283

2546:                                             ; preds = %2536
  store float -1.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 31999), align 4, !tbaa !13
  br label %3413

2547:                                             ; preds = %2518
  %2548 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.101) #11
  %2549 = icmp eq i32 %2548, 0
  br i1 %2549, label %2550, label %2566

2550:                                             ; preds = %2550, %2547
  %2551 = phi i64 [ %2558, %2550 ], [ 0, %2547 ]
  %2552 = phi <4 x i32> [ %2559, %2550 ], [ <i32 0, i32 1, i32 2, i32 3>, %2547 ]
  %2553 = add <4 x i32> %2552, <i32 1, i32 1, i32 1, i32 1>
  %2554 = mul <4 x i32> %2553, %2553
  %2555 = sitofp <4 x i32> %2554 to <4 x float>
  %2556 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2555
  %2557 = getelementptr inbounds float, ptr @global_data, i64 %2551
  store <4 x float> %2556, ptr %2557, align 16, !tbaa !13
  %2558 = add nuw nsw i64 %2551, 4
  %2559 = add <4 x i32> %2552, <i32 4, i32 4, i32 4, i32 4>
  %2560 = icmp eq i64 %2558, 32000
  br i1 %2560, label %2561, label %2550, !llvm.loop !284

2561:                                             ; preds = %2561, %2550
  %2562 = phi i64 [ %2564, %2561 ], [ 0, %2550 ]
  %2563 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2562
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2563, align 16, !tbaa !13
  %2564 = add nuw nsw i64 %2562, 4
  %2565 = icmp eq i64 %2564, 32000
  br i1 %2565, label %3413, label %2561, !llvm.loop !285

2566:                                             ; preds = %2547
  %2567 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.102) #11
  %2568 = icmp eq i32 %2567, 0
  br i1 %2568, label %2569, label %2585

2569:                                             ; preds = %2569, %2566
  %2570 = phi i64 [ %2572, %2569 ], [ 0, %2566 ]
  %2571 = getelementptr inbounds float, ptr @array, i64 %2570
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2571, align 16, !tbaa !13
  %2572 = add nuw nsw i64 %2570, 4
  %2573 = icmp eq i64 %2572, 32000
  br i1 %2573, label %2574, label %2569, !llvm.loop !286

2574:                                             ; preds = %2574, %2569
  %2575 = phi i64 [ %2582, %2574 ], [ 0, %2569 ]
  %2576 = phi <4 x i32> [ %2583, %2574 ], [ <i32 0, i32 1, i32 2, i32 3>, %2569 ]
  %2577 = add <4 x i32> %2576, <i32 1, i32 1, i32 1, i32 1>
  %2578 = mul <4 x i32> %2577, %2577
  %2579 = sitofp <4 x i32> %2578 to <4 x float>
  %2580 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2579
  %2581 = getelementptr inbounds float, ptr @global_data, i64 %2575
  store <4 x float> %2580, ptr %2581, align 16, !tbaa !13
  %2582 = add nuw nsw i64 %2575, 4
  %2583 = add <4 x i32> %2576, <i32 4, i32 4, i32 4, i32 4>
  %2584 = icmp eq i64 %2582, 32000
  br i1 %2584, label %3413, label %2574, !llvm.loop !287

2585:                                             ; preds = %2566
  %2586 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.103) #11
  %2587 = icmp eq i32 %2586, 0
  br i1 %2587, label %2588, label %2600

2588:                                             ; preds = %2585
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @array, i8 0, i64 128000, i1 false), !tbaa !13
  br label %2589

2589:                                             ; preds = %2589, %2588
  %2590 = phi i64 [ 0, %2588 ], [ %2597, %2589 ]
  %2591 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %2588 ], [ %2598, %2589 ]
  %2592 = add <4 x i32> %2591, <i32 1, i32 1, i32 1, i32 1>
  %2593 = mul <4 x i32> %2592, %2592
  %2594 = sitofp <4 x i32> %2593 to <4 x float>
  %2595 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2594
  %2596 = getelementptr inbounds float, ptr @global_data, i64 %2590
  store <4 x float> %2595, ptr %2596, align 16, !tbaa !13
  %2597 = add nuw nsw i64 %2590, 4
  %2598 = add <4 x i32> %2591, <i32 4, i32 4, i32 4, i32 4>
  %2599 = icmp eq i64 %2597, 32000
  br i1 %2599, label %3413, label %2589, !llvm.loop !288

2600:                                             ; preds = %2585
  %2601 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.104) #11
  %2602 = icmp eq i32 %2601, 0
  br i1 %2602, label %2603, label %2619

2603:                                             ; preds = %2603, %2600
  %2604 = phi i64 [ %2606, %2603 ], [ 0, %2600 ]
  %2605 = getelementptr inbounds float, ptr @array, i64 %2604
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2605, align 16, !tbaa !13
  %2606 = add nuw nsw i64 %2604, 4
  %2607 = icmp eq i64 %2606, 32000
  br i1 %2607, label %2608, label %2603, !llvm.loop !289

2608:                                             ; preds = %2608, %2603
  %2609 = phi i64 [ %2616, %2608 ], [ 0, %2603 ]
  %2610 = phi <4 x i32> [ %2617, %2608 ], [ <i32 0, i32 1, i32 2, i32 3>, %2603 ]
  %2611 = add <4 x i32> %2610, <i32 1, i32 1, i32 1, i32 1>
  %2612 = mul <4 x i32> %2611, %2611
  %2613 = sitofp <4 x i32> %2612 to <4 x float>
  %2614 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2613
  %2615 = getelementptr inbounds float, ptr @global_data, i64 %2609
  store <4 x float> %2614, ptr %2615, align 16, !tbaa !13
  %2616 = add nuw nsw i64 %2609, 4
  %2617 = add <4 x i32> %2610, <i32 4, i32 4, i32 4, i32 4>
  %2618 = icmp eq i64 %2616, 32000
  br i1 %2618, label %3413, label %2608, !llvm.loop !290

2619:                                             ; preds = %2600
  %2620 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.105) #11
  %2621 = icmp eq i32 %2620, 0
  br i1 %2621, label %2622, label %2638

2622:                                             ; preds = %2622, %2619
  %2623 = phi i64 [ %2625, %2622 ], [ 0, %2619 ]
  %2624 = getelementptr inbounds float, ptr @global_data, i64 %2623
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2624, align 16, !tbaa !13
  %2625 = add nuw nsw i64 %2623, 4
  %2626 = icmp eq i64 %2625, 32000
  br i1 %2626, label %2627, label %2622, !llvm.loop !291

2627:                                             ; preds = %2627, %2622
  %2628 = phi i64 [ %2635, %2627 ], [ 0, %2622 ]
  %2629 = phi <4 x i32> [ %2636, %2627 ], [ <i32 0, i32 1, i32 2, i32 3>, %2622 ]
  %2630 = add <4 x i32> %2629, <i32 1, i32 1, i32 1, i32 1>
  %2631 = mul <4 x i32> %2630, %2630
  %2632 = sitofp <4 x i32> %2631 to <4 x float>
  %2633 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2632
  %2634 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2628
  store <4 x float> %2633, ptr %2634, align 16, !tbaa !13
  %2635 = add nuw nsw i64 %2628, 4
  %2636 = add <4 x i32> %2629, <i32 4, i32 4, i32 4, i32 4>
  %2637 = icmp eq i64 %2635, 32000
  br i1 %2637, label %3413, label %2627, !llvm.loop !292

2638:                                             ; preds = %2619
  %2639 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.106) #11
  %2640 = icmp eq i32 %2639, 0
  br i1 %2640, label %2641, label %2657

2641:                                             ; preds = %2641, %2638
  %2642 = phi i64 [ %2644, %2641 ], [ 0, %2638 ]
  %2643 = getelementptr inbounds float, ptr @global_data, i64 %2642
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2643, align 16, !tbaa !13
  %2644 = add nuw nsw i64 %2642, 4
  %2645 = icmp eq i64 %2644, 32000
  br i1 %2645, label %2646, label %2641, !llvm.loop !293

2646:                                             ; preds = %2646, %2641
  %2647 = phi i64 [ %2654, %2646 ], [ 0, %2641 ]
  %2648 = phi <4 x i32> [ %2655, %2646 ], [ <i32 0, i32 1, i32 2, i32 3>, %2641 ]
  %2649 = add <4 x i32> %2648, <i32 1, i32 1, i32 1, i32 1>
  %2650 = mul <4 x i32> %2649, %2649
  %2651 = sitofp <4 x i32> %2650 to <4 x float>
  %2652 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2651
  %2653 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2647
  store <4 x float> %2652, ptr %2653, align 16, !tbaa !13
  %2654 = add nuw nsw i64 %2647, 4
  %2655 = add <4 x i32> %2648, <i32 4, i32 4, i32 4, i32 4>
  %2656 = icmp eq i64 %2654, 32000
  br i1 %2656, label %3413, label %2646, !llvm.loop !294

2657:                                             ; preds = %2638
  %2658 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.107) #11
  %2659 = icmp eq i32 %2658, 0
  br i1 %2659, label %2660, label %2696

2660:                                             ; preds = %2660, %2657
  %2661 = phi i64 [ %2663, %2660 ], [ 0, %2657 ]
  %2662 = getelementptr inbounds float, ptr @global_data, i64 %2661
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2662, align 16, !tbaa !13
  %2663 = add nuw nsw i64 %2661, 4
  %2664 = icmp eq i64 %2663, 32000
  br i1 %2664, label %2665, label %2660, !llvm.loop !295

2665:                                             ; preds = %2665, %2660
  %2666 = phi i64 [ %2672, %2665 ], [ 0, %2660 ]
  %2667 = phi <4 x i32> [ %2673, %2665 ], [ <i32 0, i32 1, i32 2, i32 3>, %2660 ]
  %2668 = add <4 x i32> %2667, <i32 1, i32 1, i32 1, i32 1>
  %2669 = sitofp <4 x i32> %2668 to <4 x float>
  %2670 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2669
  %2671 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2666
  store <4 x float> %2670, ptr %2671, align 16, !tbaa !13
  %2672 = add nuw nsw i64 %2666, 4
  %2673 = add <4 x i32> %2667, <i32 4, i32 4, i32 4, i32 4>
  %2674 = icmp eq i64 %2672, 32000
  br i1 %2674, label %2675, label %2665, !llvm.loop !296

2675:                                             ; preds = %2675, %2665
  %2676 = phi i64 [ %2682, %2675 ], [ 0, %2665 ]
  %2677 = phi <4 x i32> [ %2683, %2675 ], [ <i32 0, i32 1, i32 2, i32 3>, %2665 ]
  %2678 = add <4 x i32> %2677, <i32 1, i32 1, i32 1, i32 1>
  %2679 = sitofp <4 x i32> %2678 to <4 x float>
  %2680 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2679
  %2681 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2676
  store <4 x float> %2680, ptr %2681, align 16, !tbaa !13
  %2682 = add nuw nsw i64 %2676, 4
  %2683 = add <4 x i32> %2677, <i32 4, i32 4, i32 4, i32 4>
  %2684 = icmp eq i64 %2682, 32000
  br i1 %2684, label %2685, label %2675, !llvm.loop !297

2685:                                             ; preds = %2685, %2675
  %2686 = phi i64 [ %2688, %2685 ], [ 0, %2675 ]
  %2687 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2686
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, ptr %2687, align 16, !tbaa !13
  %2688 = add nuw nsw i64 %2686, 4
  %2689 = icmp eq i64 %2688, 32000
  br i1 %2689, label %2690, label %2685, !llvm.loop !298

2690:                                             ; preds = %2685
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 10666), i8 0, i64 128000, i1 false), !tbaa !13
  br label %2691

2691:                                             ; preds = %2691, %2690
  %2692 = phi i64 [ 0, %2690 ], [ %2694, %2691 ]
  %2693 = getelementptr inbounds float, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 21333), i64 %2692
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2693, align 4, !tbaa !13
  %2694 = add nuw nsw i64 %2692, 4
  %2695 = icmp eq i64 %2694, 32000
  br i1 %2695, label %3413, label %2691, !llvm.loop !299

2696:                                             ; preds = %2657
  %2697 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.108) #11
  %2698 = icmp eq i32 %2697, 0
  br i1 %2698, label %2699, label %2744

2699:                                             ; preds = %2699, %2696
  %2700 = phi i64 [ %2702, %2699 ], [ 0, %2696 ]
  %2701 = getelementptr inbounds float, ptr @global_data, i64 %2700
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2701, align 16, !tbaa !13
  %2702 = add nuw nsw i64 %2700, 4
  %2703 = icmp eq i64 %2702, 32000
  br i1 %2703, label %2704, label %2699, !llvm.loop !300

2704:                                             ; preds = %2704, %2699
  %2705 = phi i64 [ %2711, %2704 ], [ 0, %2699 ]
  %2706 = phi <4 x i32> [ %2712, %2704 ], [ <i32 0, i32 1, i32 2, i32 3>, %2699 ]
  %2707 = add <4 x i32> %2706, <i32 1, i32 1, i32 1, i32 1>
  %2708 = sitofp <4 x i32> %2707 to <4 x float>
  %2709 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2708
  %2710 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2705
  store <4 x float> %2709, ptr %2710, align 16, !tbaa !13
  %2711 = add nuw nsw i64 %2705, 4
  %2712 = add <4 x i32> %2706, <i32 4, i32 4, i32 4, i32 4>
  %2713 = icmp eq i64 %2711, 32000
  br i1 %2713, label %2714, label %2704, !llvm.loop !301

2714:                                             ; preds = %2714, %2704
  %2715 = phi i64 [ %2721, %2714 ], [ 0, %2704 ]
  %2716 = phi <4 x i32> [ %2722, %2714 ], [ <i32 0, i32 1, i32 2, i32 3>, %2704 ]
  %2717 = add <4 x i32> %2716, <i32 1, i32 1, i32 1, i32 1>
  %2718 = sitofp <4 x i32> %2717 to <4 x float>
  %2719 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2718
  %2720 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2715
  store <4 x float> %2719, ptr %2720, align 16, !tbaa !13
  %2721 = add nuw nsw i64 %2715, 4
  %2722 = add <4 x i32> %2716, <i32 4, i32 4, i32 4, i32 4>
  %2723 = icmp eq i64 %2721, 32000
  br i1 %2723, label %2724, label %2714, !llvm.loop !302

2724:                                             ; preds = %2724, %2714
  %2725 = phi i64 [ %2731, %2724 ], [ 0, %2714 ]
  %2726 = phi <4 x i32> [ %2732, %2724 ], [ <i32 0, i32 1, i32 2, i32 3>, %2714 ]
  %2727 = add <4 x i32> %2726, <i32 1, i32 1, i32 1, i32 1>
  %2728 = sitofp <4 x i32> %2727 to <4 x float>
  %2729 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2728
  %2730 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2725
  store <4 x float> %2729, ptr %2730, align 16, !tbaa !13
  %2731 = add nuw nsw i64 %2725, 4
  %2732 = add <4 x i32> %2726, <i32 4, i32 4, i32 4, i32 4>
  %2733 = icmp eq i64 %2731, 32000
  br i1 %2733, label %2734, label %2724, !llvm.loop !303

2734:                                             ; preds = %2734, %2724
  %2735 = phi i64 [ %2741, %2734 ], [ 0, %2724 ]
  %2736 = phi <4 x i32> [ %2742, %2734 ], [ <i32 0, i32 1, i32 2, i32 3>, %2724 ]
  %2737 = add <4 x i32> %2736, <i32 1, i32 1, i32 1, i32 1>
  %2738 = sitofp <4 x i32> %2737 to <4 x float>
  %2739 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2738
  %2740 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %2735
  store <4 x float> %2739, ptr %2740, align 16, !tbaa !13
  %2741 = add nuw nsw i64 %2735, 4
  %2742 = add <4 x i32> %2736, <i32 4, i32 4, i32 4, i32 4>
  %2743 = icmp eq i64 %2741, 32000
  br i1 %2743, label %3413, label %2734, !llvm.loop !304

2744:                                             ; preds = %2696
  %2745 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.109) #11
  %2746 = icmp eq i32 %2745, 0
  br i1 %2746, label %2747, label %2772

2747:                                             ; preds = %2747, %2744
  %2748 = phi i64 [ %2750, %2747 ], [ 0, %2744 ]
  %2749 = getelementptr inbounds float, ptr @global_data, i64 %2748
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2749, align 16, !tbaa !13
  %2750 = add nuw nsw i64 %2748, 4
  %2751 = icmp eq i64 %2750, 32000
  br i1 %2751, label %2752, label %2747, !llvm.loop !305

2752:                                             ; preds = %2752, %2747
  %2753 = phi i64 [ %2759, %2752 ], [ 0, %2747 ]
  %2754 = phi <4 x i32> [ %2760, %2752 ], [ <i32 0, i32 1, i32 2, i32 3>, %2747 ]
  %2755 = add <4 x i32> %2754, <i32 1, i32 1, i32 1, i32 1>
  %2756 = sitofp <4 x i32> %2755 to <4 x float>
  %2757 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2756
  %2758 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2753
  store <4 x float> %2757, ptr %2758, align 16, !tbaa !13
  %2759 = add nuw nsw i64 %2753, 4
  %2760 = add <4 x i32> %2754, <i32 4, i32 4, i32 4, i32 4>
  %2761 = icmp eq i64 %2759, 32000
  br i1 %2761, label %2762, label %2752, !llvm.loop !306

2762:                                             ; preds = %2762, %2752
  %2763 = phi i64 [ %2769, %2762 ], [ 0, %2752 ]
  %2764 = phi <4 x i32> [ %2770, %2762 ], [ <i32 0, i32 1, i32 2, i32 3>, %2752 ]
  %2765 = add <4 x i32> %2764, <i32 1, i32 1, i32 1, i32 1>
  %2766 = sitofp <4 x i32> %2765 to <4 x float>
  %2767 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2766
  %2768 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2763
  store <4 x float> %2767, ptr %2768, align 16, !tbaa !13
  %2769 = add nuw nsw i64 %2763, 4
  %2770 = add <4 x i32> %2764, <i32 4, i32 4, i32 4, i32 4>
  %2771 = icmp eq i64 %2769, 32000
  br i1 %2771, label %3413, label %2762, !llvm.loop !307

2772:                                             ; preds = %2744
  %2773 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.110) #11
  %2774 = icmp eq i32 %2773, 0
  br i1 %2774, label %2775, label %2795

2775:                                             ; preds = %2775, %2772
  %2776 = phi i64 [ %2782, %2775 ], [ 0, %2772 ]
  %2777 = phi <4 x i32> [ %2783, %2775 ], [ <i32 0, i32 1, i32 2, i32 3>, %2772 ]
  %2778 = add <4 x i32> %2777, <i32 1, i32 1, i32 1, i32 1>
  %2779 = sitofp <4 x i32> %2778 to <4 x float>
  %2780 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2779
  %2781 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2776
  store <4 x float> %2780, ptr %2781, align 16, !tbaa !13
  %2782 = add nuw nsw i64 %2776, 4
  %2783 = add <4 x i32> %2777, <i32 4, i32 4, i32 4, i32 4>
  %2784 = icmp eq i64 %2782, 32000
  br i1 %2784, label %2785, label %2775, !llvm.loop !308

2785:                                             ; preds = %2785, %2775
  %2786 = phi i64 [ %2792, %2785 ], [ 0, %2775 ]
  %2787 = phi <4 x i32> [ %2793, %2785 ], [ <i32 0, i32 1, i32 2, i32 3>, %2775 ]
  %2788 = add <4 x i32> %2787, <i32 1, i32 1, i32 1, i32 1>
  %2789 = sitofp <4 x i32> %2788 to <4 x float>
  %2790 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2789
  %2791 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2786
  store <4 x float> %2790, ptr %2791, align 16, !tbaa !13
  %2792 = add nuw nsw i64 %2786, 4
  %2793 = add <4 x i32> %2787, <i32 4, i32 4, i32 4, i32 4>
  %2794 = icmp eq i64 %2792, 32000
  br i1 %2794, label %3413, label %2785, !llvm.loop !309

2795:                                             ; preds = %2772
  %2796 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.111) #11
  %2797 = icmp eq i32 %2796, 0
  br i1 %2797, label %2798, label %2809

2798:                                             ; preds = %2795
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %2799

2799:                                             ; preds = %2799, %2798
  %2800 = phi i64 [ 0, %2798 ], [ %2802, %2799 ]
  %2801 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2800
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2801, align 16, !tbaa !13
  %2802 = add nuw nsw i64 %2800, 4
  %2803 = icmp eq i64 %2802, 32000
  br i1 %2803, label %2804, label %2799, !llvm.loop !310

2804:                                             ; preds = %2804, %2799
  %2805 = phi i64 [ %2807, %2804 ], [ 0, %2799 ]
  %2806 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2805
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %2806, align 16, !tbaa !13
  %2807 = add nuw nsw i64 %2805, 4
  %2808 = icmp eq i64 %2807, 32000
  br i1 %2808, label %3413, label %2804, !llvm.loop !311

2809:                                             ; preds = %2795
  %2810 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.112) #11
  %2811 = icmp eq i32 %2810, 0
  br i1 %2811, label %2812, label %2824

2812:                                             ; preds = %2809
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %2813

2813:                                             ; preds = %2813, %2812
  %2814 = phi i64 [ 0, %2812 ], [ %2821, %2813 ]
  %2815 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %2812 ], [ %2822, %2813 ]
  %2816 = add <4 x i32> %2815, <i32 1, i32 1, i32 1, i32 1>
  %2817 = mul <4 x i32> %2816, %2816
  %2818 = sitofp <4 x i32> %2817 to <4 x float>
  %2819 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2818
  %2820 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2814
  store <4 x float> %2819, ptr %2820, align 16, !tbaa !13
  %2821 = add nuw nsw i64 %2814, 4
  %2822 = add <4 x i32> %2815, <i32 4, i32 4, i32 4, i32 4>
  %2823 = icmp eq i64 %2821, 32000
  br i1 %2823, label %3413, label %2813, !llvm.loop !312

2824:                                             ; preds = %2809
  %2825 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.113) #11
  %2826 = icmp eq i32 %2825, 0
  br i1 %2826, label %2827, label %2862

2827:                                             ; preds = %2827, %2824
  %2828 = phi i64 [ %2830, %2827 ], [ 0, %2824 ]
  %2829 = getelementptr inbounds float, ptr @global_data, i64 %2828
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2829, align 16, !tbaa !13
  %2830 = add nuw nsw i64 %2828, 4
  %2831 = icmp eq i64 %2830, 32000
  br i1 %2831, label %2832, label %2827, !llvm.loop !313

2832:                                             ; preds = %2832, %2827
  %2833 = phi i64 [ %2835, %2832 ], [ 0, %2827 ]
  %2834 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2833
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2834, align 16, !tbaa !13
  %2835 = add nuw nsw i64 %2833, 4
  %2836 = icmp eq i64 %2835, 32000
  br i1 %2836, label %2837, label %2832, !llvm.loop !314

2837:                                             ; preds = %2837, %2832
  %2838 = phi i64 [ %2840, %2837 ], [ 0, %2832 ]
  %2839 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2838
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2839, align 16, !tbaa !13
  %2840 = add nuw nsw i64 %2838, 4
  %2841 = icmp eq i64 %2840, 32000
  br i1 %2841, label %2842, label %2837, !llvm.loop !315

2842:                                             ; preds = %2842, %2837
  %2843 = phi i64 [ %2849, %2842 ], [ 0, %2837 ]
  %2844 = phi <4 x i32> [ %2850, %2842 ], [ <i32 0, i32 1, i32 2, i32 3>, %2837 ]
  %2845 = add <4 x i32> %2844, <i32 1, i32 1, i32 1, i32 1>
  %2846 = sitofp <4 x i32> %2845 to <4 x float>
  %2847 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2846
  %2848 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2843
  store <4 x float> %2847, ptr %2848, align 16, !tbaa !13
  %2849 = add nuw nsw i64 %2843, 4
  %2850 = add <4 x i32> %2844, <i32 4, i32 4, i32 4, i32 4>
  %2851 = icmp eq i64 %2849, 32000
  br i1 %2851, label %2852, label %2842, !llvm.loop !316

2852:                                             ; preds = %2852, %2842
  %2853 = phi i64 [ %2859, %2852 ], [ 0, %2842 ]
  %2854 = phi <4 x i32> [ %2860, %2852 ], [ <i32 0, i32 1, i32 2, i32 3>, %2842 ]
  %2855 = add <4 x i32> %2854, <i32 1, i32 1, i32 1, i32 1>
  %2856 = sitofp <4 x i32> %2855 to <4 x float>
  %2857 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2856
  %2858 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %2853
  store <4 x float> %2857, ptr %2858, align 16, !tbaa !13
  %2859 = add nuw nsw i64 %2853, 4
  %2860 = add <4 x i32> %2854, <i32 4, i32 4, i32 4, i32 4>
  %2861 = icmp eq i64 %2859, 32000
  br i1 %2861, label %3413, label %2852, !llvm.loop !317

2862:                                             ; preds = %2824
  %2863 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.114) #11
  %2864 = icmp eq i32 %2863, 0
  br i1 %2864, label %2865, label %2900

2865:                                             ; preds = %2865, %2862
  %2866 = phi i64 [ %2868, %2865 ], [ 0, %2862 ]
  %2867 = getelementptr inbounds float, ptr @global_data, i64 %2866
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2867, align 16, !tbaa !13
  %2868 = add nuw nsw i64 %2866, 4
  %2869 = icmp eq i64 %2868, 32000
  br i1 %2869, label %2870, label %2865, !llvm.loop !318

2870:                                             ; preds = %2870, %2865
  %2871 = phi i64 [ %2877, %2870 ], [ 0, %2865 ]
  %2872 = phi <4 x i32> [ %2878, %2870 ], [ <i32 0, i32 1, i32 2, i32 3>, %2865 ]
  %2873 = add <4 x i32> %2872, <i32 1, i32 1, i32 1, i32 1>
  %2874 = sitofp <4 x i32> %2873 to <4 x float>
  %2875 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2874
  %2876 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2871
  store <4 x float> %2875, ptr %2876, align 16, !tbaa !13
  %2877 = add nuw nsw i64 %2871, 4
  %2878 = add <4 x i32> %2872, <i32 4, i32 4, i32 4, i32 4>
  %2879 = icmp eq i64 %2877, 32000
  br i1 %2879, label %2880, label %2870, !llvm.loop !319

2880:                                             ; preds = %2880, %2870
  %2881 = phi i64 [ %2887, %2880 ], [ 0, %2870 ]
  %2882 = phi <4 x i32> [ %2888, %2880 ], [ <i32 0, i32 1, i32 2, i32 3>, %2870 ]
  %2883 = add <4 x i32> %2882, <i32 1, i32 1, i32 1, i32 1>
  %2884 = sitofp <4 x i32> %2883 to <4 x float>
  %2885 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2884
  %2886 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2881
  store <4 x float> %2885, ptr %2886, align 16, !tbaa !13
  %2887 = add nuw nsw i64 %2881, 4
  %2888 = add <4 x i32> %2882, <i32 4, i32 4, i32 4, i32 4>
  %2889 = icmp eq i64 %2887, 32000
  br i1 %2889, label %2890, label %2880, !llvm.loop !320

2890:                                             ; preds = %2890, %2880
  %2891 = phi i64 [ %2897, %2890 ], [ 0, %2880 ]
  %2892 = phi <4 x i32> [ %2898, %2890 ], [ <i32 0, i32 1, i32 2, i32 3>, %2880 ]
  %2893 = add <4 x i32> %2892, <i32 1, i32 1, i32 1, i32 1>
  %2894 = sitofp <4 x i32> %2893 to <4 x float>
  %2895 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2894
  %2896 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2891
  store <4 x float> %2895, ptr %2896, align 16, !tbaa !13
  %2897 = add nuw nsw i64 %2891, 4
  %2898 = add <4 x i32> %2892, <i32 4, i32 4, i32 4, i32 4>
  %2899 = icmp eq i64 %2897, 32000
  br i1 %2899, label %3413, label %2890, !llvm.loop !321

2900:                                             ; preds = %2862
  %2901 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.115) #11
  %2902 = icmp eq i32 %2901, 0
  br i1 %2902, label %2903, label %2928

2903:                                             ; preds = %2903, %2900
  %2904 = phi i64 [ %2906, %2903 ], [ 0, %2900 ]
  %2905 = getelementptr inbounds float, ptr @global_data, i64 %2904
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2905, align 16, !tbaa !13
  %2906 = add nuw nsw i64 %2904, 4
  %2907 = icmp eq i64 %2906, 32000
  br i1 %2907, label %2908, label %2903, !llvm.loop !322

2908:                                             ; preds = %2908, %2903
  %2909 = phi i64 [ %2915, %2908 ], [ 0, %2903 ]
  %2910 = phi <4 x i32> [ %2916, %2908 ], [ <i32 0, i32 1, i32 2, i32 3>, %2903 ]
  %2911 = add <4 x i32> %2910, <i32 1, i32 1, i32 1, i32 1>
  %2912 = sitofp <4 x i32> %2911 to <4 x float>
  %2913 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2912
  %2914 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2909
  store <4 x float> %2913, ptr %2914, align 16, !tbaa !13
  %2915 = add nuw nsw i64 %2909, 4
  %2916 = add <4 x i32> %2910, <i32 4, i32 4, i32 4, i32 4>
  %2917 = icmp eq i64 %2915, 32000
  br i1 %2917, label %2918, label %2908, !llvm.loop !323

2918:                                             ; preds = %2918, %2908
  %2919 = phi i64 [ %2925, %2918 ], [ 0, %2908 ]
  %2920 = phi <4 x i32> [ %2926, %2918 ], [ <i32 0, i32 1, i32 2, i32 3>, %2908 ]
  %2921 = add <4 x i32> %2920, <i32 1, i32 1, i32 1, i32 1>
  %2922 = sitofp <4 x i32> %2921 to <4 x float>
  %2923 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2922
  %2924 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2919
  store <4 x float> %2923, ptr %2924, align 16, !tbaa !13
  %2925 = add nuw nsw i64 %2919, 4
  %2926 = add <4 x i32> %2920, <i32 4, i32 4, i32 4, i32 4>
  %2927 = icmp eq i64 %2925, 32000
  br i1 %2927, label %3413, label %2918, !llvm.loop !324

2928:                                             ; preds = %2900
  %2929 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.116) #11
  %2930 = icmp eq i32 %2929, 0
  br i1 %2930, label %2931, label %2957

2931:                                             ; preds = %2928
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %2932

2932:                                             ; preds = %2932, %2931
  %2933 = phi i64 [ 0, %2931 ], [ %2935, %2932 ]
  %2934 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2933
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2934, align 16, !tbaa !13
  %2935 = add nuw nsw i64 %2933, 4
  %2936 = icmp eq i64 %2935, 32000
  br i1 %2936, label %2937, label %2932, !llvm.loop !325

2937:                                             ; preds = %2937, %2932
  %2938 = phi i64 [ %2944, %2937 ], [ 0, %2932 ]
  %2939 = phi <4 x i32> [ %2945, %2937 ], [ <i32 0, i32 1, i32 2, i32 3>, %2932 ]
  %2940 = add <4 x i32> %2939, <i32 1, i32 1, i32 1, i32 1>
  %2941 = sitofp <4 x i32> %2940 to <4 x float>
  %2942 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2941
  %2943 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2938
  store <4 x float> %2942, ptr %2943, align 16, !tbaa !13
  %2944 = add nuw nsw i64 %2938, 4
  %2945 = add <4 x i32> %2939, <i32 4, i32 4, i32 4, i32 4>
  %2946 = icmp eq i64 %2944, 32000
  br i1 %2946, label %2947, label %2937, !llvm.loop !326

2947:                                             ; preds = %2947, %2937
  %2948 = phi i64 [ %2954, %2947 ], [ 0, %2937 ]
  %2949 = phi <4 x i32> [ %2955, %2947 ], [ <i32 0, i32 1, i32 2, i32 3>, %2937 ]
  %2950 = add <4 x i32> %2949, <i32 1, i32 1, i32 1, i32 1>
  %2951 = sitofp <4 x i32> %2950 to <4 x float>
  %2952 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2951
  %2953 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2948
  store <4 x float> %2952, ptr %2953, align 16, !tbaa !13
  %2954 = add nuw nsw i64 %2948, 4
  %2955 = add <4 x i32> %2949, <i32 4, i32 4, i32 4, i32 4>
  %2956 = icmp eq i64 %2954, 32000
  br i1 %2956, label %3413, label %2947, !llvm.loop !327

2957:                                             ; preds = %2928
  %2958 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.117) #11
  %2959 = icmp eq i32 %2958, 0
  br i1 %2959, label %2960, label %2975

2960:                                             ; preds = %2960, %2957
  %2961 = phi i64 [ %2963, %2960 ], [ 0, %2957 ]
  %2962 = getelementptr inbounds float, ptr @global_data, i64 %2961
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2962, align 16, !tbaa !13
  %2963 = add nuw nsw i64 %2961, 4
  %2964 = icmp eq i64 %2963, 32000
  br i1 %2964, label %2965, label %2960, !llvm.loop !328

2965:                                             ; preds = %2965, %2960
  %2966 = phi i64 [ %2972, %2965 ], [ 0, %2960 ]
  %2967 = phi <4 x i32> [ %2973, %2965 ], [ <i32 0, i32 1, i32 2, i32 3>, %2960 ]
  %2968 = add <4 x i32> %2967, <i32 1, i32 1, i32 1, i32 1>
  %2969 = sitofp <4 x i32> %2968 to <4 x float>
  %2970 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2969
  %2971 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2966
  store <4 x float> %2970, ptr %2971, align 16, !tbaa !13
  %2972 = add nuw nsw i64 %2966, 4
  %2973 = add <4 x i32> %2967, <i32 4, i32 4, i32 4, i32 4>
  %2974 = icmp eq i64 %2972, 32000
  br i1 %2974, label %3413, label %2965, !llvm.loop !329

2975:                                             ; preds = %2957
  %2976 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.118) #11
  %2977 = icmp eq i32 %2976, 0
  br i1 %2977, label %2978, label %2995

2978:                                             ; preds = %2975
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %2979

2979:                                             ; preds = %2979, %2978
  %2980 = phi i64 [ 0, %2978 ], [ %2982, %2979 ]
  %2981 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2980
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2981, align 16, !tbaa !13
  %2982 = add nuw nsw i64 %2980, 4
  %2983 = icmp eq i64 %2982, 32000
  br i1 %2983, label %2984, label %2979, !llvm.loop !330

2984:                                             ; preds = %2984, %2979
  %2985 = phi i64 [ %2992, %2984 ], [ 0, %2979 ]
  %2986 = phi <4 x i32> [ %2993, %2984 ], [ <i32 0, i32 1, i32 2, i32 3>, %2979 ]
  %2987 = add <4 x i32> %2986, <i32 1, i32 1, i32 1, i32 1>
  %2988 = mul <4 x i32> %2987, %2987
  %2989 = sitofp <4 x i32> %2988 to <4 x float>
  %2990 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2989
  %2991 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2985
  store <4 x float> %2990, ptr %2991, align 16, !tbaa !13
  %2992 = add nuw nsw i64 %2985, 4
  %2993 = add <4 x i32> %2986, <i32 4, i32 4, i32 4, i32 4>
  %2994 = icmp eq i64 %2992, 32000
  br i1 %2994, label %3413, label %2984, !llvm.loop !331

2995:                                             ; preds = %2975
  %2996 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.119) #11
  %2997 = icmp eq i32 %2996, 0
  br i1 %2997, label %2998, label %3024

2998:                                             ; preds = %2995
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %2999

2999:                                             ; preds = %2999, %2998
  %3000 = phi i64 [ 0, %2998 ], [ %3002, %2999 ]
  %3001 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3000
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3001, align 16, !tbaa !13
  %3002 = add nuw nsw i64 %3000, 4
  %3003 = icmp eq i64 %3002, 32000
  br i1 %3003, label %3004, label %2999, !llvm.loop !332

3004:                                             ; preds = %3004, %2999
  %3005 = phi i64 [ %3011, %3004 ], [ 0, %2999 ]
  %3006 = phi <4 x i32> [ %3012, %3004 ], [ <i32 0, i32 1, i32 2, i32 3>, %2999 ]
  %3007 = add <4 x i32> %3006, <i32 1, i32 1, i32 1, i32 1>
  %3008 = sitofp <4 x i32> %3007 to <4 x float>
  %3009 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3008
  %3010 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3005
  store <4 x float> %3009, ptr %3010, align 16, !tbaa !13
  %3011 = add nuw nsw i64 %3005, 4
  %3012 = add <4 x i32> %3006, <i32 4, i32 4, i32 4, i32 4>
  %3013 = icmp eq i64 %3011, 32000
  br i1 %3013, label %3014, label %3004, !llvm.loop !333

3014:                                             ; preds = %3014, %3004
  %3015 = phi i64 [ %3021, %3014 ], [ 0, %3004 ]
  %3016 = phi <4 x i32> [ %3022, %3014 ], [ <i32 0, i32 1, i32 2, i32 3>, %3004 ]
  %3017 = add <4 x i32> %3016, <i32 1, i32 1, i32 1, i32 1>
  %3018 = sitofp <4 x i32> %3017 to <4 x float>
  %3019 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3018
  %3020 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %3015
  store <4 x float> %3019, ptr %3020, align 16, !tbaa !13
  %3021 = add nuw nsw i64 %3015, 4
  %3022 = add <4 x i32> %3016, <i32 4, i32 4, i32 4, i32 4>
  %3023 = icmp eq i64 %3021, 32000
  br i1 %3023, label %3413, label %3014, !llvm.loop !334

3024:                                             ; preds = %2995
  %3025 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.120) #11
  %3026 = icmp eq i32 %3025, 0
  br i1 %3026, label %3027, label %3047

3027:                                             ; preds = %3027, %3024
  %3028 = phi i64 [ %3034, %3027 ], [ 0, %3024 ]
  %3029 = phi <4 x i32> [ %3035, %3027 ], [ <i32 0, i32 1, i32 2, i32 3>, %3024 ]
  %3030 = add <4 x i32> %3029, <i32 1, i32 1, i32 1, i32 1>
  %3031 = sitofp <4 x i32> %3030 to <4 x float>
  %3032 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3031
  %3033 = getelementptr inbounds float, ptr @global_data, i64 %3028
  store <4 x float> %3032, ptr %3033, align 16, !tbaa !13
  %3034 = add nuw nsw i64 %3028, 4
  %3035 = add <4 x i32> %3029, <i32 4, i32 4, i32 4, i32 4>
  %3036 = icmp eq i64 %3034, 32000
  br i1 %3036, label %3037, label %3027, !llvm.loop !335

3037:                                             ; preds = %3037, %3027
  %3038 = phi i64 [ %3044, %3037 ], [ 0, %3027 ]
  %3039 = phi <4 x i32> [ %3045, %3037 ], [ <i32 0, i32 1, i32 2, i32 3>, %3027 ]
  %3040 = add <4 x i32> %3039, <i32 1, i32 1, i32 1, i32 1>
  %3041 = sitofp <4 x i32> %3040 to <4 x float>
  %3042 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3041
  %3043 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3038
  store <4 x float> %3042, ptr %3043, align 16, !tbaa !13
  %3044 = add nuw nsw i64 %3038, 4
  %3045 = add <4 x i32> %3039, <i32 4, i32 4, i32 4, i32 4>
  %3046 = icmp eq i64 %3044, 32000
  br i1 %3046, label %3413, label %3037, !llvm.loop !336

3047:                                             ; preds = %3024
  %3048 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.121) #11
  %3049 = icmp eq i32 %3048, 0
  br i1 %3049, label %3050, label %3075

3050:                                             ; preds = %3050, %3047
  %3051 = phi i64 [ %3057, %3050 ], [ 0, %3047 ]
  %3052 = phi <4 x i32> [ %3058, %3050 ], [ <i32 0, i32 1, i32 2, i32 3>, %3047 ]
  %3053 = add <4 x i32> %3052, <i32 1, i32 1, i32 1, i32 1>
  %3054 = sitofp <4 x i32> %3053 to <4 x float>
  %3055 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3054
  %3056 = getelementptr inbounds float, ptr @global_data, i64 %3051
  store <4 x float> %3055, ptr %3056, align 16, !tbaa !13
  %3057 = add nuw nsw i64 %3051, 4
  %3058 = add <4 x i32> %3052, <i32 4, i32 4, i32 4, i32 4>
  %3059 = icmp eq i64 %3057, 32000
  br i1 %3059, label %3060, label %3050, !llvm.loop !337

3060:                                             ; preds = %3073, %3050
  %3061 = phi i64 [ %3062, %3073 ], [ 0, %3050 ]
  %3062 = add nuw nsw i64 %3061, 1
  %3063 = trunc i64 %3062 to i32
  %3064 = sitofp i32 %3063 to float
  %3065 = fdiv float 1.000000e+00, %3064
  %3066 = insertelement <4 x float> poison, float %3065, i64 0
  %3067 = shufflevector <4 x float> %3066, <4 x float> poison, <4 x i32> zeroinitializer
  br label %3068

3068:                                             ; preds = %3068, %3060
  %3069 = phi i64 [ 0, %3060 ], [ %3071, %3068 ]
  %3070 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %3061, i64 %3069
  store <4 x float> %3067, ptr %3070, align 16, !tbaa !13
  %3071 = add nuw nsw i64 %3069, 4
  %3072 = icmp eq i64 %3071, 256
  br i1 %3072, label %3073, label %3068, !llvm.loop !338

3073:                                             ; preds = %3068
  %3074 = icmp eq i64 %3062, 256
  br i1 %3074, label %3413, label %3060

3075:                                             ; preds = %3047
  %3076 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.122) #11
  %3077 = icmp eq i32 %3076, 0
  br i1 %3077, label %3078, label %3104

3078:                                             ; preds = %3075
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %3079

3079:                                             ; preds = %3079, %3078
  %3080 = phi i64 [ 0, %3078 ], [ %3082, %3079 ]
  %3081 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3080
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3081, align 16, !tbaa !13
  %3082 = add nuw nsw i64 %3080, 4
  %3083 = icmp eq i64 %3082, 32000
  br i1 %3083, label %3084, label %3079, !llvm.loop !339

3084:                                             ; preds = %3084, %3079
  %3085 = phi i64 [ %3091, %3084 ], [ 0, %3079 ]
  %3086 = phi <4 x i32> [ %3092, %3084 ], [ <i32 0, i32 1, i32 2, i32 3>, %3079 ]
  %3087 = add <4 x i32> %3086, <i32 1, i32 1, i32 1, i32 1>
  %3088 = sitofp <4 x i32> %3087 to <4 x float>
  %3089 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3088
  %3090 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3085
  store <4 x float> %3089, ptr %3090, align 16, !tbaa !13
  %3091 = add nuw nsw i64 %3085, 4
  %3092 = add <4 x i32> %3086, <i32 4, i32 4, i32 4, i32 4>
  %3093 = icmp eq i64 %3091, 32000
  br i1 %3093, label %3094, label %3084, !llvm.loop !340

3094:                                             ; preds = %3094, %3084
  %3095 = phi i64 [ %3101, %3094 ], [ 0, %3084 ]
  %3096 = phi <4 x i32> [ %3102, %3094 ], [ <i32 0, i32 1, i32 2, i32 3>, %3084 ]
  %3097 = add <4 x i32> %3096, <i32 1, i32 1, i32 1, i32 1>
  %3098 = sitofp <4 x i32> %3097 to <4 x float>
  %3099 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3098
  %3100 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %3095
  store <4 x float> %3099, ptr %3100, align 16, !tbaa !13
  %3101 = add nuw nsw i64 %3095, 4
  %3102 = add <4 x i32> %3096, <i32 4, i32 4, i32 4, i32 4>
  %3103 = icmp eq i64 %3101, 32000
  br i1 %3103, label %3413, label %3094, !llvm.loop !341

3104:                                             ; preds = %3075
  %3105 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.123) #11
  %3106 = icmp eq i32 %3105, 0
  br i1 %3106, label %3107, label %3132

3107:                                             ; preds = %3107, %3104
  %3108 = phi i64 [ %3110, %3107 ], [ 0, %3104 ]
  %3109 = getelementptr inbounds float, ptr @global_data, i64 %3108
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3109, align 16, !tbaa !13
  %3110 = add nuw nsw i64 %3108, 4
  %3111 = icmp eq i64 %3110, 32000
  br i1 %3111, label %3112, label %3107, !llvm.loop !342

3112:                                             ; preds = %3112, %3107
  %3113 = phi i64 [ %3119, %3112 ], [ 0, %3107 ]
  %3114 = phi <4 x i32> [ %3120, %3112 ], [ <i32 0, i32 1, i32 2, i32 3>, %3107 ]
  %3115 = add <4 x i32> %3114, <i32 1, i32 1, i32 1, i32 1>
  %3116 = sitofp <4 x i32> %3115 to <4 x float>
  %3117 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3116
  %3118 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3113
  store <4 x float> %3117, ptr %3118, align 16, !tbaa !13
  %3119 = add nuw nsw i64 %3113, 4
  %3120 = add <4 x i32> %3114, <i32 4, i32 4, i32 4, i32 4>
  %3121 = icmp eq i64 %3119, 32000
  br i1 %3121, label %3122, label %3112, !llvm.loop !343

3122:                                             ; preds = %3122, %3112
  %3123 = phi i64 [ %3129, %3122 ], [ 0, %3112 ]
  %3124 = phi <4 x i32> [ %3130, %3122 ], [ <i32 0, i32 1, i32 2, i32 3>, %3112 ]
  %3125 = add <4 x i32> %3124, <i32 1, i32 1, i32 1, i32 1>
  %3126 = sitofp <4 x i32> %3125 to <4 x float>
  %3127 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3126
  %3128 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3123
  store <4 x float> %3127, ptr %3128, align 16, !tbaa !13
  %3129 = add nuw nsw i64 %3123, 4
  %3130 = add <4 x i32> %3124, <i32 4, i32 4, i32 4, i32 4>
  %3131 = icmp eq i64 %3129, 32000
  br i1 %3131, label %3413, label %3122, !llvm.loop !344

3132:                                             ; preds = %3104
  %3133 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.124) #11
  %3134 = icmp eq i32 %3133, 0
  br i1 %3134, label %3135, label %3147

3135:                                             ; preds = %3132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %3136

3136:                                             ; preds = %3136, %3135
  %3137 = phi i64 [ 0, %3135 ], [ %3144, %3136 ]
  %3138 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %3135 ], [ %3145, %3136 ]
  %3139 = add <4 x i32> %3138, <i32 1, i32 1, i32 1, i32 1>
  %3140 = mul <4 x i32> %3139, %3139
  %3141 = sitofp <4 x i32> %3140 to <4 x float>
  %3142 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3141
  %3143 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3137
  store <4 x float> %3142, ptr %3143, align 16, !tbaa !13
  %3144 = add nuw nsw i64 %3137, 4
  %3145 = add <4 x i32> %3138, <i32 4, i32 4, i32 4, i32 4>
  %3146 = icmp eq i64 %3144, 32000
  br i1 %3146, label %3413, label %3136, !llvm.loop !345

3147:                                             ; preds = %3132
  %3148 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.125) #11
  %3149 = icmp eq i32 %3148, 0
  br i1 %3149, label %3150, label %3162

3150:                                             ; preds = %3147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %3151

3151:                                             ; preds = %3151, %3150
  %3152 = phi i64 [ 0, %3150 ], [ %3159, %3151 ]
  %3153 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %3150 ], [ %3160, %3151 ]
  %3154 = add <4 x i32> %3153, <i32 1, i32 1, i32 1, i32 1>
  %3155 = mul <4 x i32> %3154, %3154
  %3156 = sitofp <4 x i32> %3155 to <4 x float>
  %3157 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3156
  %3158 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3152
  store <4 x float> %3157, ptr %3158, align 16, !tbaa !13
  %3159 = add nuw nsw i64 %3152, 4
  %3160 = add <4 x i32> %3153, <i32 4, i32 4, i32 4, i32 4>
  %3161 = icmp eq i64 %3159, 32000
  br i1 %3161, label %3413, label %3151, !llvm.loop !346

3162:                                             ; preds = %3147
  %3163 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.126) #11
  %3164 = icmp eq i32 %3163, 0
  br i1 %3164, label %3165, label %3177

3165:                                             ; preds = %3162
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %3166

3166:                                             ; preds = %3166, %3165
  %3167 = phi i64 [ 0, %3165 ], [ %3174, %3166 ]
  %3168 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %3165 ], [ %3175, %3166 ]
  %3169 = add <4 x i32> %3168, <i32 1, i32 1, i32 1, i32 1>
  %3170 = mul <4 x i32> %3169, %3169
  %3171 = sitofp <4 x i32> %3170 to <4 x float>
  %3172 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3171
  %3173 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3167
  store <4 x float> %3172, ptr %3173, align 16, !tbaa !13
  %3174 = add nuw nsw i64 %3167, 4
  %3175 = add <4 x i32> %3168, <i32 4, i32 4, i32 4, i32 4>
  %3176 = icmp eq i64 %3174, 32000
  br i1 %3176, label %3413, label %3166, !llvm.loop !347

3177:                                             ; preds = %3162
  %3178 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.127) #11
  %3179 = icmp eq i32 %3178, 0
  br i1 %3179, label %3180, label %3192

3180:                                             ; preds = %3177
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %3181

3181:                                             ; preds = %3181, %3180
  %3182 = phi i64 [ 0, %3180 ], [ %3189, %3181 ]
  %3183 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %3180 ], [ %3190, %3181 ]
  %3184 = add <4 x i32> %3183, <i32 1, i32 1, i32 1, i32 1>
  %3185 = mul <4 x i32> %3184, %3184
  %3186 = sitofp <4 x i32> %3185 to <4 x float>
  %3187 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3186
  %3188 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3182
  store <4 x float> %3187, ptr %3188, align 16, !tbaa !13
  %3189 = add nuw nsw i64 %3182, 4
  %3190 = add <4 x i32> %3183, <i32 4, i32 4, i32 4, i32 4>
  %3191 = icmp eq i64 %3189, 32000
  br i1 %3191, label %3413, label %3181, !llvm.loop !348

3192:                                             ; preds = %3177
  %3193 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.128) #11
  %3194 = icmp eq i32 %3193, 0
  br i1 %3194, label %3195, label %3207

3195:                                             ; preds = %3192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %3196

3196:                                             ; preds = %3196, %3195
  %3197 = phi i64 [ 0, %3195 ], [ %3204, %3196 ]
  %3198 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %3195 ], [ %3205, %3196 ]
  %3199 = add <4 x i32> %3198, <i32 1, i32 1, i32 1, i32 1>
  %3200 = mul <4 x i32> %3199, %3199
  %3201 = sitofp <4 x i32> %3200 to <4 x float>
  %3202 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3201
  %3203 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3197
  store <4 x float> %3202, ptr %3203, align 16, !tbaa !13
  %3204 = add nuw nsw i64 %3197, 4
  %3205 = add <4 x i32> %3198, <i32 4, i32 4, i32 4, i32 4>
  %3206 = icmp eq i64 %3204, 32000
  br i1 %3206, label %3413, label %3196, !llvm.loop !349

3207:                                             ; preds = %3192
  %3208 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.129) #11
  %3209 = icmp eq i32 %3208, 0
  br i1 %3209, label %3210, label %3220

3210:                                             ; preds = %3210, %3207
  %3211 = phi i64 [ %3213, %3210 ], [ 0, %3207 ]
  %3212 = getelementptr inbounds float, ptr @global_data, i64 %3211
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3212, align 16, !tbaa !13
  %3213 = add nuw nsw i64 %3211, 4
  %3214 = icmp eq i64 %3213, 32000
  br i1 %3214, label %3215, label %3210, !llvm.loop !350

3215:                                             ; preds = %3215, %3210
  %3216 = phi i64 [ %3218, %3215 ], [ 0, %3210 ]
  %3217 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3216
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3217, align 16, !tbaa !13
  %3218 = add nuw nsw i64 %3216, 4
  %3219 = icmp eq i64 %3218, 32000
  br i1 %3219, label %3413, label %3215, !llvm.loop !351

3220:                                             ; preds = %3207
  %3221 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.130) #11
  %3222 = icmp eq i32 %3221, 0
  br i1 %3222, label %3223, label %3248

3223:                                             ; preds = %3223, %3220
  %3224 = phi i64 [ %3226, %3223 ], [ 0, %3220 ]
  %3225 = getelementptr inbounds float, ptr @global_data, i64 %3224
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3225, align 16, !tbaa !13
  %3226 = add nuw nsw i64 %3224, 4
  %3227 = icmp eq i64 %3226, 32000
  br i1 %3227, label %3228, label %3223, !llvm.loop !352

3228:                                             ; preds = %3228, %3223
  %3229 = phi i64 [ %3235, %3228 ], [ 0, %3223 ]
  %3230 = phi <4 x i32> [ %3236, %3228 ], [ <i32 0, i32 1, i32 2, i32 3>, %3223 ]
  %3231 = add <4 x i32> %3230, <i32 1, i32 1, i32 1, i32 1>
  %3232 = sitofp <4 x i32> %3231 to <4 x float>
  %3233 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3232
  %3234 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3229
  store <4 x float> %3233, ptr %3234, align 16, !tbaa !13
  %3235 = add nuw nsw i64 %3229, 4
  %3236 = add <4 x i32> %3230, <i32 4, i32 4, i32 4, i32 4>
  %3237 = icmp eq i64 %3235, 32000
  br i1 %3237, label %3238, label %3228, !llvm.loop !353

3238:                                             ; preds = %3238, %3228
  %3239 = phi i64 [ %3245, %3238 ], [ 0, %3228 ]
  %3240 = phi <4 x i32> [ %3246, %3238 ], [ <i32 0, i32 1, i32 2, i32 3>, %3228 ]
  %3241 = add <4 x i32> %3240, <i32 1, i32 1, i32 1, i32 1>
  %3242 = sitofp <4 x i32> %3241 to <4 x float>
  %3243 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3242
  %3244 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3239
  store <4 x float> %3243, ptr %3244, align 16, !tbaa !13
  %3245 = add nuw nsw i64 %3239, 4
  %3246 = add <4 x i32> %3240, <i32 4, i32 4, i32 4, i32 4>
  %3247 = icmp eq i64 %3245, 32000
  br i1 %3247, label %3413, label %3238, !llvm.loop !354

3248:                                             ; preds = %3220
  %3249 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.131) #11
  %3250 = icmp eq i32 %3249, 0
  br i1 %3250, label %3251, label %3267

3251:                                             ; preds = %3251, %3248
  %3252 = phi i64 [ %3254, %3251 ], [ 0, %3248 ]
  %3253 = getelementptr inbounds float, ptr @global_data, i64 %3252
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3253, align 16, !tbaa !13
  %3254 = add nuw nsw i64 %3252, 4
  %3255 = icmp eq i64 %3254, 32000
  br i1 %3255, label %3256, label %3251, !llvm.loop !355

3256:                                             ; preds = %3256, %3251
  %3257 = phi i64 [ %3264, %3256 ], [ 0, %3251 ]
  %3258 = phi <4 x i32> [ %3265, %3256 ], [ <i32 0, i32 1, i32 2, i32 3>, %3251 ]
  %3259 = add <4 x i32> %3258, <i32 1, i32 1, i32 1, i32 1>
  %3260 = mul <4 x i32> %3259, %3259
  %3261 = sitofp <4 x i32> %3260 to <4 x float>
  %3262 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3261
  %3263 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3257
  store <4 x float> %3262, ptr %3263, align 16, !tbaa !13
  %3264 = add nuw nsw i64 %3257, 4
  %3265 = add <4 x i32> %3258, <i32 4, i32 4, i32 4, i32 4>
  %3266 = icmp eq i64 %3264, 32000
  br i1 %3266, label %3413, label %3256, !llvm.loop !356

3267:                                             ; preds = %3248
  %3268 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.132) #11
  %3269 = icmp eq i32 %3268, 0
  br i1 %3269, label %3270, label %3291

3270:                                             ; preds = %3270, %3267
  %3271 = phi i64 [ %3278, %3270 ], [ 0, %3267 ]
  %3272 = phi <4 x i32> [ %3279, %3270 ], [ <i32 0, i32 1, i32 2, i32 3>, %3267 ]
  %3273 = add <4 x i32> %3272, <i32 1, i32 1, i32 1, i32 1>
  %3274 = mul <4 x i32> %3273, %3273
  %3275 = sitofp <4 x i32> %3274 to <4 x float>
  %3276 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3275
  %3277 = getelementptr inbounds float, ptr @global_data, i64 %3271
  store <4 x float> %3276, ptr %3277, align 16, !tbaa !13
  %3278 = add nuw nsw i64 %3271, 4
  %3279 = add <4 x i32> %3272, <i32 4, i32 4, i32 4, i32 4>
  %3280 = icmp eq i64 %3278, 32000
  br i1 %3280, label %3281, label %3270, !llvm.loop !357

3281:                                             ; preds = %3281, %3270
  %3282 = phi i64 [ %3284, %3281 ], [ 0, %3270 ]
  %3283 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3282
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3283, align 16, !tbaa !13
  %3284 = add nuw nsw i64 %3282, 4
  %3285 = icmp eq i64 %3284, 32000
  br i1 %3285, label %3286, label %3281, !llvm.loop !358

3286:                                             ; preds = %3286, %3281
  %3287 = phi i64 [ %3289, %3286 ], [ 0, %3281 ]
  %3288 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3287
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, ptr %3288, align 16, !tbaa !13
  %3289 = add nuw nsw i64 %3287, 4
  %3290 = icmp eq i64 %3289, 32000
  br i1 %3290, label %3413, label %3286, !llvm.loop !359

3291:                                             ; preds = %3267
  %3292 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.133) #11
  %3293 = icmp eq i32 %3292, 0
  br i1 %3293, label %3294, label %3309

3294:                                             ; preds = %3294, %3291
  %3295 = phi i64 [ %3297, %3294 ], [ 0, %3291 ]
  %3296 = getelementptr inbounds float, ptr @global_data, i64 %3295
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3296, align 16, !tbaa !13
  %3297 = add nuw nsw i64 %3295, 4
  %3298 = icmp eq i64 %3297, 32000
  br i1 %3298, label %3299, label %3294, !llvm.loop !360

3299:                                             ; preds = %3299, %3294
  %3300 = phi i64 [ %3302, %3299 ], [ 0, %3294 ]
  %3301 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3300
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, ptr %3301, align 16, !tbaa !13
  %3302 = add nuw nsw i64 %3300, 4
  %3303 = icmp eq i64 %3302, 32000
  br i1 %3303, label %3304, label %3299, !llvm.loop !361

3304:                                             ; preds = %3304, %3299
  %3305 = phi i64 [ %3307, %3304 ], [ 0, %3299 ]
  %3306 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3305
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, ptr %3306, align 16, !tbaa !13
  %3307 = add nuw nsw i64 %3305, 4
  %3308 = icmp eq i64 %3307, 32000
  br i1 %3308, label %3413, label %3304, !llvm.loop !362

3309:                                             ; preds = %3291
  %3310 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.134) #11
  %3311 = icmp eq i32 %3310, 0
  br i1 %3311, label %3312, label %3322

3312:                                             ; preds = %3312, %3309
  %3313 = phi i64 [ %3319, %3312 ], [ 0, %3309 ]
  %3314 = phi <4 x i32> [ %3320, %3312 ], [ <i32 0, i32 1, i32 2, i32 3>, %3309 ]
  %3315 = add <4 x i32> %3314, <i32 1, i32 1, i32 1, i32 1>
  %3316 = sitofp <4 x i32> %3315 to <4 x float>
  %3317 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3316
  %3318 = getelementptr inbounds float, ptr @global_data, i64 %3313
  store <4 x float> %3317, ptr %3318, align 16, !tbaa !13
  %3319 = add nuw nsw i64 %3313, 4
  %3320 = add <4 x i32> %3314, <i32 4, i32 4, i32 4, i32 4>
  %3321 = icmp eq i64 %3319, 32000
  br i1 %3321, label %3413, label %3312, !llvm.loop !363

3322:                                             ; preds = %3309
  %3323 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.135) #11
  %3324 = icmp eq i32 %3323, 0
  br i1 %3324, label %3325, label %3345

3325:                                             ; preds = %3325, %3322
  %3326 = phi i64 [ %3332, %3325 ], [ 0, %3322 ]
  %3327 = phi <4 x i32> [ %3333, %3325 ], [ <i32 0, i32 1, i32 2, i32 3>, %3322 ]
  %3328 = add <4 x i32> %3327, <i32 1, i32 1, i32 1, i32 1>
  %3329 = sitofp <4 x i32> %3328 to <4 x float>
  %3330 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3329
  %3331 = getelementptr inbounds float, ptr @global_data, i64 %3326
  store <4 x float> %3330, ptr %3331, align 16, !tbaa !13
  %3332 = add nuw nsw i64 %3326, 4
  %3333 = add <4 x i32> %3327, <i32 4, i32 4, i32 4, i32 4>
  %3334 = icmp eq i64 %3332, 32000
  br i1 %3334, label %3335, label %3325, !llvm.loop !364

3335:                                             ; preds = %3335, %3325
  %3336 = phi i64 [ %3342, %3335 ], [ 0, %3325 ]
  %3337 = phi <4 x i32> [ %3343, %3335 ], [ <i32 0, i32 1, i32 2, i32 3>, %3325 ]
  %3338 = add <4 x i32> %3337, <i32 1, i32 1, i32 1, i32 1>
  %3339 = sitofp <4 x i32> %3338 to <4 x float>
  %3340 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3339
  %3341 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3336
  store <4 x float> %3340, ptr %3341, align 16, !tbaa !13
  %3342 = add nuw nsw i64 %3336, 4
  %3343 = add <4 x i32> %3337, <i32 4, i32 4, i32 4, i32 4>
  %3344 = icmp eq i64 %3342, 32000
  br i1 %3344, label %3413, label %3335, !llvm.loop !365

3345:                                             ; preds = %3322
  %3346 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.136) #11
  %3347 = icmp eq i32 %3346, 0
  br i1 %3347, label %3348, label %3413

3348:                                             ; preds = %3348, %3345
  %3349 = phi i64 [ %3355, %3348 ], [ 0, %3345 ]
  %3350 = phi <4 x i32> [ %3356, %3348 ], [ <i32 0, i32 1, i32 2, i32 3>, %3345 ]
  %3351 = add <4 x i32> %3350, <i32 1, i32 1, i32 1, i32 1>
  %3352 = sitofp <4 x i32> %3351 to <4 x float>
  %3353 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3352
  %3354 = getelementptr inbounds float, ptr @global_data, i64 %3349
  store <4 x float> %3353, ptr %3354, align 16, !tbaa !13
  %3355 = add nuw nsw i64 %3349, 4
  %3356 = add <4 x i32> %3350, <i32 4, i32 4, i32 4, i32 4>
  %3357 = icmp eq i64 %3355, 32000
  br i1 %3357, label %3358, label %3348, !llvm.loop !366

3358:                                             ; preds = %3358, %3348
  %3359 = phi i64 [ %3365, %3358 ], [ 0, %3348 ]
  %3360 = phi <4 x i32> [ %3366, %3358 ], [ <i32 0, i32 1, i32 2, i32 3>, %3348 ]
  %3361 = add <4 x i32> %3360, <i32 1, i32 1, i32 1, i32 1>
  %3362 = sitofp <4 x i32> %3361 to <4 x float>
  %3363 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3362
  %3364 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3359
  store <4 x float> %3363, ptr %3364, align 16, !tbaa !13
  %3365 = add nuw nsw i64 %3359, 4
  %3366 = add <4 x i32> %3360, <i32 4, i32 4, i32 4, i32 4>
  %3367 = icmp eq i64 %3365, 32000
  br i1 %3367, label %3368, label %3358, !llvm.loop !367

3368:                                             ; preds = %3368, %3358
  %3369 = phi i64 [ %3375, %3368 ], [ 0, %3358 ]
  %3370 = phi <4 x i32> [ %3376, %3368 ], [ <i32 0, i32 1, i32 2, i32 3>, %3358 ]
  %3371 = add <4 x i32> %3370, <i32 1, i32 1, i32 1, i32 1>
  %3372 = sitofp <4 x i32> %3371 to <4 x float>
  %3373 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3372
  %3374 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3369
  store <4 x float> %3373, ptr %3374, align 16, !tbaa !13
  %3375 = add nuw nsw i64 %3369, 4
  %3376 = add <4 x i32> %3370, <i32 4, i32 4, i32 4, i32 4>
  %3377 = icmp eq i64 %3375, 32000
  br i1 %3377, label %3378, label %3368, !llvm.loop !368

3378:                                             ; preds = %3378, %3368
  %3379 = phi i64 [ %3385, %3378 ], [ 0, %3368 ]
  %3380 = phi <4 x i32> [ %3386, %3378 ], [ <i32 0, i32 1, i32 2, i32 3>, %3368 ]
  %3381 = add <4 x i32> %3380, <i32 1, i32 1, i32 1, i32 1>
  %3382 = sitofp <4 x i32> %3381 to <4 x float>
  %3383 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3382
  %3384 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %3379
  store <4 x float> %3383, ptr %3384, align 16, !tbaa !13
  %3385 = add nuw nsw i64 %3379, 4
  %3386 = add <4 x i32> %3380, <i32 4, i32 4, i32 4, i32 4>
  %3387 = icmp eq i64 %3385, 32000
  br i1 %3387, label %3388, label %3378, !llvm.loop !369

3388:                                             ; preds = %3388, %3378
  %3389 = phi i64 [ %3395, %3388 ], [ 0, %3378 ]
  %3390 = phi <4 x i32> [ %3396, %3388 ], [ <i32 0, i32 1, i32 2, i32 3>, %3378 ]
  %3391 = add <4 x i32> %3390, <i32 1, i32 1, i32 1, i32 1>
  %3392 = sitofp <4 x i32> %3391 to <4 x float>
  %3393 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3392
  %3394 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %3389
  store <4 x float> %3393, ptr %3394, align 16, !tbaa !13
  %3395 = add nuw nsw i64 %3389, 4
  %3396 = add <4 x i32> %3390, <i32 4, i32 4, i32 4, i32 4>
  %3397 = icmp eq i64 %3395, 32000
  br i1 %3397, label %3398, label %3388, !llvm.loop !370

3398:                                             ; preds = %3411, %3388
  %3399 = phi i64 [ %3400, %3411 ], [ 0, %3388 ]
  %3400 = add nuw nsw i64 %3399, 1
  %3401 = trunc i64 %3400 to i32
  %3402 = sitofp i32 %3401 to float
  %3403 = fdiv float 1.000000e+00, %3402
  %3404 = insertelement <4 x float> poison, float %3403, i64 0
  %3405 = shufflevector <4 x float> %3404, <4 x float> poison, <4 x i32> zeroinitializer
  br label %3406

3406:                                             ; preds = %3406, %3398
  %3407 = phi i64 [ 0, %3398 ], [ %3409, %3406 ]
  %3408 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %3399, i64 %3407
  store <4 x float> %3405, ptr %3408, align 16, !tbaa !13
  %3409 = add nuw nsw i64 %3407, 4
  %3410 = icmp eq i64 %3409, 256
  br i1 %3410, label %3411, label %3406, !llvm.loop !371

3411:                                             ; preds = %3406
  %3412 = icmp eq i64 %3400, 256
  br i1 %3412, label %3413, label %3398

3413:                                             ; preds = %3411, %3345, %3335, %3312, %3304, %3286, %3256, %3238, %3215, %3196, %3181, %3166, %3151, %3136, %3122, %3094, %3073, %3037, %3014, %2984, %2965, %2947, %2918, %2890, %2852, %2813, %2804, %2785, %2762, %2734, %2691, %2646, %2627, %2608, %2589, %2574, %2561, %2546, %2516, %2465, %2431, %2403, %2384, %2361, %2347, %2331, %2296, %2273, %2268, %2253, %2230, %2196, %2187, %2178, %2164, %2140, %2136, %2108, %2083, %2067, %2057, %2044, %2031, %2018, %2000, %1987, %1983, %1979, %1974, %1923, %1915, %1906, %1897, %1878, %1850, %1822, %1779, %1731, %1683, %1635, %1604, %1564, %1530, %1502, %1459, %1436, %1404, %1353, %1325, %1295, %1286, %1272, %1249, %1230, %1196, %1172, %1138, %1115, %1095, %1041, %998, %951, %936, %904, %885, %847, %814, %775, %746, %727, %708, %689, %670, %652, %624, %581, %541, %531, %499, %465, %452, %428, %397, %358, %317, %283, %248, %229, %219, %189, %169, %163, %126, %83, %64, %45, %1
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @check(i32 noundef %0) unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %8, %2 ]
  %4 = phi float [ 0.000000e+00, %1 ], [ %7, %2 ]
  %5 = getelementptr inbounds float, ptr @global_data, i64 %3
  %6 = load float, ptr %5, align 4, !tbaa !13
  %7 = fadd float %4, %6
  %8 = add nuw nsw i64 %3, 1
  %9 = icmp eq i64 %8, 32000
  br i1 %9, label %11, label %2

10:                                               ; preds = %11
  %.lcssa1.lcssa = phi float [ %.lcssa1, %11 ]
  %.lcssa = phi float [ %16, %11 ]
  switch i32 %0, label %25 [
    i32 1, label %20
    i32 0, label %19
  ]

11:                                               ; preds = %11, %2
  %.lcssa1 = phi float [ %.lcssa1, %11 ], [ %7, %2 ]
  %12 = phi i64 [ %17, %11 ], [ 0, %2 ]
  %13 = phi float [ %16, %11 ], [ 0.000000e+00, %2 ]
  %14 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %12
  %15 = load float, ptr %14, align 4, !tbaa !13
  %16 = fadd float %13, %15
  %17 = add nuw nsw i64 %12, 1
  %18 = icmp eq i64 %17, 65536
  br i1 %18, label %10, label %11

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %10
  %21 = phi float [ %.lcssa, %19 ], [ %.lcssa1.lcssa, %10 ]
  %22 = load i32, ptr @digits, align 4, !tbaa !7
  %23 = fpext float %21 to double
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %22, double noundef %23) #10
  br label %25

25:                                               ; preds = %20, %10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree nounwind optsize memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize willreturn memory(read) }

!llvm.ident = !{!0, !0}
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
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !9, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !16, !17}
!19 = distinct !{!19, !16, !17}
!20 = distinct !{!20, !16, !17}
!21 = distinct !{!21, !16, !17}
!22 = distinct !{!22, !16, !17}
!23 = distinct !{!23, !16, !17}
!24 = distinct !{!24, !16, !17}
!25 = distinct !{!25, !16, !17}
!26 = distinct !{!26, !16, !17}
!27 = distinct !{!27, !16, !17}
!28 = distinct !{!28, !16, !17}
!29 = distinct !{!29, !16, !17}
!30 = distinct !{!30, !16, !17}
!31 = distinct !{!31, !16, !17}
!32 = distinct !{!32, !16, !17}
!33 = distinct !{!33, !16, !17}
!34 = distinct !{!34, !16, !17}
!35 = distinct !{!35, !16, !17}
!36 = distinct !{!36, !16, !17}
!37 = distinct !{!37, !16, !17}
!38 = distinct !{!38, !16, !17}
!39 = distinct !{!39, !16, !17}
!40 = distinct !{!40, !16, !17}
!41 = distinct !{!41, !16, !17}
!42 = distinct !{!42, !16, !17}
!43 = distinct !{!43, !16, !17}
!44 = distinct !{!44, !16, !17}
!45 = distinct !{!45, !16, !17}
!46 = distinct !{!46, !16, !17}
!47 = distinct !{!47, !16, !17}
!48 = distinct !{!48, !16, !17}
!49 = distinct !{!49, !16, !17}
!50 = distinct !{!50, !16, !17}
!51 = distinct !{!51, !16, !17}
!52 = distinct !{!52, !16, !17}
!53 = distinct !{!53, !16, !17}
!54 = distinct !{!54, !16, !17}
!55 = distinct !{!55, !16, !17}
!56 = distinct !{!56, !16, !17}
!57 = distinct !{!57, !16, !17}
!58 = distinct !{!58, !16, !17}
!59 = distinct !{!59, !16, !17}
!60 = distinct !{!60, !16, !17}
!61 = distinct !{!61, !16, !17}
!62 = distinct !{!62, !16, !17}
!63 = distinct !{!63, !16, !17}
!64 = distinct !{!64, !16, !17}
!65 = distinct !{!65, !16, !17}
!66 = distinct !{!66, !16, !17}
!67 = distinct !{!67, !16, !17}
!68 = distinct !{!68, !16, !17}
!69 = distinct !{!69, !16, !17}
!70 = distinct !{!70, !16, !17}
!71 = distinct !{!71, !16, !17}
!72 = distinct !{!72, !16, !17}
!73 = distinct !{!73, !16, !17}
!74 = distinct !{!74, !16, !17}
!75 = distinct !{!75, !16, !17}
!76 = distinct !{!76, !16, !17}
!77 = distinct !{!77, !16, !17}
!78 = distinct !{!78, !16, !17}
!79 = distinct !{!79, !16, !17}
!80 = distinct !{!80, !16, !17}
!81 = distinct !{!81, !16, !17}
!82 = distinct !{!82, !16, !17}
!83 = distinct !{!83, !16, !17}
!84 = distinct !{!84, !16, !17}
!85 = distinct !{!85, !16, !17}
!86 = distinct !{!86, !16, !17}
!87 = distinct !{!87, !16, !17}
!88 = distinct !{!88, !16, !17}
!89 = distinct !{!89, !16, !17}
!90 = distinct !{!90, !16, !17}
!91 = distinct !{!91, !16, !17}
!92 = distinct !{!92, !16, !17}
!93 = distinct !{!93, !16, !17}
!94 = distinct !{!94, !16, !17}
!95 = distinct !{!95, !16, !17}
!96 = distinct !{!96, !16, !17}
!97 = distinct !{!97, !16, !17}
!98 = distinct !{!98, !16, !17}
!99 = distinct !{!99, !16, !17}
!100 = distinct !{!100, !16, !17}
!101 = distinct !{!101, !16, !17}
!102 = distinct !{!102, !16, !17}
!103 = distinct !{!103, !16, !17}
!104 = distinct !{!104, !16, !17}
!105 = distinct !{!105, !16, !17}
!106 = distinct !{!106, !16, !17}
!107 = distinct !{!107, !16, !17}
!108 = distinct !{!108, !16, !17}
!109 = distinct !{!109, !16, !17}
!110 = distinct !{!110, !16, !17}
!111 = distinct !{!111, !16, !17}
!112 = distinct !{!112, !16, !17}
!113 = distinct !{!113, !16, !17}
!114 = distinct !{!114, !16, !17}
!115 = distinct !{!115, !16, !17}
!116 = distinct !{!116, !16, !17}
!117 = distinct !{!117, !16, !17}
!118 = distinct !{!118, !16, !17}
!119 = distinct !{!119, !16, !17}
!120 = distinct !{!120, !16, !17}
!121 = distinct !{!121, !16, !17}
!122 = distinct !{!122, !16, !17}
!123 = distinct !{!123, !16, !17}
!124 = distinct !{!124, !16, !17}
!125 = distinct !{!125, !16, !17}
!126 = distinct !{!126, !16, !17}
!127 = distinct !{!127, !16, !17}
!128 = distinct !{!128, !16, !17}
!129 = distinct !{!129, !16, !17}
!130 = distinct !{!130, !16, !17}
!131 = distinct !{!131, !16, !17}
!132 = distinct !{!132, !16, !17}
!133 = distinct !{!133, !16, !17}
!134 = distinct !{!134, !16, !17}
!135 = distinct !{!135, !16, !17}
!136 = distinct !{!136, !16, !17}
!137 = distinct !{!137, !16, !17}
!138 = distinct !{!138, !16, !17}
!139 = distinct !{!139, !16, !17}
!140 = distinct !{!140, !16, !17}
!141 = distinct !{!141, !16, !17}
!142 = distinct !{!142, !16, !17}
!143 = distinct !{!143, !16, !17}
!144 = distinct !{!144, !16, !17}
!145 = distinct !{!145, !16, !17}
!146 = distinct !{!146, !16, !17}
!147 = distinct !{!147, !16, !17}
!148 = distinct !{!148, !16, !17}
!149 = distinct !{!149, !16, !17}
!150 = distinct !{!150, !16, !17}
!151 = distinct !{!151, !16, !17}
!152 = distinct !{!152, !16, !17}
!153 = distinct !{!153, !16, !17}
!154 = distinct !{!154, !16, !17}
!155 = distinct !{!155, !16, !17}
!156 = distinct !{!156, !16, !17}
!157 = distinct !{!157, !16, !17}
!158 = distinct !{!158, !16, !17}
!159 = distinct !{!159, !16, !17}
!160 = distinct !{!160, !16, !17}
!161 = distinct !{!161, !16, !17}
!162 = distinct !{!162, !16, !17}
!163 = distinct !{!163, !16, !17}
!164 = distinct !{!164, !16, !17}
!165 = distinct !{!165, !16, !17}
!166 = distinct !{!166, !16, !17}
!167 = distinct !{!167, !16, !17}
!168 = distinct !{!168, !16, !17}
!169 = distinct !{!169, !16, !17}
!170 = distinct !{!170, !16, !17}
!171 = distinct !{!171, !16, !17}
!172 = distinct !{!172, !16, !17}
!173 = distinct !{!173, !16, !17}
!174 = distinct !{!174, !16, !17}
!175 = distinct !{!175, !16, !17}
!176 = distinct !{!176, !16, !17}
!177 = distinct !{!177, !16, !17}
!178 = distinct !{!178, !16, !17}
!179 = distinct !{!179, !16, !17}
!180 = distinct !{!180, !16, !17}
!181 = distinct !{!181, !16, !17}
!182 = distinct !{!182, !16, !17}
!183 = distinct !{!183, !16, !17}
!184 = distinct !{!184, !16, !17}
!185 = distinct !{!185, !16, !17}
!186 = distinct !{!186, !16, !17}
!187 = distinct !{!187, !16, !17}
!188 = distinct !{!188, !16, !17}
!189 = distinct !{!189, !16, !17}
!190 = distinct !{!190, !16, !17}
!191 = distinct !{!191, !16, !17}
!192 = distinct !{!192, !16, !17}
!193 = distinct !{!193, !16, !17}
!194 = distinct !{!194, !16, !17}
!195 = distinct !{!195, !16, !17}
!196 = distinct !{!196, !16, !17}
!197 = distinct !{!197, !16, !17}
!198 = distinct !{!198, !16, !17}
!199 = distinct !{!199, !16, !17}
!200 = distinct !{!200, !16, !17}
!201 = distinct !{!201, !16, !17}
!202 = distinct !{!202, !16, !17}
!203 = distinct !{!203, !16, !17}
!204 = distinct !{!204, !16, !17}
!205 = distinct !{!205, !16, !17}
!206 = distinct !{!206, !16, !17}
!207 = distinct !{!207, !16, !17}
!208 = distinct !{!208, !16, !17}
!209 = distinct !{!209, !16, !17}
!210 = distinct !{!210, !16, !17}
!211 = distinct !{!211, !16, !17}
!212 = distinct !{!212, !16, !17}
!213 = distinct !{!213, !16, !17}
!214 = distinct !{!214, !16, !17}
!215 = distinct !{!215, !16, !17}
!216 = distinct !{!216, !16, !17}
!217 = distinct !{!217, !16, !17}
!218 = distinct !{!218, !16, !17}
!219 = distinct !{!219, !16, !17}
!220 = distinct !{!220, !16, !17}
!221 = distinct !{!221, !16, !17}
!222 = distinct !{!222, !16, !17}
!223 = distinct !{!223, !16, !17}
!224 = distinct !{!224, !16, !17}
!225 = distinct !{!225, !16, !17}
!226 = distinct !{!226, !16, !17}
!227 = distinct !{!227, !16, !17}
!228 = distinct !{!228, !16, !17}
!229 = distinct !{!229, !16, !17}
!230 = distinct !{!230, !16, !17}
!231 = distinct !{!231, !16, !17}
!232 = distinct !{!232, !16, !17}
!233 = distinct !{!233, !16, !17}
!234 = distinct !{!234, !16, !17}
!235 = distinct !{!235, !16, !17}
!236 = distinct !{!236, !16, !17}
!237 = distinct !{!237, !16, !17}
!238 = distinct !{!238, !16, !17}
!239 = distinct !{!239, !16, !17}
!240 = distinct !{!240, !16, !17}
!241 = distinct !{!241, !16, !17}
!242 = distinct !{!242, !16, !17}
!243 = distinct !{!243, !16, !17}
!244 = distinct !{!244, !16, !17}
!245 = distinct !{!245, !16, !17}
!246 = distinct !{!246, !16, !17}
!247 = distinct !{!247, !16, !17}
!248 = distinct !{!248, !16, !17}
!249 = distinct !{!249, !16, !17}
!250 = distinct !{!250, !16, !17}
!251 = distinct !{!251, !16, !17}
!252 = distinct !{!252, !16, !17}
!253 = distinct !{!253, !16, !17}
!254 = distinct !{!254, !16, !17}
!255 = distinct !{!255, !16, !17}
!256 = distinct !{!256, !16, !17}
!257 = distinct !{!257, !16, !17}
!258 = distinct !{!258, !16, !17}
!259 = distinct !{!259, !16, !17}
!260 = distinct !{!260, !16, !17}
!261 = distinct !{!261, !16, !17}
!262 = distinct !{!262, !16, !17}
!263 = distinct !{!263, !16, !17}
!264 = distinct !{!264, !16, !17}
!265 = distinct !{!265, !16, !17}
!266 = distinct !{!266, !16, !17}
!267 = distinct !{!267, !16, !17}
!268 = distinct !{!268, !16, !17}
!269 = distinct !{!269, !16, !17}
!270 = distinct !{!270, !16, !17}
!271 = distinct !{!271, !16, !17}
!272 = distinct !{!272, !16, !17}
!273 = distinct !{!273, !16, !17}
!274 = distinct !{!274, !16, !17}
!275 = distinct !{!275, !16, !17}
!276 = distinct !{!276, !16, !17}
!277 = distinct !{!277, !16, !17}
!278 = distinct !{!278, !16, !17}
!279 = distinct !{!279, !16, !17}
!280 = distinct !{!280, !16, !17}
!281 = distinct !{!281, !16, !17}
!282 = distinct !{!282, !16, !17}
!283 = distinct !{!283, !16, !17}
!284 = distinct !{!284, !16, !17}
!285 = distinct !{!285, !16, !17}
!286 = distinct !{!286, !16, !17}
!287 = distinct !{!287, !16, !17}
!288 = distinct !{!288, !16, !17}
!289 = distinct !{!289, !16, !17}
!290 = distinct !{!290, !16, !17}
!291 = distinct !{!291, !16, !17}
!292 = distinct !{!292, !16, !17}
!293 = distinct !{!293, !16, !17}
!294 = distinct !{!294, !16, !17}
!295 = distinct !{!295, !16, !17}
!296 = distinct !{!296, !16, !17}
!297 = distinct !{!297, !16, !17}
!298 = distinct !{!298, !16, !17}
!299 = distinct !{!299, !16, !17}
!300 = distinct !{!300, !16, !17}
!301 = distinct !{!301, !16, !17}
!302 = distinct !{!302, !16, !17}
!303 = distinct !{!303, !16, !17}
!304 = distinct !{!304, !16, !17}
!305 = distinct !{!305, !16, !17}
!306 = distinct !{!306, !16, !17}
!307 = distinct !{!307, !16, !17}
!308 = distinct !{!308, !16, !17}
!309 = distinct !{!309, !16, !17}
!310 = distinct !{!310, !16, !17}
!311 = distinct !{!311, !16, !17}
!312 = distinct !{!312, !16, !17}
!313 = distinct !{!313, !16, !17}
!314 = distinct !{!314, !16, !17}
!315 = distinct !{!315, !16, !17}
!316 = distinct !{!316, !16, !17}
!317 = distinct !{!317, !16, !17}
!318 = distinct !{!318, !16, !17}
!319 = distinct !{!319, !16, !17}
!320 = distinct !{!320, !16, !17}
!321 = distinct !{!321, !16, !17}
!322 = distinct !{!322, !16, !17}
!323 = distinct !{!323, !16, !17}
!324 = distinct !{!324, !16, !17}
!325 = distinct !{!325, !16, !17}
!326 = distinct !{!326, !16, !17}
!327 = distinct !{!327, !16, !17}
!328 = distinct !{!328, !16, !17}
!329 = distinct !{!329, !16, !17}
!330 = distinct !{!330, !16, !17}
!331 = distinct !{!331, !16, !17}
!332 = distinct !{!332, !16, !17}
!333 = distinct !{!333, !16, !17}
!334 = distinct !{!334, !16, !17}
!335 = distinct !{!335, !16, !17}
!336 = distinct !{!336, !16, !17}
!337 = distinct !{!337, !16, !17}
!338 = distinct !{!338, !16, !17}
!339 = distinct !{!339, !16, !17}
!340 = distinct !{!340, !16, !17}
!341 = distinct !{!341, !16, !17}
!342 = distinct !{!342, !16, !17}
!343 = distinct !{!343, !16, !17}
!344 = distinct !{!344, !16, !17}
!345 = distinct !{!345, !16, !17}
!346 = distinct !{!346, !16, !17}
!347 = distinct !{!347, !16, !17}
!348 = distinct !{!348, !16, !17}
!349 = distinct !{!349, !16, !17}
!350 = distinct !{!350, !16, !17}
!351 = distinct !{!351, !16, !17}
!352 = distinct !{!352, !16, !17}
!353 = distinct !{!353, !16, !17}
!354 = distinct !{!354, !16, !17}
!355 = distinct !{!355, !16, !17}
!356 = distinct !{!356, !16, !17}
!357 = distinct !{!357, !16, !17}
!358 = distinct !{!358, !16, !17}
!359 = distinct !{!359, !16, !17}
!360 = distinct !{!360, !16, !17}
!361 = distinct !{!361, !16, !17}
!362 = distinct !{!362, !16, !17}
!363 = distinct !{!363, !16, !17}
!364 = distinct !{!364, !16, !17}
!365 = distinct !{!365, !16, !17}
!366 = distinct !{!366, !16, !17}
!367 = distinct !{!367, !16, !17}
!368 = distinct !{!368, !16, !17}
!369 = distinct !{!369, !16, !17}
!370 = distinct !{!370, !16, !17}
!371 = distinct !{!371, !16, !17}
