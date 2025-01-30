; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/TSVC/LoopRestructuring-flt/LoopRestructuring-flt.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalData = type { [32000 x float], [3 x i32], [4 x i8], [32000 x float], [5 x i32], [12 x i8], [32000 x float], [7 x i32], [4 x i8], [32000 x float], [11 x i32], [4 x i8], [32000 x float], [13 x i32], [12 x i8], [256 x [256 x float]], [17 x i32], [12 x i8], [256 x [256 x float]], [19 x i32], [4 x i8], [256 x [256 x float]], [23 x i32], [4 x i8], [256 x [256 x float]] }

@global_data = internal global %struct.GlobalData zeroinitializer, align 16
@array = internal global [65536 x float] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"%.*G \0A\00", align 1
@digits = internal unnamed_addr global i32 6, align 4
@temp = internal global float 0.000000e+00, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"s000 \00", align 1
@X = internal global [32000 x float] zeroinitializer, align 16
@Y = internal global [32000 x float] zeroinitializer, align 16
@Z = internal global [32000 x float] zeroinitializer, align 16
@U = internal global [32000 x float] zeroinitializer, align 16
@V = internal global [32000 x float] zeroinitializer, align 16
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
@indx = internal global [32000 x i32] zeroinitializer, align 16
@.str.147 = private unnamed_addr constant [31 x i8] c"Running each loop %d times...\0A\00", align 1
@str = private unnamed_addr constant [29 x i8] c"Loop \09 Time(Sec) \09 Checksum \00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @dummy(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readnone %4, ptr nocapture noundef readnone %5, ptr nocapture noundef readnone %6, ptr nocapture noundef readnone %7, float noundef %8) #0 {
  ret i32 0
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @check(i32 noundef %0) #1 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %24, %2 ]
  %4 = phi float [ 0.000000e+00, %1 ], [ %23, %2 ]
  %5 = phi float [ 0.000000e+00, %1 ], [ %20, %2 ]
  %6 = phi float [ 0.000000e+00, %1 ], [ %17, %2 ]
  %7 = phi float [ 0.000000e+00, %1 ], [ %14, %2 ]
  %8 = phi float [ 0.000000e+00, %1 ], [ %11, %2 ]
  %9 = getelementptr inbounds float, ptr @global_data, i64 %3
  %10 = load float, ptr %9, align 4, !tbaa !7
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3
  %13 = load float, ptr %12, align 4, !tbaa !7
  %14 = fadd float %7, %13
  %15 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3
  %16 = load float, ptr %15, align 4, !tbaa !7
  %17 = fadd float %6, %16
  %18 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %3
  %19 = load float, ptr %18, align 4, !tbaa !7
  %20 = fadd float %5, %19
  %21 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %3
  %22 = load float, ptr %21, align 4, !tbaa !7
  %23 = fadd float %4, %22
  %24 = add nuw nsw i64 %3, 1
  %25 = icmp eq i64 %24, 32000
  br i1 %25, label %26, label %2

26:                                               ; preds = %31, %2
  %.lcssa8 = phi float [ %.lcssa8, %31 ], [ %11, %2 ]
  %.lcssa7 = phi float [ %.lcssa7, %31 ], [ %14, %2 ]
  %.lcssa6 = phi float [ %.lcssa6, %31 ], [ %17, %2 ]
  %.lcssa5 = phi float [ %.lcssa5, %31 ], [ %20, %2 ]
  %.lcssa4 = phi float [ %.lcssa4, %31 ], [ %23, %2 ]
  %27 = phi i64 [ %32, %31 ], [ 0, %2 ]
  %28 = phi float [ %.lcssa1, %31 ], [ 0.000000e+00, %2 ]
  %29 = phi float [ %.lcssa2, %31 ], [ 0.000000e+00, %2 ]
  %30 = phi float [ %.lcssa3, %31 ], [ 0.000000e+00, %2 ]
  br label %34

31:                                               ; preds = %34
  %.lcssa3 = phi float [ %41, %34 ]
  %.lcssa2 = phi float [ %44, %34 ]
  %.lcssa1 = phi float [ %47, %34 ]
  %32 = add nuw nsw i64 %27, 1
  %33 = icmp eq i64 %32, 256
  br i1 %33, label %51, label %26

34:                                               ; preds = %34, %26
  %35 = phi i64 [ 0, %26 ], [ %48, %34 ]
  %36 = phi float [ %28, %26 ], [ %47, %34 ]
  %37 = phi float [ %29, %26 ], [ %44, %34 ]
  %38 = phi float [ %30, %26 ], [ %41, %34 ]
  %39 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %27, i64 %35
  %40 = load float, ptr %39, align 4, !tbaa !7
  %41 = fadd float %38, %40
  %42 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %27, i64 %35
  %43 = load float, ptr %42, align 4, !tbaa !7
  %44 = fadd float %37, %43
  %45 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %27, i64 %35
  %46 = load float, ptr %45, align 4, !tbaa !7
  %47 = fadd float %36, %46
  %48 = add nuw nsw i64 %35, 1
  %49 = icmp eq i64 %48, 256
  br i1 %49, label %31, label %34

50:                                               ; preds = %51
  %.lcssa8.lcssa.lcssa = phi float [ %.lcssa8.lcssa, %51 ]
  %.lcssa7.lcssa.lcssa = phi float [ %.lcssa7.lcssa, %51 ]
  %.lcssa6.lcssa.lcssa = phi float [ %.lcssa6.lcssa, %51 ]
  %.lcssa5.lcssa.lcssa = phi float [ %.lcssa5.lcssa, %51 ]
  %.lcssa4.lcssa.lcssa = phi float [ %.lcssa4.lcssa, %51 ]
  %.lcssa3.lcssa.lcssa = phi float [ %.lcssa3.lcssa, %51 ]
  %.lcssa2.lcssa.lcssa = phi float [ %.lcssa2.lcssa, %51 ]
  %.lcssa1.lcssa.lcssa = phi float [ %.lcssa1.lcssa, %51 ]
  %.lcssa = phi float [ %56, %51 ]
  switch i32 %0, label %93 [
    i32 1, label %88
    i32 2, label %59
    i32 3, label %60
    i32 4, label %61
    i32 5, label %62
    i32 11, label %63
    i32 22, label %64
    i32 33, label %65
    i32 0, label %66
    i32 12, label %67
    i32 25, label %69
    i32 13, label %71
    i32 123, label %73
    i32 1122, label %76
    i32 112233, label %78
    i32 111, label %81
    i32 -1, label %83
    i32 -12, label %85
  ]

51:                                               ; preds = %51, %31
  %.lcssa8.lcssa = phi float [ %.lcssa8.lcssa, %51 ], [ %.lcssa8, %31 ]
  %.lcssa7.lcssa = phi float [ %.lcssa7.lcssa, %51 ], [ %.lcssa7, %31 ]
  %.lcssa6.lcssa = phi float [ %.lcssa6.lcssa, %51 ], [ %.lcssa6, %31 ]
  %.lcssa5.lcssa = phi float [ %.lcssa5.lcssa, %51 ], [ %.lcssa5, %31 ]
  %.lcssa4.lcssa = phi float [ %.lcssa4.lcssa, %51 ], [ %.lcssa4, %31 ]
  %.lcssa3.lcssa = phi float [ %.lcssa3.lcssa, %51 ], [ %.lcssa3, %31 ]
  %.lcssa2.lcssa = phi float [ %.lcssa2.lcssa, %51 ], [ %.lcssa2, %31 ]
  %.lcssa1.lcssa = phi float [ %.lcssa1.lcssa, %51 ], [ %.lcssa1, %31 ]
  %52 = phi i64 [ %57, %51 ], [ 0, %31 ]
  %53 = phi float [ %56, %51 ], [ 0.000000e+00, %31 ]
  %54 = getelementptr inbounds [65536 x float], ptr @array, i64 0, i64 %52
  %55 = load float, ptr %54, align 4, !tbaa !7
  %56 = fadd float %53, %55
  %57 = add nuw nsw i64 %52, 1
  %58 = icmp eq i64 %57, 65536
  br i1 %58, label %50, label %51

59:                                               ; preds = %50
  br label %88

60:                                               ; preds = %50
  br label %88

61:                                               ; preds = %50
  br label %88

62:                                               ; preds = %50
  br label %88

63:                                               ; preds = %50
  br label %88

64:                                               ; preds = %50
  br label %88

65:                                               ; preds = %50
  br label %88

66:                                               ; preds = %50
  br label %88

67:                                               ; preds = %50
  %68 = fadd float %.lcssa8.lcssa.lcssa, %.lcssa7.lcssa.lcssa
  br label %88

69:                                               ; preds = %50
  %70 = fadd float %.lcssa7.lcssa.lcssa, %.lcssa4.lcssa.lcssa
  br label %88

71:                                               ; preds = %50
  %72 = fadd float %.lcssa8.lcssa.lcssa, %.lcssa6.lcssa.lcssa
  br label %88

73:                                               ; preds = %50
  %74 = fadd float %.lcssa8.lcssa.lcssa, %.lcssa7.lcssa.lcssa
  %75 = fadd float %74, %.lcssa6.lcssa.lcssa
  br label %88

76:                                               ; preds = %50
  %77 = fadd float %.lcssa3.lcssa.lcssa, %.lcssa2.lcssa.lcssa
  br label %88

78:                                               ; preds = %50
  %79 = fadd float %.lcssa3.lcssa.lcssa, %.lcssa2.lcssa.lcssa
  %80 = fadd float %79, %.lcssa1.lcssa.lcssa
  br label %88

81:                                               ; preds = %50
  %82 = fadd float %.lcssa8.lcssa.lcssa, %.lcssa3.lcssa.lcssa
  br label %88

83:                                               ; preds = %50
  %84 = load float, ptr @temp, align 4, !tbaa !7
  br label %88

85:                                               ; preds = %50
  %86 = load float, ptr @temp, align 4, !tbaa !7
  %87 = fadd float %.lcssa7.lcssa.lcssa, %86
  br label %88

88:                                               ; preds = %85, %83, %81, %78, %76, %73, %71, %69, %67, %66, %65, %64, %63, %62, %61, %60, %59, %50
  %89 = phi float [ %84, %83 ], [ %82, %81 ], [ %80, %78 ], [ %77, %76 ], [ %75, %73 ], [ %72, %71 ], [ %70, %69 ], [ %68, %67 ], [ %.lcssa, %66 ], [ %.lcssa1.lcssa.lcssa, %65 ], [ %.lcssa2.lcssa.lcssa, %64 ], [ %.lcssa3.lcssa.lcssa, %63 ], [ %.lcssa4.lcssa.lcssa, %62 ], [ %.lcssa5.lcssa.lcssa, %61 ], [ %.lcssa6.lcssa.lcssa, %60 ], [ %.lcssa7.lcssa.lcssa, %59 ], [ %87, %85 ], [ %.lcssa8.lcssa.lcssa, %50 ]
  %90 = load i32, ptr @digits, align 4, !tbaa !11
  %91 = fpext float %89 to double
  %92 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %90, double noundef %91) #11
  br label %93

93:                                               ; preds = %88, %50
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize memory(write, argmem: read, inaccessiblemem: none) uwtable
define internal i32 @init(ptr noundef readonly %0) #3 {
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.1) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %34

4:                                                ; preds = %4, %1
  %5 = phi i64 [ %27, %4 ], [ 0, %1 ]
  %6 = phi <4 x i64> [ %28, %4 ], [ <i64 0, i64 1, i64 2, i64 3>, %1 ]
  %7 = phi <4 x i32> [ %29, %4 ], [ <i32 0, i32 1, i32 2, i32 3>, %1 ]
  %8 = phi <4 x i32> [ %30, %4 ], [ <i32 0, i32 1, i32 2, i32 3>, %1 ]
  %9 = phi <4 x i32> [ %31, %4 ], [ <i32 0, i32 1, i32 2, i32 3>, %1 ]
  %10 = phi <4 x i32> [ %32, %4 ], [ <i32 0, i32 1, i32 2, i32 3>, %1 ]
  %11 = trunc <4 x i64> %6 to <4 x i32>
  %12 = add <4 x i32> %11, <i32 1, i32 1, i32 1, i32 1>
  %13 = sitofp <4 x i32> %12 to <4 x float>
  %14 = getelementptr inbounds [32000 x float], ptr @X, i64 0, i64 %5
  store <4 x float> %13, ptr %14, align 16, !tbaa !7
  %15 = add <4 x i32> %7, <i32 2, i32 2, i32 2, i32 2>
  %16 = sitofp <4 x i32> %15 to <4 x float>
  %17 = getelementptr inbounds [32000 x float], ptr @Y, i64 0, i64 %5
  store <4 x float> %16, ptr %17, align 16, !tbaa !7
  %18 = add <4 x i32> %8, <i32 3, i32 3, i32 3, i32 3>
  %19 = sitofp <4 x i32> %18 to <4 x float>
  %20 = getelementptr inbounds [32000 x float], ptr @Z, i64 0, i64 %5
  store <4 x float> %19, ptr %20, align 16, !tbaa !7
  %21 = add <4 x i32> %9, <i32 4, i32 4, i32 4, i32 4>
  %22 = sitofp <4 x i32> %21 to <4 x float>
  %23 = getelementptr inbounds [32000 x float], ptr @U, i64 0, i64 %5
  store <4 x float> %22, ptr %23, align 16, !tbaa !7
  %24 = add <4 x i32> %10, <i32 5, i32 5, i32 5, i32 5>
  %25 = sitofp <4 x i32> %24 to <4 x float>
  %26 = getelementptr inbounds [32000 x float], ptr @V, i64 0, i64 %5
  store <4 x float> %25, ptr %26, align 16, !tbaa !7
  %27 = add nuw i64 %5, 4
  %28 = add <4 x i64> %6, <i64 4, i64 4, i64 4, i64 4>
  %29 = add <4 x i32> %7, <i32 4, i32 4, i32 4, i32 4>
  %30 = add <4 x i32> %8, <i32 4, i32 4, i32 4, i32 4>
  %31 = add <4 x i32> %9, <i32 4, i32 4, i32 4, i32 4>
  %32 = add <4 x i32> %10, <i32 4, i32 4, i32 4, i32 4>
  %33 = icmp eq i64 %27, 32000
  br i1 %33, label %3611, label %4, !llvm.loop !13

34:                                               ; preds = %1
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.2) #12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %90

37:                                               ; preds = %37, %34
  %38 = phi i64 [ %40, %37 ], [ 0, %34 ]
  %39 = getelementptr inbounds float, ptr @global_data, i64 %38
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %39, align 16, !tbaa !7
  %40 = add nuw i64 %38, 4
  %41 = icmp eq i64 %40, 32000
  br i1 %41, label %42, label %37, !llvm.loop !16

42:                                               ; preds = %42, %37
  %43 = phi i64 [ %51, %42 ], [ 0, %37 ]
  %44 = phi <4 x i64> [ %52, %42 ], [ <i64 0, i64 1, i64 2, i64 3>, %37 ]
  %45 = add nuw nsw <4 x i64> %44, <i64 1, i64 1, i64 1, i64 1>
  %46 = mul nuw nsw <4 x i64> %45, %45
  %47 = trunc <4 x i64> %46 to <4 x i32>
  %48 = sitofp <4 x i32> %47 to <4 x float>
  %49 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %48
  %50 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %43
  store <4 x float> %49, ptr %50, align 16, !tbaa !7
  %51 = add nuw i64 %43, 4
  %52 = add <4 x i64> %44, <i64 4, i64 4, i64 4, i64 4>
  %53 = icmp eq i64 %51, 32000
  br i1 %53, label %54, label %42, !llvm.loop !17

54:                                               ; preds = %54, %42
  %55 = phi i64 [ %63, %54 ], [ 0, %42 ]
  %56 = phi <4 x i64> [ %64, %54 ], [ <i64 0, i64 1, i64 2, i64 3>, %42 ]
  %57 = add nuw nsw <4 x i64> %56, <i64 1, i64 1, i64 1, i64 1>
  %58 = mul nuw nsw <4 x i64> %57, %57
  %59 = trunc <4 x i64> %58 to <4 x i32>
  %60 = sitofp <4 x i32> %59 to <4 x float>
  %61 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %60
  %62 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %55
  store <4 x float> %61, ptr %62, align 16, !tbaa !7
  %63 = add nuw i64 %55, 4
  %64 = add <4 x i64> %56, <i64 4, i64 4, i64 4, i64 4>
  %65 = icmp eq i64 %63, 32000
  br i1 %65, label %66, label %54, !llvm.loop !18

66:                                               ; preds = %66, %54
  %67 = phi i64 [ %75, %66 ], [ 0, %54 ]
  %68 = phi <4 x i64> [ %76, %66 ], [ <i64 0, i64 1, i64 2, i64 3>, %54 ]
  %69 = add nuw nsw <4 x i64> %68, <i64 1, i64 1, i64 1, i64 1>
  %70 = mul nuw nsw <4 x i64> %69, %69
  %71 = trunc <4 x i64> %70 to <4 x i32>
  %72 = sitofp <4 x i32> %71 to <4 x float>
  %73 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %72
  %74 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %67
  store <4 x float> %73, ptr %74, align 16, !tbaa !7
  %75 = add nuw i64 %67, 4
  %76 = add <4 x i64> %68, <i64 4, i64 4, i64 4, i64 4>
  %77 = icmp eq i64 %75, 32000
  br i1 %77, label %78, label %66, !llvm.loop !19

78:                                               ; preds = %78, %66
  %79 = phi i64 [ %87, %78 ], [ 0, %66 ]
  %80 = phi <4 x i64> [ %88, %78 ], [ <i64 0, i64 1, i64 2, i64 3>, %66 ]
  %81 = add nuw nsw <4 x i64> %80, <i64 1, i64 1, i64 1, i64 1>
  %82 = mul nuw nsw <4 x i64> %81, %81
  %83 = trunc <4 x i64> %82 to <4 x i32>
  %84 = sitofp <4 x i32> %83 to <4 x float>
  %85 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %84
  %86 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %79
  store <4 x float> %85, ptr %86, align 16, !tbaa !7
  %87 = add nuw i64 %79, 4
  %88 = add <4 x i64> %80, <i64 4, i64 4, i64 4, i64 4>
  %89 = icmp eq i64 %87, 32000
  br i1 %89, label %3611, label %78, !llvm.loop !20

90:                                               ; preds = %34
  %91 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.3) #12
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %93, %90
  %94 = phi i64 [ %96, %93 ], [ 0, %90 ]
  %95 = getelementptr inbounds float, ptr @global_data, i64 %94
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %95, align 16, !tbaa !7
  %96 = add nuw i64 %94, 4
  %97 = icmp eq i64 %96, 32000
  br i1 %97, label %98, label %93, !llvm.loop !21

98:                                               ; preds = %98, %93
  %99 = phi i64 [ %107, %98 ], [ 0, %93 ]
  %100 = phi <4 x i64> [ %108, %98 ], [ <i64 0, i64 1, i64 2, i64 3>, %93 ]
  %101 = add nuw nsw <4 x i64> %100, <i64 1, i64 1, i64 1, i64 1>
  %102 = mul nuw nsw <4 x i64> %101, %101
  %103 = trunc <4 x i64> %102 to <4 x i32>
  %104 = sitofp <4 x i32> %103 to <4 x float>
  %105 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %104
  %106 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %99
  store <4 x float> %105, ptr %106, align 16, !tbaa !7
  %107 = add nuw i64 %99, 4
  %108 = add <4 x i64> %100, <i64 4, i64 4, i64 4, i64 4>
  %109 = icmp eq i64 %107, 32000
  br i1 %109, label %3611, label %98, !llvm.loop !22

110:                                              ; preds = %90
  %111 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.4) #12
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %113, %110
  %114 = phi i64 [ %116, %113 ], [ 0, %110 ]
  %115 = getelementptr inbounds float, ptr @global_data, i64 %114
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %115, align 16, !tbaa !7
  %116 = add nuw i64 %114, 4
  %117 = icmp eq i64 %116, 32000
  br i1 %117, label %118, label %113, !llvm.loop !23

118:                                              ; preds = %118, %113
  %119 = phi i64 [ %127, %118 ], [ 0, %113 ]
  %120 = phi <4 x i64> [ %128, %118 ], [ <i64 0, i64 1, i64 2, i64 3>, %113 ]
  %121 = add nuw nsw <4 x i64> %120, <i64 1, i64 1, i64 1, i64 1>
  %122 = mul nuw nsw <4 x i64> %121, %121
  %123 = trunc <4 x i64> %122 to <4 x i32>
  %124 = sitofp <4 x i32> %123 to <4 x float>
  %125 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %124
  %126 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %119
  store <4 x float> %125, ptr %126, align 16, !tbaa !7
  %127 = add nuw i64 %119, 4
  %128 = add <4 x i64> %120, <i64 4, i64 4, i64 4, i64 4>
  %129 = icmp eq i64 %127, 32000
  br i1 %129, label %3611, label %118, !llvm.loop !24

130:                                              ; preds = %110
  %131 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.5) #12
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %164

133:                                              ; preds = %146, %130
  %134 = phi i64 [ %135, %146 ], [ 0, %130 ]
  %135 = add nuw nsw i64 %134, 1
  %136 = trunc i64 %135 to i32
  %137 = sitofp i32 %136 to float
  %138 = fdiv float 1.000000e+00, %137
  %139 = insertelement <4 x float> poison, float %138, i64 0
  %140 = shufflevector <4 x float> %139, <4 x float> poison, <4 x i32> zeroinitializer
  br label %141

141:                                              ; preds = %141, %133
  %142 = phi i64 [ 0, %133 ], [ %144, %141 ]
  %143 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %134, i64 %142
  store <4 x float> %140, ptr %143, align 16, !tbaa !7
  %144 = add nuw i64 %142, 4
  %145 = icmp eq i64 %144, 256
  br i1 %145, label %146, label %141, !llvm.loop !25

146:                                              ; preds = %141
  %147 = icmp eq i64 %135, 256
  br i1 %147, label %148, label %133

148:                                              ; preds = %162, %146
  %149 = phi i64 [ %150, %162 ], [ 0, %146 ]
  %150 = add nuw nsw i64 %149, 1
  %151 = trunc i64 %150 to i32
  %152 = mul nsw i32 %151, %151
  %153 = sitofp i32 %152 to float
  %154 = fdiv float 1.000000e+00, %153
  %155 = insertelement <4 x float> poison, float %154, i64 0
  %156 = shufflevector <4 x float> %155, <4 x float> poison, <4 x i32> zeroinitializer
  br label %157

157:                                              ; preds = %157, %148
  %158 = phi i64 [ 0, %148 ], [ %160, %157 ]
  %159 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %149, i64 %158
  store <4 x float> %156, ptr %159, align 16, !tbaa !7
  %160 = add nuw i64 %158, 4
  %161 = icmp eq i64 %160, 256
  br i1 %161, label %162, label %157, !llvm.loop !26

162:                                              ; preds = %157
  %163 = icmp eq i64 %150, 256
  br i1 %163, label %3611, label %148

164:                                              ; preds = %130
  %165 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.6) #12
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %202

167:                                              ; preds = %167, %164
  %168 = phi i64 [ %170, %167 ], [ 0, %164 ]
  %169 = getelementptr inbounds float, ptr @global_data, i64 %168
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %169, align 16, !tbaa !7
  %170 = add nuw i64 %168, 4
  %171 = icmp eq i64 %170, 32000
  br i1 %171, label %172, label %167, !llvm.loop !27

172:                                              ; preds = %179, %167
  %173 = phi i64 [ %180, %179 ], [ 0, %167 ]
  br label %174

174:                                              ; preds = %174, %172
  %175 = phi i64 [ 0, %172 ], [ %177, %174 ]
  %176 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %173, i64 %175
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %176, align 16, !tbaa !7
  %177 = add nuw i64 %175, 4
  %178 = icmp eq i64 %177, 256
  br i1 %178, label %179, label %174, !llvm.loop !28

179:                                              ; preds = %174
  %180 = add nuw nsw i64 %173, 1
  %181 = icmp eq i64 %180, 256
  br i1 %181, label %182, label %172

182:                                              ; preds = %189, %179
  %183 = phi i64 [ %190, %189 ], [ 0, %179 ]
  br label %184

184:                                              ; preds = %184, %182
  %185 = phi i64 [ 0, %182 ], [ %187, %184 ]
  %186 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %183, i64 %185
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %186, align 16, !tbaa !7
  %187 = add nuw i64 %185, 4
  %188 = icmp eq i64 %187, 256
  br i1 %188, label %189, label %184, !llvm.loop !29

189:                                              ; preds = %184
  %190 = add nuw nsw i64 %183, 1
  %191 = icmp eq i64 %190, 256
  br i1 %191, label %192, label %182

192:                                              ; preds = %199, %189
  %193 = phi i64 [ %200, %199 ], [ 0, %189 ]
  br label %194

194:                                              ; preds = %194, %192
  %195 = phi i64 [ 0, %192 ], [ %197, %194 ]
  %196 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %193, i64 %195
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %196, align 16, !tbaa !7
  %197 = add nuw i64 %195, 4
  %198 = icmp eq i64 %197, 256
  br i1 %198, label %199, label %194, !llvm.loop !30

199:                                              ; preds = %194
  %200 = add nuw nsw i64 %193, 1
  %201 = icmp eq i64 %200, 256
  br i1 %201, label %3611, label %192

202:                                              ; preds = %164
  %203 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.7) #12
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %205, %202
  %206 = phi i64 [ %208, %205 ], [ 0, %202 ]
  %207 = getelementptr inbounds float, ptr @global_data, i64 %206
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %207, align 16, !tbaa !7
  %208 = add nuw i64 %206, 4
  %209 = icmp eq i64 %208, 32000
  br i1 %209, label %3611, label %205, !llvm.loop !31

210:                                              ; preds = %202
  %211 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.8) #12
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %228

213:                                              ; preds = %213, %210
  %214 = phi i64 [ %216, %213 ], [ 0, %210 ]
  %215 = getelementptr inbounds float, ptr @global_data, i64 %214
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %215, align 16, !tbaa !7
  %216 = add nuw i64 %214, 4
  %217 = icmp eq i64 %216, 32000
  br i1 %217, label %218, label %213, !llvm.loop !32

218:                                              ; preds = %225, %213
  %219 = phi i64 [ %226, %225 ], [ 0, %213 ]
  br label %220

220:                                              ; preds = %220, %218
  %221 = phi i64 [ 0, %218 ], [ %223, %220 ]
  %222 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %219, i64 %221
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %222, align 16, !tbaa !7
  %223 = add nuw i64 %221, 4
  %224 = icmp eq i64 %223, 256
  br i1 %224, label %225, label %220, !llvm.loop !33

225:                                              ; preds = %220
  %226 = add nuw nsw i64 %219, 1
  %227 = icmp eq i64 %226, 256
  br i1 %227, label %3611, label %218

228:                                              ; preds = %210
  %229 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.9) #12
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %257

231:                                              ; preds = %238, %228
  %232 = phi i64 [ %239, %238 ], [ 0, %228 ]
  br label %233

233:                                              ; preds = %233, %231
  %234 = phi i64 [ 0, %231 ], [ %236, %233 ]
  %235 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %232, i64 %234
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %235, align 16, !tbaa !7
  %236 = add nuw i64 %234, 4
  %237 = icmp eq i64 %236, 256
  br i1 %237, label %238, label %233, !llvm.loop !34

238:                                              ; preds = %233
  %239 = add nuw nsw i64 %232, 1
  %240 = icmp eq i64 %239, 256
  br i1 %240, label %241, label %231

241:                                              ; preds = %255, %238
  %242 = phi i64 [ %243, %255 ], [ 0, %238 ]
  %243 = add nuw nsw i64 %242, 1
  %244 = trunc i64 %243 to i32
  %245 = mul nsw i32 %244, %244
  %246 = sitofp i32 %245 to float
  %247 = fdiv float 1.000000e+00, %246
  %248 = insertelement <4 x float> poison, float %247, i64 0
  %249 = shufflevector <4 x float> %248, <4 x float> poison, <4 x i32> zeroinitializer
  br label %250

250:                                              ; preds = %250, %241
  %251 = phi i64 [ 0, %241 ], [ %253, %250 ]
  %252 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %242, i64 %251
  store <4 x float> %249, ptr %252, align 16, !tbaa !7
  %253 = add nuw i64 %251, 4
  %254 = icmp eq i64 %253, 256
  br i1 %254, label %255, label %250, !llvm.loop !35

255:                                              ; preds = %250
  %256 = icmp eq i64 %243, 256
  br i1 %256, label %3611, label %241

257:                                              ; preds = %228
  %258 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.10) #12
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %277

260:                                              ; preds = %260, %257
  %261 = phi i64 [ %263, %260 ], [ 0, %257 ]
  %262 = getelementptr inbounds float, ptr @global_data, i64 %261
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %262, align 16, !tbaa !7
  %263 = add nuw i64 %261, 4
  %264 = icmp eq i64 %263, 32000
  br i1 %264, label %265, label %260, !llvm.loop !36

265:                                              ; preds = %265, %260
  %266 = phi i64 [ %274, %265 ], [ 0, %260 ]
  %267 = phi <4 x i64> [ %275, %265 ], [ <i64 0, i64 1, i64 2, i64 3>, %260 ]
  %268 = add nuw nsw <4 x i64> %267, <i64 1, i64 1, i64 1, i64 1>
  %269 = mul nuw nsw <4 x i64> %268, %268
  %270 = trunc <4 x i64> %269 to <4 x i32>
  %271 = sitofp <4 x i32> %270 to <4 x float>
  %272 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %271
  %273 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %266
  store <4 x float> %272, ptr %273, align 16, !tbaa !7
  %274 = add nuw i64 %266, 4
  %275 = add <4 x i64> %267, <i64 4, i64 4, i64 4, i64 4>
  %276 = icmp eq i64 %274, 32000
  br i1 %276, label %3611, label %265, !llvm.loop !37

277:                                              ; preds = %257
  %278 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.11) #12
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %297

280:                                              ; preds = %280, %277
  %281 = phi i64 [ %283, %280 ], [ 0, %277 ]
  %282 = getelementptr inbounds float, ptr @global_data, i64 %281
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %282, align 16, !tbaa !7
  %283 = add nuw i64 %281, 4
  %284 = icmp eq i64 %283, 32000
  br i1 %284, label %285, label %280, !llvm.loop !38

285:                                              ; preds = %285, %280
  %286 = phi i64 [ %294, %285 ], [ 0, %280 ]
  %287 = phi <4 x i64> [ %295, %285 ], [ <i64 0, i64 1, i64 2, i64 3>, %280 ]
  %288 = add nuw nsw <4 x i64> %287, <i64 1, i64 1, i64 1, i64 1>
  %289 = mul nuw nsw <4 x i64> %288, %288
  %290 = trunc <4 x i64> %289 to <4 x i32>
  %291 = sitofp <4 x i32> %290 to <4 x float>
  %292 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %291
  %293 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %286
  store <4 x float> %292, ptr %293, align 16, !tbaa !7
  %294 = add nuw i64 %286, 4
  %295 = add <4 x i64> %287, <i64 4, i64 4, i64 4, i64 4>
  %296 = icmp eq i64 %294, 32000
  br i1 %296, label %3611, label %285, !llvm.loop !39

297:                                              ; preds = %277
  %298 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.12) #12
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %333

300:                                              ; preds = %297
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %301

301:                                              ; preds = %301, %300
  %302 = phi i64 [ 0, %300 ], [ %304, %301 ]
  %303 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %302
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %303, align 16, !tbaa !7
  %304 = add nuw i64 %302, 4
  %305 = icmp eq i64 %304, 32000
  br i1 %305, label %306, label %301, !llvm.loop !40

306:                                              ; preds = %306, %301
  %307 = phi i64 [ %309, %306 ], [ 0, %301 ]
  %308 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %307
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %308, align 16, !tbaa !7
  %309 = add nuw i64 %307, 4
  %310 = icmp eq i64 %309, 32000
  br i1 %310, label %311, label %306, !llvm.loop !41

311:                                              ; preds = %311, %306
  %312 = phi i64 [ %319, %311 ], [ 0, %306 ]
  %313 = phi <4 x i64> [ %320, %311 ], [ <i64 0, i64 1, i64 2, i64 3>, %306 ]
  %314 = trunc <4 x i64> %313 to <4 x i32>
  %315 = add <4 x i32> %314, <i32 1, i32 1, i32 1, i32 1>
  %316 = sitofp <4 x i32> %315 to <4 x float>
  %317 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %316
  %318 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %312
  store <4 x float> %317, ptr %318, align 16, !tbaa !7
  %319 = add nuw i64 %312, 4
  %320 = add <4 x i64> %313, <i64 4, i64 4, i64 4, i64 4>
  %321 = icmp eq i64 %319, 32000
  br i1 %321, label %322, label %311, !llvm.loop !42

322:                                              ; preds = %322, %311
  %323 = phi i64 [ %330, %322 ], [ 0, %311 ]
  %324 = phi <4 x i64> [ %331, %322 ], [ <i64 0, i64 1, i64 2, i64 3>, %311 ]
  %325 = trunc <4 x i64> %324 to <4 x i32>
  %326 = add <4 x i32> %325, <i32 1, i32 1, i32 1, i32 1>
  %327 = sitofp <4 x i32> %326 to <4 x float>
  %328 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %327
  %329 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %323
  store <4 x float> %328, ptr %329, align 16, !tbaa !7
  %330 = add nuw i64 %323, 4
  %331 = add <4 x i64> %324, <i64 4, i64 4, i64 4, i64 4>
  %332 = icmp eq i64 %330, 32000
  br i1 %332, label %3611, label %322, !llvm.loop !43

333:                                              ; preds = %297
  %334 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.13) #12
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %369

336:                                              ; preds = %333
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %337

337:                                              ; preds = %337, %336
  %338 = phi i64 [ 0, %336 ], [ %340, %337 ]
  %339 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %338
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %339, align 16, !tbaa !7
  %340 = add nuw i64 %338, 4
  %341 = icmp eq i64 %340, 32000
  br i1 %341, label %342, label %337, !llvm.loop !44

342:                                              ; preds = %342, %337
  %343 = phi i64 [ %345, %342 ], [ 0, %337 ]
  %344 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %343
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %344, align 16, !tbaa !7
  %345 = add nuw i64 %343, 4
  %346 = icmp eq i64 %345, 32000
  br i1 %346, label %347, label %342, !llvm.loop !45

347:                                              ; preds = %347, %342
  %348 = phi i64 [ %355, %347 ], [ 0, %342 ]
  %349 = phi <4 x i64> [ %356, %347 ], [ <i64 0, i64 1, i64 2, i64 3>, %342 ]
  %350 = trunc <4 x i64> %349 to <4 x i32>
  %351 = add <4 x i32> %350, <i32 1, i32 1, i32 1, i32 1>
  %352 = sitofp <4 x i32> %351 to <4 x float>
  %353 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %352
  %354 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %348
  store <4 x float> %353, ptr %354, align 16, !tbaa !7
  %355 = add nuw i64 %348, 4
  %356 = add <4 x i64> %349, <i64 4, i64 4, i64 4, i64 4>
  %357 = icmp eq i64 %355, 32000
  br i1 %357, label %358, label %347, !llvm.loop !46

358:                                              ; preds = %358, %347
  %359 = phi i64 [ %366, %358 ], [ 0, %347 ]
  %360 = phi <4 x i64> [ %367, %358 ], [ <i64 0, i64 1, i64 2, i64 3>, %347 ]
  %361 = trunc <4 x i64> %360 to <4 x i32>
  %362 = add <4 x i32> %361, <i32 1, i32 1, i32 1, i32 1>
  %363 = sitofp <4 x i32> %362 to <4 x float>
  %364 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %363
  %365 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %359
  store <4 x float> %364, ptr %365, align 16, !tbaa !7
  %366 = add nuw i64 %359, 4
  %367 = add <4 x i64> %360, <i64 4, i64 4, i64 4, i64 4>
  %368 = icmp eq i64 %366, 32000
  br i1 %368, label %3611, label %358, !llvm.loop !47

369:                                              ; preds = %333
  %370 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.14) #12
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %403

372:                                              ; preds = %369
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @array, i8 0, i64 128000, i1 false), !tbaa !7
  br label %373

373:                                              ; preds = %380, %372
  %374 = phi i64 [ %381, %380 ], [ 0, %372 ]
  br label %375

375:                                              ; preds = %375, %373
  %376 = phi i64 [ 0, %373 ], [ %378, %375 ]
  %377 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %374, i64 %376
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %377, align 16, !tbaa !7
  %378 = add nuw i64 %376, 4
  %379 = icmp eq i64 %378, 256
  br i1 %379, label %380, label %375, !llvm.loop !48

380:                                              ; preds = %375
  %381 = add nuw nsw i64 %374, 1
  %382 = icmp eq i64 %381, 256
  br i1 %382, label %383, label %373

383:                                              ; preds = %390, %380
  %384 = phi i64 [ %391, %390 ], [ 0, %380 ]
  br label %385

385:                                              ; preds = %385, %383
  %386 = phi i64 [ 0, %383 ], [ %388, %385 ]
  %387 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %384, i64 %386
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, ptr %387, align 16, !tbaa !7
  %388 = add nuw i64 %386, 4
  %389 = icmp eq i64 %388, 256
  br i1 %389, label %390, label %385, !llvm.loop !49

390:                                              ; preds = %385
  %391 = add nuw nsw i64 %384, 1
  %392 = icmp eq i64 %391, 256
  br i1 %392, label %393, label %383

393:                                              ; preds = %400, %390
  %394 = phi i64 [ %401, %400 ], [ 0, %390 ]
  br label %395

395:                                              ; preds = %395, %393
  %396 = phi i64 [ 0, %393 ], [ %398, %395 ]
  %397 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %394, i64 %396
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, ptr %397, align 16, !tbaa !7
  %398 = add nuw i64 %396, 4
  %399 = icmp eq i64 %398, 256
  br i1 %399, label %400, label %395, !llvm.loop !50

400:                                              ; preds = %395
  %401 = add nuw nsw i64 %394, 1
  %402 = icmp eq i64 %401, 256
  br i1 %402, label %3611, label %393

403:                                              ; preds = %369
  %404 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.15) #12
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %442

406:                                              ; preds = %413, %403
  %407 = phi i64 [ %414, %413 ], [ 0, %403 ]
  br label %408

408:                                              ; preds = %408, %406
  %409 = phi i64 [ 0, %406 ], [ %411, %408 ]
  %410 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %407, i64 %409
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %410, align 16, !tbaa !7
  %411 = add nuw i64 %409, 4
  %412 = icmp eq i64 %411, 256
  br i1 %412, label %413, label %408, !llvm.loop !51

413:                                              ; preds = %408
  %414 = add nuw nsw i64 %407, 1
  %415 = icmp eq i64 %414, 256
  br i1 %415, label %416, label %406

416:                                              ; preds = %416, %413
  %417 = phi i64 [ %424, %416 ], [ 0, %413 ]
  %418 = phi <4 x i64> [ %425, %416 ], [ <i64 0, i64 1, i64 2, i64 3>, %413 ]
  %419 = trunc <4 x i64> %418 to <4 x i32>
  %420 = add <4 x i32> %419, <i32 1, i32 1, i32 1, i32 1>
  %421 = sitofp <4 x i32> %420 to <4 x float>
  %422 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %421
  %423 = getelementptr inbounds float, ptr @array, i64 %417
  store <4 x float> %422, ptr %423, align 16, !tbaa !7
  %424 = add nuw i64 %417, 4
  %425 = add <4 x i64> %418, <i64 4, i64 4, i64 4, i64 4>
  %426 = icmp eq i64 %424, 32000
  br i1 %426, label %427, label %416, !llvm.loop !52

427:                                              ; preds = %440, %416
  %428 = phi i64 [ %429, %440 ], [ 0, %416 ]
  %429 = add nuw nsw i64 %428, 1
  %430 = trunc i64 %429 to i32
  %431 = sitofp i32 %430 to float
  %432 = fdiv float 1.000000e+00, %431
  %433 = insertelement <4 x float> poison, float %432, i64 0
  %434 = shufflevector <4 x float> %433, <4 x float> poison, <4 x i32> zeroinitializer
  br label %435

435:                                              ; preds = %435, %427
  %436 = phi i64 [ 0, %427 ], [ %438, %435 ]
  %437 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %428, i64 %436
  store <4 x float> %434, ptr %437, align 16, !tbaa !7
  %438 = add nuw i64 %436, 4
  %439 = icmp eq i64 %438, 256
  br i1 %439, label %440, label %435, !llvm.loop !53

440:                                              ; preds = %435
  %441 = icmp eq i64 %429, 256
  br i1 %441, label %3611, label %427

442:                                              ; preds = %403
  %443 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.16) #12
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %484

445:                                              ; preds = %442
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %446

446:                                              ; preds = %446, %445
  %447 = phi i64 [ 0, %445 ], [ %449, %446 ]
  %448 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %447
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %448, align 16, !tbaa !7
  %449 = add nuw i64 %447, 4
  %450 = icmp eq i64 %449, 32000
  br i1 %450, label %451, label %446, !llvm.loop !54

451:                                              ; preds = %451, %446
  %452 = phi i64 [ %459, %451 ], [ 0, %446 ]
  %453 = phi <4 x i64> [ %460, %451 ], [ <i64 0, i64 1, i64 2, i64 3>, %446 ]
  %454 = trunc <4 x i64> %453 to <4 x i32>
  %455 = add <4 x i32> %454, <i32 1, i32 1, i32 1, i32 1>
  %456 = sitofp <4 x i32> %455 to <4 x float>
  %457 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %456
  %458 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %452
  store <4 x float> %457, ptr %458, align 16, !tbaa !7
  %459 = add nuw i64 %452, 4
  %460 = add <4 x i64> %453, <i64 4, i64 4, i64 4, i64 4>
  %461 = icmp eq i64 %459, 32000
  br i1 %461, label %462, label %451, !llvm.loop !55

462:                                              ; preds = %462, %451
  %463 = phi i64 [ %470, %462 ], [ 0, %451 ]
  %464 = phi <4 x i64> [ %471, %462 ], [ <i64 0, i64 1, i64 2, i64 3>, %451 ]
  %465 = trunc <4 x i64> %464 to <4 x i32>
  %466 = add <4 x i32> %465, <i32 1, i32 1, i32 1, i32 1>
  %467 = sitofp <4 x i32> %466 to <4 x float>
  %468 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %467
  %469 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %463
  store <4 x float> %468, ptr %469, align 16, !tbaa !7
  %470 = add nuw i64 %463, 4
  %471 = add <4 x i64> %464, <i64 4, i64 4, i64 4, i64 4>
  %472 = icmp eq i64 %470, 32000
  br i1 %472, label %473, label %462, !llvm.loop !56

473:                                              ; preds = %473, %462
  %474 = phi i64 [ %481, %473 ], [ 0, %462 ]
  %475 = phi <4 x i64> [ %482, %473 ], [ <i64 0, i64 1, i64 2, i64 3>, %462 ]
  %476 = trunc <4 x i64> %475 to <4 x i32>
  %477 = add <4 x i32> %476, <i32 1, i32 1, i32 1, i32 1>
  %478 = sitofp <4 x i32> %477 to <4 x float>
  %479 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %478
  %480 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %474
  store <4 x float> %479, ptr %480, align 16, !tbaa !7
  %481 = add nuw i64 %474, 4
  %482 = add <4 x i64> %475, <i64 4, i64 4, i64 4, i64 4>
  %483 = icmp eq i64 %481, 32000
  br i1 %483, label %3611, label %473, !llvm.loop !57

484:                                              ; preds = %442
  %485 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.17) #12
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %503

487:                                              ; preds = %484
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %488

488:                                              ; preds = %488, %487
  %489 = phi i64 [ 0, %487 ], [ %491, %488 ]
  %490 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %489
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, ptr %490, align 16, !tbaa !7
  %491 = add nuw i64 %489, 4
  %492 = icmp eq i64 %491, 32000
  br i1 %492, label %493, label %488, !llvm.loop !58

493:                                              ; preds = %493, %488
  %494 = phi i64 [ %496, %493 ], [ 0, %488 ]
  %495 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %494
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %495, align 16, !tbaa !7
  %496 = add nuw i64 %494, 4
  %497 = icmp eq i64 %496, 32000
  br i1 %497, label %498, label %493, !llvm.loop !59

498:                                              ; preds = %498, %493
  %499 = phi i64 [ %501, %498 ], [ 0, %493 ]
  %500 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %499
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %500, align 16, !tbaa !7
  %501 = add nuw i64 %499, 4
  %502 = icmp eq i64 %501, 32000
  br i1 %502, label %3611, label %498, !llvm.loop !60

503:                                              ; preds = %484
  %504 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.18) #12
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %523

506:                                              ; preds = %506, %503
  %507 = phi i64 [ %509, %506 ], [ 0, %503 ]
  %508 = getelementptr inbounds float, ptr @global_data, i64 %507
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %508, align 16, !tbaa !7
  %509 = add nuw i64 %507, 4
  %510 = icmp eq i64 %509, 32000
  br i1 %510, label %511, label %506, !llvm.loop !61

511:                                              ; preds = %511, %506
  %512 = phi i64 [ %520, %511 ], [ 0, %506 ]
  %513 = phi <4 x i64> [ %521, %511 ], [ <i64 0, i64 1, i64 2, i64 3>, %506 ]
  %514 = add nuw nsw <4 x i64> %513, <i64 1, i64 1, i64 1, i64 1>
  %515 = mul nuw nsw <4 x i64> %514, %514
  %516 = trunc <4 x i64> %515 to <4 x i32>
  %517 = sitofp <4 x i32> %516 to <4 x float>
  %518 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %517
  %519 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %512
  store <4 x float> %518, ptr %519, align 16, !tbaa !7
  %520 = add nuw i64 %512, 4
  %521 = add <4 x i64> %513, <i64 4, i64 4, i64 4, i64 4>
  %522 = icmp eq i64 %520, 32000
  br i1 %522, label %3611, label %511, !llvm.loop !62

523:                                              ; preds = %503
  %524 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.19) #12
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %558

526:                                              ; preds = %533, %523
  %527 = phi i64 [ %534, %533 ], [ 0, %523 ]
  br label %528

528:                                              ; preds = %528, %526
  %529 = phi i64 [ 0, %526 ], [ %531, %528 ]
  %530 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %527, i64 %529
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %530, align 16, !tbaa !7
  %531 = add nuw i64 %529, 4
  %532 = icmp eq i64 %531, 256
  br i1 %532, label %533, label %528, !llvm.loop !63

533:                                              ; preds = %528
  %534 = add nuw nsw i64 %527, 1
  %535 = icmp eq i64 %534, 256
  br i1 %535, label %536, label %526

536:                                              ; preds = %536, %533
  %537 = phi i64 [ %544, %536 ], [ 0, %533 ]
  %538 = phi <4 x i64> [ %545, %536 ], [ <i64 0, i64 1, i64 2, i64 3>, %533 ]
  %539 = trunc <4 x i64> %538 to <4 x i32>
  %540 = add <4 x i32> %539, <i32 1, i32 1, i32 1, i32 1>
  %541 = sitofp <4 x i32> %540 to <4 x float>
  %542 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %541
  %543 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %537
  store <4 x float> %542, ptr %543, align 16, !tbaa !7
  %544 = add nuw i64 %537, 4
  %545 = add <4 x i64> %538, <i64 4, i64 4, i64 4, i64 4>
  %546 = icmp eq i64 %544, 32000
  br i1 %546, label %547, label %536, !llvm.loop !64

547:                                              ; preds = %547, %536
  %548 = phi i64 [ %555, %547 ], [ 0, %536 ]
  %549 = phi <4 x i64> [ %556, %547 ], [ <i64 0, i64 1, i64 2, i64 3>, %536 ]
  %550 = trunc <4 x i64> %549 to <4 x i32>
  %551 = add <4 x i32> %550, <i32 1, i32 1, i32 1, i32 1>
  %552 = sitofp <4 x i32> %551 to <4 x float>
  %553 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %552
  %554 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %548
  store <4 x float> %553, ptr %554, align 16, !tbaa !7
  %555 = add nuw i64 %548, 4
  %556 = add <4 x i64> %549, <i64 4, i64 4, i64 4, i64 4>
  %557 = icmp eq i64 %555, 32000
  br i1 %557, label %3611, label %547, !llvm.loop !65

558:                                              ; preds = %523
  %559 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.20) #12
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %582

561:                                              ; preds = %561, %558
  %562 = phi i64 [ %564, %561 ], [ 0, %558 ]
  %563 = getelementptr inbounds float, ptr @array, i64 %562
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %563, align 16, !tbaa !7
  %564 = add nuw i64 %562, 4
  %565 = icmp eq i64 %564, 32000
  br i1 %565, label %566, label %561, !llvm.loop !66

566:                                              ; preds = %580, %561
  %567 = phi i64 [ %568, %580 ], [ 0, %561 ]
  %568 = add nuw nsw i64 %567, 1
  %569 = trunc i64 %568 to i32
  %570 = mul nsw i32 %569, %569
  %571 = sitofp i32 %570 to float
  %572 = fdiv float 1.000000e+00, %571
  %573 = insertelement <4 x float> poison, float %572, i64 0
  %574 = shufflevector <4 x float> %573, <4 x float> poison, <4 x i32> zeroinitializer
  br label %575

575:                                              ; preds = %575, %566
  %576 = phi i64 [ 0, %566 ], [ %578, %575 ]
  %577 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %567, i64 %576
  store <4 x float> %574, ptr %577, align 16, !tbaa !7
  %578 = add nuw i64 %576, 4
  %579 = icmp eq i64 %578, 256
  br i1 %579, label %580, label %575, !llvm.loop !67

580:                                              ; preds = %575
  %581 = icmp eq i64 %568, 256
  br i1 %581, label %3611, label %566

582:                                              ; preds = %558
  %583 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.21) #12
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %585, label %602

585:                                              ; preds = %585, %582
  %586 = phi i64 [ %588, %585 ], [ 0, %582 ]
  %587 = getelementptr inbounds float, ptr @global_data, i64 %586
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %587, align 16, !tbaa !7
  %588 = add nuw i64 %586, 4
  %589 = icmp eq i64 %588, 32000
  br i1 %589, label %590, label %585, !llvm.loop !68

590:                                              ; preds = %590, %585
  %591 = phi i64 [ %599, %590 ], [ 0, %585 ]
  %592 = phi <4 x i64> [ %600, %590 ], [ <i64 0, i64 1, i64 2, i64 3>, %585 ]
  %593 = add nuw nsw <4 x i64> %592, <i64 1, i64 1, i64 1, i64 1>
  %594 = mul nuw nsw <4 x i64> %593, %593
  %595 = trunc <4 x i64> %594 to <4 x i32>
  %596 = sitofp <4 x i32> %595 to <4 x float>
  %597 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %596
  %598 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %591
  store <4 x float> %597, ptr %598, align 16, !tbaa !7
  %599 = add nuw i64 %591, 4
  %600 = add <4 x i64> %592, <i64 4, i64 4, i64 4, i64 4>
  %601 = icmp eq i64 %599, 32000
  br i1 %601, label %3611, label %590, !llvm.loop !69

602:                                              ; preds = %582
  %603 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.22) #12
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %644

605:                                              ; preds = %605, %602
  %606 = phi i64 [ %608, %605 ], [ 0, %602 ]
  %607 = getelementptr inbounds float, ptr @global_data, i64 %606
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %607, align 16, !tbaa !7
  %608 = add nuw i64 %606, 4
  %609 = icmp eq i64 %608, 32000
  br i1 %609, label %610, label %605, !llvm.loop !70

610:                                              ; preds = %605
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), i8 0, i64 128000, i1 false), !tbaa !7
  br label %611

611:                                              ; preds = %611, %610
  %612 = phi i64 [ 0, %610 ], [ %619, %611 ]
  %613 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %610 ], [ %620, %611 ]
  %614 = trunc <4 x i64> %613 to <4 x i32>
  %615 = add <4 x i32> %614, <i32 1, i32 1, i32 1, i32 1>
  %616 = sitofp <4 x i32> %615 to <4 x float>
  %617 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %616
  %618 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %612
  store <4 x float> %617, ptr %618, align 16, !tbaa !7
  %619 = add nuw i64 %612, 4
  %620 = add <4 x i64> %613, <i64 4, i64 4, i64 4, i64 4>
  %621 = icmp eq i64 %619, 32000
  br i1 %621, label %622, label %611, !llvm.loop !71

622:                                              ; preds = %622, %611
  %623 = phi i64 [ %630, %622 ], [ 0, %611 ]
  %624 = phi <4 x i64> [ %631, %622 ], [ <i64 0, i64 1, i64 2, i64 3>, %611 ]
  %625 = trunc <4 x i64> %624 to <4 x i32>
  %626 = add <4 x i32> %625, <i32 1, i32 1, i32 1, i32 1>
  %627 = sitofp <4 x i32> %626 to <4 x float>
  %628 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %627
  %629 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %623
  store <4 x float> %628, ptr %629, align 16, !tbaa !7
  %630 = add nuw i64 %623, 4
  %631 = add <4 x i64> %624, <i64 4, i64 4, i64 4, i64 4>
  %632 = icmp eq i64 %630, 32000
  br i1 %632, label %633, label %622, !llvm.loop !72

633:                                              ; preds = %633, %622
  %634 = phi i64 [ %641, %633 ], [ 0, %622 ]
  %635 = phi <4 x i64> [ %642, %633 ], [ <i64 0, i64 1, i64 2, i64 3>, %622 ]
  %636 = trunc <4 x i64> %635 to <4 x i32>
  %637 = add <4 x i32> %636, <i32 1, i32 1, i32 1, i32 1>
  %638 = sitofp <4 x i32> %637 to <4 x float>
  %639 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %638
  %640 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %634
  store <4 x float> %639, ptr %640, align 16, !tbaa !7
  %641 = add nuw i64 %634, 4
  %642 = add <4 x i64> %635, <i64 4, i64 4, i64 4, i64 4>
  %643 = icmp eq i64 %641, 32000
  br i1 %643, label %3611, label %633, !llvm.loop !73

644:                                              ; preds = %602
  %645 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.23) #12
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %647, label %689

647:                                              ; preds = %647, %644
  %648 = phi i64 [ %650, %647 ], [ 0, %644 ]
  %649 = getelementptr inbounds float, ptr @global_data, i64 %648
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %649, align 16, !tbaa !7
  %650 = add nuw i64 %648, 4
  %651 = icmp eq i64 %650, 32000
  br i1 %651, label %652, label %647, !llvm.loop !74

652:                                              ; preds = %652, %647
  %653 = phi i64 [ %655, %652 ], [ 0, %647 ]
  %654 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %653
  store float 1.000000e+00, ptr %654, align 8, !tbaa !7
  %655 = add nuw nsw i64 %653, 2
  %656 = icmp ult i64 %653, 31998
  br i1 %656, label %652, label %657

657:                                              ; preds = %657, %652
  %658 = phi i64 [ %660, %657 ], [ 0, %652 ]
  %659 = getelementptr inbounds float, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 1), i64 %658
  store float -1.000000e+00, ptr %659, align 4, !tbaa !7
  %660 = add nuw nsw i64 %658, 2
  %661 = icmp ult i64 %658, 31998
  br i1 %661, label %657, label %662

662:                                              ; preds = %662, %657
  %663 = phi i64 [ %665, %662 ], [ 0, %657 ]
  %664 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %663
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %664, align 16, !tbaa !7
  %665 = add nuw i64 %663, 4
  %666 = icmp eq i64 %665, 32000
  br i1 %666, label %667, label %662, !llvm.loop !75

667:                                              ; preds = %667, %662
  %668 = phi i64 [ %675, %667 ], [ 0, %662 ]
  %669 = phi <4 x i64> [ %676, %667 ], [ <i64 0, i64 1, i64 2, i64 3>, %662 ]
  %670 = trunc <4 x i64> %669 to <4 x i32>
  %671 = add <4 x i32> %670, <i32 1, i32 1, i32 1, i32 1>
  %672 = sitofp <4 x i32> %671 to <4 x float>
  %673 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %672
  %674 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %668
  store <4 x float> %673, ptr %674, align 16, !tbaa !7
  %675 = add nuw i64 %668, 4
  %676 = add <4 x i64> %669, <i64 4, i64 4, i64 4, i64 4>
  %677 = icmp eq i64 %675, 32000
  br i1 %677, label %678, label %667, !llvm.loop !76

678:                                              ; preds = %678, %667
  %679 = phi i64 [ %686, %678 ], [ 0, %667 ]
  %680 = phi <4 x i64> [ %687, %678 ], [ <i64 0, i64 1, i64 2, i64 3>, %667 ]
  %681 = trunc <4 x i64> %680 to <4 x i32>
  %682 = add <4 x i32> %681, <i32 1, i32 1, i32 1, i32 1>
  %683 = sitofp <4 x i32> %682 to <4 x float>
  %684 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %683
  %685 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %679
  store <4 x float> %684, ptr %685, align 16, !tbaa !7
  %686 = add nuw i64 %679, 4
  %687 = add <4 x i64> %680, <i64 4, i64 4, i64 4, i64 4>
  %688 = icmp eq i64 %686, 32000
  br i1 %688, label %3611, label %678, !llvm.loop !77

689:                                              ; preds = %644
  %690 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.24) #12
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %692, label %719

692:                                              ; preds = %692, %689
  %693 = phi i64 [ %695, %692 ], [ 0, %689 ]
  %694 = getelementptr inbounds float, ptr @global_data, i64 %693
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %694, align 16, !tbaa !7
  %695 = add nuw i64 %693, 4
  %696 = icmp eq i64 %695, 32000
  br i1 %696, label %697, label %692, !llvm.loop !78

697:                                              ; preds = %697, %692
  %698 = phi i64 [ %705, %697 ], [ 0, %692 ]
  %699 = phi <4 x i64> [ %706, %697 ], [ <i64 0, i64 1, i64 2, i64 3>, %692 ]
  %700 = trunc <4 x i64> %699 to <4 x i32>
  %701 = add <4 x i32> %700, <i32 1, i32 1, i32 1, i32 1>
  %702 = sitofp <4 x i32> %701 to <4 x float>
  %703 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %702
  %704 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %698
  store <4 x float> %703, ptr %704, align 16, !tbaa !7
  %705 = add nuw i64 %698, 4
  %706 = add <4 x i64> %699, <i64 4, i64 4, i64 4, i64 4>
  %707 = icmp eq i64 %705, 32000
  br i1 %707, label %708, label %697, !llvm.loop !79

708:                                              ; preds = %708, %697
  %709 = phi i64 [ %716, %708 ], [ 0, %697 ]
  %710 = phi <4 x i64> [ %717, %708 ], [ <i64 0, i64 1, i64 2, i64 3>, %697 ]
  %711 = trunc <4 x i64> %710 to <4 x i32>
  %712 = add <4 x i32> %711, <i32 1, i32 1, i32 1, i32 1>
  %713 = sitofp <4 x i32> %712 to <4 x float>
  %714 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %713
  %715 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %709
  store <4 x float> %714, ptr %715, align 16, !tbaa !7
  %716 = add nuw i64 %709, 4
  %717 = add <4 x i64> %710, <i64 4, i64 4, i64 4, i64 4>
  %718 = icmp eq i64 %716, 32000
  br i1 %718, label %3611, label %708, !llvm.loop !80

719:                                              ; preds = %689
  %720 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.25) #12
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %722, label %739

722:                                              ; preds = %722, %719
  %723 = phi i64 [ %725, %722 ], [ 0, %719 ]
  %724 = getelementptr inbounds float, ptr @global_data, i64 %723
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %724, align 16, !tbaa !7
  %725 = add nuw i64 %723, 4
  %726 = icmp eq i64 %725, 32000
  br i1 %726, label %727, label %722, !llvm.loop !81

727:                                              ; preds = %727, %722
  %728 = phi i64 [ %736, %727 ], [ 0, %722 ]
  %729 = phi <4 x i64> [ %737, %727 ], [ <i64 0, i64 1, i64 2, i64 3>, %722 ]
  %730 = add nuw nsw <4 x i64> %729, <i64 1, i64 1, i64 1, i64 1>
  %731 = mul nuw nsw <4 x i64> %730, %730
  %732 = trunc <4 x i64> %731 to <4 x i32>
  %733 = sitofp <4 x i32> %732 to <4 x float>
  %734 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %733
  %735 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %728
  store <4 x float> %734, ptr %735, align 16, !tbaa !7
  %736 = add nuw i64 %728, 4
  %737 = add <4 x i64> %729, <i64 4, i64 4, i64 4, i64 4>
  %738 = icmp eq i64 %736, 32000
  br i1 %738, label %3611, label %727, !llvm.loop !82

739:                                              ; preds = %719
  %740 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.26) #12
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %742, label %759

742:                                              ; preds = %742, %739
  %743 = phi i64 [ %745, %742 ], [ 0, %739 ]
  %744 = getelementptr inbounds float, ptr @global_data, i64 %743
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %744, align 16, !tbaa !7
  %745 = add nuw i64 %743, 4
  %746 = icmp eq i64 %745, 32000
  br i1 %746, label %747, label %742, !llvm.loop !83

747:                                              ; preds = %747, %742
  %748 = phi i64 [ %756, %747 ], [ 0, %742 ]
  %749 = phi <4 x i64> [ %757, %747 ], [ <i64 0, i64 1, i64 2, i64 3>, %742 ]
  %750 = add nuw nsw <4 x i64> %749, <i64 1, i64 1, i64 1, i64 1>
  %751 = mul nuw nsw <4 x i64> %750, %750
  %752 = trunc <4 x i64> %751 to <4 x i32>
  %753 = sitofp <4 x i32> %752 to <4 x float>
  %754 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %753
  %755 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %748
  store <4 x float> %754, ptr %755, align 16, !tbaa !7
  %756 = add nuw i64 %748, 4
  %757 = add <4 x i64> %749, <i64 4, i64 4, i64 4, i64 4>
  %758 = icmp eq i64 %756, 32000
  br i1 %758, label %3611, label %747, !llvm.loop !84

759:                                              ; preds = %739
  %760 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.27) #12
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %762, label %779

762:                                              ; preds = %762, %759
  %763 = phi i64 [ %765, %762 ], [ 0, %759 ]
  %764 = getelementptr inbounds float, ptr @global_data, i64 %763
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %764, align 16, !tbaa !7
  %765 = add nuw i64 %763, 4
  %766 = icmp eq i64 %765, 32000
  br i1 %766, label %767, label %762, !llvm.loop !85

767:                                              ; preds = %767, %762
  %768 = phi i64 [ %776, %767 ], [ 0, %762 ]
  %769 = phi <4 x i64> [ %777, %767 ], [ <i64 0, i64 1, i64 2, i64 3>, %762 ]
  %770 = add nuw nsw <4 x i64> %769, <i64 1, i64 1, i64 1, i64 1>
  %771 = mul nuw nsw <4 x i64> %770, %770
  %772 = trunc <4 x i64> %771 to <4 x i32>
  %773 = sitofp <4 x i32> %772 to <4 x float>
  %774 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %773
  %775 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %768
  store <4 x float> %774, ptr %775, align 16, !tbaa !7
  %776 = add nuw i64 %768, 4
  %777 = add <4 x i64> %769, <i64 4, i64 4, i64 4, i64 4>
  %778 = icmp eq i64 %776, 32000
  br i1 %778, label %3611, label %767, !llvm.loop !86

779:                                              ; preds = %759
  %780 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.28) #12
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %782, label %799

782:                                              ; preds = %782, %779
  %783 = phi i64 [ %785, %782 ], [ 0, %779 ]
  %784 = getelementptr inbounds float, ptr @global_data, i64 %783
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %784, align 16, !tbaa !7
  %785 = add nuw i64 %783, 4
  %786 = icmp eq i64 %785, 32000
  br i1 %786, label %787, label %782, !llvm.loop !87

787:                                              ; preds = %787, %782
  %788 = phi i64 [ %796, %787 ], [ 0, %782 ]
  %789 = phi <4 x i64> [ %797, %787 ], [ <i64 0, i64 1, i64 2, i64 3>, %782 ]
  %790 = add nuw nsw <4 x i64> %789, <i64 1, i64 1, i64 1, i64 1>
  %791 = mul nuw nsw <4 x i64> %790, %790
  %792 = trunc <4 x i64> %791 to <4 x i32>
  %793 = sitofp <4 x i32> %792 to <4 x float>
  %794 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %793
  %795 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %788
  store <4 x float> %794, ptr %795, align 16, !tbaa !7
  %796 = add nuw i64 %788, 4
  %797 = add <4 x i64> %789, <i64 4, i64 4, i64 4, i64 4>
  %798 = icmp eq i64 %796, 32000
  br i1 %798, label %3611, label %787, !llvm.loop !88

799:                                              ; preds = %779
  %800 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.29) #12
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %802, label %819

802:                                              ; preds = %802, %799
  %803 = phi i64 [ %805, %802 ], [ 0, %799 ]
  %804 = getelementptr inbounds float, ptr @global_data, i64 %803
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %804, align 16, !tbaa !7
  %805 = add nuw i64 %803, 4
  %806 = icmp eq i64 %805, 32000
  br i1 %806, label %807, label %802, !llvm.loop !89

807:                                              ; preds = %807, %802
  %808 = phi i64 [ %816, %807 ], [ 0, %802 ]
  %809 = phi <4 x i64> [ %817, %807 ], [ <i64 0, i64 1, i64 2, i64 3>, %802 ]
  %810 = add nuw nsw <4 x i64> %809, <i64 1, i64 1, i64 1, i64 1>
  %811 = mul nuw nsw <4 x i64> %810, %810
  %812 = trunc <4 x i64> %811 to <4 x i32>
  %813 = sitofp <4 x i32> %812 to <4 x float>
  %814 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %813
  %815 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %808
  store <4 x float> %814, ptr %815, align 16, !tbaa !7
  %816 = add nuw i64 %808, 4
  %817 = add <4 x i64> %809, <i64 4, i64 4, i64 4, i64 4>
  %818 = icmp eq i64 %816, 32000
  br i1 %818, label %3611, label %807, !llvm.loop !90

819:                                              ; preds = %799
  %820 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.30) #12
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %822, label %849

822:                                              ; preds = %822, %819
  %823 = phi i64 [ %825, %822 ], [ 0, %819 ]
  %824 = getelementptr inbounds float, ptr @global_data, i64 %823
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %824, align 16, !tbaa !7
  %825 = add nuw i64 %823, 4
  %826 = icmp eq i64 %825, 32000
  br i1 %826, label %827, label %822, !llvm.loop !91

827:                                              ; preds = %827, %822
  %828 = phi i64 [ %835, %827 ], [ 0, %822 ]
  %829 = phi <4 x i64> [ %836, %827 ], [ <i64 0, i64 1, i64 2, i64 3>, %822 ]
  %830 = trunc <4 x i64> %829 to <4 x i32>
  %831 = add <4 x i32> %830, <i32 1, i32 1, i32 1, i32 1>
  %832 = sitofp <4 x i32> %831 to <4 x float>
  %833 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %832
  %834 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %828
  store <4 x float> %833, ptr %834, align 16, !tbaa !7
  %835 = add nuw i64 %828, 4
  %836 = add <4 x i64> %829, <i64 4, i64 4, i64 4, i64 4>
  %837 = icmp eq i64 %835, 32000
  br i1 %837, label %838, label %827, !llvm.loop !92

838:                                              ; preds = %838, %827
  %839 = phi i64 [ %846, %838 ], [ 0, %827 ]
  %840 = phi <4 x i64> [ %847, %838 ], [ <i64 0, i64 1, i64 2, i64 3>, %827 ]
  %841 = trunc <4 x i64> %840 to <4 x i32>
  %842 = add <4 x i32> %841, <i32 1, i32 1, i32 1, i32 1>
  %843 = sitofp <4 x i32> %842 to <4 x float>
  %844 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %843
  %845 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %839
  store <4 x float> %844, ptr %845, align 16, !tbaa !7
  %846 = add nuw i64 %839, 4
  %847 = add <4 x i64> %840, <i64 4, i64 4, i64 4, i64 4>
  %848 = icmp eq i64 %846, 32000
  br i1 %848, label %3611, label %838, !llvm.loop !93

849:                                              ; preds = %819
  %850 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.31) #12
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %852, label %891

852:                                              ; preds = %849
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %853

853:                                              ; preds = %853, %852
  %854 = phi i64 [ 0, %852 ], [ %856, %853 ]
  %855 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %854
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %855, align 16, !tbaa !7
  %856 = add nuw i64 %854, 4
  %857 = icmp eq i64 %856, 32000
  br i1 %857, label %858, label %853, !llvm.loop !94

858:                                              ; preds = %858, %853
  %859 = phi i64 [ %866, %858 ], [ 0, %853 ]
  %860 = phi <4 x i64> [ %867, %858 ], [ <i64 0, i64 1, i64 2, i64 3>, %853 ]
  %861 = trunc <4 x i64> %860 to <4 x i32>
  %862 = add <4 x i32> %861, <i32 1, i32 1, i32 1, i32 1>
  %863 = sitofp <4 x i32> %862 to <4 x float>
  %864 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %863
  %865 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %859
  store <4 x float> %864, ptr %865, align 16, !tbaa !7
  %866 = add nuw i64 %859, 4
  %867 = add <4 x i64> %860, <i64 4, i64 4, i64 4, i64 4>
  %868 = icmp eq i64 %866, 32000
  br i1 %868, label %869, label %858, !llvm.loop !95

869:                                              ; preds = %869, %858
  %870 = phi i64 [ %877, %869 ], [ 0, %858 ]
  %871 = phi <4 x i64> [ %878, %869 ], [ <i64 0, i64 1, i64 2, i64 3>, %858 ]
  %872 = trunc <4 x i64> %871 to <4 x i32>
  %873 = add <4 x i32> %872, <i32 1, i32 1, i32 1, i32 1>
  %874 = sitofp <4 x i32> %873 to <4 x float>
  %875 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %874
  %876 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %870
  store <4 x float> %875, ptr %876, align 16, !tbaa !7
  %877 = add nuw i64 %870, 4
  %878 = add <4 x i64> %871, <i64 4, i64 4, i64 4, i64 4>
  %879 = icmp eq i64 %877, 32000
  br i1 %879, label %880, label %869, !llvm.loop !96

880:                                              ; preds = %880, %869
  %881 = phi i64 [ %888, %880 ], [ 0, %869 ]
  %882 = phi <4 x i64> [ %889, %880 ], [ <i64 0, i64 1, i64 2, i64 3>, %869 ]
  %883 = trunc <4 x i64> %882 to <4 x i32>
  %884 = add <4 x i32> %883, <i32 1, i32 1, i32 1, i32 1>
  %885 = sitofp <4 x i32> %884 to <4 x float>
  %886 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %885
  %887 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %881
  store <4 x float> %886, ptr %887, align 16, !tbaa !7
  %888 = add nuw i64 %881, 4
  %889 = add <4 x i64> %882, <i64 4, i64 4, i64 4, i64 4>
  %890 = icmp eq i64 %888, 32000
  br i1 %890, label %3611, label %880, !llvm.loop !97

891:                                              ; preds = %849
  %892 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.32) #12
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %894, label %926

894:                                              ; preds = %894, %891
  %895 = phi i64 [ %902, %894 ], [ 0, %891 ]
  %896 = phi <4 x i64> [ %903, %894 ], [ <i64 0, i64 1, i64 2, i64 3>, %891 ]
  %897 = trunc <4 x i64> %896 to <4 x i32>
  %898 = add <4 x i32> %897, <i32 1, i32 1, i32 1, i32 1>
  %899 = sitofp <4 x i32> %898 to <4 x float>
  %900 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %899
  %901 = getelementptr inbounds float, ptr @global_data, i64 %895
  store <4 x float> %900, ptr %901, align 16, !tbaa !7
  %902 = add nuw i64 %895, 4
  %903 = add <4 x i64> %896, <i64 4, i64 4, i64 4, i64 4>
  %904 = icmp eq i64 %902, 32000
  br i1 %904, label %905, label %894, !llvm.loop !98

905:                                              ; preds = %905, %894
  %906 = phi i64 [ %908, %905 ], [ 0, %894 ]
  %907 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %906
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %907, align 16, !tbaa !7
  %908 = add nuw i64 %906, 4
  %909 = icmp eq i64 %908, 32000
  br i1 %909, label %910, label %905, !llvm.loop !99

910:                                              ; preds = %910, %905
  %911 = phi i64 [ %913, %910 ], [ 0, %905 ]
  %912 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %911
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %912, align 16, !tbaa !7
  %913 = add nuw i64 %911, 4
  %914 = icmp eq i64 %913, 32000
  br i1 %914, label %915, label %910, !llvm.loop !100

915:                                              ; preds = %915, %910
  %916 = phi i64 [ %923, %915 ], [ 0, %910 ]
  %917 = phi <4 x i64> [ %924, %915 ], [ <i64 0, i64 1, i64 2, i64 3>, %910 ]
  %918 = trunc <4 x i64> %917 to <4 x i32>
  %919 = add <4 x i32> %918, <i32 1, i32 1, i32 1, i32 1>
  %920 = sitofp <4 x i32> %919 to <4 x float>
  %921 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %920
  %922 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %916
  store <4 x float> %921, ptr %922, align 16, !tbaa !7
  %923 = add nuw i64 %916, 4
  %924 = add <4 x i64> %917, <i64 4, i64 4, i64 4, i64 4>
  %925 = icmp eq i64 %923, 32000
  br i1 %925, label %3611, label %915, !llvm.loop !101

926:                                              ; preds = %891
  %927 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.33) #12
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %929, label %967

929:                                              ; preds = %929, %926
  %930 = phi i64 [ %932, %929 ], [ 0, %926 ]
  %931 = getelementptr inbounds float, ptr @global_data, i64 %930
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %931, align 16, !tbaa !7
  %932 = add nuw i64 %930, 4
  %933 = icmp eq i64 %932, 32000
  br i1 %933, label %934, label %929, !llvm.loop !102

934:                                              ; preds = %934, %929
  %935 = phi i64 [ %942, %934 ], [ 0, %929 ]
  %936 = phi <4 x i64> [ %943, %934 ], [ <i64 0, i64 1, i64 2, i64 3>, %929 ]
  %937 = trunc <4 x i64> %936 to <4 x i32>
  %938 = add <4 x i32> %937, <i32 1, i32 1, i32 1, i32 1>
  %939 = sitofp <4 x i32> %938 to <4 x float>
  %940 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %939
  %941 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %935
  store <4 x float> %940, ptr %941, align 16, !tbaa !7
  %942 = add nuw i64 %935, 4
  %943 = add <4 x i64> %936, <i64 4, i64 4, i64 4, i64 4>
  %944 = icmp eq i64 %942, 32000
  br i1 %944, label %945, label %934, !llvm.loop !103

945:                                              ; preds = %945, %934
  %946 = phi i64 [ %953, %945 ], [ 0, %934 ]
  %947 = phi <4 x i64> [ %954, %945 ], [ <i64 0, i64 1, i64 2, i64 3>, %934 ]
  %948 = trunc <4 x i64> %947 to <4 x i32>
  %949 = add <4 x i32> %948, <i32 1, i32 1, i32 1, i32 1>
  %950 = sitofp <4 x i32> %949 to <4 x float>
  %951 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %950
  %952 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %946
  store <4 x float> %951, ptr %952, align 16, !tbaa !7
  %953 = add nuw i64 %946, 4
  %954 = add <4 x i64> %947, <i64 4, i64 4, i64 4, i64 4>
  %955 = icmp eq i64 %953, 32000
  br i1 %955, label %956, label %945, !llvm.loop !104

956:                                              ; preds = %956, %945
  %957 = phi i64 [ %964, %956 ], [ 0, %945 ]
  %958 = phi <4 x i64> [ %965, %956 ], [ <i64 0, i64 1, i64 2, i64 3>, %945 ]
  %959 = trunc <4 x i64> %958 to <4 x i32>
  %960 = add <4 x i32> %959, <i32 1, i32 1, i32 1, i32 1>
  %961 = sitofp <4 x i32> %960 to <4 x float>
  %962 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %961
  %963 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %957
  store <4 x float> %962, ptr %963, align 16, !tbaa !7
  %964 = add nuw i64 %957, 4
  %965 = add <4 x i64> %958, <i64 4, i64 4, i64 4, i64 4>
  %966 = icmp eq i64 %964, 32000
  br i1 %966, label %3611, label %956, !llvm.loop !105

967:                                              ; preds = %926
  %968 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.34) #12
  %969 = icmp eq i32 %968, 0
  br i1 %969, label %970, label %981

970:                                              ; preds = %967
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %971

971:                                              ; preds = %971, %970
  %972 = phi i64 [ 0, %970 ], [ %974, %971 ]
  %973 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %972
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %973, align 16, !tbaa !7
  %974 = add nuw i64 %972, 4
  %975 = icmp eq i64 %974, 32000
  br i1 %975, label %976, label %971, !llvm.loop !106

976:                                              ; preds = %976, %971
  %977 = phi i64 [ %979, %976 ], [ 0, %971 ]
  %978 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %977
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %978, align 16, !tbaa !7
  %979 = add nuw i64 %977, 4
  %980 = icmp eq i64 %979, 32000
  br i1 %980, label %3611, label %976, !llvm.loop !107

981:                                              ; preds = %967
  %982 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.35) #12
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %984, label %1010

984:                                              ; preds = %991, %981
  %985 = phi i64 [ %992, %991 ], [ 0, %981 ]
  br label %986

986:                                              ; preds = %986, %984
  %987 = phi i64 [ 0, %984 ], [ %989, %986 ]
  %988 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %985, i64 %987
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %988, align 16, !tbaa !7
  %989 = add nuw i64 %987, 4
  %990 = icmp eq i64 %989, 256
  br i1 %990, label %991, label %986, !llvm.loop !108

991:                                              ; preds = %986
  %992 = add nuw nsw i64 %985, 1
  %993 = icmp eq i64 %992, 256
  br i1 %993, label %994, label %984

994:                                              ; preds = %1008, %991
  %995 = phi i64 [ %996, %1008 ], [ 0, %991 ]
  %996 = add nuw nsw i64 %995, 1
  %997 = trunc i64 %996 to i32
  %998 = mul nsw i32 %997, %997
  %999 = sitofp i32 %998 to float
  %1000 = fdiv float 1.000000e+00, %999
  %1001 = insertelement <4 x float> poison, float %1000, i64 0
  %1002 = shufflevector <4 x float> %1001, <4 x float> poison, <4 x i32> zeroinitializer
  br label %1003

1003:                                             ; preds = %1003, %994
  %1004 = phi i64 [ 0, %994 ], [ %1006, %1003 ]
  %1005 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %995, i64 %1004
  store <4 x float> %1002, ptr %1005, align 16, !tbaa !7
  %1006 = add nuw i64 %1004, 4
  %1007 = icmp eq i64 %1006, 256
  br i1 %1007, label %1008, label %1003, !llvm.loop !109

1008:                                             ; preds = %1003
  %1009 = icmp eq i64 %996, 256
  br i1 %1009, label %3611, label %994

1010:                                             ; preds = %981
  %1011 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.36) #12
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1013, label %1024

1013:                                             ; preds = %1020, %1010
  %1014 = phi i64 [ %1021, %1020 ], [ 0, %1010 ]
  br label %1015

1015:                                             ; preds = %1015, %1013
  %1016 = phi i64 [ 0, %1013 ], [ %1018, %1015 ]
  %1017 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1014, i64 %1016
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1017, align 16, !tbaa !7
  %1018 = add nuw i64 %1016, 4
  %1019 = icmp eq i64 %1018, 256
  br i1 %1019, label %1020, label %1015, !llvm.loop !110

1020:                                             ; preds = %1015
  %1021 = add nuw nsw i64 %1014, 1
  %1022 = icmp eq i64 %1021, 256
  br i1 %1022, label %1023, label %1013

1023:                                             ; preds = %1020
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(262144) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i8 0, i64 262144, i1 false), !tbaa !7
  br label %3611

1024:                                             ; preds = %1010
  %1025 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.37) #12
  %1026 = icmp eq i32 %1025, 0
  br i1 %1026, label %1027, label %1072

1027:                                             ; preds = %1040, %1024
  %1028 = phi i64 [ %1029, %1040 ], [ 0, %1024 ]
  %1029 = add nuw nsw i64 %1028, 1
  %1030 = trunc i64 %1029 to i32
  %1031 = sitofp i32 %1030 to float
  %1032 = fdiv float 1.000000e+00, %1031
  %1033 = insertelement <4 x float> poison, float %1032, i64 0
  %1034 = shufflevector <4 x float> %1033, <4 x float> poison, <4 x i32> zeroinitializer
  br label %1035

1035:                                             ; preds = %1035, %1027
  %1036 = phi i64 [ 0, %1027 ], [ %1038, %1035 ]
  %1037 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1028, i64 %1036
  store <4 x float> %1034, ptr %1037, align 16, !tbaa !7
  %1038 = add nuw i64 %1036, 4
  %1039 = icmp eq i64 %1038, 256
  br i1 %1039, label %1040, label %1035, !llvm.loop !111

1040:                                             ; preds = %1035
  %1041 = icmp eq i64 %1029, 256
  br i1 %1041, label %1042, label %1027

1042:                                             ; preds = %1055, %1040
  %1043 = phi i64 [ %1044, %1055 ], [ 0, %1040 ]
  %1044 = add nuw nsw i64 %1043, 1
  %1045 = trunc i64 %1044 to i32
  %1046 = sitofp i32 %1045 to float
  %1047 = fdiv float 1.000000e+00, %1046
  %1048 = insertelement <4 x float> poison, float %1047, i64 0
  %1049 = shufflevector <4 x float> %1048, <4 x float> poison, <4 x i32> zeroinitializer
  br label %1050

1050:                                             ; preds = %1050, %1042
  %1051 = phi i64 [ 0, %1042 ], [ %1053, %1050 ]
  %1052 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %1043, i64 %1051
  store <4 x float> %1049, ptr %1052, align 16, !tbaa !7
  %1053 = add nuw i64 %1051, 4
  %1054 = icmp eq i64 %1053, 256
  br i1 %1054, label %1055, label %1050, !llvm.loop !112

1055:                                             ; preds = %1050
  %1056 = icmp eq i64 %1044, 256
  br i1 %1056, label %1057, label %1042

1057:                                             ; preds = %1070, %1055
  %1058 = phi i64 [ %1059, %1070 ], [ 0, %1055 ]
  %1059 = add nuw nsw i64 %1058, 1
  %1060 = trunc i64 %1059 to i32
  %1061 = sitofp i32 %1060 to float
  %1062 = fdiv float 1.000000e+00, %1061
  %1063 = insertelement <4 x float> poison, float %1062, i64 0
  %1064 = shufflevector <4 x float> %1063, <4 x float> poison, <4 x i32> zeroinitializer
  br label %1065

1065:                                             ; preds = %1065, %1057
  %1066 = phi i64 [ 0, %1057 ], [ %1068, %1065 ]
  %1067 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %1058, i64 %1066
  store <4 x float> %1064, ptr %1067, align 16, !tbaa !7
  %1068 = add nuw i64 %1066, 4
  %1069 = icmp eq i64 %1068, 256
  br i1 %1069, label %1070, label %1065, !llvm.loop !113

1070:                                             ; preds = %1065
  %1071 = icmp eq i64 %1059, 256
  br i1 %1071, label %3611, label %1057

1072:                                             ; preds = %1024
  %1073 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.38) #12
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1075, label %1115

1075:                                             ; preds = %1082, %1072
  %1076 = phi i64 [ %1083, %1082 ], [ 0, %1072 ]
  br label %1077

1077:                                             ; preds = %1077, %1075
  %1078 = phi i64 [ 0, %1075 ], [ %1080, %1077 ]
  %1079 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1076, i64 %1078
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1079, align 16, !tbaa !7
  %1080 = add nuw i64 %1078, 4
  %1081 = icmp eq i64 %1080, 256
  br i1 %1081, label %1082, label %1077, !llvm.loop !114

1082:                                             ; preds = %1077
  %1083 = add nuw nsw i64 %1076, 1
  %1084 = icmp eq i64 %1083, 256
  br i1 %1084, label %1085, label %1075

1085:                                             ; preds = %1098, %1082
  %1086 = phi i64 [ %1087, %1098 ], [ 0, %1082 ]
  %1087 = add nuw nsw i64 %1086, 1
  %1088 = trunc i64 %1087 to i32
  %1089 = sitofp i32 %1088 to float
  %1090 = fdiv float 1.000000e+00, %1089
  %1091 = insertelement <4 x float> poison, float %1090, i64 0
  %1092 = shufflevector <4 x float> %1091, <4 x float> poison, <4 x i32> zeroinitializer
  br label %1093

1093:                                             ; preds = %1093, %1085
  %1094 = phi i64 [ 0, %1085 ], [ %1096, %1093 ]
  %1095 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %1086, i64 %1094
  store <4 x float> %1092, ptr %1095, align 16, !tbaa !7
  %1096 = add nuw i64 %1094, 4
  %1097 = icmp eq i64 %1096, 256
  br i1 %1097, label %1098, label %1093, !llvm.loop !115

1098:                                             ; preds = %1093
  %1099 = icmp eq i64 %1087, 256
  br i1 %1099, label %1100, label %1085

1100:                                             ; preds = %1113, %1098
  %1101 = phi i64 [ %1102, %1113 ], [ 0, %1098 ]
  %1102 = add nuw nsw i64 %1101, 1
  %1103 = trunc i64 %1102 to i32
  %1104 = sitofp i32 %1103 to float
  %1105 = fdiv float 1.000000e+00, %1104
  %1106 = insertelement <4 x float> poison, float %1105, i64 0
  %1107 = shufflevector <4 x float> %1106, <4 x float> poison, <4 x i32> zeroinitializer
  br label %1108

1108:                                             ; preds = %1108, %1100
  %1109 = phi i64 [ 0, %1100 ], [ %1111, %1108 ]
  %1110 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %1101, i64 %1109
  store <4 x float> %1107, ptr %1110, align 16, !tbaa !7
  %1111 = add nuw i64 %1109, 4
  %1112 = icmp eq i64 %1111, 256
  br i1 %1112, label %1113, label %1108, !llvm.loop !116

1113:                                             ; preds = %1108
  %1114 = icmp eq i64 %1102, 256
  br i1 %1114, label %3611, label %1100

1115:                                             ; preds = %1072
  %1116 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.39) #12
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1118, label %1171

1118:                                             ; preds = %1118, %1115
  %1119 = phi i64 [ %1121, %1118 ], [ 0, %1115 ]
  %1120 = getelementptr inbounds float, ptr @global_data, i64 %1119
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1120, align 16, !tbaa !7
  %1121 = add nuw i64 %1119, 4
  %1122 = icmp eq i64 %1121, 32000
  br i1 %1122, label %1123, label %1118, !llvm.loop !117

1123:                                             ; preds = %1123, %1118
  %1124 = phi i64 [ %1131, %1123 ], [ 0, %1118 ]
  %1125 = phi <4 x i64> [ %1132, %1123 ], [ <i64 0, i64 1, i64 2, i64 3>, %1118 ]
  %1126 = trunc <4 x i64> %1125 to <4 x i32>
  %1127 = add <4 x i32> %1126, <i32 1, i32 1, i32 1, i32 1>
  %1128 = sitofp <4 x i32> %1127 to <4 x float>
  %1129 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1128
  %1130 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1124
  store <4 x float> %1129, ptr %1130, align 16, !tbaa !7
  %1131 = add nuw i64 %1124, 4
  %1132 = add <4 x i64> %1125, <i64 4, i64 4, i64 4, i64 4>
  %1133 = icmp eq i64 %1131, 32000
  br i1 %1133, label %1134, label %1123, !llvm.loop !118

1134:                                             ; preds = %1134, %1123
  %1135 = phi i64 [ %1142, %1134 ], [ 0, %1123 ]
  %1136 = phi <4 x i64> [ %1143, %1134 ], [ <i64 0, i64 1, i64 2, i64 3>, %1123 ]
  %1137 = trunc <4 x i64> %1136 to <4 x i32>
  %1138 = add <4 x i32> %1137, <i32 1, i32 1, i32 1, i32 1>
  %1139 = sitofp <4 x i32> %1138 to <4 x float>
  %1140 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1139
  %1141 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1135
  store <4 x float> %1140, ptr %1141, align 16, !tbaa !7
  %1142 = add nuw i64 %1135, 4
  %1143 = add <4 x i64> %1136, <i64 4, i64 4, i64 4, i64 4>
  %1144 = icmp eq i64 %1142, 32000
  br i1 %1144, label %1145, label %1134, !llvm.loop !119

1145:                                             ; preds = %1152, %1134
  %1146 = phi i64 [ %1153, %1152 ], [ 0, %1134 ]
  br label %1147

1147:                                             ; preds = %1147, %1145
  %1148 = phi i64 [ 0, %1145 ], [ %1150, %1147 ]
  %1149 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1146, i64 %1148
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1149, align 16, !tbaa !7
  %1150 = add nuw i64 %1148, 4
  %1151 = icmp eq i64 %1150, 256
  br i1 %1151, label %1152, label %1147, !llvm.loop !120

1152:                                             ; preds = %1147
  %1153 = add nuw nsw i64 %1146, 1
  %1154 = icmp eq i64 %1153, 256
  br i1 %1154, label %1155, label %1145

1155:                                             ; preds = %1169, %1152
  %1156 = phi i64 [ %1157, %1169 ], [ 0, %1152 ]
  %1157 = add nuw nsw i64 %1156, 1
  %1158 = trunc i64 %1157 to i32
  %1159 = mul nsw i32 %1158, %1158
  %1160 = sitofp i32 %1159 to float
  %1161 = fdiv float 1.000000e+00, %1160
  %1162 = insertelement <4 x float> poison, float %1161, i64 0
  %1163 = shufflevector <4 x float> %1162, <4 x float> poison, <4 x i32> zeroinitializer
  br label %1164

1164:                                             ; preds = %1164, %1155
  %1165 = phi i64 [ 0, %1155 ], [ %1167, %1164 ]
  %1166 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %1156, i64 %1165
  store <4 x float> %1163, ptr %1166, align 16, !tbaa !7
  %1167 = add nuw i64 %1165, 4
  %1168 = icmp eq i64 %1167, 256
  br i1 %1168, label %1169, label %1164, !llvm.loop !121

1169:                                             ; preds = %1164
  %1170 = icmp eq i64 %1157, 256
  br i1 %1170, label %3611, label %1155

1171:                                             ; preds = %1115
  %1172 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.40) #12
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1174, label %1194

1174:                                             ; preds = %1174, %1171
  %1175 = phi i64 [ %1177, %1174 ], [ 0, %1171 ]
  %1176 = getelementptr inbounds float, ptr @global_data, i64 %1175
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1176, align 16, !tbaa !7
  %1177 = add nuw i64 %1175, 4
  %1178 = icmp eq i64 %1177, 32000
  br i1 %1178, label %1179, label %1174, !llvm.loop !122

1179:                                             ; preds = %1179, %1174
  %1180 = phi i64 [ %1182, %1179 ], [ 0, %1174 ]
  %1181 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1180
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1181, align 16, !tbaa !7
  %1182 = add nuw i64 %1180, 4
  %1183 = icmp eq i64 %1182, 32000
  br i1 %1183, label %1184, label %1179, !llvm.loop !123

1184:                                             ; preds = %1184, %1179
  %1185 = phi i64 [ %1187, %1184 ], [ 0, %1179 ]
  %1186 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1185
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1186, align 16, !tbaa !7
  %1187 = add nuw i64 %1185, 4
  %1188 = icmp eq i64 %1187, 32000
  br i1 %1188, label %1189, label %1184, !llvm.loop !124

1189:                                             ; preds = %1189, %1184
  %1190 = phi i64 [ %1192, %1189 ], [ 0, %1184 ]
  %1191 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1190
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1191, align 16, !tbaa !7
  %1192 = add nuw i64 %1190, 4
  %1193 = icmp eq i64 %1192, 32000
  br i1 %1193, label %3611, label %1189, !llvm.loop !125

1194:                                             ; preds = %1171
  %1195 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.41) #12
  %1196 = icmp eq i32 %1195, 0
  br i1 %1196, label %1197, label %1217

1197:                                             ; preds = %1197, %1194
  %1198 = phi i64 [ %1200, %1197 ], [ 0, %1194 ]
  %1199 = getelementptr inbounds float, ptr @global_data, i64 %1198
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1199, align 16, !tbaa !7
  %1200 = add nuw i64 %1198, 4
  %1201 = icmp eq i64 %1200, 32000
  br i1 %1201, label %1202, label %1197, !llvm.loop !126

1202:                                             ; preds = %1202, %1197
  %1203 = phi i64 [ %1205, %1202 ], [ 0, %1197 ]
  %1204 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1203
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1204, align 16, !tbaa !7
  %1205 = add nuw i64 %1203, 4
  %1206 = icmp eq i64 %1205, 32000
  br i1 %1206, label %1207, label %1202, !llvm.loop !127

1207:                                             ; preds = %1207, %1202
  %1208 = phi i64 [ %1210, %1207 ], [ 0, %1202 ]
  %1209 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1208
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1209, align 16, !tbaa !7
  %1210 = add nuw i64 %1208, 4
  %1211 = icmp eq i64 %1210, 32000
  br i1 %1211, label %1212, label %1207, !llvm.loop !128

1212:                                             ; preds = %1212, %1207
  %1213 = phi i64 [ %1215, %1212 ], [ 0, %1207 ]
  %1214 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1213
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1214, align 16, !tbaa !7
  %1215 = add nuw i64 %1213, 4
  %1216 = icmp eq i64 %1215, 32000
  br i1 %1216, label %3611, label %1212, !llvm.loop !129

1217:                                             ; preds = %1194
  %1218 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.42) #12
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1220, label %1259

1220:                                             ; preds = %1217
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %1221

1221:                                             ; preds = %1221, %1220
  %1222 = phi i64 [ 0, %1220 ], [ %1224, %1221 ]
  %1223 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1222
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1223, align 16, !tbaa !7
  %1224 = add nuw i64 %1222, 4
  %1225 = icmp eq i64 %1224, 32000
  br i1 %1225, label %1226, label %1221, !llvm.loop !130

1226:                                             ; preds = %1226, %1221
  %1227 = phi i64 [ %1234, %1226 ], [ 0, %1221 ]
  %1228 = phi <4 x i64> [ %1235, %1226 ], [ <i64 0, i64 1, i64 2, i64 3>, %1221 ]
  %1229 = trunc <4 x i64> %1228 to <4 x i32>
  %1230 = add <4 x i32> %1229, <i32 1, i32 1, i32 1, i32 1>
  %1231 = sitofp <4 x i32> %1230 to <4 x float>
  %1232 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1231
  %1233 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1227
  store <4 x float> %1232, ptr %1233, align 16, !tbaa !7
  %1234 = add nuw i64 %1227, 4
  %1235 = add <4 x i64> %1228, <i64 4, i64 4, i64 4, i64 4>
  %1236 = icmp eq i64 %1234, 32000
  br i1 %1236, label %1237, label %1226, !llvm.loop !131

1237:                                             ; preds = %1237, %1226
  %1238 = phi i64 [ %1245, %1237 ], [ 0, %1226 ]
  %1239 = phi <4 x i64> [ %1246, %1237 ], [ <i64 0, i64 1, i64 2, i64 3>, %1226 ]
  %1240 = trunc <4 x i64> %1239 to <4 x i32>
  %1241 = add <4 x i32> %1240, <i32 1, i32 1, i32 1, i32 1>
  %1242 = sitofp <4 x i32> %1241 to <4 x float>
  %1243 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1242
  %1244 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1238
  store <4 x float> %1243, ptr %1244, align 16, !tbaa !7
  %1245 = add nuw i64 %1238, 4
  %1246 = add <4 x i64> %1239, <i64 4, i64 4, i64 4, i64 4>
  %1247 = icmp eq i64 %1245, 32000
  br i1 %1247, label %1248, label %1237, !llvm.loop !132

1248:                                             ; preds = %1248, %1237
  %1249 = phi i64 [ %1256, %1248 ], [ 0, %1237 ]
  %1250 = phi <4 x i64> [ %1257, %1248 ], [ <i64 0, i64 1, i64 2, i64 3>, %1237 ]
  %1251 = trunc <4 x i64> %1250 to <4 x i32>
  %1252 = add <4 x i32> %1251, <i32 1, i32 1, i32 1, i32 1>
  %1253 = sitofp <4 x i32> %1252 to <4 x float>
  %1254 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1253
  %1255 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1249
  store <4 x float> %1254, ptr %1255, align 16, !tbaa !7
  %1256 = add nuw i64 %1249, 4
  %1257 = add <4 x i64> %1250, <i64 4, i64 4, i64 4, i64 4>
  %1258 = icmp eq i64 %1256, 32000
  br i1 %1258, label %3611, label %1248, !llvm.loop !133

1259:                                             ; preds = %1217
  %1260 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.43) #12
  %1261 = icmp eq i32 %1260, 0
  br i1 %1261, label %1262, label %1278

1262:                                             ; preds = %1259
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %1263

1263:                                             ; preds = %1263, %1262
  %1264 = phi i64 [ 0, %1262 ], [ %1266, %1263 ]
  %1265 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1264
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1265, align 16, !tbaa !7
  %1266 = add nuw i64 %1264, 4
  %1267 = icmp eq i64 %1266, 32000
  br i1 %1267, label %1268, label %1263, !llvm.loop !134

1268:                                             ; preds = %1268, %1263
  %1269 = phi i64 [ %1271, %1268 ], [ 0, %1263 ]
  %1270 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1269
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1270, align 16, !tbaa !7
  %1271 = add nuw i64 %1269, 4
  %1272 = icmp eq i64 %1271, 32000
  br i1 %1272, label %1273, label %1268, !llvm.loop !135

1273:                                             ; preds = %1273, %1268
  %1274 = phi i64 [ %1276, %1273 ], [ 0, %1268 ]
  %1275 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1274
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1275, align 16, !tbaa !7
  %1276 = add nuw i64 %1274, 4
  %1277 = icmp eq i64 %1276, 32000
  br i1 %1277, label %3611, label %1273, !llvm.loop !136

1278:                                             ; preds = %1259
  %1279 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.44) #12
  %1280 = icmp eq i32 %1279, 0
  br i1 %1280, label %1281, label %1320

1281:                                             ; preds = %1278
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %1282

1282:                                             ; preds = %1282, %1281
  %1283 = phi i64 [ 0, %1281 ], [ %1285, %1282 ]
  %1284 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1283
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1284, align 16, !tbaa !7
  %1285 = add nuw i64 %1283, 4
  %1286 = icmp eq i64 %1285, 32000
  br i1 %1286, label %1287, label %1282, !llvm.loop !137

1287:                                             ; preds = %1287, %1282
  %1288 = phi i64 [ %1295, %1287 ], [ 0, %1282 ]
  %1289 = phi <4 x i64> [ %1296, %1287 ], [ <i64 0, i64 1, i64 2, i64 3>, %1282 ]
  %1290 = trunc <4 x i64> %1289 to <4 x i32>
  %1291 = add <4 x i32> %1290, <i32 1, i32 1, i32 1, i32 1>
  %1292 = sitofp <4 x i32> %1291 to <4 x float>
  %1293 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1292
  %1294 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1288
  store <4 x float> %1293, ptr %1294, align 16, !tbaa !7
  %1295 = add nuw i64 %1288, 4
  %1296 = add <4 x i64> %1289, <i64 4, i64 4, i64 4, i64 4>
  %1297 = icmp eq i64 %1295, 32000
  br i1 %1297, label %1298, label %1287, !llvm.loop !138

1298:                                             ; preds = %1298, %1287
  %1299 = phi i64 [ %1306, %1298 ], [ 0, %1287 ]
  %1300 = phi <4 x i64> [ %1307, %1298 ], [ <i64 0, i64 1, i64 2, i64 3>, %1287 ]
  %1301 = trunc <4 x i64> %1300 to <4 x i32>
  %1302 = add <4 x i32> %1301, <i32 1, i32 1, i32 1, i32 1>
  %1303 = sitofp <4 x i32> %1302 to <4 x float>
  %1304 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1303
  %1305 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1299
  store <4 x float> %1304, ptr %1305, align 16, !tbaa !7
  %1306 = add nuw i64 %1299, 4
  %1307 = add <4 x i64> %1300, <i64 4, i64 4, i64 4, i64 4>
  %1308 = icmp eq i64 %1306, 32000
  br i1 %1308, label %1309, label %1298, !llvm.loop !139

1309:                                             ; preds = %1309, %1298
  %1310 = phi i64 [ %1317, %1309 ], [ 0, %1298 ]
  %1311 = phi <4 x i64> [ %1318, %1309 ], [ <i64 0, i64 1, i64 2, i64 3>, %1298 ]
  %1312 = trunc <4 x i64> %1311 to <4 x i32>
  %1313 = add <4 x i32> %1312, <i32 1, i32 1, i32 1, i32 1>
  %1314 = sitofp <4 x i32> %1313 to <4 x float>
  %1315 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1314
  %1316 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1310
  store <4 x float> %1315, ptr %1316, align 16, !tbaa !7
  %1317 = add nuw i64 %1310, 4
  %1318 = add <4 x i64> %1311, <i64 4, i64 4, i64 4, i64 4>
  %1319 = icmp eq i64 %1317, 32000
  br i1 %1319, label %3611, label %1309, !llvm.loop !140

1320:                                             ; preds = %1278
  %1321 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.45) #12
  %1322 = icmp eq i32 %1321, 0
  br i1 %1322, label %1323, label %1334

1323:                                             ; preds = %1320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %1324

1324:                                             ; preds = %1324, %1323
  %1325 = phi i64 [ 0, %1323 ], [ %1327, %1324 ]
  %1326 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1325
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1326, align 16, !tbaa !7
  %1327 = add nuw i64 %1325, 4
  %1328 = icmp eq i64 %1327, 32000
  br i1 %1328, label %1329, label %1324, !llvm.loop !141

1329:                                             ; preds = %1329, %1324
  %1330 = phi i64 [ %1332, %1329 ], [ 0, %1324 ]
  %1331 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1330
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1331, align 16, !tbaa !7
  %1332 = add nuw i64 %1330, 4
  %1333 = icmp eq i64 %1332, 32000
  br i1 %1333, label %3611, label %1329, !llvm.loop !142

1334:                                             ; preds = %1320
  %1335 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.46) #12
  %1336 = icmp eq i32 %1335, 0
  br i1 %1336, label %1337, label %1363

1337:                                             ; preds = %1337, %1334
  %1338 = phi i64 [ %1340, %1337 ], [ 0, %1334 ]
  %1339 = getelementptr inbounds float, ptr @global_data, i64 %1338
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1339, align 16, !tbaa !7
  %1340 = add nuw i64 %1338, 4
  %1341 = icmp eq i64 %1340, 32000
  br i1 %1341, label %1342, label %1337, !llvm.loop !143

1342:                                             ; preds = %1342, %1337
  %1343 = phi i64 [ %1345, %1342 ], [ 0, %1337 ]
  %1344 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1343
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1344, align 16, !tbaa !7
  %1345 = add nuw i64 %1343, 4
  %1346 = icmp eq i64 %1345, 32000
  br i1 %1346, label %1347, label %1342, !llvm.loop !144

1347:                                             ; preds = %1347, %1342
  %1348 = phi i64 [ %1350, %1347 ], [ 0, %1342 ]
  %1349 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1348
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1349, align 16, !tbaa !7
  %1350 = add nuw i64 %1348, 4
  %1351 = icmp eq i64 %1350, 32000
  br i1 %1351, label %1352, label %1347, !llvm.loop !145

1352:                                             ; preds = %1352, %1347
  %1353 = phi i64 [ %1360, %1352 ], [ 0, %1347 ]
  %1354 = phi <4 x i64> [ %1361, %1352 ], [ <i64 0, i64 1, i64 2, i64 3>, %1347 ]
  %1355 = trunc <4 x i64> %1354 to <4 x i32>
  %1356 = add <4 x i32> %1355, <i32 1, i32 1, i32 1, i32 1>
  %1357 = sitofp <4 x i32> %1356 to <4 x float>
  %1358 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1357
  %1359 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1353
  store <4 x float> %1358, ptr %1359, align 16, !tbaa !7
  %1360 = add nuw i64 %1353, 4
  %1361 = add <4 x i64> %1354, <i64 4, i64 4, i64 4, i64 4>
  %1362 = icmp eq i64 %1360, 32000
  br i1 %1362, label %3611, label %1352, !llvm.loop !146

1363:                                             ; preds = %1334
  %1364 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.47) #12
  %1365 = icmp eq i32 %1364, 0
  br i1 %1365, label %1366, label %1372

1366:                                             ; preds = %1363
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %1367

1367:                                             ; preds = %1367, %1366
  %1368 = phi i64 [ 0, %1366 ], [ %1370, %1367 ]
  %1369 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1368
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1369, align 16, !tbaa !7
  %1370 = add nuw i64 %1368, 4
  %1371 = icmp eq i64 %1370, 32000
  br i1 %1371, label %3611, label %1367, !llvm.loop !147

1372:                                             ; preds = %1363
  %1373 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.48) #12
  %1374 = icmp eq i32 %1373, 0
  br i1 %1374, label %1375, label %1381

1375:                                             ; preds = %1372
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %1376

1376:                                             ; preds = %1376, %1375
  %1377 = phi i64 [ 0, %1375 ], [ %1379, %1376 ]
  %1378 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1377
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1378, align 16, !tbaa !7
  %1379 = add nuw i64 %1377, 4
  %1380 = icmp eq i64 %1379, 32000
  br i1 %1380, label %3611, label %1376, !llvm.loop !148

1381:                                             ; preds = %1372
  %1382 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.49) #12
  %1383 = icmp eq i32 %1382, 0
  br i1 %1383, label %1384, label %1409

1384:                                             ; preds = %1384, %1381
  %1385 = phi i64 [ %1387, %1384 ], [ 0, %1381 ]
  %1386 = getelementptr inbounds float, ptr @global_data, i64 %1385
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1386, align 16, !tbaa !7
  %1387 = add nuw i64 %1385, 4
  %1388 = icmp eq i64 %1387, 32000
  br i1 %1388, label %1389, label %1384, !llvm.loop !149

1389:                                             ; preds = %1396, %1384
  %1390 = phi i64 [ %1397, %1396 ], [ 0, %1384 ]
  br label %1391

1391:                                             ; preds = %1391, %1389
  %1392 = phi i64 [ 0, %1389 ], [ %1394, %1391 ]
  %1393 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1390, i64 %1392
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, ptr %1393, align 16, !tbaa !7
  %1394 = add nuw i64 %1392, 4
  %1395 = icmp eq i64 %1394, 256
  br i1 %1395, label %1396, label %1391, !llvm.loop !150

1396:                                             ; preds = %1391
  %1397 = add nuw nsw i64 %1390, 1
  %1398 = icmp eq i64 %1397, 256
  br i1 %1398, label %1399, label %1389

1399:                                             ; preds = %1406, %1396
  %1400 = phi i64 [ %1407, %1406 ], [ 0, %1396 ]
  br label %1401

1401:                                             ; preds = %1401, %1399
  %1402 = phi i64 [ 0, %1399 ], [ %1404, %1401 ]
  %1403 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %1400, i64 %1402
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1403, align 16, !tbaa !7
  %1404 = add nuw i64 %1402, 4
  %1405 = icmp eq i64 %1404, 256
  br i1 %1405, label %1406, label %1401, !llvm.loop !151

1406:                                             ; preds = %1401
  %1407 = add nuw nsw i64 %1400, 1
  %1408 = icmp eq i64 %1407, 256
  br i1 %1408, label %3611, label %1399

1409:                                             ; preds = %1381
  %1410 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.50) #12
  %1411 = icmp eq i32 %1410, 0
  br i1 %1411, label %1412, label %1437

1412:                                             ; preds = %1412, %1409
  %1413 = phi i64 [ %1415, %1412 ], [ 0, %1409 ]
  %1414 = getelementptr inbounds float, ptr @global_data, i64 %1413
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1414, align 16, !tbaa !7
  %1415 = add nuw i64 %1413, 4
  %1416 = icmp eq i64 %1415, 32000
  br i1 %1416, label %1417, label %1412, !llvm.loop !152

1417:                                             ; preds = %1424, %1412
  %1418 = phi i64 [ %1425, %1424 ], [ 0, %1412 ]
  br label %1419

1419:                                             ; preds = %1419, %1417
  %1420 = phi i64 [ 0, %1417 ], [ %1422, %1419 ]
  %1421 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1418, i64 %1420
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, ptr %1421, align 16, !tbaa !7
  %1422 = add nuw i64 %1420, 4
  %1423 = icmp eq i64 %1422, 256
  br i1 %1423, label %1424, label %1419, !llvm.loop !153

1424:                                             ; preds = %1419
  %1425 = add nuw nsw i64 %1418, 1
  %1426 = icmp eq i64 %1425, 256
  br i1 %1426, label %1427, label %1417

1427:                                             ; preds = %1434, %1424
  %1428 = phi i64 [ %1435, %1434 ], [ 0, %1424 ]
  br label %1429

1429:                                             ; preds = %1429, %1427
  %1430 = phi i64 [ 0, %1427 ], [ %1432, %1429 ]
  %1431 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %1428, i64 %1430
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1431, align 16, !tbaa !7
  %1432 = add nuw i64 %1430, 4
  %1433 = icmp eq i64 %1432, 256
  br i1 %1433, label %1434, label %1429, !llvm.loop !154

1434:                                             ; preds = %1429
  %1435 = add nuw nsw i64 %1428, 1
  %1436 = icmp eq i64 %1435, 256
  br i1 %1436, label %3611, label %1427

1437:                                             ; preds = %1409
  %1438 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.51) #12
  %1439 = icmp eq i32 %1438, 0
  br i1 %1439, label %1440, label %1490

1440:                                             ; preds = %1440, %1437
  %1441 = phi i64 [ %1448, %1440 ], [ 0, %1437 ]
  %1442 = phi <4 x i64> [ %1449, %1440 ], [ <i64 0, i64 1, i64 2, i64 3>, %1437 ]
  %1443 = trunc <4 x i64> %1442 to <4 x i32>
  %1444 = add <4 x i32> %1443, <i32 1, i32 1, i32 1, i32 1>
  %1445 = sitofp <4 x i32> %1444 to <4 x float>
  %1446 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1445
  %1447 = getelementptr inbounds float, ptr @global_data, i64 %1441
  store <4 x float> %1446, ptr %1447, align 16, !tbaa !7
  %1448 = add nuw i64 %1441, 4
  %1449 = add <4 x i64> %1442, <i64 4, i64 4, i64 4, i64 4>
  %1450 = icmp eq i64 %1448, 32000
  br i1 %1450, label %1451, label %1440, !llvm.loop !155

1451:                                             ; preds = %1440
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), i8 0, i64 128000, i1 false), !tbaa !7
  br label %1452

1452:                                             ; preds = %1452, %1451
  %1453 = phi i64 [ 0, %1451 ], [ %1460, %1452 ]
  %1454 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %1451 ], [ %1461, %1452 ]
  %1455 = trunc <4 x i64> %1454 to <4 x i32>
  %1456 = add <4 x i32> %1455, <i32 1, i32 1, i32 1, i32 1>
  %1457 = sitofp <4 x i32> %1456 to <4 x float>
  %1458 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1457
  %1459 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1453
  store <4 x float> %1458, ptr %1459, align 16, !tbaa !7
  %1460 = add nuw i64 %1453, 4
  %1461 = add <4 x i64> %1454, <i64 4, i64 4, i64 4, i64 4>
  %1462 = icmp eq i64 %1460, 32000
  br i1 %1462, label %1463, label %1452, !llvm.loop !156

1463:                                             ; preds = %1463, %1452
  %1464 = phi i64 [ %1471, %1463 ], [ 0, %1452 ]
  %1465 = phi <4 x i64> [ %1472, %1463 ], [ <i64 0, i64 1, i64 2, i64 3>, %1452 ]
  %1466 = trunc <4 x i64> %1465 to <4 x i32>
  %1467 = add <4 x i32> %1466, <i32 1, i32 1, i32 1, i32 1>
  %1468 = sitofp <4 x i32> %1467 to <4 x float>
  %1469 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1468
  %1470 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1464
  store <4 x float> %1469, ptr %1470, align 16, !tbaa !7
  %1471 = add nuw i64 %1464, 4
  %1472 = add <4 x i64> %1465, <i64 4, i64 4, i64 4, i64 4>
  %1473 = icmp eq i64 %1471, 32000
  br i1 %1473, label %1474, label %1463, !llvm.loop !157

1474:                                             ; preds = %1463
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 0), i8 0, i64 128000, i1 false), !tbaa !7
  br label %1475

1475:                                             ; preds = %1488, %1474
  %1476 = phi i64 [ %1477, %1488 ], [ 0, %1474 ]
  %1477 = add nuw nsw i64 %1476, 1
  %1478 = trunc i64 %1477 to i32
  %1479 = sitofp i32 %1478 to float
  %1480 = fdiv float 1.000000e+00, %1479
  %1481 = insertelement <4 x float> poison, float %1480, i64 0
  %1482 = shufflevector <4 x float> %1481, <4 x float> poison, <4 x i32> zeroinitializer
  br label %1483

1483:                                             ; preds = %1483, %1475
  %1484 = phi i64 [ 0, %1475 ], [ %1486, %1483 ]
  %1485 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1476, i64 %1484
  store <4 x float> %1482, ptr %1485, align 16, !tbaa !7
  %1486 = add nuw i64 %1484, 4
  %1487 = icmp eq i64 %1486, 256
  br i1 %1487, label %1488, label %1483, !llvm.loop !158

1488:                                             ; preds = %1483
  %1489 = icmp eq i64 %1477, 256
  br i1 %1489, label %3611, label %1475

1490:                                             ; preds = %1437
  %1491 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.52) #12
  %1492 = icmp eq i32 %1491, 0
  br i1 %1492, label %1493, label %1527

1493:                                             ; preds = %1493, %1490
  %1494 = phi i64 [ %1496, %1493 ], [ 0, %1490 ]
  %1495 = getelementptr inbounds float, ptr @global_data, i64 %1494
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1495, align 16, !tbaa !7
  %1496 = add nuw i64 %1494, 4
  %1497 = icmp eq i64 %1496, 32000
  br i1 %1497, label %1498, label %1493, !llvm.loop !159

1498:                                             ; preds = %1498, %1493
  %1499 = phi i64 [ %1507, %1498 ], [ 0, %1493 ]
  %1500 = phi <4 x i64> [ %1508, %1498 ], [ <i64 0, i64 1, i64 2, i64 3>, %1493 ]
  %1501 = add nuw nsw <4 x i64> %1500, <i64 1, i64 1, i64 1, i64 1>
  %1502 = mul nuw nsw <4 x i64> %1501, %1501
  %1503 = trunc <4 x i64> %1502 to <4 x i32>
  %1504 = sitofp <4 x i32> %1503 to <4 x float>
  %1505 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1504
  %1506 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1499
  store <4 x float> %1505, ptr %1506, align 16, !tbaa !7
  %1507 = add nuw i64 %1499, 4
  %1508 = add <4 x i64> %1500, <i64 4, i64 4, i64 4, i64 4>
  %1509 = icmp eq i64 %1507, 32000
  br i1 %1509, label %1510, label %1498, !llvm.loop !160

1510:                                             ; preds = %1510, %1498
  %1511 = phi i64 [ %1519, %1510 ], [ 0, %1498 ]
  %1512 = phi <4 x i64> [ %1520, %1510 ], [ <i64 0, i64 1, i64 2, i64 3>, %1498 ]
  %1513 = add nuw nsw <4 x i64> %1512, <i64 1, i64 1, i64 1, i64 1>
  %1514 = mul nuw nsw <4 x i64> %1513, %1513
  %1515 = trunc <4 x i64> %1514 to <4 x i32>
  %1516 = sitofp <4 x i32> %1515 to <4 x float>
  %1517 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1516
  %1518 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1511
  store <4 x float> %1517, ptr %1518, align 16, !tbaa !7
  %1519 = add nuw i64 %1511, 4
  %1520 = add <4 x i64> %1512, <i64 4, i64 4, i64 4, i64 4>
  %1521 = icmp eq i64 %1519, 32000
  br i1 %1521, label %1522, label %1510, !llvm.loop !161

1522:                                             ; preds = %1522, %1510
  %1523 = phi i64 [ %1525, %1522 ], [ 0, %1510 ]
  %1524 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1523
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1524, align 16, !tbaa !7
  %1525 = add nuw i64 %1523, 4
  %1526 = icmp eq i64 %1525, 32000
  br i1 %1526, label %3611, label %1522, !llvm.loop !162

1527:                                             ; preds = %1490
  %1528 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.53) #12
  %1529 = icmp eq i32 %1528, 0
  br i1 %1529, label %1530, label %1557

1530:                                             ; preds = %1530, %1527
  %1531 = phi i64 [ %1533, %1530 ], [ 0, %1527 ]
  %1532 = getelementptr inbounds float, ptr @global_data, i64 %1531
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1532, align 16, !tbaa !7
  %1533 = add nuw i64 %1531, 4
  %1534 = icmp eq i64 %1533, 32000
  br i1 %1534, label %1535, label %1530, !llvm.loop !163

1535:                                             ; preds = %1535, %1530
  %1536 = phi i64 [ %1543, %1535 ], [ 0, %1530 ]
  %1537 = phi <4 x i64> [ %1544, %1535 ], [ <i64 0, i64 1, i64 2, i64 3>, %1530 ]
  %1538 = trunc <4 x i64> %1537 to <4 x i32>
  %1539 = add <4 x i32> %1538, <i32 1, i32 1, i32 1, i32 1>
  %1540 = sitofp <4 x i32> %1539 to <4 x float>
  %1541 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1540
  %1542 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1536
  store <4 x float> %1541, ptr %1542, align 16, !tbaa !7
  %1543 = add nuw i64 %1536, 4
  %1544 = add <4 x i64> %1537, <i64 4, i64 4, i64 4, i64 4>
  %1545 = icmp eq i64 %1543, 32000
  br i1 %1545, label %1546, label %1535, !llvm.loop !164

1546:                                             ; preds = %1546, %1535
  %1547 = phi i64 [ %1554, %1546 ], [ 0, %1535 ]
  %1548 = phi <4 x i64> [ %1555, %1546 ], [ <i64 0, i64 1, i64 2, i64 3>, %1535 ]
  %1549 = trunc <4 x i64> %1548 to <4 x i32>
  %1550 = add <4 x i32> %1549, <i32 1, i32 1, i32 1, i32 1>
  %1551 = sitofp <4 x i32> %1550 to <4 x float>
  %1552 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1551
  %1553 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1547
  store <4 x float> %1552, ptr %1553, align 16, !tbaa !7
  %1554 = add nuw i64 %1547, 4
  %1555 = add <4 x i64> %1548, <i64 4, i64 4, i64 4, i64 4>
  %1556 = icmp eq i64 %1554, 32000
  br i1 %1556, label %3611, label %1546, !llvm.loop !165

1557:                                             ; preds = %1527
  %1558 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.54) #12
  %1559 = icmp eq i32 %1558, 0
  br i1 %1559, label %1560, label %1597

1560:                                             ; preds = %1560, %1557
  %1561 = phi i64 [ %1563, %1560 ], [ 0, %1557 ]
  %1562 = getelementptr inbounds float, ptr @global_data, i64 %1561
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1562, align 16, !tbaa !7
  %1563 = add nuw i64 %1561, 4
  %1564 = icmp eq i64 %1563, 32000
  br i1 %1564, label %1565, label %1560, !llvm.loop !166

1565:                                             ; preds = %1565, %1560
  %1566 = phi i64 [ %1568, %1565 ], [ 0, %1560 ]
  %1567 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1566
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1567, align 16, !tbaa !7
  %1568 = add nuw i64 %1566, 4
  %1569 = icmp eq i64 %1568, 32000
  br i1 %1569, label %1570, label %1565, !llvm.loop !167

1570:                                             ; preds = %1570, %1565
  %1571 = phi i64 [ %1578, %1570 ], [ 0, %1565 ]
  %1572 = phi <4 x i64> [ %1579, %1570 ], [ <i64 0, i64 1, i64 2, i64 3>, %1565 ]
  %1573 = trunc <4 x i64> %1572 to <4 x i32>
  %1574 = add <4 x i32> %1573, <i32 1, i32 1, i32 1, i32 1>
  %1575 = sitofp <4 x i32> %1574 to <4 x float>
  %1576 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1575
  %1577 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1571
  store <4 x float> %1576, ptr %1577, align 16, !tbaa !7
  %1578 = add nuw i64 %1571, 4
  %1579 = add <4 x i64> %1572, <i64 4, i64 4, i64 4, i64 4>
  %1580 = icmp eq i64 %1578, 32000
  br i1 %1580, label %1581, label %1570, !llvm.loop !168

1581:                                             ; preds = %1581, %1570
  %1582 = phi i64 [ %1589, %1581 ], [ 0, %1570 ]
  %1583 = phi <4 x i64> [ %1590, %1581 ], [ <i64 0, i64 1, i64 2, i64 3>, %1570 ]
  %1584 = trunc <4 x i64> %1583 to <4 x i32>
  %1585 = add <4 x i32> %1584, <i32 1, i32 1, i32 1, i32 1>
  %1586 = sitofp <4 x i32> %1585 to <4 x float>
  %1587 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1586
  %1588 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1582
  store <4 x float> %1587, ptr %1588, align 16, !tbaa !7
  %1589 = add nuw i64 %1582, 4
  %1590 = add <4 x i64> %1583, <i64 4, i64 4, i64 4, i64 4>
  %1591 = icmp eq i64 %1589, 32000
  br i1 %1591, label %1592, label %1581, !llvm.loop !169

1592:                                             ; preds = %1592, %1581
  %1593 = phi i64 [ %1595, %1592 ], [ 0, %1581 ]
  %1594 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1593
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, ptr %1594, align 16, !tbaa !7
  %1595 = add nuw i64 %1593, 4
  %1596 = icmp eq i64 %1595, 32000
  br i1 %1596, label %3611, label %1592, !llvm.loop !170

1597:                                             ; preds = %1557
  %1598 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.55) #12
  %1599 = icmp eq i32 %1598, 0
  br i1 %1599, label %1600, label %1631

1600:                                             ; preds = %1600, %1597
  %1601 = phi i64 [ %1603, %1600 ], [ 0, %1597 ]
  %1602 = getelementptr inbounds float, ptr @global_data, i64 %1601
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1602, align 16, !tbaa !7
  %1603 = add nuw i64 %1601, 4
  %1604 = icmp eq i64 %1603, 32000
  br i1 %1604, label %1605, label %1600, !llvm.loop !171

1605:                                             ; preds = %1605, %1600
  %1606 = phi i64 [ %1608, %1605 ], [ 0, %1600 ]
  %1607 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1606
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1607, align 16, !tbaa !7
  %1608 = add nuw i64 %1606, 4
  %1609 = icmp eq i64 %1608, 32000
  br i1 %1609, label %1610, label %1605, !llvm.loop !172

1610:                                             ; preds = %1610, %1605
  %1611 = phi i64 [ %1613, %1610 ], [ 0, %1605 ]
  %1612 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1611
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1612, align 16, !tbaa !7
  %1613 = add nuw i64 %1611, 4
  %1614 = icmp eq i64 %1613, 32000
  br i1 %1614, label %1615, label %1610, !llvm.loop !173

1615:                                             ; preds = %1615, %1610
  %1616 = phi i64 [ %1618, %1615 ], [ 0, %1610 ]
  %1617 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1616
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1617, align 16, !tbaa !7
  %1618 = add nuw i64 %1616, 4
  %1619 = icmp eq i64 %1618, 32000
  br i1 %1619, label %1620, label %1615, !llvm.loop !174

1620:                                             ; preds = %1620, %1615
  %1621 = phi i64 [ %1628, %1620 ], [ 0, %1615 ]
  %1622 = phi <4 x i64> [ %1629, %1620 ], [ <i64 0, i64 1, i64 2, i64 3>, %1615 ]
  %1623 = trunc <4 x i64> %1622 to <4 x i32>
  %1624 = add <4 x i32> %1623, <i32 1, i32 1, i32 1, i32 1>
  %1625 = sitofp <4 x i32> %1624 to <4 x float>
  %1626 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1625
  %1627 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1621
  store <4 x float> %1626, ptr %1627, align 16, !tbaa !7
  %1628 = add nuw i64 %1621, 4
  %1629 = add <4 x i64> %1622, <i64 4, i64 4, i64 4, i64 4>
  %1630 = icmp eq i64 %1628, 32000
  br i1 %1630, label %3611, label %1620, !llvm.loop !175

1631:                                             ; preds = %1597
  %1632 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.56) #12
  %1633 = icmp eq i32 %1632, 0
  br i1 %1633, label %1634, label %1667

1634:                                             ; preds = %1631
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %1635

1635:                                             ; preds = %1635, %1634
  %1636 = phi i64 [ 0, %1634 ], [ %1638, %1635 ]
  %1637 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1636
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1637, align 16, !tbaa !7
  %1638 = add nuw i64 %1636, 4
  %1639 = icmp eq i64 %1638, 32000
  br i1 %1639, label %1640, label %1635, !llvm.loop !176

1640:                                             ; preds = %1640, %1635
  %1641 = phi i64 [ %1643, %1640 ], [ 0, %1635 ]
  %1642 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1641
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1642, align 16, !tbaa !7
  %1643 = add nuw i64 %1641, 4
  %1644 = icmp eq i64 %1643, 32000
  br i1 %1644, label %1645, label %1640, !llvm.loop !177

1645:                                             ; preds = %1645, %1640
  %1646 = phi i64 [ %1653, %1645 ], [ 0, %1640 ]
  %1647 = phi <4 x i64> [ %1654, %1645 ], [ <i64 0, i64 1, i64 2, i64 3>, %1640 ]
  %1648 = trunc <4 x i64> %1647 to <4 x i32>
  %1649 = add <4 x i32> %1648, <i32 1, i32 1, i32 1, i32 1>
  %1650 = sitofp <4 x i32> %1649 to <4 x float>
  %1651 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1650
  %1652 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1646
  store <4 x float> %1651, ptr %1652, align 16, !tbaa !7
  %1653 = add nuw i64 %1646, 4
  %1654 = add <4 x i64> %1647, <i64 4, i64 4, i64 4, i64 4>
  %1655 = icmp eq i64 %1653, 32000
  br i1 %1655, label %1656, label %1645, !llvm.loop !178

1656:                                             ; preds = %1656, %1645
  %1657 = phi i64 [ %1664, %1656 ], [ 0, %1645 ]
  %1658 = phi <4 x i64> [ %1665, %1656 ], [ <i64 0, i64 1, i64 2, i64 3>, %1645 ]
  %1659 = trunc <4 x i64> %1658 to <4 x i32>
  %1660 = add <4 x i32> %1659, <i32 1, i32 1, i32 1, i32 1>
  %1661 = sitofp <4 x i32> %1660 to <4 x float>
  %1662 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1661
  %1663 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1657
  store <4 x float> %1662, ptr %1663, align 16, !tbaa !7
  %1664 = add nuw i64 %1657, 4
  %1665 = add <4 x i64> %1658, <i64 4, i64 4, i64 4, i64 4>
  %1666 = icmp eq i64 %1664, 32000
  br i1 %1666, label %3611, label %1656, !llvm.loop !179

1667:                                             ; preds = %1631
  %1668 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.57) #12
  %1669 = icmp eq i32 %1668, 0
  br i1 %1669, label %1670, label %1700

1670:                                             ; preds = %1677, %1667
  %1671 = phi i64 [ %1678, %1677 ], [ 0, %1667 ]
  br label %1672

1672:                                             ; preds = %1672, %1670
  %1673 = phi i64 [ 0, %1670 ], [ %1675, %1672 ]
  %1674 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %1671, i64 %1673
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1674, align 16, !tbaa !7
  %1675 = add nuw i64 %1673, 4
  %1676 = icmp eq i64 %1675, 256
  br i1 %1676, label %1677, label %1672, !llvm.loop !180

1677:                                             ; preds = %1672
  %1678 = add nuw nsw i64 %1671, 1
  %1679 = icmp eq i64 %1678, 256
  br i1 %1679, label %1680, label %1670

1680:                                             ; preds = %1687, %1677
  %1681 = phi i64 [ %1688, %1687 ], [ 0, %1677 ]
  br label %1682

1682:                                             ; preds = %1682, %1680
  %1683 = phi i64 [ 0, %1680 ], [ %1685, %1682 ]
  %1684 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %1681, i64 %1683
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1684, align 16, !tbaa !7
  %1685 = add nuw i64 %1683, 4
  %1686 = icmp eq i64 %1685, 256
  br i1 %1686, label %1687, label %1682, !llvm.loop !181

1687:                                             ; preds = %1682
  %1688 = add nuw nsw i64 %1681, 1
  %1689 = icmp eq i64 %1688, 256
  br i1 %1689, label %1690, label %1680

1690:                                             ; preds = %1697, %1687
  %1691 = phi i64 [ %1698, %1697 ], [ 0, %1687 ]
  br label %1692

1692:                                             ; preds = %1692, %1690
  %1693 = phi i64 [ 0, %1690 ], [ %1695, %1692 ]
  %1694 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %1691, i64 %1693
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %1694, align 16, !tbaa !7
  %1695 = add nuw i64 %1693, 4
  %1696 = icmp eq i64 %1695, 256
  br i1 %1696, label %1697, label %1692, !llvm.loop !182

1697:                                             ; preds = %1692
  %1698 = add nuw nsw i64 %1691, 1
  %1699 = icmp eq i64 %1698, 256
  br i1 %1699, label %3611, label %1690

1700:                                             ; preds = %1667
  %1701 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.58) #12
  %1702 = icmp eq i32 %1701, 0
  br i1 %1702, label %1703, label %1741

1703:                                             ; preds = %1703, %1700
  %1704 = phi i64 [ %1706, %1703 ], [ 0, %1700 ]
  %1705 = getelementptr inbounds float, ptr @global_data, i64 %1704
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1705, align 16, !tbaa !7
  %1706 = add nuw i64 %1704, 4
  %1707 = icmp eq i64 %1706, 32000
  br i1 %1707, label %1708, label %1703, !llvm.loop !183

1708:                                             ; preds = %1708, %1703
  %1709 = phi i64 [ %1716, %1708 ], [ 0, %1703 ]
  %1710 = phi <4 x i64> [ %1717, %1708 ], [ <i64 0, i64 1, i64 2, i64 3>, %1703 ]
  %1711 = trunc <4 x i64> %1710 to <4 x i32>
  %1712 = add <4 x i32> %1711, <i32 1, i32 1, i32 1, i32 1>
  %1713 = sitofp <4 x i32> %1712 to <4 x float>
  %1714 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1713
  %1715 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1709
  store <4 x float> %1714, ptr %1715, align 16, !tbaa !7
  %1716 = add nuw i64 %1709, 4
  %1717 = add <4 x i64> %1710, <i64 4, i64 4, i64 4, i64 4>
  %1718 = icmp eq i64 %1716, 32000
  br i1 %1718, label %1719, label %1708, !llvm.loop !184

1719:                                             ; preds = %1719, %1708
  %1720 = phi i64 [ %1727, %1719 ], [ 0, %1708 ]
  %1721 = phi <4 x i64> [ %1728, %1719 ], [ <i64 0, i64 1, i64 2, i64 3>, %1708 ]
  %1722 = trunc <4 x i64> %1721 to <4 x i32>
  %1723 = add <4 x i32> %1722, <i32 1, i32 1, i32 1, i32 1>
  %1724 = sitofp <4 x i32> %1723 to <4 x float>
  %1725 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1724
  %1726 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1720
  store <4 x float> %1725, ptr %1726, align 16, !tbaa !7
  %1727 = add nuw i64 %1720, 4
  %1728 = add <4 x i64> %1721, <i64 4, i64 4, i64 4, i64 4>
  %1729 = icmp eq i64 %1727, 32000
  br i1 %1729, label %1730, label %1719, !llvm.loop !185

1730:                                             ; preds = %1730, %1719
  %1731 = phi i64 [ %1738, %1730 ], [ 0, %1719 ]
  %1732 = phi <4 x i64> [ %1739, %1730 ], [ <i64 0, i64 1, i64 2, i64 3>, %1719 ]
  %1733 = trunc <4 x i64> %1732 to <4 x i32>
  %1734 = add <4 x i32> %1733, <i32 1, i32 1, i32 1, i32 1>
  %1735 = sitofp <4 x i32> %1734 to <4 x float>
  %1736 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1735
  %1737 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1731
  store <4 x float> %1736, ptr %1737, align 16, !tbaa !7
  %1738 = add nuw i64 %1731, 4
  %1739 = add <4 x i64> %1732, <i64 4, i64 4, i64 4, i64 4>
  %1740 = icmp eq i64 %1738, 32000
  br i1 %1740, label %3611, label %1730, !llvm.loop !186

1741:                                             ; preds = %1700
  %1742 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.59) #12
  %1743 = icmp eq i32 %1742, 0
  br i1 %1743, label %1744, label %1792

1744:                                             ; preds = %1744, %1741
  %1745 = phi i64 [ %1747, %1744 ], [ 0, %1741 ]
  %1746 = getelementptr inbounds float, ptr @global_data, i64 %1745
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1746, align 16, !tbaa !7
  %1747 = add nuw i64 %1745, 4
  %1748 = icmp eq i64 %1747, 32000
  br i1 %1748, label %1749, label %1744, !llvm.loop !187

1749:                                             ; preds = %1749, %1744
  %1750 = phi i64 [ %1752, %1749 ], [ 0, %1744 ]
  %1751 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1750
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1751, align 16, !tbaa !7
  %1752 = add nuw i64 %1750, 4
  %1753 = icmp eq i64 %1752, 32000
  br i1 %1753, label %1754, label %1749, !llvm.loop !188

1754:                                             ; preds = %1754, %1749
  %1755 = phi i64 [ %1757, %1754 ], [ 0, %1749 ]
  %1756 = getelementptr inbounds float, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 16000), i64 %1755
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, ptr %1756, align 16, !tbaa !7
  %1757 = add nuw i64 %1755, 4
  %1758 = icmp eq i64 %1757, 32000
  br i1 %1758, label %1759, label %1754, !llvm.loop !189

1759:                                             ; preds = %1759, %1754
  %1760 = phi i64 [ %1767, %1759 ], [ 0, %1754 ]
  %1761 = phi <4 x i64> [ %1768, %1759 ], [ <i64 0, i64 1, i64 2, i64 3>, %1754 ]
  %1762 = trunc <4 x i64> %1761 to <4 x i32>
  %1763 = add <4 x i32> %1762, <i32 1, i32 1, i32 1, i32 1>
  %1764 = sitofp <4 x i32> %1763 to <4 x float>
  %1765 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1764
  %1766 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1760
  store <4 x float> %1765, ptr %1766, align 16, !tbaa !7
  %1767 = add nuw i64 %1760, 4
  %1768 = add <4 x i64> %1761, <i64 4, i64 4, i64 4, i64 4>
  %1769 = icmp eq i64 %1767, 32000
  br i1 %1769, label %1770, label %1759, !llvm.loop !190

1770:                                             ; preds = %1770, %1759
  %1771 = phi i64 [ %1778, %1770 ], [ 0, %1759 ]
  %1772 = phi <4 x i64> [ %1779, %1770 ], [ <i64 0, i64 1, i64 2, i64 3>, %1759 ]
  %1773 = trunc <4 x i64> %1772 to <4 x i32>
  %1774 = add <4 x i32> %1773, <i32 1, i32 1, i32 1, i32 1>
  %1775 = sitofp <4 x i32> %1774 to <4 x float>
  %1776 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1775
  %1777 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1771
  store <4 x float> %1776, ptr %1777, align 16, !tbaa !7
  %1778 = add nuw i64 %1771, 4
  %1779 = add <4 x i64> %1772, <i64 4, i64 4, i64 4, i64 4>
  %1780 = icmp eq i64 %1778, 32000
  br i1 %1780, label %1781, label %1770, !llvm.loop !191

1781:                                             ; preds = %1781, %1770
  %1782 = phi i64 [ %1789, %1781 ], [ 0, %1770 ]
  %1783 = phi <4 x i64> [ %1790, %1781 ], [ <i64 0, i64 1, i64 2, i64 3>, %1770 ]
  %1784 = trunc <4 x i64> %1783 to <4 x i32>
  %1785 = add <4 x i32> %1784, <i32 1, i32 1, i32 1, i32 1>
  %1786 = sitofp <4 x i32> %1785 to <4 x float>
  %1787 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1786
  %1788 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1782
  store <4 x float> %1787, ptr %1788, align 16, !tbaa !7
  %1789 = add nuw i64 %1782, 4
  %1790 = add <4 x i64> %1783, <i64 4, i64 4, i64 4, i64 4>
  %1791 = icmp eq i64 %1789, 32000
  br i1 %1791, label %3611, label %1781, !llvm.loop !192

1792:                                             ; preds = %1741
  %1793 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.60) #12
  %1794 = icmp eq i32 %1793, 0
  br i1 %1794, label %1795, label %1843

1795:                                             ; preds = %1795, %1792
  %1796 = phi i64 [ %1798, %1795 ], [ 0, %1792 ]
  %1797 = getelementptr inbounds float, ptr @global_data, i64 %1796
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, ptr %1797, align 16, !tbaa !7
  %1798 = add nuw i64 %1796, 4
  %1799 = icmp eq i64 %1798, 32000
  br i1 %1799, label %1800, label %1795, !llvm.loop !193

1800:                                             ; preds = %1800, %1795
  %1801 = phi i64 [ %1803, %1800 ], [ 0, %1795 ]
  %1802 = getelementptr inbounds float, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 16000), i64 %1801
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1802, align 16, !tbaa !7
  %1803 = add nuw i64 %1801, 4
  %1804 = icmp eq i64 %1803, 32000
  br i1 %1804, label %1805, label %1800, !llvm.loop !194

1805:                                             ; preds = %1805, %1800
  %1806 = phi i64 [ %1808, %1805 ], [ 0, %1800 ]
  %1807 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1806
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1807, align 16, !tbaa !7
  %1808 = add nuw i64 %1806, 4
  %1809 = icmp eq i64 %1808, 32000
  br i1 %1809, label %1810, label %1805, !llvm.loop !195

1810:                                             ; preds = %1810, %1805
  %1811 = phi i64 [ %1818, %1810 ], [ 0, %1805 ]
  %1812 = phi <4 x i64> [ %1819, %1810 ], [ <i64 0, i64 1, i64 2, i64 3>, %1805 ]
  %1813 = trunc <4 x i64> %1812 to <4 x i32>
  %1814 = add <4 x i32> %1813, <i32 1, i32 1, i32 1, i32 1>
  %1815 = sitofp <4 x i32> %1814 to <4 x float>
  %1816 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1815
  %1817 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1811
  store <4 x float> %1816, ptr %1817, align 16, !tbaa !7
  %1818 = add nuw i64 %1811, 4
  %1819 = add <4 x i64> %1812, <i64 4, i64 4, i64 4, i64 4>
  %1820 = icmp eq i64 %1818, 32000
  br i1 %1820, label %1821, label %1810, !llvm.loop !196

1821:                                             ; preds = %1821, %1810
  %1822 = phi i64 [ %1829, %1821 ], [ 0, %1810 ]
  %1823 = phi <4 x i64> [ %1830, %1821 ], [ <i64 0, i64 1, i64 2, i64 3>, %1810 ]
  %1824 = trunc <4 x i64> %1823 to <4 x i32>
  %1825 = add <4 x i32> %1824, <i32 1, i32 1, i32 1, i32 1>
  %1826 = sitofp <4 x i32> %1825 to <4 x float>
  %1827 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1826
  %1828 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1822
  store <4 x float> %1827, ptr %1828, align 16, !tbaa !7
  %1829 = add nuw i64 %1822, 4
  %1830 = add <4 x i64> %1823, <i64 4, i64 4, i64 4, i64 4>
  %1831 = icmp eq i64 %1829, 32000
  br i1 %1831, label %1832, label %1821, !llvm.loop !197

1832:                                             ; preds = %1832, %1821
  %1833 = phi i64 [ %1840, %1832 ], [ 0, %1821 ]
  %1834 = phi <4 x i64> [ %1841, %1832 ], [ <i64 0, i64 1, i64 2, i64 3>, %1821 ]
  %1835 = trunc <4 x i64> %1834 to <4 x i32>
  %1836 = add <4 x i32> %1835, <i32 1, i32 1, i32 1, i32 1>
  %1837 = sitofp <4 x i32> %1836 to <4 x float>
  %1838 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1837
  %1839 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1833
  store <4 x float> %1838, ptr %1839, align 16, !tbaa !7
  %1840 = add nuw i64 %1833, 4
  %1841 = add <4 x i64> %1834, <i64 4, i64 4, i64 4, i64 4>
  %1842 = icmp eq i64 %1840, 32000
  br i1 %1842, label %3611, label %1832, !llvm.loop !198

1843:                                             ; preds = %1792
  %1844 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.61) #12
  %1845 = icmp eq i32 %1844, 0
  br i1 %1845, label %1846, label %1894

1846:                                             ; preds = %1846, %1843
  %1847 = phi i64 [ %1849, %1846 ], [ 0, %1843 ]
  %1848 = getelementptr inbounds float, ptr @global_data, i64 %1847
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, ptr %1848, align 16, !tbaa !7
  %1849 = add nuw i64 %1847, 4
  %1850 = icmp eq i64 %1849, 32000
  br i1 %1850, label %1851, label %1846, !llvm.loop !199

1851:                                             ; preds = %1851, %1846
  %1852 = phi i64 [ %1854, %1851 ], [ 0, %1846 ]
  %1853 = getelementptr inbounds float, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 16000), i64 %1852
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1853, align 16, !tbaa !7
  %1854 = add nuw i64 %1852, 4
  %1855 = icmp eq i64 %1854, 32000
  br i1 %1855, label %1856, label %1851, !llvm.loop !200

1856:                                             ; preds = %1856, %1851
  %1857 = phi i64 [ %1859, %1856 ], [ 0, %1851 ]
  %1858 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1857
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1858, align 16, !tbaa !7
  %1859 = add nuw i64 %1857, 4
  %1860 = icmp eq i64 %1859, 32000
  br i1 %1860, label %1861, label %1856, !llvm.loop !201

1861:                                             ; preds = %1861, %1856
  %1862 = phi i64 [ %1869, %1861 ], [ 0, %1856 ]
  %1863 = phi <4 x i64> [ %1870, %1861 ], [ <i64 0, i64 1, i64 2, i64 3>, %1856 ]
  %1864 = trunc <4 x i64> %1863 to <4 x i32>
  %1865 = add <4 x i32> %1864, <i32 1, i32 1, i32 1, i32 1>
  %1866 = sitofp <4 x i32> %1865 to <4 x float>
  %1867 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1866
  %1868 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1862
  store <4 x float> %1867, ptr %1868, align 16, !tbaa !7
  %1869 = add nuw i64 %1862, 4
  %1870 = add <4 x i64> %1863, <i64 4, i64 4, i64 4, i64 4>
  %1871 = icmp eq i64 %1869, 32000
  br i1 %1871, label %1872, label %1861, !llvm.loop !202

1872:                                             ; preds = %1872, %1861
  %1873 = phi i64 [ %1880, %1872 ], [ 0, %1861 ]
  %1874 = phi <4 x i64> [ %1881, %1872 ], [ <i64 0, i64 1, i64 2, i64 3>, %1861 ]
  %1875 = trunc <4 x i64> %1874 to <4 x i32>
  %1876 = add <4 x i32> %1875, <i32 1, i32 1, i32 1, i32 1>
  %1877 = sitofp <4 x i32> %1876 to <4 x float>
  %1878 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1877
  %1879 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1873
  store <4 x float> %1878, ptr %1879, align 16, !tbaa !7
  %1880 = add nuw i64 %1873, 4
  %1881 = add <4 x i64> %1874, <i64 4, i64 4, i64 4, i64 4>
  %1882 = icmp eq i64 %1880, 32000
  br i1 %1882, label %1883, label %1872, !llvm.loop !203

1883:                                             ; preds = %1883, %1872
  %1884 = phi i64 [ %1891, %1883 ], [ 0, %1872 ]
  %1885 = phi <4 x i64> [ %1892, %1883 ], [ <i64 0, i64 1, i64 2, i64 3>, %1872 ]
  %1886 = trunc <4 x i64> %1885 to <4 x i32>
  %1887 = add <4 x i32> %1886, <i32 1, i32 1, i32 1, i32 1>
  %1888 = sitofp <4 x i32> %1887 to <4 x float>
  %1889 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1888
  %1890 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1884
  store <4 x float> %1889, ptr %1890, align 16, !tbaa !7
  %1891 = add nuw i64 %1884, 4
  %1892 = add <4 x i64> %1885, <i64 4, i64 4, i64 4, i64 4>
  %1893 = icmp eq i64 %1891, 32000
  br i1 %1893, label %3611, label %1883, !llvm.loop !204

1894:                                             ; preds = %1843
  %1895 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.62) #12
  %1896 = icmp eq i32 %1895, 0
  br i1 %1896, label %1897, label %1940

1897:                                             ; preds = %1897, %1894
  %1898 = phi i64 [ %1900, %1897 ], [ 0, %1894 ]
  %1899 = getelementptr inbounds float, ptr @global_data, i64 %1898
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1899, align 16, !tbaa !7
  %1900 = add nuw i64 %1898, 4
  %1901 = icmp eq i64 %1900, 32000
  br i1 %1901, label %1902, label %1897, !llvm.loop !205

1902:                                             ; preds = %1902, %1897
  %1903 = phi i64 [ %1905, %1902 ], [ 0, %1897 ]
  %1904 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1903
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1904, align 16, !tbaa !7
  %1905 = add nuw i64 %1903, 4
  %1906 = icmp eq i64 %1905, 32000
  br i1 %1906, label %1907, label %1902, !llvm.loop !206

1907:                                             ; preds = %1907, %1902
  %1908 = phi i64 [ %1915, %1907 ], [ 0, %1902 ]
  %1909 = phi <4 x i64> [ %1916, %1907 ], [ <i64 0, i64 1, i64 2, i64 3>, %1902 ]
  %1910 = trunc <4 x i64> %1909 to <4 x i32>
  %1911 = add <4 x i32> %1910, <i32 1, i32 1, i32 1, i32 1>
  %1912 = sitofp <4 x i32> %1911 to <4 x float>
  %1913 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1912
  %1914 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1908
  store <4 x float> %1913, ptr %1914, align 16, !tbaa !7
  %1915 = add nuw i64 %1908, 4
  %1916 = add <4 x i64> %1909, <i64 4, i64 4, i64 4, i64 4>
  %1917 = icmp eq i64 %1915, 32000
  br i1 %1917, label %1918, label %1907, !llvm.loop !207

1918:                                             ; preds = %1918, %1907
  %1919 = phi i64 [ %1926, %1918 ], [ 0, %1907 ]
  %1920 = phi <4 x i64> [ %1927, %1918 ], [ <i64 0, i64 1, i64 2, i64 3>, %1907 ]
  %1921 = trunc <4 x i64> %1920 to <4 x i32>
  %1922 = add <4 x i32> %1921, <i32 1, i32 1, i32 1, i32 1>
  %1923 = sitofp <4 x i32> %1922 to <4 x float>
  %1924 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1923
  %1925 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %1919
  store <4 x float> %1924, ptr %1925, align 16, !tbaa !7
  %1926 = add nuw i64 %1919, 4
  %1927 = add <4 x i64> %1920, <i64 4, i64 4, i64 4, i64 4>
  %1928 = icmp eq i64 %1926, 32000
  br i1 %1928, label %1929, label %1918, !llvm.loop !208

1929:                                             ; preds = %1929, %1918
  %1930 = phi i64 [ %1937, %1929 ], [ 0, %1918 ]
  %1931 = phi <4 x i64> [ %1938, %1929 ], [ <i64 0, i64 1, i64 2, i64 3>, %1918 ]
  %1932 = trunc <4 x i64> %1931 to <4 x i32>
  %1933 = add <4 x i32> %1932, <i32 1, i32 1, i32 1, i32 1>
  %1934 = sitofp <4 x i32> %1933 to <4 x float>
  %1935 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1934
  %1936 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %1930
  store <4 x float> %1935, ptr %1936, align 16, !tbaa !7
  %1937 = add nuw i64 %1930, 4
  %1938 = add <4 x i64> %1931, <i64 4, i64 4, i64 4, i64 4>
  %1939 = icmp eq i64 %1937, 32000
  br i1 %1939, label %3611, label %1929, !llvm.loop !209

1940:                                             ; preds = %1894
  %1941 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.63) #12
  %1942 = icmp eq i32 %1941, 0
  br i1 %1942, label %1943, label %1970

1943:                                             ; preds = %1943, %1940
  %1944 = phi i64 [ %1946, %1943 ], [ 0, %1940 ]
  %1945 = getelementptr inbounds float, ptr @global_data, i64 %1944
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1945, align 16, !tbaa !7
  %1946 = add nuw i64 %1944, 4
  %1947 = icmp eq i64 %1946, 32000
  br i1 %1947, label %1948, label %1943, !llvm.loop !210

1948:                                             ; preds = %1948, %1943
  %1949 = phi i64 [ %1956, %1948 ], [ 0, %1943 ]
  %1950 = phi <4 x i64> [ %1957, %1948 ], [ <i64 0, i64 1, i64 2, i64 3>, %1943 ]
  %1951 = trunc <4 x i64> %1950 to <4 x i32>
  %1952 = add <4 x i32> %1951, <i32 1, i32 1, i32 1, i32 1>
  %1953 = sitofp <4 x i32> %1952 to <4 x float>
  %1954 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1953
  %1955 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1949
  store <4 x float> %1954, ptr %1955, align 16, !tbaa !7
  %1956 = add nuw i64 %1949, 4
  %1957 = add <4 x i64> %1950, <i64 4, i64 4, i64 4, i64 4>
  %1958 = icmp eq i64 %1956, 32000
  br i1 %1958, label %1959, label %1948, !llvm.loop !211

1959:                                             ; preds = %1959, %1948
  %1960 = phi i64 [ %1967, %1959 ], [ 0, %1948 ]
  %1961 = phi <4 x i64> [ %1968, %1959 ], [ <i64 0, i64 1, i64 2, i64 3>, %1948 ]
  %1962 = trunc <4 x i64> %1961 to <4 x i32>
  %1963 = add <4 x i32> %1962, <i32 1, i32 1, i32 1, i32 1>
  %1964 = sitofp <4 x i32> %1963 to <4 x float>
  %1965 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1964
  %1966 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1960
  store <4 x float> %1965, ptr %1966, align 16, !tbaa !7
  %1967 = add nuw i64 %1960, 4
  %1968 = add <4 x i64> %1961, <i64 4, i64 4, i64 4, i64 4>
  %1969 = icmp eq i64 %1967, 32000
  br i1 %1969, label %3611, label %1959, !llvm.loop !212

1970:                                             ; preds = %1940
  %1971 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.64) #12
  %1972 = icmp eq i32 %1971, 0
  br i1 %1972, label %1973, label %2000

1973:                                             ; preds = %1973, %1970
  %1974 = phi i64 [ %1976, %1973 ], [ 0, %1970 ]
  %1975 = getelementptr inbounds float, ptr @global_data, i64 %1974
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1975, align 16, !tbaa !7
  %1976 = add nuw i64 %1974, 4
  %1977 = icmp eq i64 %1976, 32000
  br i1 %1977, label %1978, label %1973, !llvm.loop !213

1978:                                             ; preds = %1978, %1973
  %1979 = phi i64 [ %1986, %1978 ], [ 0, %1973 ]
  %1980 = phi <4 x i64> [ %1987, %1978 ], [ <i64 0, i64 1, i64 2, i64 3>, %1973 ]
  %1981 = trunc <4 x i64> %1980 to <4 x i32>
  %1982 = add <4 x i32> %1981, <i32 1, i32 1, i32 1, i32 1>
  %1983 = sitofp <4 x i32> %1982 to <4 x float>
  %1984 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1983
  %1985 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %1979
  store <4 x float> %1984, ptr %1985, align 16, !tbaa !7
  %1986 = add nuw i64 %1979, 4
  %1987 = add <4 x i64> %1980, <i64 4, i64 4, i64 4, i64 4>
  %1988 = icmp eq i64 %1986, 32000
  br i1 %1988, label %1989, label %1978, !llvm.loop !214

1989:                                             ; preds = %1989, %1978
  %1990 = phi i64 [ %1997, %1989 ], [ 0, %1978 ]
  %1991 = phi <4 x i64> [ %1998, %1989 ], [ <i64 0, i64 1, i64 2, i64 3>, %1978 ]
  %1992 = trunc <4 x i64> %1991 to <4 x i32>
  %1993 = add <4 x i32> %1992, <i32 1, i32 1, i32 1, i32 1>
  %1994 = sitofp <4 x i32> %1993 to <4 x float>
  %1995 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1994
  %1996 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %1990
  store <4 x float> %1995, ptr %1996, align 16, !tbaa !7
  %1997 = add nuw i64 %1990, 4
  %1998 = add <4 x i64> %1991, <i64 4, i64 4, i64 4, i64 4>
  %1999 = icmp eq i64 %1997, 32000
  br i1 %1999, label %3611, label %1989, !llvm.loop !215

2000:                                             ; preds = %1970
  %2001 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.65) #12
  %2002 = icmp eq i32 %2001, 0
  br i1 %2002, label %2003, label %2014

2003:                                             ; preds = %2000
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %2004

2004:                                             ; preds = %2004, %2003
  %2005 = phi i64 [ 0, %2003 ], [ %2007, %2004 ]
  %2006 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2005
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2006, align 16, !tbaa !7
  %2007 = add nuw i64 %2005, 4
  %2008 = icmp eq i64 %2007, 32000
  br i1 %2008, label %2009, label %2004, !llvm.loop !216

2009:                                             ; preds = %2009, %2004
  %2010 = phi i64 [ %2012, %2009 ], [ 0, %2004 ]
  %2011 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2010
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2011, align 16, !tbaa !7
  %2012 = add nuw i64 %2010, 4
  %2013 = icmp eq i64 %2012, 32000
  br i1 %2013, label %3611, label %2009, !llvm.loop !217

2014:                                             ; preds = %2000
  %2015 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.66) #12
  %2016 = icmp eq i32 %2015, 0
  br i1 %2016, label %2017, label %2023

2017:                                             ; preds = %2014
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %2018

2018:                                             ; preds = %2018, %2017
  %2019 = phi i64 [ 0, %2017 ], [ %2021, %2018 ]
  %2020 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2019
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2020, align 16, !tbaa !7
  %2021 = add nuw i64 %2019, 4
  %2022 = icmp eq i64 %2021, 32000
  br i1 %2022, label %3611, label %2018, !llvm.loop !218

2023:                                             ; preds = %2014
  %2024 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.67) #12
  %2025 = icmp eq i32 %2024, 0
  br i1 %2025, label %2026, label %2032

2026:                                             ; preds = %2023
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %2027

2027:                                             ; preds = %2027, %2026
  %2028 = phi i64 [ 0, %2026 ], [ %2030, %2027 ]
  %2029 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2028
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2029, align 16, !tbaa !7
  %2030 = add nuw i64 %2028, 4
  %2031 = icmp eq i64 %2030, 32000
  br i1 %2031, label %3611, label %2027, !llvm.loop !219

2032:                                             ; preds = %2023
  %2033 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.68) #12
  %2034 = icmp eq i32 %2033, 0
  br i1 %2034, label %2035, label %2046

2035:                                             ; preds = %2035, %2032
  %2036 = phi i64 [ %2043, %2035 ], [ 0, %2032 ]
  %2037 = phi <4 x i64> [ %2044, %2035 ], [ <i64 0, i64 1, i64 2, i64 3>, %2032 ]
  %2038 = trunc <4 x i64> %2037 to <4 x i32>
  %2039 = add <4 x i32> %2038, <i32 1, i32 1, i32 1, i32 1>
  %2040 = sitofp <4 x i32> %2039 to <4 x float>
  %2041 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2040
  %2042 = getelementptr inbounds float, ptr @global_data, i64 %2036
  store <4 x float> %2041, ptr %2042, align 16, !tbaa !7
  %2043 = add nuw i64 %2036, 4
  %2044 = add <4 x i64> %2037, <i64 4, i64 4, i64 4, i64 4>
  %2045 = icmp eq i64 %2043, 32000
  br i1 %2045, label %3611, label %2035, !llvm.loop !220

2046:                                             ; preds = %2032
  %2047 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.69) #12
  %2048 = icmp eq i32 %2047, 0
  br i1 %2048, label %2049, label %2089

2049:                                             ; preds = %2056, %2046
  %2050 = phi i64 [ %2057, %2056 ], [ 0, %2046 ]
  br label %2051

2051:                                             ; preds = %2051, %2049
  %2052 = phi i64 [ 0, %2049 ], [ %2054, %2051 ]
  %2053 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %2050, i64 %2052
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2053, align 16, !tbaa !7
  %2054 = add nuw i64 %2052, 4
  %2055 = icmp eq i64 %2054, 256
  br i1 %2055, label %2056, label %2051, !llvm.loop !221

2056:                                             ; preds = %2051
  %2057 = add nuw nsw i64 %2050, 1
  %2058 = icmp eq i64 %2057, 256
  br i1 %2058, label %2059, label %2049

2059:                                             ; preds = %2072, %2056
  %2060 = phi i64 [ %2061, %2072 ], [ 0, %2056 ]
  %2061 = add nuw nsw i64 %2060, 1
  %2062 = trunc i64 %2061 to i32
  %2063 = sitofp i32 %2062 to float
  %2064 = fdiv float 1.000000e+00, %2063
  %2065 = insertelement <4 x float> poison, float %2064, i64 0
  %2066 = shufflevector <4 x float> %2065, <4 x float> poison, <4 x i32> zeroinitializer
  br label %2067

2067:                                             ; preds = %2067, %2059
  %2068 = phi i64 [ 0, %2059 ], [ %2070, %2067 ]
  %2069 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %2060, i64 %2068
  store <4 x float> %2066, ptr %2069, align 16, !tbaa !7
  %2070 = add nuw i64 %2068, 4
  %2071 = icmp eq i64 %2070, 256
  br i1 %2071, label %2072, label %2067, !llvm.loop !222

2072:                                             ; preds = %2067
  %2073 = icmp eq i64 %2061, 256
  br i1 %2073, label %2074, label %2059

2074:                                             ; preds = %2087, %2072
  %2075 = phi i64 [ %2076, %2087 ], [ 0, %2072 ]
  %2076 = add nuw nsw i64 %2075, 1
  %2077 = trunc i64 %2076 to i32
  %2078 = sitofp i32 %2077 to float
  %2079 = fdiv float 1.000000e+00, %2078
  %2080 = insertelement <4 x float> poison, float %2079, i64 0
  %2081 = shufflevector <4 x float> %2080, <4 x float> poison, <4 x i32> zeroinitializer
  br label %2082

2082:                                             ; preds = %2082, %2074
  %2083 = phi i64 [ 0, %2074 ], [ %2085, %2082 ]
  %2084 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %2075, i64 %2083
  store <4 x float> %2081, ptr %2084, align 16, !tbaa !7
  %2085 = add nuw i64 %2083, 4
  %2086 = icmp eq i64 %2085, 256
  br i1 %2086, label %2087, label %2082, !llvm.loop !223

2087:                                             ; preds = %2082
  %2088 = icmp eq i64 %2076, 256
  br i1 %2088, label %3611, label %2074

2089:                                             ; preds = %2046
  %2090 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.70) #12
  %2091 = icmp eq i32 %2090, 0
  br i1 %2091, label %2092, label %2093

2092:                                             ; preds = %2089
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(262144) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i8 0, i64 262144, i1 false), !tbaa !7
  br label %3611

2093:                                             ; preds = %2089
  %2094 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.71) #12
  %2095 = icmp eq i32 %2094, 0
  br i1 %2095, label %2096, label %2097

2096:                                             ; preds = %2093
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(262144) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i8 0, i64 262144, i1 false), !tbaa !7
  br label %3611

2097:                                             ; preds = %2093
  %2098 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.72) #12
  %2099 = icmp eq i32 %2098, 0
  br i1 %2099, label %2100, label %2111

2100:                                             ; preds = %2100, %2097
  %2101 = phi i64 [ %2108, %2100 ], [ 0, %2097 ]
  %2102 = phi <4 x i64> [ %2109, %2100 ], [ <i64 0, i64 1, i64 2, i64 3>, %2097 ]
  %2103 = trunc <4 x i64> %2102 to <4 x i32>
  %2104 = add <4 x i32> %2103, <i32 1, i32 1, i32 1, i32 1>
  %2105 = sitofp <4 x i32> %2104 to <4 x float>
  %2106 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2105
  %2107 = getelementptr inbounds float, ptr @global_data, i64 %2101
  store <4 x float> %2106, ptr %2107, align 16, !tbaa !7
  %2108 = add nuw i64 %2101, 4
  %2109 = add <4 x i64> %2102, <i64 4, i64 4, i64 4, i64 4>
  %2110 = icmp eq i64 %2108, 32000
  br i1 %2110, label %3611, label %2100, !llvm.loop !224

2111:                                             ; preds = %2097
  %2112 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.73) #12
  %2113 = icmp eq i32 %2112, 0
  br i1 %2113, label %2114, label %2119

2114:                                             ; preds = %2114, %2111
  %2115 = phi i64 [ %2117, %2114 ], [ 0, %2111 ]
  %2116 = getelementptr inbounds float, ptr @global_data, i64 %2115
  store <4 x float> <float 0x3FF0000100000000, float 0x3FF0000100000000, float 0x3FF0000100000000, float 0x3FF0000100000000>, ptr %2116, align 16, !tbaa !7
  %2117 = add nuw i64 %2115, 4
  %2118 = icmp eq i64 %2117, 32000
  br i1 %2118, label %3611, label %2114, !llvm.loop !225

2119:                                             ; preds = %2111
  %2120 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.74) #12
  %2121 = icmp eq i32 %2120, 0
  br i1 %2121, label %2122, label %2144

2122:                                             ; preds = %2122, %2119
  %2123 = phi i64 [ %2130, %2122 ], [ 0, %2119 ]
  %2124 = phi <4 x i64> [ %2131, %2122 ], [ <i64 0, i64 1, i64 2, i64 3>, %2119 ]
  %2125 = trunc <4 x i64> %2124 to <4 x i32>
  %2126 = add <4 x i32> %2125, <i32 1, i32 1, i32 1, i32 1>
  %2127 = sitofp <4 x i32> %2126 to <4 x float>
  %2128 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2127
  %2129 = getelementptr inbounds float, ptr @global_data, i64 %2123
  store <4 x float> %2128, ptr %2129, align 16, !tbaa !7
  %2130 = add nuw i64 %2123, 4
  %2131 = add <4 x i64> %2124, <i64 4, i64 4, i64 4, i64 4>
  %2132 = icmp eq i64 %2130, 32000
  br i1 %2132, label %2133, label %2122, !llvm.loop !226

2133:                                             ; preds = %2133, %2122
  %2134 = phi i64 [ %2141, %2133 ], [ 0, %2122 ]
  %2135 = phi <4 x i64> [ %2142, %2133 ], [ <i64 0, i64 1, i64 2, i64 3>, %2122 ]
  %2136 = trunc <4 x i64> %2135 to <4 x i32>
  %2137 = add <4 x i32> %2136, <i32 1, i32 1, i32 1, i32 1>
  %2138 = sitofp <4 x i32> %2137 to <4 x float>
  %2139 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2138
  %2140 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2134
  store <4 x float> %2139, ptr %2140, align 16, !tbaa !7
  %2141 = add nuw i64 %2134, 4
  %2142 = add <4 x i64> %2135, <i64 4, i64 4, i64 4, i64 4>
  %2143 = icmp eq i64 %2141, 32000
  br i1 %2143, label %3611, label %2133, !llvm.loop !227

2144:                                             ; preds = %2119
  %2145 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.75) #12
  %2146 = icmp eq i32 %2145, 0
  br i1 %2146, label %2147, label %2158

2147:                                             ; preds = %2147, %2144
  %2148 = phi i64 [ %2155, %2147 ], [ 0, %2144 ]
  %2149 = phi <4 x i64> [ %2156, %2147 ], [ <i64 0, i64 1, i64 2, i64 3>, %2144 ]
  %2150 = trunc <4 x i64> %2149 to <4 x i32>
  %2151 = add <4 x i32> %2150, <i32 1, i32 1, i32 1, i32 1>
  %2152 = sitofp <4 x i32> %2151 to <4 x float>
  %2153 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2152
  %2154 = getelementptr inbounds float, ptr @global_data, i64 %2148
  store <4 x float> %2153, ptr %2154, align 16, !tbaa !7
  %2155 = add nuw i64 %2148, 4
  %2156 = add <4 x i64> %2149, <i64 4, i64 4, i64 4, i64 4>
  %2157 = icmp eq i64 %2155, 32000
  br i1 %2157, label %3611, label %2147, !llvm.loop !228

2158:                                             ; preds = %2144
  %2159 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.76) #12
  %2160 = icmp eq i32 %2159, 0
  br i1 %2160, label %2161, label %2172

2161:                                             ; preds = %2161, %2158
  %2162 = phi i64 [ %2169, %2161 ], [ 0, %2158 ]
  %2163 = phi <4 x i64> [ %2170, %2161 ], [ <i64 0, i64 1, i64 2, i64 3>, %2158 ]
  %2164 = trunc <4 x i64> %2163 to <4 x i32>
  %2165 = add <4 x i32> %2164, <i32 1, i32 1, i32 1, i32 1>
  %2166 = sitofp <4 x i32> %2165 to <4 x float>
  %2167 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2166
  %2168 = getelementptr inbounds float, ptr @global_data, i64 %2162
  store <4 x float> %2167, ptr %2168, align 16, !tbaa !7
  %2169 = add nuw i64 %2162, 4
  %2170 = add <4 x i64> %2163, <i64 4, i64 4, i64 4, i64 4>
  %2171 = icmp eq i64 %2169, 32000
  br i1 %2171, label %3611, label %2161, !llvm.loop !229

2172:                                             ; preds = %2158
  %2173 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.77) #12
  %2174 = icmp eq i32 %2173, 0
  br i1 %2174, label %2175, label %2186

2175:                                             ; preds = %2175, %2172
  %2176 = phi i64 [ %2183, %2175 ], [ 0, %2172 ]
  %2177 = phi <4 x i64> [ %2184, %2175 ], [ <i64 0, i64 1, i64 2, i64 3>, %2172 ]
  %2178 = trunc <4 x i64> %2177 to <4 x i32>
  %2179 = add <4 x i32> %2178, <i32 1, i32 1, i32 1, i32 1>
  %2180 = sitofp <4 x i32> %2179 to <4 x float>
  %2181 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2180
  %2182 = getelementptr inbounds float, ptr @global_data, i64 %2176
  store <4 x float> %2181, ptr %2182, align 16, !tbaa !7
  %2183 = add nuw i64 %2176, 4
  %2184 = add <4 x i64> %2177, <i64 4, i64 4, i64 4, i64 4>
  %2185 = icmp eq i64 %2183, 32000
  br i1 %2185, label %3611, label %2175, !llvm.loop !230

2186:                                             ; preds = %2172
  %2187 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.78) #12
  %2188 = icmp eq i32 %2187, 0
  br i1 %2188, label %3611, label %2189

2189:                                             ; preds = %2186
  %2190 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.79) #12
  %2191 = icmp eq i32 %2190, 0
  br i1 %2191, label %2192, label %2204

2192:                                             ; preds = %2192, %2189
  %2193 = phi i64 [ %2200, %2192 ], [ 0, %2189 ]
  %2194 = phi <4 x i64> [ %2201, %2192 ], [ <i64 0, i64 1, i64 2, i64 3>, %2189 ]
  %2195 = trunc <4 x i64> %2194 to <4 x i32>
  %2196 = add <4 x i32> %2195, <i32 1, i32 1, i32 1, i32 1>
  %2197 = sitofp <4 x i32> %2196 to <4 x float>
  %2198 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2197
  %2199 = getelementptr inbounds float, ptr @global_data, i64 %2193
  store <4 x float> %2198, ptr %2199, align 16, !tbaa !7
  %2200 = add nuw i64 %2193, 4
  %2201 = add <4 x i64> %2194, <i64 4, i64 4, i64 4, i64 4>
  %2202 = icmp eq i64 %2200, 32000
  br i1 %2202, label %2203, label %2192, !llvm.loop !231

2203:                                             ; preds = %2192
  store float -2.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 31999), align 4, !tbaa !7
  br label %3611

2204:                                             ; preds = %2189
  %2205 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.80) #12
  %2206 = icmp eq i32 %2205, 0
  br i1 %2206, label %2207, label %2241

2207:                                             ; preds = %2204
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), i8 0, i64 128000, i1 false), !tbaa !7
  br label %2208

2208:                                             ; preds = %2208, %2207
  %2209 = phi i64 [ 0, %2207 ], [ %2216, %2208 ]
  %2210 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %2207 ], [ %2217, %2208 ]
  %2211 = trunc <4 x i64> %2210 to <4 x i32>
  %2212 = add <4 x i32> %2211, <i32 1, i32 1, i32 1, i32 1>
  %2213 = sitofp <4 x i32> %2212 to <4 x float>
  %2214 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2213
  %2215 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2209
  store <4 x float> %2214, ptr %2215, align 16, !tbaa !7
  %2216 = add nuw i64 %2209, 4
  %2217 = add <4 x i64> %2210, <i64 4, i64 4, i64 4, i64 4>
  %2218 = icmp eq i64 %2216, 32000
  br i1 %2218, label %2219, label %2208, !llvm.loop !232

2219:                                             ; preds = %2219, %2208
  %2220 = phi i64 [ %2227, %2219 ], [ 0, %2208 ]
  %2221 = phi <4 x i64> [ %2228, %2219 ], [ <i64 0, i64 1, i64 2, i64 3>, %2208 ]
  %2222 = trunc <4 x i64> %2221 to <4 x i32>
  %2223 = add <4 x i32> %2222, <i32 1, i32 1, i32 1, i32 1>
  %2224 = sitofp <4 x i32> %2223 to <4 x float>
  %2225 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2224
  %2226 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2220
  store <4 x float> %2225, ptr %2226, align 16, !tbaa !7
  %2227 = add nuw i64 %2220, 4
  %2228 = add <4 x i64> %2221, <i64 4, i64 4, i64 4, i64 4>
  %2229 = icmp eq i64 %2227, 32000
  br i1 %2229, label %2230, label %2219, !llvm.loop !233

2230:                                             ; preds = %2230, %2219
  %2231 = phi i64 [ %2238, %2230 ], [ 0, %2219 ]
  %2232 = phi <4 x i64> [ %2239, %2230 ], [ <i64 0, i64 1, i64 2, i64 3>, %2219 ]
  %2233 = trunc <4 x i64> %2232 to <4 x i32>
  %2234 = add <4 x i32> %2233, <i32 1, i32 1, i32 1, i32 1>
  %2235 = sitofp <4 x i32> %2234 to <4 x float>
  %2236 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2235
  %2237 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %2231
  store <4 x float> %2236, ptr %2237, align 16, !tbaa !7
  %2238 = add nuw i64 %2231, 4
  %2239 = add <4 x i64> %2232, <i64 4, i64 4, i64 4, i64 4>
  %2240 = icmp eq i64 %2238, 32000
  br i1 %2240, label %3611, label %2230, !llvm.loop !234

2241:                                             ; preds = %2204
  %2242 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.81) #12
  %2243 = icmp eq i32 %2242, 0
  br i1 %2243, label %2244, label %2260

2244:                                             ; preds = %2257, %2241
  %2245 = phi i64 [ %2246, %2257 ], [ 0, %2241 ]
  %2246 = add nuw nsw i64 %2245, 1
  %2247 = trunc i64 %2246 to i32
  %2248 = sitofp i32 %2247 to float
  %2249 = fdiv float 1.000000e+00, %2248
  %2250 = insertelement <4 x float> poison, float %2249, i64 0
  %2251 = shufflevector <4 x float> %2250, <4 x float> poison, <4 x i32> zeroinitializer
  br label %2252

2252:                                             ; preds = %2252, %2244
  %2253 = phi i64 [ 0, %2244 ], [ %2255, %2252 ]
  %2254 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %2245, i64 %2253
  store <4 x float> %2251, ptr %2254, align 16, !tbaa !7
  %2255 = add nuw i64 %2253, 4
  %2256 = icmp eq i64 %2255, 256
  br i1 %2256, label %2257, label %2252, !llvm.loop !235

2257:                                             ; preds = %2252
  %2258 = icmp eq i64 %2246, 256
  br i1 %2258, label %2259, label %2244

2259:                                             ; preds = %2257
  store float 2.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 255, i64 255), align 4, !tbaa !7
  br label %3611

2260:                                             ; preds = %2241
  %2261 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.82) #12
  %2262 = icmp eq i32 %2261, 0
  br i1 %2262, label %2263, label %2274

2263:                                             ; preds = %2263, %2260
  %2264 = phi i64 [ %2271, %2263 ], [ 0, %2260 ]
  %2265 = phi <4 x i64> [ %2272, %2263 ], [ <i64 0, i64 1, i64 2, i64 3>, %2260 ]
  %2266 = trunc <4 x i64> %2265 to <4 x i32>
  %2267 = add <4 x i32> %2266, <i32 1, i32 1, i32 1, i32 1>
  %2268 = sitofp <4 x i32> %2267 to <4 x float>
  %2269 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2268
  %2270 = getelementptr inbounds float, ptr @global_data, i64 %2264
  store <4 x float> %2269, ptr %2270, align 16, !tbaa !7
  %2271 = add nuw i64 %2264, 4
  %2272 = add <4 x i64> %2265, <i64 4, i64 4, i64 4, i64 4>
  %2273 = icmp eq i64 %2271, 32000
  br i1 %2273, label %3611, label %2263, !llvm.loop !236

2274:                                             ; preds = %2260
  %2275 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.83) #12
  %2276 = icmp eq i32 %2275, 0
  br i1 %2276, label %2277, label %2290

2277:                                             ; preds = %2277, %2274
  %2278 = phi i64 [ %2286, %2277 ], [ 0, %2274 ]
  %2279 = phi <4 x i64> [ %2287, %2277 ], [ <i64 0, i64 1, i64 2, i64 3>, %2274 ]
  %2280 = add nuw nsw <4 x i64> %2279, <i64 1, i64 1, i64 1, i64 1>
  %2281 = mul nuw nsw <4 x i64> %2280, %2280
  %2282 = trunc <4 x i64> %2281 to <4 x i32>
  %2283 = sitofp <4 x i32> %2282 to <4 x float>
  %2284 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2283
  %2285 = getelementptr inbounds float, ptr @global_data, i64 %2278
  store <4 x float> %2284, ptr %2285, align 16, !tbaa !7
  %2286 = add nuw i64 %2278, 4
  %2287 = add <4 x i64> %2279, <i64 4, i64 4, i64 4, i64 4>
  %2288 = icmp eq i64 %2286, 32000
  br i1 %2288, label %2289, label %2277, !llvm.loop !237

2289:                                             ; preds = %2277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), i8 0, i64 128000, i1 false), !tbaa !7
  br label %3611

2290:                                             ; preds = %2274
  %2291 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.84) #12
  %2292 = icmp eq i32 %2291, 0
  br i1 %2292, label %2293, label %2305

2293:                                             ; preds = %2293, %2290
  %2294 = phi i64 [ %2301, %2293 ], [ 0, %2290 ]
  %2295 = phi <4 x i64> [ %2302, %2293 ], [ <i64 0, i64 1, i64 2, i64 3>, %2290 ]
  %2296 = trunc <4 x i64> %2295 to <4 x i32>
  %2297 = add <4 x i32> %2296, <i32 1, i32 1, i32 1, i32 1>
  %2298 = sitofp <4 x i32> %2297 to <4 x float>
  %2299 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2298
  %2300 = getelementptr inbounds float, ptr @global_data, i64 %2294
  store <4 x float> %2299, ptr %2300, align 16, !tbaa !7
  %2301 = add nuw i64 %2294, 4
  %2302 = add <4 x i64> %2295, <i64 4, i64 4, i64 4, i64 4>
  %2303 = icmp eq i64 %2301, 32000
  br i1 %2303, label %2304, label %2293, !llvm.loop !238

2304:                                             ; preds = %2293
  store float -2.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 31999), align 4, !tbaa !7
  br label %3611

2305:                                             ; preds = %2290
  %2306 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.85) #12
  %2307 = icmp eq i32 %2306, 0
  br i1 %2307, label %2308, label %2314

2308:                                             ; preds = %2308, %2305
  %2309 = phi i64 [ %2311, %2308 ], [ 0, %2305 ]
  %2310 = getelementptr inbounds float, ptr @global_data, i64 %2309
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2310, align 16, !tbaa !7
  %2311 = add nuw i64 %2309, 4
  %2312 = icmp eq i64 %2311, 32000
  br i1 %2312, label %2313, label %2308, !llvm.loop !239

2313:                                             ; preds = %2308
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), i8 0, i64 128000, i1 false), !tbaa !7
  br label %3611

2314:                                             ; preds = %2305
  %2315 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.86) #12
  %2316 = icmp eq i32 %2315, 0
  br i1 %2316, label %2317, label %2323

2317:                                             ; preds = %2317, %2314
  %2318 = phi i64 [ %2320, %2317 ], [ 0, %2314 ]
  %2319 = getelementptr inbounds float, ptr @global_data, i64 %2318
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2319, align 16, !tbaa !7
  %2320 = add nuw i64 %2318, 4
  %2321 = icmp eq i64 %2320, 32000
  br i1 %2321, label %2322, label %2317, !llvm.loop !240

2322:                                             ; preds = %2317
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), i8 0, i64 128000, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 0), i8 0, i64 128000, i1 false), !tbaa !7
  br label %3611

2323:                                             ; preds = %2314
  %2324 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.87) #12
  %2325 = icmp eq i32 %2324, 0
  br i1 %2325, label %2326, label %2369

2326:                                             ; preds = %2326, %2323
  %2327 = phi i64 [ %2329, %2326 ], [ 0, %2323 ]
  %2328 = getelementptr inbounds float, ptr @global_data, i64 %2327
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2328, align 16, !tbaa !7
  %2329 = add nuw i64 %2327, 4
  %2330 = icmp eq i64 %2329, 32000
  br i1 %2330, label %2331, label %2326, !llvm.loop !241

2331:                                             ; preds = %2331, %2326
  %2332 = phi i64 [ %2334, %2331 ], [ 0, %2326 ]
  %2333 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2332
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2333, align 16, !tbaa !7
  %2334 = add nuw i64 %2332, 4
  %2335 = icmp eq i64 %2334, 32000
  br i1 %2335, label %2336, label %2331, !llvm.loop !242

2336:                                             ; preds = %2336, %2331
  %2337 = phi i64 [ %2344, %2336 ], [ 0, %2331 ]
  %2338 = phi <4 x i64> [ %2345, %2336 ], [ <i64 0, i64 1, i64 2, i64 3>, %2331 ]
  %2339 = trunc <4 x i64> %2338 to <4 x i32>
  %2340 = add <4 x i32> %2339, <i32 1, i32 1, i32 1, i32 1>
  %2341 = sitofp <4 x i32> %2340 to <4 x float>
  %2342 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2341
  %2343 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2337
  store <4 x float> %2342, ptr %2343, align 16, !tbaa !7
  %2344 = add nuw i64 %2337, 4
  %2345 = add <4 x i64> %2338, <i64 4, i64 4, i64 4, i64 4>
  %2346 = icmp eq i64 %2344, 32000
  br i1 %2346, label %2347, label %2336, !llvm.loop !243

2347:                                             ; preds = %2347, %2336
  %2348 = phi i64 [ %2355, %2347 ], [ 0, %2336 ]
  %2349 = phi <4 x i64> [ %2356, %2347 ], [ <i64 0, i64 1, i64 2, i64 3>, %2336 ]
  %2350 = trunc <4 x i64> %2349 to <4 x i32>
  %2351 = add <4 x i32> %2350, <i32 1, i32 1, i32 1, i32 1>
  %2352 = sitofp <4 x i32> %2351 to <4 x float>
  %2353 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2352
  %2354 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2348
  store <4 x float> %2353, ptr %2354, align 16, !tbaa !7
  %2355 = add nuw i64 %2348, 4
  %2356 = add <4 x i64> %2349, <i64 4, i64 4, i64 4, i64 4>
  %2357 = icmp eq i64 %2355, 32000
  br i1 %2357, label %2358, label %2347, !llvm.loop !244

2358:                                             ; preds = %2358, %2347
  %2359 = phi i64 [ %2366, %2358 ], [ 0, %2347 ]
  %2360 = phi <4 x i64> [ %2367, %2358 ], [ <i64 0, i64 1, i64 2, i64 3>, %2347 ]
  %2361 = trunc <4 x i64> %2360 to <4 x i32>
  %2362 = add <4 x i32> %2361, <i32 1, i32 1, i32 1, i32 1>
  %2363 = sitofp <4 x i32> %2362 to <4 x float>
  %2364 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2363
  %2365 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %2359
  store <4 x float> %2364, ptr %2365, align 16, !tbaa !7
  %2366 = add nuw i64 %2359, 4
  %2367 = add <4 x i64> %2360, <i64 4, i64 4, i64 4, i64 4>
  %2368 = icmp eq i64 %2366, 32000
  br i1 %2368, label %3611, label %2358, !llvm.loop !245

2369:                                             ; preds = %2323
  %2370 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.88) #12
  %2371 = icmp eq i32 %2370, 0
  br i1 %2371, label %2372, label %2384

2372:                                             ; preds = %2372, %2369
  %2373 = phi i64 [ %2380, %2372 ], [ 0, %2369 ]
  %2374 = phi <4 x i64> [ %2381, %2372 ], [ <i64 0, i64 1, i64 2, i64 3>, %2369 ]
  %2375 = trunc <4 x i64> %2374 to <4 x i32>
  %2376 = add <4 x i32> %2375, <i32 1, i32 1, i32 1, i32 1>
  %2377 = sitofp <4 x i32> %2376 to <4 x float>
  %2378 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2377
  %2379 = getelementptr inbounds float, ptr @global_data, i64 %2373
  store <4 x float> %2378, ptr %2379, align 16, !tbaa !7
  %2380 = add nuw i64 %2373, 4
  %2381 = add <4 x i64> %2374, <i64 4, i64 4, i64 4, i64 4>
  %2382 = icmp eq i64 %2380, 32000
  br i1 %2382, label %2383, label %2372, !llvm.loop !246

2383:                                             ; preds = %2372
  store float -1.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 31999), align 4, !tbaa !7
  br label %3611

2384:                                             ; preds = %2369
  %2385 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.89) #12
  %2386 = icmp eq i32 %2385, 0
  br i1 %2386, label %2387, label %2400

2387:                                             ; preds = %2387, %2384
  %2388 = phi i64 [ %2396, %2387 ], [ 0, %2384 ]
  %2389 = phi <4 x i64> [ %2397, %2387 ], [ <i64 0, i64 1, i64 2, i64 3>, %2384 ]
  %2390 = add nuw nsw <4 x i64> %2389, <i64 1, i64 1, i64 1, i64 1>
  %2391 = mul nuw nsw <4 x i64> %2390, %2390
  %2392 = trunc <4 x i64> %2391 to <4 x i32>
  %2393 = sitofp <4 x i32> %2392 to <4 x float>
  %2394 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2393
  %2395 = getelementptr inbounds float, ptr @global_data, i64 %2388
  store <4 x float> %2394, ptr %2395, align 16, !tbaa !7
  %2396 = add nuw i64 %2388, 4
  %2397 = add <4 x i64> %2389, <i64 4, i64 4, i64 4, i64 4>
  %2398 = icmp eq i64 %2396, 32000
  br i1 %2398, label %2399, label %2387, !llvm.loop !247

2399:                                             ; preds = %2387
  store float 2.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 31999), align 4, !tbaa !7
  br label %3611

2400:                                             ; preds = %2384
  %2401 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.90) #12
  %2402 = icmp eq i32 %2401, 0
  br i1 %2402, label %2403, label %2415

2403:                                             ; preds = %2400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %2404

2404:                                             ; preds = %2404, %2403
  %2405 = phi i64 [ 0, %2403 ], [ %2412, %2404 ]
  %2406 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %2403 ], [ %2413, %2404 ]
  %2407 = trunc <4 x i64> %2406 to <4 x i32>
  %2408 = add <4 x i32> %2407, <i32 1, i32 1, i32 1, i32 1>
  %2409 = sitofp <4 x i32> %2408 to <4 x float>
  %2410 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2409
  %2411 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2405
  store <4 x float> %2410, ptr %2411, align 16, !tbaa !7
  %2412 = add nuw i64 %2405, 4
  %2413 = add <4 x i64> %2406, <i64 4, i64 4, i64 4, i64 4>
  %2414 = icmp eq i64 %2412, 32000
  br i1 %2414, label %3611, label %2404, !llvm.loop !248

2415:                                             ; preds = %2400
  %2416 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.91) #12
  %2417 = icmp eq i32 %2416, 0
  br i1 %2417, label %2418, label %2440

2418:                                             ; preds = %2418, %2415
  %2419 = phi i64 [ %2426, %2418 ], [ 0, %2415 ]
  %2420 = phi <4 x i64> [ %2427, %2418 ], [ <i64 0, i64 1, i64 2, i64 3>, %2415 ]
  %2421 = trunc <4 x i64> %2420 to <4 x i32>
  %2422 = add <4 x i32> %2421, <i32 1, i32 1, i32 1, i32 1>
  %2423 = sitofp <4 x i32> %2422 to <4 x float>
  %2424 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2423
  %2425 = getelementptr inbounds float, ptr @global_data, i64 %2419
  store <4 x float> %2424, ptr %2425, align 16, !tbaa !7
  %2426 = add nuw i64 %2419, 4
  %2427 = add <4 x i64> %2420, <i64 4, i64 4, i64 4, i64 4>
  %2428 = icmp eq i64 %2426, 32000
  br i1 %2428, label %2429, label %2418, !llvm.loop !249

2429:                                             ; preds = %2429, %2418
  %2430 = phi i64 [ %2437, %2429 ], [ 0, %2418 ]
  %2431 = phi <4 x i64> [ %2438, %2429 ], [ <i64 0, i64 1, i64 2, i64 3>, %2418 ]
  %2432 = trunc <4 x i64> %2431 to <4 x i32>
  %2433 = add <4 x i32> %2432, <i32 1, i32 1, i32 1, i32 1>
  %2434 = sitofp <4 x i32> %2433 to <4 x float>
  %2435 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2434
  %2436 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2430
  store <4 x float> %2435, ptr %2436, align 16, !tbaa !7
  %2437 = add nuw i64 %2430, 4
  %2438 = add <4 x i64> %2431, <i64 4, i64 4, i64 4, i64 4>
  %2439 = icmp eq i64 %2437, 32000
  br i1 %2439, label %3611, label %2429, !llvm.loop !250

2440:                                             ; preds = %2415
  %2441 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.92) #12
  %2442 = icmp eq i32 %2441, 0
  br i1 %2442, label %2443, label %2468

2443:                                             ; preds = %2456, %2440
  %2444 = phi i64 [ %2445, %2456 ], [ 0, %2440 ]
  %2445 = add nuw nsw i64 %2444, 1
  %2446 = trunc i64 %2445 to i32
  %2447 = sitofp i32 %2446 to float
  %2448 = fdiv float 1.000000e+00, %2447
  %2449 = insertelement <4 x float> poison, float %2448, i64 0
  %2450 = shufflevector <4 x float> %2449, <4 x float> poison, <4 x i32> zeroinitializer
  br label %2451

2451:                                             ; preds = %2451, %2443
  %2452 = phi i64 [ 0, %2443 ], [ %2454, %2451 ]
  %2453 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %2444, i64 %2452
  store <4 x float> %2450, ptr %2453, align 16, !tbaa !7
  %2454 = add nuw i64 %2452, 4
  %2455 = icmp eq i64 %2454, 256
  br i1 %2455, label %2456, label %2451, !llvm.loop !251

2456:                                             ; preds = %2451
  %2457 = icmp eq i64 %2445, 256
  br i1 %2457, label %2458, label %2443

2458:                                             ; preds = %2465, %2456
  %2459 = phi i64 [ %2466, %2465 ], [ 0, %2456 ]
  br label %2460

2460:                                             ; preds = %2460, %2458
  %2461 = phi i64 [ 0, %2458 ], [ %2463, %2460 ]
  %2462 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %2459, i64 %2461
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2462, align 16, !tbaa !7
  %2463 = add nuw i64 %2461, 4
  %2464 = icmp eq i64 %2463, 256
  br i1 %2464, label %2465, label %2460, !llvm.loop !252

2465:                                             ; preds = %2460
  %2466 = add nuw nsw i64 %2459, 1
  %2467 = icmp eq i64 %2466, 256
  br i1 %2467, label %3611, label %2458

2468:                                             ; preds = %2440
  %2469 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.93) #12
  %2470 = icmp eq i32 %2469, 0
  br i1 %2470, label %2471, label %2482

2471:                                             ; preds = %2471, %2468
  %2472 = phi i64 [ %2474, %2471 ], [ 0, %2468 ]
  %2473 = getelementptr inbounds float, ptr @global_data, i64 %2472
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2473, align 16, !tbaa !7
  %2474 = add nuw i64 %2472, 4
  %2475 = icmp eq i64 %2474, 32000
  br i1 %2475, label %2476, label %2471, !llvm.loop !253

2476:                                             ; preds = %2476, %2471
  %2477 = phi i64 [ %2479, %2476 ], [ 0, %2471 ]
  %2478 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2477
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2478, align 16, !tbaa !7
  %2479 = add nuw i64 %2477, 4
  %2480 = icmp eq i64 %2479, 32000
  br i1 %2480, label %2481, label %2476, !llvm.loop !254

2481:                                             ; preds = %2476
  store float 1.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 0), align 16, !tbaa !7
  br label %3611

2482:                                             ; preds = %2468
  %2483 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.94) #12
  %2484 = icmp eq i32 %2483, 0
  br i1 %2484, label %2485, label %2507

2485:                                             ; preds = %2485, %2482
  %2486 = phi i64 [ %2493, %2485 ], [ 0, %2482 ]
  %2487 = phi <4 x i64> [ %2494, %2485 ], [ <i64 0, i64 1, i64 2, i64 3>, %2482 ]
  %2488 = trunc <4 x i64> %2487 to <4 x i32>
  %2489 = add <4 x i32> %2488, <i32 1, i32 1, i32 1, i32 1>
  %2490 = sitofp <4 x i32> %2489 to <4 x float>
  %2491 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2490
  %2492 = getelementptr inbounds float, ptr @global_data, i64 %2486
  store <4 x float> %2491, ptr %2492, align 16, !tbaa !7
  %2493 = add nuw i64 %2486, 4
  %2494 = add <4 x i64> %2487, <i64 4, i64 4, i64 4, i64 4>
  %2495 = icmp eq i64 %2493, 32000
  br i1 %2495, label %2496, label %2485, !llvm.loop !255

2496:                                             ; preds = %2496, %2485
  %2497 = phi i64 [ %2504, %2496 ], [ 0, %2485 ]
  %2498 = phi <4 x i64> [ %2505, %2496 ], [ <i64 0, i64 1, i64 2, i64 3>, %2485 ]
  %2499 = trunc <4 x i64> %2498 to <4 x i32>
  %2500 = add <4 x i32> %2499, <i32 1, i32 1, i32 1, i32 1>
  %2501 = sitofp <4 x i32> %2500 to <4 x float>
  %2502 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2501
  %2503 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2497
  store <4 x float> %2502, ptr %2503, align 16, !tbaa !7
  %2504 = add nuw i64 %2497, 4
  %2505 = add <4 x i64> %2498, <i64 4, i64 4, i64 4, i64 4>
  %2506 = icmp eq i64 %2504, 32000
  br i1 %2506, label %3611, label %2496, !llvm.loop !256

2507:                                             ; preds = %2482
  %2508 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.95) #12
  %2509 = icmp eq i32 %2508, 0
  br i1 %2509, label %2510, label %2521

2510:                                             ; preds = %2510, %2507
  %2511 = phi i64 [ %2513, %2510 ], [ 0, %2507 ]
  %2512 = getelementptr inbounds float, ptr @global_data, i64 %2511
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2512, align 16, !tbaa !7
  %2513 = add nuw i64 %2511, 4
  %2514 = icmp eq i64 %2513, 32000
  br i1 %2514, label %2515, label %2510, !llvm.loop !257

2515:                                             ; preds = %2515, %2510
  %2516 = phi i64 [ %2518, %2515 ], [ 0, %2510 ]
  %2517 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2516
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2517, align 16, !tbaa !7
  %2518 = add nuw i64 %2516, 4
  %2519 = icmp eq i64 %2518, 32000
  br i1 %2519, label %2520, label %2515, !llvm.loop !258

2520:                                             ; preds = %2515
  store float 1.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 0), align 16, !tbaa !7
  br label %3611

2521:                                             ; preds = %2507
  %2522 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.96) #12
  %2523 = icmp eq i32 %2522, 0
  br i1 %2523, label %2524, label %2551

2524:                                             ; preds = %2524, %2521
  %2525 = phi i64 [ %2527, %2524 ], [ 0, %2521 ]
  %2526 = getelementptr inbounds float, ptr @global_data, i64 %2525
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2526, align 16, !tbaa !7
  %2527 = add nuw i64 %2525, 4
  %2528 = icmp eq i64 %2527, 32000
  br i1 %2528, label %2529, label %2524, !llvm.loop !259

2529:                                             ; preds = %2529, %2524
  %2530 = phi i64 [ %2537, %2529 ], [ 0, %2524 ]
  %2531 = phi <4 x i64> [ %2538, %2529 ], [ <i64 0, i64 1, i64 2, i64 3>, %2524 ]
  %2532 = trunc <4 x i64> %2531 to <4 x i32>
  %2533 = add <4 x i32> %2532, <i32 1, i32 1, i32 1, i32 1>
  %2534 = sitofp <4 x i32> %2533 to <4 x float>
  %2535 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2534
  %2536 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2530
  store <4 x float> %2535, ptr %2536, align 16, !tbaa !7
  %2537 = add nuw i64 %2530, 4
  %2538 = add <4 x i64> %2531, <i64 4, i64 4, i64 4, i64 4>
  %2539 = icmp eq i64 %2537, 32000
  br i1 %2539, label %2540, label %2529, !llvm.loop !260

2540:                                             ; preds = %2540, %2529
  %2541 = phi i64 [ %2548, %2540 ], [ 0, %2529 ]
  %2542 = phi <4 x i64> [ %2549, %2540 ], [ <i64 0, i64 1, i64 2, i64 3>, %2529 ]
  %2543 = trunc <4 x i64> %2542 to <4 x i32>
  %2544 = add <4 x i32> %2543, <i32 1, i32 1, i32 1, i32 1>
  %2545 = sitofp <4 x i32> %2544 to <4 x float>
  %2546 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2545
  %2547 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2541
  store <4 x float> %2546, ptr %2547, align 16, !tbaa !7
  %2548 = add nuw i64 %2541, 4
  %2549 = add <4 x i64> %2542, <i64 4, i64 4, i64 4, i64 4>
  %2550 = icmp eq i64 %2548, 32000
  br i1 %2550, label %3611, label %2540, !llvm.loop !261

2551:                                             ; preds = %2521
  %2552 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.97) #12
  %2553 = icmp eq i32 %2552, 0
  br i1 %2553, label %2554, label %2581

2554:                                             ; preds = %2554, %2551
  %2555 = phi i64 [ %2557, %2554 ], [ 0, %2551 ]
  %2556 = getelementptr inbounds float, ptr @global_data, i64 %2555
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2556, align 16, !tbaa !7
  %2557 = add nuw i64 %2555, 4
  %2558 = icmp eq i64 %2557, 32000
  br i1 %2558, label %2559, label %2554, !llvm.loop !262

2559:                                             ; preds = %2559, %2554
  %2560 = phi i64 [ %2567, %2559 ], [ 0, %2554 ]
  %2561 = phi <4 x i64> [ %2568, %2559 ], [ <i64 0, i64 1, i64 2, i64 3>, %2554 ]
  %2562 = trunc <4 x i64> %2561 to <4 x i32>
  %2563 = add <4 x i32> %2562, <i32 1, i32 1, i32 1, i32 1>
  %2564 = sitofp <4 x i32> %2563 to <4 x float>
  %2565 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2564
  %2566 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2560
  store <4 x float> %2565, ptr %2566, align 16, !tbaa !7
  %2567 = add nuw i64 %2560, 4
  %2568 = add <4 x i64> %2561, <i64 4, i64 4, i64 4, i64 4>
  %2569 = icmp eq i64 %2567, 32000
  br i1 %2569, label %2570, label %2559, !llvm.loop !263

2570:                                             ; preds = %2570, %2559
  %2571 = phi i64 [ %2578, %2570 ], [ 0, %2559 ]
  %2572 = phi <4 x i64> [ %2579, %2570 ], [ <i64 0, i64 1, i64 2, i64 3>, %2559 ]
  %2573 = trunc <4 x i64> %2572 to <4 x i32>
  %2574 = add <4 x i32> %2573, <i32 1, i32 1, i32 1, i32 1>
  %2575 = sitofp <4 x i32> %2574 to <4 x float>
  %2576 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2575
  %2577 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2571
  store <4 x float> %2576, ptr %2577, align 16, !tbaa !7
  %2578 = add nuw i64 %2571, 4
  %2579 = add <4 x i64> %2572, <i64 4, i64 4, i64 4, i64 4>
  %2580 = icmp eq i64 %2578, 32000
  br i1 %2580, label %3611, label %2570, !llvm.loop !264

2581:                                             ; preds = %2551
  %2582 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.98) #12
  %2583 = icmp eq i32 %2582, 0
  br i1 %2583, label %2584, label %2617

2584:                                             ; preds = %2581
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %2585

2585:                                             ; preds = %2585, %2584
  %2586 = phi i64 [ 0, %2584 ], [ %2588, %2585 ]
  %2587 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2586
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2587, align 16, !tbaa !7
  %2588 = add nuw i64 %2586, 4
  %2589 = icmp eq i64 %2588, 32000
  br i1 %2589, label %2590, label %2585, !llvm.loop !265

2590:                                             ; preds = %2590, %2585
  %2591 = phi i64 [ %2593, %2590 ], [ 0, %2585 ]
  %2592 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2591
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2592, align 16, !tbaa !7
  %2593 = add nuw i64 %2591, 4
  %2594 = icmp eq i64 %2593, 32000
  br i1 %2594, label %2595, label %2590, !llvm.loop !266

2595:                                             ; preds = %2595, %2590
  %2596 = phi i64 [ %2603, %2595 ], [ 0, %2590 ]
  %2597 = phi <4 x i64> [ %2604, %2595 ], [ <i64 0, i64 1, i64 2, i64 3>, %2590 ]
  %2598 = trunc <4 x i64> %2597 to <4 x i32>
  %2599 = add <4 x i32> %2598, <i32 1, i32 1, i32 1, i32 1>
  %2600 = sitofp <4 x i32> %2599 to <4 x float>
  %2601 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2600
  %2602 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2596
  store <4 x float> %2601, ptr %2602, align 16, !tbaa !7
  %2603 = add nuw i64 %2596, 4
  %2604 = add <4 x i64> %2597, <i64 4, i64 4, i64 4, i64 4>
  %2605 = icmp eq i64 %2603, 32000
  br i1 %2605, label %2606, label %2595, !llvm.loop !267

2606:                                             ; preds = %2606, %2595
  %2607 = phi i64 [ %2614, %2606 ], [ 0, %2595 ]
  %2608 = phi <4 x i64> [ %2615, %2606 ], [ <i64 0, i64 1, i64 2, i64 3>, %2595 ]
  %2609 = trunc <4 x i64> %2608 to <4 x i32>
  %2610 = add <4 x i32> %2609, <i32 1, i32 1, i32 1, i32 1>
  %2611 = sitofp <4 x i32> %2610 to <4 x float>
  %2612 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2611
  %2613 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %2607
  store <4 x float> %2612, ptr %2613, align 16, !tbaa !7
  %2614 = add nuw i64 %2607, 4
  %2615 = add <4 x i64> %2608, <i64 4, i64 4, i64 4, i64 4>
  %2616 = icmp eq i64 %2614, 32000
  br i1 %2616, label %3611, label %2606, !llvm.loop !268

2617:                                             ; preds = %2581
  %2618 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.99) #12
  %2619 = icmp eq i32 %2618, 0
  br i1 %2619, label %2620, label %2660

2620:                                             ; preds = %2627, %2617
  %2621 = phi i64 [ %2628, %2627 ], [ 0, %2617 ]
  br label %2622

2622:                                             ; preds = %2622, %2620
  %2623 = phi i64 [ 0, %2620 ], [ %2625, %2622 ]
  %2624 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %2621, i64 %2623
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2624, align 16, !tbaa !7
  %2625 = add nuw i64 %2623, 4
  %2626 = icmp eq i64 %2625, 256
  br i1 %2626, label %2627, label %2622, !llvm.loop !269

2627:                                             ; preds = %2622
  %2628 = add nuw nsw i64 %2621, 1
  %2629 = icmp eq i64 %2628, 256
  br i1 %2629, label %2630, label %2620

2630:                                             ; preds = %2643, %2627
  %2631 = phi i64 [ %2632, %2643 ], [ 0, %2627 ]
  %2632 = add nuw nsw i64 %2631, 1
  %2633 = trunc i64 %2632 to i32
  %2634 = sitofp i32 %2633 to float
  %2635 = fdiv float 1.000000e+00, %2634
  %2636 = insertelement <4 x float> poison, float %2635, i64 0
  %2637 = shufflevector <4 x float> %2636, <4 x float> poison, <4 x i32> zeroinitializer
  br label %2638

2638:                                             ; preds = %2638, %2630
  %2639 = phi i64 [ 0, %2630 ], [ %2641, %2638 ]
  %2640 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %2631, i64 %2639
  store <4 x float> %2637, ptr %2640, align 16, !tbaa !7
  %2641 = add nuw i64 %2639, 4
  %2642 = icmp eq i64 %2641, 256
  br i1 %2642, label %2643, label %2638, !llvm.loop !270

2643:                                             ; preds = %2638
  %2644 = icmp eq i64 %2632, 256
  br i1 %2644, label %2645, label %2630

2645:                                             ; preds = %2658, %2643
  %2646 = phi i64 [ %2647, %2658 ], [ 0, %2643 ]
  %2647 = add nuw nsw i64 %2646, 1
  %2648 = trunc i64 %2647 to i32
  %2649 = sitofp i32 %2648 to float
  %2650 = fdiv float 1.000000e+00, %2649
  %2651 = insertelement <4 x float> poison, float %2650, i64 0
  %2652 = shufflevector <4 x float> %2651, <4 x float> poison, <4 x i32> zeroinitializer
  br label %2653

2653:                                             ; preds = %2653, %2645
  %2654 = phi i64 [ 0, %2645 ], [ %2656, %2653 ]
  %2655 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %2646, i64 %2654
  store <4 x float> %2652, ptr %2655, align 16, !tbaa !7
  %2656 = add nuw i64 %2654, 4
  %2657 = icmp eq i64 %2656, 256
  br i1 %2657, label %2658, label %2653, !llvm.loop !271

2658:                                             ; preds = %2653
  %2659 = icmp eq i64 %2647, 256
  br i1 %2659, label %3611, label %2645

2660:                                             ; preds = %2617
  %2661 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.100) #12
  %2662 = icmp eq i32 %2661, 0
  br i1 %2662, label %2663, label %2691

2663:                                             ; preds = %2663, %2660
  %2664 = phi i64 [ %2666, %2663 ], [ 0, %2660 ]
  %2665 = getelementptr inbounds float, ptr @global_data, i64 %2664
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2665, align 16, !tbaa !7
  %2666 = add nuw i64 %2664, 4
  %2667 = icmp eq i64 %2666, 32000
  br i1 %2667, label %2668, label %2663, !llvm.loop !272

2668:                                             ; preds = %2668, %2663
  %2669 = phi i64 [ %2676, %2668 ], [ 0, %2663 ]
  %2670 = phi <4 x i64> [ %2677, %2668 ], [ <i64 0, i64 1, i64 2, i64 3>, %2663 ]
  %2671 = trunc <4 x i64> %2670 to <4 x i32>
  %2672 = add <4 x i32> %2671, <i32 1, i32 1, i32 1, i32 1>
  %2673 = sitofp <4 x i32> %2672 to <4 x float>
  %2674 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2673
  %2675 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2669
  store <4 x float> %2674, ptr %2675, align 16, !tbaa !7
  %2676 = add nuw i64 %2669, 4
  %2677 = add <4 x i64> %2670, <i64 4, i64 4, i64 4, i64 4>
  %2678 = icmp eq i64 %2676, 32000
  br i1 %2678, label %2679, label %2668, !llvm.loop !273

2679:                                             ; preds = %2679, %2668
  %2680 = phi i64 [ %2687, %2679 ], [ 0, %2668 ]
  %2681 = phi <4 x i64> [ %2688, %2679 ], [ <i64 0, i64 1, i64 2, i64 3>, %2668 ]
  %2682 = trunc <4 x i64> %2681 to <4 x i32>
  %2683 = add <4 x i32> %2682, <i32 1, i32 1, i32 1, i32 1>
  %2684 = sitofp <4 x i32> %2683 to <4 x float>
  %2685 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2684
  %2686 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2680
  store <4 x float> %2685, ptr %2686, align 16, !tbaa !7
  %2687 = add nuw i64 %2680, 4
  %2688 = add <4 x i64> %2681, <i64 4, i64 4, i64 4, i64 4>
  %2689 = icmp eq i64 %2687, 32000
  br i1 %2689, label %2690, label %2679, !llvm.loop !274

2690:                                             ; preds = %2679
  store float -1.000000e+00, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 0, i64 31999), align 4, !tbaa !7
  br label %3611

2691:                                             ; preds = %2660
  %2692 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.101) #12
  %2693 = icmp eq i32 %2692, 0
  br i1 %2693, label %2694, label %2711

2694:                                             ; preds = %2694, %2691
  %2695 = phi i64 [ %2703, %2694 ], [ 0, %2691 ]
  %2696 = phi <4 x i64> [ %2704, %2694 ], [ <i64 0, i64 1, i64 2, i64 3>, %2691 ]
  %2697 = add nuw nsw <4 x i64> %2696, <i64 1, i64 1, i64 1, i64 1>
  %2698 = mul nuw nsw <4 x i64> %2697, %2697
  %2699 = trunc <4 x i64> %2698 to <4 x i32>
  %2700 = sitofp <4 x i32> %2699 to <4 x float>
  %2701 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2700
  %2702 = getelementptr inbounds float, ptr @global_data, i64 %2695
  store <4 x float> %2701, ptr %2702, align 16, !tbaa !7
  %2703 = add nuw i64 %2695, 4
  %2704 = add <4 x i64> %2696, <i64 4, i64 4, i64 4, i64 4>
  %2705 = icmp eq i64 %2703, 32000
  br i1 %2705, label %2706, label %2694, !llvm.loop !275

2706:                                             ; preds = %2706, %2694
  %2707 = phi i64 [ %2709, %2706 ], [ 0, %2694 ]
  %2708 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2707
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2708, align 16, !tbaa !7
  %2709 = add nuw i64 %2707, 4
  %2710 = icmp eq i64 %2709, 32000
  br i1 %2710, label %3611, label %2706, !llvm.loop !276

2711:                                             ; preds = %2691
  %2712 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.102) #12
  %2713 = icmp eq i32 %2712, 0
  br i1 %2713, label %2714, label %2731

2714:                                             ; preds = %2714, %2711
  %2715 = phi i64 [ %2717, %2714 ], [ 0, %2711 ]
  %2716 = getelementptr inbounds float, ptr @array, i64 %2715
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2716, align 16, !tbaa !7
  %2717 = add nuw i64 %2715, 4
  %2718 = icmp eq i64 %2717, 32000
  br i1 %2718, label %2719, label %2714, !llvm.loop !277

2719:                                             ; preds = %2719, %2714
  %2720 = phi i64 [ %2728, %2719 ], [ 0, %2714 ]
  %2721 = phi <4 x i64> [ %2729, %2719 ], [ <i64 0, i64 1, i64 2, i64 3>, %2714 ]
  %2722 = add nuw nsw <4 x i64> %2721, <i64 1, i64 1, i64 1, i64 1>
  %2723 = mul nuw nsw <4 x i64> %2722, %2722
  %2724 = trunc <4 x i64> %2723 to <4 x i32>
  %2725 = sitofp <4 x i32> %2724 to <4 x float>
  %2726 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2725
  %2727 = getelementptr inbounds float, ptr @global_data, i64 %2720
  store <4 x float> %2726, ptr %2727, align 16, !tbaa !7
  %2728 = add nuw i64 %2720, 4
  %2729 = add <4 x i64> %2721, <i64 4, i64 4, i64 4, i64 4>
  %2730 = icmp eq i64 %2728, 32000
  br i1 %2730, label %3611, label %2719, !llvm.loop !278

2731:                                             ; preds = %2711
  %2732 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.103) #12
  %2733 = icmp eq i32 %2732, 0
  br i1 %2733, label %2734, label %2747

2734:                                             ; preds = %2731
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @array, i8 0, i64 128000, i1 false), !tbaa !7
  br label %2735

2735:                                             ; preds = %2735, %2734
  %2736 = phi i64 [ 0, %2734 ], [ %2744, %2735 ]
  %2737 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %2734 ], [ %2745, %2735 ]
  %2738 = add nuw nsw <4 x i64> %2737, <i64 1, i64 1, i64 1, i64 1>
  %2739 = mul nuw nsw <4 x i64> %2738, %2738
  %2740 = trunc <4 x i64> %2739 to <4 x i32>
  %2741 = sitofp <4 x i32> %2740 to <4 x float>
  %2742 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2741
  %2743 = getelementptr inbounds float, ptr @global_data, i64 %2736
  store <4 x float> %2742, ptr %2743, align 16, !tbaa !7
  %2744 = add nuw i64 %2736, 4
  %2745 = add <4 x i64> %2737, <i64 4, i64 4, i64 4, i64 4>
  %2746 = icmp eq i64 %2744, 32000
  br i1 %2746, label %3611, label %2735, !llvm.loop !279

2747:                                             ; preds = %2731
  %2748 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.104) #12
  %2749 = icmp eq i32 %2748, 0
  br i1 %2749, label %2750, label %2767

2750:                                             ; preds = %2750, %2747
  %2751 = phi i64 [ %2753, %2750 ], [ 0, %2747 ]
  %2752 = getelementptr inbounds float, ptr @array, i64 %2751
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2752, align 16, !tbaa !7
  %2753 = add nuw i64 %2751, 4
  %2754 = icmp eq i64 %2753, 32000
  br i1 %2754, label %2755, label %2750, !llvm.loop !280

2755:                                             ; preds = %2755, %2750
  %2756 = phi i64 [ %2764, %2755 ], [ 0, %2750 ]
  %2757 = phi <4 x i64> [ %2765, %2755 ], [ <i64 0, i64 1, i64 2, i64 3>, %2750 ]
  %2758 = add nuw nsw <4 x i64> %2757, <i64 1, i64 1, i64 1, i64 1>
  %2759 = mul nuw nsw <4 x i64> %2758, %2758
  %2760 = trunc <4 x i64> %2759 to <4 x i32>
  %2761 = sitofp <4 x i32> %2760 to <4 x float>
  %2762 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2761
  %2763 = getelementptr inbounds float, ptr @global_data, i64 %2756
  store <4 x float> %2762, ptr %2763, align 16, !tbaa !7
  %2764 = add nuw i64 %2756, 4
  %2765 = add <4 x i64> %2757, <i64 4, i64 4, i64 4, i64 4>
  %2766 = icmp eq i64 %2764, 32000
  br i1 %2766, label %3611, label %2755, !llvm.loop !281

2767:                                             ; preds = %2747
  %2768 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.105) #12
  %2769 = icmp eq i32 %2768, 0
  br i1 %2769, label %2770, label %2787

2770:                                             ; preds = %2770, %2767
  %2771 = phi i64 [ %2773, %2770 ], [ 0, %2767 ]
  %2772 = getelementptr inbounds float, ptr @global_data, i64 %2771
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2772, align 16, !tbaa !7
  %2773 = add nuw i64 %2771, 4
  %2774 = icmp eq i64 %2773, 32000
  br i1 %2774, label %2775, label %2770, !llvm.loop !282

2775:                                             ; preds = %2775, %2770
  %2776 = phi i64 [ %2784, %2775 ], [ 0, %2770 ]
  %2777 = phi <4 x i64> [ %2785, %2775 ], [ <i64 0, i64 1, i64 2, i64 3>, %2770 ]
  %2778 = add nuw nsw <4 x i64> %2777, <i64 1, i64 1, i64 1, i64 1>
  %2779 = mul nuw nsw <4 x i64> %2778, %2778
  %2780 = trunc <4 x i64> %2779 to <4 x i32>
  %2781 = sitofp <4 x i32> %2780 to <4 x float>
  %2782 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2781
  %2783 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2776
  store <4 x float> %2782, ptr %2783, align 16, !tbaa !7
  %2784 = add nuw i64 %2776, 4
  %2785 = add <4 x i64> %2777, <i64 4, i64 4, i64 4, i64 4>
  %2786 = icmp eq i64 %2784, 32000
  br i1 %2786, label %3611, label %2775, !llvm.loop !283

2787:                                             ; preds = %2767
  %2788 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.106) #12
  %2789 = icmp eq i32 %2788, 0
  br i1 %2789, label %2790, label %2807

2790:                                             ; preds = %2790, %2787
  %2791 = phi i64 [ %2793, %2790 ], [ 0, %2787 ]
  %2792 = getelementptr inbounds float, ptr @global_data, i64 %2791
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2792, align 16, !tbaa !7
  %2793 = add nuw i64 %2791, 4
  %2794 = icmp eq i64 %2793, 32000
  br i1 %2794, label %2795, label %2790, !llvm.loop !284

2795:                                             ; preds = %2795, %2790
  %2796 = phi i64 [ %2804, %2795 ], [ 0, %2790 ]
  %2797 = phi <4 x i64> [ %2805, %2795 ], [ <i64 0, i64 1, i64 2, i64 3>, %2790 ]
  %2798 = add nuw nsw <4 x i64> %2797, <i64 1, i64 1, i64 1, i64 1>
  %2799 = mul nuw nsw <4 x i64> %2798, %2798
  %2800 = trunc <4 x i64> %2799 to <4 x i32>
  %2801 = sitofp <4 x i32> %2800 to <4 x float>
  %2802 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2801
  %2803 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2796
  store <4 x float> %2802, ptr %2803, align 16, !tbaa !7
  %2804 = add nuw i64 %2796, 4
  %2805 = add <4 x i64> %2797, <i64 4, i64 4, i64 4, i64 4>
  %2806 = icmp eq i64 %2804, 32000
  br i1 %2806, label %3611, label %2795, !llvm.loop !285

2807:                                             ; preds = %2787
  %2808 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.107) #12
  %2809 = icmp eq i32 %2808, 0
  br i1 %2809, label %2810, label %2848

2810:                                             ; preds = %2810, %2807
  %2811 = phi i64 [ %2813, %2810 ], [ 0, %2807 ]
  %2812 = getelementptr inbounds float, ptr @global_data, i64 %2811
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2812, align 16, !tbaa !7
  %2813 = add nuw i64 %2811, 4
  %2814 = icmp eq i64 %2813, 32000
  br i1 %2814, label %2815, label %2810, !llvm.loop !286

2815:                                             ; preds = %2815, %2810
  %2816 = phi i64 [ %2823, %2815 ], [ 0, %2810 ]
  %2817 = phi <4 x i64> [ %2824, %2815 ], [ <i64 0, i64 1, i64 2, i64 3>, %2810 ]
  %2818 = trunc <4 x i64> %2817 to <4 x i32>
  %2819 = add <4 x i32> %2818, <i32 1, i32 1, i32 1, i32 1>
  %2820 = sitofp <4 x i32> %2819 to <4 x float>
  %2821 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2820
  %2822 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2816
  store <4 x float> %2821, ptr %2822, align 16, !tbaa !7
  %2823 = add nuw i64 %2816, 4
  %2824 = add <4 x i64> %2817, <i64 4, i64 4, i64 4, i64 4>
  %2825 = icmp eq i64 %2823, 32000
  br i1 %2825, label %2826, label %2815, !llvm.loop !287

2826:                                             ; preds = %2826, %2815
  %2827 = phi i64 [ %2834, %2826 ], [ 0, %2815 ]
  %2828 = phi <4 x i64> [ %2835, %2826 ], [ <i64 0, i64 1, i64 2, i64 3>, %2815 ]
  %2829 = trunc <4 x i64> %2828 to <4 x i32>
  %2830 = add <4 x i32> %2829, <i32 1, i32 1, i32 1, i32 1>
  %2831 = sitofp <4 x i32> %2830 to <4 x float>
  %2832 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2831
  %2833 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2827
  store <4 x float> %2832, ptr %2833, align 16, !tbaa !7
  %2834 = add nuw i64 %2827, 4
  %2835 = add <4 x i64> %2828, <i64 4, i64 4, i64 4, i64 4>
  %2836 = icmp eq i64 %2834, 32000
  br i1 %2836, label %2837, label %2826, !llvm.loop !288

2837:                                             ; preds = %2837, %2826
  %2838 = phi i64 [ %2840, %2837 ], [ 0, %2826 ]
  %2839 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2838
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, ptr %2839, align 16, !tbaa !7
  %2840 = add nuw i64 %2838, 4
  %2841 = icmp eq i64 %2840, 32000
  br i1 %2841, label %2842, label %2837, !llvm.loop !289

2842:                                             ; preds = %2837
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128000) getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 10666), i8 0, i64 128000, i1 false), !tbaa !7
  br label %2843

2843:                                             ; preds = %2843, %2842
  %2844 = phi i64 [ 0, %2842 ], [ %2846, %2843 ]
  %2845 = getelementptr inbounds float, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 21333), i64 %2844
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2845, align 4, !tbaa !7
  %2846 = add nuw i64 %2844, 4
  %2847 = icmp eq i64 %2846, 32000
  br i1 %2847, label %3611, label %2843, !llvm.loop !290

2848:                                             ; preds = %2807
  %2849 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.108) #12
  %2850 = icmp eq i32 %2849, 0
  br i1 %2850, label %2851, label %2900

2851:                                             ; preds = %2851, %2848
  %2852 = phi i64 [ %2854, %2851 ], [ 0, %2848 ]
  %2853 = getelementptr inbounds float, ptr @global_data, i64 %2852
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2853, align 16, !tbaa !7
  %2854 = add nuw i64 %2852, 4
  %2855 = icmp eq i64 %2854, 32000
  br i1 %2855, label %2856, label %2851, !llvm.loop !291

2856:                                             ; preds = %2856, %2851
  %2857 = phi i64 [ %2864, %2856 ], [ 0, %2851 ]
  %2858 = phi <4 x i64> [ %2865, %2856 ], [ <i64 0, i64 1, i64 2, i64 3>, %2851 ]
  %2859 = trunc <4 x i64> %2858 to <4 x i32>
  %2860 = add <4 x i32> %2859, <i32 1, i32 1, i32 1, i32 1>
  %2861 = sitofp <4 x i32> %2860 to <4 x float>
  %2862 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2861
  %2863 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2857
  store <4 x float> %2862, ptr %2863, align 16, !tbaa !7
  %2864 = add nuw i64 %2857, 4
  %2865 = add <4 x i64> %2858, <i64 4, i64 4, i64 4, i64 4>
  %2866 = icmp eq i64 %2864, 32000
  br i1 %2866, label %2867, label %2856, !llvm.loop !292

2867:                                             ; preds = %2867, %2856
  %2868 = phi i64 [ %2875, %2867 ], [ 0, %2856 ]
  %2869 = phi <4 x i64> [ %2876, %2867 ], [ <i64 0, i64 1, i64 2, i64 3>, %2856 ]
  %2870 = trunc <4 x i64> %2869 to <4 x i32>
  %2871 = add <4 x i32> %2870, <i32 1, i32 1, i32 1, i32 1>
  %2872 = sitofp <4 x i32> %2871 to <4 x float>
  %2873 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2872
  %2874 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2868
  store <4 x float> %2873, ptr %2874, align 16, !tbaa !7
  %2875 = add nuw i64 %2868, 4
  %2876 = add <4 x i64> %2869, <i64 4, i64 4, i64 4, i64 4>
  %2877 = icmp eq i64 %2875, 32000
  br i1 %2877, label %2878, label %2867, !llvm.loop !293

2878:                                             ; preds = %2878, %2867
  %2879 = phi i64 [ %2886, %2878 ], [ 0, %2867 ]
  %2880 = phi <4 x i64> [ %2887, %2878 ], [ <i64 0, i64 1, i64 2, i64 3>, %2867 ]
  %2881 = trunc <4 x i64> %2880 to <4 x i32>
  %2882 = add <4 x i32> %2881, <i32 1, i32 1, i32 1, i32 1>
  %2883 = sitofp <4 x i32> %2882 to <4 x float>
  %2884 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2883
  %2885 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %2879
  store <4 x float> %2884, ptr %2885, align 16, !tbaa !7
  %2886 = add nuw i64 %2879, 4
  %2887 = add <4 x i64> %2880, <i64 4, i64 4, i64 4, i64 4>
  %2888 = icmp eq i64 %2886, 32000
  br i1 %2888, label %2889, label %2878, !llvm.loop !294

2889:                                             ; preds = %2889, %2878
  %2890 = phi i64 [ %2897, %2889 ], [ 0, %2878 ]
  %2891 = phi <4 x i64> [ %2898, %2889 ], [ <i64 0, i64 1, i64 2, i64 3>, %2878 ]
  %2892 = trunc <4 x i64> %2891 to <4 x i32>
  %2893 = add <4 x i32> %2892, <i32 1, i32 1, i32 1, i32 1>
  %2894 = sitofp <4 x i32> %2893 to <4 x float>
  %2895 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2894
  %2896 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %2890
  store <4 x float> %2895, ptr %2896, align 16, !tbaa !7
  %2897 = add nuw i64 %2890, 4
  %2898 = add <4 x i64> %2891, <i64 4, i64 4, i64 4, i64 4>
  %2899 = icmp eq i64 %2897, 32000
  br i1 %2899, label %3611, label %2889, !llvm.loop !295

2900:                                             ; preds = %2848
  %2901 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.109) #12
  %2902 = icmp eq i32 %2901, 0
  br i1 %2902, label %2903, label %2930

2903:                                             ; preds = %2903, %2900
  %2904 = phi i64 [ %2906, %2903 ], [ 0, %2900 ]
  %2905 = getelementptr inbounds float, ptr @global_data, i64 %2904
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2905, align 16, !tbaa !7
  %2906 = add nuw i64 %2904, 4
  %2907 = icmp eq i64 %2906, 32000
  br i1 %2907, label %2908, label %2903, !llvm.loop !296

2908:                                             ; preds = %2908, %2903
  %2909 = phi i64 [ %2916, %2908 ], [ 0, %2903 ]
  %2910 = phi <4 x i64> [ %2917, %2908 ], [ <i64 0, i64 1, i64 2, i64 3>, %2903 ]
  %2911 = trunc <4 x i64> %2910 to <4 x i32>
  %2912 = add <4 x i32> %2911, <i32 1, i32 1, i32 1, i32 1>
  %2913 = sitofp <4 x i32> %2912 to <4 x float>
  %2914 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2913
  %2915 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2909
  store <4 x float> %2914, ptr %2915, align 16, !tbaa !7
  %2916 = add nuw i64 %2909, 4
  %2917 = add <4 x i64> %2910, <i64 4, i64 4, i64 4, i64 4>
  %2918 = icmp eq i64 %2916, 32000
  br i1 %2918, label %2919, label %2908, !llvm.loop !297

2919:                                             ; preds = %2919, %2908
  %2920 = phi i64 [ %2927, %2919 ], [ 0, %2908 ]
  %2921 = phi <4 x i64> [ %2928, %2919 ], [ <i64 0, i64 1, i64 2, i64 3>, %2908 ]
  %2922 = trunc <4 x i64> %2921 to <4 x i32>
  %2923 = add <4 x i32> %2922, <i32 1, i32 1, i32 1, i32 1>
  %2924 = sitofp <4 x i32> %2923 to <4 x float>
  %2925 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2924
  %2926 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2920
  store <4 x float> %2925, ptr %2926, align 16, !tbaa !7
  %2927 = add nuw i64 %2920, 4
  %2928 = add <4 x i64> %2921, <i64 4, i64 4, i64 4, i64 4>
  %2929 = icmp eq i64 %2927, 32000
  br i1 %2929, label %3611, label %2919, !llvm.loop !298

2930:                                             ; preds = %2900
  %2931 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.110) #12
  %2932 = icmp eq i32 %2931, 0
  br i1 %2932, label %2933, label %2955

2933:                                             ; preds = %2933, %2930
  %2934 = phi i64 [ %2941, %2933 ], [ 0, %2930 ]
  %2935 = phi <4 x i64> [ %2942, %2933 ], [ <i64 0, i64 1, i64 2, i64 3>, %2930 ]
  %2936 = trunc <4 x i64> %2935 to <4 x i32>
  %2937 = add <4 x i32> %2936, <i32 1, i32 1, i32 1, i32 1>
  %2938 = sitofp <4 x i32> %2937 to <4 x float>
  %2939 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2938
  %2940 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2934
  store <4 x float> %2939, ptr %2940, align 16, !tbaa !7
  %2941 = add nuw i64 %2934, 4
  %2942 = add <4 x i64> %2935, <i64 4, i64 4, i64 4, i64 4>
  %2943 = icmp eq i64 %2941, 32000
  br i1 %2943, label %2944, label %2933, !llvm.loop !299

2944:                                             ; preds = %2944, %2933
  %2945 = phi i64 [ %2952, %2944 ], [ 0, %2933 ]
  %2946 = phi <4 x i64> [ %2953, %2944 ], [ <i64 0, i64 1, i64 2, i64 3>, %2933 ]
  %2947 = trunc <4 x i64> %2946 to <4 x i32>
  %2948 = add <4 x i32> %2947, <i32 1, i32 1, i32 1, i32 1>
  %2949 = sitofp <4 x i32> %2948 to <4 x float>
  %2950 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2949
  %2951 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2945
  store <4 x float> %2950, ptr %2951, align 16, !tbaa !7
  %2952 = add nuw i64 %2945, 4
  %2953 = add <4 x i64> %2946, <i64 4, i64 4, i64 4, i64 4>
  %2954 = icmp eq i64 %2952, 32000
  br i1 %2954, label %3611, label %2944, !llvm.loop !300

2955:                                             ; preds = %2930
  %2956 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.111) #12
  %2957 = icmp eq i32 %2956, 0
  br i1 %2957, label %2958, label %2969

2958:                                             ; preds = %2955
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %2959

2959:                                             ; preds = %2959, %2958
  %2960 = phi i64 [ 0, %2958 ], [ %2962, %2959 ]
  %2961 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2960
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2961, align 16, !tbaa !7
  %2962 = add nuw i64 %2960, 4
  %2963 = icmp eq i64 %2962, 32000
  br i1 %2963, label %2964, label %2959, !llvm.loop !301

2964:                                             ; preds = %2964, %2959
  %2965 = phi i64 [ %2967, %2964 ], [ 0, %2959 ]
  %2966 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2965
  store <4 x float> <float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000, float 0x3EB0C6F7A0000000>, ptr %2966, align 16, !tbaa !7
  %2967 = add nuw i64 %2965, 4
  %2968 = icmp eq i64 %2967, 32000
  br i1 %2968, label %3611, label %2964, !llvm.loop !302

2969:                                             ; preds = %2955
  %2970 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.112) #12
  %2971 = icmp eq i32 %2970, 0
  br i1 %2971, label %2972, label %2985

2972:                                             ; preds = %2969
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %2973

2973:                                             ; preds = %2973, %2972
  %2974 = phi i64 [ 0, %2972 ], [ %2982, %2973 ]
  %2975 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %2972 ], [ %2983, %2973 ]
  %2976 = add nuw nsw <4 x i64> %2975, <i64 1, i64 1, i64 1, i64 1>
  %2977 = mul nuw nsw <4 x i64> %2976, %2976
  %2978 = trunc <4 x i64> %2977 to <4 x i32>
  %2979 = sitofp <4 x i32> %2978 to <4 x float>
  %2980 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %2979
  %2981 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2974
  store <4 x float> %2980, ptr %2981, align 16, !tbaa !7
  %2982 = add nuw i64 %2974, 4
  %2983 = add <4 x i64> %2975, <i64 4, i64 4, i64 4, i64 4>
  %2984 = icmp eq i64 %2982, 32000
  br i1 %2984, label %3611, label %2973, !llvm.loop !303

2985:                                             ; preds = %2969
  %2986 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.113) #12
  %2987 = icmp eq i32 %2986, 0
  br i1 %2987, label %2988, label %3025

2988:                                             ; preds = %2988, %2985
  %2989 = phi i64 [ %2991, %2988 ], [ 0, %2985 ]
  %2990 = getelementptr inbounds float, ptr @global_data, i64 %2989
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2990, align 16, !tbaa !7
  %2991 = add nuw i64 %2989, 4
  %2992 = icmp eq i64 %2991, 32000
  br i1 %2992, label %2993, label %2988, !llvm.loop !304

2993:                                             ; preds = %2993, %2988
  %2994 = phi i64 [ %2996, %2993 ], [ 0, %2988 ]
  %2995 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %2994
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %2995, align 16, !tbaa !7
  %2996 = add nuw i64 %2994, 4
  %2997 = icmp eq i64 %2996, 32000
  br i1 %2997, label %2998, label %2993, !llvm.loop !305

2998:                                             ; preds = %2998, %2993
  %2999 = phi i64 [ %3001, %2998 ], [ 0, %2993 ]
  %3000 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %2999
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3000, align 16, !tbaa !7
  %3001 = add nuw i64 %2999, 4
  %3002 = icmp eq i64 %3001, 32000
  br i1 %3002, label %3003, label %2998, !llvm.loop !306

3003:                                             ; preds = %3003, %2998
  %3004 = phi i64 [ %3011, %3003 ], [ 0, %2998 ]
  %3005 = phi <4 x i64> [ %3012, %3003 ], [ <i64 0, i64 1, i64 2, i64 3>, %2998 ]
  %3006 = trunc <4 x i64> %3005 to <4 x i32>
  %3007 = add <4 x i32> %3006, <i32 1, i32 1, i32 1, i32 1>
  %3008 = sitofp <4 x i32> %3007 to <4 x float>
  %3009 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3008
  %3010 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %3004
  store <4 x float> %3009, ptr %3010, align 16, !tbaa !7
  %3011 = add nuw i64 %3004, 4
  %3012 = add <4 x i64> %3005, <i64 4, i64 4, i64 4, i64 4>
  %3013 = icmp eq i64 %3011, 32000
  br i1 %3013, label %3014, label %3003, !llvm.loop !307

3014:                                             ; preds = %3014, %3003
  %3015 = phi i64 [ %3022, %3014 ], [ 0, %3003 ]
  %3016 = phi <4 x i64> [ %3023, %3014 ], [ <i64 0, i64 1, i64 2, i64 3>, %3003 ]
  %3017 = trunc <4 x i64> %3016 to <4 x i32>
  %3018 = add <4 x i32> %3017, <i32 1, i32 1, i32 1, i32 1>
  %3019 = sitofp <4 x i32> %3018 to <4 x float>
  %3020 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3019
  %3021 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %3015
  store <4 x float> %3020, ptr %3021, align 16, !tbaa !7
  %3022 = add nuw i64 %3015, 4
  %3023 = add <4 x i64> %3016, <i64 4, i64 4, i64 4, i64 4>
  %3024 = icmp eq i64 %3022, 32000
  br i1 %3024, label %3611, label %3014, !llvm.loop !308

3025:                                             ; preds = %2985
  %3026 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.114) #12
  %3027 = icmp eq i32 %3026, 0
  br i1 %3027, label %3028, label %3066

3028:                                             ; preds = %3028, %3025
  %3029 = phi i64 [ %3031, %3028 ], [ 0, %3025 ]
  %3030 = getelementptr inbounds float, ptr @global_data, i64 %3029
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3030, align 16, !tbaa !7
  %3031 = add nuw i64 %3029, 4
  %3032 = icmp eq i64 %3031, 32000
  br i1 %3032, label %3033, label %3028, !llvm.loop !309

3033:                                             ; preds = %3033, %3028
  %3034 = phi i64 [ %3041, %3033 ], [ 0, %3028 ]
  %3035 = phi <4 x i64> [ %3042, %3033 ], [ <i64 0, i64 1, i64 2, i64 3>, %3028 ]
  %3036 = trunc <4 x i64> %3035 to <4 x i32>
  %3037 = add <4 x i32> %3036, <i32 1, i32 1, i32 1, i32 1>
  %3038 = sitofp <4 x i32> %3037 to <4 x float>
  %3039 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3038
  %3040 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3034
  store <4 x float> %3039, ptr %3040, align 16, !tbaa !7
  %3041 = add nuw i64 %3034, 4
  %3042 = add <4 x i64> %3035, <i64 4, i64 4, i64 4, i64 4>
  %3043 = icmp eq i64 %3041, 32000
  br i1 %3043, label %3044, label %3033, !llvm.loop !310

3044:                                             ; preds = %3044, %3033
  %3045 = phi i64 [ %3052, %3044 ], [ 0, %3033 ]
  %3046 = phi <4 x i64> [ %3053, %3044 ], [ <i64 0, i64 1, i64 2, i64 3>, %3033 ]
  %3047 = trunc <4 x i64> %3046 to <4 x i32>
  %3048 = add <4 x i32> %3047, <i32 1, i32 1, i32 1, i32 1>
  %3049 = sitofp <4 x i32> %3048 to <4 x float>
  %3050 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3049
  %3051 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3045
  store <4 x float> %3050, ptr %3051, align 16, !tbaa !7
  %3052 = add nuw i64 %3045, 4
  %3053 = add <4 x i64> %3046, <i64 4, i64 4, i64 4, i64 4>
  %3054 = icmp eq i64 %3052, 32000
  br i1 %3054, label %3055, label %3044, !llvm.loop !311

3055:                                             ; preds = %3055, %3044
  %3056 = phi i64 [ %3063, %3055 ], [ 0, %3044 ]
  %3057 = phi <4 x i64> [ %3064, %3055 ], [ <i64 0, i64 1, i64 2, i64 3>, %3044 ]
  %3058 = trunc <4 x i64> %3057 to <4 x i32>
  %3059 = add <4 x i32> %3058, <i32 1, i32 1, i32 1, i32 1>
  %3060 = sitofp <4 x i32> %3059 to <4 x float>
  %3061 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3060
  %3062 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %3056
  store <4 x float> %3061, ptr %3062, align 16, !tbaa !7
  %3063 = add nuw i64 %3056, 4
  %3064 = add <4 x i64> %3057, <i64 4, i64 4, i64 4, i64 4>
  %3065 = icmp eq i64 %3063, 32000
  br i1 %3065, label %3611, label %3055, !llvm.loop !312

3066:                                             ; preds = %3025
  %3067 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.115) #12
  %3068 = icmp eq i32 %3067, 0
  br i1 %3068, label %3069, label %3096

3069:                                             ; preds = %3069, %3066
  %3070 = phi i64 [ %3072, %3069 ], [ 0, %3066 ]
  %3071 = getelementptr inbounds float, ptr @global_data, i64 %3070
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3071, align 16, !tbaa !7
  %3072 = add nuw i64 %3070, 4
  %3073 = icmp eq i64 %3072, 32000
  br i1 %3073, label %3074, label %3069, !llvm.loop !313

3074:                                             ; preds = %3074, %3069
  %3075 = phi i64 [ %3082, %3074 ], [ 0, %3069 ]
  %3076 = phi <4 x i64> [ %3083, %3074 ], [ <i64 0, i64 1, i64 2, i64 3>, %3069 ]
  %3077 = trunc <4 x i64> %3076 to <4 x i32>
  %3078 = add <4 x i32> %3077, <i32 1, i32 1, i32 1, i32 1>
  %3079 = sitofp <4 x i32> %3078 to <4 x float>
  %3080 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3079
  %3081 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3075
  store <4 x float> %3080, ptr %3081, align 16, !tbaa !7
  %3082 = add nuw i64 %3075, 4
  %3083 = add <4 x i64> %3076, <i64 4, i64 4, i64 4, i64 4>
  %3084 = icmp eq i64 %3082, 32000
  br i1 %3084, label %3085, label %3074, !llvm.loop !314

3085:                                             ; preds = %3085, %3074
  %3086 = phi i64 [ %3093, %3085 ], [ 0, %3074 ]
  %3087 = phi <4 x i64> [ %3094, %3085 ], [ <i64 0, i64 1, i64 2, i64 3>, %3074 ]
  %3088 = trunc <4 x i64> %3087 to <4 x i32>
  %3089 = add <4 x i32> %3088, <i32 1, i32 1, i32 1, i32 1>
  %3090 = sitofp <4 x i32> %3089 to <4 x float>
  %3091 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3090
  %3092 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3086
  store <4 x float> %3091, ptr %3092, align 16, !tbaa !7
  %3093 = add nuw i64 %3086, 4
  %3094 = add <4 x i64> %3087, <i64 4, i64 4, i64 4, i64 4>
  %3095 = icmp eq i64 %3093, 32000
  br i1 %3095, label %3611, label %3085, !llvm.loop !315

3096:                                             ; preds = %3066
  %3097 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.116) #12
  %3098 = icmp eq i32 %3097, 0
  br i1 %3098, label %3099, label %3127

3099:                                             ; preds = %3096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %3100

3100:                                             ; preds = %3100, %3099
  %3101 = phi i64 [ 0, %3099 ], [ %3103, %3100 ]
  %3102 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3101
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3102, align 16, !tbaa !7
  %3103 = add nuw i64 %3101, 4
  %3104 = icmp eq i64 %3103, 32000
  br i1 %3104, label %3105, label %3100, !llvm.loop !316

3105:                                             ; preds = %3105, %3100
  %3106 = phi i64 [ %3113, %3105 ], [ 0, %3100 ]
  %3107 = phi <4 x i64> [ %3114, %3105 ], [ <i64 0, i64 1, i64 2, i64 3>, %3100 ]
  %3108 = trunc <4 x i64> %3107 to <4 x i32>
  %3109 = add <4 x i32> %3108, <i32 1, i32 1, i32 1, i32 1>
  %3110 = sitofp <4 x i32> %3109 to <4 x float>
  %3111 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3110
  %3112 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3106
  store <4 x float> %3111, ptr %3112, align 16, !tbaa !7
  %3113 = add nuw i64 %3106, 4
  %3114 = add <4 x i64> %3107, <i64 4, i64 4, i64 4, i64 4>
  %3115 = icmp eq i64 %3113, 32000
  br i1 %3115, label %3116, label %3105, !llvm.loop !317

3116:                                             ; preds = %3116, %3105
  %3117 = phi i64 [ %3124, %3116 ], [ 0, %3105 ]
  %3118 = phi <4 x i64> [ %3125, %3116 ], [ <i64 0, i64 1, i64 2, i64 3>, %3105 ]
  %3119 = trunc <4 x i64> %3118 to <4 x i32>
  %3120 = add <4 x i32> %3119, <i32 1, i32 1, i32 1, i32 1>
  %3121 = sitofp <4 x i32> %3120 to <4 x float>
  %3122 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3121
  %3123 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %3117
  store <4 x float> %3122, ptr %3123, align 16, !tbaa !7
  %3124 = add nuw i64 %3117, 4
  %3125 = add <4 x i64> %3118, <i64 4, i64 4, i64 4, i64 4>
  %3126 = icmp eq i64 %3124, 32000
  br i1 %3126, label %3611, label %3116, !llvm.loop !318

3127:                                             ; preds = %3096
  %3128 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.117) #12
  %3129 = icmp eq i32 %3128, 0
  br i1 %3129, label %3130, label %3146

3130:                                             ; preds = %3130, %3127
  %3131 = phi i64 [ %3133, %3130 ], [ 0, %3127 ]
  %3132 = getelementptr inbounds float, ptr @global_data, i64 %3131
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3132, align 16, !tbaa !7
  %3133 = add nuw i64 %3131, 4
  %3134 = icmp eq i64 %3133, 32000
  br i1 %3134, label %3135, label %3130, !llvm.loop !319

3135:                                             ; preds = %3135, %3130
  %3136 = phi i64 [ %3143, %3135 ], [ 0, %3130 ]
  %3137 = phi <4 x i64> [ %3144, %3135 ], [ <i64 0, i64 1, i64 2, i64 3>, %3130 ]
  %3138 = trunc <4 x i64> %3137 to <4 x i32>
  %3139 = add <4 x i32> %3138, <i32 1, i32 1, i32 1, i32 1>
  %3140 = sitofp <4 x i32> %3139 to <4 x float>
  %3141 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3140
  %3142 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3136
  store <4 x float> %3141, ptr %3142, align 16, !tbaa !7
  %3143 = add nuw i64 %3136, 4
  %3144 = add <4 x i64> %3137, <i64 4, i64 4, i64 4, i64 4>
  %3145 = icmp eq i64 %3143, 32000
  br i1 %3145, label %3611, label %3135, !llvm.loop !320

3146:                                             ; preds = %3127
  %3147 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.118) #12
  %3148 = icmp eq i32 %3147, 0
  br i1 %3148, label %3149, label %3167

3149:                                             ; preds = %3146
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %3150

3150:                                             ; preds = %3150, %3149
  %3151 = phi i64 [ 0, %3149 ], [ %3153, %3150 ]
  %3152 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3151
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3152, align 16, !tbaa !7
  %3153 = add nuw i64 %3151, 4
  %3154 = icmp eq i64 %3153, 32000
  br i1 %3154, label %3155, label %3150, !llvm.loop !321

3155:                                             ; preds = %3155, %3150
  %3156 = phi i64 [ %3164, %3155 ], [ 0, %3150 ]
  %3157 = phi <4 x i64> [ %3165, %3155 ], [ <i64 0, i64 1, i64 2, i64 3>, %3150 ]
  %3158 = add nuw nsw <4 x i64> %3157, <i64 1, i64 1, i64 1, i64 1>
  %3159 = mul nuw nsw <4 x i64> %3158, %3158
  %3160 = trunc <4 x i64> %3159 to <4 x i32>
  %3161 = sitofp <4 x i32> %3160 to <4 x float>
  %3162 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3161
  %3163 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3156
  store <4 x float> %3162, ptr %3163, align 16, !tbaa !7
  %3164 = add nuw i64 %3156, 4
  %3165 = add <4 x i64> %3157, <i64 4, i64 4, i64 4, i64 4>
  %3166 = icmp eq i64 %3164, 32000
  br i1 %3166, label %3611, label %3155, !llvm.loop !322

3167:                                             ; preds = %3146
  %3168 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.119) #12
  %3169 = icmp eq i32 %3168, 0
  br i1 %3169, label %3170, label %3198

3170:                                             ; preds = %3167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %3171

3171:                                             ; preds = %3171, %3170
  %3172 = phi i64 [ 0, %3170 ], [ %3174, %3171 ]
  %3173 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3172
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3173, align 16, !tbaa !7
  %3174 = add nuw i64 %3172, 4
  %3175 = icmp eq i64 %3174, 32000
  br i1 %3175, label %3176, label %3171, !llvm.loop !323

3176:                                             ; preds = %3176, %3171
  %3177 = phi i64 [ %3184, %3176 ], [ 0, %3171 ]
  %3178 = phi <4 x i64> [ %3185, %3176 ], [ <i64 0, i64 1, i64 2, i64 3>, %3171 ]
  %3179 = trunc <4 x i64> %3178 to <4 x i32>
  %3180 = add <4 x i32> %3179, <i32 1, i32 1, i32 1, i32 1>
  %3181 = sitofp <4 x i32> %3180 to <4 x float>
  %3182 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3181
  %3183 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3177
  store <4 x float> %3182, ptr %3183, align 16, !tbaa !7
  %3184 = add nuw i64 %3177, 4
  %3185 = add <4 x i64> %3178, <i64 4, i64 4, i64 4, i64 4>
  %3186 = icmp eq i64 %3184, 32000
  br i1 %3186, label %3187, label %3176, !llvm.loop !324

3187:                                             ; preds = %3187, %3176
  %3188 = phi i64 [ %3195, %3187 ], [ 0, %3176 ]
  %3189 = phi <4 x i64> [ %3196, %3187 ], [ <i64 0, i64 1, i64 2, i64 3>, %3176 ]
  %3190 = trunc <4 x i64> %3189 to <4 x i32>
  %3191 = add <4 x i32> %3190, <i32 1, i32 1, i32 1, i32 1>
  %3192 = sitofp <4 x i32> %3191 to <4 x float>
  %3193 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3192
  %3194 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %3188
  store <4 x float> %3193, ptr %3194, align 16, !tbaa !7
  %3195 = add nuw i64 %3188, 4
  %3196 = add <4 x i64> %3189, <i64 4, i64 4, i64 4, i64 4>
  %3197 = icmp eq i64 %3195, 32000
  br i1 %3197, label %3611, label %3187, !llvm.loop !325

3198:                                             ; preds = %3167
  %3199 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.120) #12
  %3200 = icmp eq i32 %3199, 0
  br i1 %3200, label %3201, label %3223

3201:                                             ; preds = %3201, %3198
  %3202 = phi i64 [ %3209, %3201 ], [ 0, %3198 ]
  %3203 = phi <4 x i64> [ %3210, %3201 ], [ <i64 0, i64 1, i64 2, i64 3>, %3198 ]
  %3204 = trunc <4 x i64> %3203 to <4 x i32>
  %3205 = add <4 x i32> %3204, <i32 1, i32 1, i32 1, i32 1>
  %3206 = sitofp <4 x i32> %3205 to <4 x float>
  %3207 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3206
  %3208 = getelementptr inbounds float, ptr @global_data, i64 %3202
  store <4 x float> %3207, ptr %3208, align 16, !tbaa !7
  %3209 = add nuw i64 %3202, 4
  %3210 = add <4 x i64> %3203, <i64 4, i64 4, i64 4, i64 4>
  %3211 = icmp eq i64 %3209, 32000
  br i1 %3211, label %3212, label %3201, !llvm.loop !326

3212:                                             ; preds = %3212, %3201
  %3213 = phi i64 [ %3220, %3212 ], [ 0, %3201 ]
  %3214 = phi <4 x i64> [ %3221, %3212 ], [ <i64 0, i64 1, i64 2, i64 3>, %3201 ]
  %3215 = trunc <4 x i64> %3214 to <4 x i32>
  %3216 = add <4 x i32> %3215, <i32 1, i32 1, i32 1, i32 1>
  %3217 = sitofp <4 x i32> %3216 to <4 x float>
  %3218 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3217
  %3219 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3213
  store <4 x float> %3218, ptr %3219, align 16, !tbaa !7
  %3220 = add nuw i64 %3213, 4
  %3221 = add <4 x i64> %3214, <i64 4, i64 4, i64 4, i64 4>
  %3222 = icmp eq i64 %3220, 32000
  br i1 %3222, label %3611, label %3212, !llvm.loop !327

3223:                                             ; preds = %3198
  %3224 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.121) #12
  %3225 = icmp eq i32 %3224, 0
  br i1 %3225, label %3226, label %3252

3226:                                             ; preds = %3226, %3223
  %3227 = phi i64 [ %3234, %3226 ], [ 0, %3223 ]
  %3228 = phi <4 x i64> [ %3235, %3226 ], [ <i64 0, i64 1, i64 2, i64 3>, %3223 ]
  %3229 = trunc <4 x i64> %3228 to <4 x i32>
  %3230 = add <4 x i32> %3229, <i32 1, i32 1, i32 1, i32 1>
  %3231 = sitofp <4 x i32> %3230 to <4 x float>
  %3232 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3231
  %3233 = getelementptr inbounds float, ptr @global_data, i64 %3227
  store <4 x float> %3232, ptr %3233, align 16, !tbaa !7
  %3234 = add nuw i64 %3227, 4
  %3235 = add <4 x i64> %3228, <i64 4, i64 4, i64 4, i64 4>
  %3236 = icmp eq i64 %3234, 32000
  br i1 %3236, label %3237, label %3226, !llvm.loop !328

3237:                                             ; preds = %3250, %3226
  %3238 = phi i64 [ %3239, %3250 ], [ 0, %3226 ]
  %3239 = add nuw nsw i64 %3238, 1
  %3240 = trunc i64 %3239 to i32
  %3241 = sitofp i32 %3240 to float
  %3242 = fdiv float 1.000000e+00, %3241
  %3243 = insertelement <4 x float> poison, float %3242, i64 0
  %3244 = shufflevector <4 x float> %3243, <4 x float> poison, <4 x i32> zeroinitializer
  br label %3245

3245:                                             ; preds = %3245, %3237
  %3246 = phi i64 [ 0, %3237 ], [ %3248, %3245 ]
  %3247 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %3238, i64 %3246
  store <4 x float> %3244, ptr %3247, align 16, !tbaa !7
  %3248 = add nuw i64 %3246, 4
  %3249 = icmp eq i64 %3248, 256
  br i1 %3249, label %3250, label %3245, !llvm.loop !329

3250:                                             ; preds = %3245
  %3251 = icmp eq i64 %3239, 256
  br i1 %3251, label %3611, label %3237

3252:                                             ; preds = %3223
  %3253 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.122) #12
  %3254 = icmp eq i32 %3253, 0
  br i1 %3254, label %3255, label %3283

3255:                                             ; preds = %3252
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %3256

3256:                                             ; preds = %3256, %3255
  %3257 = phi i64 [ 0, %3255 ], [ %3259, %3256 ]
  %3258 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3257
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3258, align 16, !tbaa !7
  %3259 = add nuw i64 %3257, 4
  %3260 = icmp eq i64 %3259, 32000
  br i1 %3260, label %3261, label %3256, !llvm.loop !330

3261:                                             ; preds = %3261, %3256
  %3262 = phi i64 [ %3269, %3261 ], [ 0, %3256 ]
  %3263 = phi <4 x i64> [ %3270, %3261 ], [ <i64 0, i64 1, i64 2, i64 3>, %3256 ]
  %3264 = trunc <4 x i64> %3263 to <4 x i32>
  %3265 = add <4 x i32> %3264, <i32 1, i32 1, i32 1, i32 1>
  %3266 = sitofp <4 x i32> %3265 to <4 x float>
  %3267 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3266
  %3268 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3262
  store <4 x float> %3267, ptr %3268, align 16, !tbaa !7
  %3269 = add nuw i64 %3262, 4
  %3270 = add <4 x i64> %3263, <i64 4, i64 4, i64 4, i64 4>
  %3271 = icmp eq i64 %3269, 32000
  br i1 %3271, label %3272, label %3261, !llvm.loop !331

3272:                                             ; preds = %3272, %3261
  %3273 = phi i64 [ %3280, %3272 ], [ 0, %3261 ]
  %3274 = phi <4 x i64> [ %3281, %3272 ], [ <i64 0, i64 1, i64 2, i64 3>, %3261 ]
  %3275 = trunc <4 x i64> %3274 to <4 x i32>
  %3276 = add <4 x i32> %3275, <i32 1, i32 1, i32 1, i32 1>
  %3277 = sitofp <4 x i32> %3276 to <4 x float>
  %3278 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3277
  %3279 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %3273
  store <4 x float> %3278, ptr %3279, align 16, !tbaa !7
  %3280 = add nuw i64 %3273, 4
  %3281 = add <4 x i64> %3274, <i64 4, i64 4, i64 4, i64 4>
  %3282 = icmp eq i64 %3280, 32000
  br i1 %3282, label %3611, label %3272, !llvm.loop !332

3283:                                             ; preds = %3252
  %3284 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.123) #12
  %3285 = icmp eq i32 %3284, 0
  br i1 %3285, label %3286, label %3313

3286:                                             ; preds = %3286, %3283
  %3287 = phi i64 [ %3289, %3286 ], [ 0, %3283 ]
  %3288 = getelementptr inbounds float, ptr @global_data, i64 %3287
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3288, align 16, !tbaa !7
  %3289 = add nuw i64 %3287, 4
  %3290 = icmp eq i64 %3289, 32000
  br i1 %3290, label %3291, label %3286, !llvm.loop !333

3291:                                             ; preds = %3291, %3286
  %3292 = phi i64 [ %3299, %3291 ], [ 0, %3286 ]
  %3293 = phi <4 x i64> [ %3300, %3291 ], [ <i64 0, i64 1, i64 2, i64 3>, %3286 ]
  %3294 = trunc <4 x i64> %3293 to <4 x i32>
  %3295 = add <4 x i32> %3294, <i32 1, i32 1, i32 1, i32 1>
  %3296 = sitofp <4 x i32> %3295 to <4 x float>
  %3297 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3296
  %3298 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3292
  store <4 x float> %3297, ptr %3298, align 16, !tbaa !7
  %3299 = add nuw i64 %3292, 4
  %3300 = add <4 x i64> %3293, <i64 4, i64 4, i64 4, i64 4>
  %3301 = icmp eq i64 %3299, 32000
  br i1 %3301, label %3302, label %3291, !llvm.loop !334

3302:                                             ; preds = %3302, %3291
  %3303 = phi i64 [ %3310, %3302 ], [ 0, %3291 ]
  %3304 = phi <4 x i64> [ %3311, %3302 ], [ <i64 0, i64 1, i64 2, i64 3>, %3291 ]
  %3305 = trunc <4 x i64> %3304 to <4 x i32>
  %3306 = add <4 x i32> %3305, <i32 1, i32 1, i32 1, i32 1>
  %3307 = sitofp <4 x i32> %3306 to <4 x float>
  %3308 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3307
  %3309 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3303
  store <4 x float> %3308, ptr %3309, align 16, !tbaa !7
  %3310 = add nuw i64 %3303, 4
  %3311 = add <4 x i64> %3304, <i64 4, i64 4, i64 4, i64 4>
  %3312 = icmp eq i64 %3310, 32000
  br i1 %3312, label %3611, label %3302, !llvm.loop !335

3313:                                             ; preds = %3283
  %3314 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.124) #12
  %3315 = icmp eq i32 %3314, 0
  br i1 %3315, label %3316, label %3329

3316:                                             ; preds = %3313
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %3317

3317:                                             ; preds = %3317, %3316
  %3318 = phi i64 [ 0, %3316 ], [ %3326, %3317 ]
  %3319 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %3316 ], [ %3327, %3317 ]
  %3320 = add nuw nsw <4 x i64> %3319, <i64 1, i64 1, i64 1, i64 1>
  %3321 = mul nuw nsw <4 x i64> %3320, %3320
  %3322 = trunc <4 x i64> %3321 to <4 x i32>
  %3323 = sitofp <4 x i32> %3322 to <4 x float>
  %3324 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3323
  %3325 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3318
  store <4 x float> %3324, ptr %3325, align 16, !tbaa !7
  %3326 = add nuw i64 %3318, 4
  %3327 = add <4 x i64> %3319, <i64 4, i64 4, i64 4, i64 4>
  %3328 = icmp eq i64 %3326, 32000
  br i1 %3328, label %3611, label %3317, !llvm.loop !336

3329:                                             ; preds = %3313
  %3330 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.125) #12
  %3331 = icmp eq i32 %3330, 0
  br i1 %3331, label %3332, label %3345

3332:                                             ; preds = %3329
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %3333

3333:                                             ; preds = %3333, %3332
  %3334 = phi i64 [ 0, %3332 ], [ %3342, %3333 ]
  %3335 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %3332 ], [ %3343, %3333 ]
  %3336 = add nuw nsw <4 x i64> %3335, <i64 1, i64 1, i64 1, i64 1>
  %3337 = mul nuw nsw <4 x i64> %3336, %3336
  %3338 = trunc <4 x i64> %3337 to <4 x i32>
  %3339 = sitofp <4 x i32> %3338 to <4 x float>
  %3340 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3339
  %3341 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3334
  store <4 x float> %3340, ptr %3341, align 16, !tbaa !7
  %3342 = add nuw i64 %3334, 4
  %3343 = add <4 x i64> %3335, <i64 4, i64 4, i64 4, i64 4>
  %3344 = icmp eq i64 %3342, 32000
  br i1 %3344, label %3611, label %3333, !llvm.loop !337

3345:                                             ; preds = %3329
  %3346 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.126) #12
  %3347 = icmp eq i32 %3346, 0
  br i1 %3347, label %3348, label %3361

3348:                                             ; preds = %3345
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %3349

3349:                                             ; preds = %3349, %3348
  %3350 = phi i64 [ 0, %3348 ], [ %3358, %3349 ]
  %3351 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %3348 ], [ %3359, %3349 ]
  %3352 = add nuw nsw <4 x i64> %3351, <i64 1, i64 1, i64 1, i64 1>
  %3353 = mul nuw nsw <4 x i64> %3352, %3352
  %3354 = trunc <4 x i64> %3353 to <4 x i32>
  %3355 = sitofp <4 x i32> %3354 to <4 x float>
  %3356 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3355
  %3357 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3350
  store <4 x float> %3356, ptr %3357, align 16, !tbaa !7
  %3358 = add nuw i64 %3350, 4
  %3359 = add <4 x i64> %3351, <i64 4, i64 4, i64 4, i64 4>
  %3360 = icmp eq i64 %3358, 32000
  br i1 %3360, label %3611, label %3349, !llvm.loop !338

3361:                                             ; preds = %3345
  %3362 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.127) #12
  %3363 = icmp eq i32 %3362, 0
  br i1 %3363, label %3364, label %3377

3364:                                             ; preds = %3361
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %3365

3365:                                             ; preds = %3365, %3364
  %3366 = phi i64 [ 0, %3364 ], [ %3374, %3365 ]
  %3367 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %3364 ], [ %3375, %3365 ]
  %3368 = add nuw nsw <4 x i64> %3367, <i64 1, i64 1, i64 1, i64 1>
  %3369 = mul nuw nsw <4 x i64> %3368, %3368
  %3370 = trunc <4 x i64> %3369 to <4 x i32>
  %3371 = sitofp <4 x i32> %3370 to <4 x float>
  %3372 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3371
  %3373 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3366
  store <4 x float> %3372, ptr %3373, align 16, !tbaa !7
  %3374 = add nuw i64 %3366, 4
  %3375 = add <4 x i64> %3367, <i64 4, i64 4, i64 4, i64 4>
  %3376 = icmp eq i64 %3374, 32000
  br i1 %3376, label %3611, label %3365, !llvm.loop !339

3377:                                             ; preds = %3361
  %3378 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.128) #12
  %3379 = icmp eq i32 %3378, 0
  br i1 %3379, label %3380, label %3393

3380:                                             ; preds = %3377
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128000) @global_data, i8 0, i64 128000, i1 false), !tbaa !7
  br label %3381

3381:                                             ; preds = %3381, %3380
  %3382 = phi i64 [ 0, %3380 ], [ %3390, %3381 ]
  %3383 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %3380 ], [ %3391, %3381 ]
  %3384 = add nuw nsw <4 x i64> %3383, <i64 1, i64 1, i64 1, i64 1>
  %3385 = mul nuw nsw <4 x i64> %3384, %3384
  %3386 = trunc <4 x i64> %3385 to <4 x i32>
  %3387 = sitofp <4 x i32> %3386 to <4 x float>
  %3388 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3387
  %3389 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3382
  store <4 x float> %3388, ptr %3389, align 16, !tbaa !7
  %3390 = add nuw i64 %3382, 4
  %3391 = add <4 x i64> %3383, <i64 4, i64 4, i64 4, i64 4>
  %3392 = icmp eq i64 %3390, 32000
  br i1 %3392, label %3611, label %3381, !llvm.loop !340

3393:                                             ; preds = %3377
  %3394 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.129) #12
  %3395 = icmp eq i32 %3394, 0
  br i1 %3395, label %3396, label %3406

3396:                                             ; preds = %3396, %3393
  %3397 = phi i64 [ %3399, %3396 ], [ 0, %3393 ]
  %3398 = getelementptr inbounds float, ptr @global_data, i64 %3397
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3398, align 16, !tbaa !7
  %3399 = add nuw i64 %3397, 4
  %3400 = icmp eq i64 %3399, 32000
  br i1 %3400, label %3401, label %3396, !llvm.loop !341

3401:                                             ; preds = %3401, %3396
  %3402 = phi i64 [ %3404, %3401 ], [ 0, %3396 ]
  %3403 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3402
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3403, align 16, !tbaa !7
  %3404 = add nuw i64 %3402, 4
  %3405 = icmp eq i64 %3404, 32000
  br i1 %3405, label %3611, label %3401, !llvm.loop !342

3406:                                             ; preds = %3393
  %3407 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.130) #12
  %3408 = icmp eq i32 %3407, 0
  br i1 %3408, label %3409, label %3436

3409:                                             ; preds = %3409, %3406
  %3410 = phi i64 [ %3412, %3409 ], [ 0, %3406 ]
  %3411 = getelementptr inbounds float, ptr @global_data, i64 %3410
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3411, align 16, !tbaa !7
  %3412 = add nuw i64 %3410, 4
  %3413 = icmp eq i64 %3412, 32000
  br i1 %3413, label %3414, label %3409, !llvm.loop !343

3414:                                             ; preds = %3414, %3409
  %3415 = phi i64 [ %3422, %3414 ], [ 0, %3409 ]
  %3416 = phi <4 x i64> [ %3423, %3414 ], [ <i64 0, i64 1, i64 2, i64 3>, %3409 ]
  %3417 = trunc <4 x i64> %3416 to <4 x i32>
  %3418 = add <4 x i32> %3417, <i32 1, i32 1, i32 1, i32 1>
  %3419 = sitofp <4 x i32> %3418 to <4 x float>
  %3420 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3419
  %3421 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3415
  store <4 x float> %3420, ptr %3421, align 16, !tbaa !7
  %3422 = add nuw i64 %3415, 4
  %3423 = add <4 x i64> %3416, <i64 4, i64 4, i64 4, i64 4>
  %3424 = icmp eq i64 %3422, 32000
  br i1 %3424, label %3425, label %3414, !llvm.loop !344

3425:                                             ; preds = %3425, %3414
  %3426 = phi i64 [ %3433, %3425 ], [ 0, %3414 ]
  %3427 = phi <4 x i64> [ %3434, %3425 ], [ <i64 0, i64 1, i64 2, i64 3>, %3414 ]
  %3428 = trunc <4 x i64> %3427 to <4 x i32>
  %3429 = add <4 x i32> %3428, <i32 1, i32 1, i32 1, i32 1>
  %3430 = sitofp <4 x i32> %3429 to <4 x float>
  %3431 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3430
  %3432 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3426
  store <4 x float> %3431, ptr %3432, align 16, !tbaa !7
  %3433 = add nuw i64 %3426, 4
  %3434 = add <4 x i64> %3427, <i64 4, i64 4, i64 4, i64 4>
  %3435 = icmp eq i64 %3433, 32000
  br i1 %3435, label %3611, label %3425, !llvm.loop !345

3436:                                             ; preds = %3406
  %3437 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.131) #12
  %3438 = icmp eq i32 %3437, 0
  br i1 %3438, label %3439, label %3456

3439:                                             ; preds = %3439, %3436
  %3440 = phi i64 [ %3442, %3439 ], [ 0, %3436 ]
  %3441 = getelementptr inbounds float, ptr @global_data, i64 %3440
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3441, align 16, !tbaa !7
  %3442 = add nuw i64 %3440, 4
  %3443 = icmp eq i64 %3442, 32000
  br i1 %3443, label %3444, label %3439, !llvm.loop !346

3444:                                             ; preds = %3444, %3439
  %3445 = phi i64 [ %3453, %3444 ], [ 0, %3439 ]
  %3446 = phi <4 x i64> [ %3454, %3444 ], [ <i64 0, i64 1, i64 2, i64 3>, %3439 ]
  %3447 = add nuw nsw <4 x i64> %3446, <i64 1, i64 1, i64 1, i64 1>
  %3448 = mul nuw nsw <4 x i64> %3447, %3447
  %3449 = trunc <4 x i64> %3448 to <4 x i32>
  %3450 = sitofp <4 x i32> %3449 to <4 x float>
  %3451 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3450
  %3452 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3445
  store <4 x float> %3451, ptr %3452, align 16, !tbaa !7
  %3453 = add nuw i64 %3445, 4
  %3454 = add <4 x i64> %3446, <i64 4, i64 4, i64 4, i64 4>
  %3455 = icmp eq i64 %3453, 32000
  br i1 %3455, label %3611, label %3444, !llvm.loop !347

3456:                                             ; preds = %3436
  %3457 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.132) #12
  %3458 = icmp eq i32 %3457, 0
  br i1 %3458, label %3459, label %3481

3459:                                             ; preds = %3459, %3456
  %3460 = phi i64 [ %3468, %3459 ], [ 0, %3456 ]
  %3461 = phi <4 x i64> [ %3469, %3459 ], [ <i64 0, i64 1, i64 2, i64 3>, %3456 ]
  %3462 = add nuw nsw <4 x i64> %3461, <i64 1, i64 1, i64 1, i64 1>
  %3463 = mul nuw nsw <4 x i64> %3462, %3462
  %3464 = trunc <4 x i64> %3463 to <4 x i32>
  %3465 = sitofp <4 x i32> %3464 to <4 x float>
  %3466 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3465
  %3467 = getelementptr inbounds float, ptr @global_data, i64 %3460
  store <4 x float> %3466, ptr %3467, align 16, !tbaa !7
  %3468 = add nuw i64 %3460, 4
  %3469 = add <4 x i64> %3461, <i64 4, i64 4, i64 4, i64 4>
  %3470 = icmp eq i64 %3468, 32000
  br i1 %3470, label %3471, label %3459, !llvm.loop !348

3471:                                             ; preds = %3471, %3459
  %3472 = phi i64 [ %3474, %3471 ], [ 0, %3459 ]
  %3473 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3472
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3473, align 16, !tbaa !7
  %3474 = add nuw i64 %3472, 4
  %3475 = icmp eq i64 %3474, 32000
  br i1 %3475, label %3476, label %3471, !llvm.loop !349

3476:                                             ; preds = %3476, %3471
  %3477 = phi i64 [ %3479, %3476 ], [ 0, %3471 ]
  %3478 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3477
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>, ptr %3478, align 16, !tbaa !7
  %3479 = add nuw i64 %3477, 4
  %3480 = icmp eq i64 %3479, 32000
  br i1 %3480, label %3611, label %3476, !llvm.loop !350

3481:                                             ; preds = %3456
  %3482 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.133) #12
  %3483 = icmp eq i32 %3482, 0
  br i1 %3483, label %3484, label %3499

3484:                                             ; preds = %3484, %3481
  %3485 = phi i64 [ %3487, %3484 ], [ 0, %3481 ]
  %3486 = getelementptr inbounds float, ptr @global_data, i64 %3485
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %3486, align 16, !tbaa !7
  %3487 = add nuw i64 %3485, 4
  %3488 = icmp eq i64 %3487, 32000
  br i1 %3488, label %3489, label %3484, !llvm.loop !351

3489:                                             ; preds = %3489, %3484
  %3490 = phi i64 [ %3492, %3489 ], [ 0, %3484 ]
  %3491 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3490
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, ptr %3491, align 16, !tbaa !7
  %3492 = add nuw i64 %3490, 4
  %3493 = icmp eq i64 %3492, 32000
  br i1 %3493, label %3494, label %3489, !llvm.loop !352

3494:                                             ; preds = %3494, %3489
  %3495 = phi i64 [ %3497, %3494 ], [ 0, %3489 ]
  %3496 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3495
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, ptr %3496, align 16, !tbaa !7
  %3497 = add nuw i64 %3495, 4
  %3498 = icmp eq i64 %3497, 32000
  br i1 %3498, label %3611, label %3494, !llvm.loop !353

3499:                                             ; preds = %3481
  %3500 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.134) #12
  %3501 = icmp eq i32 %3500, 0
  br i1 %3501, label %3502, label %3513

3502:                                             ; preds = %3502, %3499
  %3503 = phi i64 [ %3510, %3502 ], [ 0, %3499 ]
  %3504 = phi <4 x i64> [ %3511, %3502 ], [ <i64 0, i64 1, i64 2, i64 3>, %3499 ]
  %3505 = trunc <4 x i64> %3504 to <4 x i32>
  %3506 = add <4 x i32> %3505, <i32 1, i32 1, i32 1, i32 1>
  %3507 = sitofp <4 x i32> %3506 to <4 x float>
  %3508 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3507
  %3509 = getelementptr inbounds float, ptr @global_data, i64 %3503
  store <4 x float> %3508, ptr %3509, align 16, !tbaa !7
  %3510 = add nuw i64 %3503, 4
  %3511 = add <4 x i64> %3504, <i64 4, i64 4, i64 4, i64 4>
  %3512 = icmp eq i64 %3510, 32000
  br i1 %3512, label %3611, label %3502, !llvm.loop !354

3513:                                             ; preds = %3499
  %3514 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.135) #12
  %3515 = icmp eq i32 %3514, 0
  br i1 %3515, label %3516, label %3538

3516:                                             ; preds = %3516, %3513
  %3517 = phi i64 [ %3524, %3516 ], [ 0, %3513 ]
  %3518 = phi <4 x i64> [ %3525, %3516 ], [ <i64 0, i64 1, i64 2, i64 3>, %3513 ]
  %3519 = trunc <4 x i64> %3518 to <4 x i32>
  %3520 = add <4 x i32> %3519, <i32 1, i32 1, i32 1, i32 1>
  %3521 = sitofp <4 x i32> %3520 to <4 x float>
  %3522 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3521
  %3523 = getelementptr inbounds float, ptr @global_data, i64 %3517
  store <4 x float> %3522, ptr %3523, align 16, !tbaa !7
  %3524 = add nuw i64 %3517, 4
  %3525 = add <4 x i64> %3518, <i64 4, i64 4, i64 4, i64 4>
  %3526 = icmp eq i64 %3524, 32000
  br i1 %3526, label %3527, label %3516, !llvm.loop !355

3527:                                             ; preds = %3527, %3516
  %3528 = phi i64 [ %3535, %3527 ], [ 0, %3516 ]
  %3529 = phi <4 x i64> [ %3536, %3527 ], [ <i64 0, i64 1, i64 2, i64 3>, %3516 ]
  %3530 = trunc <4 x i64> %3529 to <4 x i32>
  %3531 = add <4 x i32> %3530, <i32 1, i32 1, i32 1, i32 1>
  %3532 = sitofp <4 x i32> %3531 to <4 x float>
  %3533 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3532
  %3534 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3528
  store <4 x float> %3533, ptr %3534, align 16, !tbaa !7
  %3535 = add nuw i64 %3528, 4
  %3536 = add <4 x i64> %3529, <i64 4, i64 4, i64 4, i64 4>
  %3537 = icmp eq i64 %3535, 32000
  br i1 %3537, label %3611, label %3527, !llvm.loop !356

3538:                                             ; preds = %3513
  %3539 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.136) #12
  %3540 = icmp eq i32 %3539, 0
  br i1 %3540, label %3541, label %3611

3541:                                             ; preds = %3541, %3538
  %3542 = phi i64 [ %3549, %3541 ], [ 0, %3538 ]
  %3543 = phi <4 x i64> [ %3550, %3541 ], [ <i64 0, i64 1, i64 2, i64 3>, %3538 ]
  %3544 = trunc <4 x i64> %3543 to <4 x i32>
  %3545 = add <4 x i32> %3544, <i32 1, i32 1, i32 1, i32 1>
  %3546 = sitofp <4 x i32> %3545 to <4 x float>
  %3547 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3546
  %3548 = getelementptr inbounds float, ptr @global_data, i64 %3542
  store <4 x float> %3547, ptr %3548, align 16, !tbaa !7
  %3549 = add nuw i64 %3542, 4
  %3550 = add <4 x i64> %3543, <i64 4, i64 4, i64 4, i64 4>
  %3551 = icmp eq i64 %3549, 32000
  br i1 %3551, label %3552, label %3541, !llvm.loop !357

3552:                                             ; preds = %3552, %3541
  %3553 = phi i64 [ %3560, %3552 ], [ 0, %3541 ]
  %3554 = phi <4 x i64> [ %3561, %3552 ], [ <i64 0, i64 1, i64 2, i64 3>, %3541 ]
  %3555 = trunc <4 x i64> %3554 to <4 x i32>
  %3556 = add <4 x i32> %3555, <i32 1, i32 1, i32 1, i32 1>
  %3557 = sitofp <4 x i32> %3556 to <4 x float>
  %3558 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3557
  %3559 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %3553
  store <4 x float> %3558, ptr %3559, align 16, !tbaa !7
  %3560 = add nuw i64 %3553, 4
  %3561 = add <4 x i64> %3554, <i64 4, i64 4, i64 4, i64 4>
  %3562 = icmp eq i64 %3560, 32000
  br i1 %3562, label %3563, label %3552, !llvm.loop !358

3563:                                             ; preds = %3563, %3552
  %3564 = phi i64 [ %3571, %3563 ], [ 0, %3552 ]
  %3565 = phi <4 x i64> [ %3572, %3563 ], [ <i64 0, i64 1, i64 2, i64 3>, %3552 ]
  %3566 = trunc <4 x i64> %3565 to <4 x i32>
  %3567 = add <4 x i32> %3566, <i32 1, i32 1, i32 1, i32 1>
  %3568 = sitofp <4 x i32> %3567 to <4 x float>
  %3569 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3568
  %3570 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %3564
  store <4 x float> %3569, ptr %3570, align 16, !tbaa !7
  %3571 = add nuw i64 %3564, 4
  %3572 = add <4 x i64> %3565, <i64 4, i64 4, i64 4, i64 4>
  %3573 = icmp eq i64 %3571, 32000
  br i1 %3573, label %3574, label %3563, !llvm.loop !359

3574:                                             ; preds = %3574, %3563
  %3575 = phi i64 [ %3582, %3574 ], [ 0, %3563 ]
  %3576 = phi <4 x i64> [ %3583, %3574 ], [ <i64 0, i64 1, i64 2, i64 3>, %3563 ]
  %3577 = trunc <4 x i64> %3576 to <4 x i32>
  %3578 = add <4 x i32> %3577, <i32 1, i32 1, i32 1, i32 1>
  %3579 = sitofp <4 x i32> %3578 to <4 x float>
  %3580 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3579
  %3581 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %3575
  store <4 x float> %3580, ptr %3581, align 16, !tbaa !7
  %3582 = add nuw i64 %3575, 4
  %3583 = add <4 x i64> %3576, <i64 4, i64 4, i64 4, i64 4>
  %3584 = icmp eq i64 %3582, 32000
  br i1 %3584, label %3585, label %3574, !llvm.loop !360

3585:                                             ; preds = %3585, %3574
  %3586 = phi i64 [ %3593, %3585 ], [ 0, %3574 ]
  %3587 = phi <4 x i64> [ %3594, %3585 ], [ <i64 0, i64 1, i64 2, i64 3>, %3574 ]
  %3588 = trunc <4 x i64> %3587 to <4 x i32>
  %3589 = add <4 x i32> %3588, <i32 1, i32 1, i32 1, i32 1>
  %3590 = sitofp <4 x i32> %3589 to <4 x float>
  %3591 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %3590
  %3592 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %3586
  store <4 x float> %3591, ptr %3592, align 16, !tbaa !7
  %3593 = add nuw i64 %3586, 4
  %3594 = add <4 x i64> %3587, <i64 4, i64 4, i64 4, i64 4>
  %3595 = icmp eq i64 %3593, 32000
  br i1 %3595, label %3596, label %3585, !llvm.loop !361

3596:                                             ; preds = %3609, %3585
  %3597 = phi i64 [ %3598, %3609 ], [ 0, %3585 ]
  %3598 = add nuw nsw i64 %3597, 1
  %3599 = trunc i64 %3598 to i32
  %3600 = sitofp i32 %3599 to float
  %3601 = fdiv float 1.000000e+00, %3600
  %3602 = insertelement <4 x float> poison, float %3601, i64 0
  %3603 = shufflevector <4 x float> %3602, <4 x float> poison, <4 x i32> zeroinitializer
  br label %3604

3604:                                             ; preds = %3604, %3596
  %3605 = phi i64 [ 0, %3596 ], [ %3607, %3604 ]
  %3606 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %3597, i64 %3605
  store <4 x float> %3603, ptr %3606, align 16, !tbaa !7
  %3607 = add nuw i64 %3605, 4
  %3608 = icmp eq i64 %3607, 256
  br i1 %3608, label %3609, label %3604, !llvm.loop !362

3609:                                             ; preds = %3604
  %3610 = icmp eq i64 %3598, 256
  br i1 %3610, label %3611, label %3596

3611:                                             ; preds = %3609, %3538, %3527, %3502, %3494, %3476, %3444, %3425, %3401, %3381, %3365, %3349, %3333, %3317, %3302, %3272, %3250, %3212, %3187, %3155, %3135, %3116, %3085, %3055, %3014, %2973, %2964, %2944, %2919, %2889, %2843, %2795, %2775, %2755, %2735, %2719, %2706, %2690, %2658, %2606, %2570, %2540, %2520, %2496, %2481, %2465, %2429, %2404, %2399, %2383, %2358, %2322, %2313, %2304, %2289, %2263, %2259, %2230, %2203, %2186, %2175, %2161, %2147, %2133, %2114, %2100, %2096, %2092, %2087, %2035, %2027, %2018, %2009, %1989, %1959, %1929, %1883, %1832, %1781, %1730, %1697, %1656, %1620, %1592, %1546, %1522, %1488, %1434, %1406, %1376, %1367, %1352, %1329, %1309, %1273, %1248, %1212, %1189, %1169, %1113, %1070, %1023, %1008, %976, %956, %915, %880, %838, %807, %787, %767, %747, %727, %708, %678, %633, %590, %580, %547, %511, %498, %473, %440, %400, %358, %322, %285, %265, %255, %225, %205, %199, %162, %118, %98, %78, %4
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind optsize uwtable
define internal i32 @s221() #6 {
  %1 = tail call i32 @init(ptr noundef nonnull @.str.33) #11
  %2 = load i32, ptr @ntimes, align 4, !tbaa !11
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %7

4:                                                ; preds = %9, %0
  %5 = phi i32 [ %11, %9 ], [ 0, %0 ]
  %6 = load float, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), align 16, !tbaa !7
  br label %15

7:                                                ; preds = %9, %0
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.137, double noundef 0.000000e+00) #11
  tail call void @check(i32 noundef 12) #11
  ret i32 0

9:                                                ; preds = %15
  %10 = tail call i32 @dummy(ptr noundef nonnull @global_data, ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), float noundef 0.000000e+00) #13
  %11 = add nuw nsw i32 %5, 1
  %12 = load i32, ptr @ntimes, align 4, !tbaa !11
  %13 = sdiv i32 %12, 2
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %4, label %7

15:                                               ; preds = %15, %4
  %16 = phi float [ %6, %4 ], [ %26, %15 ]
  %17 = phi i64 [ 1, %4 ], [ %28, %15 ]
  %18 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !7
  %20 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %17
  %21 = load float, ptr %20, align 4, !tbaa !7
  %22 = getelementptr inbounds float, ptr @global_data, i64 %17
  %23 = load float, ptr %22, align 4, !tbaa !7
  %24 = tail call float @llvm.fmuladd.f32(float %19, float %21, float %23)
  store float %24, ptr %22, align 4, !tbaa !7
  %25 = fadd float %24, %16
  %26 = fadd float %21, %25
  %27 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %17
  store float %26, ptr %27, align 4, !tbaa !7
  %28 = add nuw nsw i64 %17, 1
  %29 = icmp eq i64 %28, 32000
  br i1 %29, label %9, label %15
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nounwind optsize uwtable
define internal i32 @s1221() #6 {
  %1 = tail call i32 @init(ptr noundef nonnull @.str.33) #11
  %2 = load i32, ptr @ntimes, align 4, !tbaa !11
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %19, %0
  %5 = phi i32 [ %21, %19 ], [ 0, %0 ]
  %6 = load <4 x float>, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), align 16
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi <4 x float> [ %6, %4 ], [ %13, %7 ]
  %9 = phi i64 [ 0, %4 ], [ %15, %7 ]
  %10 = add i64 %9, 4
  %11 = getelementptr inbounds float, ptr @global_data, i64 %10
  %12 = load <4 x float>, ptr %11, align 16, !tbaa !7
  %13 = fadd <4 x float> %8, %12
  %14 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %10
  store <4 x float> %13, ptr %14, align 16, !tbaa !7
  %15 = add nuw i64 %9, 4
  %16 = icmp eq i64 %15, 31996
  br i1 %16, label %19, label %7, !llvm.loop !363

17:                                               ; preds = %19, %0
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.138, double noundef 0.000000e+00) #11
  tail call void @check(i32 noundef 12) #11
  ret i32 0

19:                                               ; preds = %7
  %20 = tail call i32 @dummy(ptr noundef nonnull @global_data, ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), float noundef 0.000000e+00) #13
  %21 = add nuw nsw i32 %5, 1
  %22 = load i32, ptr @ntimes, align 4, !tbaa !11
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %4, label %17
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @s222() #6 {
  %1 = tail call i32 @init(ptr noundef nonnull @.str.34) #11
  %2 = load i32, ptr @ntimes, align 4, !tbaa !11
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %7

4:                                                ; preds = %9, %0
  %5 = phi i32 [ %11, %9 ], [ 0, %0 ]
  %6 = load float, ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 0), align 16, !tbaa !7
  br label %15

7:                                                ; preds = %9, %0
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.139, double noundef 0.000000e+00) #11
  tail call void @check(i32 noundef 12) #11
  ret i32 0

9:                                                ; preds = %15
  %10 = tail call i32 @dummy(ptr noundef nonnull @global_data, ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), float noundef 0.000000e+00) #13
  %11 = add nuw nsw i32 %5, 1
  %12 = load i32, ptr @ntimes, align 4, !tbaa !11
  %13 = sdiv i32 %12, 2
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %4, label %7

15:                                               ; preds = %15, %4
  %16 = phi float [ %6, %4 ], [ %25, %15 ]
  %17 = phi i64 [ 1, %4 ], [ %29, %15 ]
  %18 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !7
  %20 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %17
  %21 = load float, ptr %20, align 4, !tbaa !7
  %22 = getelementptr inbounds float, ptr @global_data, i64 %17
  %23 = load float, ptr %22, align 4, !tbaa !7
  %24 = tail call float @llvm.fmuladd.f32(float %19, float %21, float %23)
  %25 = fmul float %16, %16
  %26 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %17
  store float %25, ptr %26, align 4, !tbaa !7
  %27 = fneg float %19
  %28 = tail call float @llvm.fmuladd.f32(float %27, float %21, float %24)
  store float %28, ptr %22, align 4, !tbaa !7
  %29 = add nuw nsw i64 %17, 1
  %30 = icmp eq i64 %29, 32000
  br i1 %30, label %9, label %15
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @s231() #6 {
  %1 = tail call i32 @init(ptr noundef nonnull @.str.35) #11
  %2 = load i32, ptr @ntimes, align 4, !tbaa !11
  %3 = icmp sgt i32 %2, 255
  br i1 %3, label %4, label %6

4:                                                ; preds = %12, %0
  %5 = phi i32 [ %14, %12 ], [ 0, %0 ]
  br label %8

6:                                                ; preds = %12, %0
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.140, double noundef 0.000000e+00) #11
  tail call void @check(i32 noundef 11) #11
  ret i32 0

8:                                                ; preds = %19, %4
  %9 = phi i64 [ 0, %4 ], [ %20, %19 ]
  %10 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !7
  br label %22

12:                                               ; preds = %19
  %13 = tail call i32 @dummy(ptr noundef nonnull @global_data, ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), float noundef 0.000000e+00) #13
  %14 = add nuw nsw i32 %5, 1
  %15 = load i32, ptr @ntimes, align 4, !tbaa !11
  %16 = sdiv i32 %15, 256
  %17 = mul nsw i32 %16, 100
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %4, label %6

19:                                               ; preds = %22
  %20 = add nuw nsw i64 %9, 1
  %21 = icmp eq i64 %20, 256
  br i1 %21, label %12, label %8

22:                                               ; preds = %22, %8
  %23 = phi float [ %11, %8 ], [ %27, %22 ]
  %24 = phi i64 [ 1, %8 ], [ %29, %22 ]
  %25 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %24, i64 %9
  %26 = load float, ptr %25, align 4, !tbaa !7
  %27 = fadd float %23, %26
  %28 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %24, i64 %9
  store float %27, ptr %28, align 4, !tbaa !7
  %29 = add nuw nsw i64 %24, 1
  %30 = icmp eq i64 %29, 256
  br i1 %30, label %19, label %22
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @s232() #6 {
  %1 = tail call i32 @init(ptr noundef nonnull @.str.36) #11
  %2 = load i32, ptr @ntimes, align 4, !tbaa !11
  %3 = icmp sgt i32 %2, 255
  br i1 %3, label %4, label %6

4:                                                ; preds = %13, %0
  %5 = phi i32 [ %15, %13 ], [ 0, %0 ]
  br label %8

6:                                                ; preds = %13, %0
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.141, double noundef 0.000000e+00) #11
  tail call void @check(i32 noundef 11) #11
  ret i32 0

8:                                                ; preds = %20, %4
  %9 = phi i64 [ 1, %4 ], [ %21, %20 ]
  %10 = phi i64 [ 2, %4 ], [ %22, %20 ]
  %11 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %9, i64 0
  %12 = load float, ptr %11, align 16, !tbaa !7
  br label %24

13:                                               ; preds = %20
  %14 = tail call i32 @dummy(ptr noundef nonnull @global_data, ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), float noundef 1.000000e+00) #13
  %15 = add nuw nsw i32 %5, 1
  %16 = load i32, ptr @ntimes, align 4, !tbaa !11
  %17 = sdiv i32 %16, 256
  %18 = mul nsw i32 %17, 100
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %4, label %6

20:                                               ; preds = %24
  %21 = add nuw nsw i64 %9, 1
  %22 = add nuw nsw i64 %10, 1
  %23 = icmp eq i64 %21, 256
  br i1 %23, label %13, label %8

24:                                               ; preds = %24, %8
  %25 = phi float [ %12, %8 ], [ %29, %24 ]
  %26 = phi i64 [ 1, %8 ], [ %31, %24 ]
  %27 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %9, i64 %26
  %28 = load float, ptr %27, align 4, !tbaa !7
  %29 = tail call float @llvm.fmuladd.f32(float %25, float %25, float %28)
  %30 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %9, i64 %26
  store float %29, ptr %30, align 4, !tbaa !7
  %31 = add nuw nsw i64 %26, 1
  %32 = icmp eq i64 %31, %10
  br i1 %32, label %20, label %24
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @s1232() #6 {
  %1 = tail call i32 @init(ptr noundef nonnull @.str.36) #11
  %2 = load i32, ptr @ntimes, align 4, !tbaa !11
  %3 = icmp sgt i32 %2, 255
  br i1 %3, label %4, label %6

4:                                                ; preds = %10, %0
  %5 = phi i32 [ %12, %10 ], [ 0, %0 ]
  br label %8

6:                                                ; preds = %10, %0
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.142, double noundef 0.000000e+00) #11
  tail call void @check(i32 noundef 11) #11
  ret i32 0

8:                                                ; preds = %17, %4
  %9 = phi i64 [ 0, %4 ], [ %18, %17 ]
  br label %20

10:                                               ; preds = %17
  %11 = tail call i32 @dummy(ptr noundef nonnull @global_data, ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), float noundef 1.000000e+00) #13
  %12 = add nuw nsw i32 %5, 1
  %13 = load i32, ptr @ntimes, align 4, !tbaa !11
  %14 = sdiv i32 %13, 256
  %15 = mul nsw i32 %14, 100
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %4, label %6

17:                                               ; preds = %20
  %18 = add nuw nsw i64 %9, 1
  %19 = icmp eq i64 %18, 256
  br i1 %19, label %10, label %8

20:                                               ; preds = %20, %8
  %21 = phi i64 [ %9, %8 ], [ %28, %20 ]
  %22 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %21, i64 %9
  %23 = load float, ptr %22, align 4, !tbaa !7
  %24 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %21, i64 %9
  %25 = load float, ptr %24, align 4, !tbaa !7
  %26 = fadd float %23, %25
  %27 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %21, i64 %9
  store float %26, ptr %27, align 4, !tbaa !7
  %28 = add nuw nsw i64 %21, 1
  %29 = icmp eq i64 %28, 256
  br i1 %29, label %17, label %20
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @s233() #6 {
  %1 = tail call i32 @init(ptr noundef nonnull @.str.37) #11
  %2 = load i32, ptr @ntimes, align 4, !tbaa !11
  %3 = icmp sgt i32 %2, 255
  br i1 %3, label %4, label %6

4:                                                ; preds = %12, %0
  %5 = phi i32 [ %14, %12 ], [ 0, %0 ]
  br label %8

6:                                                ; preds = %12, %0
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.143, double noundef 0.000000e+00) #11
  tail call void @check(i32 noundef 1122) #11
  ret i32 0

8:                                                ; preds = %30, %4
  %9 = phi i64 [ 1, %4 ], [ %31, %30 ]
  %10 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !7
  br label %21

12:                                               ; preds = %30
  %13 = tail call i32 @dummy(ptr noundef nonnull @global_data, ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), float noundef 0.000000e+00) #13
  %14 = add nuw nsw i32 %5, 1
  %15 = load i32, ptr @ntimes, align 4, !tbaa !11
  %16 = sdiv i32 %15, 256
  %17 = mul nsw i32 %16, 100
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %4, label %6

19:                                               ; preds = %21
  %20 = add nsw i64 %9, -1
  br label %33

21:                                               ; preds = %21, %8
  %22 = phi float [ %11, %8 ], [ %26, %21 ]
  %23 = phi i64 [ 1, %8 ], [ %28, %21 ]
  %24 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %23, i64 %9
  %25 = load float, ptr %24, align 4, !tbaa !7
  %26 = fadd float %22, %25
  %27 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %23, i64 %9
  store float %26, ptr %27, align 4, !tbaa !7
  %28 = add nuw nsw i64 %23, 1
  %29 = icmp eq i64 %28, 256
  br i1 %29, label %19, label %21

30:                                               ; preds = %33
  %31 = add nuw nsw i64 %9, 1
  %32 = icmp eq i64 %31, 256
  br i1 %32, label %12, label %8

33:                                               ; preds = %33, %19
  %34 = phi i64 [ 1, %19 ], [ %41, %33 ]
  %35 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %34, i64 %20
  %36 = load float, ptr %35, align 4, !tbaa !7
  %37 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %34, i64 %9
  %38 = load float, ptr %37, align 4, !tbaa !7
  %39 = fadd float %36, %38
  %40 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %34, i64 %9
  store float %39, ptr %40, align 4, !tbaa !7
  %41 = add nuw nsw i64 %34, 1
  %42 = icmp eq i64 %41, 256
  br i1 %42, label %30, label %33
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @s2233() #6 {
  %1 = tail call i32 @init(ptr noundef nonnull @.str.37) #11
  %2 = load i32, ptr @ntimes, align 4, !tbaa !11
  %3 = icmp sgt i32 %2, 255
  br i1 %3, label %4, label %6

4:                                                ; preds = %12, %0
  %5 = phi i32 [ %14, %12 ], [ 0, %0 ]
  br label %8

6:                                                ; preds = %12, %0
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.144, double noundef 0.000000e+00) #11
  tail call void @check(i32 noundef 1122) #11
  ret i32 0

8:                                                ; preds = %30, %4
  %9 = phi i64 [ 1, %4 ], [ %31, %30 ]
  %10 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !7
  br label %21

12:                                               ; preds = %30
  %13 = tail call i32 @dummy(ptr noundef nonnull @global_data, ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), float noundef 0.000000e+00) #13
  %14 = add nuw nsw i32 %5, 1
  %15 = load i32, ptr @ntimes, align 4, !tbaa !11
  %16 = sdiv i32 %15, 256
  %17 = mul nsw i32 %16, 100
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %4, label %6

19:                                               ; preds = %21
  %20 = add nsw i64 %9, -1
  br label %33

21:                                               ; preds = %21, %8
  %22 = phi float [ %11, %8 ], [ %26, %21 ]
  %23 = phi i64 [ 1, %8 ], [ %28, %21 ]
  %24 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %23, i64 %9
  %25 = load float, ptr %24, align 4, !tbaa !7
  %26 = fadd float %22, %25
  %27 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %23, i64 %9
  store float %26, ptr %27, align 4, !tbaa !7
  %28 = add nuw nsw i64 %23, 1
  %29 = icmp eq i64 %28, 256
  br i1 %29, label %19, label %21

30:                                               ; preds = %33
  %31 = add nuw nsw i64 %9, 1
  %32 = icmp eq i64 %31, 256
  br i1 %32, label %12, label %8

33:                                               ; preds = %33, %19
  %34 = phi i64 [ 1, %19 ], [ %41, %33 ]
  %35 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %20, i64 %34
  %36 = load float, ptr %35, align 4, !tbaa !7
  %37 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %9, i64 %34
  %38 = load float, ptr %37, align 4, !tbaa !7
  %39 = fadd float %36, %38
  %40 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %9, i64 %34
  store float %39, ptr %40, align 4, !tbaa !7
  %41 = add nuw nsw i64 %34, 1
  %42 = icmp eq i64 %41, 256
  br i1 %42, label %30, label %33
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @s235() #6 {
  %1 = tail call i32 @init(ptr noundef nonnull @.str.39) #11
  %2 = load i32, ptr @ntimes, align 4, !tbaa !11
  %3 = icmp sgt i32 %2, 255
  br i1 %3, label %4, label %6

4:                                                ; preds = %8, %0
  %5 = phi i32 [ %10, %8 ], [ 0, %0 ]
  br label %15

6:                                                ; preds = %8, %0
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.145, double noundef 0.000000e+00) #11
  tail call void @check(i32 noundef 111) #11
  ret i32 0

8:                                                ; preds = %26
  %9 = tail call i32 @dummy(ptr noundef nonnull @global_data, ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), ptr noundef nonnull getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), float noundef 0.000000e+00) #13
  %10 = add nuw nsw i32 %5, 1
  %11 = load i32, ptr @ntimes, align 4, !tbaa !11
  %12 = sdiv i32 %11, 256
  %13 = mul nsw i32 %12, 200
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %4, label %6

15:                                               ; preds = %26, %4
  %16 = phi i64 [ 0, %4 ], [ %27, %26 ]
  %17 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !7
  %19 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %16
  %20 = load float, ptr %19, align 4, !tbaa !7
  %21 = getelementptr inbounds float, ptr @global_data, i64 %16
  %22 = load float, ptr %21, align 4, !tbaa !7
  %23 = tail call float @llvm.fmuladd.f32(float %18, float %20, float %22)
  store float %23, ptr %21, align 4, !tbaa !7
  %24 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 0, i64 %16
  %25 = load float, ptr %24, align 4, !tbaa !7
  br label %29

26:                                               ; preds = %29
  %27 = add nuw nsw i64 %16, 1
  %28 = icmp eq i64 %27, 256
  br i1 %28, label %8, label %15

29:                                               ; preds = %29, %15
  %30 = phi float [ %25, %15 ], [ %34, %29 ]
  %31 = phi i64 [ 1, %15 ], [ %36, %29 ]
  %32 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %31, i64 %16
  %33 = load float, ptr %32, align 4, !tbaa !7
  %34 = tail call float @llvm.fmuladd.f32(float %33, float %23, float %30)
  %35 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %31, i64 %16
  store float %34, ptr %35, align 4, !tbaa !7
  %36 = add nuw nsw i64 %31, 1
  %37 = icmp eq i64 %36, 256
  br i1 %37, label %26, label %29
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @set(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = tail call i32 @posix_memalign(ptr noundef nonnull @xx, i64 noundef 16, i64 noundef 128000) #13
  %5 = tail call i32 @putchar(i32 10)
  br label %82

6:                                                ; preds = %100, %6
  %7 = phi i64 [ %9, %6 ], [ 0, %100 ]
  %8 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 3, i64 %7
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %8, align 16, !tbaa !7
  %9 = add nuw i64 %7, 4
  %10 = icmp eq i64 %9, 32000
  br i1 %10, label %11, label %6, !llvm.loop !364

11:                                               ; preds = %11, %6
  %12 = phi i64 [ %14, %11 ], [ 0, %6 ]
  %13 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 6, i64 %12
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %13, align 16, !tbaa !7
  %14 = add nuw i64 %12, 4
  %15 = icmp eq i64 %14, 32000
  br i1 %15, label %16, label %11, !llvm.loop !365

16:                                               ; preds = %16, %11
  %17 = phi i64 [ %19, %16 ], [ 0, %11 ]
  %18 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 9, i64 %17
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %18, align 16, !tbaa !7
  %19 = add nuw i64 %17, 4
  %20 = icmp eq i64 %19, 32000
  br i1 %20, label %21, label %16, !llvm.loop !366

21:                                               ; preds = %21, %16
  %22 = phi i64 [ %24, %21 ], [ 0, %16 ]
  %23 = getelementptr inbounds %struct.GlobalData, ptr @global_data, i64 0, i32 12, i64 %22
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %23, align 16, !tbaa !7
  %24 = add nuw i64 %22, 4
  %25 = icmp eq i64 %24, 32000
  br i1 %25, label %26, label %21, !llvm.loop !367

26:                                               ; preds = %39, %21
  %27 = phi i64 [ %28, %39 ], [ 0, %21 ]
  %28 = add nuw nsw i64 %27, 1
  %29 = trunc i64 %28 to i32
  %30 = sitofp i32 %29 to float
  %31 = fdiv float 1.000000e+00, %30
  %32 = insertelement <4 x float> poison, float %31, i64 0
  %33 = shufflevector <4 x float> %32, <4 x float> poison, <4 x i32> zeroinitializer
  br label %34

34:                                               ; preds = %34, %26
  %35 = phi i64 [ 0, %26 ], [ %37, %34 ]
  %36 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 15, i64 0, i64 0), i64 %27, i64 %35
  store <4 x float> %33, ptr %36, align 16, !tbaa !7
  %37 = add nuw i64 %35, 4
  %38 = icmp eq i64 %37, 256
  br i1 %38, label %39, label %34, !llvm.loop !368

39:                                               ; preds = %34
  %40 = icmp eq i64 %28, 256
  br i1 %40, label %41, label %26

41:                                               ; preds = %54, %39
  %42 = phi i64 [ %43, %54 ], [ 0, %39 ]
  %43 = add nuw nsw i64 %42, 1
  %44 = trunc i64 %43 to i32
  %45 = sitofp i32 %44 to float
  %46 = fdiv float 1.000000e+00, %45
  %47 = insertelement <4 x float> poison, float %46, i64 0
  %48 = shufflevector <4 x float> %47, <4 x float> poison, <4 x i32> zeroinitializer
  br label %49

49:                                               ; preds = %49, %41
  %50 = phi i64 [ 0, %41 ], [ %52, %49 ]
  %51 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 18, i64 0, i64 0), i64 %42, i64 %50
  store <4 x float> %48, ptr %51, align 16, !tbaa !7
  %52 = add nuw i64 %50, 4
  %53 = icmp eq i64 %52, 256
  br i1 %53, label %54, label %49, !llvm.loop !369

54:                                               ; preds = %49
  %55 = icmp eq i64 %43, 256
  br i1 %55, label %56, label %41

56:                                               ; preds = %69, %54
  %57 = phi i64 [ %58, %69 ], [ 0, %54 ]
  %58 = add nuw nsw i64 %57, 1
  %59 = trunc i64 %58 to i32
  %60 = sitofp i32 %59 to float
  %61 = fdiv float 1.000000e+00, %60
  %62 = insertelement <4 x float> poison, float %61, i64 0
  %63 = shufflevector <4 x float> %62, <4 x float> poison, <4 x i32> zeroinitializer
  br label %64

64:                                               ; preds = %64, %56
  %65 = phi i64 [ 0, %56 ], [ %67, %64 ]
  %66 = getelementptr inbounds [256 x float], ptr getelementptr inbounds (%struct.GlobalData, ptr @global_data, i64 0, i32 21, i64 0, i64 0), i64 %57, i64 %65
  store <4 x float> %63, ptr %66, align 16, !tbaa !7
  %67 = add nuw i64 %65, 4
  %68 = icmp eq i64 %67, 256
  br i1 %68, label %69, label %64, !llvm.loop !370

69:                                               ; preds = %64
  %70 = icmp eq i64 %58, 256
  br i1 %70, label %71, label %56

71:                                               ; preds = %71, %69
  %72 = phi i64 [ %79, %71 ], [ 0, %69 ]
  %73 = phi <4 x i64> [ %80, %71 ], [ <i64 0, i64 1, i64 2, i64 3>, %69 ]
  %74 = trunc <4 x i64> %73 to <4 x i32>
  %75 = add <4 x i32> %74, <i32 1, i32 1, i32 1, i32 1>
  %76 = and <4 x i32> %75, <i32 3, i32 3, i32 3, i32 3>
  %77 = add nuw nsw <4 x i32> %76, <i32 1, i32 1, i32 1, i32 1>
  %78 = getelementptr inbounds [32000 x i32], ptr @indx, i64 0, i64 %72
  store <4 x i32> %77, ptr %78, align 16, !tbaa !11
  %79 = add nuw i64 %72, 4
  %80 = add <4 x i64> %73, <i64 4, i64 4, i64 4, i64 4>
  %81 = icmp eq i64 %79, 32000
  br i1 %81, label %105, label %71, !llvm.loop !371

82:                                               ; preds = %82, %3
  %83 = phi i64 [ 0, %3 ], [ %98, %82 ]
  %84 = add nuw nsw i64 %83, 4
  %85 = getelementptr inbounds i32, ptr %0, i64 %83
  %86 = trunc i64 %84 to i32
  store i32 %86, ptr %85, align 4, !tbaa !11
  %87 = add nuw nsw i64 %83, 2
  %88 = add nuw nsw i64 %83, 1
  %89 = getelementptr inbounds i32, ptr %0, i64 %88
  %90 = trunc i64 %87 to i32
  store i32 %90, ptr %89, align 4, !tbaa !11
  %91 = getelementptr inbounds i32, ptr %0, i64 %87
  %92 = trunc i64 %83 to i32
  store i32 %92, ptr %91, align 4, !tbaa !11
  %93 = add nuw nsw i64 %83, 3
  %94 = getelementptr inbounds i32, ptr %0, i64 %93
  %95 = trunc i64 %93 to i32
  store i32 %95, ptr %94, align 4, !tbaa !11
  %96 = getelementptr inbounds i32, ptr %0, i64 %84
  %97 = trunc i64 %88 to i32
  store i32 %97, ptr %96, align 4, !tbaa !11
  %98 = add nuw nsw i64 %83, 5
  %99 = icmp ult i64 %83, 31995
  br i1 %99, label %82, label %100

100:                                              ; preds = %100, %82
  %101 = phi i64 [ %103, %100 ], [ 0, %82 ]
  %102 = getelementptr inbounds float, ptr @global_data, i64 %101
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %102, align 16, !tbaa !7
  %103 = add nuw i64 %101, 4
  %104 = icmp eq i64 %103, 32000
  br i1 %104, label %6, label %100, !llvm.loop !372

105:                                              ; preds = %71
  store float 1.000000e+00, ptr %1, align 4, !tbaa !7
  store float 2.000000e+00, ptr %2, align 4, !tbaa !7
  ret void
}

; Function Attrs: nofree nounwind optsize
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %6 = call i32 @posix_memalign(ptr noundef nonnull %3, i64 noundef 16, i64 noundef 128000) #13
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr @ntimes, align 4, !tbaa !11
  %10 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.147, i32 noundef %9) #11
  br label %21

11:                                               ; preds = %2
  %12 = getelementptr inbounds ptr, ptr %1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !373
  %14 = call i32 @atoi(ptr nocapture noundef %13) #12
  store i32 %14, ptr @ntimes, align 4, !tbaa !11
  %15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.147, i32 noundef %14) #11
  %16 = icmp eq i32 %0, 2
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds ptr, ptr %1, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !373
  %20 = call i32 @atoi(ptr nocapture noundef %19) #12
  store i32 %20, ptr @digits, align 4, !tbaa !11
  br label %21

21:                                               ; preds = %17, %11, %8
  %22 = load ptr, ptr %3, align 8, !tbaa !373
  call void @set(ptr noundef %22, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %23 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %24 = call i32 @s221() #11
  %25 = call i32 @s1221() #11
  %26 = call i32 @s222() #11
  %27 = call i32 @s231() #11
  %28 = call i32 @s232() #11
  %29 = call i32 @s1232() #11
  %30 = call i32 @s233() #11
  %31 = call i32 @s2233() #11
  %32 = call i32 @s235() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize willreturn memory(read) }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }

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
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !14, !15}
!17 = distinct !{!17, !14, !15}
!18 = distinct !{!18, !14, !15}
!19 = distinct !{!19, !14, !15}
!20 = distinct !{!20, !14, !15}
!21 = distinct !{!21, !14, !15}
!22 = distinct !{!22, !14, !15}
!23 = distinct !{!23, !14, !15}
!24 = distinct !{!24, !14, !15}
!25 = distinct !{!25, !14, !15}
!26 = distinct !{!26, !14, !15}
!27 = distinct !{!27, !14, !15}
!28 = distinct !{!28, !14, !15}
!29 = distinct !{!29, !14, !15}
!30 = distinct !{!30, !14, !15}
!31 = distinct !{!31, !14, !15}
!32 = distinct !{!32, !14, !15}
!33 = distinct !{!33, !14, !15}
!34 = distinct !{!34, !14, !15}
!35 = distinct !{!35, !14, !15}
!36 = distinct !{!36, !14, !15}
!37 = distinct !{!37, !14, !15}
!38 = distinct !{!38, !14, !15}
!39 = distinct !{!39, !14, !15}
!40 = distinct !{!40, !14, !15}
!41 = distinct !{!41, !14, !15}
!42 = distinct !{!42, !14, !15}
!43 = distinct !{!43, !14, !15}
!44 = distinct !{!44, !14, !15}
!45 = distinct !{!45, !14, !15}
!46 = distinct !{!46, !14, !15}
!47 = distinct !{!47, !14, !15}
!48 = distinct !{!48, !14, !15}
!49 = distinct !{!49, !14, !15}
!50 = distinct !{!50, !14, !15}
!51 = distinct !{!51, !14, !15}
!52 = distinct !{!52, !14, !15}
!53 = distinct !{!53, !14, !15}
!54 = distinct !{!54, !14, !15}
!55 = distinct !{!55, !14, !15}
!56 = distinct !{!56, !14, !15}
!57 = distinct !{!57, !14, !15}
!58 = distinct !{!58, !14, !15}
!59 = distinct !{!59, !14, !15}
!60 = distinct !{!60, !14, !15}
!61 = distinct !{!61, !14, !15}
!62 = distinct !{!62, !14, !15}
!63 = distinct !{!63, !14, !15}
!64 = distinct !{!64, !14, !15}
!65 = distinct !{!65, !14, !15}
!66 = distinct !{!66, !14, !15}
!67 = distinct !{!67, !14, !15}
!68 = distinct !{!68, !14, !15}
!69 = distinct !{!69, !14, !15}
!70 = distinct !{!70, !14, !15}
!71 = distinct !{!71, !14, !15}
!72 = distinct !{!72, !14, !15}
!73 = distinct !{!73, !14, !15}
!74 = distinct !{!74, !14, !15}
!75 = distinct !{!75, !14, !15}
!76 = distinct !{!76, !14, !15}
!77 = distinct !{!77, !14, !15}
!78 = distinct !{!78, !14, !15}
!79 = distinct !{!79, !14, !15}
!80 = distinct !{!80, !14, !15}
!81 = distinct !{!81, !14, !15}
!82 = distinct !{!82, !14, !15}
!83 = distinct !{!83, !14, !15}
!84 = distinct !{!84, !14, !15}
!85 = distinct !{!85, !14, !15}
!86 = distinct !{!86, !14, !15}
!87 = distinct !{!87, !14, !15}
!88 = distinct !{!88, !14, !15}
!89 = distinct !{!89, !14, !15}
!90 = distinct !{!90, !14, !15}
!91 = distinct !{!91, !14, !15}
!92 = distinct !{!92, !14, !15}
!93 = distinct !{!93, !14, !15}
!94 = distinct !{!94, !14, !15}
!95 = distinct !{!95, !14, !15}
!96 = distinct !{!96, !14, !15}
!97 = distinct !{!97, !14, !15}
!98 = distinct !{!98, !14, !15}
!99 = distinct !{!99, !14, !15}
!100 = distinct !{!100, !14, !15}
!101 = distinct !{!101, !14, !15}
!102 = distinct !{!102, !14, !15}
!103 = distinct !{!103, !14, !15}
!104 = distinct !{!104, !14, !15}
!105 = distinct !{!105, !14, !15}
!106 = distinct !{!106, !14, !15}
!107 = distinct !{!107, !14, !15}
!108 = distinct !{!108, !14, !15}
!109 = distinct !{!109, !14, !15}
!110 = distinct !{!110, !14, !15}
!111 = distinct !{!111, !14, !15}
!112 = distinct !{!112, !14, !15}
!113 = distinct !{!113, !14, !15}
!114 = distinct !{!114, !14, !15}
!115 = distinct !{!115, !14, !15}
!116 = distinct !{!116, !14, !15}
!117 = distinct !{!117, !14, !15}
!118 = distinct !{!118, !14, !15}
!119 = distinct !{!119, !14, !15}
!120 = distinct !{!120, !14, !15}
!121 = distinct !{!121, !14, !15}
!122 = distinct !{!122, !14, !15}
!123 = distinct !{!123, !14, !15}
!124 = distinct !{!124, !14, !15}
!125 = distinct !{!125, !14, !15}
!126 = distinct !{!126, !14, !15}
!127 = distinct !{!127, !14, !15}
!128 = distinct !{!128, !14, !15}
!129 = distinct !{!129, !14, !15}
!130 = distinct !{!130, !14, !15}
!131 = distinct !{!131, !14, !15}
!132 = distinct !{!132, !14, !15}
!133 = distinct !{!133, !14, !15}
!134 = distinct !{!134, !14, !15}
!135 = distinct !{!135, !14, !15}
!136 = distinct !{!136, !14, !15}
!137 = distinct !{!137, !14, !15}
!138 = distinct !{!138, !14, !15}
!139 = distinct !{!139, !14, !15}
!140 = distinct !{!140, !14, !15}
!141 = distinct !{!141, !14, !15}
!142 = distinct !{!142, !14, !15}
!143 = distinct !{!143, !14, !15}
!144 = distinct !{!144, !14, !15}
!145 = distinct !{!145, !14, !15}
!146 = distinct !{!146, !14, !15}
!147 = distinct !{!147, !14, !15}
!148 = distinct !{!148, !14, !15}
!149 = distinct !{!149, !14, !15}
!150 = distinct !{!150, !14, !15}
!151 = distinct !{!151, !14, !15}
!152 = distinct !{!152, !14, !15}
!153 = distinct !{!153, !14, !15}
!154 = distinct !{!154, !14, !15}
!155 = distinct !{!155, !14, !15}
!156 = distinct !{!156, !14, !15}
!157 = distinct !{!157, !14, !15}
!158 = distinct !{!158, !14, !15}
!159 = distinct !{!159, !14, !15}
!160 = distinct !{!160, !14, !15}
!161 = distinct !{!161, !14, !15}
!162 = distinct !{!162, !14, !15}
!163 = distinct !{!163, !14, !15}
!164 = distinct !{!164, !14, !15}
!165 = distinct !{!165, !14, !15}
!166 = distinct !{!166, !14, !15}
!167 = distinct !{!167, !14, !15}
!168 = distinct !{!168, !14, !15}
!169 = distinct !{!169, !14, !15}
!170 = distinct !{!170, !14, !15}
!171 = distinct !{!171, !14, !15}
!172 = distinct !{!172, !14, !15}
!173 = distinct !{!173, !14, !15}
!174 = distinct !{!174, !14, !15}
!175 = distinct !{!175, !14, !15}
!176 = distinct !{!176, !14, !15}
!177 = distinct !{!177, !14, !15}
!178 = distinct !{!178, !14, !15}
!179 = distinct !{!179, !14, !15}
!180 = distinct !{!180, !14, !15}
!181 = distinct !{!181, !14, !15}
!182 = distinct !{!182, !14, !15}
!183 = distinct !{!183, !14, !15}
!184 = distinct !{!184, !14, !15}
!185 = distinct !{!185, !14, !15}
!186 = distinct !{!186, !14, !15}
!187 = distinct !{!187, !14, !15}
!188 = distinct !{!188, !14, !15}
!189 = distinct !{!189, !14, !15}
!190 = distinct !{!190, !14, !15}
!191 = distinct !{!191, !14, !15}
!192 = distinct !{!192, !14, !15}
!193 = distinct !{!193, !14, !15}
!194 = distinct !{!194, !14, !15}
!195 = distinct !{!195, !14, !15}
!196 = distinct !{!196, !14, !15}
!197 = distinct !{!197, !14, !15}
!198 = distinct !{!198, !14, !15}
!199 = distinct !{!199, !14, !15}
!200 = distinct !{!200, !14, !15}
!201 = distinct !{!201, !14, !15}
!202 = distinct !{!202, !14, !15}
!203 = distinct !{!203, !14, !15}
!204 = distinct !{!204, !14, !15}
!205 = distinct !{!205, !14, !15}
!206 = distinct !{!206, !14, !15}
!207 = distinct !{!207, !14, !15}
!208 = distinct !{!208, !14, !15}
!209 = distinct !{!209, !14, !15}
!210 = distinct !{!210, !14, !15}
!211 = distinct !{!211, !14, !15}
!212 = distinct !{!212, !14, !15}
!213 = distinct !{!213, !14, !15}
!214 = distinct !{!214, !14, !15}
!215 = distinct !{!215, !14, !15}
!216 = distinct !{!216, !14, !15}
!217 = distinct !{!217, !14, !15}
!218 = distinct !{!218, !14, !15}
!219 = distinct !{!219, !14, !15}
!220 = distinct !{!220, !14, !15}
!221 = distinct !{!221, !14, !15}
!222 = distinct !{!222, !14, !15}
!223 = distinct !{!223, !14, !15}
!224 = distinct !{!224, !14, !15}
!225 = distinct !{!225, !14, !15}
!226 = distinct !{!226, !14, !15}
!227 = distinct !{!227, !14, !15}
!228 = distinct !{!228, !14, !15}
!229 = distinct !{!229, !14, !15}
!230 = distinct !{!230, !14, !15}
!231 = distinct !{!231, !14, !15}
!232 = distinct !{!232, !14, !15}
!233 = distinct !{!233, !14, !15}
!234 = distinct !{!234, !14, !15}
!235 = distinct !{!235, !14, !15}
!236 = distinct !{!236, !14, !15}
!237 = distinct !{!237, !14, !15}
!238 = distinct !{!238, !14, !15}
!239 = distinct !{!239, !14, !15}
!240 = distinct !{!240, !14, !15}
!241 = distinct !{!241, !14, !15}
!242 = distinct !{!242, !14, !15}
!243 = distinct !{!243, !14, !15}
!244 = distinct !{!244, !14, !15}
!245 = distinct !{!245, !14, !15}
!246 = distinct !{!246, !14, !15}
!247 = distinct !{!247, !14, !15}
!248 = distinct !{!248, !14, !15}
!249 = distinct !{!249, !14, !15}
!250 = distinct !{!250, !14, !15}
!251 = distinct !{!251, !14, !15}
!252 = distinct !{!252, !14, !15}
!253 = distinct !{!253, !14, !15}
!254 = distinct !{!254, !14, !15}
!255 = distinct !{!255, !14, !15}
!256 = distinct !{!256, !14, !15}
!257 = distinct !{!257, !14, !15}
!258 = distinct !{!258, !14, !15}
!259 = distinct !{!259, !14, !15}
!260 = distinct !{!260, !14, !15}
!261 = distinct !{!261, !14, !15}
!262 = distinct !{!262, !14, !15}
!263 = distinct !{!263, !14, !15}
!264 = distinct !{!264, !14, !15}
!265 = distinct !{!265, !14, !15}
!266 = distinct !{!266, !14, !15}
!267 = distinct !{!267, !14, !15}
!268 = distinct !{!268, !14, !15}
!269 = distinct !{!269, !14, !15}
!270 = distinct !{!270, !14, !15}
!271 = distinct !{!271, !14, !15}
!272 = distinct !{!272, !14, !15}
!273 = distinct !{!273, !14, !15}
!274 = distinct !{!274, !14, !15}
!275 = distinct !{!275, !14, !15}
!276 = distinct !{!276, !14, !15}
!277 = distinct !{!277, !14, !15}
!278 = distinct !{!278, !14, !15}
!279 = distinct !{!279, !14, !15}
!280 = distinct !{!280, !14, !15}
!281 = distinct !{!281, !14, !15}
!282 = distinct !{!282, !14, !15}
!283 = distinct !{!283, !14, !15}
!284 = distinct !{!284, !14, !15}
!285 = distinct !{!285, !14, !15}
!286 = distinct !{!286, !14, !15}
!287 = distinct !{!287, !14, !15}
!288 = distinct !{!288, !14, !15}
!289 = distinct !{!289, !14, !15}
!290 = distinct !{!290, !14, !15}
!291 = distinct !{!291, !14, !15}
!292 = distinct !{!292, !14, !15}
!293 = distinct !{!293, !14, !15}
!294 = distinct !{!294, !14, !15}
!295 = distinct !{!295, !14, !15}
!296 = distinct !{!296, !14, !15}
!297 = distinct !{!297, !14, !15}
!298 = distinct !{!298, !14, !15}
!299 = distinct !{!299, !14, !15}
!300 = distinct !{!300, !14, !15}
!301 = distinct !{!301, !14, !15}
!302 = distinct !{!302, !14, !15}
!303 = distinct !{!303, !14, !15}
!304 = distinct !{!304, !14, !15}
!305 = distinct !{!305, !14, !15}
!306 = distinct !{!306, !14, !15}
!307 = distinct !{!307, !14, !15}
!308 = distinct !{!308, !14, !15}
!309 = distinct !{!309, !14, !15}
!310 = distinct !{!310, !14, !15}
!311 = distinct !{!311, !14, !15}
!312 = distinct !{!312, !14, !15}
!313 = distinct !{!313, !14, !15}
!314 = distinct !{!314, !14, !15}
!315 = distinct !{!315, !14, !15}
!316 = distinct !{!316, !14, !15}
!317 = distinct !{!317, !14, !15}
!318 = distinct !{!318, !14, !15}
!319 = distinct !{!319, !14, !15}
!320 = distinct !{!320, !14, !15}
!321 = distinct !{!321, !14, !15}
!322 = distinct !{!322, !14, !15}
!323 = distinct !{!323, !14, !15}
!324 = distinct !{!324, !14, !15}
!325 = distinct !{!325, !14, !15}
!326 = distinct !{!326, !14, !15}
!327 = distinct !{!327, !14, !15}
!328 = distinct !{!328, !14, !15}
!329 = distinct !{!329, !14, !15}
!330 = distinct !{!330, !14, !15}
!331 = distinct !{!331, !14, !15}
!332 = distinct !{!332, !14, !15}
!333 = distinct !{!333, !14, !15}
!334 = distinct !{!334, !14, !15}
!335 = distinct !{!335, !14, !15}
!336 = distinct !{!336, !14, !15}
!337 = distinct !{!337, !14, !15}
!338 = distinct !{!338, !14, !15}
!339 = distinct !{!339, !14, !15}
!340 = distinct !{!340, !14, !15}
!341 = distinct !{!341, !14, !15}
!342 = distinct !{!342, !14, !15}
!343 = distinct !{!343, !14, !15}
!344 = distinct !{!344, !14, !15}
!345 = distinct !{!345, !14, !15}
!346 = distinct !{!346, !14, !15}
!347 = distinct !{!347, !14, !15}
!348 = distinct !{!348, !14, !15}
!349 = distinct !{!349, !14, !15}
!350 = distinct !{!350, !14, !15}
!351 = distinct !{!351, !14, !15}
!352 = distinct !{!352, !14, !15}
!353 = distinct !{!353, !14, !15}
!354 = distinct !{!354, !14, !15}
!355 = distinct !{!355, !14, !15}
!356 = distinct !{!356, !14, !15}
!357 = distinct !{!357, !14, !15}
!358 = distinct !{!358, !14, !15}
!359 = distinct !{!359, !14, !15}
!360 = distinct !{!360, !14, !15}
!361 = distinct !{!361, !14, !15}
!362 = distinct !{!362, !14, !15}
!363 = distinct !{!363, !14, !15}
!364 = distinct !{!364, !14, !15}
!365 = distinct !{!365, !14, !15}
!366 = distinct !{!366, !14, !15}
!367 = distinct !{!367, !14, !15}
!368 = distinct !{!368, !14, !15}
!369 = distinct !{!369, !14, !15}
!370 = distinct !{!370, !14, !15}
!371 = distinct !{!371, !14, !15}
!372 = distinct !{!372, !14, !15}
!373 = !{!374, !374, i64 0}
!374 = !{!"any pointer", !9, i64 0}
