; ModuleID = 'LoopRestructuring-flt.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalData = type { [32000 x float], [3 x i32], [4 x i8], [32000 x float], [5 x i32], [12 x i8], [32000 x float], [7 x i32], [4 x i8], [32000 x float], [11 x i32], [4 x i8], [32000 x float], [13 x i32], [12 x i8], [256 x [256 x float]], [17 x i32], [12 x i8], [256 x [256 x float]], [19 x i32], [4 x i8], [256 x [256 x float]], [23 x i32], [4 x i8], [256 x [256 x float]] }

@global_data = internal unnamed_addr global %struct.GlobalData zeroinitializer, align 16
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
@.str.137 = private unnamed_addr constant [14 x i8] c"S221\09 %.2f \09\09\00", align 1
@.str.138 = private unnamed_addr constant [15 x i8] c"S1221\09 %.2f \09\09\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"S222\09 %.2f \09\09\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"S231\09 %.2f \09\09\00", align 1
@.str.141 = private unnamed_addr constant [14 x i8] c"S232\09 %.2f \09\09\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"S1232\09 %.2f \09\09\00", align 1
@.str.143 = private unnamed_addr constant [14 x i8] c"S233\09 %.2f \09\09\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"S2233\09 %.2f \09\09\00", align 1
@.str.145 = private unnamed_addr constant [14 x i8] c"S235\09 %.2f \09\09\00", align 1
@xx = internal global ptr null, align 8
@.str.147 = private unnamed_addr constant [31 x i8] c"Running each loop %d times...\0A\00", align 1
@str = private unnamed_addr constant [29 x i8] c"Loop \09 Time(Sec) \09 Checksum \00", align 1

; Function Attrs: nofree nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %4 = call i32 @posix_memalign(ptr noundef nonnull %3, i64 noundef 16, i64 noundef 128000) #10
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr @ntimes, align 4, !tbaa !7
  %8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.147, i32 noundef %7) #11
  br label %19

9:                                                ; preds = %2
  %10 = getelementptr inbounds ptr, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = call i32 @atoi(ptr nocapture noundef %11) #12
  store i32 %12, ptr @ntimes, align 4, !tbaa !7
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.147, i32 noundef %12) #11
  %14 = icmp eq i32 %0, 2
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %1, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = call i32 @atoi(ptr nocapture noundef %17) #12
  store i32 %18, ptr @digits, align 4, !tbaa !7
  br label %19

19:                                               ; preds = %15, %9, %6
  %20 = load ptr, ptr %3, align 8, !tbaa !11
  %21 = call i32 @posix_memalign(ptr noundef nonnull @xx, i64 noundef 16, i64 noundef 128000) #10
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
  call fastcc void @init(ptr noundef nonnull @.str.33) #11
  %113 = load i32, ptr @ntimes, align 4, !tbaa !7
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %115, label %138

115:                                              ; preds = %111
  %116 = lshr i32 %113, 1
  br label %117

117:                                              ; preds = %120, %115
  %118 = phi i32 [ %121, %120 ], [ 0, %115 ]
  %119 = load float, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), align 16, !tbaa !13
  br label %123

120:                                              ; preds = %123
  %121 = add nuw nsw i32 %118, 1
  %122 = icmp eq i32 %121, %116
  br i1 %122, label %138, label %117

123:                                              ; preds = %123, %117
  %124 = phi float [ %119, %117 ], [ %134, %123 ]
  %125 = phi i64 [ 1, %117 ], [ %136, %123 ]
  %126 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %125
  %127 = load float, ptr %126, align 4, !tbaa !13
  %128 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %125
  %129 = load float, ptr %128, align 4, !tbaa !13
  %130 = getelementptr inbounds float, ptr @global_data, i64 %125
  %131 = load float, ptr %130, align 4, !tbaa !13
  %132 = call float @llvm.fmuladd.f32(float %127, float %129, float %131)
  store float %132, ptr %130, align 4, !tbaa !13
  %133 = fadd float %124, %132
  %134 = fadd float %129, %133
  %135 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %125
  store float %134, ptr %135, align 4, !tbaa !13
  %136 = add nuw nsw i64 %125, 1
  %137 = icmp eq i64 %136, 32000
  br i1 %137, label %120, label %123

138:                                              ; preds = %120, %111
  %139 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.137, double noundef 0.000000e+00) #11
  call fastcc void @check(i32 noundef 12) #11
  call fastcc void @init(ptr noundef nonnull @.str.33) #11
  %140 = load i32, ptr @ntimes, align 4, !tbaa !7
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %154, %138
  %143 = phi i32 [ %155, %154 ], [ 0, %138 ]
  %144 = load <4 x float>, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), align 16
  br label %145

145:                                              ; preds = %145, %142
  %146 = phi <4 x float> [ %144, %142 ], [ %151, %145 ]
  %147 = phi i64 [ 0, %142 ], [ %148, %145 ]
  %148 = add nuw nsw i64 %147, 4
  %149 = getelementptr inbounds float, ptr @global_data, i64 %148
  %150 = load <4 x float>, ptr %149, align 16, !tbaa !13
  %151 = fadd <4 x float> %146, %150
  %152 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %148
  store <4 x float> %151, ptr %152, align 16, !tbaa !13
  %153 = icmp eq i64 %148, 31996
  br i1 %153, label %154, label %145, !llvm.loop !25

154:                                              ; preds = %145
  %155 = add nuw nsw i32 %143, 1
  %156 = icmp eq i32 %155, %140
  br i1 %156, label %157, label %142

157:                                              ; preds = %154, %138
  %158 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.138, double noundef 0.000000e+00) #11
  call fastcc void @check(i32 noundef 12) #11
  call fastcc void @init(ptr noundef nonnull @.str.34) #11
  %159 = load i32, ptr @ntimes, align 4, !tbaa !7
  %160 = icmp sgt i32 %159, 1
  br i1 %160, label %161, label %185

161:                                              ; preds = %157
  %162 = lshr i32 %159, 1
  br label %163

163:                                              ; preds = %166, %161
  %164 = phi i32 [ %167, %166 ], [ 0, %161 ]
  %165 = load float, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 0), align 16, !tbaa !13
  br label %169

166:                                              ; preds = %169
  %167 = add nuw nsw i32 %164, 1
  %168 = icmp eq i32 %167, %162
  br i1 %168, label %185, label %163

169:                                              ; preds = %169, %163
  %170 = phi float [ %165, %163 ], [ %179, %169 ]
  %171 = phi i64 [ 1, %163 ], [ %183, %169 ]
  %172 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %171
  %173 = load float, ptr %172, align 4, !tbaa !13
  %174 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %171
  %175 = load float, ptr %174, align 4, !tbaa !13
  %176 = getelementptr inbounds float, ptr @global_data, i64 %171
  %177 = load float, ptr %176, align 4, !tbaa !13
  %178 = call float @llvm.fmuladd.f32(float %173, float %175, float %177)
  %179 = fmul float %170, %170
  %180 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %171
  store float %179, ptr %180, align 4, !tbaa !13
  %181 = fneg float %173
  %182 = call float @llvm.fmuladd.f32(float %181, float %175, float %178)
  store float %182, ptr %176, align 4, !tbaa !13
  %183 = add nuw nsw i64 %171, 1
  %184 = icmp eq i64 %183, 32000
  br i1 %184, label %166, label %169

185:                                              ; preds = %166, %157
  %186 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.139, double noundef 0.000000e+00) #11
  call fastcc void @check(i32 noundef 12) #11
  call fastcc void @init(ptr noundef nonnull @.str.35) #11
  %187 = load i32, ptr @ntimes, align 4, !tbaa !7
  %188 = icmp sgt i32 %187, 255
  br i1 %188, label %189, label %213

189:                                              ; preds = %185
  %190 = lshr i32 %187, 8
  %191 = mul nuw nsw i32 %190, 100
  br label %192

192:                                              ; preds = %198, %189
  %193 = phi i32 [ %199, %198 ], [ 0, %189 ]
  br label %194

194:                                              ; preds = %201, %192
  %195 = phi i64 [ 0, %192 ], [ %202, %201 ]
  %196 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 0, i64 %195
  %197 = load float, ptr %196, align 4, !tbaa !13
  br label %204

198:                                              ; preds = %201
  %199 = add nuw nsw i32 %193, 1
  %200 = icmp eq i32 %199, %191
  br i1 %200, label %213, label %192

201:                                              ; preds = %204
  %202 = add nuw nsw i64 %195, 1
  %203 = icmp eq i64 %202, 256
  br i1 %203, label %198, label %194

204:                                              ; preds = %204, %194
  %205 = phi float [ %197, %194 ], [ %209, %204 ]
  %206 = phi i64 [ 1, %194 ], [ %211, %204 ]
  %207 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %206, i64 %195
  %208 = load float, ptr %207, align 4, !tbaa !13
  %209 = fadd float %205, %208
  %210 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %206, i64 %195
  store float %209, ptr %210, align 4, !tbaa !13
  %211 = add nuw nsw i64 %206, 1
  %212 = icmp eq i64 %211, 256
  br i1 %212, label %201, label %204

213:                                              ; preds = %198, %185
  %214 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.140, double noundef 0.000000e+00) #11
  call fastcc void @check(i32 noundef 11) #11
  call fastcc void @init(ptr noundef nonnull @.str.36) #11
  %215 = load i32, ptr @ntimes, align 4, !tbaa !7
  %216 = icmp sgt i32 %215, 255
  br i1 %216, label %217, label %243

217:                                              ; preds = %213
  %218 = lshr i32 %215, 8
  %219 = mul nuw nsw i32 %218, 100
  br label %220

220:                                              ; preds = %227, %217
  %221 = phi i32 [ %228, %227 ], [ 0, %217 ]
  br label %222

222:                                              ; preds = %230, %220
  %223 = phi i64 [ 1, %220 ], [ %231, %230 ]
  %224 = phi i64 [ 2, %220 ], [ %232, %230 ]
  %225 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %223, i64 0
  %226 = load float, ptr %225, align 16, !tbaa !13
  br label %234

227:                                              ; preds = %230
  %228 = add nuw nsw i32 %221, 1
  %229 = icmp eq i32 %228, %219
  br i1 %229, label %243, label %220

230:                                              ; preds = %234
  %231 = add nuw nsw i64 %223, 1
  %232 = add nuw nsw i64 %224, 1
  %233 = icmp eq i64 %231, 256
  br i1 %233, label %227, label %222

234:                                              ; preds = %234, %222
  %235 = phi float [ %226, %222 ], [ %239, %234 ]
  %236 = phi i64 [ 1, %222 ], [ %241, %234 ]
  %237 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %223, i64 %236
  %238 = load float, ptr %237, align 4, !tbaa !13
  %239 = call float @llvm.fmuladd.f32(float %235, float %235, float %238)
  %240 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %223, i64 %236
  store float %239, ptr %240, align 4, !tbaa !13
  %241 = add nuw nsw i64 %236, 1
  %242 = icmp eq i64 %241, %224
  br i1 %242, label %230, label %234

243:                                              ; preds = %227, %213
  %244 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.141, double noundef 0.000000e+00) #11
  call fastcc void @check(i32 noundef 11) #11
  call fastcc void @init(ptr noundef nonnull @.str.36) #11
  %245 = load i32, ptr @ntimes, align 4, !tbaa !7
  %246 = icmp sgt i32 %245, 255
  br i1 %246, label %247, label %270

247:                                              ; preds = %243
  %248 = lshr i32 %245, 8
  %249 = mul nuw nsw i32 %248, 100
  br label %250

250:                                              ; preds = %254, %247
  %251 = phi i32 [ %255, %254 ], [ 0, %247 ]
  br label %252

252:                                              ; preds = %257, %250
  %253 = phi i64 [ 0, %250 ], [ %258, %257 ]
  br label %260

254:                                              ; preds = %257
  %255 = add nuw nsw i32 %251, 1
  %256 = icmp eq i32 %255, %249
  br i1 %256, label %270, label %250

257:                                              ; preds = %260
  %258 = add nuw nsw i64 %253, 1
  %259 = icmp eq i64 %258, 256
  br i1 %259, label %254, label %252

260:                                              ; preds = %260, %252
  %261 = phi i64 [ %253, %252 ], [ %268, %260 ]
  %262 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %261, i64 %253
  %263 = load float, ptr %262, align 4, !tbaa !13
  %264 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %261, i64 %253
  %265 = load float, ptr %264, align 4, !tbaa !13
  %266 = fadd float %263, %265
  %267 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %261, i64 %253
  store float %266, ptr %267, align 4, !tbaa !13
  %268 = add nuw nsw i64 %261, 1
  %269 = icmp eq i64 %268, 256
  br i1 %269, label %257, label %260

270:                                              ; preds = %254, %243
  %271 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.142, double noundef 0.000000e+00) #11
  call fastcc void @check(i32 noundef 11) #11
  call fastcc void @init(ptr noundef nonnull @.str.37) #11
  %272 = load i32, ptr @ntimes, align 4, !tbaa !7
  %273 = icmp sgt i32 %272, 255
  br i1 %273, label %274, label %310

274:                                              ; preds = %270
  %275 = lshr i32 %272, 8
  %276 = mul nuw nsw i32 %275, 100
  br label %277

277:                                              ; preds = %283, %274
  %278 = phi i32 [ %284, %283 ], [ 0, %274 ]
  br label %279

279:                                              ; preds = %297, %277
  %280 = phi i64 [ 1, %277 ], [ %298, %297 ]
  %281 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 0, i64 %280
  %282 = load float, ptr %281, align 4, !tbaa !13
  br label %288

283:                                              ; preds = %297
  %284 = add nuw nsw i32 %278, 1
  %285 = icmp eq i32 %284, %276
  br i1 %285, label %310, label %277

286:                                              ; preds = %288
  %287 = add nsw i64 %280, -1
  br label %300

288:                                              ; preds = %288, %279
  %289 = phi float [ %282, %279 ], [ %293, %288 ]
  %290 = phi i64 [ 1, %279 ], [ %295, %288 ]
  %291 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %290, i64 %280
  %292 = load float, ptr %291, align 4, !tbaa !13
  %293 = fadd float %289, %292
  %294 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %290, i64 %280
  store float %293, ptr %294, align 4, !tbaa !13
  %295 = add nuw nsw i64 %290, 1
  %296 = icmp eq i64 %295, 256
  br i1 %296, label %286, label %288

297:                                              ; preds = %300
  %298 = add nuw nsw i64 %280, 1
  %299 = icmp eq i64 %298, 256
  br i1 %299, label %283, label %279

300:                                              ; preds = %300, %286
  %301 = phi i64 [ 1, %286 ], [ %308, %300 ]
  %302 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %301, i64 %287
  %303 = load float, ptr %302, align 4, !tbaa !13
  %304 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %301, i64 %280
  %305 = load float, ptr %304, align 4, !tbaa !13
  %306 = fadd float %303, %305
  %307 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %301, i64 %280
  store float %306, ptr %307, align 4, !tbaa !13
  %308 = add nuw nsw i64 %301, 1
  %309 = icmp eq i64 %308, 256
  br i1 %309, label %297, label %300

310:                                              ; preds = %283, %270
  %311 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.143, double noundef 0.000000e+00) #11
  call fastcc void @check(i32 noundef 1122) #11
  call fastcc void @init(ptr noundef nonnull @.str.37) #11
  %312 = load i32, ptr @ntimes, align 4, !tbaa !7
  %313 = icmp sgt i32 %312, 255
  br i1 %313, label %314, label %350

314:                                              ; preds = %310
  %315 = lshr i32 %312, 8
  %316 = mul nuw nsw i32 %315, 100
  br label %317

317:                                              ; preds = %323, %314
  %318 = phi i32 [ %324, %323 ], [ 0, %314 ]
  br label %319

319:                                              ; preds = %337, %317
  %320 = phi i64 [ 1, %317 ], [ %338, %337 ]
  %321 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 0, i64 %320
  %322 = load float, ptr %321, align 4, !tbaa !13
  br label %328

323:                                              ; preds = %337
  %324 = add nuw nsw i32 %318, 1
  %325 = icmp eq i32 %324, %316
  br i1 %325, label %350, label %317

326:                                              ; preds = %328
  %327 = add nsw i64 %320, -1
  br label %340

328:                                              ; preds = %328, %319
  %329 = phi float [ %322, %319 ], [ %333, %328 ]
  %330 = phi i64 [ 1, %319 ], [ %335, %328 ]
  %331 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %330, i64 %320
  %332 = load float, ptr %331, align 4, !tbaa !13
  %333 = fadd float %329, %332
  %334 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %330, i64 %320
  store float %333, ptr %334, align 4, !tbaa !13
  %335 = add nuw nsw i64 %330, 1
  %336 = icmp eq i64 %335, 256
  br i1 %336, label %326, label %328

337:                                              ; preds = %340
  %338 = add nuw nsw i64 %320, 1
  %339 = icmp eq i64 %338, 256
  br i1 %339, label %323, label %319

340:                                              ; preds = %340, %326
  %341 = phi i64 [ 1, %326 ], [ %348, %340 ]
  %342 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %327, i64 %341
  %343 = load float, ptr %342, align 4, !tbaa !13
  %344 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %320, i64 %341
  %345 = load float, ptr %344, align 4, !tbaa !13
  %346 = fadd float %343, %345
  %347 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %320, i64 %341
  store float %346, ptr %347, align 4, !tbaa !13
  %348 = add nuw nsw i64 %341, 1
  %349 = icmp eq i64 %348, 256
  br i1 %349, label %337, label %340

350:                                              ; preds = %323, %310
  %351 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.144, double noundef 0.000000e+00) #11
  call fastcc void @check(i32 noundef 1122) #11
  call fastcc void @init(ptr noundef nonnull @.str.39) #11
  %352 = load i32, ptr @ntimes, align 4, !tbaa !7
  %353 = icmp sgt i32 %352, 255
  br i1 %353, label %354, label %385

354:                                              ; preds = %350
  %355 = lshr i32 %352, 8
  %356 = mul nuw nsw i32 %355, 200
  br label %357

357:                                              ; preds = %359, %354
  %358 = phi i32 [ %360, %359 ], [ 0, %354 ]
  br label %362

359:                                              ; preds = %373
  %360 = add nuw nsw i32 %358, 1
  %361 = icmp eq i32 %360, %356
  br i1 %361, label %385, label %357

362:                                              ; preds = %373, %357
  %363 = phi i64 [ 0, %357 ], [ %374, %373 ]
  %364 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %363
  %365 = load float, ptr %364, align 4, !tbaa !13
  %366 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %363
  %367 = load float, ptr %366, align 4, !tbaa !13
  %368 = getelementptr inbounds float, ptr @global_data, i64 %363
  %369 = load float, ptr %368, align 4, !tbaa !13
  %370 = call float @llvm.fmuladd.f32(float %365, float %367, float %369)
  store float %370, ptr %368, align 4, !tbaa !13
  %371 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 0, i64 %363
  %372 = load float, ptr %371, align 4, !tbaa !13
  br label %376

373:                                              ; preds = %376
  %374 = add nuw nsw i64 %363, 1
  %375 = icmp eq i64 %374, 256
  br i1 %375, label %359, label %362

376:                                              ; preds = %376, %362
  %377 = phi float [ %372, %362 ], [ %381, %376 ]
  %378 = phi i64 [ 1, %362 ], [ %383, %376 ]
  %379 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %378, i64 %363
  %380 = load float, ptr %379, align 4, !tbaa !13
  %381 = call float @llvm.fmuladd.f32(float %380, float %370, float %377)
  %382 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %378, i64 %363
  store float %381, ptr %382, align 4, !tbaa !13
  %383 = add nuw nsw i64 %378, 1
  %384 = icmp eq i64 %383, 256
  br i1 %384, label %373, label %376

385:                                              ; preds = %359, %350
  %386 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.145, double noundef 0.000000e+00) #11
  call fastcc void @check(i32 noundef 111) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
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
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.1) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %3386, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.2) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %56

7:                                                ; preds = %7, %4
  %8 = phi i64 [ %10, %7 ], [ 0, %4 ]
  %9 = getelementptr inbounds float, ptr @global_data, i64 %8
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %9, align 16, !tbaa !13
  %10 = add nuw nsw i64 %8, 4
  %11 = icmp eq i64 %10, 32000
  br i1 %11, label %12, label %7, !llvm.loop !26

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
  br i1 %22, label %23, label %12, !llvm.loop !27

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
  br i1 %33, label %34, label %23, !llvm.loop !28

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
  br i1 %44, label %45, label %34, !llvm.loop !29

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
  br i1 %55, label %3386, label %45, !llvm.loop !30

56:                                               ; preds = %4
  %57 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.3) #12
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %59, %56
  %60 = phi i64 [ %62, %59 ], [ 0, %56 ]
  %61 = getelementptr inbounds float, ptr @global_data, i64 %60
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %61, align 16, !tbaa !13
  %62 = add nuw nsw i64 %60, 4
  %63 = icmp eq i64 %62, 32000
  br i1 %63, label %64, label %59, !llvm.loop !31

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
  br i1 %74, label %3386, label %64, !llvm.loop !32

75:                                               ; preds = %56
  %76 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.4) #12
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %78, %75
  %79 = phi i64 [ %81, %78 ], [ 0, %75 ]
  %80 = getelementptr inbounds float, ptr @global_data, i64 %79
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %80, align 16, !tbaa !13
  %81 = add nuw nsw i64 %79, 4
  %82 = icmp eq i64 %81, 32000
  br i1 %82, label %83, label %78, !llvm.loop !33

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
  br i1 %93, label %3386, label %83, !llvm.loop !34

94:                                               ; preds = %75
  %95 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.5) #12
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
  br i1 %109, label %110, label %105, !llvm.loop !35

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
  br i1 %125, label %126, label %121, !llvm.loop !36

126:                                              ; preds = %121
  %127 = icmp eq i64 %114, 256
  br i1 %127, label %3386, label %112

128:                                              ; preds = %94
  %129 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.6) #12
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %166

131:                                              ; preds = %131, %128
  %132 = phi i64 [ %134, %131 ], [ 0, %128 ]
  %133 = getelementptr inbounds float, ptr @global_data, i64 %132
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %133, align 16, !tbaa !13
  %134 = add nuw nsw i64 %132, 4
  %135 = icmp eq i64 %134, 32000
  br i1 %135, label %136, label %131, !llvm.loop !37

136:                                              ; preds = %143, %131
  %137 = phi i64 [ %144, %143 ], [ 0, %131 ]
  br label %138

138:                                              ; preds = %138, %136
  %139 = phi i64 [ 0, %136 ], [ %141, %138 ]
  %140 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %137, i64 %139
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %140, align 16, !tbaa !13
  %141 = add nuw nsw i64 %139, 4
  %142 = icmp eq i64 %141, 256
  br i1 %142, label %143, label %138, !llvm.loop !38

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
  br i1 %152, label %153, label %148, !llvm.loop !39

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
  br i1 %162, label %163, label %158, !llvm.loop !40

163:                                              ; preds = %158
  %164 = add nuw nsw i64 %157, 1
  %165 = icmp eq i64 %164, 256
  br i1 %165, label %3386, label %156

166:                                              ; preds = %128
  %167 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.7) #12
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %169, %166
  %170 = phi i64 [ %172, %169 ], [ 0, %166 ]
  %171 = getelementptr inbounds float, ptr @global_data, i64 %170
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %171, align 16, !tbaa !13
  %172 = add nuw nsw i64 %170, 4
  %173 = icmp eq i64 %172, 32000
  br i1 %173, label %3386, label %169, !llvm.loop !41

174:                                              ; preds = %166
  %175 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.8) #12
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %177, %174
  %178 = phi i64 [ %180, %177 ], [ 0, %174 ]
  %179 = getelementptr inbounds float, ptr @global_data, i64 %178
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %179, align 16, !tbaa !13
  %180 = add nuw nsw i64 %178, 4
  %181 = icmp eq i64 %180, 32000
  br i1 %181, label %182, label %177, !llvm.loop !42

182:                                              ; preds = %189, %177
  %183 = phi i64 [ %190, %189 ], [ 0, %177 ]
  br label %184

184:                                              ; preds = %184, %182
  %185 = phi i64 [ 0, %182 ], [ %187, %184 ]
  %186 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %183, i64 %185
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %186, align 16, !tbaa !13
  %187 = add nuw nsw i64 %185, 4
  %188 = icmp eq i64 %187, 256
  br i1 %188, label %189, label %184, !llvm.loop !43

189:                                              ; preds = %184
  %190 = add nuw nsw i64 %183, 1
  %191 = icmp eq i64 %190, 256
  br i1 %191, label %3386, label %182

192:                                              ; preds = %174
  %193 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.9) #12
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
  br i1 %201, label %202, label %197, !llvm.loop !44

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
  br i1 %218, label %219, label %214, !llvm.loop !45

219:                                              ; preds = %214
  %220 = icmp eq i64 %207, 256
  br i1 %220, label %3386, label %205

221:                                              ; preds = %192
  %222 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.10) #12
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %240

224:                                              ; preds = %224, %221
  %225 = phi i64 [ %227, %224 ], [ 0, %221 ]
  %226 = getelementptr inbounds float, ptr @global_data, i64 %225
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %226, align 16, !tbaa !13
  %227 = add nuw nsw i64 %225, 4
  %228 = icmp eq i64 %227, 32000
  br i1 %228, label %229, label %224, !llvm.loop !46

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
  br i1 %239, label %3386, label %229, !llvm.loop !47

240:                                              ; preds = %221
  %241 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.11) #12
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %259

243:                                              ; preds = %243, %240
  %244 = phi i64 [ %246, %243 ], [ 0, %240 ]
  %245 = getelementptr inbounds float, ptr @global_data, i64 %244
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %245, align 16, !tbaa !13
  %246 = add nuw nsw i64 %244, 4
  %247 = icmp eq i64 %246, 32000
  br i1 %247, label %248, label %243, !llvm.loop !48

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
  br i1 %258, label %3386, label %248, !llvm.loop !49

259:                                              ; preds = %240
  %260 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.12) #12
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
  br i1 %267, label %268, label %263, !llvm.loop !50

268:                                              ; preds = %268, %263
  %269 = phi i64 [ %271, %268 ], [ 0, %263 ]
  %270 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %269
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %270, align 16, !tbaa !13
  %271 = add nuw nsw i64 %269, 4
  %272 = icmp eq i64 %271, 32000
  br i1 %272, label %273, label %268, !llvm.loop !51

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
  br i1 %282, label %283, label %273, !llvm.loop !52

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
  br i1 %292, label %3386, label %283, !llvm.loop !53

293:                                              ; preds = %259
  %294 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.13) #12
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
  br i1 %301, label %302, label %297, !llvm.loop !54

302:                                              ; preds = %302, %297
  %303 = phi i64 [ %305, %302 ], [ 0, %297 ]
  %304 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %303
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %304, align 16, !tbaa !13
  %305 = add nuw nsw i64 %303, 4
  %306 = icmp eq i64 %305, 32000
  br i1 %306, label %307, label %302, !llvm.loop !55

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
  br i1 %316, label %317, label %307, !llvm.loop !56

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
  br i1 %326, label %3386, label %317, !llvm.loop !57

327:                                              ; preds = %293
  %328 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.14) #12
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %360

330:                                              ; preds = %337, %327
  %331 = phi i64 [ %338, %337 ], [ 0, %327 ]
  br label %332

332:                                              ; preds = %332, %330
  %333 = phi i64 [ 0, %330 ], [ %335, %332 ]
  %334 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %331, i64 %333
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %334, align 16, !tbaa !13
  %335 = add nuw nsw i64 %333, 4
  %336 = icmp eq i64 %335, 256
  br i1 %336, label %337, label %332, !llvm.loop !58

337:                                              ; preds = %332
  %338 = add nuw nsw i64 %331, 1
  %339 = icmp eq i64 %338, 256
  br i1 %339, label %340, label %330

340:                                              ; preds = %347, %337
  %341 = phi i64 [ %348, %347 ], [ 0, %337 ]
  br label %342

342:                                              ; preds = %342, %340
  %343 = phi i64 [ 0, %340 ], [ %345, %342 ]
  %344 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %341, i64 %343
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, ptr %344, align 16, !tbaa !13
  %345 = add nuw nsw i64 %343, 4
  %346 = icmp eq i64 %345, 256
  br i1 %346, label %347, label %342, !llvm.loop !59

347:                                              ; preds = %342
  %348 = add nuw nsw i64 %341, 1
  %349 = icmp eq i64 %348, 256
  br i1 %349, label %350, label %340

350:                                              ; preds = %357, %347
  %351 = phi i64 [ %358, %357 ], [ 0, %347 ]
  br label %352

352:                                              ; preds = %352, %350
  %353 = phi i64 [ 0, %350 ], [ %355, %352 ]
  %354 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %351, i64 %353
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, ptr %354, align 16, !tbaa !13
  %355 = add nuw nsw i64 %353, 4
  %356 = icmp eq i64 %355, 256
  br i1 %356, label %357, label %352, !llvm.loop !60

357:                                              ; preds = %352
  %358 = add nuw nsw i64 %351, 1
  %359 = icmp eq i64 %358, 256
  br i1 %359, label %3386, label %350

360:                                              ; preds = %327
  %361 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.15) #12
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %388

363:                                              ; preds = %370, %360
  %364 = phi i64 [ %371, %370 ], [ 0, %360 ]
  br label %365

365:                                              ; preds = %365, %363
  %366 = phi i64 [ 0, %363 ], [ %368, %365 ]
  %367 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %364, i64 %366
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %367, align 16, !tbaa !13
  %368 = add nuw nsw i64 %366, 4
  %369 = icmp eq i64 %368, 256
  br i1 %369, label %370, label %365, !llvm.loop !61

370:                                              ; preds = %365
  %371 = add nuw nsw i64 %364, 1
  %372 = icmp eq i64 %371, 256
  br i1 %372, label %373, label %363

373:                                              ; preds = %386, %370
  %374 = phi i64 [ %375, %386 ], [ 0, %370 ]
  %375 = add nuw nsw i64 %374, 1
  %376 = trunc i64 %375 to i32
  %377 = sitofp i32 %376 to float
  %378 = fdiv float 1.000000e+00, %377
  %379 = insertelement <4 x float> poison, float %378, i64 0
  %380 = shufflevector <4 x float> %379, <4 x float> poison, <4 x i32> zeroinitializer
  br label %381

381:                                              ; preds = %381, %373
  %382 = phi i64 [ 0, %373 ], [ %384, %381 ]
  %383 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %374, i64 %382
  store <4 x float> %380, ptr %383, align 16, !tbaa !13
  %384 = add nuw nsw i64 %382, 4
  %385 = icmp eq i64 %384, 256
  br i1 %385, label %386, label %381, !llvm.loop !62

386:                                              ; preds = %381
  %387 = icmp eq i64 %375, 256
  br i1 %387, label %3386, label %373

388:                                              ; preds = %360
  %389 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.16) #12
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %427

391:                                              ; preds = %388
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %392

392:                                              ; preds = %392, %391
  %393 = phi i64 [ 0, %391 ], [ %395, %392 ]
  %394 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %393
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %394, align 16, !tbaa !13
  %395 = add nuw nsw i64 %393, 4
  %396 = icmp eq i64 %395, 32000
  br i1 %396, label %397, label %392, !llvm.loop !63

397:                                              ; preds = %397, %392
  %398 = phi i64 [ %404, %397 ], [ 0, %392 ]
  %399 = phi <4 x i32> [ %405, %397 ], [ <i32 0, i32 1, i32 2, i32 3>, %392 ]
  %400 = add <4 x i32> %399, <i32 1, i32 1, i32 1, i32 1>
  %401 = sitofp <4 x i32> %400 to <4 x float>
  %402 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %401
  %403 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %398
  store <4 x float> %402, ptr %403, align 16, !tbaa !13
  %404 = add nuw nsw i64 %398, 4
  %405 = add <4 x i32> %399, <i32 4, i32 4, i32 4, i32 4>
  %406 = icmp eq i64 %404, 32000
  br i1 %406, label %407, label %397, !llvm.loop !64

407:                                              ; preds = %407, %397
  %408 = phi i64 [ %414, %407 ], [ 0, %397 ]
  %409 = phi <4 x i32> [ %415, %407 ], [ <i32 0, i32 1, i32 2, i32 3>, %397 ]
  %410 = add <4 x i32> %409, <i32 1, i32 1, i32 1, i32 1>
  %411 = sitofp <4 x i32> %410 to <4 x float>
  %412 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %411
  %413 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %408
  store <4 x float> %412, ptr %413, align 16, !tbaa !13
  %414 = add nuw nsw i64 %408, 4
  %415 = add <4 x i32> %409, <i32 4, i32 4, i32 4, i32 4>
  %416 = icmp eq i64 %414, 32000
  br i1 %416, label %417, label %407, !llvm.loop !65

417:                                              ; preds = %417, %407
  %418 = phi i64 [ %424, %417 ], [ 0, %407 ]
  %419 = phi <4 x i32> [ %425, %417 ], [ <i32 0, i32 1, i32 2, i32 3>, %407 ]
  %420 = add <4 x i32> %419, <i32 1, i32 1, i32 1, i32 1>
  %421 = sitofp <4 x i32> %420 to <4 x float>
  %422 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %421
  %423 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %418
  store <4 x float> %422, ptr %423, align 16, !tbaa !13
  %424 = add nuw nsw i64 %418, 4
  %425 = add <4 x i32> %419, <i32 4, i32 4, i32 4, i32 4>
  %426 = icmp eq i64 %424, 32000
  br i1 %426, label %3386, label %417, !llvm.loop !66

427:                                              ; preds = %388
  %428 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.17) #12
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %446

430:                                              ; preds = %427
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %431

431:                                              ; preds = %431, %430
  %432 = phi i64 [ 0, %430 ], [ %434, %431 ]
  %433 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %432
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, ptr %433, align 16, !tbaa !13
  %434 = add nuw nsw i64 %432, 4
  %435 = icmp eq i64 %434, 32000
  br i1 %435, label %436, label %431, !llvm.loop !67

436:                                              ; preds = %436, %431
  %437 = phi i64 [ %439, %436 ], [ 0, %431 ]
  %438 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %437
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %438, align 16, !tbaa !13
  %439 = add nuw nsw i64 %437, 4
  %440 = icmp eq i64 %439, 32000
  br i1 %440, label %441, label %436, !llvm.loop !68

441:                                              ; preds = %441, %436
  %442 = phi i64 [ %444, %441 ], [ 0, %436 ]
  %443 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %442
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %443, align 16, !tbaa !13
  %444 = add nuw nsw i64 %442, 4
  %445 = icmp eq i64 %444, 32000
  br i1 %445, label %3386, label %441, !llvm.loop !69

446:                                              ; preds = %427
  %447 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.18) #12
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %465

449:                                              ; preds = %449, %446
  %450 = phi i64 [ %452, %449 ], [ 0, %446 ]
  %451 = getelementptr inbounds float, ptr @global_data, i64 %450
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %451, align 16, !tbaa !13
  %452 = add nuw nsw i64 %450, 4
  %453 = icmp eq i64 %452, 32000
  br i1 %453, label %454, label %449, !llvm.loop !70

454:                                              ; preds = %454, %449
  %455 = phi i64 [ %462, %454 ], [ 0, %449 ]
  %456 = phi <4 x i32> [ %463, %454 ], [ <i32 0, i32 1, i32 2, i32 3>, %449 ]
  %457 = add <4 x i32> %456, <i32 1, i32 1, i32 1, i32 1>
  %458 = mul <4 x i32> %457, %457
  %459 = sitofp <4 x i32> %458 to <4 x float>
  %460 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %459
  %461 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %455
  store <4 x float> %460, ptr %461, align 16, !tbaa !13
  %462 = add nuw nsw i64 %455, 4
  %463 = add <4 x i32> %456, <i32 4, i32 4, i32 4, i32 4>
  %464 = icmp eq i64 %462, 32000
  br i1 %464, label %3386, label %454, !llvm.loop !71

465:                                              ; preds = %446
  %466 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.19) #12
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %498

468:                                              ; preds = %475, %465
  %469 = phi i64 [ %476, %475 ], [ 0, %465 ]
  br label %470

470:                                              ; preds = %470, %468
  %471 = phi i64 [ 0, %468 ], [ %473, %470 ]
  %472 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %469, i64 %471
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %472, align 16, !tbaa !13
  %473 = add nuw nsw i64 %471, 4
  %474 = icmp eq i64 %473, 256
  br i1 %474, label %475, label %470, !llvm.loop !72

475:                                              ; preds = %470
  %476 = add nuw nsw i64 %469, 1
  %477 = icmp eq i64 %476, 256
  br i1 %477, label %478, label %468

478:                                              ; preds = %478, %475
  %479 = phi i64 [ %485, %478 ], [ 0, %475 ]
  %480 = phi <4 x i32> [ %486, %478 ], [ <i32 0, i32 1, i32 2, i32 3>, %475 ]
  %481 = add <4 x i32> %480, <i32 1, i32 1, i32 1, i32 1>
  %482 = sitofp <4 x i32> %481 to <4 x float>
  %483 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %482
  %484 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %479
  store <4 x float> %483, ptr %484, align 16, !tbaa !13
  %485 = add nuw nsw i64 %479, 4
  %486 = add <4 x i32> %480, <i32 4, i32 4, i32 4, i32 4>
  %487 = icmp eq i64 %485, 32000
  br i1 %487, label %488, label %478, !llvm.loop !73

488:                                              ; preds = %488, %478
  %489 = phi i64 [ %495, %488 ], [ 0, %478 ]
  %490 = phi <4 x i32> [ %496, %488 ], [ <i32 0, i32 1, i32 2, i32 3>, %478 ]
  %491 = add <4 x i32> %490, <i32 1, i32 1, i32 1, i32 1>
  %492 = sitofp <4 x i32> %491 to <4 x float>
  %493 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %492
  %494 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %489
  store <4 x float> %493, ptr %494, align 16, !tbaa !13
  %495 = add nuw nsw i64 %489, 4
  %496 = add <4 x i32> %490, <i32 4, i32 4, i32 4, i32 4>
  %497 = icmp eq i64 %495, 32000
  br i1 %497, label %3386, label %488, !llvm.loop !74

498:                                              ; preds = %465
  %499 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.20) #12
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %501, label %517

501:                                              ; preds = %515, %498
  %502 = phi i64 [ %503, %515 ], [ 0, %498 ]
  %503 = add nuw nsw i64 %502, 1
  %504 = trunc i64 %503 to i32
  %505 = mul nsw i32 %504, %504
  %506 = sitofp i32 %505 to float
  %507 = fdiv float 1.000000e+00, %506
  %508 = insertelement <4 x float> poison, float %507, i64 0
  %509 = shufflevector <4 x float> %508, <4 x float> poison, <4 x i32> zeroinitializer
  br label %510

510:                                              ; preds = %510, %501
  %511 = phi i64 [ 0, %501 ], [ %513, %510 ]
  %512 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %502, i64 %511
  store <4 x float> %509, ptr %512, align 16, !tbaa !13
  %513 = add nuw nsw i64 %511, 4
  %514 = icmp eq i64 %513, 256
  br i1 %514, label %515, label %510, !llvm.loop !75

515:                                              ; preds = %510
  %516 = icmp eq i64 %503, 256
  br i1 %516, label %3386, label %501

517:                                              ; preds = %498
  %518 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.21) #12
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %536

520:                                              ; preds = %520, %517
  %521 = phi i64 [ %523, %520 ], [ 0, %517 ]
  %522 = getelementptr inbounds float, ptr @global_data, i64 %521
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %522, align 16, !tbaa !13
  %523 = add nuw nsw i64 %521, 4
  %524 = icmp eq i64 %523, 32000
  br i1 %524, label %525, label %520, !llvm.loop !76

525:                                              ; preds = %525, %520
  %526 = phi i64 [ %533, %525 ], [ 0, %520 ]
  %527 = phi <4 x i32> [ %534, %525 ], [ <i32 0, i32 1, i32 2, i32 3>, %520 ]
  %528 = add <4 x i32> %527, <i32 1, i32 1, i32 1, i32 1>
  %529 = mul <4 x i32> %528, %528
  %530 = sitofp <4 x i32> %529 to <4 x float>
  %531 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %530
  %532 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %526
  store <4 x float> %531, ptr %532, align 16, !tbaa !13
  %533 = add nuw nsw i64 %526, 4
  %534 = add <4 x i32> %527, <i32 4, i32 4, i32 4, i32 4>
  %535 = icmp eq i64 %533, 32000
  br i1 %535, label %3386, label %525, !llvm.loop !77

536:                                              ; preds = %517
  %537 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.22) #12
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %575

539:                                              ; preds = %539, %536
  %540 = phi i64 [ %542, %539 ], [ 0, %536 ]
  %541 = getelementptr inbounds float, ptr @global_data, i64 %540
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %541, align 16, !tbaa !13
  %542 = add nuw nsw i64 %540, 4
  %543 = icmp eq i64 %542, 32000
  br i1 %543, label %544, label %539, !llvm.loop !78

544:                                              ; preds = %539
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), i8 0, i64 128000, i1 false), !tbaa !13
  br label %545

545:                                              ; preds = %545, %544
  %546 = phi i64 [ 0, %544 ], [ %552, %545 ]
  %547 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %544 ], [ %553, %545 ]
  %548 = add <4 x i32> %547, <i32 1, i32 1, i32 1, i32 1>
  %549 = sitofp <4 x i32> %548 to <4 x float>
  %550 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %549
  %551 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %546
  store <4 x float> %550, ptr %551, align 16, !tbaa !13
  %552 = add nuw nsw i64 %546, 4
  %553 = add <4 x i32> %547, <i32 4, i32 4, i32 4, i32 4>
  %554 = icmp eq i64 %552, 32000
  br i1 %554, label %555, label %545, !llvm.loop !79

555:                                              ; preds = %555, %545
  %556 = phi i64 [ %562, %555 ], [ 0, %545 ]
  %557 = phi <4 x i32> [ %563, %555 ], [ <i32 0, i32 1, i32 2, i32 3>, %545 ]
  %558 = add <4 x i32> %557, <i32 1, i32 1, i32 1, i32 1>
  %559 = sitofp <4 x i32> %558 to <4 x float>
  %560 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %559
  %561 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %556
  store <4 x float> %560, ptr %561, align 16, !tbaa !13
  %562 = add nuw nsw i64 %556, 4
  %563 = add <4 x i32> %557, <i32 4, i32 4, i32 4, i32 4>
  %564 = icmp eq i64 %562, 32000
  br i1 %564, label %565, label %555, !llvm.loop !80

565:                                              ; preds = %565, %555
  %566 = phi i64 [ %572, %565 ], [ 0, %555 ]
  %567 = phi <4 x i32> [ %573, %565 ], [ <i32 0, i32 1, i32 2, i32 3>, %555 ]
  %568 = add <4 x i32> %567, <i32 1, i32 1, i32 1, i32 1>
  %569 = sitofp <4 x i32> %568 to <4 x float>
  %570 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %569
  %571 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %566
  store <4 x float> %570, ptr %571, align 16, !tbaa !13
  %572 = add nuw nsw i64 %566, 4
  %573 = add <4 x i32> %567, <i32 4, i32 4, i32 4, i32 4>
  %574 = icmp eq i64 %572, 32000
  br i1 %574, label %3386, label %565, !llvm.loop !81

575:                                              ; preds = %536
  %576 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.23) #12
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %578, label %618

578:                                              ; preds = %578, %575
  %579 = phi i64 [ %581, %578 ], [ 0, %575 ]
  %580 = getelementptr inbounds float, ptr @global_data, i64 %579
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %580, align 16, !tbaa !13
  %581 = add nuw nsw i64 %579, 4
  %582 = icmp eq i64 %581, 32000
  br i1 %582, label %583, label %578, !llvm.loop !82

583:                                              ; preds = %583, %578
  %584 = phi i64 [ %586, %583 ], [ 0, %578 ]
  %585 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %584
  store float 1.000000e+00, ptr %585, align 8, !tbaa !13
  %586 = add nuw nsw i64 %584, 2
  %587 = icmp ult i64 %584, 31998
  br i1 %587, label %583, label %588

588:                                              ; preds = %588, %583
  %589 = phi i64 [ %591, %588 ], [ 0, %583 ]
  %590 = getelementptr inbounds float, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 1), i64 %589
  store float -1.000000e+00, ptr %590, align 4, !tbaa !13
  %591 = add nuw nsw i64 %589, 2
  %592 = icmp ult i64 %589, 31998
  br i1 %592, label %588, label %593

593:                                              ; preds = %593, %588
  %594 = phi i64 [ %596, %593 ], [ 0, %588 ]
  %595 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %594
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %595, align 16, !tbaa !13
  %596 = add nuw nsw i64 %594, 4
  %597 = icmp eq i64 %596, 32000
  br i1 %597, label %598, label %593, !llvm.loop !83

598:                                              ; preds = %598, %593
  %599 = phi i64 [ %605, %598 ], [ 0, %593 ]
  %600 = phi <4 x i32> [ %606, %598 ], [ <i32 0, i32 1, i32 2, i32 3>, %593 ]
  %601 = add <4 x i32> %600, <i32 1, i32 1, i32 1, i32 1>
  %602 = sitofp <4 x i32> %601 to <4 x float>
  %603 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %602
  %604 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %599
  store <4 x float> %603, ptr %604, align 16, !tbaa !13
  %605 = add nuw nsw i64 %599, 4
  %606 = add <4 x i32> %600, <i32 4, i32 4, i32 4, i32 4>
  %607 = icmp eq i64 %605, 32000
  br i1 %607, label %608, label %598, !llvm.loop !84

608:                                              ; preds = %608, %598
  %609 = phi i64 [ %615, %608 ], [ 0, %598 ]
  %610 = phi <4 x i32> [ %616, %608 ], [ <i32 0, i32 1, i32 2, i32 3>, %598 ]
  %611 = add <4 x i32> %610, <i32 1, i32 1, i32 1, i32 1>
  %612 = sitofp <4 x i32> %611 to <4 x float>
  %613 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %612
  %614 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %609
  store <4 x float> %613, ptr %614, align 16, !tbaa !13
  %615 = add nuw nsw i64 %609, 4
  %616 = add <4 x i32> %610, <i32 4, i32 4, i32 4, i32 4>
  %617 = icmp eq i64 %615, 32000
  br i1 %617, label %3386, label %608, !llvm.loop !85

618:                                              ; preds = %575
  %619 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.24) #12
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %621, label %646

621:                                              ; preds = %621, %618
  %622 = phi i64 [ %624, %621 ], [ 0, %618 ]
  %623 = getelementptr inbounds float, ptr @global_data, i64 %622
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %623, align 16, !tbaa !13
  %624 = add nuw nsw i64 %622, 4
  %625 = icmp eq i64 %624, 32000
  br i1 %625, label %626, label %621, !llvm.loop !86

626:                                              ; preds = %626, %621
  %627 = phi i64 [ %633, %626 ], [ 0, %621 ]
  %628 = phi <4 x i32> [ %634, %626 ], [ <i32 0, i32 1, i32 2, i32 3>, %621 ]
  %629 = add <4 x i32> %628, <i32 1, i32 1, i32 1, i32 1>
  %630 = sitofp <4 x i32> %629 to <4 x float>
  %631 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %630
  %632 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %627
  store <4 x float> %631, ptr %632, align 16, !tbaa !13
  %633 = add nuw nsw i64 %627, 4
  %634 = add <4 x i32> %628, <i32 4, i32 4, i32 4, i32 4>
  %635 = icmp eq i64 %633, 32000
  br i1 %635, label %636, label %626, !llvm.loop !87

636:                                              ; preds = %636, %626
  %637 = phi i64 [ %643, %636 ], [ 0, %626 ]
  %638 = phi <4 x i32> [ %644, %636 ], [ <i32 0, i32 1, i32 2, i32 3>, %626 ]
  %639 = add <4 x i32> %638, <i32 1, i32 1, i32 1, i32 1>
  %640 = sitofp <4 x i32> %639 to <4 x float>
  %641 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %640
  %642 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %637
  store <4 x float> %641, ptr %642, align 16, !tbaa !13
  %643 = add nuw nsw i64 %637, 4
  %644 = add <4 x i32> %638, <i32 4, i32 4, i32 4, i32 4>
  %645 = icmp eq i64 %643, 32000
  br i1 %645, label %3386, label %636, !llvm.loop !88

646:                                              ; preds = %618
  %647 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.25) #12
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %649, label %665

649:                                              ; preds = %649, %646
  %650 = phi i64 [ %652, %649 ], [ 0, %646 ]
  %651 = getelementptr inbounds float, ptr @global_data, i64 %650
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %651, align 16, !tbaa !13
  %652 = add nuw nsw i64 %650, 4
  %653 = icmp eq i64 %652, 32000
  br i1 %653, label %654, label %649, !llvm.loop !89

654:                                              ; preds = %654, %649
  %655 = phi i64 [ %662, %654 ], [ 0, %649 ]
  %656 = phi <4 x i32> [ %663, %654 ], [ <i32 0, i32 1, i32 2, i32 3>, %649 ]
  %657 = add <4 x i32> %656, <i32 1, i32 1, i32 1, i32 1>
  %658 = mul <4 x i32> %657, %657
  %659 = sitofp <4 x i32> %658 to <4 x float>
  %660 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %659
  %661 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %655
  store <4 x float> %660, ptr %661, align 16, !tbaa !13
  %662 = add nuw nsw i64 %655, 4
  %663 = add <4 x i32> %656, <i32 4, i32 4, i32 4, i32 4>
  %664 = icmp eq i64 %662, 32000
  br i1 %664, label %3386, label %654, !llvm.loop !90

665:                                              ; preds = %646
  %666 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.26) #12
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %668, label %684

668:                                              ; preds = %668, %665
  %669 = phi i64 [ %671, %668 ], [ 0, %665 ]
  %670 = getelementptr inbounds float, ptr @global_data, i64 %669
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %670, align 16, !tbaa !13
  %671 = add nuw nsw i64 %669, 4
  %672 = icmp eq i64 %671, 32000
  br i1 %672, label %673, label %668, !llvm.loop !91

673:                                              ; preds = %673, %668
  %674 = phi i64 [ %681, %673 ], [ 0, %668 ]
  %675 = phi <4 x i32> [ %682, %673 ], [ <i32 0, i32 1, i32 2, i32 3>, %668 ]
  %676 = add <4 x i32> %675, <i32 1, i32 1, i32 1, i32 1>
  %677 = mul <4 x i32> %676, %676
  %678 = sitofp <4 x i32> %677 to <4 x float>
  %679 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %678
  %680 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %674
  store <4 x float> %679, ptr %680, align 16, !tbaa !13
  %681 = add nuw nsw i64 %674, 4
  %682 = add <4 x i32> %675, <i32 4, i32 4, i32 4, i32 4>
  %683 = icmp eq i64 %681, 32000
  br i1 %683, label %3386, label %673, !llvm.loop !92

684:                                              ; preds = %665
  %685 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.27) #12
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %687, label %703

687:                                              ; preds = %687, %684
  %688 = phi i64 [ %690, %687 ], [ 0, %684 ]
  %689 = getelementptr inbounds float, ptr @global_data, i64 %688
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %689, align 16, !tbaa !13
  %690 = add nuw nsw i64 %688, 4
  %691 = icmp eq i64 %690, 32000
  br i1 %691, label %692, label %687, !llvm.loop !93

692:                                              ; preds = %692, %687
  %693 = phi i64 [ %700, %692 ], [ 0, %687 ]
  %694 = phi <4 x i32> [ %701, %692 ], [ <i32 0, i32 1, i32 2, i32 3>, %687 ]
  %695 = add <4 x i32> %694, <i32 1, i32 1, i32 1, i32 1>
  %696 = mul <4 x i32> %695, %695
  %697 = sitofp <4 x i32> %696 to <4 x float>
  %698 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %697
  %699 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %693
  store <4 x float> %698, ptr %699, align 16, !tbaa !13
  %700 = add nuw nsw i64 %693, 4
  %701 = add <4 x i32> %694, <i32 4, i32 4, i32 4, i32 4>
  %702 = icmp eq i64 %700, 32000
  br i1 %702, label %3386, label %692, !llvm.loop !94

703:                                              ; preds = %684
  %704 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.28) #12
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %706, label %722

706:                                              ; preds = %706, %703
  %707 = phi i64 [ %709, %706 ], [ 0, %703 ]
  %708 = getelementptr inbounds float, ptr @global_data, i64 %707
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %708, align 16, !tbaa !13
  %709 = add nuw nsw i64 %707, 4
  %710 = icmp eq i64 %709, 32000
  br i1 %710, label %711, label %706, !llvm.loop !95

711:                                              ; preds = %711, %706
  %712 = phi i64 [ %719, %711 ], [ 0, %706 ]
  %713 = phi <4 x i32> [ %720, %711 ], [ <i32 0, i32 1, i32 2, i32 3>, %706 ]
  %714 = add <4 x i32> %713, <i32 1, i32 1, i32 1, i32 1>
  %715 = mul <4 x i32> %714, %714
  %716 = sitofp <4 x i32> %715 to <4 x float>
  %717 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %716
  %718 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %712
  store <4 x float> %717, ptr %718, align 16, !tbaa !13
  %719 = add nuw nsw i64 %712, 4
  %720 = add <4 x i32> %713, <i32 4, i32 4, i32 4, i32 4>
  %721 = icmp eq i64 %719, 32000
  br i1 %721, label %3386, label %711, !llvm.loop !96

722:                                              ; preds = %703
  %723 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.29) #12
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %725, label %741

725:                                              ; preds = %725, %722
  %726 = phi i64 [ %728, %725 ], [ 0, %722 ]
  %727 = getelementptr inbounds float, ptr @global_data, i64 %726
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %727, align 16, !tbaa !13
  %728 = add nuw nsw i64 %726, 4
  %729 = icmp eq i64 %728, 32000
  br i1 %729, label %730, label %725, !llvm.loop !97

730:                                              ; preds = %730, %725
  %731 = phi i64 [ %738, %730 ], [ 0, %725 ]
  %732 = phi <4 x i32> [ %739, %730 ], [ <i32 0, i32 1, i32 2, i32 3>, %725 ]
  %733 = add <4 x i32> %732, <i32 1, i32 1, i32 1, i32 1>
  %734 = mul <4 x i32> %733, %733
  %735 = sitofp <4 x i32> %734 to <4 x float>
  %736 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %735
  %737 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %731
  store <4 x float> %736, ptr %737, align 16, !tbaa !13
  %738 = add nuw nsw i64 %731, 4
  %739 = add <4 x i32> %732, <i32 4, i32 4, i32 4, i32 4>
  %740 = icmp eq i64 %738, 32000
  br i1 %740, label %3386, label %730, !llvm.loop !98

741:                                              ; preds = %722
  %742 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.30) #12
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %744, label %769

744:                                              ; preds = %744, %741
  %745 = phi i64 [ %747, %744 ], [ 0, %741 ]
  %746 = getelementptr inbounds float, ptr @global_data, i64 %745
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %746, align 16, !tbaa !13
  %747 = add nuw nsw i64 %745, 4
  %748 = icmp eq i64 %747, 32000
  br i1 %748, label %749, label %744, !llvm.loop !99

749:                                              ; preds = %749, %744
  %750 = phi i64 [ %756, %749 ], [ 0, %744 ]
  %751 = phi <4 x i32> [ %757, %749 ], [ <i32 0, i32 1, i32 2, i32 3>, %744 ]
  %752 = add <4 x i32> %751, <i32 1, i32 1, i32 1, i32 1>
  %753 = sitofp <4 x i32> %752 to <4 x float>
  %754 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %753
  %755 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %750
  store <4 x float> %754, ptr %755, align 16, !tbaa !13
  %756 = add nuw nsw i64 %750, 4
  %757 = add <4 x i32> %751, <i32 4, i32 4, i32 4, i32 4>
  %758 = icmp eq i64 %756, 32000
  br i1 %758, label %759, label %749, !llvm.loop !100

759:                                              ; preds = %759, %749
  %760 = phi i64 [ %766, %759 ], [ 0, %749 ]
  %761 = phi <4 x i32> [ %767, %759 ], [ <i32 0, i32 1, i32 2, i32 3>, %749 ]
  %762 = add <4 x i32> %761, <i32 1, i32 1, i32 1, i32 1>
  %763 = sitofp <4 x i32> %762 to <4 x float>
  %764 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %763
  %765 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %760
  store <4 x float> %764, ptr %765, align 16, !tbaa !13
  %766 = add nuw nsw i64 %760, 4
  %767 = add <4 x i32> %761, <i32 4, i32 4, i32 4, i32 4>
  %768 = icmp eq i64 %766, 32000
  br i1 %768, label %3386, label %759, !llvm.loop !101

769:                                              ; preds = %741
  %770 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.31) #12
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %772, label %808

772:                                              ; preds = %769
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %773

773:                                              ; preds = %773, %772
  %774 = phi i64 [ 0, %772 ], [ %776, %773 ]
  %775 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %774
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %775, align 16, !tbaa !13
  %776 = add nuw nsw i64 %774, 4
  %777 = icmp eq i64 %776, 32000
  br i1 %777, label %778, label %773, !llvm.loop !102

778:                                              ; preds = %778, %773
  %779 = phi i64 [ %785, %778 ], [ 0, %773 ]
  %780 = phi <4 x i32> [ %786, %778 ], [ <i32 0, i32 1, i32 2, i32 3>, %773 ]
  %781 = add <4 x i32> %780, <i32 1, i32 1, i32 1, i32 1>
  %782 = sitofp <4 x i32> %781 to <4 x float>
  %783 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %782
  %784 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %779
  store <4 x float> %783, ptr %784, align 16, !tbaa !13
  %785 = add nuw nsw i64 %779, 4
  %786 = add <4 x i32> %780, <i32 4, i32 4, i32 4, i32 4>
  %787 = icmp eq i64 %785, 32000
  br i1 %787, label %788, label %778, !llvm.loop !103

788:                                              ; preds = %788, %778
  %789 = phi i64 [ %795, %788 ], [ 0, %778 ]
  %790 = phi <4 x i32> [ %796, %788 ], [ <i32 0, i32 1, i32 2, i32 3>, %778 ]
  %791 = add <4 x i32> %790, <i32 1, i32 1, i32 1, i32 1>
  %792 = sitofp <4 x i32> %791 to <4 x float>
  %793 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %792
  %794 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %789
  store <4 x float> %793, ptr %794, align 16, !tbaa !13
  %795 = add nuw nsw i64 %789, 4
  %796 = add <4 x i32> %790, <i32 4, i32 4, i32 4, i32 4>
  %797 = icmp eq i64 %795, 32000
  br i1 %797, label %798, label %788, !llvm.loop !104

798:                                              ; preds = %798, %788
  %799 = phi i64 [ %805, %798 ], [ 0, %788 ]
  %800 = phi <4 x i32> [ %806, %798 ], [ <i32 0, i32 1, i32 2, i32 3>, %788 ]
  %801 = add <4 x i32> %800, <i32 1, i32 1, i32 1, i32 1>
  %802 = sitofp <4 x i32> %801 to <4 x float>
  %803 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %802
  %804 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %799
  store <4 x float> %803, ptr %804, align 16, !tbaa !13
  %805 = add nuw nsw i64 %799, 4
  %806 = add <4 x i32> %800, <i32 4, i32 4, i32 4, i32 4>
  %807 = icmp eq i64 %805, 32000
  br i1 %807, label %3386, label %798, !llvm.loop !105

808:                                              ; preds = %769
  %809 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.32) #12
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %811, label %841

811:                                              ; preds = %811, %808
  %812 = phi i64 [ %818, %811 ], [ 0, %808 ]
  %813 = phi <4 x i32> [ %819, %811 ], [ <i32 0, i32 1, i32 2, i32 3>, %808 ]
  %814 = add <4 x i32> %813, <i32 1, i32 1, i32 1, i32 1>
  %815 = sitofp <4 x i32> %814 to <4 x float>
  %816 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %815
  %817 = getelementptr inbounds float, ptr @global_data, i64 %812
  store <4 x float> %816, ptr %817, align 16, !tbaa !13
  %818 = add nuw nsw i64 %812, 4
  %819 = add <4 x i32> %813, <i32 4, i32 4, i32 4, i32 4>
  %820 = icmp eq i64 %818, 32000
  br i1 %820, label %821, label %811, !llvm.loop !106

821:                                              ; preds = %821, %811
  %822 = phi i64 [ %824, %821 ], [ 0, %811 ]
  %823 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %822
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %823, align 16, !tbaa !13
  %824 = add nuw nsw i64 %822, 4
  %825 = icmp eq i64 %824, 32000
  br i1 %825, label %826, label %821, !llvm.loop !107

826:                                              ; preds = %826, %821
  %827 = phi i64 [ %829, %826 ], [ 0, %821 ]
  %828 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %827
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %828, align 16, !tbaa !13
  %829 = add nuw nsw i64 %827, 4
  %830 = icmp eq i64 %829, 32000
  br i1 %830, label %831, label %826, !llvm.loop !108

831:                                              ; preds = %831, %826
  %832 = phi i64 [ %838, %831 ], [ 0, %826 ]
  %833 = phi <4 x i32> [ %839, %831 ], [ <i32 0, i32 1, i32 2, i32 3>, %826 ]
  %834 = add <4 x i32> %833, <i32 1, i32 1, i32 1, i32 1>
  %835 = sitofp <4 x i32> %834 to <4 x float>
  %836 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %835
  %837 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %832
  store <4 x float> %836, ptr %837, align 16, !tbaa !13
  %838 = add nuw nsw i64 %832, 4
  %839 = add <4 x i32> %833, <i32 4, i32 4, i32 4, i32 4>
  %840 = icmp eq i64 %838, 32000
  br i1 %840, label %3386, label %831, !llvm.loop !109

841:                                              ; preds = %808
  %842 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.33) #12
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %844, label %879

844:                                              ; preds = %844, %841
  %845 = phi i64 [ %847, %844 ], [ 0, %841 ]
  %846 = getelementptr inbounds float, ptr @global_data, i64 %845
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %846, align 16, !tbaa !13
  %847 = add nuw nsw i64 %845, 4
  %848 = icmp eq i64 %847, 32000
  br i1 %848, label %849, label %844, !llvm.loop !110

849:                                              ; preds = %849, %844
  %850 = phi i64 [ %856, %849 ], [ 0, %844 ]
  %851 = phi <4 x i32> [ %857, %849 ], [ <i32 0, i32 1, i32 2, i32 3>, %844 ]
  %852 = add <4 x i32> %851, <i32 1, i32 1, i32 1, i32 1>
  %853 = sitofp <4 x i32> %852 to <4 x float>
  %854 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %853
  %855 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %850
  store <4 x float> %854, ptr %855, align 16, !tbaa !13
  %856 = add nuw nsw i64 %850, 4
  %857 = add <4 x i32> %851, <i32 4, i32 4, i32 4, i32 4>
  %858 = icmp eq i64 %856, 32000
  br i1 %858, label %859, label %849, !llvm.loop !111

859:                                              ; preds = %859, %849
  %860 = phi i64 [ %866, %859 ], [ 0, %849 ]
  %861 = phi <4 x i32> [ %867, %859 ], [ <i32 0, i32 1, i32 2, i32 3>, %849 ]
  %862 = add <4 x i32> %861, <i32 1, i32 1, i32 1, i32 1>
  %863 = sitofp <4 x i32> %862 to <4 x float>
  %864 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %863
  %865 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %860
  store <4 x float> %864, ptr %865, align 16, !tbaa !13
  %866 = add nuw nsw i64 %860, 4
  %867 = add <4 x i32> %861, <i32 4, i32 4, i32 4, i32 4>
  %868 = icmp eq i64 %866, 32000
  br i1 %868, label %869, label %859, !llvm.loop !112

869:                                              ; preds = %869, %859
  %870 = phi i64 [ %876, %869 ], [ 0, %859 ]
  %871 = phi <4 x i32> [ %877, %869 ], [ <i32 0, i32 1, i32 2, i32 3>, %859 ]
  %872 = add <4 x i32> %871, <i32 1, i32 1, i32 1, i32 1>
  %873 = sitofp <4 x i32> %872 to <4 x float>
  %874 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %873
  %875 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %870
  store <4 x float> %874, ptr %875, align 16, !tbaa !13
  %876 = add nuw nsw i64 %870, 4
  %877 = add <4 x i32> %871, <i32 4, i32 4, i32 4, i32 4>
  %878 = icmp eq i64 %876, 32000
  br i1 %878, label %3386, label %869, !llvm.loop !113

879:                                              ; preds = %841
  %880 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.34) #12
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %882, label %893

882:                                              ; preds = %879
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %883

883:                                              ; preds = %883, %882
  %884 = phi i64 [ 0, %882 ], [ %886, %883 ]
  %885 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %884
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %885, align 16, !tbaa !13
  %886 = add nuw nsw i64 %884, 4
  %887 = icmp eq i64 %886, 32000
  br i1 %887, label %888, label %883, !llvm.loop !114

888:                                              ; preds = %888, %883
  %889 = phi i64 [ %891, %888 ], [ 0, %883 ]
  %890 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %889
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %890, align 16, !tbaa !13
  %891 = add nuw nsw i64 %889, 4
  %892 = icmp eq i64 %891, 32000
  br i1 %892, label %3386, label %888, !llvm.loop !115

893:                                              ; preds = %879
  %894 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.35) #12
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %896, label %922

896:                                              ; preds = %903, %893
  %897 = phi i64 [ %904, %903 ], [ 0, %893 ]
  br label %898

898:                                              ; preds = %898, %896
  %899 = phi i64 [ 0, %896 ], [ %901, %898 ]
  %900 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %897, i64 %899
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %900, align 16, !tbaa !13
  %901 = add nuw nsw i64 %899, 4
  %902 = icmp eq i64 %901, 256
  br i1 %902, label %903, label %898, !llvm.loop !116

903:                                              ; preds = %898
  %904 = add nuw nsw i64 %897, 1
  %905 = icmp eq i64 %904, 256
  br i1 %905, label %906, label %896

906:                                              ; preds = %920, %903
  %907 = phi i64 [ %908, %920 ], [ 0, %903 ]
  %908 = add nuw nsw i64 %907, 1
  %909 = trunc i64 %908 to i32
  %910 = mul nsw i32 %909, %909
  %911 = sitofp i32 %910 to float
  %912 = fdiv float 1.000000e+00, %911
  %913 = insertelement <4 x float> poison, float %912, i64 0
  %914 = shufflevector <4 x float> %913, <4 x float> poison, <4 x i32> zeroinitializer
  br label %915

915:                                              ; preds = %915, %906
  %916 = phi i64 [ 0, %906 ], [ %918, %915 ]
  %917 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %907, i64 %916
  store <4 x float> %914, ptr %917, align 16, !tbaa !13
  %918 = add nuw nsw i64 %916, 4
  %919 = icmp eq i64 %918, 256
  br i1 %919, label %920, label %915, !llvm.loop !117

920:                                              ; preds = %915
  %921 = icmp eq i64 %908, 256
  br i1 %921, label %3386, label %906

922:                                              ; preds = %893
  %923 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.36) #12
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %925, label %936

925:                                              ; preds = %932, %922
  %926 = phi i64 [ %933, %932 ], [ 0, %922 ]
  br label %927

927:                                              ; preds = %927, %925
  %928 = phi i64 [ 0, %925 ], [ %930, %927 ]
  %929 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %926, i64 %928
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %929, align 16, !tbaa !13
  %930 = add nuw nsw i64 %928, 4
  %931 = icmp eq i64 %930, 256
  br i1 %931, label %932, label %927, !llvm.loop !118

932:                                              ; preds = %927
  %933 = add nuw nsw i64 %926, 1
  %934 = icmp eq i64 %933, 256
  br i1 %934, label %935, label %925

935:                                              ; preds = %932
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(262144) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i8 0, i64 262144, i1 false), !tbaa !13
  br label %3386

936:                                              ; preds = %922
  %937 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.37) #12
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %939, label %984

939:                                              ; preds = %952, %936
  %940 = phi i64 [ %941, %952 ], [ 0, %936 ]
  %941 = add nuw nsw i64 %940, 1
  %942 = trunc i64 %941 to i32
  %943 = sitofp i32 %942 to float
  %944 = fdiv float 1.000000e+00, %943
  %945 = insertelement <4 x float> poison, float %944, i64 0
  %946 = shufflevector <4 x float> %945, <4 x float> poison, <4 x i32> zeroinitializer
  br label %947

947:                                              ; preds = %947, %939
  %948 = phi i64 [ 0, %939 ], [ %950, %947 ]
  %949 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %940, i64 %948
  store <4 x float> %946, ptr %949, align 16, !tbaa !13
  %950 = add nuw nsw i64 %948, 4
  %951 = icmp eq i64 %950, 256
  br i1 %951, label %952, label %947, !llvm.loop !119

952:                                              ; preds = %947
  %953 = icmp eq i64 %941, 256
  br i1 %953, label %954, label %939

954:                                              ; preds = %967, %952
  %955 = phi i64 [ %956, %967 ], [ 0, %952 ]
  %956 = add nuw nsw i64 %955, 1
  %957 = trunc i64 %956 to i32
  %958 = sitofp i32 %957 to float
  %959 = fdiv float 1.000000e+00, %958
  %960 = insertelement <4 x float> poison, float %959, i64 0
  %961 = shufflevector <4 x float> %960, <4 x float> poison, <4 x i32> zeroinitializer
  br label %962

962:                                              ; preds = %962, %954
  %963 = phi i64 [ 0, %954 ], [ %965, %962 ]
  %964 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %955, i64 %963
  store <4 x float> %961, ptr %964, align 16, !tbaa !13
  %965 = add nuw nsw i64 %963, 4
  %966 = icmp eq i64 %965, 256
  br i1 %966, label %967, label %962, !llvm.loop !120

967:                                              ; preds = %962
  %968 = icmp eq i64 %956, 256
  br i1 %968, label %969, label %954

969:                                              ; preds = %982, %967
  %970 = phi i64 [ %971, %982 ], [ 0, %967 ]
  %971 = add nuw nsw i64 %970, 1
  %972 = trunc i64 %971 to i32
  %973 = sitofp i32 %972 to float
  %974 = fdiv float 1.000000e+00, %973
  %975 = insertelement <4 x float> poison, float %974, i64 0
  %976 = shufflevector <4 x float> %975, <4 x float> poison, <4 x i32> zeroinitializer
  br label %977

977:                                              ; preds = %977, %969
  %978 = phi i64 [ 0, %969 ], [ %980, %977 ]
  %979 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %970, i64 %978
  store <4 x float> %976, ptr %979, align 16, !tbaa !13
  %980 = add nuw nsw i64 %978, 4
  %981 = icmp eq i64 %980, 256
  br i1 %981, label %982, label %977, !llvm.loop !121

982:                                              ; preds = %977
  %983 = icmp eq i64 %971, 256
  br i1 %983, label %3386, label %969

984:                                              ; preds = %936
  %985 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.38) #12
  %986 = icmp eq i32 %985, 0
  br i1 %986, label %987, label %1027

987:                                              ; preds = %994, %984
  %988 = phi i64 [ %995, %994 ], [ 0, %984 ]
  br label %989

989:                                              ; preds = %989, %987
  %990 = phi i64 [ 0, %987 ], [ %992, %989 ]
  %991 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %988, i64 %990
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %991, align 16, !tbaa !13
  %992 = add nuw nsw i64 %990, 4
  %993 = icmp eq i64 %992, 256
  br i1 %993, label %994, label %989, !llvm.loop !122

994:                                              ; preds = %989
  %995 = add nuw nsw i64 %988, 1
  %996 = icmp eq i64 %995, 256
  br i1 %996, label %997, label %987

997:                                              ; preds = %1010, %994
  %998 = phi i64 [ %999, %1010 ], [ 0, %994 ]
  %999 = add nuw nsw i64 %998, 1
  %1000 = trunc i64 %999 to i32
  %1001 = sitofp i32 %1000 to float
  %1002 = fdiv float 1.000000e+00, %1001
  %1003 = insertelement <4 x float> poison, float %1002, i64 0
  %1004 = shufflevector <4 x float> %1003, <4 x float> poison, <4 x i32> zeroinitializer
  br label %1005

1005:                                             ; preds = %1005, %997
  %1006 = phi i64 [ 0, %997 ], [ %1008, %1005 ]
  %1007 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %998, i64 %1006
  store <4 x float> %1004, ptr %1007, align 16, !tbaa !13
  %1008 = add nuw nsw i64 %1006, 4
  %1009 = icmp eq i64 %1008, 256
  br i1 %1009, label %1010, label %1005, !llvm.loop !123

1010:                                             ; preds = %1005
  %1011 = icmp eq i64 %999, 256
  br i1 %1011, label %1012, label %997

1012:                                             ; preds = %1025, %1010
  %1013 = phi i64 [ %1014, %1025 ], [ 0, %1010 ]
  %1014 = add nuw nsw i64 %1013, 1
  %1015 = trunc i64 %1014 to i32
  %1016 = sitofp i32 %1015 to float
  %1017 = fdiv float 1.000000e+00, %1016
  %1018 = insertelement <4 x float> poison, float %1017, i64 0
  %1019 = shufflevector <4 x float> %1018, <4 x float> poison, <4 x i32> zeroinitializer
  br label %1020

1020:                                             ; preds = %1020, %1012
  %1021 = phi i64 [ 0, %1012 ], [ %1023, %1020 ]
  %1022 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %1013, i64 %1021
  store <4 x float> %1019, ptr %1022, align 16, !tbaa !13
  %1023 = add nuw nsw i64 %1021, 4
  %1024 = icmp eq i64 %1023, 256
  br i1 %1024, label %1025, label %1020, !llvm.loop !124

1025:                                             ; preds = %1020
  %1026 = icmp eq i64 %1014, 256
  br i1 %1026, label %3386, label %1012

1027:                                             ; preds = %984
  %1028 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.39) #12
  %1029 = icmp eq i32 %1028, 0
  br i1 %1029, label %1030, label %1081

1030:                                             ; preds = %1030, %1027
  %1031 = phi i64 [ %1033, %1030 ], [ 0, %1027 ]
  %1032 = getelementptr inbounds float, ptr @global_data, i64 %1031
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1032, align 16, !tbaa !13
  %1033 = add nuw nsw i64 %1031, 4
  %1034 = icmp eq i64 %1033, 32000
  br i1 %1034, label %1035, label %1030, !llvm.loop !125

1035:                                             ; preds = %1035, %1030
  %1036 = phi i64 [ %1042, %1035 ], [ 0, %1030 ]
  %1037 = phi <4 x i32> [ %1043, %1035 ], [ <i32 0, i32 1, i32 2, i32 3>, %1030 ]
  %1038 = add <4 x i32> %1037, <i32 1, i32 1, i32 1, i32 1>
  %1039 = sitofp <4 x i32> %1038 to <4 x float>
  %1040 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1039
  %1041 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1036
  store <4 x float> %1040, ptr %1041, align 16, !tbaa !13
  %1042 = add nuw nsw i64 %1036, 4
  %1043 = add <4 x i32> %1037, <i32 4, i32 4, i32 4, i32 4>
  %1044 = icmp eq i64 %1042, 32000
  br i1 %1044, label %1045, label %1035, !llvm.loop !126

1045:                                             ; preds = %1045, %1035
  %1046 = phi i64 [ %1052, %1045 ], [ 0, %1035 ]
  %1047 = phi <4 x i32> [ %1053, %1045 ], [ <i32 0, i32 1, i32 2, i32 3>, %1035 ]
  %1048 = add <4 x i32> %1047, <i32 1, i32 1, i32 1, i32 1>
  %1049 = sitofp <4 x i32> %1048 to <4 x float>
  %1050 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1049
  %1051 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1046
  store <4 x float> %1050, ptr %1051, align 16, !tbaa !13
  %1052 = add nuw nsw i64 %1046, 4
  %1053 = add <4 x i32> %1047, <i32 4, i32 4, i32 4, i32 4>
  %1054 = icmp eq i64 %1052, 32000
  br i1 %1054, label %1055, label %1045, !llvm.loop !127

1055:                                             ; preds = %1062, %1045
  %1056 = phi i64 [ %1063, %1062 ], [ 0, %1045 ]
  br label %1057

1057:                                             ; preds = %1057, %1055
  %1058 = phi i64 [ 0, %1055 ], [ %1060, %1057 ]
  %1059 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1056, i64 %1058
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1059, align 16, !tbaa !13
  %1060 = add nuw nsw i64 %1058, 4
  %1061 = icmp eq i64 %1060, 256
  br i1 %1061, label %1062, label %1057, !llvm.loop !128

1062:                                             ; preds = %1057
  %1063 = add nuw nsw i64 %1056, 1
  %1064 = icmp eq i64 %1063, 256
  br i1 %1064, label %1065, label %1055

1065:                                             ; preds = %1079, %1062
  %1066 = phi i64 [ %1067, %1079 ], [ 0, %1062 ]
  %1067 = add nuw nsw i64 %1066, 1
  %1068 = trunc i64 %1067 to i32
  %1069 = mul nsw i32 %1068, %1068
  %1070 = sitofp i32 %1069 to float
  %1071 = fdiv float 1.000000e+00, %1070
  %1072 = insertelement <4 x float> poison, float %1071, i64 0
  %1073 = shufflevector <4 x float> %1072, <4 x float> poison, <4 x i32> zeroinitializer
  br label %1074

1074:                                             ; preds = %1074, %1065
  %1075 = phi i64 [ 0, %1065 ], [ %1077, %1074 ]
  %1076 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %1066, i64 %1075
  store <4 x float> %1073, ptr %1076, align 16, !tbaa !13
  %1077 = add nuw nsw i64 %1075, 4
  %1078 = icmp eq i64 %1077, 256
  br i1 %1078, label %1079, label %1074, !llvm.loop !129

1079:                                             ; preds = %1074
  %1080 = icmp eq i64 %1067, 256
  br i1 %1080, label %3386, label %1065

1081:                                             ; preds = %1027
  %1082 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.40) #12
  %1083 = icmp eq i32 %1082, 0
  br i1 %1083, label %1084, label %1104

1084:                                             ; preds = %1084, %1081
  %1085 = phi i64 [ %1087, %1084 ], [ 0, %1081 ]
  %1086 = getelementptr inbounds float, ptr @global_data, i64 %1085
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1086, align 16, !tbaa !13
  %1087 = add nuw nsw i64 %1085, 4
  %1088 = icmp eq i64 %1087, 32000
  br i1 %1088, label %1089, label %1084, !llvm.loop !130

1089:                                             ; preds = %1089, %1084
  %1090 = phi i64 [ %1092, %1089 ], [ 0, %1084 ]
  %1091 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1090
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1091, align 16, !tbaa !13
  %1092 = add nuw nsw i64 %1090, 4
  %1093 = icmp eq i64 %1092, 32000
  br i1 %1093, label %1094, label %1089, !llvm.loop !131

1094:                                             ; preds = %1094, %1089
  %1095 = phi i64 [ %1097, %1094 ], [ 0, %1089 ]
  %1096 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1095
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1096, align 16, !tbaa !13
  %1097 = add nuw nsw i64 %1095, 4
  %1098 = icmp eq i64 %1097, 32000
  br i1 %1098, label %1099, label %1094, !llvm.loop !132

1099:                                             ; preds = %1099, %1094
  %1100 = phi i64 [ %1102, %1099 ], [ 0, %1094 ]
  %1101 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1100
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1101, align 16, !tbaa !13
  %1102 = add nuw nsw i64 %1100, 4
  %1103 = icmp eq i64 %1102, 32000
  br i1 %1103, label %3386, label %1099, !llvm.loop !133

1104:                                             ; preds = %1081
  %1105 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.41) #12
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1107, label %1127

1107:                                             ; preds = %1107, %1104
  %1108 = phi i64 [ %1110, %1107 ], [ 0, %1104 ]
  %1109 = getelementptr inbounds float, ptr @global_data, i64 %1108
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1109, align 16, !tbaa !13
  %1110 = add nuw nsw i64 %1108, 4
  %1111 = icmp eq i64 %1110, 32000
  br i1 %1111, label %1112, label %1107, !llvm.loop !134

1112:                                             ; preds = %1112, %1107
  %1113 = phi i64 [ %1115, %1112 ], [ 0, %1107 ]
  %1114 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1113
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1114, align 16, !tbaa !13
  %1115 = add nuw nsw i64 %1113, 4
  %1116 = icmp eq i64 %1115, 32000
  br i1 %1116, label %1117, label %1112, !llvm.loop !135

1117:                                             ; preds = %1117, %1112
  %1118 = phi i64 [ %1120, %1117 ], [ 0, %1112 ]
  %1119 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1118
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1119, align 16, !tbaa !13
  %1120 = add nuw nsw i64 %1118, 4
  %1121 = icmp eq i64 %1120, 32000
  br i1 %1121, label %1122, label %1117, !llvm.loop !136

1122:                                             ; preds = %1122, %1117
  %1123 = phi i64 [ %1125, %1122 ], [ 0, %1117 ]
  %1124 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1123
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1124, align 16, !tbaa !13
  %1125 = add nuw nsw i64 %1123, 4
  %1126 = icmp eq i64 %1125, 32000
  br i1 %1126, label %3386, label %1122, !llvm.loop !137

1127:                                             ; preds = %1104
  %1128 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.42) #12
  %1129 = icmp eq i32 %1128, 0
  br i1 %1129, label %1130, label %1166

1130:                                             ; preds = %1127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %1131

1131:                                             ; preds = %1131, %1130
  %1132 = phi i64 [ 0, %1130 ], [ %1134, %1131 ]
  %1133 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1132
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1133, align 16, !tbaa !13
  %1134 = add nuw nsw i64 %1132, 4
  %1135 = icmp eq i64 %1134, 32000
  br i1 %1135, label %1136, label %1131, !llvm.loop !138

1136:                                             ; preds = %1136, %1131
  %1137 = phi i64 [ %1143, %1136 ], [ 0, %1131 ]
  %1138 = phi <4 x i32> [ %1144, %1136 ], [ <i32 0, i32 1, i32 2, i32 3>, %1131 ]
  %1139 = add <4 x i32> %1138, <i32 1, i32 1, i32 1, i32 1>
  %1140 = sitofp <4 x i32> %1139 to <4 x float>
  %1141 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1140
  %1142 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1137
  store <4 x float> %1141, ptr %1142, align 16, !tbaa !13
  %1143 = add nuw nsw i64 %1137, 4
  %1144 = add <4 x i32> %1138, <i32 4, i32 4, i32 4, i32 4>
  %1145 = icmp eq i64 %1143, 32000
  br i1 %1145, label %1146, label %1136, !llvm.loop !139

1146:                                             ; preds = %1146, %1136
  %1147 = phi i64 [ %1153, %1146 ], [ 0, %1136 ]
  %1148 = phi <4 x i32> [ %1154, %1146 ], [ <i32 0, i32 1, i32 2, i32 3>, %1136 ]
  %1149 = add <4 x i32> %1148, <i32 1, i32 1, i32 1, i32 1>
  %1150 = sitofp <4 x i32> %1149 to <4 x float>
  %1151 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1150
  %1152 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1147
  store <4 x float> %1151, ptr %1152, align 16, !tbaa !13
  %1153 = add nuw nsw i64 %1147, 4
  %1154 = add <4 x i32> %1148, <i32 4, i32 4, i32 4, i32 4>
  %1155 = icmp eq i64 %1153, 32000
  br i1 %1155, label %1156, label %1146, !llvm.loop !140

1156:                                             ; preds = %1156, %1146
  %1157 = phi i64 [ %1163, %1156 ], [ 0, %1146 ]
  %1158 = phi <4 x i32> [ %1164, %1156 ], [ <i32 0, i32 1, i32 2, i32 3>, %1146 ]
  %1159 = add <4 x i32> %1158, <i32 1, i32 1, i32 1, i32 1>
  %1160 = sitofp <4 x i32> %1159 to <4 x float>
  %1161 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1160
  %1162 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1157
  store <4 x float> %1161, ptr %1162, align 16, !tbaa !13
  %1163 = add nuw nsw i64 %1157, 4
  %1164 = add <4 x i32> %1158, <i32 4, i32 4, i32 4, i32 4>
  %1165 = icmp eq i64 %1163, 32000
  br i1 %1165, label %3386, label %1156, !llvm.loop !141

1166:                                             ; preds = %1127
  %1167 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.43) #12
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1169, label %1185

1169:                                             ; preds = %1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %1170

1170:                                             ; preds = %1170, %1169
  %1171 = phi i64 [ 0, %1169 ], [ %1173, %1170 ]
  %1172 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1171
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1172, align 16, !tbaa !13
  %1173 = add nuw nsw i64 %1171, 4
  %1174 = icmp eq i64 %1173, 32000
  br i1 %1174, label %1175, label %1170, !llvm.loop !142

1175:                                             ; preds = %1175, %1170
  %1176 = phi i64 [ %1178, %1175 ], [ 0, %1170 ]
  %1177 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1176
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1177, align 16, !tbaa !13
  %1178 = add nuw nsw i64 %1176, 4
  %1179 = icmp eq i64 %1178, 32000
  br i1 %1179, label %1180, label %1175, !llvm.loop !143

1180:                                             ; preds = %1180, %1175
  %1181 = phi i64 [ %1183, %1180 ], [ 0, %1175 ]
  %1182 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1181
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1182, align 16, !tbaa !13
  %1183 = add nuw nsw i64 %1181, 4
  %1184 = icmp eq i64 %1183, 32000
  br i1 %1184, label %3386, label %1180, !llvm.loop !144

1185:                                             ; preds = %1166
  %1186 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.44) #12
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %1188, label %1224

1188:                                             ; preds = %1185
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %1189

1189:                                             ; preds = %1189, %1188
  %1190 = phi i64 [ 0, %1188 ], [ %1192, %1189 ]
  %1191 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1190
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1191, align 16, !tbaa !13
  %1192 = add nuw nsw i64 %1190, 4
  %1193 = icmp eq i64 %1192, 32000
  br i1 %1193, label %1194, label %1189, !llvm.loop !145

1194:                                             ; preds = %1194, %1189
  %1195 = phi i64 [ %1201, %1194 ], [ 0, %1189 ]
  %1196 = phi <4 x i32> [ %1202, %1194 ], [ <i32 0, i32 1, i32 2, i32 3>, %1189 ]
  %1197 = add <4 x i32> %1196, <i32 1, i32 1, i32 1, i32 1>
  %1198 = sitofp <4 x i32> %1197 to <4 x float>
  %1199 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1198
  %1200 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1195
  store <4 x float> %1199, ptr %1200, align 16, !tbaa !13
  %1201 = add nuw nsw i64 %1195, 4
  %1202 = add <4 x i32> %1196, <i32 4, i32 4, i32 4, i32 4>
  %1203 = icmp eq i64 %1201, 32000
  br i1 %1203, label %1204, label %1194, !llvm.loop !146

1204:                                             ; preds = %1204, %1194
  %1205 = phi i64 [ %1211, %1204 ], [ 0, %1194 ]
  %1206 = phi <4 x i32> [ %1212, %1204 ], [ <i32 0, i32 1, i32 2, i32 3>, %1194 ]
  %1207 = add <4 x i32> %1206, <i32 1, i32 1, i32 1, i32 1>
  %1208 = sitofp <4 x i32> %1207 to <4 x float>
  %1209 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1208
  %1210 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1205
  store <4 x float> %1209, ptr %1210, align 16, !tbaa !13
  %1211 = add nuw nsw i64 %1205, 4
  %1212 = add <4 x i32> %1206, <i32 4, i32 4, i32 4, i32 4>
  %1213 = icmp eq i64 %1211, 32000
  br i1 %1213, label %1214, label %1204, !llvm.loop !147

1214:                                             ; preds = %1214, %1204
  %1215 = phi i64 [ %1221, %1214 ], [ 0, %1204 ]
  %1216 = phi <4 x i32> [ %1222, %1214 ], [ <i32 0, i32 1, i32 2, i32 3>, %1204 ]
  %1217 = add <4 x i32> %1216, <i32 1, i32 1, i32 1, i32 1>
  %1218 = sitofp <4 x i32> %1217 to <4 x float>
  %1219 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1218
  %1220 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1215
  store <4 x float> %1219, ptr %1220, align 16, !tbaa !13
  %1221 = add nuw nsw i64 %1215, 4
  %1222 = add <4 x i32> %1216, <i32 4, i32 4, i32 4, i32 4>
  %1223 = icmp eq i64 %1221, 32000
  br i1 %1223, label %3386, label %1214, !llvm.loop !148

1224:                                             ; preds = %1185
  %1225 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.45) #12
  %1226 = icmp eq i32 %1225, 0
  br i1 %1226, label %1227, label %1238

1227:                                             ; preds = %1224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %1228

1228:                                             ; preds = %1228, %1227
  %1229 = phi i64 [ 0, %1227 ], [ %1231, %1228 ]
  %1230 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1229
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1230, align 16, !tbaa !13
  %1231 = add nuw nsw i64 %1229, 4
  %1232 = icmp eq i64 %1231, 32000
  br i1 %1232, label %1233, label %1228, !llvm.loop !149

1233:                                             ; preds = %1233, %1228
  %1234 = phi i64 [ %1236, %1233 ], [ 0, %1228 ]
  %1235 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1234
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1235, align 16, !tbaa !13
  %1236 = add nuw nsw i64 %1234, 4
  %1237 = icmp eq i64 %1236, 32000
  br i1 %1237, label %3386, label %1233, !llvm.loop !150

1238:                                             ; preds = %1224
  %1239 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.46) #12
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %1241, label %1266

1241:                                             ; preds = %1241, %1238
  %1242 = phi i64 [ %1244, %1241 ], [ 0, %1238 ]
  %1243 = getelementptr inbounds float, ptr @global_data, i64 %1242
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1243, align 16, !tbaa !13
  %1244 = add nuw nsw i64 %1242, 4
  %1245 = icmp eq i64 %1244, 32000
  br i1 %1245, label %1246, label %1241, !llvm.loop !151

1246:                                             ; preds = %1246, %1241
  %1247 = phi i64 [ %1249, %1246 ], [ 0, %1241 ]
  %1248 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1247
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1248, align 16, !tbaa !13
  %1249 = add nuw nsw i64 %1247, 4
  %1250 = icmp eq i64 %1249, 32000
  br i1 %1250, label %1251, label %1246, !llvm.loop !152

1251:                                             ; preds = %1251, %1246
  %1252 = phi i64 [ %1254, %1251 ], [ 0, %1246 ]
  %1253 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1252
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1253, align 16, !tbaa !13
  %1254 = add nuw nsw i64 %1252, 4
  %1255 = icmp eq i64 %1254, 32000
  br i1 %1255, label %1256, label %1251, !llvm.loop !153

1256:                                             ; preds = %1256, %1251
  %1257 = phi i64 [ %1263, %1256 ], [ 0, %1251 ]
  %1258 = phi <4 x i32> [ %1264, %1256 ], [ <i32 0, i32 1, i32 2, i32 3>, %1251 ]
  %1259 = add <4 x i32> %1258, <i32 1, i32 1, i32 1, i32 1>
  %1260 = sitofp <4 x i32> %1259 to <4 x float>
  %1261 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1260
  %1262 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1257
  store <4 x float> %1261, ptr %1262, align 16, !tbaa !13
  %1263 = add nuw nsw i64 %1257, 4
  %1264 = add <4 x i32> %1258, <i32 4, i32 4, i32 4, i32 4>
  %1265 = icmp eq i64 %1263, 32000
  br i1 %1265, label %3386, label %1256, !llvm.loop !154

1266:                                             ; preds = %1238
  %1267 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.47) #12
  %1268 = icmp eq i32 %1267, 0
  br i1 %1268, label %1269, label %1275

1269:                                             ; preds = %1266
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %1270

1270:                                             ; preds = %1270, %1269
  %1271 = phi i64 [ 0, %1269 ], [ %1273, %1270 ]
  %1272 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1271
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1272, align 16, !tbaa !13
  %1273 = add nuw nsw i64 %1271, 4
  %1274 = icmp eq i64 %1273, 32000
  br i1 %1274, label %3386, label %1270, !llvm.loop !155

1275:                                             ; preds = %1266
  %1276 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.48) #12
  %1277 = icmp eq i32 %1276, 0
  br i1 %1277, label %1278, label %1284

1278:                                             ; preds = %1275
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %1279

1279:                                             ; preds = %1279, %1278
  %1280 = phi i64 [ 0, %1278 ], [ %1282, %1279 ]
  %1281 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1280
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1281, align 16, !tbaa !13
  %1282 = add nuw nsw i64 %1280, 4
  %1283 = icmp eq i64 %1282, 32000
  br i1 %1283, label %3386, label %1279, !llvm.loop !156

1284:                                             ; preds = %1275
  %1285 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.49) #12
  %1286 = icmp eq i32 %1285, 0
  br i1 %1286, label %1287, label %1312

1287:                                             ; preds = %1287, %1284
  %1288 = phi i64 [ %1290, %1287 ], [ 0, %1284 ]
  %1289 = getelementptr inbounds float, ptr @global_data, i64 %1288
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1289, align 16, !tbaa !13
  %1290 = add nuw nsw i64 %1288, 4
  %1291 = icmp eq i64 %1290, 32000
  br i1 %1291, label %1292, label %1287, !llvm.loop !157

1292:                                             ; preds = %1299, %1287
  %1293 = phi i64 [ %1300, %1299 ], [ 0, %1287 ]
  br label %1294

1294:                                             ; preds = %1294, %1292
  %1295 = phi i64 [ 0, %1292 ], [ %1297, %1294 ]
  %1296 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1293, i64 %1295
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, ptr %1296, align 16, !tbaa !13
  %1297 = add nuw nsw i64 %1295, 4
  %1298 = icmp eq i64 %1297, 256
  br i1 %1298, label %1299, label %1294, !llvm.loop !158

1299:                                             ; preds = %1294
  %1300 = add nuw nsw i64 %1293, 1
  %1301 = icmp eq i64 %1300, 256
  br i1 %1301, label %1302, label %1292

1302:                                             ; preds = %1309, %1299
  %1303 = phi i64 [ %1310, %1309 ], [ 0, %1299 ]
  br label %1304

1304:                                             ; preds = %1304, %1302
  %1305 = phi i64 [ 0, %1302 ], [ %1307, %1304 ]
  %1306 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %1303, i64 %1305
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1306, align 16, !tbaa !13
  %1307 = add nuw nsw i64 %1305, 4
  %1308 = icmp eq i64 %1307, 256
  br i1 %1308, label %1309, label %1304, !llvm.loop !159

1309:                                             ; preds = %1304
  %1310 = add nuw nsw i64 %1303, 1
  %1311 = icmp eq i64 %1310, 256
  br i1 %1311, label %3386, label %1302

1312:                                             ; preds = %1284
  %1313 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.50) #12
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1315, label %1340

1315:                                             ; preds = %1315, %1312
  %1316 = phi i64 [ %1318, %1315 ], [ 0, %1312 ]
  %1317 = getelementptr inbounds float, ptr @global_data, i64 %1316
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1317, align 16, !tbaa !13
  %1318 = add nuw nsw i64 %1316, 4
  %1319 = icmp eq i64 %1318, 32000
  br i1 %1319, label %1320, label %1315, !llvm.loop !160

1320:                                             ; preds = %1327, %1315
  %1321 = phi i64 [ %1328, %1327 ], [ 0, %1315 ]
  br label %1322

1322:                                             ; preds = %1322, %1320
  %1323 = phi i64 [ 0, %1320 ], [ %1325, %1322 ]
  %1324 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1321, i64 %1323
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, ptr %1324, align 16, !tbaa !13
  %1325 = add nuw nsw i64 %1323, 4
  %1326 = icmp eq i64 %1325, 256
  br i1 %1326, label %1327, label %1322, !llvm.loop !161

1327:                                             ; preds = %1322
  %1328 = add nuw nsw i64 %1321, 1
  %1329 = icmp eq i64 %1328, 256
  br i1 %1329, label %1330, label %1320

1330:                                             ; preds = %1337, %1327
  %1331 = phi i64 [ %1338, %1337 ], [ 0, %1327 ]
  br label %1332

1332:                                             ; preds = %1332, %1330
  %1333 = phi i64 [ 0, %1330 ], [ %1335, %1332 ]
  %1334 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %1331, i64 %1333
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1334, align 16, !tbaa !13
  %1335 = add nuw nsw i64 %1333, 4
  %1336 = icmp eq i64 %1335, 256
  br i1 %1336, label %1337, label %1332, !llvm.loop !162

1337:                                             ; preds = %1332
  %1338 = add nuw nsw i64 %1331, 1
  %1339 = icmp eq i64 %1338, 256
  br i1 %1339, label %3386, label %1330

1340:                                             ; preds = %1312
  %1341 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.51) #12
  %1342 = icmp eq i32 %1341, 0
  br i1 %1342, label %1343, label %1390

1343:                                             ; preds = %1343, %1340
  %1344 = phi i64 [ %1350, %1343 ], [ 0, %1340 ]
  %1345 = phi <4 x i32> [ %1351, %1343 ], [ <i32 0, i32 1, i32 2, i32 3>, %1340 ]
  %1346 = add <4 x i32> %1345, <i32 1, i32 1, i32 1, i32 1>
  %1347 = sitofp <4 x i32> %1346 to <4 x float>
  %1348 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1347
  %1349 = getelementptr inbounds float, ptr @global_data, i64 %1344
  store <4 x float> %1348, ptr %1349, align 16, !tbaa !13
  %1350 = add nuw nsw i64 %1344, 4
  %1351 = add <4 x i32> %1345, <i32 4, i32 4, i32 4, i32 4>
  %1352 = icmp eq i64 %1350, 32000
  br i1 %1352, label %1353, label %1343, !llvm.loop !163

1353:                                             ; preds = %1343
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), i8 0, i64 128000, i1 false), !tbaa !13
  br label %1354

1354:                                             ; preds = %1354, %1353
  %1355 = phi i64 [ 0, %1353 ], [ %1361, %1354 ]
  %1356 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %1353 ], [ %1362, %1354 ]
  %1357 = add <4 x i32> %1356, <i32 1, i32 1, i32 1, i32 1>
  %1358 = sitofp <4 x i32> %1357 to <4 x float>
  %1359 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1358
  %1360 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1355
  store <4 x float> %1359, ptr %1360, align 16, !tbaa !13
  %1361 = add nuw nsw i64 %1355, 4
  %1362 = add <4 x i32> %1356, <i32 4, i32 4, i32 4, i32 4>
  %1363 = icmp eq i64 %1361, 32000
  br i1 %1363, label %1364, label %1354, !llvm.loop !164

1364:                                             ; preds = %1364, %1354
  %1365 = phi i64 [ %1371, %1364 ], [ 0, %1354 ]
  %1366 = phi <4 x i32> [ %1372, %1364 ], [ <i32 0, i32 1, i32 2, i32 3>, %1354 ]
  %1367 = add <4 x i32> %1366, <i32 1, i32 1, i32 1, i32 1>
  %1368 = sitofp <4 x i32> %1367 to <4 x float>
  %1369 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1368
  %1370 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1365
  store <4 x float> %1369, ptr %1370, align 16, !tbaa !13
  %1371 = add nuw nsw i64 %1365, 4
  %1372 = add <4 x i32> %1366, <i32 4, i32 4, i32 4, i32 4>
  %1373 = icmp eq i64 %1371, 32000
  br i1 %1373, label %1374, label %1364, !llvm.loop !165

1374:                                             ; preds = %1364
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 0), i8 0, i64 128000, i1 false), !tbaa !13
  br label %1375

1375:                                             ; preds = %1388, %1374
  %1376 = phi i64 [ %1377, %1388 ], [ 0, %1374 ]
  %1377 = add nuw nsw i64 %1376, 1
  %1378 = trunc i64 %1377 to i32
  %1379 = sitofp i32 %1378 to float
  %1380 = fdiv float 1.000000e+00, %1379
  %1381 = insertelement <4 x float> poison, float %1380, i64 0
  %1382 = shufflevector <4 x float> %1381, <4 x float> poison, <4 x i32> zeroinitializer
  br label %1383

1383:                                             ; preds = %1383, %1375
  %1384 = phi i64 [ 0, %1375 ], [ %1386, %1383 ]
  %1385 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1376, i64 %1384
  store <4 x float> %1382, ptr %1385, align 16, !tbaa !13
  %1386 = add nuw nsw i64 %1384, 4
  %1387 = icmp eq i64 %1386, 256
  br i1 %1387, label %1388, label %1383, !llvm.loop !166

1388:                                             ; preds = %1383
  %1389 = icmp eq i64 %1377, 256
  br i1 %1389, label %3386, label %1375

1390:                                             ; preds = %1340
  %1391 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.52) #12
  %1392 = icmp eq i32 %1391, 0
  br i1 %1392, label %1393, label %1425

1393:                                             ; preds = %1393, %1390
  %1394 = phi i64 [ %1396, %1393 ], [ 0, %1390 ]
  %1395 = getelementptr inbounds float, ptr @global_data, i64 %1394
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1395, align 16, !tbaa !13
  %1396 = add nuw nsw i64 %1394, 4
  %1397 = icmp eq i64 %1396, 32000
  br i1 %1397, label %1398, label %1393, !llvm.loop !167

1398:                                             ; preds = %1398, %1393
  %1399 = phi i64 [ %1406, %1398 ], [ 0, %1393 ]
  %1400 = phi <4 x i32> [ %1407, %1398 ], [ <i32 0, i32 1, i32 2, i32 3>, %1393 ]
  %1401 = add <4 x i32> %1400, <i32 1, i32 1, i32 1, i32 1>
  %1402 = mul <4 x i32> %1401, %1401
  %1403 = sitofp <4 x i32> %1402 to <4 x float>
  %1404 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1403
  %1405 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1399
  store <4 x float> %1404, ptr %1405, align 16, !tbaa !13
  %1406 = add nuw nsw i64 %1399, 4
  %1407 = add <4 x i32> %1400, <i32 4, i32 4, i32 4, i32 4>
  %1408 = icmp eq i64 %1406, 32000
  br i1 %1408, label %1409, label %1398, !llvm.loop !168

1409:                                             ; preds = %1409, %1398
  %1410 = phi i64 [ %1417, %1409 ], [ 0, %1398 ]
  %1411 = phi <4 x i32> [ %1418, %1409 ], [ <i32 0, i32 1, i32 2, i32 3>, %1398 ]
  %1412 = add <4 x i32> %1411, <i32 1, i32 1, i32 1, i32 1>
  %1413 = mul <4 x i32> %1412, %1412
  %1414 = sitofp <4 x i32> %1413 to <4 x float>
  %1415 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1414
  %1416 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1410
  store <4 x float> %1415, ptr %1416, align 16, !tbaa !13
  %1417 = add nuw nsw i64 %1410, 4
  %1418 = add <4 x i32> %1411, <i32 4, i32 4, i32 4, i32 4>
  %1419 = icmp eq i64 %1417, 32000
  br i1 %1419, label %1420, label %1409, !llvm.loop !169

1420:                                             ; preds = %1420, %1409
  %1421 = phi i64 [ %1423, %1420 ], [ 0, %1409 ]
  %1422 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1421
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1422, align 16, !tbaa !13
  %1423 = add nuw nsw i64 %1421, 4
  %1424 = icmp eq i64 %1423, 32000
  br i1 %1424, label %3386, label %1420, !llvm.loop !170

1425:                                             ; preds = %1390
  %1426 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.53) #12
  %1427 = icmp eq i32 %1426, 0
  br i1 %1427, label %1428, label %1453

1428:                                             ; preds = %1428, %1425
  %1429 = phi i64 [ %1431, %1428 ], [ 0, %1425 ]
  %1430 = getelementptr inbounds float, ptr @global_data, i64 %1429
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1430, align 16, !tbaa !13
  %1431 = add nuw nsw i64 %1429, 4
  %1432 = icmp eq i64 %1431, 32000
  br i1 %1432, label %1433, label %1428, !llvm.loop !171

1433:                                             ; preds = %1433, %1428
  %1434 = phi i64 [ %1440, %1433 ], [ 0, %1428 ]
  %1435 = phi <4 x i32> [ %1441, %1433 ], [ <i32 0, i32 1, i32 2, i32 3>, %1428 ]
  %1436 = add <4 x i32> %1435, <i32 1, i32 1, i32 1, i32 1>
  %1437 = sitofp <4 x i32> %1436 to <4 x float>
  %1438 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1437
  %1439 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1434
  store <4 x float> %1438, ptr %1439, align 16, !tbaa !13
  %1440 = add nuw nsw i64 %1434, 4
  %1441 = add <4 x i32> %1435, <i32 4, i32 4, i32 4, i32 4>
  %1442 = icmp eq i64 %1440, 32000
  br i1 %1442, label %1443, label %1433, !llvm.loop !172

1443:                                             ; preds = %1443, %1433
  %1444 = phi i64 [ %1450, %1443 ], [ 0, %1433 ]
  %1445 = phi <4 x i32> [ %1451, %1443 ], [ <i32 0, i32 1, i32 2, i32 3>, %1433 ]
  %1446 = add <4 x i32> %1445, <i32 1, i32 1, i32 1, i32 1>
  %1447 = sitofp <4 x i32> %1446 to <4 x float>
  %1448 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1447
  %1449 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1444
  store <4 x float> %1448, ptr %1449, align 16, !tbaa !13
  %1450 = add nuw nsw i64 %1444, 4
  %1451 = add <4 x i32> %1445, <i32 4, i32 4, i32 4, i32 4>
  %1452 = icmp eq i64 %1450, 32000
  br i1 %1452, label %3386, label %1443, !llvm.loop !173

1453:                                             ; preds = %1425
  %1454 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.54) #12
  %1455 = icmp eq i32 %1454, 0
  br i1 %1455, label %1456, label %1491

1456:                                             ; preds = %1456, %1453
  %1457 = phi i64 [ %1459, %1456 ], [ 0, %1453 ]
  %1458 = getelementptr inbounds float, ptr @global_data, i64 %1457
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1458, align 16, !tbaa !13
  %1459 = add nuw nsw i64 %1457, 4
  %1460 = icmp eq i64 %1459, 32000
  br i1 %1460, label %1461, label %1456, !llvm.loop !174

1461:                                             ; preds = %1461, %1456
  %1462 = phi i64 [ %1464, %1461 ], [ 0, %1456 ]
  %1463 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1462
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1463, align 16, !tbaa !13
  %1464 = add nuw nsw i64 %1462, 4
  %1465 = icmp eq i64 %1464, 32000
  br i1 %1465, label %1466, label %1461, !llvm.loop !175

1466:                                             ; preds = %1466, %1461
  %1467 = phi i64 [ %1473, %1466 ], [ 0, %1461 ]
  %1468 = phi <4 x i32> [ %1474, %1466 ], [ <i32 0, i32 1, i32 2, i32 3>, %1461 ]
  %1469 = add <4 x i32> %1468, <i32 1, i32 1, i32 1, i32 1>
  %1470 = sitofp <4 x i32> %1469 to <4 x float>
  %1471 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1470
  %1472 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1467
  store <4 x float> %1471, ptr %1472, align 16, !tbaa !13
  %1473 = add nuw nsw i64 %1467, 4
  %1474 = add <4 x i32> %1468, <i32 4, i32 4, i32 4, i32 4>
  %1475 = icmp eq i64 %1473, 32000
  br i1 %1475, label %1476, label %1466, !llvm.loop !176

1476:                                             ; preds = %1476, %1466
  %1477 = phi i64 [ %1483, %1476 ], [ 0, %1466 ]
  %1478 = phi <4 x i32> [ %1484, %1476 ], [ <i32 0, i32 1, i32 2, i32 3>, %1466 ]
  %1479 = add <4 x i32> %1478, <i32 1, i32 1, i32 1, i32 1>
  %1480 = sitofp <4 x i32> %1479 to <4 x float>
  %1481 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1480
  %1482 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1477
  store <4 x float> %1481, ptr %1482, align 16, !tbaa !13
  %1483 = add nuw nsw i64 %1477, 4
  %1484 = add <4 x i32> %1478, <i32 4, i32 4, i32 4, i32 4>
  %1485 = icmp eq i64 %1483, 32000
  br i1 %1485, label %1486, label %1476, !llvm.loop !177

1486:                                             ; preds = %1486, %1476
  %1487 = phi i64 [ %1489, %1486 ], [ 0, %1476 ]
  %1488 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1487
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, ptr %1488, align 16, !tbaa !13
  %1489 = add nuw nsw i64 %1487, 4
  %1490 = icmp eq i64 %1489, 32000
  br i1 %1490, label %3386, label %1486, !llvm.loop !178

1491:                                             ; preds = %1453
  %1492 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.55) #12
  %1493 = icmp eq i32 %1492, 0
  br i1 %1493, label %1494, label %1524

1494:                                             ; preds = %1494, %1491
  %1495 = phi i64 [ %1497, %1494 ], [ 0, %1491 ]
  %1496 = getelementptr inbounds float, ptr @global_data, i64 %1495
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1496, align 16, !tbaa !13
  %1497 = add nuw nsw i64 %1495, 4
  %1498 = icmp eq i64 %1497, 32000
  br i1 %1498, label %1499, label %1494, !llvm.loop !179

1499:                                             ; preds = %1499, %1494
  %1500 = phi i64 [ %1502, %1499 ], [ 0, %1494 ]
  %1501 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1500
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1501, align 16, !tbaa !13
  %1502 = add nuw nsw i64 %1500, 4
  %1503 = icmp eq i64 %1502, 32000
  br i1 %1503, label %1504, label %1499, !llvm.loop !180

1504:                                             ; preds = %1504, %1499
  %1505 = phi i64 [ %1507, %1504 ], [ 0, %1499 ]
  %1506 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1505
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1506, align 16, !tbaa !13
  %1507 = add nuw nsw i64 %1505, 4
  %1508 = icmp eq i64 %1507, 32000
  br i1 %1508, label %1509, label %1504, !llvm.loop !181

1509:                                             ; preds = %1509, %1504
  %1510 = phi i64 [ %1512, %1509 ], [ 0, %1504 ]
  %1511 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1510
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1511, align 16, !tbaa !13
  %1512 = add nuw nsw i64 %1510, 4
  %1513 = icmp eq i64 %1512, 32000
  br i1 %1513, label %1514, label %1509, !llvm.loop !182

1514:                                             ; preds = %1514, %1509
  %1515 = phi i64 [ %1521, %1514 ], [ 0, %1509 ]
  %1516 = phi <4 x i32> [ %1522, %1514 ], [ <i32 0, i32 1, i32 2, i32 3>, %1509 ]
  %1517 = add <4 x i32> %1516, <i32 1, i32 1, i32 1, i32 1>
  %1518 = sitofp <4 x i32> %1517 to <4 x float>
  %1519 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1518
  %1520 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1515
  store <4 x float> %1519, ptr %1520, align 16, !tbaa !13
  %1521 = add nuw nsw i64 %1515, 4
  %1522 = add <4 x i32> %1516, <i32 4, i32 4, i32 4, i32 4>
  %1523 = icmp eq i64 %1521, 32000
  br i1 %1523, label %3386, label %1514, !llvm.loop !183

1524:                                             ; preds = %1491
  %1525 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.56) #12
  %1526 = icmp eq i32 %1525, 0
  br i1 %1526, label %1527, label %1558

1527:                                             ; preds = %1524
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %1528

1528:                                             ; preds = %1528, %1527
  %1529 = phi i64 [ 0, %1527 ], [ %1531, %1528 ]
  %1530 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1529
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1530, align 16, !tbaa !13
  %1531 = add nuw nsw i64 %1529, 4
  %1532 = icmp eq i64 %1531, 32000
  br i1 %1532, label %1533, label %1528, !llvm.loop !184

1533:                                             ; preds = %1533, %1528
  %1534 = phi i64 [ %1536, %1533 ], [ 0, %1528 ]
  %1535 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1534
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1535, align 16, !tbaa !13
  %1536 = add nuw nsw i64 %1534, 4
  %1537 = icmp eq i64 %1536, 32000
  br i1 %1537, label %1538, label %1533, !llvm.loop !185

1538:                                             ; preds = %1538, %1533
  %1539 = phi i64 [ %1545, %1538 ], [ 0, %1533 ]
  %1540 = phi <4 x i32> [ %1546, %1538 ], [ <i32 0, i32 1, i32 2, i32 3>, %1533 ]
  %1541 = add <4 x i32> %1540, <i32 1, i32 1, i32 1, i32 1>
  %1542 = sitofp <4 x i32> %1541 to <4 x float>
  %1543 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1542
  %1544 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1539
  store <4 x float> %1543, ptr %1544, align 16, !tbaa !13
  %1545 = add nuw nsw i64 %1539, 4
  %1546 = add <4 x i32> %1540, <i32 4, i32 4, i32 4, i32 4>
  %1547 = icmp eq i64 %1545, 32000
  br i1 %1547, label %1548, label %1538, !llvm.loop !186

1548:                                             ; preds = %1548, %1538
  %1549 = phi i64 [ %1555, %1548 ], [ 0, %1538 ]
  %1550 = phi <4 x i32> [ %1556, %1548 ], [ <i32 0, i32 1, i32 2, i32 3>, %1538 ]
  %1551 = add <4 x i32> %1550, <i32 1, i32 1, i32 1, i32 1>
  %1552 = sitofp <4 x i32> %1551 to <4 x float>
  %1553 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1552
  %1554 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1549
  store <4 x float> %1553, ptr %1554, align 16, !tbaa !13
  %1555 = add nuw nsw i64 %1549, 4
  %1556 = add <4 x i32> %1550, <i32 4, i32 4, i32 4, i32 4>
  %1557 = icmp eq i64 %1555, 32000
  br i1 %1557, label %3386, label %1548, !llvm.loop !187

1558:                                             ; preds = %1524
  %1559 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.57) #12
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1561, label %1591

1561:                                             ; preds = %1568, %1558
  %1562 = phi i64 [ %1569, %1568 ], [ 0, %1558 ]
  br label %1563

1563:                                             ; preds = %1563, %1561
  %1564 = phi i64 [ 0, %1561 ], [ %1566, %1563 ]
  %1565 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1562, i64 %1564
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1565, align 16, !tbaa !13
  %1566 = add nuw nsw i64 %1564, 4
  %1567 = icmp eq i64 %1566, 256
  br i1 %1567, label %1568, label %1563, !llvm.loop !188

1568:                                             ; preds = %1563
  %1569 = add nuw nsw i64 %1562, 1
  %1570 = icmp eq i64 %1569, 256
  br i1 %1570, label %1571, label %1561

1571:                                             ; preds = %1578, %1568
  %1572 = phi i64 [ %1579, %1578 ], [ 0, %1568 ]
  br label %1573

1573:                                             ; preds = %1573, %1571
  %1574 = phi i64 [ 0, %1571 ], [ %1576, %1573 ]
  %1575 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %1572, i64 %1574
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1575, align 16, !tbaa !13
  %1576 = add nuw nsw i64 %1574, 4
  %1577 = icmp eq i64 %1576, 256
  br i1 %1577, label %1578, label %1573, !llvm.loop !189

1578:                                             ; preds = %1573
  %1579 = add nuw nsw i64 %1572, 1
  %1580 = icmp eq i64 %1579, 256
  br i1 %1580, label %1581, label %1571

1581:                                             ; preds = %1588, %1578
  %1582 = phi i64 [ %1589, %1588 ], [ 0, %1578 ]
  br label %1583

1583:                                             ; preds = %1583, %1581
  %1584 = phi i64 [ 0, %1581 ], [ %1586, %1583 ]
  %1585 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %1582, i64 %1584
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1585, align 16, !tbaa !13
  %1586 = add nuw nsw i64 %1584, 4
  %1587 = icmp eq i64 %1586, 256
  br i1 %1587, label %1588, label %1583, !llvm.loop !190

1588:                                             ; preds = %1583
  %1589 = add nuw nsw i64 %1582, 1
  %1590 = icmp eq i64 %1589, 256
  br i1 %1590, label %3386, label %1581

1591:                                             ; preds = %1558
  %1592 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.58) #12
  %1593 = icmp eq i32 %1592, 0
  br i1 %1593, label %1594, label %1629

1594:                                             ; preds = %1594, %1591
  %1595 = phi i64 [ %1597, %1594 ], [ 0, %1591 ]
  %1596 = getelementptr inbounds float, ptr @global_data, i64 %1595
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1596, align 16, !tbaa !13
  %1597 = add nuw nsw i64 %1595, 4
  %1598 = icmp eq i64 %1597, 32000
  br i1 %1598, label %1599, label %1594, !llvm.loop !191

1599:                                             ; preds = %1599, %1594
  %1600 = phi i64 [ %1606, %1599 ], [ 0, %1594 ]
  %1601 = phi <4 x i32> [ %1607, %1599 ], [ <i32 0, i32 1, i32 2, i32 3>, %1594 ]
  %1602 = add <4 x i32> %1601, <i32 1, i32 1, i32 1, i32 1>
  %1603 = sitofp <4 x i32> %1602 to <4 x float>
  %1604 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1603
  %1605 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1600
  store <4 x float> %1604, ptr %1605, align 16, !tbaa !13
  %1606 = add nuw nsw i64 %1600, 4
  %1607 = add <4 x i32> %1601, <i32 4, i32 4, i32 4, i32 4>
  %1608 = icmp eq i64 %1606, 32000
  br i1 %1608, label %1609, label %1599, !llvm.loop !192

1609:                                             ; preds = %1609, %1599
  %1610 = phi i64 [ %1616, %1609 ], [ 0, %1599 ]
  %1611 = phi <4 x i32> [ %1617, %1609 ], [ <i32 0, i32 1, i32 2, i32 3>, %1599 ]
  %1612 = add <4 x i32> %1611, <i32 1, i32 1, i32 1, i32 1>
  %1613 = sitofp <4 x i32> %1612 to <4 x float>
  %1614 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1613
  %1615 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1610
  store <4 x float> %1614, ptr %1615, align 16, !tbaa !13
  %1616 = add nuw nsw i64 %1610, 4
  %1617 = add <4 x i32> %1611, <i32 4, i32 4, i32 4, i32 4>
  %1618 = icmp eq i64 %1616, 32000
  br i1 %1618, label %1619, label %1609, !llvm.loop !193

1619:                                             ; preds = %1619, %1609
  %1620 = phi i64 [ %1626, %1619 ], [ 0, %1609 ]
  %1621 = phi <4 x i32> [ %1627, %1619 ], [ <i32 0, i32 1, i32 2, i32 3>, %1609 ]
  %1622 = add <4 x i32> %1621, <i32 1, i32 1, i32 1, i32 1>
  %1623 = sitofp <4 x i32> %1622 to <4 x float>
  %1624 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1623
  %1625 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1620
  store <4 x float> %1624, ptr %1625, align 16, !tbaa !13
  %1626 = add nuw nsw i64 %1620, 4
  %1627 = add <4 x i32> %1621, <i32 4, i32 4, i32 4, i32 4>
  %1628 = icmp eq i64 %1626, 32000
  br i1 %1628, label %3386, label %1619, !llvm.loop !194

1629:                                             ; preds = %1591
  %1630 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.59) #12
  %1631 = icmp eq i32 %1630, 0
  br i1 %1631, label %1632, label %1677

1632:                                             ; preds = %1632, %1629
  %1633 = phi i64 [ %1635, %1632 ], [ 0, %1629 ]
  %1634 = getelementptr inbounds float, ptr @global_data, i64 %1633
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1634, align 16, !tbaa !13
  %1635 = add nuw nsw i64 %1633, 4
  %1636 = icmp eq i64 %1635, 32000
  br i1 %1636, label %1637, label %1632, !llvm.loop !195

1637:                                             ; preds = %1637, %1632
  %1638 = phi i64 [ %1640, %1637 ], [ 0, %1632 ]
  %1639 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1638
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1639, align 16, !tbaa !13
  %1640 = add nuw nsw i64 %1638, 4
  %1641 = icmp eq i64 %1640, 32000
  br i1 %1641, label %1642, label %1637, !llvm.loop !196

1642:                                             ; preds = %1642, %1637
  %1643 = phi i64 [ %1645, %1642 ], [ 0, %1637 ]
  %1644 = getelementptr inbounds float, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 16000), i64 %1643
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, ptr %1644, align 16, !tbaa !13
  %1645 = add nuw nsw i64 %1643, 4
  %1646 = icmp eq i64 %1645, 32000
  br i1 %1646, label %1647, label %1642, !llvm.loop !197

1647:                                             ; preds = %1647, %1642
  %1648 = phi i64 [ %1654, %1647 ], [ 0, %1642 ]
  %1649 = phi <4 x i32> [ %1655, %1647 ], [ <i32 0, i32 1, i32 2, i32 3>, %1642 ]
  %1650 = add <4 x i32> %1649, <i32 1, i32 1, i32 1, i32 1>
  %1651 = sitofp <4 x i32> %1650 to <4 x float>
  %1652 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1651
  %1653 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1648
  store <4 x float> %1652, ptr %1653, align 16, !tbaa !13
  %1654 = add nuw nsw i64 %1648, 4
  %1655 = add <4 x i32> %1649, <i32 4, i32 4, i32 4, i32 4>
  %1656 = icmp eq i64 %1654, 32000
  br i1 %1656, label %1657, label %1647, !llvm.loop !198

1657:                                             ; preds = %1657, %1647
  %1658 = phi i64 [ %1664, %1657 ], [ 0, %1647 ]
  %1659 = phi <4 x i32> [ %1665, %1657 ], [ <i32 0, i32 1, i32 2, i32 3>, %1647 ]
  %1660 = add <4 x i32> %1659, <i32 1, i32 1, i32 1, i32 1>
  %1661 = sitofp <4 x i32> %1660 to <4 x float>
  %1662 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1661
  %1663 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1658
  store <4 x float> %1662, ptr %1663, align 16, !tbaa !13
  %1664 = add nuw nsw i64 %1658, 4
  %1665 = add <4 x i32> %1659, <i32 4, i32 4, i32 4, i32 4>
  %1666 = icmp eq i64 %1664, 32000
  br i1 %1666, label %1667, label %1657, !llvm.loop !199

1667:                                             ; preds = %1667, %1657
  %1668 = phi i64 [ %1674, %1667 ], [ 0, %1657 ]
  %1669 = phi <4 x i32> [ %1675, %1667 ], [ <i32 0, i32 1, i32 2, i32 3>, %1657 ]
  %1670 = add <4 x i32> %1669, <i32 1, i32 1, i32 1, i32 1>
  %1671 = sitofp <4 x i32> %1670 to <4 x float>
  %1672 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1671
  %1673 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1668
  store <4 x float> %1672, ptr %1673, align 16, !tbaa !13
  %1674 = add nuw nsw i64 %1668, 4
  %1675 = add <4 x i32> %1669, <i32 4, i32 4, i32 4, i32 4>
  %1676 = icmp eq i64 %1674, 32000
  br i1 %1676, label %3386, label %1667, !llvm.loop !200

1677:                                             ; preds = %1629
  %1678 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.60) #12
  %1679 = icmp eq i32 %1678, 0
  br i1 %1679, label %1680, label %1725

1680:                                             ; preds = %1680, %1677
  %1681 = phi i64 [ %1683, %1680 ], [ 0, %1677 ]
  %1682 = getelementptr inbounds float, ptr @global_data, i64 %1681
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, ptr %1682, align 16, !tbaa !13
  %1683 = add nuw nsw i64 %1681, 4
  %1684 = icmp eq i64 %1683, 32000
  br i1 %1684, label %1685, label %1680, !llvm.loop !201

1685:                                             ; preds = %1685, %1680
  %1686 = phi i64 [ %1688, %1685 ], [ 0, %1680 ]
  %1687 = getelementptr inbounds float, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 16000), i64 %1686
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1687, align 16, !tbaa !13
  %1688 = add nuw nsw i64 %1686, 4
  %1689 = icmp eq i64 %1688, 32000
  br i1 %1689, label %1690, label %1685, !llvm.loop !202

1690:                                             ; preds = %1690, %1685
  %1691 = phi i64 [ %1693, %1690 ], [ 0, %1685 ]
  %1692 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1691
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1692, align 16, !tbaa !13
  %1693 = add nuw nsw i64 %1691, 4
  %1694 = icmp eq i64 %1693, 32000
  br i1 %1694, label %1695, label %1690, !llvm.loop !203

1695:                                             ; preds = %1695, %1690
  %1696 = phi i64 [ %1702, %1695 ], [ 0, %1690 ]
  %1697 = phi <4 x i32> [ %1703, %1695 ], [ <i32 0, i32 1, i32 2, i32 3>, %1690 ]
  %1698 = add <4 x i32> %1697, <i32 1, i32 1, i32 1, i32 1>
  %1699 = sitofp <4 x i32> %1698 to <4 x float>
  %1700 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1699
  %1701 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1696
  store <4 x float> %1700, ptr %1701, align 16, !tbaa !13
  %1702 = add nuw nsw i64 %1696, 4
  %1703 = add <4 x i32> %1697, <i32 4, i32 4, i32 4, i32 4>
  %1704 = icmp eq i64 %1702, 32000
  br i1 %1704, label %1705, label %1695, !llvm.loop !204

1705:                                             ; preds = %1705, %1695
  %1706 = phi i64 [ %1712, %1705 ], [ 0, %1695 ]
  %1707 = phi <4 x i32> [ %1713, %1705 ], [ <i32 0, i32 1, i32 2, i32 3>, %1695 ]
  %1708 = add <4 x i32> %1707, <i32 1, i32 1, i32 1, i32 1>
  %1709 = sitofp <4 x i32> %1708 to <4 x float>
  %1710 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1709
  %1711 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1706
  store <4 x float> %1710, ptr %1711, align 16, !tbaa !13
  %1712 = add nuw nsw i64 %1706, 4
  %1713 = add <4 x i32> %1707, <i32 4, i32 4, i32 4, i32 4>
  %1714 = icmp eq i64 %1712, 32000
  br i1 %1714, label %1715, label %1705, !llvm.loop !205

1715:                                             ; preds = %1715, %1705
  %1716 = phi i64 [ %1722, %1715 ], [ 0, %1705 ]
  %1717 = phi <4 x i32> [ %1723, %1715 ], [ <i32 0, i32 1, i32 2, i32 3>, %1705 ]
  %1718 = add <4 x i32> %1717, <i32 1, i32 1, i32 1, i32 1>
  %1719 = sitofp <4 x i32> %1718 to <4 x float>
  %1720 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1719
  %1721 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1716
  store <4 x float> %1720, ptr %1721, align 16, !tbaa !13
  %1722 = add nuw nsw i64 %1716, 4
  %1723 = add <4 x i32> %1717, <i32 4, i32 4, i32 4, i32 4>
  %1724 = icmp eq i64 %1722, 32000
  br i1 %1724, label %3386, label %1715, !llvm.loop !206

1725:                                             ; preds = %1677
  %1726 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.61) #12
  %1727 = icmp eq i32 %1726, 0
  br i1 %1727, label %1728, label %1773

1728:                                             ; preds = %1728, %1725
  %1729 = phi i64 [ %1731, %1728 ], [ 0, %1725 ]
  %1730 = getelementptr inbounds float, ptr @global_data, i64 %1729
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, ptr %1730, align 16, !tbaa !13
  %1731 = add nuw nsw i64 %1729, 4
  %1732 = icmp eq i64 %1731, 32000
  br i1 %1732, label %1733, label %1728, !llvm.loop !207

1733:                                             ; preds = %1733, %1728
  %1734 = phi i64 [ %1736, %1733 ], [ 0, %1728 ]
  %1735 = getelementptr inbounds float, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 16000), i64 %1734
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1735, align 16, !tbaa !13
  %1736 = add nuw nsw i64 %1734, 4
  %1737 = icmp eq i64 %1736, 32000
  br i1 %1737, label %1738, label %1733, !llvm.loop !208

1738:                                             ; preds = %1738, %1733
  %1739 = phi i64 [ %1741, %1738 ], [ 0, %1733 ]
  %1740 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1739
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1740, align 16, !tbaa !13
  %1741 = add nuw nsw i64 %1739, 4
  %1742 = icmp eq i64 %1741, 32000
  br i1 %1742, label %1743, label %1738, !llvm.loop !209

1743:                                             ; preds = %1743, %1738
  %1744 = phi i64 [ %1750, %1743 ], [ 0, %1738 ]
  %1745 = phi <4 x i32> [ %1751, %1743 ], [ <i32 0, i32 1, i32 2, i32 3>, %1738 ]
  %1746 = add <4 x i32> %1745, <i32 1, i32 1, i32 1, i32 1>
  %1747 = sitofp <4 x i32> %1746 to <4 x float>
  %1748 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1747
  %1749 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1744
  store <4 x float> %1748, ptr %1749, align 16, !tbaa !13
  %1750 = add nuw nsw i64 %1744, 4
  %1751 = add <4 x i32> %1745, <i32 4, i32 4, i32 4, i32 4>
  %1752 = icmp eq i64 %1750, 32000
  br i1 %1752, label %1753, label %1743, !llvm.loop !210

1753:                                             ; preds = %1753, %1743
  %1754 = phi i64 [ %1760, %1753 ], [ 0, %1743 ]
  %1755 = phi <4 x i32> [ %1761, %1753 ], [ <i32 0, i32 1, i32 2, i32 3>, %1743 ]
  %1756 = add <4 x i32> %1755, <i32 1, i32 1, i32 1, i32 1>
  %1757 = sitofp <4 x i32> %1756 to <4 x float>
  %1758 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1757
  %1759 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1754
  store <4 x float> %1758, ptr %1759, align 16, !tbaa !13
  %1760 = add nuw nsw i64 %1754, 4
  %1761 = add <4 x i32> %1755, <i32 4, i32 4, i32 4, i32 4>
  %1762 = icmp eq i64 %1760, 32000
  br i1 %1762, label %1763, label %1753, !llvm.loop !211

1763:                                             ; preds = %1763, %1753
  %1764 = phi i64 [ %1770, %1763 ], [ 0, %1753 ]
  %1765 = phi <4 x i32> [ %1771, %1763 ], [ <i32 0, i32 1, i32 2, i32 3>, %1753 ]
  %1766 = add <4 x i32> %1765, <i32 1, i32 1, i32 1, i32 1>
  %1767 = sitofp <4 x i32> %1766 to <4 x float>
  %1768 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1767
  %1769 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1764
  store <4 x float> %1768, ptr %1769, align 16, !tbaa !13
  %1770 = add nuw nsw i64 %1764, 4
  %1771 = add <4 x i32> %1765, <i32 4, i32 4, i32 4, i32 4>
  %1772 = icmp eq i64 %1770, 32000
  br i1 %1772, label %3386, label %1763, !llvm.loop !212

1773:                                             ; preds = %1725
  %1774 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.62) #12
  %1775 = icmp eq i32 %1774, 0
  br i1 %1775, label %1776, label %1816

1776:                                             ; preds = %1776, %1773
  %1777 = phi i64 [ %1779, %1776 ], [ 0, %1773 ]
  %1778 = getelementptr inbounds float, ptr @global_data, i64 %1777
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1778, align 16, !tbaa !13
  %1779 = add nuw nsw i64 %1777, 4
  %1780 = icmp eq i64 %1779, 32000
  br i1 %1780, label %1781, label %1776, !llvm.loop !213

1781:                                             ; preds = %1781, %1776
  %1782 = phi i64 [ %1784, %1781 ], [ 0, %1776 ]
  %1783 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1782
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1783, align 16, !tbaa !13
  %1784 = add nuw nsw i64 %1782, 4
  %1785 = icmp eq i64 %1784, 32000
  br i1 %1785, label %1786, label %1781, !llvm.loop !214

1786:                                             ; preds = %1786, %1781
  %1787 = phi i64 [ %1793, %1786 ], [ 0, %1781 ]
  %1788 = phi <4 x i32> [ %1794, %1786 ], [ <i32 0, i32 1, i32 2, i32 3>, %1781 ]
  %1789 = add <4 x i32> %1788, <i32 1, i32 1, i32 1, i32 1>
  %1790 = sitofp <4 x i32> %1789 to <4 x float>
  %1791 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1790
  %1792 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1787
  store <4 x float> %1791, ptr %1792, align 16, !tbaa !13
  %1793 = add nuw nsw i64 %1787, 4
  %1794 = add <4 x i32> %1788, <i32 4, i32 4, i32 4, i32 4>
  %1795 = icmp eq i64 %1793, 32000
  br i1 %1795, label %1796, label %1786, !llvm.loop !215

1796:                                             ; preds = %1796, %1786
  %1797 = phi i64 [ %1803, %1796 ], [ 0, %1786 ]
  %1798 = phi <4 x i32> [ %1804, %1796 ], [ <i32 0, i32 1, i32 2, i32 3>, %1786 ]
  %1799 = add <4 x i32> %1798, <i32 1, i32 1, i32 1, i32 1>
  %1800 = sitofp <4 x i32> %1799 to <4 x float>
  %1801 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1800
  %1802 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1797
  store <4 x float> %1801, ptr %1802, align 16, !tbaa !13
  %1803 = add nuw nsw i64 %1797, 4
  %1804 = add <4 x i32> %1798, <i32 4, i32 4, i32 4, i32 4>
  %1805 = icmp eq i64 %1803, 32000
  br i1 %1805, label %1806, label %1796, !llvm.loop !216

1806:                                             ; preds = %1806, %1796
  %1807 = phi i64 [ %1813, %1806 ], [ 0, %1796 ]
  %1808 = phi <4 x i32> [ %1814, %1806 ], [ <i32 0, i32 1, i32 2, i32 3>, %1796 ]
  %1809 = add <4 x i32> %1808, <i32 1, i32 1, i32 1, i32 1>
  %1810 = sitofp <4 x i32> %1809 to <4 x float>
  %1811 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1810
  %1812 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1807
  store <4 x float> %1811, ptr %1812, align 16, !tbaa !13
  %1813 = add nuw nsw i64 %1807, 4
  %1814 = add <4 x i32> %1808, <i32 4, i32 4, i32 4, i32 4>
  %1815 = icmp eq i64 %1813, 32000
  br i1 %1815, label %3386, label %1806, !llvm.loop !217

1816:                                             ; preds = %1773
  %1817 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.63) #12
  %1818 = icmp eq i32 %1817, 0
  br i1 %1818, label %1819, label %1844

1819:                                             ; preds = %1819, %1816
  %1820 = phi i64 [ %1822, %1819 ], [ 0, %1816 ]
  %1821 = getelementptr inbounds float, ptr @global_data, i64 %1820
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1821, align 16, !tbaa !13
  %1822 = add nuw nsw i64 %1820, 4
  %1823 = icmp eq i64 %1822, 32000
  br i1 %1823, label %1824, label %1819, !llvm.loop !218

1824:                                             ; preds = %1824, %1819
  %1825 = phi i64 [ %1831, %1824 ], [ 0, %1819 ]
  %1826 = phi <4 x i32> [ %1832, %1824 ], [ <i32 0, i32 1, i32 2, i32 3>, %1819 ]
  %1827 = add <4 x i32> %1826, <i32 1, i32 1, i32 1, i32 1>
  %1828 = sitofp <4 x i32> %1827 to <4 x float>
  %1829 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1828
  %1830 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1825
  store <4 x float> %1829, ptr %1830, align 16, !tbaa !13
  %1831 = add nuw nsw i64 %1825, 4
  %1832 = add <4 x i32> %1826, <i32 4, i32 4, i32 4, i32 4>
  %1833 = icmp eq i64 %1831, 32000
  br i1 %1833, label %1834, label %1824, !llvm.loop !219

1834:                                             ; preds = %1834, %1824
  %1835 = phi i64 [ %1841, %1834 ], [ 0, %1824 ]
  %1836 = phi <4 x i32> [ %1842, %1834 ], [ <i32 0, i32 1, i32 2, i32 3>, %1824 ]
  %1837 = add <4 x i32> %1836, <i32 1, i32 1, i32 1, i32 1>
  %1838 = sitofp <4 x i32> %1837 to <4 x float>
  %1839 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1838
  %1840 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1835
  store <4 x float> %1839, ptr %1840, align 16, !tbaa !13
  %1841 = add nuw nsw i64 %1835, 4
  %1842 = add <4 x i32> %1836, <i32 4, i32 4, i32 4, i32 4>
  %1843 = icmp eq i64 %1841, 32000
  br i1 %1843, label %3386, label %1834, !llvm.loop !220

1844:                                             ; preds = %1816
  %1845 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.64) #12
  %1846 = icmp eq i32 %1845, 0
  br i1 %1846, label %1847, label %1872

1847:                                             ; preds = %1847, %1844
  %1848 = phi i64 [ %1850, %1847 ], [ 0, %1844 ]
  %1849 = getelementptr inbounds float, ptr @global_data, i64 %1848
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1849, align 16, !tbaa !13
  %1850 = add nuw nsw i64 %1848, 4
  %1851 = icmp eq i64 %1850, 32000
  br i1 %1851, label %1852, label %1847, !llvm.loop !221

1852:                                             ; preds = %1852, %1847
  %1853 = phi i64 [ %1859, %1852 ], [ 0, %1847 ]
  %1854 = phi <4 x i32> [ %1860, %1852 ], [ <i32 0, i32 1, i32 2, i32 3>, %1847 ]
  %1855 = add <4 x i32> %1854, <i32 1, i32 1, i32 1, i32 1>
  %1856 = sitofp <4 x i32> %1855 to <4 x float>
  %1857 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1856
  %1858 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1853
  store <4 x float> %1857, ptr %1858, align 16, !tbaa !13
  %1859 = add nuw nsw i64 %1853, 4
  %1860 = add <4 x i32> %1854, <i32 4, i32 4, i32 4, i32 4>
  %1861 = icmp eq i64 %1859, 32000
  br i1 %1861, label %1862, label %1852, !llvm.loop !222

1862:                                             ; preds = %1862, %1852
  %1863 = phi i64 [ %1869, %1862 ], [ 0, %1852 ]
  %1864 = phi <4 x i32> [ %1870, %1862 ], [ <i32 0, i32 1, i32 2, i32 3>, %1852 ]
  %1865 = add <4 x i32> %1864, <i32 1, i32 1, i32 1, i32 1>
  %1866 = sitofp <4 x i32> %1865 to <4 x float>
  %1867 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1866
  %1868 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1863
  store <4 x float> %1867, ptr %1868, align 16, !tbaa !13
  %1869 = add nuw nsw i64 %1863, 4
  %1870 = add <4 x i32> %1864, <i32 4, i32 4, i32 4, i32 4>
  %1871 = icmp eq i64 %1869, 32000
  br i1 %1871, label %3386, label %1862, !llvm.loop !223

1872:                                             ; preds = %1844
  %1873 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.65) #12
  %1874 = icmp eq i32 %1873, 0
  br i1 %1874, label %1875, label %1886

1875:                                             ; preds = %1872
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %1876

1876:                                             ; preds = %1876, %1875
  %1877 = phi i64 [ 0, %1875 ], [ %1879, %1876 ]
  %1878 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1877
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1878, align 16, !tbaa !13
  %1879 = add nuw nsw i64 %1877, 4
  %1880 = icmp eq i64 %1879, 32000
  br i1 %1880, label %1881, label %1876, !llvm.loop !224

1881:                                             ; preds = %1881, %1876
  %1882 = phi i64 [ %1884, %1881 ], [ 0, %1876 ]
  %1883 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1882
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1883, align 16, !tbaa !13
  %1884 = add nuw nsw i64 %1882, 4
  %1885 = icmp eq i64 %1884, 32000
  br i1 %1885, label %3386, label %1881, !llvm.loop !225

1886:                                             ; preds = %1872
  %1887 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.66) #12
  %1888 = icmp eq i32 %1887, 0
  br i1 %1888, label %1889, label %1895

1889:                                             ; preds = %1886
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %1890

1890:                                             ; preds = %1890, %1889
  %1891 = phi i64 [ 0, %1889 ], [ %1893, %1890 ]
  %1892 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1891
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1892, align 16, !tbaa !13
  %1893 = add nuw nsw i64 %1891, 4
  %1894 = icmp eq i64 %1893, 32000
  br i1 %1894, label %3386, label %1890, !llvm.loop !226

1895:                                             ; preds = %1886
  %1896 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.67) #12
  %1897 = icmp eq i32 %1896, 0
  br i1 %1897, label %1898, label %1904

1898:                                             ; preds = %1895
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %1899

1899:                                             ; preds = %1899, %1898
  %1900 = phi i64 [ 0, %1898 ], [ %1902, %1899 ]
  %1901 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1900
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1901, align 16, !tbaa !13
  %1902 = add nuw nsw i64 %1900, 4
  %1903 = icmp eq i64 %1902, 32000
  br i1 %1903, label %3386, label %1899, !llvm.loop !227

1904:                                             ; preds = %1895
  %1905 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.68) #12
  %1906 = icmp eq i32 %1905, 0
  br i1 %1906, label %1907, label %1917

1907:                                             ; preds = %1907, %1904
  %1908 = phi i64 [ %1914, %1907 ], [ 0, %1904 ]
  %1909 = phi <4 x i32> [ %1915, %1907 ], [ <i32 0, i32 1, i32 2, i32 3>, %1904 ]
  %1910 = add <4 x i32> %1909, <i32 1, i32 1, i32 1, i32 1>
  %1911 = sitofp <4 x i32> %1910 to <4 x float>
  %1912 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1911
  %1913 = getelementptr inbounds float, ptr @global_data, i64 %1908
  store <4 x float> %1912, ptr %1913, align 16, !tbaa !13
  %1914 = add nuw nsw i64 %1908, 4
  %1915 = add <4 x i32> %1909, <i32 4, i32 4, i32 4, i32 4>
  %1916 = icmp eq i64 %1914, 32000
  br i1 %1916, label %3386, label %1907, !llvm.loop !228

1917:                                             ; preds = %1904
  %1918 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.69) #12
  %1919 = icmp eq i32 %1918, 0
  br i1 %1919, label %1920, label %1960

1920:                                             ; preds = %1927, %1917
  %1921 = phi i64 [ %1928, %1927 ], [ 0, %1917 ]
  br label %1922

1922:                                             ; preds = %1922, %1920
  %1923 = phi i64 [ 0, %1920 ], [ %1925, %1922 ]
  %1924 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1921, i64 %1923
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1924, align 16, !tbaa !13
  %1925 = add nuw nsw i64 %1923, 4
  %1926 = icmp eq i64 %1925, 256
  br i1 %1926, label %1927, label %1922, !llvm.loop !229

1927:                                             ; preds = %1922
  %1928 = add nuw nsw i64 %1921, 1
  %1929 = icmp eq i64 %1928, 256
  br i1 %1929, label %1930, label %1920

1930:                                             ; preds = %1943, %1927
  %1931 = phi i64 [ %1932, %1943 ], [ 0, %1927 ]
  %1932 = add nuw nsw i64 %1931, 1
  %1933 = trunc i64 %1932 to i32
  %1934 = sitofp i32 %1933 to float
  %1935 = fdiv float 1.000000e+00, %1934
  %1936 = insertelement <4 x float> poison, float %1935, i64 0
  %1937 = shufflevector <4 x float> %1936, <4 x float> poison, <4 x i32> zeroinitializer
  br label %1938

1938:                                             ; preds = %1938, %1930
  %1939 = phi i64 [ 0, %1930 ], [ %1941, %1938 ]
  %1940 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %1931, i64 %1939
  store <4 x float> %1937, ptr %1940, align 16, !tbaa !13
  %1941 = add nuw nsw i64 %1939, 4
  %1942 = icmp eq i64 %1941, 256
  br i1 %1942, label %1943, label %1938, !llvm.loop !230

1943:                                             ; preds = %1938
  %1944 = icmp eq i64 %1932, 256
  br i1 %1944, label %1945, label %1930

1945:                                             ; preds = %1958, %1943
  %1946 = phi i64 [ %1947, %1958 ], [ 0, %1943 ]
  %1947 = add nuw nsw i64 %1946, 1
  %1948 = trunc i64 %1947 to i32
  %1949 = sitofp i32 %1948 to float
  %1950 = fdiv float 1.000000e+00, %1949
  %1951 = insertelement <4 x float> poison, float %1950, i64 0
  %1952 = shufflevector <4 x float> %1951, <4 x float> poison, <4 x i32> zeroinitializer
  br label %1953

1953:                                             ; preds = %1953, %1945
  %1954 = phi i64 [ 0, %1945 ], [ %1956, %1953 ]
  %1955 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %1946, i64 %1954
  store <4 x float> %1952, ptr %1955, align 16, !tbaa !13
  %1956 = add nuw nsw i64 %1954, 4
  %1957 = icmp eq i64 %1956, 256
  br i1 %1957, label %1958, label %1953, !llvm.loop !231

1958:                                             ; preds = %1953
  %1959 = icmp eq i64 %1947, 256
  br i1 %1959, label %3386, label %1945

1960:                                             ; preds = %1917
  %1961 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.70) #12
  %1962 = icmp eq i32 %1961, 0
  br i1 %1962, label %1963, label %1964

1963:                                             ; preds = %1960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(262144) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i8 0, i64 262144, i1 false), !tbaa !13
  br label %3386

1964:                                             ; preds = %1960
  %1965 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.71) #12
  %1966 = icmp eq i32 %1965, 0
  br i1 %1966, label %1967, label %1968

1967:                                             ; preds = %1964
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(262144) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i8 0, i64 262144, i1 false), !tbaa !13
  br label %3386

1968:                                             ; preds = %1964
  %1969 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.72) #12
  %1970 = icmp eq i32 %1969, 0
  br i1 %1970, label %1971, label %1981

1971:                                             ; preds = %1971, %1968
  %1972 = phi i64 [ %1978, %1971 ], [ 0, %1968 ]
  %1973 = phi <4 x i32> [ %1979, %1971 ], [ <i32 0, i32 1, i32 2, i32 3>, %1968 ]
  %1974 = add <4 x i32> %1973, <i32 1, i32 1, i32 1, i32 1>
  %1975 = sitofp <4 x i32> %1974 to <4 x float>
  %1976 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1975
  %1977 = getelementptr inbounds float, ptr @global_data, i64 %1972
  store <4 x float> %1976, ptr %1977, align 16, !tbaa !13
  %1978 = add nuw nsw i64 %1972, 4
  %1979 = add <4 x i32> %1973, <i32 4, i32 4, i32 4, i32 4>
  %1980 = icmp eq i64 %1978, 32000
  br i1 %1980, label %3386, label %1971, !llvm.loop !232

1981:                                             ; preds = %1968
  %1982 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.73) #12
  %1983 = icmp eq i32 %1982, 0
  br i1 %1983, label %1984, label %1989

1984:                                             ; preds = %1984, %1981
  %1985 = phi i64 [ %1987, %1984 ], [ 0, %1981 ]
  %1986 = getelementptr inbounds float, ptr @global_data, i64 %1985
  store <4 x float> <float 0x3FF0000100000000, float 0x3FF0000100000000, float 0x3FF0000100000000, float 0x3FF0000100000000>, ptr %1986, align 16, !tbaa !13
  %1987 = add nuw nsw i64 %1985, 4
  %1988 = icmp eq i64 %1987, 32000
  br i1 %1988, label %3386, label %1984, !llvm.loop !233

1989:                                             ; preds = %1981
  %1990 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.74) #12
  %1991 = icmp eq i32 %1990, 0
  br i1 %1991, label %1992, label %2012

1992:                                             ; preds = %1992, %1989
  %1993 = phi i64 [ %1999, %1992 ], [ 0, %1989 ]
  %1994 = phi <4 x i32> [ %2000, %1992 ], [ <i32 0, i32 1, i32 2, i32 3>, %1989 ]
  %1995 = add <4 x i32> %1994, <i32 1, i32 1, i32 1, i32 1>
  %1996 = sitofp <4 x i32> %1995 to <4 x float>
  %1997 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1996
  %1998 = getelementptr inbounds float, ptr @global_data, i64 %1993
  store <4 x float> %1997, ptr %1998, align 16, !tbaa !13
  %1999 = add nuw nsw i64 %1993, 4
  %2000 = add <4 x i32> %1994, <i32 4, i32 4, i32 4, i32 4>
  %2001 = icmp eq i64 %1999, 32000
  br i1 %2001, label %2002, label %1992, !llvm.loop !234

2002:                                             ; preds = %2002, %1992
  %2003 = phi i64 [ %2009, %2002 ], [ 0, %1992 ]
  %2004 = phi <4 x i32> [ %2010, %2002 ], [ <i32 0, i32 1, i32 2, i32 3>, %1992 ]
  %2005 = add <4 x i32> %2004, <i32 1, i32 1, i32 1, i32 1>
  %2006 = sitofp <4 x i32> %2005 to <4 x float>
  %2007 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2006
  %2008 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2003
  store <4 x float> %2007, ptr %2008, align 16, !tbaa !13
  %2009 = add nuw nsw i64 %2003, 4
  %2010 = add <4 x i32> %2004, <i32 4, i32 4, i32 4, i32 4>
  %2011 = icmp eq i64 %2009, 32000
  br i1 %2011, label %3386, label %2002, !llvm.loop !235

2012:                                             ; preds = %1989
  %2013 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.75) #12
  %2014 = icmp eq i32 %2013, 0
  br i1 %2014, label %2015, label %2025

2015:                                             ; preds = %2015, %2012
  %2016 = phi i64 [ %2022, %2015 ], [ 0, %2012 ]
  %2017 = phi <4 x i32> [ %2023, %2015 ], [ <i32 0, i32 1, i32 2, i32 3>, %2012 ]
  %2018 = add <4 x i32> %2017, <i32 1, i32 1, i32 1, i32 1>
  %2019 = sitofp <4 x i32> %2018 to <4 x float>
  %2020 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2019
  %2021 = getelementptr inbounds float, ptr @global_data, i64 %2016
  store <4 x float> %2020, ptr %2021, align 16, !tbaa !13
  %2022 = add nuw nsw i64 %2016, 4
  %2023 = add <4 x i32> %2017, <i32 4, i32 4, i32 4, i32 4>
  %2024 = icmp eq i64 %2022, 32000
  br i1 %2024, label %3386, label %2015, !llvm.loop !236

2025:                                             ; preds = %2012
  %2026 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.76) #12
  %2027 = icmp eq i32 %2026, 0
  br i1 %2027, label %2028, label %2038

2028:                                             ; preds = %2028, %2025
  %2029 = phi i64 [ %2035, %2028 ], [ 0, %2025 ]
  %2030 = phi <4 x i32> [ %2036, %2028 ], [ <i32 0, i32 1, i32 2, i32 3>, %2025 ]
  %2031 = add <4 x i32> %2030, <i32 1, i32 1, i32 1, i32 1>
  %2032 = sitofp <4 x i32> %2031 to <4 x float>
  %2033 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2032
  %2034 = getelementptr inbounds float, ptr @global_data, i64 %2029
  store <4 x float> %2033, ptr %2034, align 16, !tbaa !13
  %2035 = add nuw nsw i64 %2029, 4
  %2036 = add <4 x i32> %2030, <i32 4, i32 4, i32 4, i32 4>
  %2037 = icmp eq i64 %2035, 32000
  br i1 %2037, label %3386, label %2028, !llvm.loop !237

2038:                                             ; preds = %2025
  %2039 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.77) #12
  %2040 = icmp eq i32 %2039, 0
  br i1 %2040, label %2041, label %2051

2041:                                             ; preds = %2041, %2038
  %2042 = phi i64 [ %2048, %2041 ], [ 0, %2038 ]
  %2043 = phi <4 x i32> [ %2049, %2041 ], [ <i32 0, i32 1, i32 2, i32 3>, %2038 ]
  %2044 = add <4 x i32> %2043, <i32 1, i32 1, i32 1, i32 1>
  %2045 = sitofp <4 x i32> %2044 to <4 x float>
  %2046 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2045
  %2047 = getelementptr inbounds float, ptr @global_data, i64 %2042
  store <4 x float> %2046, ptr %2047, align 16, !tbaa !13
  %2048 = add nuw nsw i64 %2042, 4
  %2049 = add <4 x i32> %2043, <i32 4, i32 4, i32 4, i32 4>
  %2050 = icmp eq i64 %2048, 32000
  br i1 %2050, label %3386, label %2041, !llvm.loop !238

2051:                                             ; preds = %2038
  %2052 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.78) #12
  %2053 = icmp eq i32 %2052, 0
  br i1 %2053, label %3386, label %2054

2054:                                             ; preds = %2051
  %2055 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.79) #12
  %2056 = icmp eq i32 %2055, 0
  br i1 %2056, label %2057, label %2068

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
  br i1 %2066, label %2067, label %2057, !llvm.loop !239

2067:                                             ; preds = %2057
  store float -2.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 31999), align 4, !tbaa !13
  br label %3386

2068:                                             ; preds = %2054
  %2069 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.80) #12
  %2070 = icmp eq i32 %2069, 0
  br i1 %2070, label %2071, label %2102

2071:                                             ; preds = %2068
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), i8 0, i64 128000, i1 false), !tbaa !13
  br label %2072

2072:                                             ; preds = %2072, %2071
  %2073 = phi i64 [ 0, %2071 ], [ %2079, %2072 ]
  %2074 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %2071 ], [ %2080, %2072 ]
  %2075 = add <4 x i32> %2074, <i32 1, i32 1, i32 1, i32 1>
  %2076 = sitofp <4 x i32> %2075 to <4 x float>
  %2077 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2076
  %2078 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2073
  store <4 x float> %2077, ptr %2078, align 16, !tbaa !13
  %2079 = add nuw nsw i64 %2073, 4
  %2080 = add <4 x i32> %2074, <i32 4, i32 4, i32 4, i32 4>
  %2081 = icmp eq i64 %2079, 32000
  br i1 %2081, label %2082, label %2072, !llvm.loop !240

2082:                                             ; preds = %2082, %2072
  %2083 = phi i64 [ %2089, %2082 ], [ 0, %2072 ]
  %2084 = phi <4 x i32> [ %2090, %2082 ], [ <i32 0, i32 1, i32 2, i32 3>, %2072 ]
  %2085 = add <4 x i32> %2084, <i32 1, i32 1, i32 1, i32 1>
  %2086 = sitofp <4 x i32> %2085 to <4 x float>
  %2087 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2086
  %2088 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2083
  store <4 x float> %2087, ptr %2088, align 16, !tbaa !13
  %2089 = add nuw nsw i64 %2083, 4
  %2090 = add <4 x i32> %2084, <i32 4, i32 4, i32 4, i32 4>
  %2091 = icmp eq i64 %2089, 32000
  br i1 %2091, label %2092, label %2082, !llvm.loop !241

2092:                                             ; preds = %2092, %2082
  %2093 = phi i64 [ %2099, %2092 ], [ 0, %2082 ]
  %2094 = phi <4 x i32> [ %2100, %2092 ], [ <i32 0, i32 1, i32 2, i32 3>, %2082 ]
  %2095 = add <4 x i32> %2094, <i32 1, i32 1, i32 1, i32 1>
  %2096 = sitofp <4 x i32> %2095 to <4 x float>
  %2097 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2096
  %2098 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %2093
  store <4 x float> %2097, ptr %2098, align 16, !tbaa !13
  %2099 = add nuw nsw i64 %2093, 4
  %2100 = add <4 x i32> %2094, <i32 4, i32 4, i32 4, i32 4>
  %2101 = icmp eq i64 %2099, 32000
  br i1 %2101, label %3386, label %2092, !llvm.loop !242

2102:                                             ; preds = %2068
  %2103 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.81) #12
  %2104 = icmp eq i32 %2103, 0
  br i1 %2104, label %2105, label %2121

2105:                                             ; preds = %2118, %2102
  %2106 = phi i64 [ %2107, %2118 ], [ 0, %2102 ]
  %2107 = add nuw nsw i64 %2106, 1
  %2108 = trunc i64 %2107 to i32
  %2109 = sitofp i32 %2108 to float
  %2110 = fdiv float 1.000000e+00, %2109
  %2111 = insertelement <4 x float> poison, float %2110, i64 0
  %2112 = shufflevector <4 x float> %2111, <4 x float> poison, <4 x i32> zeroinitializer
  br label %2113

2113:                                             ; preds = %2113, %2105
  %2114 = phi i64 [ 0, %2105 ], [ %2116, %2113 ]
  %2115 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %2106, i64 %2114
  store <4 x float> %2112, ptr %2115, align 16, !tbaa !13
  %2116 = add nuw nsw i64 %2114, 4
  %2117 = icmp eq i64 %2116, 256
  br i1 %2117, label %2118, label %2113, !llvm.loop !243

2118:                                             ; preds = %2113
  %2119 = icmp eq i64 %2107, 256
  br i1 %2119, label %2120, label %2105

2120:                                             ; preds = %2118
  store float 2.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 255, i64 255), align 4, !tbaa !13
  br label %3386

2121:                                             ; preds = %2102
  %2122 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.82) #12
  %2123 = icmp eq i32 %2122, 0
  br i1 %2123, label %2124, label %2134

2124:                                             ; preds = %2124, %2121
  %2125 = phi i64 [ %2131, %2124 ], [ 0, %2121 ]
  %2126 = phi <4 x i32> [ %2132, %2124 ], [ <i32 0, i32 1, i32 2, i32 3>, %2121 ]
  %2127 = add <4 x i32> %2126, <i32 1, i32 1, i32 1, i32 1>
  %2128 = sitofp <4 x i32> %2127 to <4 x float>
  %2129 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2128
  %2130 = getelementptr inbounds float, ptr @global_data, i64 %2125
  store <4 x float> %2129, ptr %2130, align 16, !tbaa !13
  %2131 = add nuw nsw i64 %2125, 4
  %2132 = add <4 x i32> %2126, <i32 4, i32 4, i32 4, i32 4>
  %2133 = icmp eq i64 %2131, 32000
  br i1 %2133, label %3386, label %2124, !llvm.loop !244

2134:                                             ; preds = %2121
  %2135 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.83) #12
  %2136 = icmp eq i32 %2135, 0
  br i1 %2136, label %2137, label %2149

2137:                                             ; preds = %2137, %2134
  %2138 = phi i64 [ %2145, %2137 ], [ 0, %2134 ]
  %2139 = phi <4 x i32> [ %2146, %2137 ], [ <i32 0, i32 1, i32 2, i32 3>, %2134 ]
  %2140 = add <4 x i32> %2139, <i32 1, i32 1, i32 1, i32 1>
  %2141 = mul <4 x i32> %2140, %2140
  %2142 = sitofp <4 x i32> %2141 to <4 x float>
  %2143 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2142
  %2144 = getelementptr inbounds float, ptr @global_data, i64 %2138
  store <4 x float> %2143, ptr %2144, align 16, !tbaa !13
  %2145 = add nuw nsw i64 %2138, 4
  %2146 = add <4 x i32> %2139, <i32 4, i32 4, i32 4, i32 4>
  %2147 = icmp eq i64 %2145, 32000
  br i1 %2147, label %2148, label %2137, !llvm.loop !245

2148:                                             ; preds = %2137
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), i8 0, i64 128000, i1 false), !tbaa !13
  br label %3386

2149:                                             ; preds = %2134
  %2150 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.84) #12
  %2151 = icmp eq i32 %2150, 0
  br i1 %2151, label %2152, label %2163

2152:                                             ; preds = %2152, %2149
  %2153 = phi i64 [ %2159, %2152 ], [ 0, %2149 ]
  %2154 = phi <4 x i32> [ %2160, %2152 ], [ <i32 0, i32 1, i32 2, i32 3>, %2149 ]
  %2155 = add <4 x i32> %2154, <i32 1, i32 1, i32 1, i32 1>
  %2156 = sitofp <4 x i32> %2155 to <4 x float>
  %2157 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2156
  %2158 = getelementptr inbounds float, ptr @global_data, i64 %2153
  store <4 x float> %2157, ptr %2158, align 16, !tbaa !13
  %2159 = add nuw nsw i64 %2153, 4
  %2160 = add <4 x i32> %2154, <i32 4, i32 4, i32 4, i32 4>
  %2161 = icmp eq i64 %2159, 32000
  br i1 %2161, label %2162, label %2152, !llvm.loop !246

2162:                                             ; preds = %2152
  store float -2.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 31999), align 4, !tbaa !13
  br label %3386

2163:                                             ; preds = %2149
  %2164 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.85) #12
  %2165 = icmp eq i32 %2164, 0
  br i1 %2165, label %2166, label %2172

2166:                                             ; preds = %2166, %2163
  %2167 = phi i64 [ %2169, %2166 ], [ 0, %2163 ]
  %2168 = getelementptr inbounds float, ptr @global_data, i64 %2167
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2168, align 16, !tbaa !13
  %2169 = add nuw nsw i64 %2167, 4
  %2170 = icmp eq i64 %2169, 32000
  br i1 %2170, label %2171, label %2166, !llvm.loop !247

2171:                                             ; preds = %2166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), i8 0, i64 128000, i1 false), !tbaa !13
  br label %3386

2172:                                             ; preds = %2163
  %2173 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.86) #12
  %2174 = icmp eq i32 %2173, 0
  br i1 %2174, label %2175, label %2181

2175:                                             ; preds = %2175, %2172
  %2176 = phi i64 [ %2178, %2175 ], [ 0, %2172 ]
  %2177 = getelementptr inbounds float, ptr @global_data, i64 %2176
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2177, align 16, !tbaa !13
  %2178 = add nuw nsw i64 %2176, 4
  %2179 = icmp eq i64 %2178, 32000
  br i1 %2179, label %2180, label %2175, !llvm.loop !248

2180:                                             ; preds = %2175
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), i8 0, i64 128000, i1 false), !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 0), i8 0, i64 128000, i1 false), !tbaa !13
  br label %3386

2181:                                             ; preds = %2172
  %2182 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.87) #12
  %2183 = icmp eq i32 %2182, 0
  br i1 %2183, label %2184, label %2224

2184:                                             ; preds = %2184, %2181
  %2185 = phi i64 [ %2187, %2184 ], [ 0, %2181 ]
  %2186 = getelementptr inbounds float, ptr @global_data, i64 %2185
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2186, align 16, !tbaa !13
  %2187 = add nuw nsw i64 %2185, 4
  %2188 = icmp eq i64 %2187, 32000
  br i1 %2188, label %2189, label %2184, !llvm.loop !249

2189:                                             ; preds = %2189, %2184
  %2190 = phi i64 [ %2192, %2189 ], [ 0, %2184 ]
  %2191 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2190
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2191, align 16, !tbaa !13
  %2192 = add nuw nsw i64 %2190, 4
  %2193 = icmp eq i64 %2192, 32000
  br i1 %2193, label %2194, label %2189, !llvm.loop !250

2194:                                             ; preds = %2194, %2189
  %2195 = phi i64 [ %2201, %2194 ], [ 0, %2189 ]
  %2196 = phi <4 x i32> [ %2202, %2194 ], [ <i32 0, i32 1, i32 2, i32 3>, %2189 ]
  %2197 = add <4 x i32> %2196, <i32 1, i32 1, i32 1, i32 1>
  %2198 = sitofp <4 x i32> %2197 to <4 x float>
  %2199 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2198
  %2200 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2195
  store <4 x float> %2199, ptr %2200, align 16, !tbaa !13
  %2201 = add nuw nsw i64 %2195, 4
  %2202 = add <4 x i32> %2196, <i32 4, i32 4, i32 4, i32 4>
  %2203 = icmp eq i64 %2201, 32000
  br i1 %2203, label %2204, label %2194, !llvm.loop !251

2204:                                             ; preds = %2204, %2194
  %2205 = phi i64 [ %2211, %2204 ], [ 0, %2194 ]
  %2206 = phi <4 x i32> [ %2212, %2204 ], [ <i32 0, i32 1, i32 2, i32 3>, %2194 ]
  %2207 = add <4 x i32> %2206, <i32 1, i32 1, i32 1, i32 1>
  %2208 = sitofp <4 x i32> %2207 to <4 x float>
  %2209 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2208
  %2210 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2205
  store <4 x float> %2209, ptr %2210, align 16, !tbaa !13
  %2211 = add nuw nsw i64 %2205, 4
  %2212 = add <4 x i32> %2206, <i32 4, i32 4, i32 4, i32 4>
  %2213 = icmp eq i64 %2211, 32000
  br i1 %2213, label %2214, label %2204, !llvm.loop !252

2214:                                             ; preds = %2214, %2204
  %2215 = phi i64 [ %2221, %2214 ], [ 0, %2204 ]
  %2216 = phi <4 x i32> [ %2222, %2214 ], [ <i32 0, i32 1, i32 2, i32 3>, %2204 ]
  %2217 = add <4 x i32> %2216, <i32 1, i32 1, i32 1, i32 1>
  %2218 = sitofp <4 x i32> %2217 to <4 x float>
  %2219 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2218
  %2220 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %2215
  store <4 x float> %2219, ptr %2220, align 16, !tbaa !13
  %2221 = add nuw nsw i64 %2215, 4
  %2222 = add <4 x i32> %2216, <i32 4, i32 4, i32 4, i32 4>
  %2223 = icmp eq i64 %2221, 32000
  br i1 %2223, label %3386, label %2214, !llvm.loop !253

2224:                                             ; preds = %2181
  %2225 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.88) #12
  %2226 = icmp eq i32 %2225, 0
  br i1 %2226, label %2227, label %2238

2227:                                             ; preds = %2227, %2224
  %2228 = phi i64 [ %2234, %2227 ], [ 0, %2224 ]
  %2229 = phi <4 x i32> [ %2235, %2227 ], [ <i32 0, i32 1, i32 2, i32 3>, %2224 ]
  %2230 = add <4 x i32> %2229, <i32 1, i32 1, i32 1, i32 1>
  %2231 = sitofp <4 x i32> %2230 to <4 x float>
  %2232 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2231
  %2233 = getelementptr inbounds float, ptr @global_data, i64 %2228
  store <4 x float> %2232, ptr %2233, align 16, !tbaa !13
  %2234 = add nuw nsw i64 %2228, 4
  %2235 = add <4 x i32> %2229, <i32 4, i32 4, i32 4, i32 4>
  %2236 = icmp eq i64 %2234, 32000
  br i1 %2236, label %2237, label %2227, !llvm.loop !254

2237:                                             ; preds = %2227
  store float -1.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 31999), align 4, !tbaa !13
  br label %3386

2238:                                             ; preds = %2224
  %2239 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.89) #12
  %2240 = icmp eq i32 %2239, 0
  br i1 %2240, label %2241, label %2253

2241:                                             ; preds = %2241, %2238
  %2242 = phi i64 [ %2249, %2241 ], [ 0, %2238 ]
  %2243 = phi <4 x i32> [ %2250, %2241 ], [ <i32 0, i32 1, i32 2, i32 3>, %2238 ]
  %2244 = add <4 x i32> %2243, <i32 1, i32 1, i32 1, i32 1>
  %2245 = mul <4 x i32> %2244, %2244
  %2246 = sitofp <4 x i32> %2245 to <4 x float>
  %2247 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2246
  %2248 = getelementptr inbounds float, ptr @global_data, i64 %2242
  store <4 x float> %2247, ptr %2248, align 16, !tbaa !13
  %2249 = add nuw nsw i64 %2242, 4
  %2250 = add <4 x i32> %2243, <i32 4, i32 4, i32 4, i32 4>
  %2251 = icmp eq i64 %2249, 32000
  br i1 %2251, label %2252, label %2241, !llvm.loop !255

2252:                                             ; preds = %2241
  store float 2.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 31999), align 4, !tbaa !13
  br label %3386

2253:                                             ; preds = %2238
  %2254 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.90) #12
  %2255 = icmp eq i32 %2254, 0
  br i1 %2255, label %2256, label %2267

2256:                                             ; preds = %2253
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %2257

2257:                                             ; preds = %2257, %2256
  %2258 = phi i64 [ 0, %2256 ], [ %2264, %2257 ]
  %2259 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %2256 ], [ %2265, %2257 ]
  %2260 = add <4 x i32> %2259, <i32 1, i32 1, i32 1, i32 1>
  %2261 = sitofp <4 x i32> %2260 to <4 x float>
  %2262 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2261
  %2263 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2258
  store <4 x float> %2262, ptr %2263, align 16, !tbaa !13
  %2264 = add nuw nsw i64 %2258, 4
  %2265 = add <4 x i32> %2259, <i32 4, i32 4, i32 4, i32 4>
  %2266 = icmp eq i64 %2264, 32000
  br i1 %2266, label %3386, label %2257, !llvm.loop !256

2267:                                             ; preds = %2253
  %2268 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.91) #12
  %2269 = icmp eq i32 %2268, 0
  br i1 %2269, label %2270, label %2290

2270:                                             ; preds = %2270, %2267
  %2271 = phi i64 [ %2277, %2270 ], [ 0, %2267 ]
  %2272 = phi <4 x i32> [ %2278, %2270 ], [ <i32 0, i32 1, i32 2, i32 3>, %2267 ]
  %2273 = add <4 x i32> %2272, <i32 1, i32 1, i32 1, i32 1>
  %2274 = sitofp <4 x i32> %2273 to <4 x float>
  %2275 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2274
  %2276 = getelementptr inbounds float, ptr @global_data, i64 %2271
  store <4 x float> %2275, ptr %2276, align 16, !tbaa !13
  %2277 = add nuw nsw i64 %2271, 4
  %2278 = add <4 x i32> %2272, <i32 4, i32 4, i32 4, i32 4>
  %2279 = icmp eq i64 %2277, 32000
  br i1 %2279, label %2280, label %2270, !llvm.loop !257

2280:                                             ; preds = %2280, %2270
  %2281 = phi i64 [ %2287, %2280 ], [ 0, %2270 ]
  %2282 = phi <4 x i32> [ %2288, %2280 ], [ <i32 0, i32 1, i32 2, i32 3>, %2270 ]
  %2283 = add <4 x i32> %2282, <i32 1, i32 1, i32 1, i32 1>
  %2284 = sitofp <4 x i32> %2283 to <4 x float>
  %2285 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2284
  %2286 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2281
  store <4 x float> %2285, ptr %2286, align 16, !tbaa !13
  %2287 = add nuw nsw i64 %2281, 4
  %2288 = add <4 x i32> %2282, <i32 4, i32 4, i32 4, i32 4>
  %2289 = icmp eq i64 %2287, 32000
  br i1 %2289, label %3386, label %2280, !llvm.loop !258

2290:                                             ; preds = %2267
  %2291 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.92) #12
  %2292 = icmp eq i32 %2291, 0
  br i1 %2292, label %2293, label %2318

2293:                                             ; preds = %2306, %2290
  %2294 = phi i64 [ %2295, %2306 ], [ 0, %2290 ]
  %2295 = add nuw nsw i64 %2294, 1
  %2296 = trunc i64 %2295 to i32
  %2297 = sitofp i32 %2296 to float
  %2298 = fdiv float 1.000000e+00, %2297
  %2299 = insertelement <4 x float> poison, float %2298, i64 0
  %2300 = shufflevector <4 x float> %2299, <4 x float> poison, <4 x i32> zeroinitializer
  br label %2301

2301:                                             ; preds = %2301, %2293
  %2302 = phi i64 [ 0, %2293 ], [ %2304, %2301 ]
  %2303 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %2294, i64 %2302
  store <4 x float> %2300, ptr %2303, align 16, !tbaa !13
  %2304 = add nuw nsw i64 %2302, 4
  %2305 = icmp eq i64 %2304, 256
  br i1 %2305, label %2306, label %2301, !llvm.loop !259

2306:                                             ; preds = %2301
  %2307 = icmp eq i64 %2295, 256
  br i1 %2307, label %2308, label %2293

2308:                                             ; preds = %2315, %2306
  %2309 = phi i64 [ %2316, %2315 ], [ 0, %2306 ]
  br label %2310

2310:                                             ; preds = %2310, %2308
  %2311 = phi i64 [ 0, %2308 ], [ %2313, %2310 ]
  %2312 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %2309, i64 %2311
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2312, align 16, !tbaa !13
  %2313 = add nuw nsw i64 %2311, 4
  %2314 = icmp eq i64 %2313, 256
  br i1 %2314, label %2315, label %2310, !llvm.loop !260

2315:                                             ; preds = %2310
  %2316 = add nuw nsw i64 %2309, 1
  %2317 = icmp eq i64 %2316, 256
  br i1 %2317, label %3386, label %2308

2318:                                             ; preds = %2290
  %2319 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.93) #12
  %2320 = icmp eq i32 %2319, 0
  br i1 %2320, label %2321, label %2332

2321:                                             ; preds = %2321, %2318
  %2322 = phi i64 [ %2324, %2321 ], [ 0, %2318 ]
  %2323 = getelementptr inbounds float, ptr @global_data, i64 %2322
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2323, align 16, !tbaa !13
  %2324 = add nuw nsw i64 %2322, 4
  %2325 = icmp eq i64 %2324, 32000
  br i1 %2325, label %2326, label %2321, !llvm.loop !261

2326:                                             ; preds = %2326, %2321
  %2327 = phi i64 [ %2329, %2326 ], [ 0, %2321 ]
  %2328 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2327
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2328, align 16, !tbaa !13
  %2329 = add nuw nsw i64 %2327, 4
  %2330 = icmp eq i64 %2329, 32000
  br i1 %2330, label %2331, label %2326, !llvm.loop !262

2331:                                             ; preds = %2326
  store float 1.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 0), align 16, !tbaa !13
  br label %3386

2332:                                             ; preds = %2318
  %2333 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.94) #12
  %2334 = icmp eq i32 %2333, 0
  br i1 %2334, label %2335, label %2355

2335:                                             ; preds = %2335, %2332
  %2336 = phi i64 [ %2342, %2335 ], [ 0, %2332 ]
  %2337 = phi <4 x i32> [ %2343, %2335 ], [ <i32 0, i32 1, i32 2, i32 3>, %2332 ]
  %2338 = add <4 x i32> %2337, <i32 1, i32 1, i32 1, i32 1>
  %2339 = sitofp <4 x i32> %2338 to <4 x float>
  %2340 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2339
  %2341 = getelementptr inbounds float, ptr @global_data, i64 %2336
  store <4 x float> %2340, ptr %2341, align 16, !tbaa !13
  %2342 = add nuw nsw i64 %2336, 4
  %2343 = add <4 x i32> %2337, <i32 4, i32 4, i32 4, i32 4>
  %2344 = icmp eq i64 %2342, 32000
  br i1 %2344, label %2345, label %2335, !llvm.loop !263

2345:                                             ; preds = %2345, %2335
  %2346 = phi i64 [ %2352, %2345 ], [ 0, %2335 ]
  %2347 = phi <4 x i32> [ %2353, %2345 ], [ <i32 0, i32 1, i32 2, i32 3>, %2335 ]
  %2348 = add <4 x i32> %2347, <i32 1, i32 1, i32 1, i32 1>
  %2349 = sitofp <4 x i32> %2348 to <4 x float>
  %2350 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2349
  %2351 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2346
  store <4 x float> %2350, ptr %2351, align 16, !tbaa !13
  %2352 = add nuw nsw i64 %2346, 4
  %2353 = add <4 x i32> %2347, <i32 4, i32 4, i32 4, i32 4>
  %2354 = icmp eq i64 %2352, 32000
  br i1 %2354, label %3386, label %2345, !llvm.loop !264

2355:                                             ; preds = %2332
  %2356 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.95) #12
  %2357 = icmp eq i32 %2356, 0
  br i1 %2357, label %2358, label %2369

2358:                                             ; preds = %2358, %2355
  %2359 = phi i64 [ %2361, %2358 ], [ 0, %2355 ]
  %2360 = getelementptr inbounds float, ptr @global_data, i64 %2359
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2360, align 16, !tbaa !13
  %2361 = add nuw nsw i64 %2359, 4
  %2362 = icmp eq i64 %2361, 32000
  br i1 %2362, label %2363, label %2358, !llvm.loop !265

2363:                                             ; preds = %2363, %2358
  %2364 = phi i64 [ %2366, %2363 ], [ 0, %2358 ]
  %2365 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2364
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2365, align 16, !tbaa !13
  %2366 = add nuw nsw i64 %2364, 4
  %2367 = icmp eq i64 %2366, 32000
  br i1 %2367, label %2368, label %2363, !llvm.loop !266

2368:                                             ; preds = %2363
  store float 1.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 0), align 16, !tbaa !13
  br label %3386

2369:                                             ; preds = %2355
  %2370 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.96) #12
  %2371 = icmp eq i32 %2370, 0
  br i1 %2371, label %2372, label %2397

2372:                                             ; preds = %2372, %2369
  %2373 = phi i64 [ %2375, %2372 ], [ 0, %2369 ]
  %2374 = getelementptr inbounds float, ptr @global_data, i64 %2373
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2374, align 16, !tbaa !13
  %2375 = add nuw nsw i64 %2373, 4
  %2376 = icmp eq i64 %2375, 32000
  br i1 %2376, label %2377, label %2372, !llvm.loop !267

2377:                                             ; preds = %2377, %2372
  %2378 = phi i64 [ %2384, %2377 ], [ 0, %2372 ]
  %2379 = phi <4 x i32> [ %2385, %2377 ], [ <i32 0, i32 1, i32 2, i32 3>, %2372 ]
  %2380 = add <4 x i32> %2379, <i32 1, i32 1, i32 1, i32 1>
  %2381 = sitofp <4 x i32> %2380 to <4 x float>
  %2382 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2381
  %2383 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2378
  store <4 x float> %2382, ptr %2383, align 16, !tbaa !13
  %2384 = add nuw nsw i64 %2378, 4
  %2385 = add <4 x i32> %2379, <i32 4, i32 4, i32 4, i32 4>
  %2386 = icmp eq i64 %2384, 32000
  br i1 %2386, label %2387, label %2377, !llvm.loop !268

2387:                                             ; preds = %2387, %2377
  %2388 = phi i64 [ %2394, %2387 ], [ 0, %2377 ]
  %2389 = phi <4 x i32> [ %2395, %2387 ], [ <i32 0, i32 1, i32 2, i32 3>, %2377 ]
  %2390 = add <4 x i32> %2389, <i32 1, i32 1, i32 1, i32 1>
  %2391 = sitofp <4 x i32> %2390 to <4 x float>
  %2392 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2391
  %2393 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2388
  store <4 x float> %2392, ptr %2393, align 16, !tbaa !13
  %2394 = add nuw nsw i64 %2388, 4
  %2395 = add <4 x i32> %2389, <i32 4, i32 4, i32 4, i32 4>
  %2396 = icmp eq i64 %2394, 32000
  br i1 %2396, label %3386, label %2387, !llvm.loop !269

2397:                                             ; preds = %2369
  %2398 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.97) #12
  %2399 = icmp eq i32 %2398, 0
  br i1 %2399, label %2400, label %2425

2400:                                             ; preds = %2400, %2397
  %2401 = phi i64 [ %2403, %2400 ], [ 0, %2397 ]
  %2402 = getelementptr inbounds float, ptr @global_data, i64 %2401
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2402, align 16, !tbaa !13
  %2403 = add nuw nsw i64 %2401, 4
  %2404 = icmp eq i64 %2403, 32000
  br i1 %2404, label %2405, label %2400, !llvm.loop !270

2405:                                             ; preds = %2405, %2400
  %2406 = phi i64 [ %2412, %2405 ], [ 0, %2400 ]
  %2407 = phi <4 x i32> [ %2413, %2405 ], [ <i32 0, i32 1, i32 2, i32 3>, %2400 ]
  %2408 = add <4 x i32> %2407, <i32 1, i32 1, i32 1, i32 1>
  %2409 = sitofp <4 x i32> %2408 to <4 x float>
  %2410 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2409
  %2411 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2406
  store <4 x float> %2410, ptr %2411, align 16, !tbaa !13
  %2412 = add nuw nsw i64 %2406, 4
  %2413 = add <4 x i32> %2407, <i32 4, i32 4, i32 4, i32 4>
  %2414 = icmp eq i64 %2412, 32000
  br i1 %2414, label %2415, label %2405, !llvm.loop !271

2415:                                             ; preds = %2415, %2405
  %2416 = phi i64 [ %2422, %2415 ], [ 0, %2405 ]
  %2417 = phi <4 x i32> [ %2423, %2415 ], [ <i32 0, i32 1, i32 2, i32 3>, %2405 ]
  %2418 = add <4 x i32> %2417, <i32 1, i32 1, i32 1, i32 1>
  %2419 = sitofp <4 x i32> %2418 to <4 x float>
  %2420 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2419
  %2421 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2416
  store <4 x float> %2420, ptr %2421, align 16, !tbaa !13
  %2422 = add nuw nsw i64 %2416, 4
  %2423 = add <4 x i32> %2417, <i32 4, i32 4, i32 4, i32 4>
  %2424 = icmp eq i64 %2422, 32000
  br i1 %2424, label %3386, label %2415, !llvm.loop !272

2425:                                             ; preds = %2397
  %2426 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.98) #12
  %2427 = icmp eq i32 %2426, 0
  br i1 %2427, label %2428, label %2459

2428:                                             ; preds = %2425
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %2429

2429:                                             ; preds = %2429, %2428
  %2430 = phi i64 [ 0, %2428 ], [ %2432, %2429 ]
  %2431 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2430
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2431, align 16, !tbaa !13
  %2432 = add nuw nsw i64 %2430, 4
  %2433 = icmp eq i64 %2432, 32000
  br i1 %2433, label %2434, label %2429, !llvm.loop !273

2434:                                             ; preds = %2434, %2429
  %2435 = phi i64 [ %2437, %2434 ], [ 0, %2429 ]
  %2436 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2435
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2436, align 16, !tbaa !13
  %2437 = add nuw nsw i64 %2435, 4
  %2438 = icmp eq i64 %2437, 32000
  br i1 %2438, label %2439, label %2434, !llvm.loop !274

2439:                                             ; preds = %2439, %2434
  %2440 = phi i64 [ %2446, %2439 ], [ 0, %2434 ]
  %2441 = phi <4 x i32> [ %2447, %2439 ], [ <i32 0, i32 1, i32 2, i32 3>, %2434 ]
  %2442 = add <4 x i32> %2441, <i32 1, i32 1, i32 1, i32 1>
  %2443 = sitofp <4 x i32> %2442 to <4 x float>
  %2444 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2443
  %2445 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2440
  store <4 x float> %2444, ptr %2445, align 16, !tbaa !13
  %2446 = add nuw nsw i64 %2440, 4
  %2447 = add <4 x i32> %2441, <i32 4, i32 4, i32 4, i32 4>
  %2448 = icmp eq i64 %2446, 32000
  br i1 %2448, label %2449, label %2439, !llvm.loop !275

2449:                                             ; preds = %2449, %2439
  %2450 = phi i64 [ %2456, %2449 ], [ 0, %2439 ]
  %2451 = phi <4 x i32> [ %2457, %2449 ], [ <i32 0, i32 1, i32 2, i32 3>, %2439 ]
  %2452 = add <4 x i32> %2451, <i32 1, i32 1, i32 1, i32 1>
  %2453 = sitofp <4 x i32> %2452 to <4 x float>
  %2454 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2453
  %2455 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %2450
  store <4 x float> %2454, ptr %2455, align 16, !tbaa !13
  %2456 = add nuw nsw i64 %2450, 4
  %2457 = add <4 x i32> %2451, <i32 4, i32 4, i32 4, i32 4>
  %2458 = icmp eq i64 %2456, 32000
  br i1 %2458, label %3386, label %2449, !llvm.loop !276

2459:                                             ; preds = %2425
  %2460 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.99) #12
  %2461 = icmp eq i32 %2460, 0
  br i1 %2461, label %2462, label %2502

2462:                                             ; preds = %2469, %2459
  %2463 = phi i64 [ %2470, %2469 ], [ 0, %2459 ]
  br label %2464

2464:                                             ; preds = %2464, %2462
  %2465 = phi i64 [ 0, %2462 ], [ %2467, %2464 ]
  %2466 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %2463, i64 %2465
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2466, align 16, !tbaa !13
  %2467 = add nuw nsw i64 %2465, 4
  %2468 = icmp eq i64 %2467, 256
  br i1 %2468, label %2469, label %2464, !llvm.loop !277

2469:                                             ; preds = %2464
  %2470 = add nuw nsw i64 %2463, 1
  %2471 = icmp eq i64 %2470, 256
  br i1 %2471, label %2472, label %2462

2472:                                             ; preds = %2485, %2469
  %2473 = phi i64 [ %2474, %2485 ], [ 0, %2469 ]
  %2474 = add nuw nsw i64 %2473, 1
  %2475 = trunc i64 %2474 to i32
  %2476 = sitofp i32 %2475 to float
  %2477 = fdiv float 1.000000e+00, %2476
  %2478 = insertelement <4 x float> poison, float %2477, i64 0
  %2479 = shufflevector <4 x float> %2478, <4 x float> poison, <4 x i32> zeroinitializer
  br label %2480

2480:                                             ; preds = %2480, %2472
  %2481 = phi i64 [ 0, %2472 ], [ %2483, %2480 ]
  %2482 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %2473, i64 %2481
  store <4 x float> %2479, ptr %2482, align 16, !tbaa !13
  %2483 = add nuw nsw i64 %2481, 4
  %2484 = icmp eq i64 %2483, 256
  br i1 %2484, label %2485, label %2480, !llvm.loop !278

2485:                                             ; preds = %2480
  %2486 = icmp eq i64 %2474, 256
  br i1 %2486, label %2487, label %2472

2487:                                             ; preds = %2500, %2485
  %2488 = phi i64 [ %2489, %2500 ], [ 0, %2485 ]
  %2489 = add nuw nsw i64 %2488, 1
  %2490 = trunc i64 %2489 to i32
  %2491 = sitofp i32 %2490 to float
  %2492 = fdiv float 1.000000e+00, %2491
  %2493 = insertelement <4 x float> poison, float %2492, i64 0
  %2494 = shufflevector <4 x float> %2493, <4 x float> poison, <4 x i32> zeroinitializer
  br label %2495

2495:                                             ; preds = %2495, %2487
  %2496 = phi i64 [ 0, %2487 ], [ %2498, %2495 ]
  %2497 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %2488, i64 %2496
  store <4 x float> %2494, ptr %2497, align 16, !tbaa !13
  %2498 = add nuw nsw i64 %2496, 4
  %2499 = icmp eq i64 %2498, 256
  br i1 %2499, label %2500, label %2495, !llvm.loop !279

2500:                                             ; preds = %2495
  %2501 = icmp eq i64 %2489, 256
  br i1 %2501, label %3386, label %2487

2502:                                             ; preds = %2459
  %2503 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.100) #12
  %2504 = icmp eq i32 %2503, 0
  br i1 %2504, label %2505, label %2531

2505:                                             ; preds = %2505, %2502
  %2506 = phi i64 [ %2508, %2505 ], [ 0, %2502 ]
  %2507 = getelementptr inbounds float, ptr @global_data, i64 %2506
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2507, align 16, !tbaa !13
  %2508 = add nuw nsw i64 %2506, 4
  %2509 = icmp eq i64 %2508, 32000
  br i1 %2509, label %2510, label %2505, !llvm.loop !280

2510:                                             ; preds = %2510, %2505
  %2511 = phi i64 [ %2517, %2510 ], [ 0, %2505 ]
  %2512 = phi <4 x i32> [ %2518, %2510 ], [ <i32 0, i32 1, i32 2, i32 3>, %2505 ]
  %2513 = add <4 x i32> %2512, <i32 1, i32 1, i32 1, i32 1>
  %2514 = sitofp <4 x i32> %2513 to <4 x float>
  %2515 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2514
  %2516 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2511
  store <4 x float> %2515, ptr %2516, align 16, !tbaa !13
  %2517 = add nuw nsw i64 %2511, 4
  %2518 = add <4 x i32> %2512, <i32 4, i32 4, i32 4, i32 4>
  %2519 = icmp eq i64 %2517, 32000
  br i1 %2519, label %2520, label %2510, !llvm.loop !281

2520:                                             ; preds = %2520, %2510
  %2521 = phi i64 [ %2527, %2520 ], [ 0, %2510 ]
  %2522 = phi <4 x i32> [ %2528, %2520 ], [ <i32 0, i32 1, i32 2, i32 3>, %2510 ]
  %2523 = add <4 x i32> %2522, <i32 1, i32 1, i32 1, i32 1>
  %2524 = sitofp <4 x i32> %2523 to <4 x float>
  %2525 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2524
  %2526 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2521
  store <4 x float> %2525, ptr %2526, align 16, !tbaa !13
  %2527 = add nuw nsw i64 %2521, 4
  %2528 = add <4 x i32> %2522, <i32 4, i32 4, i32 4, i32 4>
  %2529 = icmp eq i64 %2527, 32000
  br i1 %2529, label %2530, label %2520, !llvm.loop !282

2530:                                             ; preds = %2520
  store float -1.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 31999), align 4, !tbaa !13
  br label %3386

2531:                                             ; preds = %2502
  %2532 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.101) #12
  %2533 = icmp eq i32 %2532, 0
  br i1 %2533, label %2534, label %2550

2534:                                             ; preds = %2534, %2531
  %2535 = phi i64 [ %2542, %2534 ], [ 0, %2531 ]
  %2536 = phi <4 x i32> [ %2543, %2534 ], [ <i32 0, i32 1, i32 2, i32 3>, %2531 ]
  %2537 = add <4 x i32> %2536, <i32 1, i32 1, i32 1, i32 1>
  %2538 = mul <4 x i32> %2537, %2537
  %2539 = sitofp <4 x i32> %2538 to <4 x float>
  %2540 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2539
  %2541 = getelementptr inbounds float, ptr @global_data, i64 %2535
  store <4 x float> %2540, ptr %2541, align 16, !tbaa !13
  %2542 = add nuw nsw i64 %2535, 4
  %2543 = add <4 x i32> %2536, <i32 4, i32 4, i32 4, i32 4>
  %2544 = icmp eq i64 %2542, 32000
  br i1 %2544, label %2545, label %2534, !llvm.loop !283

2545:                                             ; preds = %2545, %2534
  %2546 = phi i64 [ %2548, %2545 ], [ 0, %2534 ]
  %2547 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2546
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2547, align 16, !tbaa !13
  %2548 = add nuw nsw i64 %2546, 4
  %2549 = icmp eq i64 %2548, 32000
  br i1 %2549, label %3386, label %2545, !llvm.loop !284

2550:                                             ; preds = %2531
  %2551 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.102) #12
  %2552 = icmp eq i32 %2551, 0
  br i1 %2552, label %2553, label %2564

2553:                                             ; preds = %2553, %2550
  %2554 = phi i64 [ %2561, %2553 ], [ 0, %2550 ]
  %2555 = phi <4 x i32> [ %2562, %2553 ], [ <i32 0, i32 1, i32 2, i32 3>, %2550 ]
  %2556 = add <4 x i32> %2555, <i32 1, i32 1, i32 1, i32 1>
  %2557 = mul <4 x i32> %2556, %2556
  %2558 = sitofp <4 x i32> %2557 to <4 x float>
  %2559 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2558
  %2560 = getelementptr inbounds float, ptr @global_data, i64 %2554
  store <4 x float> %2559, ptr %2560, align 16, !tbaa !13
  %2561 = add nuw nsw i64 %2554, 4
  %2562 = add <4 x i32> %2555, <i32 4, i32 4, i32 4, i32 4>
  %2563 = icmp eq i64 %2561, 32000
  br i1 %2563, label %3386, label %2553, !llvm.loop !285

2564:                                             ; preds = %2550
  %2565 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.103) #12
  %2566 = icmp eq i32 %2565, 0
  br i1 %2566, label %2567, label %2578

2567:                                             ; preds = %2567, %2564
  %2568 = phi i64 [ %2575, %2567 ], [ 0, %2564 ]
  %2569 = phi <4 x i32> [ %2576, %2567 ], [ <i32 0, i32 1, i32 2, i32 3>, %2564 ]
  %2570 = add <4 x i32> %2569, <i32 1, i32 1, i32 1, i32 1>
  %2571 = mul <4 x i32> %2570, %2570
  %2572 = sitofp <4 x i32> %2571 to <4 x float>
  %2573 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2572
  %2574 = getelementptr inbounds float, ptr @global_data, i64 %2568
  store <4 x float> %2573, ptr %2574, align 16, !tbaa !13
  %2575 = add nuw nsw i64 %2568, 4
  %2576 = add <4 x i32> %2569, <i32 4, i32 4, i32 4, i32 4>
  %2577 = icmp eq i64 %2575, 32000
  br i1 %2577, label %3386, label %2567, !llvm.loop !286

2578:                                             ; preds = %2564
  %2579 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.104) #12
  %2580 = icmp eq i32 %2579, 0
  br i1 %2580, label %2581, label %2592

2581:                                             ; preds = %2581, %2578
  %2582 = phi i64 [ %2589, %2581 ], [ 0, %2578 ]
  %2583 = phi <4 x i32> [ %2590, %2581 ], [ <i32 0, i32 1, i32 2, i32 3>, %2578 ]
  %2584 = add <4 x i32> %2583, <i32 1, i32 1, i32 1, i32 1>
  %2585 = mul <4 x i32> %2584, %2584
  %2586 = sitofp <4 x i32> %2585 to <4 x float>
  %2587 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2586
  %2588 = getelementptr inbounds float, ptr @global_data, i64 %2582
  store <4 x float> %2587, ptr %2588, align 16, !tbaa !13
  %2589 = add nuw nsw i64 %2582, 4
  %2590 = add <4 x i32> %2583, <i32 4, i32 4, i32 4, i32 4>
  %2591 = icmp eq i64 %2589, 32000
  br i1 %2591, label %3386, label %2581, !llvm.loop !287

2592:                                             ; preds = %2578
  %2593 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.105) #12
  %2594 = icmp eq i32 %2593, 0
  br i1 %2594, label %2595, label %2611

2595:                                             ; preds = %2595, %2592
  %2596 = phi i64 [ %2598, %2595 ], [ 0, %2592 ]
  %2597 = getelementptr inbounds float, ptr @global_data, i64 %2596
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2597, align 16, !tbaa !13
  %2598 = add nuw nsw i64 %2596, 4
  %2599 = icmp eq i64 %2598, 32000
  br i1 %2599, label %2600, label %2595, !llvm.loop !288

2600:                                             ; preds = %2600, %2595
  %2601 = phi i64 [ %2608, %2600 ], [ 0, %2595 ]
  %2602 = phi <4 x i32> [ %2609, %2600 ], [ <i32 0, i32 1, i32 2, i32 3>, %2595 ]
  %2603 = add <4 x i32> %2602, <i32 1, i32 1, i32 1, i32 1>
  %2604 = mul <4 x i32> %2603, %2603
  %2605 = sitofp <4 x i32> %2604 to <4 x float>
  %2606 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2605
  %2607 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2601
  store <4 x float> %2606, ptr %2607, align 16, !tbaa !13
  %2608 = add nuw nsw i64 %2601, 4
  %2609 = add <4 x i32> %2602, <i32 4, i32 4, i32 4, i32 4>
  %2610 = icmp eq i64 %2608, 32000
  br i1 %2610, label %3386, label %2600, !llvm.loop !289

2611:                                             ; preds = %2592
  %2612 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.106) #12
  %2613 = icmp eq i32 %2612, 0
  br i1 %2613, label %2614, label %2630

2614:                                             ; preds = %2614, %2611
  %2615 = phi i64 [ %2617, %2614 ], [ 0, %2611 ]
  %2616 = getelementptr inbounds float, ptr @global_data, i64 %2615
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2616, align 16, !tbaa !13
  %2617 = add nuw nsw i64 %2615, 4
  %2618 = icmp eq i64 %2617, 32000
  br i1 %2618, label %2619, label %2614, !llvm.loop !290

2619:                                             ; preds = %2619, %2614
  %2620 = phi i64 [ %2627, %2619 ], [ 0, %2614 ]
  %2621 = phi <4 x i32> [ %2628, %2619 ], [ <i32 0, i32 1, i32 2, i32 3>, %2614 ]
  %2622 = add <4 x i32> %2621, <i32 1, i32 1, i32 1, i32 1>
  %2623 = mul <4 x i32> %2622, %2622
  %2624 = sitofp <4 x i32> %2623 to <4 x float>
  %2625 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2624
  %2626 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2620
  store <4 x float> %2625, ptr %2626, align 16, !tbaa !13
  %2627 = add nuw nsw i64 %2620, 4
  %2628 = add <4 x i32> %2621, <i32 4, i32 4, i32 4, i32 4>
  %2629 = icmp eq i64 %2627, 32000
  br i1 %2629, label %3386, label %2619, !llvm.loop !291

2630:                                             ; preds = %2611
  %2631 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.107) #12
  %2632 = icmp eq i32 %2631, 0
  br i1 %2632, label %2633, label %2669

2633:                                             ; preds = %2633, %2630
  %2634 = phi i64 [ %2636, %2633 ], [ 0, %2630 ]
  %2635 = getelementptr inbounds float, ptr @global_data, i64 %2634
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2635, align 16, !tbaa !13
  %2636 = add nuw nsw i64 %2634, 4
  %2637 = icmp eq i64 %2636, 32000
  br i1 %2637, label %2638, label %2633, !llvm.loop !292

2638:                                             ; preds = %2638, %2633
  %2639 = phi i64 [ %2645, %2638 ], [ 0, %2633 ]
  %2640 = phi <4 x i32> [ %2646, %2638 ], [ <i32 0, i32 1, i32 2, i32 3>, %2633 ]
  %2641 = add <4 x i32> %2640, <i32 1, i32 1, i32 1, i32 1>
  %2642 = sitofp <4 x i32> %2641 to <4 x float>
  %2643 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2642
  %2644 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2639
  store <4 x float> %2643, ptr %2644, align 16, !tbaa !13
  %2645 = add nuw nsw i64 %2639, 4
  %2646 = add <4 x i32> %2640, <i32 4, i32 4, i32 4, i32 4>
  %2647 = icmp eq i64 %2645, 32000
  br i1 %2647, label %2648, label %2638, !llvm.loop !293

2648:                                             ; preds = %2648, %2638
  %2649 = phi i64 [ %2655, %2648 ], [ 0, %2638 ]
  %2650 = phi <4 x i32> [ %2656, %2648 ], [ <i32 0, i32 1, i32 2, i32 3>, %2638 ]
  %2651 = add <4 x i32> %2650, <i32 1, i32 1, i32 1, i32 1>
  %2652 = sitofp <4 x i32> %2651 to <4 x float>
  %2653 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2652
  %2654 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2649
  store <4 x float> %2653, ptr %2654, align 16, !tbaa !13
  %2655 = add nuw nsw i64 %2649, 4
  %2656 = add <4 x i32> %2650, <i32 4, i32 4, i32 4, i32 4>
  %2657 = icmp eq i64 %2655, 32000
  br i1 %2657, label %2658, label %2648, !llvm.loop !294

2658:                                             ; preds = %2658, %2648
  %2659 = phi i64 [ %2661, %2658 ], [ 0, %2648 ]
  %2660 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2659
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, ptr %2660, align 16, !tbaa !13
  %2661 = add nuw nsw i64 %2659, 4
  %2662 = icmp eq i64 %2661, 32000
  br i1 %2662, label %2663, label %2658, !llvm.loop !295

2663:                                             ; preds = %2658
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 10666), i8 0, i64 128000, i1 false), !tbaa !13
  br label %2664

2664:                                             ; preds = %2664, %2663
  %2665 = phi i64 [ 0, %2663 ], [ %2667, %2664 ]
  %2666 = getelementptr inbounds float, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 21333), i64 %2665
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2666, align 4, !tbaa !13
  %2667 = add nuw nsw i64 %2665, 4
  %2668 = icmp eq i64 %2667, 32000
  br i1 %2668, label %3386, label %2664, !llvm.loop !296

2669:                                             ; preds = %2630
  %2670 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.108) #12
  %2671 = icmp eq i32 %2670, 0
  br i1 %2671, label %2672, label %2717

2672:                                             ; preds = %2672, %2669
  %2673 = phi i64 [ %2675, %2672 ], [ 0, %2669 ]
  %2674 = getelementptr inbounds float, ptr @global_data, i64 %2673
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2674, align 16, !tbaa !13
  %2675 = add nuw nsw i64 %2673, 4
  %2676 = icmp eq i64 %2675, 32000
  br i1 %2676, label %2677, label %2672, !llvm.loop !297

2677:                                             ; preds = %2677, %2672
  %2678 = phi i64 [ %2684, %2677 ], [ 0, %2672 ]
  %2679 = phi <4 x i32> [ %2685, %2677 ], [ <i32 0, i32 1, i32 2, i32 3>, %2672 ]
  %2680 = add <4 x i32> %2679, <i32 1, i32 1, i32 1, i32 1>
  %2681 = sitofp <4 x i32> %2680 to <4 x float>
  %2682 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2681
  %2683 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2678
  store <4 x float> %2682, ptr %2683, align 16, !tbaa !13
  %2684 = add nuw nsw i64 %2678, 4
  %2685 = add <4 x i32> %2679, <i32 4, i32 4, i32 4, i32 4>
  %2686 = icmp eq i64 %2684, 32000
  br i1 %2686, label %2687, label %2677, !llvm.loop !298

2687:                                             ; preds = %2687, %2677
  %2688 = phi i64 [ %2694, %2687 ], [ 0, %2677 ]
  %2689 = phi <4 x i32> [ %2695, %2687 ], [ <i32 0, i32 1, i32 2, i32 3>, %2677 ]
  %2690 = add <4 x i32> %2689, <i32 1, i32 1, i32 1, i32 1>
  %2691 = sitofp <4 x i32> %2690 to <4 x float>
  %2692 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2691
  %2693 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2688
  store <4 x float> %2692, ptr %2693, align 16, !tbaa !13
  %2694 = add nuw nsw i64 %2688, 4
  %2695 = add <4 x i32> %2689, <i32 4, i32 4, i32 4, i32 4>
  %2696 = icmp eq i64 %2694, 32000
  br i1 %2696, label %2697, label %2687, !llvm.loop !299

2697:                                             ; preds = %2697, %2687
  %2698 = phi i64 [ %2704, %2697 ], [ 0, %2687 ]
  %2699 = phi <4 x i32> [ %2705, %2697 ], [ <i32 0, i32 1, i32 2, i32 3>, %2687 ]
  %2700 = add <4 x i32> %2699, <i32 1, i32 1, i32 1, i32 1>
  %2701 = sitofp <4 x i32> %2700 to <4 x float>
  %2702 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2701
  %2703 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2698
  store <4 x float> %2702, ptr %2703, align 16, !tbaa !13
  %2704 = add nuw nsw i64 %2698, 4
  %2705 = add <4 x i32> %2699, <i32 4, i32 4, i32 4, i32 4>
  %2706 = icmp eq i64 %2704, 32000
  br i1 %2706, label %2707, label %2697, !llvm.loop !300

2707:                                             ; preds = %2707, %2697
  %2708 = phi i64 [ %2714, %2707 ], [ 0, %2697 ]
  %2709 = phi <4 x i32> [ %2715, %2707 ], [ <i32 0, i32 1, i32 2, i32 3>, %2697 ]
  %2710 = add <4 x i32> %2709, <i32 1, i32 1, i32 1, i32 1>
  %2711 = sitofp <4 x i32> %2710 to <4 x float>
  %2712 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2711
  %2713 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %2708
  store <4 x float> %2712, ptr %2713, align 16, !tbaa !13
  %2714 = add nuw nsw i64 %2708, 4
  %2715 = add <4 x i32> %2709, <i32 4, i32 4, i32 4, i32 4>
  %2716 = icmp eq i64 %2714, 32000
  br i1 %2716, label %3386, label %2707, !llvm.loop !301

2717:                                             ; preds = %2669
  %2718 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.109) #12
  %2719 = icmp eq i32 %2718, 0
  br i1 %2719, label %2720, label %2745

2720:                                             ; preds = %2720, %2717
  %2721 = phi i64 [ %2723, %2720 ], [ 0, %2717 ]
  %2722 = getelementptr inbounds float, ptr @global_data, i64 %2721
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2722, align 16, !tbaa !13
  %2723 = add nuw nsw i64 %2721, 4
  %2724 = icmp eq i64 %2723, 32000
  br i1 %2724, label %2725, label %2720, !llvm.loop !302

2725:                                             ; preds = %2725, %2720
  %2726 = phi i64 [ %2732, %2725 ], [ 0, %2720 ]
  %2727 = phi <4 x i32> [ %2733, %2725 ], [ <i32 0, i32 1, i32 2, i32 3>, %2720 ]
  %2728 = add <4 x i32> %2727, <i32 1, i32 1, i32 1, i32 1>
  %2729 = sitofp <4 x i32> %2728 to <4 x float>
  %2730 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2729
  %2731 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2726
  store <4 x float> %2730, ptr %2731, align 16, !tbaa !13
  %2732 = add nuw nsw i64 %2726, 4
  %2733 = add <4 x i32> %2727, <i32 4, i32 4, i32 4, i32 4>
  %2734 = icmp eq i64 %2732, 32000
  br i1 %2734, label %2735, label %2725, !llvm.loop !303

2735:                                             ; preds = %2735, %2725
  %2736 = phi i64 [ %2742, %2735 ], [ 0, %2725 ]
  %2737 = phi <4 x i32> [ %2743, %2735 ], [ <i32 0, i32 1, i32 2, i32 3>, %2725 ]
  %2738 = add <4 x i32> %2737, <i32 1, i32 1, i32 1, i32 1>
  %2739 = sitofp <4 x i32> %2738 to <4 x float>
  %2740 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2739
  %2741 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2736
  store <4 x float> %2740, ptr %2741, align 16, !tbaa !13
  %2742 = add nuw nsw i64 %2736, 4
  %2743 = add <4 x i32> %2737, <i32 4, i32 4, i32 4, i32 4>
  %2744 = icmp eq i64 %2742, 32000
  br i1 %2744, label %3386, label %2735, !llvm.loop !304

2745:                                             ; preds = %2717
  %2746 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.110) #12
  %2747 = icmp eq i32 %2746, 0
  br i1 %2747, label %2748, label %2768

2748:                                             ; preds = %2748, %2745
  %2749 = phi i64 [ %2755, %2748 ], [ 0, %2745 ]
  %2750 = phi <4 x i32> [ %2756, %2748 ], [ <i32 0, i32 1, i32 2, i32 3>, %2745 ]
  %2751 = add <4 x i32> %2750, <i32 1, i32 1, i32 1, i32 1>
  %2752 = sitofp <4 x i32> %2751 to <4 x float>
  %2753 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2752
  %2754 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2749
  store <4 x float> %2753, ptr %2754, align 16, !tbaa !13
  %2755 = add nuw nsw i64 %2749, 4
  %2756 = add <4 x i32> %2750, <i32 4, i32 4, i32 4, i32 4>
  %2757 = icmp eq i64 %2755, 32000
  br i1 %2757, label %2758, label %2748, !llvm.loop !305

2758:                                             ; preds = %2758, %2748
  %2759 = phi i64 [ %2765, %2758 ], [ 0, %2748 ]
  %2760 = phi <4 x i32> [ %2766, %2758 ], [ <i32 0, i32 1, i32 2, i32 3>, %2748 ]
  %2761 = add <4 x i32> %2760, <i32 1, i32 1, i32 1, i32 1>
  %2762 = sitofp <4 x i32> %2761 to <4 x float>
  %2763 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2762
  %2764 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2759
  store <4 x float> %2763, ptr %2764, align 16, !tbaa !13
  %2765 = add nuw nsw i64 %2759, 4
  %2766 = add <4 x i32> %2760, <i32 4, i32 4, i32 4, i32 4>
  %2767 = icmp eq i64 %2765, 32000
  br i1 %2767, label %3386, label %2758, !llvm.loop !306

2768:                                             ; preds = %2745
  %2769 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.111) #12
  %2770 = icmp eq i32 %2769, 0
  br i1 %2770, label %2771, label %2782

2771:                                             ; preds = %2768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %2772

2772:                                             ; preds = %2772, %2771
  %2773 = phi i64 [ 0, %2771 ], [ %2775, %2772 ]
  %2774 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2773
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2774, align 16, !tbaa !13
  %2775 = add nuw nsw i64 %2773, 4
  %2776 = icmp eq i64 %2775, 32000
  br i1 %2776, label %2777, label %2772, !llvm.loop !307

2777:                                             ; preds = %2777, %2772
  %2778 = phi i64 [ %2780, %2777 ], [ 0, %2772 ]
  %2779 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2778
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %2779, align 16, !tbaa !13
  %2780 = add nuw nsw i64 %2778, 4
  %2781 = icmp eq i64 %2780, 32000
  br i1 %2781, label %3386, label %2777, !llvm.loop !308

2782:                                             ; preds = %2768
  %2783 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.112) #12
  %2784 = icmp eq i32 %2783, 0
  br i1 %2784, label %2785, label %2797

2785:                                             ; preds = %2782
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %2786

2786:                                             ; preds = %2786, %2785
  %2787 = phi i64 [ 0, %2785 ], [ %2794, %2786 ]
  %2788 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %2785 ], [ %2795, %2786 ]
  %2789 = add <4 x i32> %2788, <i32 1, i32 1, i32 1, i32 1>
  %2790 = mul <4 x i32> %2789, %2789
  %2791 = sitofp <4 x i32> %2790 to <4 x float>
  %2792 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2791
  %2793 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2787
  store <4 x float> %2792, ptr %2793, align 16, !tbaa !13
  %2794 = add nuw nsw i64 %2787, 4
  %2795 = add <4 x i32> %2788, <i32 4, i32 4, i32 4, i32 4>
  %2796 = icmp eq i64 %2794, 32000
  br i1 %2796, label %3386, label %2786, !llvm.loop !309

2797:                                             ; preds = %2782
  %2798 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.113) #12
  %2799 = icmp eq i32 %2798, 0
  br i1 %2799, label %2800, label %2835

2800:                                             ; preds = %2800, %2797
  %2801 = phi i64 [ %2803, %2800 ], [ 0, %2797 ]
  %2802 = getelementptr inbounds float, ptr @global_data, i64 %2801
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2802, align 16, !tbaa !13
  %2803 = add nuw nsw i64 %2801, 4
  %2804 = icmp eq i64 %2803, 32000
  br i1 %2804, label %2805, label %2800, !llvm.loop !310

2805:                                             ; preds = %2805, %2800
  %2806 = phi i64 [ %2808, %2805 ], [ 0, %2800 ]
  %2807 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2806
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2807, align 16, !tbaa !13
  %2808 = add nuw nsw i64 %2806, 4
  %2809 = icmp eq i64 %2808, 32000
  br i1 %2809, label %2810, label %2805, !llvm.loop !311

2810:                                             ; preds = %2810, %2805
  %2811 = phi i64 [ %2813, %2810 ], [ 0, %2805 ]
  %2812 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2811
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2812, align 16, !tbaa !13
  %2813 = add nuw nsw i64 %2811, 4
  %2814 = icmp eq i64 %2813, 32000
  br i1 %2814, label %2815, label %2810, !llvm.loop !312

2815:                                             ; preds = %2815, %2810
  %2816 = phi i64 [ %2822, %2815 ], [ 0, %2810 ]
  %2817 = phi <4 x i32> [ %2823, %2815 ], [ <i32 0, i32 1, i32 2, i32 3>, %2810 ]
  %2818 = add <4 x i32> %2817, <i32 1, i32 1, i32 1, i32 1>
  %2819 = sitofp <4 x i32> %2818 to <4 x float>
  %2820 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2819
  %2821 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2816
  store <4 x float> %2820, ptr %2821, align 16, !tbaa !13
  %2822 = add nuw nsw i64 %2816, 4
  %2823 = add <4 x i32> %2817, <i32 4, i32 4, i32 4, i32 4>
  %2824 = icmp eq i64 %2822, 32000
  br i1 %2824, label %2825, label %2815, !llvm.loop !313

2825:                                             ; preds = %2825, %2815
  %2826 = phi i64 [ %2832, %2825 ], [ 0, %2815 ]
  %2827 = phi <4 x i32> [ %2833, %2825 ], [ <i32 0, i32 1, i32 2, i32 3>, %2815 ]
  %2828 = add <4 x i32> %2827, <i32 1, i32 1, i32 1, i32 1>
  %2829 = sitofp <4 x i32> %2828 to <4 x float>
  %2830 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2829
  %2831 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %2826
  store <4 x float> %2830, ptr %2831, align 16, !tbaa !13
  %2832 = add nuw nsw i64 %2826, 4
  %2833 = add <4 x i32> %2827, <i32 4, i32 4, i32 4, i32 4>
  %2834 = icmp eq i64 %2832, 32000
  br i1 %2834, label %3386, label %2825, !llvm.loop !314

2835:                                             ; preds = %2797
  %2836 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.114) #12
  %2837 = icmp eq i32 %2836, 0
  br i1 %2837, label %2838, label %2873

2838:                                             ; preds = %2838, %2835
  %2839 = phi i64 [ %2841, %2838 ], [ 0, %2835 ]
  %2840 = getelementptr inbounds float, ptr @global_data, i64 %2839
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2840, align 16, !tbaa !13
  %2841 = add nuw nsw i64 %2839, 4
  %2842 = icmp eq i64 %2841, 32000
  br i1 %2842, label %2843, label %2838, !llvm.loop !315

2843:                                             ; preds = %2843, %2838
  %2844 = phi i64 [ %2850, %2843 ], [ 0, %2838 ]
  %2845 = phi <4 x i32> [ %2851, %2843 ], [ <i32 0, i32 1, i32 2, i32 3>, %2838 ]
  %2846 = add <4 x i32> %2845, <i32 1, i32 1, i32 1, i32 1>
  %2847 = sitofp <4 x i32> %2846 to <4 x float>
  %2848 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2847
  %2849 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2844
  store <4 x float> %2848, ptr %2849, align 16, !tbaa !13
  %2850 = add nuw nsw i64 %2844, 4
  %2851 = add <4 x i32> %2845, <i32 4, i32 4, i32 4, i32 4>
  %2852 = icmp eq i64 %2850, 32000
  br i1 %2852, label %2853, label %2843, !llvm.loop !316

2853:                                             ; preds = %2853, %2843
  %2854 = phi i64 [ %2860, %2853 ], [ 0, %2843 ]
  %2855 = phi <4 x i32> [ %2861, %2853 ], [ <i32 0, i32 1, i32 2, i32 3>, %2843 ]
  %2856 = add <4 x i32> %2855, <i32 1, i32 1, i32 1, i32 1>
  %2857 = sitofp <4 x i32> %2856 to <4 x float>
  %2858 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2857
  %2859 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2854
  store <4 x float> %2858, ptr %2859, align 16, !tbaa !13
  %2860 = add nuw nsw i64 %2854, 4
  %2861 = add <4 x i32> %2855, <i32 4, i32 4, i32 4, i32 4>
  %2862 = icmp eq i64 %2860, 32000
  br i1 %2862, label %2863, label %2853, !llvm.loop !317

2863:                                             ; preds = %2863, %2853
  %2864 = phi i64 [ %2870, %2863 ], [ 0, %2853 ]
  %2865 = phi <4 x i32> [ %2871, %2863 ], [ <i32 0, i32 1, i32 2, i32 3>, %2853 ]
  %2866 = add <4 x i32> %2865, <i32 1, i32 1, i32 1, i32 1>
  %2867 = sitofp <4 x i32> %2866 to <4 x float>
  %2868 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2867
  %2869 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2864
  store <4 x float> %2868, ptr %2869, align 16, !tbaa !13
  %2870 = add nuw nsw i64 %2864, 4
  %2871 = add <4 x i32> %2865, <i32 4, i32 4, i32 4, i32 4>
  %2872 = icmp eq i64 %2870, 32000
  br i1 %2872, label %3386, label %2863, !llvm.loop !318

2873:                                             ; preds = %2835
  %2874 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.115) #12
  %2875 = icmp eq i32 %2874, 0
  br i1 %2875, label %2876, label %2901

2876:                                             ; preds = %2876, %2873
  %2877 = phi i64 [ %2879, %2876 ], [ 0, %2873 ]
  %2878 = getelementptr inbounds float, ptr @global_data, i64 %2877
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2878, align 16, !tbaa !13
  %2879 = add nuw nsw i64 %2877, 4
  %2880 = icmp eq i64 %2879, 32000
  br i1 %2880, label %2881, label %2876, !llvm.loop !319

2881:                                             ; preds = %2881, %2876
  %2882 = phi i64 [ %2888, %2881 ], [ 0, %2876 ]
  %2883 = phi <4 x i32> [ %2889, %2881 ], [ <i32 0, i32 1, i32 2, i32 3>, %2876 ]
  %2884 = add <4 x i32> %2883, <i32 1, i32 1, i32 1, i32 1>
  %2885 = sitofp <4 x i32> %2884 to <4 x float>
  %2886 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2885
  %2887 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2882
  store <4 x float> %2886, ptr %2887, align 16, !tbaa !13
  %2888 = add nuw nsw i64 %2882, 4
  %2889 = add <4 x i32> %2883, <i32 4, i32 4, i32 4, i32 4>
  %2890 = icmp eq i64 %2888, 32000
  br i1 %2890, label %2891, label %2881, !llvm.loop !320

2891:                                             ; preds = %2891, %2881
  %2892 = phi i64 [ %2898, %2891 ], [ 0, %2881 ]
  %2893 = phi <4 x i32> [ %2899, %2891 ], [ <i32 0, i32 1, i32 2, i32 3>, %2881 ]
  %2894 = add <4 x i32> %2893, <i32 1, i32 1, i32 1, i32 1>
  %2895 = sitofp <4 x i32> %2894 to <4 x float>
  %2896 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2895
  %2897 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2892
  store <4 x float> %2896, ptr %2897, align 16, !tbaa !13
  %2898 = add nuw nsw i64 %2892, 4
  %2899 = add <4 x i32> %2893, <i32 4, i32 4, i32 4, i32 4>
  %2900 = icmp eq i64 %2898, 32000
  br i1 %2900, label %3386, label %2891, !llvm.loop !321

2901:                                             ; preds = %2873
  %2902 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.116) #12
  %2903 = icmp eq i32 %2902, 0
  br i1 %2903, label %2904, label %2930

2904:                                             ; preds = %2901
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %2905

2905:                                             ; preds = %2905, %2904
  %2906 = phi i64 [ 0, %2904 ], [ %2908, %2905 ]
  %2907 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2906
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2907, align 16, !tbaa !13
  %2908 = add nuw nsw i64 %2906, 4
  %2909 = icmp eq i64 %2908, 32000
  br i1 %2909, label %2910, label %2905, !llvm.loop !322

2910:                                             ; preds = %2910, %2905
  %2911 = phi i64 [ %2917, %2910 ], [ 0, %2905 ]
  %2912 = phi <4 x i32> [ %2918, %2910 ], [ <i32 0, i32 1, i32 2, i32 3>, %2905 ]
  %2913 = add <4 x i32> %2912, <i32 1, i32 1, i32 1, i32 1>
  %2914 = sitofp <4 x i32> %2913 to <4 x float>
  %2915 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2914
  %2916 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2911
  store <4 x float> %2915, ptr %2916, align 16, !tbaa !13
  %2917 = add nuw nsw i64 %2911, 4
  %2918 = add <4 x i32> %2912, <i32 4, i32 4, i32 4, i32 4>
  %2919 = icmp eq i64 %2917, 32000
  br i1 %2919, label %2920, label %2910, !llvm.loop !323

2920:                                             ; preds = %2920, %2910
  %2921 = phi i64 [ %2927, %2920 ], [ 0, %2910 ]
  %2922 = phi <4 x i32> [ %2928, %2920 ], [ <i32 0, i32 1, i32 2, i32 3>, %2910 ]
  %2923 = add <4 x i32> %2922, <i32 1, i32 1, i32 1, i32 1>
  %2924 = sitofp <4 x i32> %2923 to <4 x float>
  %2925 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2924
  %2926 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2921
  store <4 x float> %2925, ptr %2926, align 16, !tbaa !13
  %2927 = add nuw nsw i64 %2921, 4
  %2928 = add <4 x i32> %2922, <i32 4, i32 4, i32 4, i32 4>
  %2929 = icmp eq i64 %2927, 32000
  br i1 %2929, label %3386, label %2920, !llvm.loop !324

2930:                                             ; preds = %2901
  %2931 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.117) #12
  %2932 = icmp eq i32 %2931, 0
  br i1 %2932, label %2933, label %2948

2933:                                             ; preds = %2933, %2930
  %2934 = phi i64 [ %2936, %2933 ], [ 0, %2930 ]
  %2935 = getelementptr inbounds float, ptr @global_data, i64 %2934
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2935, align 16, !tbaa !13
  %2936 = add nuw nsw i64 %2934, 4
  %2937 = icmp eq i64 %2936, 32000
  br i1 %2937, label %2938, label %2933, !llvm.loop !325

2938:                                             ; preds = %2938, %2933
  %2939 = phi i64 [ %2945, %2938 ], [ 0, %2933 ]
  %2940 = phi <4 x i32> [ %2946, %2938 ], [ <i32 0, i32 1, i32 2, i32 3>, %2933 ]
  %2941 = add <4 x i32> %2940, <i32 1, i32 1, i32 1, i32 1>
  %2942 = sitofp <4 x i32> %2941 to <4 x float>
  %2943 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2942
  %2944 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2939
  store <4 x float> %2943, ptr %2944, align 16, !tbaa !13
  %2945 = add nuw nsw i64 %2939, 4
  %2946 = add <4 x i32> %2940, <i32 4, i32 4, i32 4, i32 4>
  %2947 = icmp eq i64 %2945, 32000
  br i1 %2947, label %3386, label %2938, !llvm.loop !326

2948:                                             ; preds = %2930
  %2949 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.118) #12
  %2950 = icmp eq i32 %2949, 0
  br i1 %2950, label %2951, label %2968

2951:                                             ; preds = %2948
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %2952

2952:                                             ; preds = %2952, %2951
  %2953 = phi i64 [ 0, %2951 ], [ %2955, %2952 ]
  %2954 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2953
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2954, align 16, !tbaa !13
  %2955 = add nuw nsw i64 %2953, 4
  %2956 = icmp eq i64 %2955, 32000
  br i1 %2956, label %2957, label %2952, !llvm.loop !327

2957:                                             ; preds = %2957, %2952
  %2958 = phi i64 [ %2965, %2957 ], [ 0, %2952 ]
  %2959 = phi <4 x i32> [ %2966, %2957 ], [ <i32 0, i32 1, i32 2, i32 3>, %2952 ]
  %2960 = add <4 x i32> %2959, <i32 1, i32 1, i32 1, i32 1>
  %2961 = mul <4 x i32> %2960, %2960
  %2962 = sitofp <4 x i32> %2961 to <4 x float>
  %2963 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2962
  %2964 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2958
  store <4 x float> %2963, ptr %2964, align 16, !tbaa !13
  %2965 = add nuw nsw i64 %2958, 4
  %2966 = add <4 x i32> %2959, <i32 4, i32 4, i32 4, i32 4>
  %2967 = icmp eq i64 %2965, 32000
  br i1 %2967, label %3386, label %2957, !llvm.loop !328

2968:                                             ; preds = %2948
  %2969 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.119) #12
  %2970 = icmp eq i32 %2969, 0
  br i1 %2970, label %2971, label %2997

2971:                                             ; preds = %2968
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %2972

2972:                                             ; preds = %2972, %2971
  %2973 = phi i64 [ 0, %2971 ], [ %2975, %2972 ]
  %2974 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2973
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2974, align 16, !tbaa !13
  %2975 = add nuw nsw i64 %2973, 4
  %2976 = icmp eq i64 %2975, 32000
  br i1 %2976, label %2977, label %2972, !llvm.loop !329

2977:                                             ; preds = %2977, %2972
  %2978 = phi i64 [ %2984, %2977 ], [ 0, %2972 ]
  %2979 = phi <4 x i32> [ %2985, %2977 ], [ <i32 0, i32 1, i32 2, i32 3>, %2972 ]
  %2980 = add <4 x i32> %2979, <i32 1, i32 1, i32 1, i32 1>
  %2981 = sitofp <4 x i32> %2980 to <4 x float>
  %2982 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2981
  %2983 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2978
  store <4 x float> %2982, ptr %2983, align 16, !tbaa !13
  %2984 = add nuw nsw i64 %2978, 4
  %2985 = add <4 x i32> %2979, <i32 4, i32 4, i32 4, i32 4>
  %2986 = icmp eq i64 %2984, 32000
  br i1 %2986, label %2987, label %2977, !llvm.loop !330

2987:                                             ; preds = %2987, %2977
  %2988 = phi i64 [ %2994, %2987 ], [ 0, %2977 ]
  %2989 = phi <4 x i32> [ %2995, %2987 ], [ <i32 0, i32 1, i32 2, i32 3>, %2977 ]
  %2990 = add <4 x i32> %2989, <i32 1, i32 1, i32 1, i32 1>
  %2991 = sitofp <4 x i32> %2990 to <4 x float>
  %2992 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2991
  %2993 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2988
  store <4 x float> %2992, ptr %2993, align 16, !tbaa !13
  %2994 = add nuw nsw i64 %2988, 4
  %2995 = add <4 x i32> %2989, <i32 4, i32 4, i32 4, i32 4>
  %2996 = icmp eq i64 %2994, 32000
  br i1 %2996, label %3386, label %2987, !llvm.loop !331

2997:                                             ; preds = %2968
  %2998 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.120) #12
  %2999 = icmp eq i32 %2998, 0
  br i1 %2999, label %3000, label %3020

3000:                                             ; preds = %3000, %2997
  %3001 = phi i64 [ %3007, %3000 ], [ 0, %2997 ]
  %3002 = phi <4 x i32> [ %3008, %3000 ], [ <i32 0, i32 1, i32 2, i32 3>, %2997 ]
  %3003 = add <4 x i32> %3002, <i32 1, i32 1, i32 1, i32 1>
  %3004 = sitofp <4 x i32> %3003 to <4 x float>
  %3005 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3004
  %3006 = getelementptr inbounds float, ptr @global_data, i64 %3001
  store <4 x float> %3005, ptr %3006, align 16, !tbaa !13
  %3007 = add nuw nsw i64 %3001, 4
  %3008 = add <4 x i32> %3002, <i32 4, i32 4, i32 4, i32 4>
  %3009 = icmp eq i64 %3007, 32000
  br i1 %3009, label %3010, label %3000, !llvm.loop !332

3010:                                             ; preds = %3010, %3000
  %3011 = phi i64 [ %3017, %3010 ], [ 0, %3000 ]
  %3012 = phi <4 x i32> [ %3018, %3010 ], [ <i32 0, i32 1, i32 2, i32 3>, %3000 ]
  %3013 = add <4 x i32> %3012, <i32 1, i32 1, i32 1, i32 1>
  %3014 = sitofp <4 x i32> %3013 to <4 x float>
  %3015 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3014
  %3016 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3011
  store <4 x float> %3015, ptr %3016, align 16, !tbaa !13
  %3017 = add nuw nsw i64 %3011, 4
  %3018 = add <4 x i32> %3012, <i32 4, i32 4, i32 4, i32 4>
  %3019 = icmp eq i64 %3017, 32000
  br i1 %3019, label %3386, label %3010, !llvm.loop !333

3020:                                             ; preds = %2997
  %3021 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.121) #12
  %3022 = icmp eq i32 %3021, 0
  br i1 %3022, label %3023, label %3048

3023:                                             ; preds = %3023, %3020
  %3024 = phi i64 [ %3030, %3023 ], [ 0, %3020 ]
  %3025 = phi <4 x i32> [ %3031, %3023 ], [ <i32 0, i32 1, i32 2, i32 3>, %3020 ]
  %3026 = add <4 x i32> %3025, <i32 1, i32 1, i32 1, i32 1>
  %3027 = sitofp <4 x i32> %3026 to <4 x float>
  %3028 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3027
  %3029 = getelementptr inbounds float, ptr @global_data, i64 %3024
  store <4 x float> %3028, ptr %3029, align 16, !tbaa !13
  %3030 = add nuw nsw i64 %3024, 4
  %3031 = add <4 x i32> %3025, <i32 4, i32 4, i32 4, i32 4>
  %3032 = icmp eq i64 %3030, 32000
  br i1 %3032, label %3033, label %3023, !llvm.loop !334

3033:                                             ; preds = %3046, %3023
  %3034 = phi i64 [ %3035, %3046 ], [ 0, %3023 ]
  %3035 = add nuw nsw i64 %3034, 1
  %3036 = trunc i64 %3035 to i32
  %3037 = sitofp i32 %3036 to float
  %3038 = fdiv float 1.000000e+00, %3037
  %3039 = insertelement <4 x float> poison, float %3038, i64 0
  %3040 = shufflevector <4 x float> %3039, <4 x float> poison, <4 x i32> zeroinitializer
  br label %3041

3041:                                             ; preds = %3041, %3033
  %3042 = phi i64 [ 0, %3033 ], [ %3044, %3041 ]
  %3043 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %3034, i64 %3042
  store <4 x float> %3040, ptr %3043, align 16, !tbaa !13
  %3044 = add nuw nsw i64 %3042, 4
  %3045 = icmp eq i64 %3044, 256
  br i1 %3045, label %3046, label %3041, !llvm.loop !335

3046:                                             ; preds = %3041
  %3047 = icmp eq i64 %3035, 256
  br i1 %3047, label %3386, label %3033

3048:                                             ; preds = %3020
  %3049 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.122) #12
  %3050 = icmp eq i32 %3049, 0
  br i1 %3050, label %3051, label %3077

3051:                                             ; preds = %3048
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %3052

3052:                                             ; preds = %3052, %3051
  %3053 = phi i64 [ 0, %3051 ], [ %3055, %3052 ]
  %3054 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3053
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3054, align 16, !tbaa !13
  %3055 = add nuw nsw i64 %3053, 4
  %3056 = icmp eq i64 %3055, 32000
  br i1 %3056, label %3057, label %3052, !llvm.loop !336

3057:                                             ; preds = %3057, %3052
  %3058 = phi i64 [ %3064, %3057 ], [ 0, %3052 ]
  %3059 = phi <4 x i32> [ %3065, %3057 ], [ <i32 0, i32 1, i32 2, i32 3>, %3052 ]
  %3060 = add <4 x i32> %3059, <i32 1, i32 1, i32 1, i32 1>
  %3061 = sitofp <4 x i32> %3060 to <4 x float>
  %3062 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3061
  %3063 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3058
  store <4 x float> %3062, ptr %3063, align 16, !tbaa !13
  %3064 = add nuw nsw i64 %3058, 4
  %3065 = add <4 x i32> %3059, <i32 4, i32 4, i32 4, i32 4>
  %3066 = icmp eq i64 %3064, 32000
  br i1 %3066, label %3067, label %3057, !llvm.loop !337

3067:                                             ; preds = %3067, %3057
  %3068 = phi i64 [ %3074, %3067 ], [ 0, %3057 ]
  %3069 = phi <4 x i32> [ %3075, %3067 ], [ <i32 0, i32 1, i32 2, i32 3>, %3057 ]
  %3070 = add <4 x i32> %3069, <i32 1, i32 1, i32 1, i32 1>
  %3071 = sitofp <4 x i32> %3070 to <4 x float>
  %3072 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3071
  %3073 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %3068
  store <4 x float> %3072, ptr %3073, align 16, !tbaa !13
  %3074 = add nuw nsw i64 %3068, 4
  %3075 = add <4 x i32> %3069, <i32 4, i32 4, i32 4, i32 4>
  %3076 = icmp eq i64 %3074, 32000
  br i1 %3076, label %3386, label %3067, !llvm.loop !338

3077:                                             ; preds = %3048
  %3078 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.123) #12
  %3079 = icmp eq i32 %3078, 0
  br i1 %3079, label %3080, label %3105

3080:                                             ; preds = %3080, %3077
  %3081 = phi i64 [ %3083, %3080 ], [ 0, %3077 ]
  %3082 = getelementptr inbounds float, ptr @global_data, i64 %3081
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3082, align 16, !tbaa !13
  %3083 = add nuw nsw i64 %3081, 4
  %3084 = icmp eq i64 %3083, 32000
  br i1 %3084, label %3085, label %3080, !llvm.loop !339

3085:                                             ; preds = %3085, %3080
  %3086 = phi i64 [ %3092, %3085 ], [ 0, %3080 ]
  %3087 = phi <4 x i32> [ %3093, %3085 ], [ <i32 0, i32 1, i32 2, i32 3>, %3080 ]
  %3088 = add <4 x i32> %3087, <i32 1, i32 1, i32 1, i32 1>
  %3089 = sitofp <4 x i32> %3088 to <4 x float>
  %3090 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3089
  %3091 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3086
  store <4 x float> %3090, ptr %3091, align 16, !tbaa !13
  %3092 = add nuw nsw i64 %3086, 4
  %3093 = add <4 x i32> %3087, <i32 4, i32 4, i32 4, i32 4>
  %3094 = icmp eq i64 %3092, 32000
  br i1 %3094, label %3095, label %3085, !llvm.loop !340

3095:                                             ; preds = %3095, %3085
  %3096 = phi i64 [ %3102, %3095 ], [ 0, %3085 ]
  %3097 = phi <4 x i32> [ %3103, %3095 ], [ <i32 0, i32 1, i32 2, i32 3>, %3085 ]
  %3098 = add <4 x i32> %3097, <i32 1, i32 1, i32 1, i32 1>
  %3099 = sitofp <4 x i32> %3098 to <4 x float>
  %3100 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3099
  %3101 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3096
  store <4 x float> %3100, ptr %3101, align 16, !tbaa !13
  %3102 = add nuw nsw i64 %3096, 4
  %3103 = add <4 x i32> %3097, <i32 4, i32 4, i32 4, i32 4>
  %3104 = icmp eq i64 %3102, 32000
  br i1 %3104, label %3386, label %3095, !llvm.loop !341

3105:                                             ; preds = %3077
  %3106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.124) #12
  %3107 = icmp eq i32 %3106, 0
  br i1 %3107, label %3108, label %3120

3108:                                             ; preds = %3105
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %3109

3109:                                             ; preds = %3109, %3108
  %3110 = phi i64 [ 0, %3108 ], [ %3117, %3109 ]
  %3111 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %3108 ], [ %3118, %3109 ]
  %3112 = add <4 x i32> %3111, <i32 1, i32 1, i32 1, i32 1>
  %3113 = mul <4 x i32> %3112, %3112
  %3114 = sitofp <4 x i32> %3113 to <4 x float>
  %3115 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3114
  %3116 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3110
  store <4 x float> %3115, ptr %3116, align 16, !tbaa !13
  %3117 = add nuw nsw i64 %3110, 4
  %3118 = add <4 x i32> %3111, <i32 4, i32 4, i32 4, i32 4>
  %3119 = icmp eq i64 %3117, 32000
  br i1 %3119, label %3386, label %3109, !llvm.loop !342

3120:                                             ; preds = %3105
  %3121 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.125) #12
  %3122 = icmp eq i32 %3121, 0
  br i1 %3122, label %3123, label %3135

3123:                                             ; preds = %3120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %3124

3124:                                             ; preds = %3124, %3123
  %3125 = phi i64 [ 0, %3123 ], [ %3132, %3124 ]
  %3126 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %3123 ], [ %3133, %3124 ]
  %3127 = add <4 x i32> %3126, <i32 1, i32 1, i32 1, i32 1>
  %3128 = mul <4 x i32> %3127, %3127
  %3129 = sitofp <4 x i32> %3128 to <4 x float>
  %3130 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3129
  %3131 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3125
  store <4 x float> %3130, ptr %3131, align 16, !tbaa !13
  %3132 = add nuw nsw i64 %3125, 4
  %3133 = add <4 x i32> %3126, <i32 4, i32 4, i32 4, i32 4>
  %3134 = icmp eq i64 %3132, 32000
  br i1 %3134, label %3386, label %3124, !llvm.loop !343

3135:                                             ; preds = %3120
  %3136 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.126) #12
  %3137 = icmp eq i32 %3136, 0
  br i1 %3137, label %3138, label %3150

3138:                                             ; preds = %3135
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %3139

3139:                                             ; preds = %3139, %3138
  %3140 = phi i64 [ 0, %3138 ], [ %3147, %3139 ]
  %3141 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %3138 ], [ %3148, %3139 ]
  %3142 = add <4 x i32> %3141, <i32 1, i32 1, i32 1, i32 1>
  %3143 = mul <4 x i32> %3142, %3142
  %3144 = sitofp <4 x i32> %3143 to <4 x float>
  %3145 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3144
  %3146 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3140
  store <4 x float> %3145, ptr %3146, align 16, !tbaa !13
  %3147 = add nuw nsw i64 %3140, 4
  %3148 = add <4 x i32> %3141, <i32 4, i32 4, i32 4, i32 4>
  %3149 = icmp eq i64 %3147, 32000
  br i1 %3149, label %3386, label %3139, !llvm.loop !344

3150:                                             ; preds = %3135
  %3151 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.127) #12
  %3152 = icmp eq i32 %3151, 0
  br i1 %3152, label %3153, label %3165

3153:                                             ; preds = %3150
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %3154

3154:                                             ; preds = %3154, %3153
  %3155 = phi i64 [ 0, %3153 ], [ %3162, %3154 ]
  %3156 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %3153 ], [ %3163, %3154 ]
  %3157 = add <4 x i32> %3156, <i32 1, i32 1, i32 1, i32 1>
  %3158 = mul <4 x i32> %3157, %3157
  %3159 = sitofp <4 x i32> %3158 to <4 x float>
  %3160 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3159
  %3161 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3155
  store <4 x float> %3160, ptr %3161, align 16, !tbaa !13
  %3162 = add nuw nsw i64 %3155, 4
  %3163 = add <4 x i32> %3156, <i32 4, i32 4, i32 4, i32 4>
  %3164 = icmp eq i64 %3162, 32000
  br i1 %3164, label %3386, label %3154, !llvm.loop !345

3165:                                             ; preds = %3150
  %3166 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.128) #12
  %3167 = icmp eq i32 %3166, 0
  br i1 %3167, label %3168, label %3180

3168:                                             ; preds = %3165
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !13
  br label %3169

3169:                                             ; preds = %3169, %3168
  %3170 = phi i64 [ 0, %3168 ], [ %3177, %3169 ]
  %3171 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %3168 ], [ %3178, %3169 ]
  %3172 = add <4 x i32> %3171, <i32 1, i32 1, i32 1, i32 1>
  %3173 = mul <4 x i32> %3172, %3172
  %3174 = sitofp <4 x i32> %3173 to <4 x float>
  %3175 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3174
  %3176 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3170
  store <4 x float> %3175, ptr %3176, align 16, !tbaa !13
  %3177 = add nuw nsw i64 %3170, 4
  %3178 = add <4 x i32> %3171, <i32 4, i32 4, i32 4, i32 4>
  %3179 = icmp eq i64 %3177, 32000
  br i1 %3179, label %3386, label %3169, !llvm.loop !346

3180:                                             ; preds = %3165
  %3181 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.129) #12
  %3182 = icmp eq i32 %3181, 0
  br i1 %3182, label %3183, label %3193

3183:                                             ; preds = %3183, %3180
  %3184 = phi i64 [ %3186, %3183 ], [ 0, %3180 ]
  %3185 = getelementptr inbounds float, ptr @global_data, i64 %3184
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3185, align 16, !tbaa !13
  %3186 = add nuw nsw i64 %3184, 4
  %3187 = icmp eq i64 %3186, 32000
  br i1 %3187, label %3188, label %3183, !llvm.loop !347

3188:                                             ; preds = %3188, %3183
  %3189 = phi i64 [ %3191, %3188 ], [ 0, %3183 ]
  %3190 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3189
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3190, align 16, !tbaa !13
  %3191 = add nuw nsw i64 %3189, 4
  %3192 = icmp eq i64 %3191, 32000
  br i1 %3192, label %3386, label %3188, !llvm.loop !348

3193:                                             ; preds = %3180
  %3194 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.130) #12
  %3195 = icmp eq i32 %3194, 0
  br i1 %3195, label %3196, label %3221

3196:                                             ; preds = %3196, %3193
  %3197 = phi i64 [ %3199, %3196 ], [ 0, %3193 ]
  %3198 = getelementptr inbounds float, ptr @global_data, i64 %3197
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3198, align 16, !tbaa !13
  %3199 = add nuw nsw i64 %3197, 4
  %3200 = icmp eq i64 %3199, 32000
  br i1 %3200, label %3201, label %3196, !llvm.loop !349

3201:                                             ; preds = %3201, %3196
  %3202 = phi i64 [ %3208, %3201 ], [ 0, %3196 ]
  %3203 = phi <4 x i32> [ %3209, %3201 ], [ <i32 0, i32 1, i32 2, i32 3>, %3196 ]
  %3204 = add <4 x i32> %3203, <i32 1, i32 1, i32 1, i32 1>
  %3205 = sitofp <4 x i32> %3204 to <4 x float>
  %3206 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3205
  %3207 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3202
  store <4 x float> %3206, ptr %3207, align 16, !tbaa !13
  %3208 = add nuw nsw i64 %3202, 4
  %3209 = add <4 x i32> %3203, <i32 4, i32 4, i32 4, i32 4>
  %3210 = icmp eq i64 %3208, 32000
  br i1 %3210, label %3211, label %3201, !llvm.loop !350

3211:                                             ; preds = %3211, %3201
  %3212 = phi i64 [ %3218, %3211 ], [ 0, %3201 ]
  %3213 = phi <4 x i32> [ %3219, %3211 ], [ <i32 0, i32 1, i32 2, i32 3>, %3201 ]
  %3214 = add <4 x i32> %3213, <i32 1, i32 1, i32 1, i32 1>
  %3215 = sitofp <4 x i32> %3214 to <4 x float>
  %3216 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3215
  %3217 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3212
  store <4 x float> %3216, ptr %3217, align 16, !tbaa !13
  %3218 = add nuw nsw i64 %3212, 4
  %3219 = add <4 x i32> %3213, <i32 4, i32 4, i32 4, i32 4>
  %3220 = icmp eq i64 %3218, 32000
  br i1 %3220, label %3386, label %3211, !llvm.loop !351

3221:                                             ; preds = %3193
  %3222 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.131) #12
  %3223 = icmp eq i32 %3222, 0
  br i1 %3223, label %3224, label %3240

3224:                                             ; preds = %3224, %3221
  %3225 = phi i64 [ %3227, %3224 ], [ 0, %3221 ]
  %3226 = getelementptr inbounds float, ptr @global_data, i64 %3225
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3226, align 16, !tbaa !13
  %3227 = add nuw nsw i64 %3225, 4
  %3228 = icmp eq i64 %3227, 32000
  br i1 %3228, label %3229, label %3224, !llvm.loop !352

3229:                                             ; preds = %3229, %3224
  %3230 = phi i64 [ %3237, %3229 ], [ 0, %3224 ]
  %3231 = phi <4 x i32> [ %3238, %3229 ], [ <i32 0, i32 1, i32 2, i32 3>, %3224 ]
  %3232 = add <4 x i32> %3231, <i32 1, i32 1, i32 1, i32 1>
  %3233 = mul <4 x i32> %3232, %3232
  %3234 = sitofp <4 x i32> %3233 to <4 x float>
  %3235 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3234
  %3236 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3230
  store <4 x float> %3235, ptr %3236, align 16, !tbaa !13
  %3237 = add nuw nsw i64 %3230, 4
  %3238 = add <4 x i32> %3231, <i32 4, i32 4, i32 4, i32 4>
  %3239 = icmp eq i64 %3237, 32000
  br i1 %3239, label %3386, label %3229, !llvm.loop !353

3240:                                             ; preds = %3221
  %3241 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.132) #12
  %3242 = icmp eq i32 %3241, 0
  br i1 %3242, label %3243, label %3264

3243:                                             ; preds = %3243, %3240
  %3244 = phi i64 [ %3251, %3243 ], [ 0, %3240 ]
  %3245 = phi <4 x i32> [ %3252, %3243 ], [ <i32 0, i32 1, i32 2, i32 3>, %3240 ]
  %3246 = add <4 x i32> %3245, <i32 1, i32 1, i32 1, i32 1>
  %3247 = mul <4 x i32> %3246, %3246
  %3248 = sitofp <4 x i32> %3247 to <4 x float>
  %3249 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3248
  %3250 = getelementptr inbounds float, ptr @global_data, i64 %3244
  store <4 x float> %3249, ptr %3250, align 16, !tbaa !13
  %3251 = add nuw nsw i64 %3244, 4
  %3252 = add <4 x i32> %3245, <i32 4, i32 4, i32 4, i32 4>
  %3253 = icmp eq i64 %3251, 32000
  br i1 %3253, label %3254, label %3243, !llvm.loop !354

3254:                                             ; preds = %3254, %3243
  %3255 = phi i64 [ %3257, %3254 ], [ 0, %3243 ]
  %3256 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3255
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3256, align 16, !tbaa !13
  %3257 = add nuw nsw i64 %3255, 4
  %3258 = icmp eq i64 %3257, 32000
  br i1 %3258, label %3259, label %3254, !llvm.loop !355

3259:                                             ; preds = %3259, %3254
  %3260 = phi i64 [ %3262, %3259 ], [ 0, %3254 ]
  %3261 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3260
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, ptr %3261, align 16, !tbaa !13
  %3262 = add nuw nsw i64 %3260, 4
  %3263 = icmp eq i64 %3262, 32000
  br i1 %3263, label %3386, label %3259, !llvm.loop !356

3264:                                             ; preds = %3240
  %3265 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.133) #12
  %3266 = icmp eq i32 %3265, 0
  br i1 %3266, label %3267, label %3282

3267:                                             ; preds = %3267, %3264
  %3268 = phi i64 [ %3270, %3267 ], [ 0, %3264 ]
  %3269 = getelementptr inbounds float, ptr @global_data, i64 %3268
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3269, align 16, !tbaa !13
  %3270 = add nuw nsw i64 %3268, 4
  %3271 = icmp eq i64 %3270, 32000
  br i1 %3271, label %3272, label %3267, !llvm.loop !357

3272:                                             ; preds = %3272, %3267
  %3273 = phi i64 [ %3275, %3272 ], [ 0, %3267 ]
  %3274 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3273
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, ptr %3274, align 16, !tbaa !13
  %3275 = add nuw nsw i64 %3273, 4
  %3276 = icmp eq i64 %3275, 32000
  br i1 %3276, label %3277, label %3272, !llvm.loop !358

3277:                                             ; preds = %3277, %3272
  %3278 = phi i64 [ %3280, %3277 ], [ 0, %3272 ]
  %3279 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3278
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, ptr %3279, align 16, !tbaa !13
  %3280 = add nuw nsw i64 %3278, 4
  %3281 = icmp eq i64 %3280, 32000
  br i1 %3281, label %3386, label %3277, !llvm.loop !359

3282:                                             ; preds = %3264
  %3283 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.134) #12
  %3284 = icmp eq i32 %3283, 0
  br i1 %3284, label %3285, label %3295

3285:                                             ; preds = %3285, %3282
  %3286 = phi i64 [ %3292, %3285 ], [ 0, %3282 ]
  %3287 = phi <4 x i32> [ %3293, %3285 ], [ <i32 0, i32 1, i32 2, i32 3>, %3282 ]
  %3288 = add <4 x i32> %3287, <i32 1, i32 1, i32 1, i32 1>
  %3289 = sitofp <4 x i32> %3288 to <4 x float>
  %3290 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3289
  %3291 = getelementptr inbounds float, ptr @global_data, i64 %3286
  store <4 x float> %3290, ptr %3291, align 16, !tbaa !13
  %3292 = add nuw nsw i64 %3286, 4
  %3293 = add <4 x i32> %3287, <i32 4, i32 4, i32 4, i32 4>
  %3294 = icmp eq i64 %3292, 32000
  br i1 %3294, label %3386, label %3285, !llvm.loop !360

3295:                                             ; preds = %3282
  %3296 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.135) #12
  %3297 = icmp eq i32 %3296, 0
  br i1 %3297, label %3298, label %3318

3298:                                             ; preds = %3298, %3295
  %3299 = phi i64 [ %3305, %3298 ], [ 0, %3295 ]
  %3300 = phi <4 x i32> [ %3306, %3298 ], [ <i32 0, i32 1, i32 2, i32 3>, %3295 ]
  %3301 = add <4 x i32> %3300, <i32 1, i32 1, i32 1, i32 1>
  %3302 = sitofp <4 x i32> %3301 to <4 x float>
  %3303 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3302
  %3304 = getelementptr inbounds float, ptr @global_data, i64 %3299
  store <4 x float> %3303, ptr %3304, align 16, !tbaa !13
  %3305 = add nuw nsw i64 %3299, 4
  %3306 = add <4 x i32> %3300, <i32 4, i32 4, i32 4, i32 4>
  %3307 = icmp eq i64 %3305, 32000
  br i1 %3307, label %3308, label %3298, !llvm.loop !361

3308:                                             ; preds = %3308, %3298
  %3309 = phi i64 [ %3315, %3308 ], [ 0, %3298 ]
  %3310 = phi <4 x i32> [ %3316, %3308 ], [ <i32 0, i32 1, i32 2, i32 3>, %3298 ]
  %3311 = add <4 x i32> %3310, <i32 1, i32 1, i32 1, i32 1>
  %3312 = sitofp <4 x i32> %3311 to <4 x float>
  %3313 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3312
  %3314 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3309
  store <4 x float> %3313, ptr %3314, align 16, !tbaa !13
  %3315 = add nuw nsw i64 %3309, 4
  %3316 = add <4 x i32> %3310, <i32 4, i32 4, i32 4, i32 4>
  %3317 = icmp eq i64 %3315, 32000
  br i1 %3317, label %3386, label %3308, !llvm.loop !362

3318:                                             ; preds = %3295
  %3319 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.136) #12
  %3320 = icmp eq i32 %3319, 0
  br i1 %3320, label %3321, label %3386

3321:                                             ; preds = %3321, %3318
  %3322 = phi i64 [ %3328, %3321 ], [ 0, %3318 ]
  %3323 = phi <4 x i32> [ %3329, %3321 ], [ <i32 0, i32 1, i32 2, i32 3>, %3318 ]
  %3324 = add <4 x i32> %3323, <i32 1, i32 1, i32 1, i32 1>
  %3325 = sitofp <4 x i32> %3324 to <4 x float>
  %3326 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3325
  %3327 = getelementptr inbounds float, ptr @global_data, i64 %3322
  store <4 x float> %3326, ptr %3327, align 16, !tbaa !13
  %3328 = add nuw nsw i64 %3322, 4
  %3329 = add <4 x i32> %3323, <i32 4, i32 4, i32 4, i32 4>
  %3330 = icmp eq i64 %3328, 32000
  br i1 %3330, label %3331, label %3321, !llvm.loop !363

3331:                                             ; preds = %3331, %3321
  %3332 = phi i64 [ %3338, %3331 ], [ 0, %3321 ]
  %3333 = phi <4 x i32> [ %3339, %3331 ], [ <i32 0, i32 1, i32 2, i32 3>, %3321 ]
  %3334 = add <4 x i32> %3333, <i32 1, i32 1, i32 1, i32 1>
  %3335 = sitofp <4 x i32> %3334 to <4 x float>
  %3336 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3335
  %3337 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3332
  store <4 x float> %3336, ptr %3337, align 16, !tbaa !13
  %3338 = add nuw nsw i64 %3332, 4
  %3339 = add <4 x i32> %3333, <i32 4, i32 4, i32 4, i32 4>
  %3340 = icmp eq i64 %3338, 32000
  br i1 %3340, label %3341, label %3331, !llvm.loop !364

3341:                                             ; preds = %3341, %3331
  %3342 = phi i64 [ %3348, %3341 ], [ 0, %3331 ]
  %3343 = phi <4 x i32> [ %3349, %3341 ], [ <i32 0, i32 1, i32 2, i32 3>, %3331 ]
  %3344 = add <4 x i32> %3343, <i32 1, i32 1, i32 1, i32 1>
  %3345 = sitofp <4 x i32> %3344 to <4 x float>
  %3346 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3345
  %3347 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3342
  store <4 x float> %3346, ptr %3347, align 16, !tbaa !13
  %3348 = add nuw nsw i64 %3342, 4
  %3349 = add <4 x i32> %3343, <i32 4, i32 4, i32 4, i32 4>
  %3350 = icmp eq i64 %3348, 32000
  br i1 %3350, label %3351, label %3341, !llvm.loop !365

3351:                                             ; preds = %3351, %3341
  %3352 = phi i64 [ %3358, %3351 ], [ 0, %3341 ]
  %3353 = phi <4 x i32> [ %3359, %3351 ], [ <i32 0, i32 1, i32 2, i32 3>, %3341 ]
  %3354 = add <4 x i32> %3353, <i32 1, i32 1, i32 1, i32 1>
  %3355 = sitofp <4 x i32> %3354 to <4 x float>
  %3356 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3355
  %3357 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %3352
  store <4 x float> %3356, ptr %3357, align 16, !tbaa !13
  %3358 = add nuw nsw i64 %3352, 4
  %3359 = add <4 x i32> %3353, <i32 4, i32 4, i32 4, i32 4>
  %3360 = icmp eq i64 %3358, 32000
  br i1 %3360, label %3361, label %3351, !llvm.loop !366

3361:                                             ; preds = %3361, %3351
  %3362 = phi i64 [ %3368, %3361 ], [ 0, %3351 ]
  %3363 = phi <4 x i32> [ %3369, %3361 ], [ <i32 0, i32 1, i32 2, i32 3>, %3351 ]
  %3364 = add <4 x i32> %3363, <i32 1, i32 1, i32 1, i32 1>
  %3365 = sitofp <4 x i32> %3364 to <4 x float>
  %3366 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3365
  %3367 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %3362
  store <4 x float> %3366, ptr %3367, align 16, !tbaa !13
  %3368 = add nuw nsw i64 %3362, 4
  %3369 = add <4 x i32> %3363, <i32 4, i32 4, i32 4, i32 4>
  %3370 = icmp eq i64 %3368, 32000
  br i1 %3370, label %3371, label %3361, !llvm.loop !367

3371:                                             ; preds = %3384, %3361
  %3372 = phi i64 [ %3373, %3384 ], [ 0, %3361 ]
  %3373 = add nuw nsw i64 %3372, 1
  %3374 = trunc i64 %3373 to i32
  %3375 = sitofp i32 %3374 to float
  %3376 = fdiv float 1.000000e+00, %3375
  %3377 = insertelement <4 x float> poison, float %3376, i64 0
  %3378 = shufflevector <4 x float> %3377, <4 x float> poison, <4 x i32> zeroinitializer
  br label %3379

3379:                                             ; preds = %3379, %3371
  %3380 = phi i64 [ 0, %3371 ], [ %3382, %3379 ]
  %3381 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %3372, i64 %3380
  store <4 x float> %3378, ptr %3381, align 16, !tbaa !13
  %3382 = add nuw nsw i64 %3380, 4
  %3383 = icmp eq i64 %3382, 256
  br i1 %3383, label %3384, label %3379, !llvm.loop !368

3384:                                             ; preds = %3379
  %3385 = icmp eq i64 %3373, 256
  br i1 %3385, label %3386, label %3371

3386:                                             ; preds = %3384, %3318, %3308, %3285, %3277, %3259, %3229, %3211, %3188, %3169, %3154, %3139, %3124, %3109, %3095, %3067, %3046, %3010, %2987, %2957, %2938, %2920, %2891, %2863, %2825, %2786, %2777, %2758, %2735, %2707, %2664, %2619, %2600, %2581, %2567, %2553, %2545, %2530, %2500, %2449, %2415, %2387, %2368, %2345, %2331, %2315, %2280, %2257, %2252, %2237, %2214, %2180, %2171, %2162, %2148, %2124, %2120, %2092, %2067, %2051, %2041, %2028, %2015, %2002, %1984, %1971, %1967, %1963, %1958, %1907, %1899, %1890, %1881, %1862, %1834, %1806, %1763, %1715, %1667, %1619, %1588, %1548, %1514, %1486, %1443, %1420, %1388, %1337, %1309, %1279, %1270, %1256, %1233, %1214, %1180, %1156, %1122, %1099, %1079, %1025, %982, %935, %920, %888, %869, %831, %798, %759, %730, %711, %692, %673, %654, %636, %608, %565, %525, %515, %488, %454, %441, %417, %386, %357, %317, %283, %248, %229, %219, %189, %169, %163, %126, %83, %64, %45, %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @check(i32 noundef %0) unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %20, %2 ]
  %4 = phi float [ 0.000000e+00, %1 ], [ %19, %2 ]
  %5 = phi float [ 0.000000e+00, %1 ], [ %16, %2 ]
  %6 = phi float [ 0.000000e+00, %1 ], [ %13, %2 ]
  %7 = phi float [ 0.000000e+00, %1 ], [ %10, %2 ]
  %8 = getelementptr inbounds float, ptr @global_data, i64 %3
  %9 = load float, ptr %8, align 4, !tbaa !13
  %10 = fadd float %7, %9
  %11 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3
  %12 = load float, ptr %11, align 4, !tbaa !13
  %13 = fadd float %6, %12
  %14 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3
  %15 = load float, ptr %14, align 4, !tbaa !13
  %16 = fadd float %5, %15
  %17 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %3
  %18 = load float, ptr %17, align 4, !tbaa !13
  %19 = fadd float %4, %18
  %20 = add nuw nsw i64 %3, 1
  %21 = icmp eq i64 %20, 32000
  br i1 %21, label %22, label %2

22:                                               ; preds = %27, %2
  %.lcssa6 = phi float [ %.lcssa6, %27 ], [ %10, %2 ]
  %.lcssa5 = phi float [ %.lcssa5, %27 ], [ %13, %2 ]
  %.lcssa4 = phi float [ %.lcssa4, %27 ], [ %16, %2 ]
  %.lcssa3 = phi float [ %.lcssa3, %27 ], [ %19, %2 ]
  %23 = phi i64 [ %28, %27 ], [ 0, %2 ]
  %24 = phi float [ %.lcssa, %27 ], [ 0.000000e+00, %2 ]
  %25 = phi float [ %.lcssa1, %27 ], [ 0.000000e+00, %2 ]
  %26 = phi float [ %.lcssa2, %27 ], [ 0.000000e+00, %2 ]
  br label %31

27:                                               ; preds = %31
  %.lcssa2 = phi float [ %38, %31 ]
  %.lcssa1 = phi float [ %41, %31 ]
  %.lcssa = phi float [ %44, %31 ]
  %28 = add nuw nsw i64 %23, 1
  %29 = icmp eq i64 %28, 256
  br i1 %29, label %30, label %22

30:                                               ; preds = %27
  %.lcssa6.lcssa = phi float [ %.lcssa6, %27 ]
  %.lcssa5.lcssa = phi float [ %.lcssa5, %27 ]
  %.lcssa4.lcssa = phi float [ %.lcssa4, %27 ]
  %.lcssa3.lcssa = phi float [ %.lcssa3, %27 ]
  %.lcssa2.lcssa = phi float [ %.lcssa2, %27 ]
  %.lcssa1.lcssa = phi float [ %.lcssa1, %27 ]
  %.lcssa.lcssa = phi float [ %.lcssa, %27 ]
  switch i32 %0, label %67 [
    i32 111, label %60
    i32 1122, label %58
    i32 123, label %55
    i32 13, label %53
    i32 25, label %51
    i32 11, label %62
    i32 22, label %47
    i32 33, label %48
    i32 12, label %49
  ]

31:                                               ; preds = %31, %22
  %32 = phi i64 [ 0, %22 ], [ %45, %31 ]
  %33 = phi float [ %24, %22 ], [ %44, %31 ]
  %34 = phi float [ %25, %22 ], [ %41, %31 ]
  %35 = phi float [ %26, %22 ], [ %38, %31 ]
  %36 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %23, i64 %32
  %37 = load float, ptr %36, align 4, !tbaa !13
  %38 = fadd float %35, %37
  %39 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %23, i64 %32
  %40 = load float, ptr %39, align 4, !tbaa !13
  %41 = fadd float %34, %40
  %42 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %23, i64 %32
  %43 = load float, ptr %42, align 4, !tbaa !13
  %44 = fadd float %33, %43
  %45 = add nuw nsw i64 %32, 1
  %46 = icmp eq i64 %45, 256
  br i1 %46, label %27, label %31

47:                                               ; preds = %30
  br label %62

48:                                               ; preds = %30
  br label %62

49:                                               ; preds = %30
  %50 = fadd float %.lcssa6.lcssa, %.lcssa5.lcssa
  br label %62

51:                                               ; preds = %30
  %52 = fadd float %.lcssa5.lcssa, %.lcssa3.lcssa
  br label %62

53:                                               ; preds = %30
  %54 = fadd float %.lcssa6.lcssa, %.lcssa4.lcssa
  br label %62

55:                                               ; preds = %30
  %56 = fadd float %.lcssa6.lcssa, %.lcssa5.lcssa
  %57 = fadd float %56, %.lcssa4.lcssa
  br label %62

58:                                               ; preds = %30
  %59 = fadd float %.lcssa2.lcssa, %.lcssa1.lcssa
  br label %62

60:                                               ; preds = %30
  %61 = fadd float %.lcssa6.lcssa, %.lcssa2.lcssa
  br label %62

62:                                               ; preds = %60, %58, %55, %53, %51, %49, %48, %47, %30
  %63 = phi float [ %61, %60 ], [ %59, %58 ], [ %57, %55 ], [ %54, %53 ], [ %52, %51 ], [ %50, %49 ], [ %.lcssa.lcssa, %48 ], [ %.lcssa1.lcssa, %47 ], [ %.lcssa2.lcssa, %30 ]
  %64 = load i32, ptr @digits, align 4, !tbaa !7
  %65 = fpext float %63 to double
  %66 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %64, double noundef %65) #11
  br label %67

67:                                               ; preds = %62, %30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree nounwind optsize memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize willreturn memory(read) }

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
