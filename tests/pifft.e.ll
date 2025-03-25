; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/FreeBench/pifft/pifft.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"ERROR: Could not open indata file.\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Allocation Failure!\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"nfft= %d\0Aradix= %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"calculating %d digits of PI...\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"0.125\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"0.625\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"precision= %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"floating point operation: %g op.\0A\00", align 1
@str = private unnamed_addr constant [46 x i8] c"PI calculation to estimate the FFT benchmarks\00", align 1
@str.19 = private unnamed_addr constant [16 x i8] c"initializing...\00", align 1
@str.20 = private unnamed_addr constant [14 x i8] c"AGM iteration\00", align 1

; Function Attrs: nofree nounwind optsize memory(write, argmem: readwrite) uwtable
define internal void @makewt(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) #0 {
  store i32 %0, ptr %1, align 4, !tbaa !7
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 1, ptr %4, align 4, !tbaa !7
  %5 = icmp sgt i32 %0, 2
  br i1 %5, label %6, label %112

6:                                                ; preds = %3
  %7 = lshr i32 %0, 1
  %8 = sitofp i32 %7 to double
  %9 = fdiv double 0x3FE921FB54442D18, %8
  %10 = fmul double %9, %8
  %11 = tail call double @cos(double noundef %10) #19
  store double 1.000000e+00, ptr %2, align 8, !tbaa !11
  %12 = getelementptr inbounds double, ptr %2, i64 1
  store double %11, ptr %12, align 8, !tbaa !11
  %13 = icmp ugt i32 %0, 7
  br i1 %13, label %14, label %27

14:                                               ; preds = %6
  %15 = fmul double %9, 2.000000e+00
  %16 = tail call double @cos(double noundef %15) #19
  %17 = fdiv double 5.000000e-01, %16
  %18 = getelementptr inbounds double, ptr %2, i64 2
  store double %17, ptr %18, align 8, !tbaa !11
  %19 = fmul double %9, 6.000000e+00
  %20 = tail call double @cos(double noundef %19) #19
  %21 = fdiv double 5.000000e-01, %20
  %22 = getelementptr inbounds double, ptr %2, i64 3
  store double %21, ptr %22, align 8, !tbaa !11
  %23 = icmp ugt i32 %0, 9
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = fmul double %9, 3.000000e+00
  %26 = zext i32 %7 to i64
  br label %30

27:                                               ; preds = %30, %6
  %28 = icmp ugt i32 %0, 5
  br i1 %28, label %29, label %112

29:                                               ; preds = %27, %14
  br label %51

30:                                               ; preds = %30, %24
  %31 = phi i64 [ 4, %24 ], [ %47, %30 ]
  %32 = trunc i64 %31 to i32
  %33 = sitofp i32 %32 to double
  %34 = fmul double %9, %33
  %35 = tail call double @cos(double noundef %34) #19
  %36 = getelementptr inbounds double, ptr %2, i64 %31
  store double %35, ptr %36, align 8, !tbaa !11
  %37 = tail call double @sin(double noundef %34) #19
  %38 = or i64 %31, 1
  %39 = getelementptr inbounds double, ptr %2, i64 %38
  store double %37, ptr %39, align 8, !tbaa !11
  %40 = fmul double %25, %33
  %41 = tail call double @cos(double noundef %40) #19
  %42 = or i64 %31, 2
  %43 = getelementptr inbounds double, ptr %2, i64 %42
  store double %41, ptr %43, align 8, !tbaa !11
  %44 = tail call double @sin(double noundef %40) #19
  %45 = or i64 %31, 3
  %46 = getelementptr inbounds double, ptr %2, i64 %45
  store double %44, ptr %46, align 8, !tbaa !11
  %47 = add nuw nsw i64 %31, 4
  %48 = icmp ult i64 %47, %26
  br i1 %48, label %30, label %27, !llvm.loop !13

49:                                               ; preds = %83, %62, %51
  %50 = icmp ugt i32 %52, 5
  br i1 %50, label %51, label %112, !llvm.loop !15

51:                                               ; preds = %49, %29
  %52 = phi i32 [ %55, %49 ], [ %7, %29 ]
  %53 = phi i32 [ %54, %49 ], [ 0, %29 ]
  %54 = add nuw nsw i32 %52, %53
  %55 = lshr i32 %52, 1
  %56 = zext i32 %54 to i64
  %57 = getelementptr inbounds double, ptr %2, i64 %56
  store double 1.000000e+00, ptr %57, align 8, !tbaa !11
  %58 = add nuw nsw i32 %54, 1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds double, ptr %2, i64 %59
  store double %11, ptr %60, align 8, !tbaa !11
  %61 = icmp ugt i32 %52, 7
  br i1 %61, label %62, label %49

62:                                               ; preds = %51
  %63 = add nuw nsw i32 %53, 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds double, ptr %2, i64 %64
  %66 = load double, ptr %65, align 8, !tbaa !11
  %67 = add nuw nsw i32 %53, 6
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds double, ptr %2, i64 %68
  %70 = load double, ptr %69, align 8, !tbaa !11
  %71 = fdiv double 5.000000e-01, %66
  %72 = add nuw nsw i32 %54, 2
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds double, ptr %2, i64 %73
  store double %71, ptr %74, align 8, !tbaa !11
  %75 = fdiv double 5.000000e-01, %70
  %76 = add nuw nsw i32 %54, 3
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds double, ptr %2, i64 %77
  store double %75, ptr %78, align 8, !tbaa !11
  %79 = icmp ugt i32 %52, 9
  br i1 %79, label %80, label %49

80:                                               ; preds = %62
  %81 = zext i32 %53 to i64
  %82 = zext i32 %55 to i64
  br label %83

83:                                               ; preds = %83, %80
  %84 = phi i64 [ 4, %80 ], [ %110, %83 ]
  %85 = shl nuw nsw i64 %84, 1
  %86 = add nuw i64 %85, %81
  %87 = and i64 %86, 4294967295
  %88 = getelementptr inbounds double, ptr %2, i64 %87
  %89 = load double, ptr %88, align 8, !tbaa !11
  %90 = add i64 %86, 1
  %91 = and i64 %90, 4294967295
  %92 = getelementptr inbounds double, ptr %2, i64 %91
  %93 = load double, ptr %92, align 8, !tbaa !11
  %94 = add i64 %86, 2
  %95 = and i64 %94, 4294967295
  %96 = getelementptr inbounds double, ptr %2, i64 %95
  %97 = load double, ptr %96, align 8, !tbaa !11
  %98 = add i64 %86, 3
  %99 = and i64 %98, 4294967295
  %100 = getelementptr inbounds double, ptr %2, i64 %99
  %101 = load double, ptr %100, align 8, !tbaa !11
  %102 = add nuw nsw i64 %84, %56
  %103 = getelementptr inbounds double, ptr %2, i64 %102
  store double %89, ptr %103, align 8, !tbaa !11
  %104 = add nuw nsw i64 %102, 1
  %105 = getelementptr inbounds double, ptr %2, i64 %104
  store double %93, ptr %105, align 8, !tbaa !11
  %106 = add nuw nsw i64 %102, 2
  %107 = getelementptr inbounds double, ptr %2, i64 %106
  store double %97, ptr %107, align 8, !tbaa !11
  %108 = add nuw nsw i64 %102, 3
  %109 = getelementptr inbounds double, ptr %2, i64 %108
  store double %101, ptr %109, align 8, !tbaa !11
  %110 = add nuw nsw i64 %84, 4
  %111 = icmp ult i64 %110, %82
  br i1 %111, label %83, label %49, !llvm.loop !16

112:                                              ; preds = %49, %27, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @cftfsub(i32 noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #2 {
  %6 = icmp sgt i32 %0, 32
  br i1 %6, label %7, label %27

7:                                                ; preds = %5
  %8 = lshr i32 %0, 2
  %9 = sub nsw i32 %3, %8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds double, ptr %4, i64 %10
  tail call void @cftf1st(i32 noundef %0, ptr noundef %1, ptr noundef %11) #20
  %12 = icmp ugt i32 %0, 512
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  tail call void @cftrec1(i32 noundef %8, ptr noundef %1, i32 noundef %3, ptr noundef %4) #20
  %14 = zext i32 %8 to i64
  %15 = getelementptr inbounds double, ptr %1, i64 %14
  tail call void @cftrec2(i32 noundef %8, ptr noundef %15, i32 noundef %3, ptr noundef %4) #20
  %16 = shl nuw nsw i32 %8, 1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds double, ptr %1, i64 %17
  tail call void @cftrec1(i32 noundef %8, ptr noundef %18, i32 noundef %3, ptr noundef %4) #20
  %19 = mul nuw nsw i32 %8, 3
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds double, ptr %1, i64 %20
  tail call void @cftrec1(i32 noundef %8, ptr noundef %21, i32 noundef %3, ptr noundef %4) #20
  br label %26

22:                                               ; preds = %7
  %23 = icmp ugt i32 %0, 131
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void @cftexp1(i32 noundef %0, ptr noundef %1, i32 noundef %3, ptr noundef %4) #20
  br label %26

25:                                               ; preds = %22
  tail call void @cftfx41(i32 noundef %0, ptr noundef %1, i32 noundef %3, ptr noundef %4) #20
  br label %26

26:                                               ; preds = %25, %24, %13
  tail call void @bitrv2(i32 noundef %0, ptr noundef %2, ptr noundef %1) #20
  br label %52

27:                                               ; preds = %5
  %28 = icmp sgt i32 %0, 8
  br i1 %28, label %29, label %44

29:                                               ; preds = %27
  %30 = icmp eq i32 %0, 32
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = add nsw i32 %3, -8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, ptr %4, i64 %33
  tail call void @cftf161(ptr noundef %1, ptr noundef %34) #20
  tail call void @bitrv216(ptr noundef %1) #20
  br label %52

35:                                               ; preds = %29
  tail call void @cftf081(ptr noundef %1, ptr noundef %4) #20
  %36 = getelementptr inbounds double, ptr %1, i64 2
  %37 = getelementptr inbounds double, ptr %1, i64 6
  %38 = getelementptr inbounds double, ptr %1, i64 8
  %39 = getelementptr inbounds double, ptr %1, i64 12
  %40 = load <2 x double>, ptr %38, align 8, !tbaa !11
  %41 = load <2 x double>, ptr %39, align 8, !tbaa !11
  %42 = load <2 x double>, ptr %36, align 8, !tbaa !11
  store <2 x double> %40, ptr %36, align 8, !tbaa !11
  store <2 x double> %42, ptr %38, align 8, !tbaa !11
  %43 = load <2 x double>, ptr %37, align 8, !tbaa !11
  store <2 x double> %41, ptr %37, align 8, !tbaa !11
  store <2 x double> %43, ptr %39, align 8, !tbaa !11
  br label %52

44:                                               ; preds = %27
  switch i32 %0, label %52 [
    i32 8, label %45
    i32 4, label %46
  ]

45:                                               ; preds = %44
  tail call void @cftf040(ptr noundef %1) #20
  br label %52

46:                                               ; preds = %44
  %47 = getelementptr inbounds double, ptr %1, i64 2
  %48 = load <2 x double>, ptr %1, align 8, !tbaa !11
  %49 = load <2 x double>, ptr %47, align 8, !tbaa !11
  %50 = fadd <2 x double> %48, %49
  store <2 x double> %50, ptr %1, align 8, !tbaa !11
  %51 = fsub <2 x double> %48, %49
  store <2 x double> %51, ptr %47, align 8, !tbaa !11
  br label %52

52:                                               ; preds = %46, %45, %44, %35, %31, %26
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @cftf1st(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = ashr i32 %0, 3
  %5 = shl nsw i32 %4, 1
  %6 = shl nsw i32 %4, 2
  %7 = mul nsw i32 %4, 6
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds double, ptr %1, i64 %8
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds double, ptr %1, i64 %10
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds double, ptr %1, i64 %12
  %14 = load <2 x double>, ptr %1, align 8, !tbaa !11
  %15 = load <2 x double>, ptr %9, align 8, !tbaa !11
  %16 = fsub <2 x double> %14, %15
  %17 = load <2 x double>, ptr %11, align 8, !tbaa !11
  %18 = load <2 x double>, ptr %13, align 8, !tbaa !11
  %19 = fsub <2 x double> %17, %18
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %21 = fadd <2 x double> %14, %15
  %22 = fadd <2 x double> %17, %18
  %23 = fadd <2 x double> %21, %22
  store <2 x double> %23, ptr %1, align 8, !tbaa !11
  %24 = fsub <2 x double> %21, %22
  store <2 x double> %24, ptr %11, align 8, !tbaa !11
  %25 = fsub <2 x double> %16, %20
  %26 = fadd <2 x double> %16, %20
  %27 = shufflevector <2 x double> %25, <2 x double> %26, <2 x i32> <i32 0, i32 3>
  store <2 x double> %27, ptr %9, align 8, !tbaa !11
  %28 = shufflevector <2 x double> %26, <2 x double> %25, <2 x i32> <i32 0, i32 3>
  store <2 x double> %28, ptr %13, align 8, !tbaa !11
  %29 = getelementptr inbounds double, ptr %2, i64 1
  %30 = load double, ptr %29, align 8, !tbaa !11
  %31 = getelementptr inbounds double, ptr %2, i64 2
  %32 = load double, ptr %31, align 8, !tbaa !11
  %33 = getelementptr inbounds double, ptr %2, i64 3
  %34 = load double, ptr %33, align 8, !tbaa !11
  %35 = add nsw i32 %4, -2
  %36 = icmp sgt i32 %0, 39
  %37 = sext i32 %35 to i64
  br i1 %36, label %38, label %258

38:                                               ; preds = %3
  %39 = shl nsw i32 %4, 2
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi i64 [ 0, %38 ], [ %48, %40 ]
  %42 = phi i64 [ 2, %38 ], [ %256, %40 ]
  %43 = phi double [ 0.000000e+00, %38 ], [ %68, %40 ]
  %44 = phi double [ 1.000000e+00, %38 ], [ %60, %40 ]
  %45 = phi double [ 0.000000e+00, %38 ], [ %55, %40 ]
  %46 = phi double [ 1.000000e+00, %38 ], [ %50, %40 ]
  %47 = trunc i64 %42 to i32
  %48 = add nuw nsw i64 %41, 4
  %49 = getelementptr inbounds double, ptr %2, i64 %48
  %50 = load double, ptr %49, align 8, !tbaa !11
  %51 = fadd double %46, %50
  %52 = fmul double %32, %51
  %53 = add nuw nsw i64 %41, 5
  %54 = getelementptr inbounds double, ptr %2, i64 %53
  %55 = load double, ptr %54, align 8, !tbaa !11
  %56 = fadd double %45, %55
  %57 = fmul double %32, %56
  %58 = add nuw nsw i64 %41, 6
  %59 = getelementptr inbounds double, ptr %2, i64 %58
  %60 = load double, ptr %59, align 8, !tbaa !11
  %61 = fadd double %44, %60
  %62 = fmul double %34, %61
  %63 = add nuw nsw i64 %41, 7
  %64 = getelementptr inbounds double, ptr %2, i64 %63
  %65 = load double, ptr %64, align 8, !tbaa !11
  %66 = fsub double %43, %65
  %67 = fmul double %34, %66
  %68 = fneg double %65
  %69 = add nsw i64 %42, %10
  %70 = add nsw i64 %69, %10
  %71 = add i32 %39, %47
  %72 = add nsw i64 %70, %10
  %73 = add nsw i32 %71, %5
  %74 = getelementptr inbounds double, ptr %1, i64 %42
  %75 = getelementptr inbounds double, ptr %1, i64 %70
  %76 = load double, ptr %75, align 8, !tbaa !11
  %77 = or i32 %71, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, ptr %1, i64 %78
  %80 = load double, ptr %79, align 8, !tbaa !11
  %81 = add nuw nsw i64 %42, 2
  %82 = getelementptr inbounds double, ptr %1, i64 %81
  %83 = add nsw i64 %70, 2
  %84 = getelementptr inbounds double, ptr %1, i64 %83
  %85 = getelementptr inbounds double, ptr %1, i64 %69
  %86 = getelementptr inbounds double, ptr %1, i64 %72
  %87 = load double, ptr %86, align 8, !tbaa !11
  %88 = or i32 %73, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, ptr %1, i64 %89
  %91 = load double, ptr %90, align 8, !tbaa !11
  %92 = add nsw i64 %69, 2
  %93 = getelementptr inbounds double, ptr %1, i64 %92
  %94 = add nsw i64 %72, 2
  %95 = getelementptr inbounds double, ptr %1, i64 %94
  %96 = load <2 x double>, ptr %74, align 8, !tbaa !11
  %97 = insertelement <2 x double> poison, double %76, i64 0
  %98 = insertelement <2 x double> %97, double %80, i64 1
  %99 = fadd <2 x double> %96, %98
  %100 = extractelement <2 x double> %96, i64 0
  %101 = fsub double %100, %76
  %102 = extractelement <2 x double> %96, i64 1
  %103 = fsub double %102, %80
  %104 = load <2 x double>, ptr %85, align 8, !tbaa !11
  %105 = insertelement <2 x double> poison, double %87, i64 0
  %106 = insertelement <2 x double> %105, double %91, i64 1
  %107 = fadd <2 x double> %104, %106
  %108 = extractelement <2 x double> %104, i64 0
  %109 = fsub double %108, %87
  %110 = extractelement <2 x double> %104, i64 1
  %111 = fsub double %110, %91
  %112 = fsub <2 x double> %99, %107
  %113 = load <2 x double>, ptr %82, align 8, !tbaa !11
  %114 = load <2 x double>, ptr %84, align 8, !tbaa !11
  %115 = fadd <2 x double> %113, %114
  %116 = load <2 x double>, ptr %93, align 8, !tbaa !11
  %117 = load <2 x double>, ptr %95, align 8, !tbaa !11
  %118 = fadd <2 x double> %116, %117
  %119 = fadd <2 x double> %99, %107
  store <2 x double> %119, ptr %74, align 8, !tbaa !11
  %120 = fadd <2 x double> %115, %118
  store <2 x double> %120, ptr %82, align 8, !tbaa !11
  store <2 x double> %112, ptr %85, align 8, !tbaa !11
  %121 = fsub <2 x double> %115, %118
  store <2 x double> %121, ptr %93, align 8, !tbaa !11
  %122 = fsub double %101, %111
  %123 = fadd double %103, %109
  %124 = fneg double %57
  %125 = fmul double %123, %124
  %126 = tail call double @llvm.fmuladd.f64(double %52, double %122, double %125)
  store double %126, ptr %75, align 8, !tbaa !11
  %127 = fmul double %57, %122
  %128 = tail call double @llvm.fmuladd.f64(double %52, double %123, double %127)
  store double %128, ptr %79, align 8, !tbaa !11
  %129 = fneg double %55
  %130 = fadd double %101, %111
  %131 = fsub double %103, %109
  %132 = fmul double %67, %131
  %133 = tail call double @llvm.fmuladd.f64(double %62, double %130, double %132)
  %134 = fneg double %67
  %135 = fmul double %130, %134
  %136 = tail call double @llvm.fmuladd.f64(double %62, double %131, double %135)
  %137 = fsub <2 x double> %113, %114
  %138 = fsub <2 x double> %116, %117
  %139 = shufflevector <2 x double> %138, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %140 = fsub <2 x double> %137, %139
  %141 = fadd <2 x double> %137, %139
  %142 = shufflevector <2 x double> %140, <2 x double> %141, <2 x i32> <i32 0, i32 3>
  %143 = shufflevector <2 x double> %142, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %144 = insertelement <2 x double> poison, double %129, i64 0
  %145 = insertelement <2 x double> %144, double %55, i64 1
  %146 = fmul <2 x double> %143, %145
  %147 = insertelement <2 x double> poison, double %50, i64 0
  %148 = shufflevector <2 x double> %147, <2 x double> poison, <2 x i32> zeroinitializer
  %149 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %148, <2 x double> %142, <2 x double> %146)
  store <2 x double> %149, ptr %84, align 8, !tbaa !11
  store double %133, ptr %86, align 8, !tbaa !11
  store double %136, ptr %90, align 8, !tbaa !11
  %150 = shufflevector <2 x double> %141, <2 x double> %140, <2 x i32> <i32 0, i32 3>
  %151 = shufflevector <2 x double> %150, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %152 = insertelement <2 x double> poison, double %68, i64 0
  %153 = insertelement <2 x double> %152, double %65, i64 1
  %154 = fmul <2 x double> %151, %153
  %155 = insertelement <2 x double> poison, double %60, i64 0
  %156 = shufflevector <2 x double> %155, <2 x double> poison, <2 x i32> zeroinitializer
  %157 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %156, <2 x double> %150, <2 x double> %154)
  store <2 x double> %157, ptr %95, align 8, !tbaa !11
  %158 = sub nsw i64 %10, %42
  %159 = sub nsw i32 %5, %47
  %160 = add nsw i64 %158, %10
  %161 = add nsw i32 %159, %5
  %162 = add nsw i64 %160, %10
  %163 = add nsw i32 %161, %5
  %164 = add nsw i64 %162, %10
  %165 = getelementptr inbounds double, ptr %1, i64 %158
  %166 = getelementptr inbounds double, ptr %1, i64 %162
  %167 = load double, ptr %166, align 8, !tbaa !11
  %168 = or i32 %163, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds double, ptr %1, i64 %169
  %171 = load double, ptr %170, align 8, !tbaa !11
  %172 = add nsw i64 %158, -2
  %173 = getelementptr inbounds double, ptr %1, i64 %172
  %174 = add nsw i64 %162, -2
  %175 = getelementptr inbounds double, ptr %1, i64 %174
  %176 = getelementptr inbounds double, ptr %1, i64 %160
  %177 = load double, ptr %176, align 8, !tbaa !11
  %178 = getelementptr inbounds double, ptr %1, i64 %164
  %179 = load double, ptr %178, align 8, !tbaa !11
  %180 = or i32 %161, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds double, ptr %1, i64 %181
  %183 = load double, ptr %182, align 8, !tbaa !11
  %184 = shl i64 %164, 32
  %185 = ashr exact i64 %184, 32
  %186 = or i64 %185, 1
  %187 = getelementptr inbounds double, ptr %1, i64 %186
  %188 = load double, ptr %187, align 8, !tbaa !11
  %189 = fsub double %177, %179
  %190 = fsub double %183, %188
  %191 = add nsw i64 %160, -2
  %192 = getelementptr inbounds double, ptr %1, i64 %191
  %193 = add nsw i64 %164, -2
  %194 = getelementptr inbounds double, ptr %1, i64 %193
  %195 = load <2 x double>, ptr %173, align 8, !tbaa !11
  %196 = load <2 x double>, ptr %175, align 8, !tbaa !11
  %197 = fadd <2 x double> %195, %196
  %198 = load <2 x double>, ptr %192, align 8, !tbaa !11
  %199 = load <2 x double>, ptr %194, align 8, !tbaa !11
  %200 = fadd <2 x double> %198, %199
  %201 = load <2 x double>, ptr %165, align 8, !tbaa !11
  %202 = insertelement <2 x double> poison, double %167, i64 0
  %203 = insertelement <2 x double> %202, double %171, i64 1
  %204 = fadd <2 x double> %201, %203
  %205 = extractelement <2 x double> %201, i64 0
  %206 = fsub double %205, %167
  %207 = extractelement <2 x double> %201, i64 1
  %208 = fsub double %207, %171
  %209 = insertelement <2 x double> poison, double %177, i64 0
  %210 = insertelement <2 x double> %209, double %183, i64 1
  %211 = insertelement <2 x double> poison, double %179, i64 0
  %212 = insertelement <2 x double> %211, double %188, i64 1
  %213 = fadd <2 x double> %210, %212
  %214 = fadd <2 x double> %204, %213
  %215 = fsub <2 x double> %204, %213
  %216 = extractelement <2 x double> %215, i64 0
  %217 = fsub <2 x double> %204, %213
  %218 = extractelement <2 x double> %217, i64 1
  store <2 x double> %214, ptr %165, align 8, !tbaa !11
  %219 = fadd <2 x double> %197, %200
  store <2 x double> %219, ptr %173, align 8, !tbaa !11
  store double %216, ptr %176, align 8, !tbaa !11
  store double %218, ptr %182, align 8, !tbaa !11
  %220 = fsub <2 x double> %197, %200
  store <2 x double> %220, ptr %192, align 8, !tbaa !11
  %221 = fsub double %206, %190
  %222 = fadd double %208, %189
  %223 = fneg double %52
  %224 = fmul double %222, %223
  %225 = tail call double @llvm.fmuladd.f64(double %57, double %221, double %224)
  store double %225, ptr %166, align 8, !tbaa !11
  %226 = fmul double %52, %221
  %227 = tail call double @llvm.fmuladd.f64(double %57, double %222, double %226)
  store double %227, ptr %170, align 8, !tbaa !11
  %228 = fneg double %50
  %229 = fadd double %206, %190
  %230 = fsub double %208, %189
  %231 = fmul double %62, %230
  %232 = tail call double @llvm.fmuladd.f64(double %67, double %229, double %231)
  %233 = fneg double %62
  %234 = fmul double %229, %233
  %235 = tail call double @llvm.fmuladd.f64(double %67, double %230, double %234)
  %236 = fneg double %60
  %237 = fsub <2 x double> %195, %196
  %238 = fsub <2 x double> %198, %199
  %239 = shufflevector <2 x double> %238, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %240 = fsub <2 x double> %237, %239
  %241 = fadd <2 x double> %237, %239
  %242 = shufflevector <2 x double> %240, <2 x double> %241, <2 x i32> <i32 0, i32 3>
  %243 = shufflevector <2 x double> %242, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %244 = insertelement <2 x double> poison, double %228, i64 0
  %245 = insertelement <2 x double> %244, double %50, i64 1
  %246 = fmul <2 x double> %243, %245
  %247 = insertelement <2 x double> poison, double %55, i64 0
  %248 = shufflevector <2 x double> %247, <2 x double> poison, <2 x i32> zeroinitializer
  %249 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %248, <2 x double> %242, <2 x double> %246)
  store <2 x double> %249, ptr %175, align 8, !tbaa !11
  store double %232, ptr %178, align 8, !tbaa !11
  store double %235, ptr %187, align 8, !tbaa !11
  %250 = shufflevector <2 x double> %241, <2 x double> %240, <2 x i32> <i32 0, i32 3>
  %251 = insertelement <2 x double> %155, double %236, i64 1
  %252 = shufflevector <2 x double> %250, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %253 = fmul <2 x double> %251, %252
  %254 = shufflevector <2 x double> %152, <2 x double> poison, <2 x i32> zeroinitializer
  %255 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %254, <2 x double> %250, <2 x double> %253)
  store <2 x double> %255, ptr %194, align 8, !tbaa !11
  %256 = add nuw nsw i64 %42, 4
  %257 = icmp slt i64 %256, %37
  br i1 %257, label %40, label %258, !llvm.loop !17

258:                                              ; preds = %40, %3
  %259 = phi double [ 1.000000e+00, %3 ], [ %50, %40 ]
  %260 = phi double [ 0.000000e+00, %3 ], [ %55, %40 ]
  %261 = phi double [ 1.000000e+00, %3 ], [ %60, %40 ]
  %262 = phi double [ 0.000000e+00, %3 ], [ %68, %40 ]
  %263 = fadd double %30, %259
  %264 = fmul double %32, %263
  %265 = fadd double %30, %260
  %266 = fmul double %32, %265
  %267 = fsub double %261, %30
  %268 = fmul double %34, %267
  %269 = fsub double %262, %30
  %270 = fmul double %34, %269
  %271 = mul nsw i32 %4, 3
  %272 = mul nsw i32 %4, 5
  %273 = mul nsw i32 %4, 7
  %274 = getelementptr inbounds double, ptr %1, i64 %37
  %275 = add nsw i32 %272, -2
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds double, ptr %1, i64 %276
  %278 = add nsw i32 %271, -2
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds double, ptr %1, i64 %279
  %281 = add nsw i32 %273, -2
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds double, ptr %1, i64 %282
  %284 = load <2 x double>, ptr %274, align 8, !tbaa !11
  %285 = load <2 x double>, ptr %277, align 8, !tbaa !11
  %286 = fadd <2 x double> %284, %285
  %287 = load <2 x double>, ptr %280, align 8, !tbaa !11
  %288 = load <2 x double>, ptr %283, align 8, !tbaa !11
  %289 = fadd <2 x double> %287, %288
  %290 = fadd <2 x double> %286, %289
  store <2 x double> %290, ptr %274, align 8, !tbaa !11
  %291 = fsub <2 x double> %286, %289
  store <2 x double> %291, ptr %280, align 8, !tbaa !11
  %292 = fneg double %266
  %293 = fneg double %270
  %294 = fsub <2 x double> %284, %285
  %295 = fsub <2 x double> %287, %288
  %296 = shufflevector <2 x double> %295, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %297 = fsub <2 x double> %294, %296
  %298 = fadd <2 x double> %294, %296
  %299 = shufflevector <2 x double> %297, <2 x double> %298, <2 x i32> <i32 0, i32 3>
  %300 = shufflevector <2 x double> %299, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %301 = insertelement <2 x double> poison, double %292, i64 0
  %302 = insertelement <2 x double> %301, double %266, i64 1
  %303 = fmul <2 x double> %300, %302
  %304 = insertelement <2 x double> poison, double %264, i64 0
  %305 = shufflevector <2 x double> %304, <2 x double> poison, <2 x i32> zeroinitializer
  %306 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %305, <2 x double> %299, <2 x double> %303)
  store <2 x double> %306, ptr %277, align 8, !tbaa !11
  %307 = shufflevector <2 x double> %298, <2 x double> %297, <2 x i32> <i32 0, i32 3>
  %308 = shufflevector <2 x double> %307, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %309 = insertelement <2 x double> poison, double %270, i64 0
  %310 = insertelement <2 x double> %309, double %293, i64 1
  %311 = fmul <2 x double> %308, %310
  %312 = insertelement <2 x double> poison, double %268, i64 0
  %313 = shufflevector <2 x double> %312, <2 x double> poison, <2 x i32> zeroinitializer
  %314 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %313, <2 x double> %307, <2 x double> %311)
  store <2 x double> %314, ptr %283, align 8, !tbaa !11
  %315 = sext i32 %4 to i64
  %316 = getelementptr inbounds double, ptr %1, i64 %315
  %317 = sext i32 %272 to i64
  %318 = getelementptr inbounds double, ptr %1, i64 %317
  %319 = add nsw i32 %272, 1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds double, ptr %1, i64 %320
  %322 = sext i32 %271 to i64
  %323 = getelementptr inbounds double, ptr %1, i64 %322
  %324 = sext i32 %273 to i64
  %325 = getelementptr inbounds double, ptr %1, i64 %324
  %326 = add nsw i32 %273, 1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds double, ptr %1, i64 %327
  %329 = load <2 x double>, ptr %316, align 8, !tbaa !11
  %330 = load <2 x double>, ptr %318, align 8, !tbaa !11
  %331 = fadd <2 x double> %329, %330
  %332 = fsub <2 x double> %329, %330
  %333 = extractelement <2 x double> %332, i64 0
  %334 = fsub <2 x double> %329, %330
  %335 = extractelement <2 x double> %334, i64 1
  %336 = load <2 x double>, ptr %323, align 8, !tbaa !11
  %337 = load <2 x double>, ptr %325, align 8, !tbaa !11
  %338 = fadd <2 x double> %336, %337
  %339 = fsub <2 x double> %336, %337
  %340 = extractelement <2 x double> %339, i64 0
  %341 = fsub <2 x double> %336, %337
  %342 = extractelement <2 x double> %341, i64 1
  %343 = fadd <2 x double> %331, %338
  store <2 x double> %343, ptr %316, align 8, !tbaa !11
  %344 = fsub <2 x double> %331, %338
  store <2 x double> %344, ptr %323, align 8, !tbaa !11
  %345 = fsub double %333, %342
  %346 = fadd double %335, %340
  %347 = fsub double %345, %346
  %348 = fmul double %30, %347
  store double %348, ptr %318, align 8, !tbaa !11
  %349 = fadd double %346, %345
  %350 = fmul double %30, %349
  store double %350, ptr %321, align 8, !tbaa !11
  %351 = fadd double %333, %342
  %352 = fsub double %335, %340
  %353 = fneg double %30
  %354 = fadd double %352, %351
  %355 = fmul double %354, %353
  store double %355, ptr %325, align 8, !tbaa !11
  %356 = fsub double %352, %351
  %357 = fmul double %356, %353
  store double %357, ptr %328, align 8, !tbaa !11
  %358 = add nsw i32 %4, 2
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds double, ptr %1, i64 %359
  %361 = add nsw i32 %272, 2
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds double, ptr %1, i64 %362
  %364 = add nsw i32 %271, 2
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds double, ptr %1, i64 %365
  %367 = add nsw i32 %273, 2
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds double, ptr %1, i64 %368
  %370 = load <2 x double>, ptr %360, align 8, !tbaa !11
  %371 = load <2 x double>, ptr %363, align 8, !tbaa !11
  %372 = fadd <2 x double> %370, %371
  %373 = load <2 x double>, ptr %366, align 8, !tbaa !11
  %374 = load <2 x double>, ptr %369, align 8, !tbaa !11
  %375 = fadd <2 x double> %373, %374
  %376 = fadd <2 x double> %372, %375
  store <2 x double> %376, ptr %360, align 8, !tbaa !11
  %377 = fsub <2 x double> %372, %375
  store <2 x double> %377, ptr %366, align 8, !tbaa !11
  %378 = fneg double %264
  %379 = fneg double %268
  %380 = fsub <2 x double> %370, %371
  %381 = fsub <2 x double> %373, %374
  %382 = shufflevector <2 x double> %381, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %383 = fsub <2 x double> %380, %382
  %384 = fadd <2 x double> %380, %382
  %385 = shufflevector <2 x double> %383, <2 x double> %384, <2 x i32> <i32 0, i32 3>
  %386 = shufflevector <2 x double> %385, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %387 = insertelement <2 x double> poison, double %378, i64 0
  %388 = insertelement <2 x double> %387, double %264, i64 1
  %389 = fmul <2 x double> %386, %388
  %390 = insertelement <2 x double> poison, double %266, i64 0
  %391 = shufflevector <2 x double> %390, <2 x double> poison, <2 x i32> zeroinitializer
  %392 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %391, <2 x double> %385, <2 x double> %389)
  store <2 x double> %392, ptr %363, align 8, !tbaa !11
  %393 = shufflevector <2 x double> %384, <2 x double> %383, <2 x i32> <i32 0, i32 3>
  %394 = shufflevector <2 x double> %393, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %395 = insertelement <2 x double> %312, double %379, i64 1
  %396 = fmul <2 x double> %394, %395
  %397 = shufflevector <2 x double> %309, <2 x double> poison, <2 x i32> zeroinitializer
  %398 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %397, <2 x double> %393, <2 x double> %396)
  store <2 x double> %398, ptr %369, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @cftrec1(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  br label %5

5:                                                ; preds = %14, %4
  %6 = phi i32 [ %0, %4 ], [ %8, %14 ]
  %7 = phi ptr [ %1, %4 ], [ %21, %14 ]
  %8 = ashr i32 %6, 2
  %9 = shl nsw i32 %8, 1
  %10 = sub nsw i32 %2, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds double, ptr %3, i64 %11
  tail call void @cftmdl1(i32 noundef %6, ptr noundef %7, ptr noundef %12) #20
  %13 = icmp sgt i32 %6, 512
  br i1 %13, label %14, label %22

14:                                               ; preds = %5
  tail call void @cftrec1(i32 noundef %8, ptr noundef %7, i32 noundef %2, ptr noundef %3) #20
  %15 = sext i32 %8 to i64
  %16 = getelementptr inbounds double, ptr %7, i64 %15
  tail call void @cftrec2(i32 noundef %8, ptr noundef %16, i32 noundef %2, ptr noundef %3) #20
  %17 = sext i32 %9 to i64
  %18 = getelementptr inbounds double, ptr %7, i64 %17
  tail call void @cftrec1(i32 noundef %8, ptr noundef %18, i32 noundef %2, ptr noundef %3) #20
  %19 = mul nsw i32 %8, 3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, ptr %7, i64 %20
  br label %5

22:                                               ; preds = %5
  %.lcssa1 = phi i32 [ %6, %5 ]
  %.lcssa = phi ptr [ %7, %5 ]
  tail call void @cftexp1(i32 noundef %.lcssa1, ptr noundef %.lcssa, i32 noundef %2, ptr noundef %3) #20
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @cftrec2(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  br label %5

5:                                                ; preds = %12, %4
  %6 = phi i32 [ %0, %4 ], [ %13, %12 ]
  %7 = phi ptr [ %1, %4 ], [ %21, %12 ]
  %8 = sub nsw i32 %2, %6
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds double, ptr %3, i64 %9
  tail call void @cftmdl2(i32 noundef %6, ptr noundef %7, ptr noundef %10) #20
  %11 = icmp sgt i32 %6, 512
  br i1 %11, label %12, label %22

12:                                               ; preds = %5
  %13 = lshr i32 %6, 2
  tail call void @cftrec1(i32 noundef %13, ptr noundef %7, i32 noundef %2, ptr noundef %3) #20
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds double, ptr %7, i64 %14
  tail call void @cftrec2(i32 noundef %13, ptr noundef %15, i32 noundef %2, ptr noundef %3) #20
  %16 = shl nuw nsw i32 %13, 1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds double, ptr %7, i64 %17
  tail call void @cftrec1(i32 noundef %13, ptr noundef %18, i32 noundef %2, ptr noundef %3) #20
  %19 = mul nuw nsw i32 %13, 3
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds double, ptr %7, i64 %20
  br label %5

22:                                               ; preds = %5
  %.lcssa1 = phi i32 [ %6, %5 ]
  %.lcssa = phi ptr [ %7, %5 ]
  tail call void @cftexp2(i32 noundef %.lcssa1, ptr noundef %.lcssa, i32 noundef %2, ptr noundef %3) #20
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @cftexp1(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = ashr i32 %0, 2
  %6 = icmp sgt i32 %0, 515
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = zext i32 %0 to i64
  br label %9

9:                                                ; preds = %61, %7
  %10 = phi i32 [ %66, %61 ], [ %5, %7 ]
  %11 = icmp slt i32 %10, %0
  %12 = lshr i32 %10, 1
  %13 = sub nsw i32 %2, %12
  %14 = sext i32 %13 to i64
  br i1 %11, label %15, label %61

15:                                               ; preds = %9
  %16 = getelementptr inbounds double, ptr %3, i64 %14
  %17 = sub nsw i32 %2, %10
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double, ptr %3, i64 %18
  %20 = sub nsw i32 0, %10
  %21 = sext i32 %20 to i64
  br label %36

22:                                               ; preds = %61, %4
  %23 = phi i32 [ %5, %4 ], [ %66, %61 ]
  %24 = icmp slt i32 %23, %0
  %25 = ashr i32 %23, 1
  %26 = sub nsw i32 %2, %25
  %27 = sext i32 %26 to i64
  br i1 %24, label %28, label %93

28:                                               ; preds = %22
  %29 = getelementptr inbounds double, ptr %3, i64 %27
  %30 = sub nsw i32 %2, %23
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, ptr %3, i64 %31
  %33 = sub nsw i32 0, %23
  %34 = sext i32 %33 to i64
  %35 = sext i32 %0 to i64
  br label %68

36:                                               ; preds = %58, %15
  %37 = phi i32 [ %10, %15 ], [ %59, %58 ]
  %38 = sub nsw i32 %37, %10
  %39 = icmp slt i32 %38, %0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = shl i32 %37, 2
  br label %58

42:                                               ; preds = %36
  %43 = shl nsw i32 %37, 1
  %44 = shl i32 %37, 2
  %45 = sext i32 %37 to i64
  %46 = add nsw i64 %21, %45
  %47 = sext i32 %44 to i64
  %48 = sext i32 %43 to i64
  br label %49

49:                                               ; preds = %49, %42
  %50 = phi i64 [ %46, %42 ], [ %56, %49 ]
  %51 = getelementptr inbounds double, ptr %1, i64 %50
  tail call void @cftmdl1(i32 noundef %10, ptr noundef %51, ptr noundef %16) #20
  %52 = add nsw i64 %50, %45
  %53 = getelementptr inbounds double, ptr %1, i64 %52
  tail call void @cftmdl2(i32 noundef %10, ptr noundef %53, ptr noundef %19) #20
  %54 = add nsw i64 %50, %48
  %55 = getelementptr inbounds double, ptr %1, i64 %54
  tail call void @cftmdl1(i32 noundef %10, ptr noundef %55, ptr noundef %16) #20
  %56 = add i64 %50, %47
  %57 = icmp slt i64 %56, %8
  br i1 %57, label %49, label %58, !llvm.loop !18

58:                                               ; preds = %49, %40
  %59 = phi i32 [ %41, %40 ], [ %44, %49 ]
  %60 = icmp slt i32 %59, %0
  br i1 %60, label %36, label %61, !llvm.loop !19

61:                                               ; preds = %58, %9
  %62 = sub nsw i32 %0, %10
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, ptr %1, i64 %63
  %65 = getelementptr inbounds double, ptr %3, i64 %14
  tail call void @cftmdl1(i32 noundef %10, ptr noundef %64, ptr noundef %65) #20
  %66 = lshr i32 %10, 2
  %67 = icmp ugt i32 %10, 515
  br i1 %67, label %9, label %22, !llvm.loop !20

68:                                               ; preds = %90, %28
  %69 = phi i32 [ %23, %28 ], [ %91, %90 ]
  %70 = sub nsw i32 %69, %23
  %71 = icmp slt i32 %70, %0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = shl i32 %69, 2
  br label %90

74:                                               ; preds = %68
  %75 = shl nsw i32 %69, 1
  %76 = shl i32 %69, 2
  %77 = sext i32 %69 to i64
  %78 = add nsw i64 %34, %77
  %79 = sext i32 %76 to i64
  %80 = sext i32 %75 to i64
  br label %81

81:                                               ; preds = %81, %74
  %82 = phi i64 [ %78, %74 ], [ %88, %81 ]
  %83 = getelementptr inbounds double, ptr %1, i64 %82
  tail call void @cftmdl1(i32 noundef %23, ptr noundef %83, ptr noundef %29) #20
  tail call void @cftfx41(i32 noundef %23, ptr noundef %83, i32 noundef %2, ptr noundef %3) #20
  %84 = add nsw i64 %82, %77
  %85 = getelementptr inbounds double, ptr %1, i64 %84
  tail call void @cftmdl2(i32 noundef %23, ptr noundef %85, ptr noundef %32) #20
  tail call void @cftfx42(i32 noundef %23, ptr noundef %85, i32 noundef %2, ptr noundef %3) #20
  %86 = add nsw i64 %82, %80
  %87 = getelementptr inbounds double, ptr %1, i64 %86
  tail call void @cftmdl1(i32 noundef %23, ptr noundef %87, ptr noundef %29) #20
  tail call void @cftfx41(i32 noundef %23, ptr noundef %87, i32 noundef %2, ptr noundef %3) #20
  %88 = add i64 %82, %79
  %89 = icmp slt i64 %88, %35
  br i1 %89, label %81, label %90, !llvm.loop !21

90:                                               ; preds = %81, %72
  %91 = phi i32 [ %73, %72 ], [ %76, %81 ]
  %92 = icmp slt i32 %91, %0
  br i1 %92, label %68, label %93, !llvm.loop !22

93:                                               ; preds = %90, %22
  %94 = sub nsw i32 %0, %23
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, ptr %1, i64 %95
  %97 = getelementptr inbounds double, ptr %3, i64 %27
  tail call void @cftmdl1(i32 noundef %23, ptr noundef %96, ptr noundef %97) #20
  tail call void @cftfx41(i32 noundef %23, ptr noundef %96, i32 noundef %2, ptr noundef %3) #20
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @cftfx41(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #3 {
  %5 = icmp eq i32 %0, 128
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = add nsw i32 %2, -8
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds double, ptr %3, i64 %8
  tail call void @cftf161(ptr noundef %1, ptr noundef %9) #20
  %10 = getelementptr inbounds double, ptr %1, i64 32
  %11 = add nsw i32 %2, -32
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds double, ptr %3, i64 %12
  tail call void @cftf162(ptr noundef nonnull %10, ptr noundef %13) #20
  %14 = getelementptr inbounds double, ptr %1, i64 64
  tail call void @cftf161(ptr noundef nonnull %14, ptr noundef %9) #20
  %15 = getelementptr inbounds double, ptr %1, i64 96
  tail call void @cftf161(ptr noundef nonnull %15, ptr noundef %9) #20
  br label %23

16:                                               ; preds = %4
  %17 = add nsw i32 %2, -16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double, ptr %3, i64 %18
  tail call void @cftf081(ptr noundef %1, ptr noundef %19) #20
  %20 = getelementptr inbounds double, ptr %1, i64 16
  tail call void @cftf082(ptr noundef nonnull %20, ptr noundef %19) #20
  %21 = getelementptr inbounds double, ptr %1, i64 32
  tail call void @cftf081(ptr noundef nonnull %21, ptr noundef %19) #20
  %22 = getelementptr inbounds double, ptr %1, i64 48
  tail call void @cftf081(ptr noundef nonnull %22, ptr noundef %19) #20
  br label %23

23:                                               ; preds = %16, %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @bitrv2(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #4 {
  store i32 0, ptr %1, align 4, !tbaa !7
  %4 = icmp sgt i32 %0, 8
  br i1 %4, label %5, label %29

5:                                                ; preds = %22, %3
  %6 = phi i32 [ %23, %22 ], [ 1, %3 ]
  %7 = phi i32 [ %8, %22 ], [ %0, %3 ]
  %8 = ashr i32 %7, 1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %5
  %11 = zext i32 %6 to i64
  %12 = zext i32 %6 to i64
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i64 [ 0, %10 ], [ %20, %13 ]
  %15 = getelementptr inbounds i32, ptr %1, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !7
  %17 = add nsw i32 %16, %8
  %18 = add nuw nsw i64 %14, %11
  %19 = getelementptr inbounds i32, ptr %1, i64 %18
  store i32 %17, ptr %19, align 4, !tbaa !7
  %20 = add nuw nsw i64 %14, 1
  %21 = icmp eq i64 %20, %12
  br i1 %21, label %22, label %13, !llvm.loop !23

22:                                               ; preds = %13, %5
  %23 = shl i32 %6, 1
  %24 = shl i32 %6, 4
  %25 = icmp slt i32 %24, %8
  br i1 %25, label %5, label %26, !llvm.loop !24

26:                                               ; preds = %22
  %.lcssa3 = phi i32 [ %23, %22 ]
  %.lcssa2 = phi i32 [ %24, %22 ]
  %.lcssa1 = phi i32 [ %6, %22 ]
  %.lcssa = phi i32 [ %8, %22 ]
  %27 = shl i32 %.lcssa1, 2
  %28 = icmp eq i32 %.lcssa2, %.lcssa
  br i1 %28, label %36, label %31

29:                                               ; preds = %3
  %30 = icmp eq i32 %0, 8
  br i1 %30, label %38, label %186

31:                                               ; preds = %26
  %32 = icmp sgt i32 %.lcssa3, 1
  br i1 %32, label %33, label %186

33:                                               ; preds = %31
  %34 = sext i32 %27 to i64
  %35 = zext i32 %.lcssa3 to i64
  br label %141

36:                                               ; preds = %26
  %37 = icmp sgt i32 %.lcssa3, 0
  br i1 %37, label %38, label %186

38:                                               ; preds = %36, %29
  %39 = phi i32 [ %.lcssa3, %36 ], [ 1, %29 ]
  %40 = phi i32 [ %27, %36 ], [ 2, %29 ]
  %41 = shl nsw i32 %39, 2
  %42 = sext i32 %40 to i64
  %43 = zext i32 %39 to i64
  br label %44

44:                                               ; preds = %118, %38
  %45 = phi i64 [ 0, %38 ], [ %139, %118 ]
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, ptr %1, align 4, !tbaa !7
  br label %118

49:                                               ; preds = %44
  %50 = getelementptr inbounds i32, ptr %1, i64 %45
  %51 = load i32, ptr %50, align 4, !tbaa !7
  %52 = sext i32 %51 to i64
  %53 = trunc i64 %45 to i32
  %54 = shl i32 %53, 1
  br label %55

55:                                               ; preds = %55, %49
  %56 = phi i64 [ 0, %49 ], [ %116, %55 ]
  %57 = shl nuw nsw i64 %56, 1
  %58 = add nsw i64 %57, %52
  %59 = getelementptr inbounds i32, ptr %1, i64 %56
  %60 = load i32, ptr %59, align 4, !tbaa !7
  %61 = add nsw i32 %60, %54
  %62 = getelementptr inbounds double, ptr %2, i64 %58
  %63 = load double, ptr %62, align 8, !tbaa !11
  %64 = add nsw i64 %58, 1
  %65 = getelementptr inbounds double, ptr %2, i64 %64
  %66 = load double, ptr %65, align 8, !tbaa !11
  %67 = sext i32 %61 to i64
  %68 = getelementptr inbounds double, ptr %2, i64 %67
  %69 = load double, ptr %68, align 8, !tbaa !11
  %70 = add nsw i32 %61, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, ptr %2, i64 %71
  %73 = load double, ptr %72, align 8, !tbaa !11
  store double %69, ptr %62, align 8, !tbaa !11
  store double %73, ptr %65, align 8, !tbaa !11
  store double %63, ptr %68, align 8, !tbaa !11
  store double %66, ptr %72, align 8, !tbaa !11
  %74 = add nsw i64 %58, %42
  %75 = add nsw i32 %61, %41
  %76 = getelementptr inbounds double, ptr %2, i64 %74
  %77 = load double, ptr %76, align 8, !tbaa !11
  %78 = add nsw i64 %74, 1
  %79 = getelementptr inbounds double, ptr %2, i64 %78
  %80 = load double, ptr %79, align 8, !tbaa !11
  %81 = sext i32 %75 to i64
  %82 = getelementptr inbounds double, ptr %2, i64 %81
  %83 = load double, ptr %82, align 8, !tbaa !11
  %84 = add nsw i32 %75, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, ptr %2, i64 %85
  %87 = load double, ptr %86, align 8, !tbaa !11
  store double %83, ptr %76, align 8, !tbaa !11
  store double %87, ptr %79, align 8, !tbaa !11
  store double %77, ptr %82, align 8, !tbaa !11
  store double %80, ptr %86, align 8, !tbaa !11
  %88 = add nsw i64 %74, %42
  %89 = sub nsw i32 %75, %40
  %90 = getelementptr inbounds double, ptr %2, i64 %88
  %91 = load double, ptr %90, align 8, !tbaa !11
  %92 = add nsw i64 %88, 1
  %93 = getelementptr inbounds double, ptr %2, i64 %92
  %94 = load double, ptr %93, align 8, !tbaa !11
  %95 = sext i32 %89 to i64
  %96 = getelementptr inbounds double, ptr %2, i64 %95
  %97 = load double, ptr %96, align 8, !tbaa !11
  %98 = add nsw i32 %89, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, ptr %2, i64 %99
  %101 = load double, ptr %100, align 8, !tbaa !11
  store double %97, ptr %90, align 8, !tbaa !11
  store double %101, ptr %93, align 8, !tbaa !11
  store double %91, ptr %96, align 8, !tbaa !11
  store double %94, ptr %100, align 8, !tbaa !11
  %102 = add nsw i64 %88, %42
  %103 = add nsw i32 %89, %41
  %104 = getelementptr inbounds double, ptr %2, i64 %102
  %105 = load double, ptr %104, align 8, !tbaa !11
  %106 = add nsw i64 %102, 1
  %107 = getelementptr inbounds double, ptr %2, i64 %106
  %108 = load double, ptr %107, align 8, !tbaa !11
  %109 = sext i32 %103 to i64
  %110 = getelementptr inbounds double, ptr %2, i64 %109
  %111 = load double, ptr %110, align 8, !tbaa !11
  %112 = add nsw i32 %103, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds double, ptr %2, i64 %113
  %115 = load double, ptr %114, align 8, !tbaa !11
  store double %111, ptr %104, align 8, !tbaa !11
  store double %115, ptr %107, align 8, !tbaa !11
  store double %105, ptr %110, align 8, !tbaa !11
  store double %108, ptr %114, align 8, !tbaa !11
  %116 = add nuw nsw i64 %56, 1
  %117 = icmp eq i64 %116, %45
  br i1 %117, label %118, label %55, !llvm.loop !25

118:                                              ; preds = %55, %47
  %119 = phi i32 [ %48, %47 ], [ %51, %55 ]
  %120 = trunc i64 %45 to i32
  %121 = add i32 %39, %120
  %122 = shl i32 %121, 1
  %123 = add nsw i32 %119, %122
  %124 = add nsw i32 %123, %40
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds double, ptr %2, i64 %125
  %127 = load double, ptr %126, align 8, !tbaa !11
  %128 = add nsw i32 %123, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, ptr %2, i64 %129
  %131 = load double, ptr %130, align 8, !tbaa !11
  %132 = sext i32 %124 to i64
  %133 = getelementptr inbounds double, ptr %2, i64 %132
  %134 = load double, ptr %133, align 8, !tbaa !11
  %135 = add nsw i32 %124, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds double, ptr %2, i64 %136
  %138 = load double, ptr %137, align 8, !tbaa !11
  store double %134, ptr %126, align 8, !tbaa !11
  store double %138, ptr %130, align 8, !tbaa !11
  store double %127, ptr %133, align 8, !tbaa !11
  store double %131, ptr %137, align 8, !tbaa !11
  %139 = add nuw nsw i64 %45, 1
  %140 = icmp eq i64 %139, %43
  br i1 %140, label %186, label %44, !llvm.loop !26

141:                                              ; preds = %183, %33
  %142 = phi i64 [ 1, %33 ], [ %184, %183 ]
  %143 = getelementptr inbounds i32, ptr %1, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !7
  %145 = sext i32 %144 to i64
  %146 = trunc i64 %142 to i32
  %147 = shl i32 %146, 1
  br label %148

148:                                              ; preds = %148, %141
  %149 = phi i64 [ 0, %141 ], [ %181, %148 ]
  %150 = shl nuw nsw i64 %149, 1
  %151 = add nsw i64 %150, %145
  %152 = getelementptr inbounds i32, ptr %1, i64 %149
  %153 = load i32, ptr %152, align 4, !tbaa !7
  %154 = add nsw i32 %153, %147
  %155 = getelementptr inbounds double, ptr %2, i64 %151
  %156 = load double, ptr %155, align 8, !tbaa !11
  %157 = add nsw i64 %151, 1
  %158 = getelementptr inbounds double, ptr %2, i64 %157
  %159 = load double, ptr %158, align 8, !tbaa !11
  %160 = sext i32 %154 to i64
  %161 = getelementptr inbounds double, ptr %2, i64 %160
  %162 = load double, ptr %161, align 8, !tbaa !11
  %163 = add nsw i32 %154, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds double, ptr %2, i64 %164
  %166 = load double, ptr %165, align 8, !tbaa !11
  store double %162, ptr %155, align 8, !tbaa !11
  store double %166, ptr %158, align 8, !tbaa !11
  store double %156, ptr %161, align 8, !tbaa !11
  store double %159, ptr %165, align 8, !tbaa !11
  %167 = add nsw i64 %151, %34
  %168 = add nsw i32 %154, %27
  %169 = getelementptr inbounds double, ptr %2, i64 %167
  %170 = load double, ptr %169, align 8, !tbaa !11
  %171 = add nsw i64 %167, 1
  %172 = getelementptr inbounds double, ptr %2, i64 %171
  %173 = load double, ptr %172, align 8, !tbaa !11
  %174 = sext i32 %168 to i64
  %175 = getelementptr inbounds double, ptr %2, i64 %174
  %176 = load double, ptr %175, align 8, !tbaa !11
  %177 = add nsw i32 %168, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds double, ptr %2, i64 %178
  %180 = load double, ptr %179, align 8, !tbaa !11
  store double %176, ptr %169, align 8, !tbaa !11
  store double %180, ptr %172, align 8, !tbaa !11
  store double %170, ptr %175, align 8, !tbaa !11
  store double %173, ptr %179, align 8, !tbaa !11
  %181 = add nuw nsw i64 %149, 1
  %182 = icmp eq i64 %181, %142
  br i1 %182, label %183, label %148, !llvm.loop !27

183:                                              ; preds = %148
  %184 = add nuw nsw i64 %142, 1
  %185 = icmp eq i64 %184, %35
  br i1 %185, label %186, label %141, !llvm.loop !28

186:                                              ; preds = %183, %118, %36, %31, %29
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @cftf161(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds double, ptr %1, i64 1
  %4 = load <2 x double>, ptr %3, align 8, !tbaa !11
  %5 = extractelement <2 x double> %4, i64 0
  %6 = extractelement <2 x double> %4, i64 1
  %7 = fmul double %5, %6
  %8 = fadd double %6, %7
  %9 = getelementptr inbounds double, ptr %0, i64 16
  %10 = getelementptr inbounds double, ptr %0, i64 8
  %11 = getelementptr inbounds double, ptr %0, i64 24
  %12 = getelementptr inbounds double, ptr %0, i64 2
  %13 = getelementptr inbounds double, ptr %0, i64 18
  %14 = getelementptr inbounds double, ptr %0, i64 10
  %15 = getelementptr inbounds double, ptr %0, i64 26
  %16 = fneg double %7
  %17 = fneg double %8
  %18 = getelementptr inbounds double, ptr %0, i64 4
  %19 = getelementptr inbounds double, ptr %0, i64 20
  %20 = getelementptr inbounds double, ptr %0, i64 12
  %21 = getelementptr inbounds double, ptr %0, i64 28
  %22 = getelementptr inbounds double, ptr %0, i64 13
  %23 = getelementptr inbounds double, ptr %0, i64 6
  %24 = getelementptr inbounds double, ptr %0, i64 22
  %25 = getelementptr inbounds double, ptr %0, i64 14
  %26 = getelementptr inbounds double, ptr %0, i64 30
  %27 = getelementptr inbounds double, ptr %0, i64 15
  %28 = load <2 x double>, ptr %0, align 8, !tbaa !11
  %29 = load <2 x double>, ptr %9, align 8, !tbaa !11
  %30 = fadd <2 x double> %28, %29
  %31 = load <2 x double>, ptr %10, align 8, !tbaa !11
  %32 = load <2 x double>, ptr %11, align 8, !tbaa !11
  %33 = fadd <2 x double> %31, %32
  %34 = fadd <2 x double> %30, %33
  %35 = load <2 x double>, ptr %12, align 8, !tbaa !11
  %36 = load <2 x double>, ptr %13, align 8, !tbaa !11
  %37 = fadd <2 x double> %35, %36
  %38 = load <2 x double>, ptr %14, align 8, !tbaa !11
  %39 = load <2 x double>, ptr %15, align 8, !tbaa !11
  %40 = fadd <2 x double> %38, %39
  %41 = fadd <2 x double> %37, %40
  %42 = load <2 x double>, ptr %18, align 8, !tbaa !11
  %43 = load <2 x double>, ptr %19, align 8, !tbaa !11
  %44 = fadd <2 x double> %42, %43
  %45 = load <2 x double>, ptr %20, align 8, !tbaa !11
  %46 = load <2 x double>, ptr %21, align 8, !tbaa !11
  %47 = fadd <2 x double> %45, %46
  %48 = shufflevector <2 x double> %42, <2 x double> %45, <2 x i32> <i32 1, i32 2>
  %49 = shufflevector <2 x double> %43, <2 x double> %46, <2 x i32> <i32 1, i32 2>
  %50 = fsub <2 x double> %48, %49
  %51 = shufflevector <2 x double> %42, <2 x double> %45, <2 x i32> <i32 0, i32 3>
  %52 = shufflevector <2 x double> %43, <2 x double> %46, <2 x i32> <i32 0, i32 3>
  %53 = fsub <2 x double> %51, %52
  %54 = fadd <2 x double> %44, %47
  %55 = extractelement <2 x double> %53, i64 0
  %56 = extractelement <2 x double> %53, i64 1
  %57 = fsub double %55, %56
  %58 = extractelement <2 x double> %50, i64 0
  %59 = extractelement <2 x double> %50, i64 1
  %60 = fadd double %58, %59
  %61 = fadd double %55, %56
  %62 = fsub double %58, %59
  %63 = load <2 x double>, ptr %23, align 8, !tbaa !11
  %64 = load <2 x double>, ptr %24, align 8, !tbaa !11
  %65 = fadd <2 x double> %63, %64
  %66 = load <2 x double>, ptr %25, align 8, !tbaa !11
  %67 = load <2 x double>, ptr %26, align 8, !tbaa !11
  %68 = fadd <2 x double> %66, %67
  %69 = fadd <2 x double> %65, %68
  %70 = shufflevector <2 x double> %37, <2 x double> %65, <2 x i32> <i32 1, i32 2>
  %71 = shufflevector <2 x double> %40, <2 x double> %68, <2 x i32> <i32 1, i32 2>
  %72 = fsub <2 x double> %70, %71
  %73 = shufflevector <2 x double> %37, <2 x double> %65, <2 x i32> <i32 0, i32 3>
  %74 = shufflevector <2 x double> %40, <2 x double> %68, <2 x i32> <i32 0, i32 3>
  %75 = fsub <2 x double> %73, %74
  %76 = fsub <2 x double> %28, %29
  %77 = fsub <2 x double> %31, %32
  %78 = shufflevector <2 x double> %77, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %79 = fsub <2 x double> %76, %78
  %80 = fadd <2 x double> %76, %78
  %81 = shufflevector <2 x double> %79, <2 x double> %80, <2 x i32> <i32 0, i32 3>
  %82 = fsub <2 x double> %35, %36
  %83 = fsub <2 x double> %38, %39
  %84 = shufflevector <2 x double> %83, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %85 = fsub <2 x double> %82, %84
  %86 = fadd <2 x double> %82, %84
  %87 = shufflevector <2 x double> %85, <2 x double> %86, <2 x i32> <i32 0, i32 3>
  %88 = shufflevector <2 x double> %87, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %89 = insertelement <2 x double> poison, double %16, i64 0
  %90 = insertelement <2 x double> %89, double %7, i64 1
  %91 = fmul <2 x double> %88, %90
  %92 = insertelement <2 x double> poison, double %8, i64 0
  %93 = shufflevector <2 x double> %92, <2 x double> poison, <2 x i32> zeroinitializer
  %94 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %93, <2 x double> %87, <2 x double> %91)
  %95 = insertelement <2 x double> poison, double %57, i64 0
  %96 = insertelement <2 x double> poison, double %57, i64 0
  %97 = insertelement <2 x double> poison, double %60, i64 0
  %98 = insertelement <2 x double> poison, double %60, i64 0
  %99 = fsub <2 x double> %96, %98
  %100 = fadd <2 x double> %95, %97
  %101 = shufflevector <2 x double> %99, <2 x double> %100, <2 x i32> <i32 0, i32 2>
  %102 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %103 = fmul <2 x double> %102, %101
  %104 = fsub <2 x double> %63, %64
  %105 = fsub <2 x double> %66, %67
  %106 = shufflevector <2 x double> %105, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %107 = fsub <2 x double> %104, %106
  %108 = fadd <2 x double> %104, %106
  %109 = shufflevector <2 x double> %107, <2 x double> %108, <2 x i32> <i32 0, i32 3>
  %110 = shufflevector <2 x double> %109, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %111 = insertelement <2 x double> %93, double %17, i64 0
  %112 = fmul <2 x double> %110, %111
  %113 = shufflevector <2 x double> %90, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %114 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %113, <2 x double> %109, <2 x double> %112)
  %115 = insertelement <2 x double> poison, double %62, i64 0
  %116 = insertelement <2 x double> poison, double %62, i64 0
  %117 = insertelement <2 x double> poison, double %61, i64 0
  %118 = insertelement <2 x double> poison, double %61, i64 0
  %119 = fadd <2 x double> %116, %118
  %120 = fsub <2 x double> %115, %117
  %121 = shufflevector <2 x double> %119, <2 x double> %120, <2 x i32> <i32 0, i32 2>
  %122 = fmul <2 x double> %102, %121
  %123 = shufflevector <2 x double> %80, <2 x double> %79, <2 x i32> <i32 0, i32 3>
  %124 = shufflevector <2 x double> %86, <2 x double> %85, <2 x i32> <i32 0, i32 3>
  %125 = shufflevector <2 x double> %124, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %126 = insertelement <2 x double> poison, double %17, i64 0
  %127 = insertelement <2 x double> %126, double %8, i64 1
  %128 = fmul <2 x double> %125, %127
  %129 = insertelement <2 x double> poison, double %7, i64 0
  %130 = shufflevector <2 x double> %129, <2 x double> poison, <2 x i32> zeroinitializer
  %131 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %130, <2 x double> %124, <2 x double> %128)
  %132 = shufflevector <2 x double> %108, <2 x double> %107, <2 x i32> <i32 0, i32 3>
  %133 = shufflevector <2 x double> %132, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %134 = insertelement <2 x double> %130, double %16, i64 0
  %135 = fmul <2 x double> %133, %134
  %136 = shufflevector <2 x double> %127, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %137 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %136, <2 x double> %132, <2 x double> %135)
  %138 = fsub <2 x double> %123, %122
  %139 = fsub <2 x double> %131, %137
  %140 = fadd <2 x double> %138, %139
  store <2 x double> %140, ptr %11, align 8, !tbaa !11
  %141 = fsub <2 x double> %138, %139
  store <2 x double> %141, ptr %15, align 8, !tbaa !11
  %142 = fadd <2 x double> %123, %122
  %143 = fadd <2 x double> %131, %137
  %144 = shufflevector <2 x double> %143, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %145 = fsub <2 x double> %142, %144
  %146 = fadd <2 x double> %142, %144
  %147 = shufflevector <2 x double> %145, <2 x double> %146, <2 x i32> <i32 0, i32 3>
  store <2 x double> %147, ptr %21, align 8, !tbaa !11
  %148 = shufflevector <2 x double> %146, <2 x double> %145, <2 x i32> <i32 0, i32 3>
  store <2 x double> %148, ptr %26, align 8, !tbaa !11
  %149 = fadd <2 x double> %81, %103
  %150 = fadd <2 x double> %94, %114
  %151 = fadd <2 x double> %149, %150
  store <2 x double> %151, ptr %9, align 8, !tbaa !11
  %152 = fsub <2 x double> %149, %150
  store <2 x double> %152, ptr %13, align 8, !tbaa !11
  %153 = fsub <2 x double> %81, %103
  %154 = fsub <2 x double> %94, %114
  %155 = shufflevector <2 x double> %154, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %156 = fsub <2 x double> %153, %155
  %157 = fadd <2 x double> %153, %155
  %158 = shufflevector <2 x double> %156, <2 x double> %157, <2 x i32> <i32 0, i32 3>
  store <2 x double> %158, ptr %19, align 8, !tbaa !11
  %159 = shufflevector <2 x double> %157, <2 x double> %156, <2 x i32> <i32 0, i32 3>
  store <2 x double> %159, ptr %24, align 8, !tbaa !11
  %160 = extractelement <2 x double> %75, i64 0
  %161 = extractelement <2 x double> %75, i64 1
  %162 = fsub double %160, %161
  %163 = extractelement <2 x double> %72, i64 0
  %164 = extractelement <2 x double> %72, i64 1
  %165 = fadd double %163, %164
  %166 = fadd double %160, %161
  %167 = fsub double %163, %164
  %168 = fsub double %166, %167
  %169 = fmul double %5, %168
  %170 = fadd double %167, %166
  %171 = fmul double %5, %170
  %172 = fsub <2 x double> %30, %33
  %173 = fsub <2 x double> %44, %47
  %174 = shufflevector <2 x double> %173, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %175 = insertelement <2 x double> poison, double %162, i64 0
  %176 = insertelement <2 x double> poison, double %162, i64 0
  %177 = insertelement <2 x double> poison, double %165, i64 0
  %178 = insertelement <2 x double> poison, double %165, i64 0
  %179 = fsub <2 x double> %176, %178
  %180 = fadd <2 x double> %175, %177
  %181 = shufflevector <2 x double> %179, <2 x double> %180, <2 x i32> <i32 0, i32 2>
  %182 = fmul <2 x double> %102, %181
  %183 = fsub <2 x double> %172, %174
  %184 = fadd <2 x double> %172, %174
  %185 = shufflevector <2 x double> %183, <2 x double> %184, <2 x i32> <i32 0, i32 3>
  %186 = fadd <2 x double> %172, %174
  %187 = extractelement <2 x double> %186, i64 0
  %188 = fsub <2 x double> %172, %174
  %189 = extractelement <2 x double> %188, i64 1
  %190 = fadd <2 x double> %185, %182
  store <2 x double> %190, ptr %10, align 8, !tbaa !11
  %191 = fsub <2 x double> %185, %182
  store <2 x double> %191, ptr %14, align 8, !tbaa !11
  %192 = fsub double %187, %171
  store double %192, ptr %20, align 8, !tbaa !11
  %193 = fadd double %189, %169
  store double %193, ptr %22, align 8, !tbaa !11
  %194 = fadd double %187, %171
  store double %194, ptr %25, align 8, !tbaa !11
  %195 = fsub double %189, %169
  store double %195, ptr %27, align 8, !tbaa !11
  %196 = fadd <2 x double> %34, %54
  %197 = fadd <2 x double> %41, %69
  %198 = fadd <2 x double> %196, %197
  store <2 x double> %198, ptr %0, align 8, !tbaa !11
  %199 = fsub <2 x double> %196, %197
  store <2 x double> %199, ptr %12, align 8, !tbaa !11
  %200 = fsub <2 x double> %34, %54
  %201 = fsub <2 x double> %41, %69
  %202 = shufflevector <2 x double> %201, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %203 = fsub <2 x double> %200, %202
  %204 = fadd <2 x double> %200, %202
  %205 = shufflevector <2 x double> %203, <2 x double> %204, <2 x i32> <i32 0, i32 3>
  store <2 x double> %205, ptr %18, align 8, !tbaa !11
  %206 = shufflevector <2 x double> %204, <2 x double> %203, <2 x i32> <i32 0, i32 3>
  store <2 x double> %206, ptr %23, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @bitrv216(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds double, ptr %0, i64 2
  %3 = getelementptr inbounds double, ptr %0, i64 4
  %4 = getelementptr inbounds double, ptr %0, i64 6
  %5 = getelementptr inbounds double, ptr %0, i64 8
  %6 = getelementptr inbounds double, ptr %0, i64 10
  %7 = getelementptr inbounds double, ptr %0, i64 14
  %8 = getelementptr inbounds double, ptr %0, i64 16
  %9 = getelementptr inbounds double, ptr %0, i64 20
  %10 = getelementptr inbounds double, ptr %0, i64 22
  %11 = getelementptr inbounds double, ptr %0, i64 24
  %12 = getelementptr inbounds double, ptr %0, i64 26
  %13 = getelementptr inbounds double, ptr %0, i64 28
  %14 = load <2 x double>, ptr %8, align 8, !tbaa !11
  %15 = load <2 x double>, ptr %5, align 8, !tbaa !11
  %16 = load <2 x double>, ptr %11, align 8, !tbaa !11
  %17 = load <2 x double>, ptr %3, align 8, !tbaa !11
  store <2 x double> %15, ptr %3, align 8, !tbaa !11
  store <2 x double> %17, ptr %5, align 8, !tbaa !11
  %18 = load <2 x double>, ptr %9, align 8, !tbaa !11
  %19 = load <2 x double>, ptr %13, align 8, !tbaa !11
  %20 = load <2 x double>, ptr %2, align 8, !tbaa !11
  store <2 x double> %14, ptr %2, align 8, !tbaa !11
  store <2 x double> %20, ptr %8, align 8, !tbaa !11
  %21 = load <2 x double>, ptr %6, align 8, !tbaa !11
  store <2 x double> %18, ptr %6, align 8, !tbaa !11
  store <2 x double> %21, ptr %9, align 8, !tbaa !11
  %22 = load <2 x double>, ptr %12, align 8, !tbaa !11
  %23 = load <2 x double>, ptr %4, align 8, !tbaa !11
  store <2 x double> %16, ptr %4, align 8, !tbaa !11
  store <2 x double> %23, ptr %11, align 8, !tbaa !11
  %24 = load <2 x double>, ptr %10, align 8, !tbaa !11
  store <2 x double> %22, ptr %10, align 8, !tbaa !11
  store <2 x double> %24, ptr %12, align 8, !tbaa !11
  %25 = load <2 x double>, ptr %7, align 8, !tbaa !11
  store <2 x double> %19, ptr %7, align 8, !tbaa !11
  store <2 x double> %25, ptr %13, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @cftf081(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds double, ptr %1, i64 1
  %4 = load double, ptr %3, align 8, !tbaa !11
  %5 = getelementptr inbounds double, ptr %0, i64 8
  %6 = getelementptr inbounds double, ptr %0, i64 4
  %7 = getelementptr inbounds double, ptr %0, i64 12
  %8 = getelementptr inbounds double, ptr %0, i64 13
  %9 = getelementptr inbounds double, ptr %0, i64 2
  %10 = getelementptr inbounds double, ptr %0, i64 10
  %11 = getelementptr inbounds double, ptr %0, i64 6
  %12 = getelementptr inbounds double, ptr %0, i64 14
  %13 = getelementptr inbounds double, ptr %0, i64 15
  %14 = load <2 x double>, ptr %0, align 8, !tbaa !11
  %15 = load <2 x double>, ptr %5, align 8, !tbaa !11
  %16 = fadd <2 x double> %14, %15
  %17 = load <2 x double>, ptr %6, align 8, !tbaa !11
  %18 = load <2 x double>, ptr %7, align 8, !tbaa !11
  %19 = fadd <2 x double> %17, %18
  %20 = fadd <2 x double> %16, %19
  %21 = load <2 x double>, ptr %9, align 8, !tbaa !11
  %22 = load <2 x double>, ptr %10, align 8, !tbaa !11
  %23 = fadd <2 x double> %21, %22
  %24 = load <2 x double>, ptr %11, align 8, !tbaa !11
  %25 = load <2 x double>, ptr %12, align 8, !tbaa !11
  %26 = fadd <2 x double> %24, %25
  %27 = shufflevector <2 x double> %21, <2 x double> %24, <2 x i32> <i32 1, i32 2>
  %28 = shufflevector <2 x double> %22, <2 x double> %25, <2 x i32> <i32 1, i32 2>
  %29 = fsub <2 x double> %27, %28
  %30 = shufflevector <2 x double> %21, <2 x double> %24, <2 x i32> <i32 0, i32 3>
  %31 = shufflevector <2 x double> %22, <2 x double> %25, <2 x i32> <i32 0, i32 3>
  %32 = fsub <2 x double> %30, %31
  %33 = fadd <2 x double> %23, %26
  %34 = extractelement <2 x double> %32, i64 0
  %35 = extractelement <2 x double> %32, i64 1
  %36 = fsub double %34, %35
  %37 = extractelement <2 x double> %29, i64 0
  %38 = extractelement <2 x double> %29, i64 1
  %39 = fadd double %37, %38
  %40 = fadd double %34, %35
  %41 = fsub double %37, %38
  %42 = fsub double %40, %41
  %43 = fmul double %4, %42
  %44 = fadd double %41, %40
  %45 = fmul double %4, %44
  %46 = fsub <2 x double> %14, %15
  %47 = fsub <2 x double> %17, %18
  %48 = shufflevector <2 x double> %47, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %49 = fsub <2 x double> %46, %48
  %50 = fadd <2 x double> %46, %48
  %51 = shufflevector <2 x double> %49, <2 x double> %50, <2 x i32> <i32 0, i32 3>
  %52 = fadd <2 x double> %46, %48
  %53 = extractelement <2 x double> %52, i64 0
  %54 = fsub <2 x double> %46, %48
  %55 = extractelement <2 x double> %54, i64 1
  %56 = insertelement <2 x double> poison, double %36, i64 0
  %57 = insertelement <2 x double> poison, double %36, i64 0
  %58 = insertelement <2 x double> poison, double %39, i64 0
  %59 = insertelement <2 x double> poison, double %39, i64 0
  %60 = fsub <2 x double> %57, %59
  %61 = fadd <2 x double> %56, %58
  %62 = shufflevector <2 x double> %60, <2 x double> %61, <2 x i32> <i32 0, i32 2>
  %63 = insertelement <2 x double> poison, double %4, i64 0
  %64 = shufflevector <2 x double> %63, <2 x double> poison, <2 x i32> zeroinitializer
  %65 = fmul <2 x double> %64, %62
  %66 = fadd <2 x double> %51, %65
  store <2 x double> %66, ptr %5, align 8, !tbaa !11
  %67 = fsub <2 x double> %51, %65
  store <2 x double> %67, ptr %10, align 8, !tbaa !11
  %68 = fsub double %53, %45
  store double %68, ptr %7, align 8, !tbaa !11
  %69 = fadd double %55, %43
  store double %69, ptr %8, align 8, !tbaa !11
  %70 = fadd double %53, %45
  store double %70, ptr %12, align 8, !tbaa !11
  %71 = fsub double %55, %43
  store double %71, ptr %13, align 8, !tbaa !11
  %72 = fadd <2 x double> %20, %33
  store <2 x double> %72, ptr %0, align 8, !tbaa !11
  %73 = fsub <2 x double> %20, %33
  store <2 x double> %73, ptr %9, align 8, !tbaa !11
  %74 = fsub <2 x double> %16, %19
  %75 = fsub <2 x double> %23, %26
  %76 = shufflevector <2 x double> %75, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %77 = fsub <2 x double> %74, %76
  %78 = fadd <2 x double> %74, %76
  %79 = shufflevector <2 x double> %77, <2 x double> %78, <2 x i32> <i32 0, i32 3>
  store <2 x double> %79, ptr %6, align 8, !tbaa !11
  %80 = shufflevector <2 x double> %78, <2 x double> %77, <2 x i32> <i32 0, i32 3>
  store <2 x double> %80, ptr %11, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @cftf040(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds double, ptr %0, i64 4
  %3 = getelementptr inbounds double, ptr %0, i64 2
  %4 = getelementptr inbounds double, ptr %0, i64 6
  %5 = load <2 x double>, ptr %0, align 8, !tbaa !11
  %6 = load <2 x double>, ptr %2, align 8, !tbaa !11
  %7 = fadd <2 x double> %5, %6
  %8 = load <2 x double>, ptr %3, align 8, !tbaa !11
  %9 = load <2 x double>, ptr %4, align 8, !tbaa !11
  %10 = fadd <2 x double> %8, %9
  %11 = fadd <2 x double> %7, %10
  store <2 x double> %11, ptr %0, align 8, !tbaa !11
  %12 = fsub <2 x double> %7, %10
  store <2 x double> %12, ptr %2, align 8, !tbaa !11
  %13 = fsub <2 x double> %5, %6
  %14 = fsub <2 x double> %8, %9
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %16 = fsub <2 x double> %13, %15
  %17 = fadd <2 x double> %13, %15
  %18 = shufflevector <2 x double> %16, <2 x double> %17, <2 x i32> <i32 0, i32 3>
  store <2 x double> %18, ptr %3, align 8, !tbaa !11
  %19 = shufflevector <2 x double> %17, <2 x double> %16, <2 x i32> <i32 0, i32 3>
  store <2 x double> %19, ptr %4, align 8, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @cftf162(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds double, ptr %1, i64 1
  %4 = load double, ptr %3, align 8, !tbaa !11
  %5 = getelementptr inbounds double, ptr %1, i64 4
  %6 = load double, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds double, ptr %1, i64 5
  %8 = load double, ptr %7, align 8, !tbaa !11
  %9 = getelementptr inbounds double, ptr %1, i64 6
  %10 = load double, ptr %9, align 8, !tbaa !11
  %11 = getelementptr inbounds double, ptr %1, i64 7
  %12 = load double, ptr %11, align 8, !tbaa !11
  %13 = getelementptr inbounds double, ptr %1, i64 8
  %14 = load double, ptr %13, align 8, !tbaa !11
  %15 = getelementptr inbounds double, ptr %1, i64 9
  %16 = load double, ptr %15, align 8, !tbaa !11
  %17 = getelementptr inbounds double, ptr %0, i64 1
  %18 = getelementptr inbounds double, ptr %0, i64 16
  %19 = getelementptr inbounds double, ptr %0, i64 8
  %20 = load double, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds double, ptr %0, i64 25
  %22 = load double, ptr %21, align 8, !tbaa !11
  %23 = fsub double %20, %22
  %24 = getelementptr inbounds double, ptr %0, i64 9
  %25 = load double, ptr %24, align 8, !tbaa !11
  %26 = getelementptr inbounds double, ptr %0, i64 24
  %27 = load double, ptr %26, align 8, !tbaa !11
  %28 = fadd double %25, %27
  %29 = fadd double %20, %22
  %30 = fsub double %25, %27
  %31 = getelementptr inbounds double, ptr %0, i64 2
  %32 = getelementptr inbounds double, ptr %0, i64 3
  %33 = getelementptr inbounds double, ptr %0, i64 18
  %34 = fneg double %8
  %35 = getelementptr inbounds double, ptr %0, i64 10
  %36 = getelementptr inbounds double, ptr %0, i64 27
  %37 = getelementptr inbounds double, ptr %0, i64 26
  %38 = fneg double %10
  %39 = fneg double %12
  %40 = getelementptr inbounds double, ptr %0, i64 4
  %41 = getelementptr inbounds double, ptr %0, i64 5
  %42 = getelementptr inbounds double, ptr %0, i64 20
  %43 = fneg double %16
  %44 = getelementptr inbounds double, ptr %0, i64 12
  %45 = getelementptr inbounds double, ptr %0, i64 29
  %46 = getelementptr inbounds double, ptr %0, i64 13
  %47 = getelementptr inbounds double, ptr %0, i64 28
  %48 = fneg double %14
  %49 = getelementptr inbounds double, ptr %0, i64 6
  %50 = getelementptr inbounds double, ptr %0, i64 7
  %51 = getelementptr inbounds double, ptr %0, i64 22
  %52 = getelementptr inbounds double, ptr %0, i64 14
  %53 = getelementptr inbounds double, ptr %0, i64 31
  %54 = getelementptr inbounds double, ptr %0, i64 15
  %55 = getelementptr inbounds double, ptr %0, i64 30
  %56 = fneg double %6
  %57 = load <2 x double>, ptr %0, align 8, !tbaa !11
  %58 = shufflevector <2 x double> %57, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %59 = load <2 x double>, ptr %18, align 8, !tbaa !11
  %60 = fadd <2 x double> %58, %59
  %61 = fsub <2 x double> %58, %59
  %62 = shufflevector <2 x double> %60, <2 x double> %61, <2 x i32> <i32 0, i32 3>
  %63 = insertelement <2 x double> poison, double %23, i64 0
  %64 = insertelement <2 x double> poison, double %23, i64 0
  %65 = insertelement <2 x double> poison, double %28, i64 0
  %66 = insertelement <2 x double> poison, double %28, i64 0
  %67 = fadd <2 x double> %64, %66
  %68 = fsub <2 x double> %63, %65
  %69 = shufflevector <2 x double> %67, <2 x double> %68, <2 x i32> <i32 0, i32 2>
  %70 = insertelement <2 x double> poison, double %4, i64 0
  %71 = shufflevector <2 x double> %70, <2 x double> poison, <2 x i32> zeroinitializer
  %72 = fmul <2 x double> %71, %69
  %73 = fadd <2 x double> %62, %72
  %74 = load <2 x double>, ptr %31, align 8, !tbaa !11
  %75 = load <2 x double>, ptr %33, align 8, !tbaa !11
  %76 = shufflevector <2 x double> %75, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %77 = fsub <2 x double> %74, %76
  %78 = fadd <2 x double> %74, %76
  %79 = shufflevector <2 x double> %77, <2 x double> %78, <2 x i32> <i32 0, i32 3>
  %80 = shufflevector <2 x double> %79, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %81 = insertelement <2 x double> poison, double %34, i64 0
  %82 = insertelement <2 x double> %81, double %8, i64 1
  %83 = fmul <2 x double> %80, %82
  %84 = insertelement <2 x double> poison, double %6, i64 0
  %85 = shufflevector <2 x double> %84, <2 x double> poison, <2 x i32> zeroinitializer
  %86 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %85, <2 x double> %79, <2 x double> %83)
  %87 = load <2 x double>, ptr %35, align 8, !tbaa !11
  %88 = load <2 x double>, ptr %37, align 8, !tbaa !11
  %89 = shufflevector <2 x double> %88, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %90 = fsub <2 x double> %87, %89
  %91 = fadd <2 x double> %87, %89
  %92 = shufflevector <2 x double> %90, <2 x double> %91, <2 x i32> <i32 0, i32 3>
  %93 = shufflevector <2 x double> %92, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %94 = insertelement <2 x double> poison, double %38, i64 0
  %95 = insertelement <2 x double> %94, double %10, i64 1
  %96 = fmul <2 x double> %93, %95
  %97 = insertelement <2 x double> poison, double %12, i64 0
  %98 = shufflevector <2 x double> %97, <2 x double> poison, <2 x i32> zeroinitializer
  %99 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %98, <2 x double> %92, <2 x double> %96)
  %100 = fadd <2 x double> %86, %99
  %101 = load <2 x double>, ptr %40, align 8, !tbaa !11
  %102 = shufflevector <2 x double> %101, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %103 = load <2 x double>, ptr %42, align 8, !tbaa !11
  %104 = fadd <2 x double> %102, %103
  %105 = fsub <2 x double> %102, %103
  %106 = shufflevector <2 x double> %104, <2 x double> %105, <2 x i32> <i32 0, i32 3>
  %107 = insertelement <2 x double> poison, double %16, i64 0
  %108 = insertelement <2 x double> %107, double %43, i64 1
  %109 = shufflevector <2 x double> %106, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %110 = fmul <2 x double> %108, %109
  %111 = insertelement <2 x double> poison, double %14, i64 0
  %112 = shufflevector <2 x double> %111, <2 x double> poison, <2 x i32> zeroinitializer
  %113 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %112, <2 x double> %106, <2 x double> %110)
  %114 = load <2 x double>, ptr %44, align 8, !tbaa !11
  %115 = shufflevector <2 x double> %114, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %116 = load <2 x double>, ptr %47, align 8, !tbaa !11
  %117 = fadd <2 x double> %115, %116
  %118 = fsub <2 x double> %115, %116
  %119 = shufflevector <2 x double> %117, <2 x double> %118, <2 x i32> <i32 0, i32 3>
  %120 = insertelement <2 x double> %112, double %48, i64 1
  %121 = shufflevector <2 x double> %119, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %122 = fmul <2 x double> %120, %121
  %123 = shufflevector <2 x double> %107, <2 x double> poison, <2 x i32> zeroinitializer
  %124 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %123, <2 x double> %119, <2 x double> %122)
  %125 = fadd <2 x double> %113, %124
  %126 = load <2 x double>, ptr %49, align 8, !tbaa !11
  %127 = load <2 x double>, ptr %51, align 8, !tbaa !11
  %128 = shufflevector <2 x double> %127, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %129 = fsub <2 x double> %126, %128
  %130 = fadd <2 x double> %126, %128
  %131 = shufflevector <2 x double> %129, <2 x double> %130, <2 x i32> <i32 0, i32 3>
  %132 = shufflevector <2 x double> %131, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %133 = insertelement <2 x double> %98, double %39, i64 0
  %134 = fmul <2 x double> %132, %133
  %135 = shufflevector <2 x double> %95, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %136 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %135, <2 x double> %131, <2 x double> %134)
  %137 = load <2 x double>, ptr %52, align 8, !tbaa !11
  %138 = load <2 x double>, ptr %55, align 8, !tbaa !11
  %139 = shufflevector <2 x double> %138, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %140 = fsub <2 x double> %137, %139
  %141 = fadd <2 x double> %137, %139
  %142 = shufflevector <2 x double> %140, <2 x double> %141, <2 x i32> <i32 0, i32 3>
  %143 = shufflevector <2 x double> %142, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %144 = insertelement <2 x double> %85, double %56, i64 0
  %145 = fmul <2 x double> %143, %144
  %146 = shufflevector <2 x double> %82, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %147 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %146, <2 x double> %142, <2 x double> %145)
  %148 = fadd <2 x double> %136, %147
  %149 = shufflevector <2 x double> %86, <2 x double> %136, <2 x i32> <i32 1, i32 2>
  %150 = shufflevector <2 x double> %99, <2 x double> %147, <2 x i32> <i32 1, i32 2>
  %151 = fsub <2 x double> %149, %150
  %152 = shufflevector <2 x double> %86, <2 x double> %136, <2 x i32> <i32 0, i32 3>
  %153 = shufflevector <2 x double> %99, <2 x double> %147, <2 x i32> <i32 0, i32 3>
  %154 = fsub <2 x double> %152, %153
  %155 = fadd <2 x double> %73, %125
  %156 = extractelement <2 x double> %155, i64 1
  %157 = fadd <2 x double> %73, %125
  %158 = extractelement <2 x double> %157, i64 0
  %159 = fadd <2 x double> %100, %148
  %160 = extractelement <2 x double> %159, i64 0
  %161 = fadd <2 x double> %100, %148
  %162 = extractelement <2 x double> %161, i64 1
  %163 = fadd double %156, %160
  store double %163, ptr %0, align 8, !tbaa !11
  %164 = fadd double %158, %162
  store double %164, ptr %17, align 8, !tbaa !11
  %165 = fsub double %156, %160
  store double %165, ptr %31, align 8, !tbaa !11
  %166 = fsub double %158, %162
  store double %166, ptr %32, align 8, !tbaa !11
  %167 = fsub <2 x double> %73, %125
  %168 = fsub <2 x double> %100, %148
  %169 = fsub <2 x double> %167, %168
  %170 = extractelement <2 x double> %169, i64 1
  store double %170, ptr %40, align 8, !tbaa !11
  %171 = fadd <2 x double> %167, %168
  store <2 x double> %171, ptr %41, align 8, !tbaa !11
  %172 = fsub <2 x double> %167, %168
  %173 = extractelement <2 x double> %172, i64 0
  store double %173, ptr %50, align 8, !tbaa !11
  %174 = extractelement <2 x double> %154, i64 0
  %175 = extractelement <2 x double> %154, i64 1
  %176 = fsub double %174, %175
  %177 = extractelement <2 x double> %151, i64 0
  %178 = extractelement <2 x double> %151, i64 1
  %179 = fadd double %177, %178
  %180 = fsub <2 x double> %62, %72
  %181 = shufflevector <2 x double> %180, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %182 = fsub <2 x double> %113, %124
  %183 = fsub <2 x double> %181, %182
  %184 = fadd <2 x double> %181, %182
  %185 = shufflevector <2 x double> %183, <2 x double> %184, <2 x i32> <i32 0, i32 3>
  %186 = insertelement <2 x double> poison, double %176, i64 0
  %187 = insertelement <2 x double> poison, double %176, i64 0
  %188 = insertelement <2 x double> poison, double %179, i64 0
  %189 = insertelement <2 x double> poison, double %179, i64 0
  %190 = fsub <2 x double> %187, %189
  %191 = fadd <2 x double> %186, %188
  %192 = shufflevector <2 x double> %190, <2 x double> %191, <2 x i32> <i32 0, i32 2>
  %193 = fmul <2 x double> %71, %192
  %194 = fadd <2 x double> %185, %193
  store <2 x double> %194, ptr %19, align 8, !tbaa !11
  %195 = fsub <2 x double> %185, %193
  store <2 x double> %195, ptr %35, align 8, !tbaa !11
  %196 = fadd <2 x double> %181, %182
  %197 = extractelement <2 x double> %196, i64 0
  %198 = fsub <2 x double> %181, %182
  %199 = extractelement <2 x double> %198, i64 1
  %200 = fadd double %174, %175
  %201 = fsub double %177, %178
  %202 = fsub double %200, %201
  %203 = fmul double %4, %202
  %204 = fadd double %200, %201
  %205 = fmul double %4, %204
  %206 = fsub double %197, %205
  store double %206, ptr %44, align 8, !tbaa !11
  %207 = fadd double %199, %203
  store double %207, ptr %46, align 8, !tbaa !11
  %208 = fadd double %197, %205
  store double %208, ptr %52, align 8, !tbaa !11
  %209 = fsub double %199, %203
  store double %209, ptr %54, align 8, !tbaa !11
  %210 = insertelement <2 x double> poison, double %29, i64 0
  %211 = insertelement <2 x double> poison, double %29, i64 0
  %212 = insertelement <2 x double> poison, double %30, i64 0
  %213 = insertelement <2 x double> poison, double %30, i64 0
  %214 = fadd <2 x double> %211, %213
  %215 = fsub <2 x double> %210, %212
  %216 = shufflevector <2 x double> %214, <2 x double> %215, <2 x i32> <i32 0, i32 2>
  %217 = fmul <2 x double> %71, %216
  %218 = shufflevector <2 x double> %60, <2 x double> %61, <2 x i32> <i32 1, i32 2>
  %219 = fsub <2 x double> %218, %217
  %220 = fadd <2 x double> %218, %217
  %221 = shufflevector <2 x double> %219, <2 x double> %220, <2 x i32> <i32 0, i32 3>
  %222 = shufflevector <2 x double> %78, <2 x double> %77, <2 x i32> <i32 0, i32 3>
  %223 = shufflevector <2 x double> %222, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %224 = insertelement <2 x double> poison, double %39, i64 0
  %225 = insertelement <2 x double> %224, double %12, i64 1
  %226 = fmul <2 x double> %223, %225
  %227 = insertelement <2 x double> poison, double %10, i64 0
  %228 = shufflevector <2 x double> %227, <2 x double> poison, <2 x i32> zeroinitializer
  %229 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %228, <2 x double> %222, <2 x double> %226)
  %230 = shufflevector <2 x double> %91, <2 x double> %90, <2 x i32> <i32 0, i32 3>
  %231 = insertelement <2 x double> poison, double %8, i64 0
  %232 = insertelement <2 x double> %231, double %34, i64 1
  %233 = shufflevector <2 x double> %230, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %234 = fmul <2 x double> %232, %233
  %235 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %85, <2 x double> %230, <2 x double> %234)
  %236 = fsub <2 x double> %229, %235
  %237 = shufflevector <2 x double> %104, <2 x double> %105, <2 x i32> <i32 1, i32 2>
  %238 = shufflevector <2 x double> %237, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %239 = insertelement <2 x double> poison, double %48, i64 0
  %240 = insertelement <2 x double> %239, double %14, i64 1
  %241 = fmul <2 x double> %238, %240
  %242 = shufflevector <2 x double> %107, <2 x double> poison, <2 x i32> zeroinitializer
  %243 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %242, <2 x double> %237, <2 x double> %241)
  %244 = shufflevector <2 x double> %117, <2 x double> %118, <2 x i32> <i32 1, i32 2>
  %245 = shufflevector <2 x double> %244, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %246 = insertelement <2 x double> %242, double %43, i64 0
  %247 = fmul <2 x double> %245, %246
  %248 = shufflevector <2 x double> %240, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %249 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %248, <2 x double> %244, <2 x double> %247)
  %250 = fsub <2 x double> %243, %249
  %251 = shufflevector <2 x double> %130, <2 x double> %129, <2 x i32> <i32 0, i32 3>
  %252 = insertelement <2 x double> %85, double %56, i64 1
  %253 = shufflevector <2 x double> %251, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %254 = fmul <2 x double> %252, %253
  %255 = shufflevector <2 x double> %231, <2 x double> poison, <2 x i32> zeroinitializer
  %256 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %255, <2 x double> %251, <2 x double> %254)
  %257 = shufflevector <2 x double> %141, <2 x double> %140, <2 x i32> <i32 0, i32 3>
  %258 = shufflevector <2 x double> %257, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %259 = insertelement <2 x double> %228, double %38, i64 0
  %260 = fmul <2 x double> %258, %259
  %261 = shufflevector <2 x double> %225, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %262 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %261, <2 x double> %257, <2 x double> %260)
  %263 = fadd <2 x double> %256, %262
  %264 = fadd <2 x double> %221, %250
  %265 = fsub <2 x double> %236, %263
  %266 = fadd <2 x double> %264, %265
  store <2 x double> %266, ptr %18, align 8, !tbaa !11
  %267 = fsub <2 x double> %264, %265
  store <2 x double> %267, ptr %33, align 8, !tbaa !11
  %268 = fsub <2 x double> %221, %250
  %269 = fadd <2 x double> %236, %263
  %270 = shufflevector <2 x double> %269, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %271 = fsub <2 x double> %268, %270
  %272 = fadd <2 x double> %268, %270
  %273 = shufflevector <2 x double> %271, <2 x double> %272, <2 x i32> <i32 0, i32 3>
  store <2 x double> %273, ptr %42, align 8, !tbaa !11
  %274 = shufflevector <2 x double> %272, <2 x double> %271, <2 x i32> <i32 0, i32 3>
  store <2 x double> %274, ptr %51, align 8, !tbaa !11
  %275 = shufflevector <2 x double> %219, <2 x double> %220, <2 x i32> <i32 1, i32 2>
  %276 = fadd <2 x double> %229, %235
  %277 = fadd <2 x double> %243, %249
  %278 = fsub <2 x double> %256, %262
  %279 = shufflevector <2 x double> %278, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %280 = fsub <2 x double> %275, %277
  %281 = extractelement <2 x double> %280, i64 1
  %282 = shufflevector <2 x double> %276, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %283 = fsub <2 x double> %282, %278
  %284 = fadd <2 x double> %276, %279
  %285 = fsub <2 x double> %284, %283
  %286 = extractelement <2 x double> %285, i64 0
  %287 = fmul double %4, %286
  %288 = fadd double %281, %287
  store double %288, ptr %26, align 8, !tbaa !11
  %289 = fadd <2 x double> %275, %277
  %290 = fadd <2 x double> %284, %283
  %291 = fmul <2 x double> %71, %290
  %292 = fadd <2 x double> %289, %291
  %293 = extractelement <2 x double> %292, i64 0
  store double %293, ptr %21, align 8, !tbaa !11
  %294 = fsub double %281, %287
  store double %294, ptr %37, align 8, !tbaa !11
  %295 = fsub <2 x double> %275, %277
  %296 = extractelement <2 x double> %295, i64 0
  %297 = fsub <2 x double> %283, %284
  %298 = extractelement <2 x double> %297, i64 1
  %299 = fmul double %4, %298
  %300 = fsub <2 x double> %289, %291
  store <2 x double> %300, ptr %36, align 8, !tbaa !11
  %301 = shufflevector <2 x double> %295, <2 x double> %289, <2 x i32> <i32 0, i32 3>
  %302 = insertelement <2 x double> %291, double %299, i64 0
  %303 = fadd <2 x double> %301, %302
  store <2 x double> %303, ptr %45, align 8, !tbaa !11
  %304 = fsub double %296, %299
  store double %304, ptr %53, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @cftf082(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds double, ptr %1, i64 1
  %4 = load double, ptr %3, align 8, !tbaa !11
  %5 = getelementptr inbounds double, ptr %1, i64 4
  %6 = getelementptr inbounds double, ptr %0, i64 9
  %7 = getelementptr inbounds double, ptr %0, i64 1
  %8 = getelementptr inbounds double, ptr %0, i64 8
  %9 = getelementptr inbounds double, ptr %0, i64 4
  %10 = getelementptr inbounds double, ptr %0, i64 5
  %11 = getelementptr inbounds double, ptr %0, i64 12
  %12 = getelementptr inbounds double, ptr %0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !11
  %14 = getelementptr inbounds double, ptr %0, i64 11
  %15 = load double, ptr %14, align 8, !tbaa !11
  %16 = fsub double %13, %15
  %17 = getelementptr inbounds double, ptr %0, i64 3
  %18 = load double, ptr %17, align 8, !tbaa !11
  %19 = getelementptr inbounds double, ptr %0, i64 10
  %20 = load double, ptr %19, align 8, !tbaa !11
  %21 = fadd double %18, %20
  %22 = getelementptr inbounds double, ptr %0, i64 6
  %23 = load double, ptr %22, align 8, !tbaa !11
  %24 = getelementptr inbounds double, ptr %0, i64 15
  %25 = load double, ptr %24, align 8, !tbaa !11
  %26 = fsub double %23, %25
  %27 = getelementptr inbounds double, ptr %0, i64 7
  %28 = load double, ptr %27, align 8, !tbaa !11
  %29 = getelementptr inbounds double, ptr %0, i64 14
  %30 = load double, ptr %29, align 8, !tbaa !11
  %31 = fadd double %28, %30
  %32 = load <2 x double>, ptr %5, align 8, !tbaa !11
  %33 = load <2 x double>, ptr %0, align 8, !tbaa !11
  %34 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %35 = load <2 x double>, ptr %8, align 8, !tbaa !11
  %36 = fsub <2 x double> %34, %35
  %37 = extractelement <2 x double> %36, i64 1
  %38 = fadd <2 x double> %34, %35
  %39 = fsub <2 x double> %34, %35
  %40 = extractelement <2 x double> %39, i64 0
  %41 = load <2 x double>, ptr %9, align 8, !tbaa !11
  %42 = load <2 x double>, ptr %11, align 8, !tbaa !11
  %43 = shufflevector <2 x double> %42, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %44 = shufflevector <2 x double> %41, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %45 = fadd <2 x double> %44, %42
  %46 = fsub <2 x double> %41, %43
  %47 = fsub <2 x double> %46, %45
  %48 = extractelement <2 x double> %47, i64 0
  %49 = fmul double %4, %48
  %50 = fsub <2 x double> %45, %46
  %51 = extractelement <2 x double> %50, i64 1
  %52 = fmul double %4, %51
  %53 = fadd <2 x double> %46, %45
  %54 = insertelement <2 x double> poison, double %4, i64 0
  %55 = shufflevector <2 x double> %54, <2 x double> poison, <2 x i32> zeroinitializer
  %56 = fmul <2 x double> %55, %53
  %57 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %58 = extractelement <2 x double> %32, i64 1
  %59 = fmul double %58, %16
  %60 = extractelement <2 x double> %32, i64 0
  %61 = tail call double @llvm.fmuladd.f64(double %60, double %21, double %59)
  %62 = fneg <2 x double> %32
  %63 = insertelement <2 x double> poison, double %16, i64 0
  %64 = fmul double %60, %26
  %65 = tail call double @llvm.fmuladd.f64(double %58, double %31, double %64)
  %66 = insertelement <2 x double> poison, double %13, i64 0
  %67 = insertelement <2 x double> %66, double %23, i64 1
  %68 = insertelement <2 x double> poison, double %15, i64 0
  %69 = insertelement <2 x double> %68, double %25, i64 1
  %70 = fadd <2 x double> %67, %69
  %71 = insertelement <2 x double> poison, double %18, i64 0
  %72 = insertelement <2 x double> %71, double %28, i64 1
  %73 = insertelement <2 x double> poison, double %20, i64 0
  %74 = insertelement <2 x double> %73, double %30, i64 1
  %75 = fsub <2 x double> %72, %74
  %76 = insertelement <2 x double> %75, double %21, i64 1
  %77 = fmul <2 x double> %76, %62
  %78 = shufflevector <2 x double> %77, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %79 = shufflevector <2 x double> %63, <2 x double> %70, <2 x i32> <i32 0, i32 2>
  %80 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %32, <2 x double> %79, <2 x double> %78)
  %81 = insertelement <2 x double> %75, double %31, i64 0
  %82 = fmul <2 x double> %81, %62
  %83 = insertelement <2 x double> %70, double %26, i64 0
  %84 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> %83, <2 x double> %82)
  %85 = fmul <2 x double> %32, %70
  %86 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %57, <2 x double> %75, <2 x double> %85)
  %87 = fadd double %37, %49
  %88 = fadd <2 x double> %38, %56
  %89 = extractelement <2 x double> %88, i64 0
  %90 = fadd <2 x double> %80, %84
  %91 = extractelement <2 x double> %90, i64 0
  %92 = fadd double %61, %65
  %93 = fadd double %87, %91
  store double %93, ptr %0, align 8, !tbaa !11
  %94 = fadd double %89, %92
  store double %94, ptr %7, align 8, !tbaa !11
  %95 = fsub double %87, %91
  store double %95, ptr %12, align 8, !tbaa !11
  %96 = fsub double %89, %92
  store double %96, ptr %17, align 8, !tbaa !11
  %97 = fsub double %37, %49
  %98 = fsub double %61, %65
  %99 = fsub double %97, %98
  store double %99, ptr %9, align 8, !tbaa !11
  %100 = fsub <2 x double> %38, %56
  %101 = fsub <2 x double> %80, %84
  %102 = fadd <2 x double> %100, %101
  %103 = extractelement <2 x double> %102, i64 0
  store double %103, ptr %10, align 8, !tbaa !11
  %104 = fadd double %97, %98
  store double %104, ptr %22, align 8, !tbaa !11
  %105 = fadd double %40, %52
  %106 = extractelement <2 x double> %86, i64 0
  %107 = extractelement <2 x double> %86, i64 1
  %108 = fsub double %106, %107
  %109 = fsub <2 x double> %100, %101
  %110 = fadd <2 x double> %100, %101
  %111 = shufflevector <2 x double> %109, <2 x double> %110, <2 x i32> <i32 0, i32 3>
  store <2 x double> %111, ptr %27, align 8, !tbaa !11
  %112 = fadd double %105, %108
  store double %112, ptr %6, align 8, !tbaa !11
  %113 = shufflevector <2 x double> %100, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %114 = insertelement <2 x double> %113, double %105, i64 1
  %115 = shufflevector <2 x double> %101, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %116 = insertelement <2 x double> %115, double %108, i64 1
  %117 = fsub <2 x double> %114, %116
  store <2 x double> %117, ptr %19, align 8, !tbaa !11
  %118 = fsub double %40, %52
  %119 = fadd double %106, %107
  %120 = shufflevector <2 x double> %38, <2 x double> %80, <2 x i32> <i32 1, i32 3>
  %121 = shufflevector <2 x double> %56, <2 x double> %84, <2 x i32> <i32 1, i32 3>
  %122 = fadd <2 x double> %120, %121
  %123 = insertelement <2 x double> poison, double %119, i64 0
  %124 = insertelement <2 x double> %123, double %118, i64 1
  %125 = fsub <2 x double> %122, %124
  %126 = fadd <2 x double> %122, %124
  %127 = shufflevector <2 x double> %125, <2 x double> %126, <2 x i32> <i32 0, i32 3>
  store <2 x double> %127, ptr %11, align 8, !tbaa !11
  %128 = extractelement <2 x double> %122, i64 0
  %129 = fadd double %128, %119
  store double %129, ptr %29, align 8, !tbaa !11
  %130 = extractelement <2 x double> %122, i64 1
  %131 = fsub double %118, %130
  store double %131, ptr %24, align 8, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @cftmdl1(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = ashr i32 %0, 3
  %5 = shl nsw i32 %4, 1
  %6 = shl nsw i32 %4, 2
  %7 = mul nsw i32 %4, 6
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds double, ptr %1, i64 %8
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds double, ptr %1, i64 %10
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds double, ptr %1, i64 %12
  %14 = load <2 x double>, ptr %1, align 8, !tbaa !11
  %15 = load <2 x double>, ptr %9, align 8, !tbaa !11
  %16 = fsub <2 x double> %14, %15
  %17 = load <2 x double>, ptr %11, align 8, !tbaa !11
  %18 = load <2 x double>, ptr %13, align 8, !tbaa !11
  %19 = fsub <2 x double> %17, %18
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %21 = fadd <2 x double> %14, %15
  %22 = fadd <2 x double> %17, %18
  %23 = fadd <2 x double> %21, %22
  store <2 x double> %23, ptr %1, align 8, !tbaa !11
  %24 = fsub <2 x double> %21, %22
  store <2 x double> %24, ptr %11, align 8, !tbaa !11
  %25 = fsub <2 x double> %16, %20
  %26 = fadd <2 x double> %16, %20
  %27 = shufflevector <2 x double> %25, <2 x double> %26, <2 x i32> <i32 0, i32 3>
  store <2 x double> %27, ptr %9, align 8, !tbaa !11
  %28 = shufflevector <2 x double> %26, <2 x double> %25, <2 x i32> <i32 0, i32 3>
  store <2 x double> %28, ptr %13, align 8, !tbaa !11
  %29 = getelementptr inbounds double, ptr %2, i64 1
  %30 = load double, ptr %29, align 8, !tbaa !11
  %31 = icmp sgt i32 %0, 23
  %32 = sext i32 %4 to i64
  br i1 %31, label %33, label %165

33:                                               ; preds = %3
  %34 = shl nsw i32 %4, 2
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i64 [ 0, %33 ], [ %39, %35 ]
  %37 = phi i64 [ 2, %33 ], [ %163, %35 ]
  %38 = trunc i64 %37 to i32
  %39 = add nuw nsw i64 %36, 4
  %40 = getelementptr inbounds double, ptr %2, i64 %39
  %41 = load double, ptr %40, align 8, !tbaa !11
  %42 = add nuw nsw i64 %36, 5
  %43 = getelementptr inbounds double, ptr %2, i64 %42
  %44 = load double, ptr %43, align 8, !tbaa !11
  %45 = add nuw nsw i64 %36, 6
  %46 = getelementptr inbounds double, ptr %2, i64 %45
  %47 = load double, ptr %46, align 8, !tbaa !11
  %48 = add nuw nsw i64 %36, 7
  %49 = getelementptr inbounds double, ptr %2, i64 %48
  %50 = load double, ptr %49, align 8, !tbaa !11
  %51 = fneg double %50
  %52 = add nsw i64 %37, %10
  %53 = add nsw i64 %52, %10
  %54 = add i32 %34, %38
  %55 = add nsw i64 %53, %10
  %56 = add nsw i32 %54, %5
  %57 = getelementptr inbounds double, ptr %1, i64 %37
  %58 = getelementptr inbounds double, ptr %1, i64 %53
  %59 = load double, ptr %58, align 8, !tbaa !11
  %60 = or i32 %54, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, ptr %1, i64 %61
  %63 = load double, ptr %62, align 8, !tbaa !11
  %64 = getelementptr inbounds double, ptr %1, i64 %52
  %65 = getelementptr inbounds double, ptr %1, i64 %55
  %66 = load double, ptr %65, align 8, !tbaa !11
  %67 = or i32 %56, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, ptr %1, i64 %68
  %70 = load double, ptr %69, align 8, !tbaa !11
  %71 = load <2 x double>, ptr %57, align 8, !tbaa !11
  %72 = insertelement <2 x double> poison, double %59, i64 0
  %73 = insertelement <2 x double> %72, double %63, i64 1
  %74 = fadd <2 x double> %71, %73
  %75 = extractelement <2 x double> %71, i64 0
  %76 = fsub double %75, %59
  %77 = extractelement <2 x double> %71, i64 1
  %78 = fsub double %77, %63
  %79 = load <2 x double>, ptr %64, align 8, !tbaa !11
  %80 = insertelement <2 x double> poison, double %66, i64 0
  %81 = insertelement <2 x double> %80, double %70, i64 1
  %82 = fadd <2 x double> %79, %81
  %83 = extractelement <2 x double> %79, i64 0
  %84 = fsub double %83, %66
  %85 = extractelement <2 x double> %79, i64 1
  %86 = fsub double %85, %70
  %87 = fadd <2 x double> %74, %82
  store <2 x double> %87, ptr %57, align 8, !tbaa !11
  %88 = fsub <2 x double> %74, %82
  store <2 x double> %88, ptr %64, align 8, !tbaa !11
  %89 = fsub double %76, %86
  %90 = fadd double %78, %84
  %91 = fneg double %44
  %92 = fmul double %90, %91
  %93 = tail call double @llvm.fmuladd.f64(double %41, double %89, double %92)
  store double %93, ptr %58, align 8, !tbaa !11
  %94 = fmul double %44, %89
  %95 = tail call double @llvm.fmuladd.f64(double %41, double %90, double %94)
  store double %95, ptr %62, align 8, !tbaa !11
  %96 = fadd double %76, %86
  %97 = fsub double %78, %84
  %98 = fmul double %97, %51
  %99 = tail call double @llvm.fmuladd.f64(double %47, double %96, double %98)
  store double %99, ptr %65, align 8, !tbaa !11
  %100 = fmul double %50, %96
  %101 = tail call double @llvm.fmuladd.f64(double %47, double %97, double %100)
  store double %101, ptr %69, align 8, !tbaa !11
  %102 = sub nsw i64 %10, %37
  %103 = sub nsw i32 %5, %38
  %104 = add nsw i64 %102, %10
  %105 = add nsw i32 %103, %5
  %106 = add nsw i64 %104, %10
  %107 = add nsw i32 %105, %5
  %108 = add nsw i64 %106, %10
  %109 = getelementptr inbounds double, ptr %1, i64 %102
  %110 = getelementptr inbounds double, ptr %1, i64 %106
  %111 = load double, ptr %110, align 8, !tbaa !11
  %112 = or i32 %107, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds double, ptr %1, i64 %113
  %115 = load double, ptr %114, align 8, !tbaa !11
  %116 = getelementptr inbounds double, ptr %1, i64 %104
  %117 = load double, ptr %116, align 8, !tbaa !11
  %118 = getelementptr inbounds double, ptr %1, i64 %108
  %119 = load double, ptr %118, align 8, !tbaa !11
  %120 = or i32 %105, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds double, ptr %1, i64 %121
  %123 = load double, ptr %122, align 8, !tbaa !11
  %124 = shl i64 %108, 32
  %125 = ashr exact i64 %124, 32
  %126 = or i64 %125, 1
  %127 = getelementptr inbounds double, ptr %1, i64 %126
  %128 = load double, ptr %127, align 8, !tbaa !11
  %129 = fsub double %117, %119
  %130 = fsub double %123, %128
  %131 = load <2 x double>, ptr %109, align 8, !tbaa !11
  %132 = insertelement <2 x double> poison, double %111, i64 0
  %133 = insertelement <2 x double> %132, double %115, i64 1
  %134 = fadd <2 x double> %131, %133
  %135 = extractelement <2 x double> %131, i64 0
  %136 = fsub double %135, %111
  %137 = extractelement <2 x double> %131, i64 1
  %138 = fsub double %137, %115
  %139 = insertelement <2 x double> poison, double %117, i64 0
  %140 = insertelement <2 x double> %139, double %123, i64 1
  %141 = insertelement <2 x double> poison, double %119, i64 0
  %142 = insertelement <2 x double> %141, double %128, i64 1
  %143 = fadd <2 x double> %140, %142
  %144 = fadd <2 x double> %134, %143
  store <2 x double> %144, ptr %109, align 8, !tbaa !11
  %145 = fsub <2 x double> %134, %143
  %146 = extractelement <2 x double> %145, i64 0
  store double %146, ptr %116, align 8, !tbaa !11
  %147 = fsub <2 x double> %134, %143
  %148 = extractelement <2 x double> %147, i64 1
  store double %148, ptr %122, align 8, !tbaa !11
  %149 = fsub double %136, %130
  %150 = fadd double %138, %129
  %151 = fneg double %41
  %152 = fmul double %150, %151
  %153 = tail call double @llvm.fmuladd.f64(double %44, double %149, double %152)
  store double %153, ptr %110, align 8, !tbaa !11
  %154 = fmul double %41, %149
  %155 = tail call double @llvm.fmuladd.f64(double %44, double %150, double %154)
  store double %155, ptr %114, align 8, !tbaa !11
  %156 = fadd double %136, %130
  %157 = fsub double %138, %129
  %158 = fmul double %47, %157
  %159 = tail call double @llvm.fmuladd.f64(double %51, double %156, double %158)
  store double %159, ptr %118, align 8, !tbaa !11
  %160 = fneg double %47
  %161 = fmul double %156, %160
  %162 = tail call double @llvm.fmuladd.f64(double %51, double %157, double %161)
  store double %162, ptr %127, align 8, !tbaa !11
  %163 = add nuw nsw i64 %37, 2
  %164 = icmp slt i64 %163, %32
  br i1 %164, label %35, label %165, !llvm.loop !29

165:                                              ; preds = %35, %3
  %166 = mul nsw i32 %4, 3
  %167 = mul nsw i32 %4, 5
  %168 = mul nsw i32 %4, 7
  %169 = getelementptr inbounds double, ptr %1, i64 %32
  %170 = sext i32 %167 to i64
  %171 = getelementptr inbounds double, ptr %1, i64 %170
  %172 = add nsw i32 %167, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds double, ptr %1, i64 %173
  %175 = sext i32 %166 to i64
  %176 = getelementptr inbounds double, ptr %1, i64 %175
  %177 = sext i32 %168 to i64
  %178 = getelementptr inbounds double, ptr %1, i64 %177
  %179 = add nsw i32 %168, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds double, ptr %1, i64 %180
  %182 = load <2 x double>, ptr %169, align 8, !tbaa !11
  %183 = load <2 x double>, ptr %171, align 8, !tbaa !11
  %184 = fadd <2 x double> %182, %183
  %185 = fsub <2 x double> %182, %183
  %186 = extractelement <2 x double> %185, i64 0
  %187 = fsub <2 x double> %182, %183
  %188 = extractelement <2 x double> %187, i64 1
  %189 = load <2 x double>, ptr %176, align 8, !tbaa !11
  %190 = load <2 x double>, ptr %178, align 8, !tbaa !11
  %191 = fadd <2 x double> %189, %190
  %192 = fsub <2 x double> %189, %190
  %193 = extractelement <2 x double> %192, i64 0
  %194 = fsub <2 x double> %189, %190
  %195 = extractelement <2 x double> %194, i64 1
  %196 = fadd <2 x double> %184, %191
  store <2 x double> %196, ptr %169, align 8, !tbaa !11
  %197 = fsub <2 x double> %184, %191
  store <2 x double> %197, ptr %176, align 8, !tbaa !11
  %198 = fsub double %186, %195
  %199 = fadd double %188, %193
  %200 = fsub double %198, %199
  %201 = fmul double %30, %200
  store double %201, ptr %171, align 8, !tbaa !11
  %202 = fadd double %199, %198
  %203 = fmul double %30, %202
  store double %203, ptr %174, align 8, !tbaa !11
  %204 = fadd double %186, %195
  %205 = fsub double %188, %193
  %206 = fneg double %30
  %207 = fadd double %205, %204
  %208 = fmul double %207, %206
  store double %208, ptr %178, align 8, !tbaa !11
  %209 = fsub double %205, %204
  %210 = fmul double %209, %206
  store double %210, ptr %181, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @cftmdl2(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = ashr i32 %0, 3
  %5 = shl nsw i32 %4, 1
  %6 = getelementptr inbounds double, ptr %2, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !11
  %8 = shl nsw i32 %4, 2
  %9 = mul nsw i32 %4, 6
  %10 = load double, ptr %1, align 8, !tbaa !11
  %11 = or i32 %8, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds double, ptr %1, i64 %12
  %14 = load double, ptr %13, align 8, !tbaa !11
  %15 = fsub double %10, %14
  %16 = getelementptr inbounds double, ptr %1, i64 1
  %17 = load double, ptr %16, align 8, !tbaa !11
  %18 = sext i32 %8 to i64
  %19 = getelementptr inbounds double, ptr %1, i64 %18
  %20 = load double, ptr %19, align 8, !tbaa !11
  %21 = fadd double %17, %20
  %22 = fadd double %10, %14
  %23 = fsub double %17, %20
  %24 = sext i32 %5 to i64
  %25 = getelementptr inbounds double, ptr %1, i64 %24
  %26 = load double, ptr %25, align 8, !tbaa !11
  %27 = or i32 %9, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, ptr %1, i64 %28
  %30 = load double, ptr %29, align 8, !tbaa !11
  %31 = fsub double %26, %30
  %32 = or i32 %5, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, ptr %1, i64 %33
  %35 = load double, ptr %34, align 8, !tbaa !11
  %36 = sext i32 %9 to i64
  %37 = getelementptr inbounds double, ptr %1, i64 %36
  %38 = load double, ptr %37, align 8, !tbaa !11
  %39 = fadd double %35, %38
  %40 = fadd double %26, %30
  %41 = fsub double %35, %38
  %42 = fsub double %31, %39
  %43 = fmul double %7, %42
  %44 = fadd double %31, %39
  %45 = fmul double %7, %44
  %46 = fadd double %15, %43
  store double %46, ptr %1, align 8, !tbaa !11
  %47 = fadd double %21, %45
  store double %47, ptr %16, align 8, !tbaa !11
  %48 = fsub double %15, %43
  store double %48, ptr %25, align 8, !tbaa !11
  %49 = fsub double %21, %45
  store double %49, ptr %34, align 8, !tbaa !11
  %50 = fsub double %40, %41
  %51 = fmul double %7, %50
  %52 = fadd double %40, %41
  %53 = fmul double %7, %52
  %54 = fsub double %22, %53
  store double %54, ptr %19, align 8, !tbaa !11
  %55 = fadd double %23, %51
  store double %55, ptr %13, align 8, !tbaa !11
  %56 = fadd double %22, %53
  store double %56, ptr %37, align 8, !tbaa !11
  %57 = fsub double %23, %51
  store double %57, ptr %29, align 8, !tbaa !11
  %58 = icmp sgt i32 %0, 23
  %59 = sext i32 %4 to i64
  br i1 %58, label %60, label %242

60:                                               ; preds = %3
  %61 = shl nsw i32 %4, 2
  br label %62

62:                                               ; preds = %62, %60
  %63 = phi i64 [ %18, %60 ], [ %80, %62 ]
  %64 = phi i64 [ 0, %60 ], [ %67, %62 ]
  %65 = phi i64 [ 2, %60 ], [ %240, %62 ]
  %66 = trunc i64 %65 to i32
  %67 = add nuw nsw i64 %64, 4
  %68 = getelementptr inbounds double, ptr %2, i64 %67
  %69 = load double, ptr %68, align 8, !tbaa !11
  %70 = add nuw nsw i64 %64, 5
  %71 = getelementptr inbounds double, ptr %2, i64 %70
  %72 = load double, ptr %71, align 8, !tbaa !11
  %73 = add nuw nsw i64 %64, 6
  %74 = getelementptr inbounds double, ptr %2, i64 %73
  %75 = load double, ptr %74, align 8, !tbaa !11
  %76 = add nuw nsw i64 %64, 7
  %77 = getelementptr inbounds double, ptr %2, i64 %76
  %78 = load double, ptr %77, align 8, !tbaa !11
  %79 = fneg double %78
  %80 = add nsw i64 %63, -4
  %81 = getelementptr inbounds double, ptr %2, i64 %80
  %82 = load double, ptr %81, align 8, !tbaa !11
  %83 = add nsw i64 %63, -3
  %84 = getelementptr inbounds double, ptr %2, i64 %83
  %85 = load double, ptr %84, align 8, !tbaa !11
  %86 = add nsw i64 %63, -2
  %87 = getelementptr inbounds double, ptr %2, i64 %86
  %88 = load double, ptr %87, align 8, !tbaa !11
  %89 = add nsw i64 %63, -1
  %90 = getelementptr inbounds double, ptr %2, i64 %89
  %91 = load double, ptr %90, align 8, !tbaa !11
  %92 = fneg double %91
  %93 = add nsw i64 %65, %24
  %94 = add nsw i64 %93, %24
  %95 = add i32 %61, %66
  %96 = add nsw i64 %94, %24
  %97 = add nsw i32 %95, %5
  %98 = getelementptr inbounds double, ptr %1, i64 %65
  %99 = or i32 %95, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, ptr %1, i64 %100
  %102 = load double, ptr %101, align 8, !tbaa !11
  %103 = getelementptr inbounds double, ptr %1, i64 %94
  %104 = load double, ptr %103, align 8, !tbaa !11
  %105 = getelementptr inbounds double, ptr %1, i64 %93
  %106 = or i32 %97, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double, ptr %1, i64 %107
  %109 = load double, ptr %108, align 8, !tbaa !11
  %110 = getelementptr inbounds double, ptr %1, i64 %96
  %111 = load double, ptr %110, align 8, !tbaa !11
  %112 = fneg double %72
  %113 = fneg double %82
  %114 = load <2 x double>, ptr %98, align 8, !tbaa !11
  %115 = insertelement <2 x double> poison, double %102, i64 0
  %116 = insertelement <2 x double> %115, double %104, i64 1
  %117 = fsub <2 x double> %114, %116
  %118 = fadd <2 x double> %114, %116
  %119 = shufflevector <2 x double> %117, <2 x double> %118, <2 x i32> <i32 0, i32 3>
  %120 = extractelement <2 x double> %114, i64 0
  %121 = fadd double %120, %102
  %122 = extractelement <2 x double> %114, i64 1
  %123 = fsub double %122, %104
  %124 = load <2 x double>, ptr %105, align 8, !tbaa !11
  %125 = insertelement <2 x double> poison, double %109, i64 0
  %126 = insertelement <2 x double> %125, double %111, i64 1
  %127 = fsub <2 x double> %124, %126
  %128 = fadd <2 x double> %124, %126
  %129 = shufflevector <2 x double> %127, <2 x double> %128, <2 x i32> <i32 0, i32 3>
  %130 = extractelement <2 x double> %124, i64 0
  %131 = fadd double %130, %109
  %132 = extractelement <2 x double> %124, i64 1
  %133 = fsub double %132, %111
  %134 = shufflevector <2 x double> %119, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %135 = insertelement <2 x double> poison, double %112, i64 0
  %136 = insertelement <2 x double> %135, double %72, i64 1
  %137 = fmul <2 x double> %134, %136
  %138 = insertelement <2 x double> poison, double %69, i64 0
  %139 = shufflevector <2 x double> %138, <2 x double> poison, <2 x i32> zeroinitializer
  %140 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %139, <2 x double> %119, <2 x double> %137)
  %141 = shufflevector <2 x double> %129, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %142 = insertelement <2 x double> poison, double %113, i64 0
  %143 = insertelement <2 x double> %142, double %82, i64 1
  %144 = fmul <2 x double> %141, %143
  %145 = insertelement <2 x double> poison, double %85, i64 0
  %146 = shufflevector <2 x double> %145, <2 x double> poison, <2 x i32> zeroinitializer
  %147 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %146, <2 x double> %129, <2 x double> %144)
  %148 = fadd <2 x double> %140, %147
  store <2 x double> %148, ptr %98, align 8, !tbaa !11
  %149 = fsub <2 x double> %140, %147
  store <2 x double> %149, ptr %105, align 8, !tbaa !11
  %150 = fmul double %123, %79
  %151 = tail call double @llvm.fmuladd.f64(double %75, double %121, double %150)
  %152 = fmul double %78, %121
  %153 = tail call double @llvm.fmuladd.f64(double %75, double %123, double %152)
  %154 = fmul double %88, %133
  %155 = tail call double @llvm.fmuladd.f64(double %92, double %131, double %154)
  %156 = fneg double %88
  %157 = fmul double %131, %156
  %158 = tail call double @llvm.fmuladd.f64(double %92, double %133, double %157)
  %159 = fadd double %151, %155
  store double %159, ptr %103, align 8, !tbaa !11
  %160 = fadd double %153, %158
  store double %160, ptr %101, align 8, !tbaa !11
  %161 = fsub double %151, %155
  store double %161, ptr %110, align 8, !tbaa !11
  %162 = fsub double %153, %158
  store double %162, ptr %108, align 8, !tbaa !11
  %163 = sub nsw i64 %24, %65
  %164 = sub nsw i32 %5, %66
  %165 = add nsw i64 %163, %24
  %166 = add nsw i32 %164, %5
  %167 = add nsw i64 %165, %24
  %168 = add nsw i32 %166, %5
  %169 = add nsw i64 %167, %24
  %170 = getelementptr inbounds double, ptr %1, i64 %163
  %171 = or i32 %168, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds double, ptr %1, i64 %172
  %174 = load double, ptr %173, align 8, !tbaa !11
  %175 = getelementptr inbounds double, ptr %1, i64 %167
  %176 = load double, ptr %175, align 8, !tbaa !11
  %177 = getelementptr inbounds double, ptr %1, i64 %165
  %178 = load double, ptr %177, align 8, !tbaa !11
  %179 = shl i64 %169, 32
  %180 = ashr exact i64 %179, 32
  %181 = or i64 %180, 1
  %182 = getelementptr inbounds double, ptr %1, i64 %181
  %183 = load double, ptr %182, align 8, !tbaa !11
  %184 = fsub double %178, %183
  %185 = or i32 %166, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds double, ptr %1, i64 %186
  %188 = load double, ptr %187, align 8, !tbaa !11
  %189 = getelementptr inbounds double, ptr %1, i64 %169
  %190 = load double, ptr %189, align 8, !tbaa !11
  %191 = fadd double %188, %190
  %192 = fadd double %178, %183
  %193 = fsub double %188, %190
  %194 = fneg double %85
  %195 = fneg double %69
  %196 = load <2 x double>, ptr %170, align 8, !tbaa !11
  %197 = insertelement <2 x double> poison, double %174, i64 0
  %198 = insertelement <2 x double> %197, double %176, i64 1
  %199 = fsub <2 x double> %196, %198
  %200 = fadd <2 x double> %196, %198
  %201 = shufflevector <2 x double> %199, <2 x double> %200, <2 x i32> <i32 0, i32 3>
  %202 = extractelement <2 x double> %196, i64 0
  %203 = fadd double %202, %174
  %204 = extractelement <2 x double> %196, i64 1
  %205 = fsub double %204, %176
  %206 = shufflevector <2 x double> %201, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %207 = insertelement <2 x double> poison, double %194, i64 0
  %208 = insertelement <2 x double> %207, double %85, i64 1
  %209 = fmul <2 x double> %206, %208
  %210 = insertelement <2 x double> poison, double %82, i64 0
  %211 = shufflevector <2 x double> %210, <2 x double> poison, <2 x i32> zeroinitializer
  %212 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %211, <2 x double> %201, <2 x double> %209)
  %213 = insertelement <2 x double> poison, double %191, i64 0
  %214 = insertelement <2 x double> %213, double %184, i64 1
  %215 = insertelement <2 x double> poison, double %195, i64 0
  %216 = insertelement <2 x double> %215, double %69, i64 1
  %217 = fmul <2 x double> %214, %216
  %218 = insertelement <2 x double> poison, double %72, i64 0
  %219 = shufflevector <2 x double> %218, <2 x double> poison, <2 x i32> zeroinitializer
  %220 = shufflevector <2 x double> %214, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %221 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %219, <2 x double> %220, <2 x double> %217)
  %222 = fadd <2 x double> %212, %221
  store <2 x double> %222, ptr %170, align 8, !tbaa !11
  %223 = fsub <2 x double> %212, %221
  %224 = extractelement <2 x double> %223, i64 0
  store double %224, ptr %177, align 8, !tbaa !11
  %225 = fsub <2 x double> %212, %221
  %226 = extractelement <2 x double> %225, i64 1
  store double %226, ptr %187, align 8, !tbaa !11
  %227 = fmul double %205, %92
  %228 = tail call double @llvm.fmuladd.f64(double %88, double %203, double %227)
  %229 = fmul double %91, %203
  %230 = tail call double @llvm.fmuladd.f64(double %88, double %205, double %229)
  %231 = fmul double %75, %193
  %232 = tail call double @llvm.fmuladd.f64(double %79, double %192, double %231)
  %233 = fneg double %75
  %234 = fmul double %192, %233
  %235 = tail call double @llvm.fmuladd.f64(double %79, double %193, double %234)
  %236 = fadd double %228, %232
  store double %236, ptr %175, align 8, !tbaa !11
  %237 = fadd double %230, %235
  store double %237, ptr %173, align 8, !tbaa !11
  %238 = fsub double %228, %232
  store double %238, ptr %189, align 8, !tbaa !11
  %239 = fsub double %230, %235
  store double %239, ptr %182, align 8, !tbaa !11
  %240 = add nuw nsw i64 %65, 2
  %241 = icmp slt i64 %240, %59
  br i1 %241, label %62, label %242, !llvm.loop !30

242:                                              ; preds = %62, %3
  %243 = getelementptr inbounds double, ptr %2, i64 %24
  %244 = load double, ptr %243, align 8, !tbaa !11
  %245 = getelementptr inbounds double, ptr %2, i64 %33
  %246 = load double, ptr %245, align 8, !tbaa !11
  %247 = mul nsw i32 %4, 3
  %248 = mul nsw i32 %4, 5
  %249 = mul nsw i32 %4, 7
  %250 = getelementptr inbounds double, ptr %1, i64 %59
  %251 = sext i32 %248 to i64
  %252 = getelementptr inbounds double, ptr %1, i64 %251
  %253 = sext i32 %247 to i64
  %254 = getelementptr inbounds double, ptr %1, i64 %253
  %255 = sext i32 %249 to i64
  %256 = getelementptr inbounds double, ptr %1, i64 %255
  %257 = fneg double %246
  %258 = fneg double %244
  %259 = load <2 x double>, ptr %250, align 8, !tbaa !11
  %260 = load <2 x double>, ptr %252, align 8, !tbaa !11
  %261 = shufflevector <2 x double> %260, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %262 = fadd <2 x double> %259, %261
  %263 = fsub <2 x double> %259, %261
  %264 = shufflevector <2 x double> %262, <2 x double> %263, <2 x i32> <i32 0, i32 3>
  %265 = load <2 x double>, ptr %254, align 8, !tbaa !11
  %266 = load <2 x double>, ptr %256, align 8, !tbaa !11
  %267 = shufflevector <2 x double> %266, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %268 = fadd <2 x double> %265, %267
  %269 = fsub <2 x double> %265, %267
  %270 = shufflevector <2 x double> %268, <2 x double> %269, <2 x i32> <i32 0, i32 3>
  %271 = shufflevector <2 x double> %263, <2 x double> %262, <2 x i32> <i32 0, i32 3>
  %272 = shufflevector <2 x double> %269, <2 x double> %268, <2 x i32> <i32 0, i32 3>
  %273 = shufflevector <2 x double> %271, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %274 = insertelement <2 x double> poison, double %257, i64 0
  %275 = insertelement <2 x double> %274, double %246, i64 1
  %276 = fmul <2 x double> %273, %275
  %277 = insertelement <2 x double> poison, double %244, i64 0
  %278 = shufflevector <2 x double> %277, <2 x double> poison, <2 x i32> zeroinitializer
  %279 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %278, <2 x double> %271, <2 x double> %276)
  %280 = shufflevector <2 x double> %272, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %281 = insertelement <2 x double> %278, double %258, i64 0
  %282 = fmul <2 x double> %280, %281
  %283 = shufflevector <2 x double> %275, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %284 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %283, <2 x double> %272, <2 x double> %282)
  %285 = fadd <2 x double> %279, %284
  store <2 x double> %285, ptr %250, align 8, !tbaa !11
  %286 = fsub <2 x double> %279, %284
  store <2 x double> %286, ptr %254, align 8, !tbaa !11
  %287 = shufflevector <2 x double> %264, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %288 = insertelement <2 x double> poison, double %258, i64 0
  %289 = insertelement <2 x double> %288, double %244, i64 1
  %290 = fmul <2 x double> %287, %289
  %291 = insertelement <2 x double> poison, double %246, i64 0
  %292 = shufflevector <2 x double> %291, <2 x double> poison, <2 x i32> zeroinitializer
  %293 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %292, <2 x double> %264, <2 x double> %290)
  %294 = shufflevector <2 x double> %270, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %295 = insertelement <2 x double> %292, double %257, i64 0
  %296 = fmul <2 x double> %294, %295
  %297 = shufflevector <2 x double> %289, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %298 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %297, <2 x double> %270, <2 x double> %296)
  %299 = fsub <2 x double> %293, %298
  store <2 x double> %299, ptr %252, align 8, !tbaa !11
  %300 = fadd <2 x double> %293, %298
  store <2 x double> %300, ptr %256, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @cftfx42(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #3 {
  %5 = icmp eq i32 %0, 128
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = add nsw i32 %2, -8
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds double, ptr %3, i64 %8
  tail call void @cftf161(ptr noundef %1, ptr noundef %9) #20
  %10 = getelementptr inbounds double, ptr %1, i64 32
  %11 = add nsw i32 %2, -32
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds double, ptr %3, i64 %12
  tail call void @cftf162(ptr noundef nonnull %10, ptr noundef %13) #20
  %14 = getelementptr inbounds double, ptr %1, i64 64
  tail call void @cftf161(ptr noundef nonnull %14, ptr noundef %9) #20
  %15 = getelementptr inbounds double, ptr %1, i64 96
  tail call void @cftf162(ptr noundef nonnull %15, ptr noundef %13) #20
  br label %23

16:                                               ; preds = %4
  %17 = add nsw i32 %2, -16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double, ptr %3, i64 %18
  tail call void @cftf081(ptr noundef %1, ptr noundef %19) #20
  %20 = getelementptr inbounds double, ptr %1, i64 16
  tail call void @cftf082(ptr noundef nonnull %20, ptr noundef %19) #20
  %21 = getelementptr inbounds double, ptr %1, i64 32
  tail call void @cftf081(ptr noundef nonnull %21, ptr noundef %19) #20
  %22 = getelementptr inbounds double, ptr %1, i64 48
  tail call void @cftf082(ptr noundef nonnull %22, ptr noundef %19) #20
  br label %23

23:                                               ; preds = %16, %6
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @cftexp2(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = ashr i32 %0, 1
  %6 = ashr i32 %0, 2
  %7 = icmp sgt i32 %0, 515
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = sext i32 %5 to i64
  br label %10

10:                                               ; preds = %70, %8
  %11 = phi i32 [ %71, %70 ], [ %6, %8 ]
  %12 = icmp slt i32 %11, %5
  br i1 %12, label %13, label %70

13:                                               ; preds = %10
  %14 = lshr i32 %11, 1
  %15 = sub nsw i32 %2, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, ptr %3, i64 %16
  %18 = sub nsw i32 %2, %11
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, ptr %3, i64 %19
  %21 = sub nsw i32 0, %11
  %22 = sext i32 %21 to i64
  %23 = add nsw i32 %11, %5
  br label %39

24:                                               ; preds = %70, %4
  %25 = phi i32 [ %6, %4 ], [ %71, %70 ]
  %26 = icmp slt i32 %25, %5
  br i1 %26, label %27, label %104

27:                                               ; preds = %24
  %28 = ashr i32 %25, 1
  %29 = sub nsw i32 %2, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, ptr %3, i64 %30
  %32 = sub nsw i32 %2, %25
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, ptr %3, i64 %33
  %35 = sub nsw i32 0, %25
  %36 = sext i32 %35 to i64
  %37 = sext i32 %5 to i64
  %38 = add nsw i32 %25, %5
  br label %73

39:                                               ; preds = %68, %13
  %40 = phi i32 [ %11, %13 ], [ %57, %68 ]
  %41 = icmp slt i32 %40, %23
  %42 = shl i32 %40, 1
  br i1 %41, label %43, label %54

43:                                               ; preds = %39
  %44 = sext i32 %40 to i64
  %45 = add nsw i64 %22, %44
  %46 = sext i32 %42 to i64
  br label %47

47:                                               ; preds = %47, %43
  %48 = phi i64 [ %45, %43 ], [ %52, %47 ]
  %49 = getelementptr inbounds double, ptr %1, i64 %48
  tail call void @cftmdl1(i32 noundef %11, ptr noundef %49, ptr noundef %17) #20
  %50 = add nsw i64 %48, %9
  %51 = getelementptr inbounds double, ptr %1, i64 %50
  tail call void @cftmdl1(i32 noundef %11, ptr noundef %51, ptr noundef %17) #20
  %52 = add i64 %48, %46
  %53 = icmp slt i64 %52, %9
  br i1 %53, label %47, label %54, !llvm.loop !31

54:                                               ; preds = %47, %39
  %55 = sub nsw i32 %42, %11
  %56 = icmp slt i32 %55, %5
  %57 = shl i32 %40, 2
  br i1 %56, label %58, label %68

58:                                               ; preds = %54
  %59 = sext i32 %55 to i64
  %60 = sext i32 %57 to i64
  br label %61

61:                                               ; preds = %61, %58
  %62 = phi i64 [ %59, %58 ], [ %66, %61 ]
  %63 = getelementptr inbounds double, ptr %1, i64 %62
  tail call void @cftmdl2(i32 noundef %11, ptr noundef %63, ptr noundef %20) #20
  %64 = add nsw i64 %62, %9
  %65 = getelementptr inbounds double, ptr %1, i64 %64
  tail call void @cftmdl2(i32 noundef %11, ptr noundef %65, ptr noundef %20) #20
  %66 = add i64 %62, %60
  %67 = icmp slt i64 %66, %9
  br i1 %67, label %61, label %68, !llvm.loop !32

68:                                               ; preds = %61, %54
  %69 = icmp slt i32 %57, %5
  br i1 %69, label %39, label %70, !llvm.loop !33

70:                                               ; preds = %68, %10
  %71 = lshr i32 %11, 2
  %72 = icmp ugt i32 %11, 515
  br i1 %72, label %10, label %24, !llvm.loop !34

73:                                               ; preds = %102, %27
  %74 = phi i32 [ %25, %27 ], [ %91, %102 ]
  %75 = icmp slt i32 %74, %38
  %76 = shl i32 %74, 1
  br i1 %75, label %77, label %88

77:                                               ; preds = %73
  %78 = sext i32 %74 to i64
  %79 = add nsw i64 %36, %78
  %80 = sext i32 %76 to i64
  br label %81

81:                                               ; preds = %81, %77
  %82 = phi i64 [ %79, %77 ], [ %86, %81 ]
  %83 = getelementptr inbounds double, ptr %1, i64 %82
  tail call void @cftmdl1(i32 noundef %25, ptr noundef %83, ptr noundef %31) #20
  tail call void @cftfx41(i32 noundef %25, ptr noundef %83, i32 noundef %2, ptr noundef %3) #20
  %84 = add nsw i64 %82, %37
  %85 = getelementptr inbounds double, ptr %1, i64 %84
  tail call void @cftmdl1(i32 noundef %25, ptr noundef %85, ptr noundef %31) #20
  tail call void @cftfx41(i32 noundef %25, ptr noundef %85, i32 noundef %2, ptr noundef %3) #20
  %86 = add i64 %82, %80
  %87 = icmp slt i64 %86, %37
  br i1 %87, label %81, label %88, !llvm.loop !35

88:                                               ; preds = %81, %73
  %89 = sub nsw i32 %76, %25
  %90 = icmp slt i32 %89, %5
  %91 = shl i32 %74, 2
  br i1 %90, label %92, label %102

92:                                               ; preds = %88
  %93 = sext i32 %89 to i64
  %94 = sext i32 %91 to i64
  br label %95

95:                                               ; preds = %95, %92
  %96 = phi i64 [ %93, %92 ], [ %100, %95 ]
  %97 = getelementptr inbounds double, ptr %1, i64 %96
  tail call void @cftmdl2(i32 noundef %25, ptr noundef %97, ptr noundef %34) #20
  tail call void @cftfx42(i32 noundef %25, ptr noundef %97, i32 noundef %2, ptr noundef %3) #20
  %98 = add nsw i64 %96, %37
  %99 = getelementptr inbounds double, ptr %1, i64 %98
  tail call void @cftmdl2(i32 noundef %25, ptr noundef %99, ptr noundef %34) #20
  tail call void @cftfx42(i32 noundef %25, ptr noundef %99, i32 noundef %2, ptr noundef %3) #20
  %100 = add i64 %96, %94
  %101 = icmp slt i64 %100, %37
  br i1 %101, label %95, label %102, !llvm.loop !36

102:                                              ; preds = %95, %88
  %103 = icmp slt i32 %91, %5
  br i1 %103, label %73, label %104, !llvm.loop !37

104:                                              ; preds = %102, %24
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @cftbsub(i32 noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #2 {
  %6 = icmp sgt i32 %0, 32
  br i1 %6, label %7, label %27

7:                                                ; preds = %5
  %8 = lshr i32 %0, 2
  %9 = sub nsw i32 %3, %8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds double, ptr %4, i64 %10
  tail call void @cftb1st(i32 noundef %0, ptr noundef %1, ptr noundef %11) #20
  %12 = icmp ugt i32 %0, 512
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  tail call void @cftrec1(i32 noundef %8, ptr noundef %1, i32 noundef %3, ptr noundef %4) #20
  %14 = zext i32 %8 to i64
  %15 = getelementptr inbounds double, ptr %1, i64 %14
  tail call void @cftrec2(i32 noundef %8, ptr noundef %15, i32 noundef %3, ptr noundef %4) #20
  %16 = shl nuw nsw i32 %8, 1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds double, ptr %1, i64 %17
  tail call void @cftrec1(i32 noundef %8, ptr noundef %18, i32 noundef %3, ptr noundef %4) #20
  %19 = mul nuw nsw i32 %8, 3
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds double, ptr %1, i64 %20
  tail call void @cftrec1(i32 noundef %8, ptr noundef %21, i32 noundef %3, ptr noundef %4) #20
  br label %26

22:                                               ; preds = %7
  %23 = icmp ugt i32 %0, 131
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void @cftexp1(i32 noundef %0, ptr noundef %1, i32 noundef %3, ptr noundef %4) #20
  br label %26

25:                                               ; preds = %22
  tail call void @cftfx41(i32 noundef %0, ptr noundef %1, i32 noundef %3, ptr noundef %4) #20
  br label %26

26:                                               ; preds = %25, %24, %13
  tail call void @bitrv2conj(i32 noundef %0, ptr noundef %2, ptr noundef %1) #20
  br label %44

27:                                               ; preds = %5
  %28 = icmp sgt i32 %0, 8
  br i1 %28, label %29, label %36

29:                                               ; preds = %27
  %30 = icmp eq i32 %0, 32
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = add nsw i32 %3, -8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, ptr %4, i64 %33
  tail call void @cftf161(ptr noundef %1, ptr noundef %34) #20
  tail call void @bitrv216neg(ptr noundef %1) #20
  br label %44

35:                                               ; preds = %29
  tail call void @cftf081(ptr noundef %1, ptr noundef %4) #20
  tail call void @bitrv208neg(ptr noundef %1) #20
  br label %44

36:                                               ; preds = %27
  switch i32 %0, label %44 [
    i32 8, label %37
    i32 4, label %38
  ]

37:                                               ; preds = %36
  tail call void @cftb040(ptr noundef %1) #20
  br label %44

38:                                               ; preds = %36
  %39 = getelementptr inbounds double, ptr %1, i64 2
  %40 = load <2 x double>, ptr %1, align 8, !tbaa !11
  %41 = load <2 x double>, ptr %39, align 8, !tbaa !11
  %42 = fadd <2 x double> %40, %41
  store <2 x double> %42, ptr %1, align 8, !tbaa !11
  %43 = fsub <2 x double> %40, %41
  store <2 x double> %43, ptr %39, align 8, !tbaa !11
  br label %44

44:                                               ; preds = %38, %37, %36, %35, %31, %26
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @cftb1st(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = ashr i32 %0, 3
  %5 = shl nsw i32 %4, 1
  %6 = shl nsw i32 %4, 2
  %7 = mul nsw i32 %4, 6
  %8 = load double, ptr %1, align 8, !tbaa !11
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds double, ptr %1, i64 %9
  %11 = getelementptr inbounds double, ptr %1, i64 1
  %12 = load double, ptr %11, align 8, !tbaa !11
  %13 = fneg double %12
  %14 = sext i32 %5 to i64
  %15 = getelementptr inbounds double, ptr %1, i64 %14
  %16 = sext i32 %7 to i64
  %17 = getelementptr inbounds double, ptr %1, i64 %16
  %18 = insertelement <2 x double> poison, double %12, i64 0
  %19 = load <2 x double>, ptr %15, align 8, !tbaa !11
  %20 = load <2 x double>, ptr %17, align 8, !tbaa !11
  %21 = fsub <2 x double> %19, %20
  %22 = load <2 x double>, ptr %10, align 8, !tbaa !11
  %23 = insertelement <2 x double> poison, double %8, i64 0
  %24 = insertelement <2 x double> %23, double %13, i64 1
  %25 = fadd <2 x double> %24, %22
  %26 = fsub <2 x double> %24, %22
  %27 = shufflevector <2 x double> %25, <2 x double> %26, <2 x i32> <i32 0, i32 3>
  %28 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %29 = insertelement <2 x double> %28, double %8, i64 1
  %30 = shufflevector <2 x double> %18, <2 x double> %22, <2 x i32> <i32 0, i32 2>
  %31 = fsub <2 x double> %29, %30
  %32 = fadd <2 x double> %19, %20
  %33 = fadd <2 x double> %27, %32
  %34 = fsub <2 x double> %27, %32
  %35 = shufflevector <2 x double> %33, <2 x double> %34, <2 x i32> <i32 0, i32 3>
  store <2 x double> %35, ptr %1, align 8, !tbaa !11
  %36 = shufflevector <2 x double> %34, <2 x double> %33, <2 x i32> <i32 0, i32 3>
  store <2 x double> %36, ptr %15, align 8, !tbaa !11
  %37 = fadd <2 x double> %31, %21
  %38 = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %38, ptr %10, align 8, !tbaa !11
  %39 = fsub <2 x double> %31, %21
  %40 = shufflevector <2 x double> %39, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %40, ptr %17, align 8, !tbaa !11
  %41 = getelementptr inbounds double, ptr %2, i64 1
  %42 = load double, ptr %41, align 8, !tbaa !11
  %43 = getelementptr inbounds double, ptr %2, i64 2
  %44 = load double, ptr %43, align 8, !tbaa !11
  %45 = getelementptr inbounds double, ptr %2, i64 3
  %46 = load double, ptr %45, align 8, !tbaa !11
  %47 = add nsw i32 %4, -2
  %48 = icmp sgt i32 %0, 39
  %49 = sext i32 %47 to i64
  br i1 %48, label %50, label %303

50:                                               ; preds = %3
  %51 = shl nsw i32 %4, 2
  br label %52

52:                                               ; preds = %52, %50
  %53 = phi i64 [ 0, %50 ], [ %59, %52 ]
  %54 = phi i64 [ 2, %50 ], [ %301, %52 ]
  %55 = phi double [ 0.000000e+00, %50 ], [ %80, %52 ]
  %56 = phi double [ 1.000000e+00, %50 ], [ %61, %52 ]
  %57 = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %50 ], [ %66, %52 ]
  %58 = trunc i64 %54 to i32
  %59 = add nuw nsw i64 %53, 4
  %60 = getelementptr inbounds double, ptr %2, i64 %59
  %61 = load double, ptr %60, align 8, !tbaa !11
  %62 = fadd double %56, %61
  %63 = fmul double %44, %62
  %64 = add nuw nsw i64 %53, 5
  %65 = getelementptr inbounds double, ptr %2, i64 %64
  %66 = load <2 x double>, ptr %65, align 8, !tbaa !11
  %67 = extractelement <2 x double> %66, i64 0
  %68 = fadd <2 x double> %57, %66
  %69 = extractelement <2 x double> %68, i64 0
  %70 = fmul double %44, %69
  %71 = extractelement <2 x double> %66, i64 1
  %72 = fadd <2 x double> %57, %66
  %73 = extractelement <2 x double> %72, i64 1
  %74 = fmul double %46, %73
  %75 = add nuw nsw i64 %53, 7
  %76 = getelementptr inbounds double, ptr %2, i64 %75
  %77 = load double, ptr %76, align 8, !tbaa !11
  %78 = fsub double %55, %77
  %79 = fmul double %46, %78
  %80 = fneg double %77
  %81 = add nsw i64 %54, %14
  %82 = add nsw i64 %81, %14
  %83 = add i32 %51, %58
  %84 = add nsw i64 %82, %14
  %85 = add nsw i32 %83, %5
  %86 = getelementptr inbounds double, ptr %1, i64 %54
  %87 = load double, ptr %86, align 8, !tbaa !11
  %88 = getelementptr inbounds double, ptr %1, i64 %82
  %89 = load double, ptr %88, align 8, !tbaa !11
  %90 = fadd double %87, %89
  %91 = or i64 %54, 1
  %92 = getelementptr inbounds double, ptr %1, i64 %91
  %93 = load double, ptr %92, align 8, !tbaa !11
  %94 = fneg double %93
  %95 = or i32 %83, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, ptr %1, i64 %96
  %98 = load double, ptr %97, align 8, !tbaa !11
  %99 = fsub double %94, %98
  %100 = fsub double %87, %89
  %101 = fsub double %98, %93
  %102 = add nuw nsw i64 %54, 2
  %103 = getelementptr inbounds double, ptr %1, i64 %102
  %104 = load double, ptr %103, align 8, !tbaa !11
  %105 = add nsw i64 %82, 2
  %106 = getelementptr inbounds double, ptr %1, i64 %105
  %107 = load double, ptr %106, align 8, !tbaa !11
  %108 = fadd double %104, %107
  %109 = add nuw nsw i64 %54, 3
  %110 = getelementptr inbounds double, ptr %1, i64 %109
  %111 = load double, ptr %110, align 8, !tbaa !11
  %112 = fneg double %111
  %113 = add nsw i64 %82, 3
  %114 = getelementptr inbounds double, ptr %1, i64 %113
  %115 = load double, ptr %114, align 8, !tbaa !11
  %116 = fsub double %112, %115
  %117 = getelementptr inbounds double, ptr %1, i64 %81
  %118 = load double, ptr %117, align 8, !tbaa !11
  %119 = getelementptr inbounds double, ptr %1, i64 %84
  %120 = load double, ptr %119, align 8, !tbaa !11
  %121 = fadd double %118, %120
  %122 = or i64 %81, 1
  %123 = getelementptr inbounds double, ptr %1, i64 %122
  %124 = load double, ptr %123, align 8, !tbaa !11
  %125 = or i32 %85, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds double, ptr %1, i64 %126
  %128 = load double, ptr %127, align 8, !tbaa !11
  %129 = fadd double %124, %128
  %130 = fsub double %118, %120
  %131 = fsub double %124, %128
  %132 = add nsw i64 %81, 2
  %133 = getelementptr inbounds double, ptr %1, i64 %132
  %134 = add nsw i64 %84, 2
  %135 = getelementptr inbounds double, ptr %1, i64 %134
  %136 = add nsw i64 %81, 3
  %137 = getelementptr inbounds double, ptr %1, i64 %136
  %138 = fadd double %90, %121
  %139 = fsub double %99, %129
  %140 = fsub double %90, %121
  %141 = fadd double %99, %129
  %142 = fadd double %100, %131
  %143 = fadd double %101, %130
  %144 = fneg double %70
  %145 = fmul double %143, %144
  %146 = tail call double @llvm.fmuladd.f64(double %63, double %142, double %145)
  %147 = fmul double %70, %142
  %148 = tail call double @llvm.fmuladd.f64(double %63, double %143, double %147)
  %149 = fneg double %67
  %150 = fsub double %100, %131
  %151 = fsub double %101, %130
  %152 = fmul double %79, %151
  %153 = tail call double @llvm.fmuladd.f64(double %74, double %150, double %152)
  %154 = fneg double %79
  %155 = fmul double %150, %154
  %156 = tail call double @llvm.fmuladd.f64(double %74, double %151, double %155)
  %157 = insertelement <2 x double> poison, double %115, i64 0
  %158 = insertelement <2 x double> %157, double %104, i64 1
  %159 = insertelement <2 x double> poison, double %111, i64 0
  %160 = insertelement <2 x double> %159, double %107, i64 1
  %161 = fsub <2 x double> %158, %160
  %162 = load <2 x double>, ptr %133, align 8, !tbaa !11
  %163 = load <2 x double>, ptr %135, align 8, !tbaa !11
  %164 = fadd <2 x double> %162, %163
  %165 = extractelement <2 x double> %164, i64 0
  %166 = fadd <2 x double> %162, %163
  %167 = extractelement <2 x double> %166, i64 1
  %168 = fsub <2 x double> %162, %163
  store double %138, ptr %86, align 8, !tbaa !11
  store double %139, ptr %92, align 8, !tbaa !11
  %169 = fadd double %108, %165
  store double %169, ptr %103, align 8, !tbaa !11
  %170 = fsub double %116, %167
  store double %170, ptr %110, align 8, !tbaa !11
  store double %140, ptr %117, align 8, !tbaa !11
  store double %141, ptr %123, align 8, !tbaa !11
  %171 = fsub double %108, %165
  store double %171, ptr %133, align 8, !tbaa !11
  %172 = fadd double %116, %167
  store double %172, ptr %137, align 8, !tbaa !11
  store double %146, ptr %88, align 8, !tbaa !11
  store double %148, ptr %97, align 8, !tbaa !11
  %173 = fadd <2 x double> %161, %168
  %174 = shufflevector <2 x double> %173, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %175 = insertelement <2 x double> %66, double %149, i64 1
  %176 = fmul <2 x double> %174, %175
  %177 = insertelement <2 x double> poison, double %61, i64 0
  %178 = shufflevector <2 x double> %177, <2 x double> poison, <2 x i32> zeroinitializer
  %179 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %178, <2 x double> %173, <2 x double> %176)
  %180 = shufflevector <2 x double> %179, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %180, ptr %106, align 8, !tbaa !11
  store double %153, ptr %119, align 8, !tbaa !11
  store double %156, ptr %127, align 8, !tbaa !11
  %181 = fsub <2 x double> %161, %168
  %182 = shufflevector <2 x double> %181, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %183 = insertelement <2 x double> poison, double %77, i64 0
  %184 = insertelement <2 x double> %183, double %80, i64 1
  %185 = fmul <2 x double> %182, %184
  %186 = shufflevector <2 x double> %66, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %187 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %186, <2 x double> %181, <2 x double> %185)
  %188 = shufflevector <2 x double> %187, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %188, ptr %135, align 8, !tbaa !11
  %189 = sub nsw i64 %14, %54
  %190 = sub nsw i32 %5, %58
  %191 = add nsw i64 %189, %14
  %192 = add nsw i32 %190, %5
  %193 = add nsw i64 %191, %14
  %194 = add nsw i32 %192, %5
  %195 = add nsw i64 %193, %14
  %196 = getelementptr inbounds double, ptr %1, i64 %189
  %197 = load double, ptr %196, align 8, !tbaa !11
  %198 = getelementptr inbounds double, ptr %1, i64 %193
  %199 = load double, ptr %198, align 8, !tbaa !11
  %200 = fadd double %197, %199
  %201 = or i64 %189, 1
  %202 = getelementptr inbounds double, ptr %1, i64 %201
  %203 = load double, ptr %202, align 8, !tbaa !11
  %204 = fneg double %203
  %205 = or i32 %194, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds double, ptr %1, i64 %206
  %208 = load double, ptr %207, align 8, !tbaa !11
  %209 = fsub double %204, %208
  %210 = fsub double %197, %199
  %211 = fsub double %208, %203
  %212 = add nsw i64 %189, -2
  %213 = getelementptr inbounds double, ptr %1, i64 %212
  %214 = load double, ptr %213, align 8, !tbaa !11
  %215 = add nsw i64 %193, -2
  %216 = getelementptr inbounds double, ptr %1, i64 %215
  %217 = load double, ptr %216, align 8, !tbaa !11
  %218 = fadd double %214, %217
  %219 = add nsw i64 %189, -1
  %220 = getelementptr inbounds double, ptr %1, i64 %219
  %221 = load double, ptr %220, align 8, !tbaa !11
  %222 = fneg double %221
  %223 = add nsw i64 %193, -1
  %224 = getelementptr inbounds double, ptr %1, i64 %223
  %225 = load double, ptr %224, align 8, !tbaa !11
  %226 = fsub double %222, %225
  %227 = getelementptr inbounds double, ptr %1, i64 %191
  %228 = load double, ptr %227, align 8, !tbaa !11
  %229 = getelementptr inbounds double, ptr %1, i64 %195
  %230 = load double, ptr %229, align 8, !tbaa !11
  %231 = fadd double %228, %230
  %232 = or i32 %192, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds double, ptr %1, i64 %233
  %235 = load double, ptr %234, align 8, !tbaa !11
  %236 = shl i64 %195, 32
  %237 = ashr exact i64 %236, 32
  %238 = or i64 %237, 1
  %239 = getelementptr inbounds double, ptr %1, i64 %238
  %240 = load double, ptr %239, align 8, !tbaa !11
  %241 = fadd double %235, %240
  %242 = fsub double %228, %230
  %243 = fsub double %235, %240
  %244 = add nsw i64 %191, -2
  %245 = getelementptr inbounds double, ptr %1, i64 %244
  %246 = add nsw i64 %195, -2
  %247 = getelementptr inbounds double, ptr %1, i64 %246
  %248 = add nsw i64 %191, -1
  %249 = getelementptr inbounds double, ptr %1, i64 %248
  %250 = fadd double %200, %231
  %251 = fsub double %209, %241
  %252 = fsub double %200, %231
  %253 = fadd double %209, %241
  %254 = fadd double %210, %243
  %255 = fadd double %211, %242
  %256 = fneg double %63
  %257 = fmul double %255, %256
  %258 = tail call double @llvm.fmuladd.f64(double %70, double %254, double %257)
  %259 = fmul double %63, %254
  %260 = tail call double @llvm.fmuladd.f64(double %70, double %255, double %259)
  %261 = fneg double %61
  %262 = fsub double %210, %243
  %263 = fsub double %211, %242
  %264 = fmul double %74, %263
  %265 = tail call double @llvm.fmuladd.f64(double %79, double %262, double %264)
  %266 = fneg double %74
  %267 = fmul double %262, %266
  %268 = tail call double @llvm.fmuladd.f64(double %79, double %263, double %267)
  %269 = fneg double %71
  %270 = insertelement <2 x double> poison, double %225, i64 0
  %271 = insertelement <2 x double> %270, double %214, i64 1
  %272 = insertelement <2 x double> poison, double %221, i64 0
  %273 = insertelement <2 x double> %272, double %217, i64 1
  %274 = fsub <2 x double> %271, %273
  %275 = load <2 x double>, ptr %245, align 8, !tbaa !11
  %276 = load <2 x double>, ptr %247, align 8, !tbaa !11
  %277 = fadd <2 x double> %275, %276
  %278 = extractelement <2 x double> %277, i64 0
  %279 = fadd <2 x double> %275, %276
  %280 = extractelement <2 x double> %279, i64 1
  %281 = fsub <2 x double> %275, %276
  store double %250, ptr %196, align 8, !tbaa !11
  store double %251, ptr %202, align 8, !tbaa !11
  %282 = fadd double %218, %278
  store double %282, ptr %213, align 8, !tbaa !11
  %283 = fsub double %226, %280
  store double %283, ptr %220, align 8, !tbaa !11
  store double %252, ptr %227, align 8, !tbaa !11
  store double %253, ptr %234, align 8, !tbaa !11
  %284 = fsub double %218, %278
  store double %284, ptr %245, align 8, !tbaa !11
  %285 = fadd double %226, %280
  store double %285, ptr %249, align 8, !tbaa !11
  store double %258, ptr %198, align 8, !tbaa !11
  store double %260, ptr %207, align 8, !tbaa !11
  %286 = fadd <2 x double> %274, %281
  %287 = shufflevector <2 x double> %286, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %288 = insertelement <2 x double> %177, double %261, i64 1
  %289 = fmul <2 x double> %287, %288
  %290 = shufflevector <2 x double> %66, <2 x double> poison, <2 x i32> zeroinitializer
  %291 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %290, <2 x double> %286, <2 x double> %289)
  %292 = shufflevector <2 x double> %291, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %292, ptr %216, align 8, !tbaa !11
  store double %265, ptr %229, align 8, !tbaa !11
  store double %268, ptr %239, align 8, !tbaa !11
  %293 = fsub <2 x double> %274, %281
  %294 = insertelement <2 x double> %66, double %269, i64 0
  %295 = shufflevector <2 x double> %293, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %296 = fmul <2 x double> %294, %295
  %297 = insertelement <2 x double> poison, double %80, i64 0
  %298 = shufflevector <2 x double> %297, <2 x double> poison, <2 x i32> zeroinitializer
  %299 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %298, <2 x double> %293, <2 x double> %296)
  %300 = shufflevector <2 x double> %299, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %300, ptr %247, align 8, !tbaa !11
  %301 = add nuw nsw i64 %54, 4
  %302 = icmp slt i64 %301, %49
  br i1 %302, label %52, label %303, !llvm.loop !38

303:                                              ; preds = %52, %3
  %304 = phi double [ 1.000000e+00, %3 ], [ %61, %52 ]
  %305 = phi double [ 0.000000e+00, %3 ], [ %67, %52 ]
  %306 = phi double [ 1.000000e+00, %3 ], [ %71, %52 ]
  %307 = phi double [ 0.000000e+00, %3 ], [ %80, %52 ]
  %308 = fadd double %42, %304
  %309 = fmul double %44, %308
  %310 = fadd double %42, %305
  %311 = fmul double %44, %310
  %312 = fsub double %306, %42
  %313 = fmul double %46, %312
  %314 = fsub double %307, %42
  %315 = fmul double %46, %314
  %316 = mul nsw i32 %4, 3
  %317 = mul nsw i32 %4, 5
  %318 = mul nsw i32 %4, 7
  %319 = getelementptr inbounds double, ptr %1, i64 %49
  %320 = load double, ptr %319, align 8, !tbaa !11
  %321 = add nsw i32 %317, -2
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds double, ptr %1, i64 %322
  %324 = load double, ptr %323, align 8, !tbaa !11
  %325 = fadd double %320, %324
  %326 = add nsw i32 %4, -1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds double, ptr %1, i64 %327
  %329 = load double, ptr %328, align 8, !tbaa !11
  %330 = fneg double %329
  %331 = add nsw i32 %317, -1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds double, ptr %1, i64 %332
  %334 = load double, ptr %333, align 8, !tbaa !11
  %335 = fsub double %330, %334
  %336 = add nsw i32 %316, -2
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds double, ptr %1, i64 %337
  %339 = add nsw i32 %318, -2
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds double, ptr %1, i64 %340
  %342 = add nsw i32 %316, -1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds double, ptr %1, i64 %343
  %345 = fneg double %311
  %346 = fneg double %315
  %347 = insertelement <2 x double> poison, double %334, i64 0
  %348 = insertelement <2 x double> %347, double %320, i64 1
  %349 = insertelement <2 x double> poison, double %329, i64 0
  %350 = insertelement <2 x double> %349, double %324, i64 1
  %351 = fsub <2 x double> %348, %350
  %352 = load <2 x double>, ptr %338, align 8, !tbaa !11
  %353 = load <2 x double>, ptr %341, align 8, !tbaa !11
  %354 = fadd <2 x double> %352, %353
  %355 = extractelement <2 x double> %354, i64 0
  %356 = fadd <2 x double> %352, %353
  %357 = extractelement <2 x double> %356, i64 1
  %358 = fsub <2 x double> %352, %353
  %359 = fadd double %325, %355
  store double %359, ptr %319, align 8, !tbaa !11
  %360 = fsub double %335, %357
  store double %360, ptr %328, align 8, !tbaa !11
  %361 = fsub double %325, %355
  store double %361, ptr %338, align 8, !tbaa !11
  %362 = fadd double %335, %357
  store double %362, ptr %344, align 8, !tbaa !11
  %363 = fadd <2 x double> %351, %358
  %364 = shufflevector <2 x double> %363, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %365 = insertelement <2 x double> poison, double %311, i64 0
  %366 = insertelement <2 x double> %365, double %345, i64 1
  %367 = fmul <2 x double> %364, %366
  %368 = insertelement <2 x double> poison, double %309, i64 0
  %369 = shufflevector <2 x double> %368, <2 x double> poison, <2 x i32> zeroinitializer
  %370 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %369, <2 x double> %363, <2 x double> %367)
  %371 = shufflevector <2 x double> %370, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %371, ptr %323, align 8, !tbaa !11
  %372 = fsub <2 x double> %351, %358
  %373 = shufflevector <2 x double> %372, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %374 = insertelement <2 x double> poison, double %346, i64 0
  %375 = insertelement <2 x double> %374, double %315, i64 1
  %376 = fmul <2 x double> %373, %375
  %377 = insertelement <2 x double> poison, double %313, i64 0
  %378 = shufflevector <2 x double> %377, <2 x double> poison, <2 x i32> zeroinitializer
  %379 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %378, <2 x double> %372, <2 x double> %376)
  %380 = shufflevector <2 x double> %379, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %380, ptr %341, align 8, !tbaa !11
  %381 = sext i32 %4 to i64
  %382 = getelementptr inbounds double, ptr %1, i64 %381
  %383 = load double, ptr %382, align 8, !tbaa !11
  %384 = sext i32 %317 to i64
  %385 = getelementptr inbounds double, ptr %1, i64 %384
  %386 = load double, ptr %385, align 8, !tbaa !11
  %387 = fadd double %383, %386
  %388 = add nsw i32 %4, 1
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds double, ptr %1, i64 %389
  %391 = load double, ptr %390, align 8, !tbaa !11
  %392 = fneg double %391
  %393 = add nsw i32 %317, 1
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds double, ptr %1, i64 %394
  %396 = load double, ptr %395, align 8, !tbaa !11
  %397 = fsub double %392, %396
  %398 = fsub double %383, %386
  %399 = fsub double %396, %391
  %400 = sext i32 %316 to i64
  %401 = getelementptr inbounds double, ptr %1, i64 %400
  %402 = load double, ptr %401, align 8, !tbaa !11
  %403 = sext i32 %318 to i64
  %404 = getelementptr inbounds double, ptr %1, i64 %403
  %405 = load double, ptr %404, align 8, !tbaa !11
  %406 = fadd double %402, %405
  %407 = add nsw i32 %316, 1
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds double, ptr %1, i64 %408
  %410 = load double, ptr %409, align 8, !tbaa !11
  %411 = add nsw i32 %318, 1
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds double, ptr %1, i64 %412
  %414 = load double, ptr %413, align 8, !tbaa !11
  %415 = fadd double %410, %414
  %416 = fsub double %402, %405
  %417 = fsub double %410, %414
  %418 = fadd double %387, %406
  store double %418, ptr %382, align 8, !tbaa !11
  %419 = fsub double %397, %415
  store double %419, ptr %390, align 8, !tbaa !11
  %420 = fsub double %387, %406
  store double %420, ptr %401, align 8, !tbaa !11
  %421 = fadd double %397, %415
  store double %421, ptr %409, align 8, !tbaa !11
  %422 = fadd double %398, %417
  %423 = fadd double %399, %416
  %424 = fsub double %422, %423
  %425 = fmul double %42, %424
  store double %425, ptr %385, align 8, !tbaa !11
  %426 = fadd double %423, %422
  %427 = fmul double %42, %426
  store double %427, ptr %395, align 8, !tbaa !11
  %428 = fsub double %398, %417
  %429 = fsub double %399, %416
  %430 = fneg double %42
  %431 = fadd double %429, %428
  %432 = fmul double %431, %430
  store double %432, ptr %404, align 8, !tbaa !11
  %433 = fsub double %429, %428
  %434 = fmul double %433, %430
  store double %434, ptr %413, align 8, !tbaa !11
  %435 = add nsw i32 %4, 2
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds double, ptr %1, i64 %436
  %438 = load double, ptr %437, align 8, !tbaa !11
  %439 = add nsw i32 %317, 2
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds double, ptr %1, i64 %440
  %442 = load double, ptr %441, align 8, !tbaa !11
  %443 = fadd double %438, %442
  %444 = add nsw i32 %4, 3
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds double, ptr %1, i64 %445
  %447 = load double, ptr %446, align 8, !tbaa !11
  %448 = fneg double %447
  %449 = add nsw i32 %317, 3
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds double, ptr %1, i64 %450
  %452 = load double, ptr %451, align 8, !tbaa !11
  %453 = fsub double %448, %452
  %454 = add nsw i32 %316, 2
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds double, ptr %1, i64 %455
  %457 = add nsw i32 %318, 2
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds double, ptr %1, i64 %458
  %460 = add nsw i32 %316, 3
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds double, ptr %1, i64 %461
  %463 = fneg double %309
  %464 = fneg double %313
  %465 = insertelement <2 x double> poison, double %452, i64 0
  %466 = insertelement <2 x double> %465, double %438, i64 1
  %467 = insertelement <2 x double> poison, double %447, i64 0
  %468 = insertelement <2 x double> %467, double %442, i64 1
  %469 = fsub <2 x double> %466, %468
  %470 = load <2 x double>, ptr %456, align 8, !tbaa !11
  %471 = load <2 x double>, ptr %459, align 8, !tbaa !11
  %472 = fadd <2 x double> %470, %471
  %473 = extractelement <2 x double> %472, i64 0
  %474 = fadd <2 x double> %470, %471
  %475 = extractelement <2 x double> %474, i64 1
  %476 = fsub <2 x double> %470, %471
  %477 = fadd double %443, %473
  store double %477, ptr %437, align 8, !tbaa !11
  %478 = fsub double %453, %475
  store double %478, ptr %446, align 8, !tbaa !11
  %479 = fsub double %443, %473
  store double %479, ptr %456, align 8, !tbaa !11
  %480 = fadd double %453, %475
  store double %480, ptr %462, align 8, !tbaa !11
  %481 = fadd <2 x double> %469, %476
  %482 = shufflevector <2 x double> %481, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %483 = insertelement <2 x double> %368, double %463, i64 1
  %484 = fmul <2 x double> %482, %483
  %485 = shufflevector <2 x double> %365, <2 x double> poison, <2 x i32> zeroinitializer
  %486 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %485, <2 x double> %481, <2 x double> %484)
  %487 = shufflevector <2 x double> %486, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %487, ptr %441, align 8, !tbaa !11
  %488 = fsub <2 x double> %469, %476
  %489 = shufflevector <2 x double> %488, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %490 = insertelement <2 x double> poison, double %464, i64 0
  %491 = insertelement <2 x double> %490, double %313, i64 1
  %492 = fmul <2 x double> %489, %491
  %493 = insertelement <2 x double> poison, double %315, i64 0
  %494 = shufflevector <2 x double> %493, <2 x double> poison, <2 x i32> zeroinitializer
  %495 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %494, <2 x double> %488, <2 x double> %492)
  %496 = shufflevector <2 x double> %495, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %496, ptr %459, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @bitrv2conj(i32 noundef %0, ptr nocapture noundef %1, ptr noundef %2) #4 {
  store i32 0, ptr %1, align 4, !tbaa !7
  %4 = icmp sgt i32 %0, 8
  br i1 %4, label %5, label %29

5:                                                ; preds = %22, %3
  %6 = phi i32 [ %23, %22 ], [ 1, %3 ]
  %7 = phi i32 [ %8, %22 ], [ %0, %3 ]
  %8 = ashr i32 %7, 1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %5
  %11 = zext i32 %6 to i64
  %12 = zext i32 %6 to i64
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i64 [ 0, %10 ], [ %20, %13 ]
  %15 = getelementptr inbounds i32, ptr %1, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !7
  %17 = add nsw i32 %16, %8
  %18 = add nuw nsw i64 %14, %11
  %19 = getelementptr inbounds i32, ptr %1, i64 %18
  store i32 %17, ptr %19, align 4, !tbaa !7
  %20 = add nuw nsw i64 %14, 1
  %21 = icmp eq i64 %20, %12
  br i1 %21, label %22, label %13, !llvm.loop !39

22:                                               ; preds = %13, %5
  %23 = shl i32 %6, 1
  %24 = shl i32 %6, 4
  %25 = icmp slt i32 %24, %8
  br i1 %25, label %5, label %26, !llvm.loop !40

26:                                               ; preds = %22
  %.lcssa3 = phi i32 [ %23, %22 ]
  %.lcssa2 = phi i32 [ %24, %22 ]
  %.lcssa1 = phi i32 [ %6, %22 ]
  %.lcssa = phi i32 [ %8, %22 ]
  %27 = shl i32 %.lcssa1, 2
  %28 = icmp eq i32 %.lcssa2, %.lcssa
  br i1 %28, label %31, label %156

29:                                               ; preds = %3
  %30 = icmp eq i32 %0, 8
  br i1 %30, label %33, label %156

31:                                               ; preds = %26
  %32 = icmp sgt i32 %.lcssa3, 0
  br i1 %32, label %33, label %231

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %.lcssa3, %31 ], [ 1, %29 ]
  %35 = phi i32 [ %27, %31 ], [ 2, %29 ]
  %36 = shl nsw i32 %34, 2
  %37 = or i32 %35, 1
  %38 = sext i32 %35 to i64
  %39 = zext i32 %34 to i64
  br label %40

40:                                               ; preds = %122, %33
  %41 = phi i64 [ 0, %33 ], [ %154, %122 ]
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, ptr %1, align 4, !tbaa !7
  br label %122

45:                                               ; preds = %40
  %46 = getelementptr inbounds i32, ptr %1, i64 %41
  %47 = load i32, ptr %46, align 4, !tbaa !7
  %48 = sext i32 %47 to i64
  %49 = trunc i64 %41 to i32
  %50 = shl i32 %49, 1
  br label %51

51:                                               ; preds = %51, %45
  %52 = phi i64 [ 0, %45 ], [ %120, %51 ]
  %53 = shl nuw nsw i64 %52, 1
  %54 = add nsw i64 %53, %48
  %55 = getelementptr inbounds i32, ptr %1, i64 %52
  %56 = load i32, ptr %55, align 4, !tbaa !7
  %57 = add nsw i32 %56, %50
  %58 = getelementptr inbounds double, ptr %2, i64 %54
  %59 = load double, ptr %58, align 8, !tbaa !11
  %60 = add nsw i64 %54, 1
  %61 = getelementptr inbounds double, ptr %2, i64 %60
  %62 = load double, ptr %61, align 8, !tbaa !11
  %63 = fneg double %62
  %64 = sext i32 %57 to i64
  %65 = getelementptr inbounds double, ptr %2, i64 %64
  %66 = load double, ptr %65, align 8, !tbaa !11
  %67 = add nsw i32 %57, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, ptr %2, i64 %68
  %70 = load double, ptr %69, align 8, !tbaa !11
  %71 = fneg double %70
  store double %66, ptr %58, align 8, !tbaa !11
  store double %71, ptr %61, align 8, !tbaa !11
  store double %59, ptr %65, align 8, !tbaa !11
  store double %63, ptr %69, align 8, !tbaa !11
  %72 = add nsw i64 %54, %38
  %73 = add nsw i32 %57, %36
  %74 = getelementptr inbounds double, ptr %2, i64 %72
  %75 = load double, ptr %74, align 8, !tbaa !11
  %76 = add nsw i64 %72, 1
  %77 = getelementptr inbounds double, ptr %2, i64 %76
  %78 = load double, ptr %77, align 8, !tbaa !11
  %79 = fneg double %78
  %80 = sext i32 %73 to i64
  %81 = getelementptr inbounds double, ptr %2, i64 %80
  %82 = load double, ptr %81, align 8, !tbaa !11
  %83 = add nsw i32 %73, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, ptr %2, i64 %84
  %86 = load double, ptr %85, align 8, !tbaa !11
  %87 = fneg double %86
  store double %82, ptr %74, align 8, !tbaa !11
  store double %87, ptr %77, align 8, !tbaa !11
  store double %75, ptr %81, align 8, !tbaa !11
  store double %79, ptr %85, align 8, !tbaa !11
  %88 = add nsw i64 %72, %38
  %89 = sub nsw i32 %73, %35
  %90 = getelementptr inbounds double, ptr %2, i64 %88
  %91 = load double, ptr %90, align 8, !tbaa !11
  %92 = add nsw i64 %88, 1
  %93 = getelementptr inbounds double, ptr %2, i64 %92
  %94 = load double, ptr %93, align 8, !tbaa !11
  %95 = fneg double %94
  %96 = sext i32 %89 to i64
  %97 = getelementptr inbounds double, ptr %2, i64 %96
  %98 = load double, ptr %97, align 8, !tbaa !11
  %99 = add nsw i32 %89, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, ptr %2, i64 %100
  %102 = load double, ptr %101, align 8, !tbaa !11
  %103 = fneg double %102
  store double %98, ptr %90, align 8, !tbaa !11
  store double %103, ptr %93, align 8, !tbaa !11
  store double %91, ptr %97, align 8, !tbaa !11
  store double %95, ptr %101, align 8, !tbaa !11
  %104 = add nsw i64 %88, %38
  %105 = add nsw i32 %89, %36
  %106 = getelementptr inbounds double, ptr %2, i64 %104
  %107 = load double, ptr %106, align 8, !tbaa !11
  %108 = add nsw i64 %104, 1
  %109 = getelementptr inbounds double, ptr %2, i64 %108
  %110 = load double, ptr %109, align 8, !tbaa !11
  %111 = fneg double %110
  %112 = sext i32 %105 to i64
  %113 = getelementptr inbounds double, ptr %2, i64 %112
  %114 = load double, ptr %113, align 8, !tbaa !11
  %115 = add nsw i32 %105, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, ptr %2, i64 %116
  %118 = load double, ptr %117, align 8, !tbaa !11
  %119 = fneg double %118
  store double %114, ptr %106, align 8, !tbaa !11
  store double %119, ptr %109, align 8, !tbaa !11
  store double %107, ptr %113, align 8, !tbaa !11
  store double %111, ptr %117, align 8, !tbaa !11
  %120 = add nuw nsw i64 %52, 1
  %121 = icmp eq i64 %120, %41
  br i1 %121, label %122, label %51, !llvm.loop !41

122:                                              ; preds = %51, %43
  %123 = phi i32 [ 0, %43 ], [ %50, %51 ]
  %124 = phi i32 [ %44, %43 ], [ %47, %51 ]
  %125 = add nsw i32 %124, %123
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds double, ptr %2, i64 %127
  %129 = load double, ptr %128, align 8, !tbaa !11
  %130 = fneg double %129
  store double %130, ptr %128, align 8, !tbaa !11
  %131 = add nsw i32 %125, %35
  %132 = add nsw i32 %131, %35
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds double, ptr %2, i64 %133
  %135 = load double, ptr %134, align 8, !tbaa !11
  %136 = add nsw i32 %131, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds double, ptr %2, i64 %137
  %139 = load double, ptr %138, align 8, !tbaa !11
  %140 = fneg double %139
  %141 = sext i32 %132 to i64
  %142 = getelementptr inbounds double, ptr %2, i64 %141
  %143 = load double, ptr %142, align 8, !tbaa !11
  %144 = add nsw i32 %132, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds double, ptr %2, i64 %145
  %147 = load double, ptr %146, align 8, !tbaa !11
  %148 = fneg double %147
  store double %143, ptr %134, align 8, !tbaa !11
  store double %148, ptr %138, align 8, !tbaa !11
  store double %135, ptr %142, align 8, !tbaa !11
  store double %140, ptr %146, align 8, !tbaa !11
  %149 = add i32 %37, %132
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds double, ptr %2, i64 %150
  %152 = load double, ptr %151, align 8, !tbaa !11
  %153 = fneg double %152
  store double %153, ptr %151, align 8, !tbaa !11
  %154 = add nuw nsw i64 %41, 1
  %155 = icmp eq i64 %154, %39
  br i1 %155, label %231, label %40, !llvm.loop !42

156:                                              ; preds = %29, %26
  %157 = phi i32 [ 2, %29 ], [ %27, %26 ]
  %158 = phi i32 [ 1, %29 ], [ %.lcssa3, %26 ]
  %159 = getelementptr inbounds double, ptr %2, i64 1
  %160 = load double, ptr %159, align 8, !tbaa !11
  %161 = fneg double %160
  store double %161, ptr %159, align 8, !tbaa !11
  %162 = or i32 %157, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds double, ptr %2, i64 %163
  %165 = load double, ptr %164, align 8, !tbaa !11
  %166 = fneg double %165
  store double %166, ptr %164, align 8, !tbaa !11
  %167 = icmp sgt i32 %158, 1
  br i1 %167, label %168, label %231

168:                                              ; preds = %156
  %169 = sext i32 %157 to i64
  %170 = zext i32 %158 to i64
  br label %171

171:                                              ; preds = %217, %168
  %172 = phi i64 [ 1, %168 ], [ %229, %217 ]
  %173 = getelementptr inbounds i32, ptr %1, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !7
  %175 = sext i32 %174 to i64
  %176 = trunc i64 %172 to i32
  %177 = shl i32 %176, 1
  br label %178

178:                                              ; preds = %178, %171
  %179 = phi i64 [ 0, %171 ], [ %215, %178 ]
  %180 = shl nuw nsw i64 %179, 1
  %181 = add nsw i64 %180, %175
  %182 = getelementptr inbounds i32, ptr %1, i64 %179
  %183 = load i32, ptr %182, align 4, !tbaa !7
  %184 = add nsw i32 %183, %177
  %185 = getelementptr inbounds double, ptr %2, i64 %181
  %186 = load double, ptr %185, align 8, !tbaa !11
  %187 = add nsw i64 %181, 1
  %188 = getelementptr inbounds double, ptr %2, i64 %187
  %189 = load double, ptr %188, align 8, !tbaa !11
  %190 = fneg double %189
  %191 = sext i32 %184 to i64
  %192 = getelementptr inbounds double, ptr %2, i64 %191
  %193 = load double, ptr %192, align 8, !tbaa !11
  %194 = add nsw i32 %184, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds double, ptr %2, i64 %195
  %197 = load double, ptr %196, align 8, !tbaa !11
  %198 = fneg double %197
  store double %193, ptr %185, align 8, !tbaa !11
  store double %198, ptr %188, align 8, !tbaa !11
  store double %186, ptr %192, align 8, !tbaa !11
  store double %190, ptr %196, align 8, !tbaa !11
  %199 = add nsw i64 %181, %169
  %200 = add nsw i32 %184, %157
  %201 = getelementptr inbounds double, ptr %2, i64 %199
  %202 = load double, ptr %201, align 8, !tbaa !11
  %203 = add nsw i64 %199, 1
  %204 = getelementptr inbounds double, ptr %2, i64 %203
  %205 = load double, ptr %204, align 8, !tbaa !11
  %206 = fneg double %205
  %207 = sext i32 %200 to i64
  %208 = getelementptr inbounds double, ptr %2, i64 %207
  %209 = load double, ptr %208, align 8, !tbaa !11
  %210 = add nsw i32 %200, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds double, ptr %2, i64 %211
  %213 = load double, ptr %212, align 8, !tbaa !11
  %214 = fneg double %213
  store double %209, ptr %201, align 8, !tbaa !11
  store double %214, ptr %204, align 8, !tbaa !11
  store double %202, ptr %208, align 8, !tbaa !11
  store double %206, ptr %212, align 8, !tbaa !11
  %215 = add nuw nsw i64 %179, 1
  %216 = icmp eq i64 %215, %172
  br i1 %216, label %217, label %178, !llvm.loop !43

217:                                              ; preds = %178
  %218 = add nsw i32 %174, %177
  %219 = add nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds double, ptr %2, i64 %220
  %222 = load double, ptr %221, align 8, !tbaa !11
  %223 = fneg double %222
  store double %223, ptr %221, align 8, !tbaa !11
  %224 = add i32 %162, %218
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds double, ptr %2, i64 %225
  %227 = load double, ptr %226, align 8, !tbaa !11
  %228 = fneg double %227
  store double %228, ptr %226, align 8, !tbaa !11
  %229 = add nuw nsw i64 %172, 1
  %230 = icmp eq i64 %229, %170
  br i1 %230, label %231, label %171, !llvm.loop !44

231:                                              ; preds = %217, %156, %122, %31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @bitrv216neg(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds double, ptr %0, i64 2
  %3 = getelementptr inbounds double, ptr %0, i64 4
  %4 = getelementptr inbounds double, ptr %0, i64 6
  %5 = getelementptr inbounds double, ptr %0, i64 8
  %6 = getelementptr inbounds double, ptr %0, i64 10
  %7 = getelementptr inbounds double, ptr %0, i64 12
  %8 = getelementptr inbounds double, ptr %0, i64 14
  %9 = getelementptr inbounds double, ptr %0, i64 16
  %10 = getelementptr inbounds double, ptr %0, i64 18
  %11 = getelementptr inbounds double, ptr %0, i64 20
  %12 = getelementptr inbounds double, ptr %0, i64 22
  %13 = getelementptr inbounds double, ptr %0, i64 24
  %14 = getelementptr inbounds double, ptr %0, i64 26
  %15 = getelementptr inbounds double, ptr %0, i64 28
  %16 = getelementptr inbounds double, ptr %0, i64 30
  %17 = load <2 x double>, ptr %16, align 8, !tbaa !11
  %18 = load <2 x double>, ptr %8, align 8, !tbaa !11
  %19 = load <2 x double>, ptr %12, align 8, !tbaa !11
  %20 = load <2 x double>, ptr %4, align 8, !tbaa !11
  store <2 x double> %19, ptr %4, align 8, !tbaa !11
  %21 = load <2 x double>, ptr %14, align 8, !tbaa !11
  %22 = load <2 x double>, ptr %6, align 8, !tbaa !11
  store <2 x double> %21, ptr %6, align 8, !tbaa !11
  %23 = load <2 x double>, ptr %10, align 8, !tbaa !11
  store <2 x double> %23, ptr %8, align 8, !tbaa !11
  %24 = load <2 x double>, ptr %2, align 8, !tbaa !11
  store <2 x double> %17, ptr %2, align 8, !tbaa !11
  %25 = load <2 x double>, ptr %15, align 8, !tbaa !11
  store <2 x double> %25, ptr %10, align 8, !tbaa !11
  %26 = load <2 x double>, ptr %7, align 8, !tbaa !11
  store <2 x double> %22, ptr %7, align 8, !tbaa !11
  %27 = load <2 x double>, ptr %11, align 8, !tbaa !11
  store <2 x double> %26, ptr %11, align 8, !tbaa !11
  store <2 x double> %27, ptr %12, align 8, !tbaa !11
  %28 = load <2 x double>, ptr %3, align 8, !tbaa !11
  store <2 x double> %18, ptr %3, align 8, !tbaa !11
  %29 = load <2 x double>, ptr %13, align 8, !tbaa !11
  store <2 x double> %28, ptr %13, align 8, !tbaa !11
  store <2 x double> %29, ptr %14, align 8, !tbaa !11
  %30 = load <2 x double>, ptr %5, align 8, !tbaa !11
  store <2 x double> %20, ptr %5, align 8, !tbaa !11
  store <2 x double> %30, ptr %15, align 8, !tbaa !11
  %31 = load <2 x double>, ptr %9, align 8, !tbaa !11
  store <2 x double> %24, ptr %9, align 8, !tbaa !11
  store <2 x double> %31, ptr %16, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @bitrv208neg(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds double, ptr %0, i64 2
  %3 = getelementptr inbounds double, ptr %0, i64 4
  %4 = getelementptr inbounds double, ptr %0, i64 6
  %5 = getelementptr inbounds double, ptr %0, i64 8
  %6 = getelementptr inbounds double, ptr %0, i64 10
  %7 = getelementptr inbounds double, ptr %0, i64 12
  %8 = getelementptr inbounds double, ptr %0, i64 14
  %9 = load <2 x double>, ptr %8, align 8, !tbaa !11
  %10 = load <2 x double>, ptr %4, align 8, !tbaa !11
  %11 = load <2 x double>, ptr %6, align 8, !tbaa !11
  store <2 x double> %11, ptr %4, align 8, !tbaa !11
  %12 = load <2 x double>, ptr %2, align 8, !tbaa !11
  store <2 x double> %9, ptr %2, align 8, !tbaa !11
  %13 = load <2 x double>, ptr %7, align 8, !tbaa !11
  store <2 x double> %13, ptr %6, align 8, !tbaa !11
  %14 = load <2 x double>, ptr %3, align 8, !tbaa !11
  store <2 x double> %10, ptr %3, align 8, !tbaa !11
  store <2 x double> %14, ptr %7, align 8, !tbaa !11
  %15 = load <2 x double>, ptr %5, align 8, !tbaa !11
  store <2 x double> %12, ptr %5, align 8, !tbaa !11
  store <2 x double> %15, ptr %8, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @cftb040(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds double, ptr %0, i64 4
  %3 = getelementptr inbounds double, ptr %0, i64 2
  %4 = getelementptr inbounds double, ptr %0, i64 6
  %5 = load <2 x double>, ptr %0, align 8, !tbaa !11
  %6 = load <2 x double>, ptr %2, align 8, !tbaa !11
  %7 = fadd <2 x double> %5, %6
  %8 = load <2 x double>, ptr %3, align 8, !tbaa !11
  %9 = load <2 x double>, ptr %4, align 8, !tbaa !11
  %10 = fadd <2 x double> %8, %9
  %11 = fadd <2 x double> %7, %10
  store <2 x double> %11, ptr %0, align 8, !tbaa !11
  %12 = fsub <2 x double> %7, %10
  store <2 x double> %12, ptr %2, align 8, !tbaa !11
  %13 = fsub <2 x double> %5, %6
  %14 = fsub <2 x double> %8, %9
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %16 = fadd <2 x double> %13, %15
  %17 = fsub <2 x double> %13, %15
  %18 = shufflevector <2 x double> %16, <2 x double> %17, <2 x i32> <i32 0, i32 3>
  store <2 x double> %18, ptr %3, align 8, !tbaa !11
  %19 = shufflevector <2 x double> %17, <2 x double> %16, <2 x i32> <i32 0, i32 3>
  store <2 x double> %19, ptr %4, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree nounwind optsize memory(write, argmem: readwrite) uwtable
define internal void @rdft(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = load i32, ptr %3, align 4, !tbaa !7
  %7 = shl i32 %6, 2
  %8 = icmp slt i32 %7, %0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ashr i32 %0, 2
  tail call void @makewt(i32 noundef %10, ptr noundef nonnull %3, ptr noundef %4) #20
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ %6, %5 ]
  %13 = getelementptr inbounds i32, ptr %3, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !7
  %15 = shl i32 %14, 2
  %16 = icmp slt i32 %15, %0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = ashr i32 %0, 2
  %19 = sext i32 %12 to i64
  %20 = getelementptr inbounds double, ptr %4, i64 %19
  tail call void @makect(i32 noundef %18, ptr noundef nonnull %3, ptr noundef %20) #20
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i32 [ %18, %17 ], [ %14, %11 ]
  %23 = icmp sgt i32 %1, -1
  br i1 %23, label %24, label %52

24:                                               ; preds = %21
  %25 = icmp sgt i32 %0, 4
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = getelementptr inbounds i32, ptr %3, i64 2
  tail call void @cftfsub(i32 noundef %0, ptr noundef %2, ptr noundef nonnull %27, i32 noundef %12, ptr noundef %4) #20
  %28 = sext i32 %12 to i64
  %29 = getelementptr inbounds double, ptr %4, i64 %28
  tail call void @rftfsub(i32 noundef %0, ptr noundef %2, i32 noundef %22, ptr noundef %29) #20
  %30 = load double, ptr %2, align 8, !tbaa !11
  br label %46

31:                                               ; preds = %24
  %32 = icmp eq i32 %0, 4
  %33 = load double, ptr %2, align 8, !tbaa !11
  br i1 %32, label %34, label %46

34:                                               ; preds = %31
  %35 = getelementptr inbounds double, ptr %2, i64 2
  %36 = getelementptr inbounds double, ptr %2, i64 1
  %37 = load double, ptr %36, align 8, !tbaa !11
  %38 = load <2 x double>, ptr %35, align 8, !tbaa !11
  %39 = insertelement <2 x double> poison, double %33, i64 0
  %40 = insertelement <2 x double> %39, double %37, i64 1
  %41 = fsub <2 x double> %40, %38
  %42 = extractelement <2 x double> %38, i64 0
  %43 = fadd double %33, %42
  %44 = extractelement <2 x double> %38, i64 1
  %45 = fadd double %37, %44
  store double %45, ptr %36, align 8, !tbaa !11
  store <2 x double> %41, ptr %35, align 8, !tbaa !11
  br label %46

46:                                               ; preds = %34, %31, %26
  %47 = phi double [ %33, %31 ], [ %43, %34 ], [ %30, %26 ]
  %48 = getelementptr inbounds double, ptr %2, i64 1
  %49 = load double, ptr %48, align 8, !tbaa !11
  %50 = fsub double %47, %49
  %51 = fadd double %47, %49
  store double %51, ptr %2, align 8, !tbaa !11
  store double %50, ptr %48, align 8, !tbaa !11
  br label %73

52:                                               ; preds = %21
  %53 = load double, ptr %2, align 8, !tbaa !11
  %54 = getelementptr inbounds double, ptr %2, i64 1
  %55 = load double, ptr %54, align 8, !tbaa !11
  %56 = fsub double %53, %55
  %57 = fmul double %56, 5.000000e-01
  store double %57, ptr %54, align 8, !tbaa !11
  %58 = fsub double %53, %57
  store double %58, ptr %2, align 8, !tbaa !11
  %59 = icmp sgt i32 %0, 4
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = sext i32 %12 to i64
  %62 = getelementptr inbounds double, ptr %4, i64 %61
  tail call void @rftbsub(i32 noundef %0, ptr noundef nonnull %2, i32 noundef %22, ptr noundef %62) #20
  %63 = getelementptr inbounds i32, ptr %3, i64 2
  tail call void @cftbsub(i32 noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %63, i32 noundef %12, ptr noundef %4) #20
  br label %73

64:                                               ; preds = %52
  %65 = icmp eq i32 %0, 4
  br i1 %65, label %66, label %73

66:                                               ; preds = %64
  %67 = getelementptr inbounds double, ptr %2, i64 2
  %68 = load <2 x double>, ptr %67, align 8, !tbaa !11
  %69 = insertelement <2 x double> poison, double %58, i64 0
  %70 = insertelement <2 x double> %69, double %57, i64 1
  %71 = fadd <2 x double> %70, %68
  store <2 x double> %71, ptr %2, align 8, !tbaa !11
  %72 = fsub <2 x double> %70, %68
  store <2 x double> %72, ptr %67, align 8, !tbaa !11
  br label %73

73:                                               ; preds = %66, %64, %60, %46
  ret void
}

; Function Attrs: nofree nounwind optsize memory(write) uwtable
define internal void @makect(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 %0, ptr %4, align 4, !tbaa !7
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = lshr i32 %0, 1
  %8 = sitofp i32 %7 to double
  %9 = fdiv double 0x3FE921FB54442D18, %8
  %10 = fmul double %9, %8
  %11 = tail call double @cos(double noundef %10) #19
  store double %11, ptr %2, align 8, !tbaa !11
  %12 = fmul double %11, 5.000000e-01
  %13 = zext i32 %7 to i64
  %14 = getelementptr inbounds double, ptr %2, i64 %13
  store double %12, ptr %14, align 8, !tbaa !11
  %15 = icmp ugt i32 %0, 3
  br i1 %15, label %16, label %34

16:                                               ; preds = %6
  %17 = zext i32 %0 to i64
  %18 = tail call i32 @llvm.umax.i32(i32 %7, i32 2)
  %19 = zext i32 %18 to i64
  br label %20

20:                                               ; preds = %20, %16
  %21 = phi i64 [ 1, %16 ], [ %32, %20 ]
  %22 = trunc i64 %21 to i32
  %23 = sitofp i32 %22 to double
  %24 = fmul double %9, %23
  %25 = tail call double @cos(double noundef %24) #19
  %26 = fmul double %25, 5.000000e-01
  %27 = getelementptr inbounds double, ptr %2, i64 %21
  store double %26, ptr %27, align 8, !tbaa !11
  %28 = tail call double @sin(double noundef %24) #19
  %29 = fmul double %28, 5.000000e-01
  %30 = sub nsw i64 %17, %21
  %31 = getelementptr inbounds double, ptr %2, i64 %30
  store double %29, ptr %31, align 8, !tbaa !11
  %32 = add nuw nsw i64 %21, 1
  %33 = icmp eq i64 %32, %19
  br i1 %33, label %34, label %20, !llvm.loop !45

34:                                               ; preds = %20, %6, %3
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @rftfsub(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = icmp sgt i32 %0, 5
  br i1 %5, label %6, label %47

6:                                                ; preds = %4
  %7 = shl nsw i32 %2, 1
  %8 = lshr i32 %0, 1
  %9 = sdiv i32 %7, %8
  %10 = zext i32 %0 to i64
  %11 = zext i32 %8 to i64
  %12 = sext i32 %9 to i64
  %13 = sext i32 %2 to i64
  br label %14

14:                                               ; preds = %14, %6
  %15 = phi i64 [ 0, %6 ], [ %18, %14 ]
  %16 = phi i64 [ 2, %6 ], [ %45, %14 ]
  %17 = sub nsw i64 %10, %16
  %18 = add nsw i64 %15, %12
  %19 = sub nsw i64 %13, %18
  %20 = getelementptr inbounds double, ptr %3, i64 %19
  %21 = load double, ptr %20, align 8, !tbaa !11
  %22 = fsub double 5.000000e-01, %21
  %23 = getelementptr inbounds double, ptr %3, i64 %18
  %24 = load double, ptr %23, align 8, !tbaa !11
  %25 = getelementptr inbounds double, ptr %1, i64 %16
  %26 = getelementptr inbounds double, ptr %1, i64 %17
  %27 = fneg double %24
  %28 = load <2 x double>, ptr %25, align 8, !tbaa !11
  %29 = load <2 x double>, ptr %26, align 8, !tbaa !11
  %30 = fsub <2 x double> %28, %29
  %31 = fadd <2 x double> %28, %29
  %32 = shufflevector <2 x double> %30, <2 x double> %31, <2 x i32> <i32 0, i32 3>
  %33 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %34 = insertelement <2 x double> poison, double %27, i64 0
  %35 = insertelement <2 x double> %34, double %24, i64 1
  %36 = fmul <2 x double> %33, %35
  %37 = insertelement <2 x double> poison, double %22, i64 0
  %38 = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> zeroinitializer
  %39 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %38, <2 x double> %32, <2 x double> %36)
  %40 = fsub <2 x double> %28, %39
  store <2 x double> %40, ptr %25, align 8, !tbaa !11
  %41 = load <2 x double>, ptr %26, align 8, !tbaa !11
  %42 = fadd <2 x double> %41, %39
  %43 = fsub <2 x double> %41, %39
  %44 = shufflevector <2 x double> %42, <2 x double> %43, <2 x i32> <i32 0, i32 3>
  store <2 x double> %44, ptr %26, align 8, !tbaa !11
  %45 = add nuw nsw i64 %16, 2
  %46 = icmp ult i64 %45, %11
  br i1 %46, label %14, label %47, !llvm.loop !46

47:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @rftbsub(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = icmp sgt i32 %0, 5
  br i1 %5, label %6, label %47

6:                                                ; preds = %4
  %7 = shl nsw i32 %2, 1
  %8 = lshr i32 %0, 1
  %9 = sdiv i32 %7, %8
  %10 = zext i32 %0 to i64
  %11 = zext i32 %8 to i64
  %12 = sext i32 %9 to i64
  %13 = sext i32 %2 to i64
  br label %14

14:                                               ; preds = %14, %6
  %15 = phi i64 [ 0, %6 ], [ %18, %14 ]
  %16 = phi i64 [ 2, %6 ], [ %45, %14 ]
  %17 = sub nsw i64 %10, %16
  %18 = add nsw i64 %15, %12
  %19 = sub nsw i64 %13, %18
  %20 = getelementptr inbounds double, ptr %3, i64 %19
  %21 = load double, ptr %20, align 8, !tbaa !11
  %22 = fsub double 5.000000e-01, %21
  %23 = getelementptr inbounds double, ptr %3, i64 %18
  %24 = load double, ptr %23, align 8, !tbaa !11
  %25 = getelementptr inbounds double, ptr %1, i64 %16
  %26 = getelementptr inbounds double, ptr %1, i64 %17
  %27 = fneg double %24
  %28 = load <2 x double>, ptr %25, align 8, !tbaa !11
  %29 = load <2 x double>, ptr %26, align 8, !tbaa !11
  %30 = fsub <2 x double> %28, %29
  %31 = fadd <2 x double> %28, %29
  %32 = shufflevector <2 x double> %30, <2 x double> %31, <2 x i32> <i32 0, i32 3>
  %33 = insertelement <2 x double> poison, double %24, i64 0
  %34 = insertelement <2 x double> %33, double %27, i64 1
  %35 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %36 = fmul <2 x double> %34, %35
  %37 = insertelement <2 x double> poison, double %22, i64 0
  %38 = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> zeroinitializer
  %39 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %38, <2 x double> %32, <2 x double> %36)
  %40 = fsub <2 x double> %28, %39
  store <2 x double> %40, ptr %25, align 8, !tbaa !11
  %41 = load <2 x double>, ptr %26, align 8, !tbaa !11
  %42 = fadd <2 x double> %41, %39
  %43 = fsub <2 x double> %41, %39
  %44 = shufflevector <2 x double> %42, <2 x double> %43, <2 x i32> <i32 0, i32 3>
  store <2 x double> %44, ptr %26, align 8, !tbaa !11
  %45 = add nuw nsw i64 %16, 2
  %46 = icmp ult i64 %45, %11
  br i1 %46, label %14, label %47, !llvm.loop !47

47:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #8 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  %4 = load ptr, ptr @stderr, align 8, !tbaa !48
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #22
  %6 = load ptr, ptr @stderr, align 8, !tbaa !48
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #22
  %8 = icmp eq i32 %0, 2
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @exit(i32 noundef 1) #23
  unreachable

10:                                               ; preds = %2
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %12 = getelementptr inbounds ptr, ptr %1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = tail call noalias ptr @fopen(ptr noundef %13, ptr noundef nonnull @.str.5) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load ptr, ptr @stderr, align 8, !tbaa !48
  %18 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 35, i64 1, ptr %17) #24
  tail call void @exit(i32 noundef 1) #23
  unreachable

19:                                               ; preds = %10
  %20 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %14, ptr noundef nonnull @.str.7, ptr noundef nonnull %3) #19
  %21 = call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  %22 = load i32, ptr %3, align 4, !tbaa !7
  br label %23

23:                                               ; preds = %23, %19
  %24 = phi i32 [ 1, %19 ], [ %27, %23 ]
  %25 = shl nuw i32 1, %24
  %26 = icmp slt i32 %25, %22
  %27 = add nuw nsw i32 %24, 1
  br i1 %26, label %23, label %28, !llvm.loop !50

28:                                               ; preds = %23
  %.lcssa4 = phi i32 [ %24, %23 ]
  %.lcssa3 = phi i32 [ %25, %23 ]
  store i32 %.lcssa3, ptr %3, align 4, !tbaa !7
  %29 = add nuw nsw i32 %.lcssa3, 2
  %30 = sitofp i32 %.lcssa3 to double
  %31 = fmul double %30, 5.000000e-01
  %32 = call double @sqrt(double noundef %31) #19
  %33 = fptosi double %32 to i32
  %34 = add nsw i32 %33, 3
  %35 = sext i32 %34 to i64
  %36 = shl nsw i64 %35, 2
  %37 = call noalias ptr @malloc(i64 noundef %36) #25
  %38 = load i32, ptr %3, align 4, !tbaa !7
  %39 = sdiv i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = shl nsw i64 %40, 3
  %42 = call noalias ptr @malloc(i64 noundef %41) #25
  %43 = add nuw nsw i32 %.lcssa3, 4
  %44 = sext i32 %43 to i64
  %45 = shl nsw i64 %44, 2
  %46 = call noalias ptr @malloc(i64 noundef %45) #25
  %47 = call noalias ptr @malloc(i64 noundef %45) #25
  %48 = call noalias ptr @malloc(i64 noundef %45) #25
  %49 = call noalias ptr @malloc(i64 noundef %45) #25
  %50 = call noalias ptr @malloc(i64 noundef %45) #25
  %51 = call noalias ptr @malloc(i64 noundef %45) #25
  %52 = add nsw i32 %38, 2
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 3
  %55 = call noalias ptr @malloc(i64 noundef %54) #25
  %56 = call noalias ptr @malloc(i64 noundef %54) #25
  %57 = call noalias ptr @malloc(i64 noundef %54) #25
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %28
  %60 = load ptr, ptr @stderr, align 8, !tbaa !48
  %61 = call i64 @fwrite(ptr nonnull @.str.9, i64 20, i64 1, ptr %60) #24
  call void @exit(i32 noundef 1) #23
  unreachable

62:                                               ; preds = %28
  store i32 0, ptr %37, align 4, !tbaa !7
  %63 = call double @mp_mul_radix_test(i32 noundef %29, i32 noundef 10, i32 noundef %38, ptr noundef %55, ptr noundef nonnull %37, ptr noundef %42) #20
  %64 = mul i32 %29, 100
  %65 = ashr exact i32 %64, 2
  %66 = sitofp i32 %65 to double
  %67 = call double @llvm.fmuladd.f64(double %66, double 0x3CB0000000000000, double %63)
  %68 = fmul double %67, 1.000000e+02
  %69 = fcmp olt double %68, 3.000000e-01
  br i1 %69, label %70, label %82

70:                                               ; preds = %70, %62
  %71 = phi double [ %76, %70 ], [ %68, %62 ]
  %72 = phi i32 [ %75, %70 ], [ 10, %62 ]
  %73 = phi i32 [ %74, %70 ], [ 1, %62 ]
  %74 = add nuw nsw i32 %73, 1
  %75 = mul nuw nsw i32 %72, 10
  %76 = fmul double %71, 1.000000e+02
  %77 = fcmp olt double %76, 3.000000e-01
  %78 = icmp ult i32 %72, 10737419
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %70, label %80, !llvm.loop !51

80:                                               ; preds = %70
  %.lcssa2 = phi i32 [ %74, %70 ]
  %.lcssa1 = phi i32 [ %75, %70 ]
  %81 = shl i32 %.lcssa2, %.lcssa4
  br label %82

82:                                               ; preds = %80, %62
  %83 = phi i32 [ %81, %80 ], [ %.lcssa3, %62 ]
  %84 = phi i32 [ %.lcssa2, %80 ], [ 1, %62 ]
  %85 = phi i32 [ %.lcssa1, %80 ], [ 10, %62 ]
  %86 = load i32, ptr %3, align 4, !tbaa !7
  %87 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %86, i32 noundef %85) #20
  %88 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %83) #20
  call void @mp_sscanf(i32 noundef %29, i32 noundef %84, ptr noundef nonnull @.str.12, ptr noundef %46) #20
  %89 = load i32, ptr %3, align 4, !tbaa !7
  %90 = call i32 @mp_sqrt(i32 noundef %29, i32 noundef %85, ptr noundef %46, ptr noundef %48, ptr noundef %50, ptr noundef %51, i32 noundef %89, ptr noundef %55, ptr noundef %56, ptr noundef nonnull %37, ptr noundef %42) #20, !range !52
  %91 = load i32, ptr %48, align 4, !tbaa !7
  store i32 %91, ptr %49, align 4, !tbaa !7
  %92 = sitofp i32 %85 to double
  %93 = getelementptr inbounds i32, ptr %48, i64 1
  %94 = getelementptr inbounds i32, ptr %49, i64 1
  call void @mp_unsgn_imul(i32 noundef %29, double noundef %92, ptr noundef nonnull %93, double noundef 3.000000e+00, ptr noundef nonnull %94) #20
  %95 = load i32, ptr %49, align 4, !tbaa !7
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %82
  store i32 0, ptr %94, align 4, !tbaa !7
  br label %98

98:                                               ; preds = %97, %82
  call void @mp_sscanf(i32 noundef %29, i32 noundef %84, ptr noundef nonnull @.str.13, ptr noundef %46) #20
  call void @mp_add(i32 noundef %29, i32 noundef %85, ptr noundef %46, ptr noundef nonnull %49, ptr noundef %46) #20
  %99 = load i32, ptr %3, align 4, !tbaa !7
  %100 = call i32 @mp_sqrt(i32 noundef %29, i32 noundef %85, ptr noundef %46, ptr noundef %47, ptr noundef %50, ptr noundef %51, i32 noundef %99, ptr noundef %55, ptr noundef %56, ptr noundef nonnull %37, ptr noundef %42) #20, !range !52
  call void @mp_sscanf(i32 noundef %29, i32 noundef %84, ptr noundef nonnull @.str.14, ptr noundef nonnull %49) #20
  call void @mp_sub(i32 noundef %29, i32 noundef %85, ptr noundef %47, ptr noundef nonnull %49, ptr noundef nonnull %49) #20
  call void @mp_add(i32 noundef %29, i32 noundef %85, ptr noundef %47, ptr noundef %47, ptr noundef %47) #20
  call void @mp_sub(i32 noundef %29, i32 noundef %85, ptr noundef nonnull %49, ptr noundef nonnull %48, ptr noundef nonnull %48) #20
  call void @mp_add(i32 noundef %29, i32 noundef %85, ptr noundef %46, ptr noundef nonnull %49, ptr noundef %46) #20
  %101 = call i32 @puts(ptr nonnull dereferenceable(1) @str.20)
  br label %102

102:                                              ; preds = %102, %98
  %103 = phi i32 [ 4, %98 ], [ %104, %102 ]
  %104 = shl nsw i32 %103, 1
  call void @mp_add(i32 noundef %29, i32 noundef %85, ptr noundef %46, ptr noundef %47, ptr noundef nonnull %49) #20
  call void @mp_idiv_2(i32 noundef %29, i32 noundef %85, ptr noundef nonnull %49, ptr noundef nonnull %49) #20
  %105 = load i32, ptr %3, align 4, !tbaa !7
  call void @mp_mul(i32 noundef %29, i32 noundef %85, ptr noundef %46, ptr noundef %47, ptr noundef %46, ptr noundef %50, i32 noundef %105, ptr noundef %55, ptr noundef %56, ptr noundef nonnull %57, ptr noundef nonnull %37, ptr noundef %42) #20
  %106 = load i32, ptr %3, align 4, !tbaa !7
  %107 = call i32 @mp_sqrt(i32 noundef %29, i32 noundef %85, ptr noundef %46, ptr noundef %47, ptr noundef %50, ptr noundef %51, i32 noundef %106, ptr noundef %55, ptr noundef %56, ptr noundef nonnull %37, ptr noundef %42) #20, !range !52
  call void @mp_sub(i32 noundef %29, i32 noundef %85, ptr noundef nonnull %49, ptr noundef %47, ptr noundef nonnull %49) #20
  call void @mp_add(i32 noundef %29, i32 noundef %85, ptr noundef %47, ptr noundef %47, ptr noundef %47) #20
  call void @mp_sub(i32 noundef %29, i32 noundef %85, ptr noundef nonnull %48, ptr noundef nonnull %49, ptr noundef nonnull %48) #20
  call void @mp_add(i32 noundef %29, i32 noundef %85, ptr noundef nonnull %49, ptr noundef %47, ptr noundef %46) #20
  %108 = load i32, ptr %94, align 4, !tbaa !7
  %109 = sub nsw i32 0, %108
  %110 = load i32, ptr %49, align 4, !tbaa !7
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %111, i32 %29, i32 %109
  %113 = shl nsw i32 %112, 2
  %114 = mul nsw i32 %113, %84
  %115 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %114) #20
  %116 = icmp sgt i32 %113, %29
  br i1 %116, label %117, label %102, !llvm.loop !53

117:                                              ; preds = %102
  %.lcssa = phi i32 [ %104, %102 ]
  call void @mp_idiv_2(i32 noundef %29, i32 noundef %85, ptr noundef nonnull %49, ptr noundef nonnull %49) #20
  %118 = load i32, ptr %3, align 4, !tbaa !7
  call void @mp_squh(i32 noundef %29, i32 noundef %85, ptr noundef nonnull %49, ptr noundef nonnull %49, i32 noundef %118, ptr noundef %55, ptr noundef nonnull %37, ptr noundef %42) #20
  call void @mp_add(i32 noundef %29, i32 noundef %85, ptr noundef %46, ptr noundef %47, ptr noundef %46) #20
  %119 = load i32, ptr %3, align 4, !tbaa !7
  call void @mp_mul(i32 noundef %29, i32 noundef %85, ptr noundef %46, ptr noundef nonnull %48, ptr noundef nonnull %48, ptr noundef %50, i32 noundef %119, ptr noundef %55, ptr noundef %56, ptr noundef nonnull %57, ptr noundef nonnull %37, ptr noundef %42) #20
  call void @mp_sub(i32 noundef %29, i32 noundef %85, ptr noundef nonnull %48, ptr noundef nonnull %49, ptr noundef nonnull %48) #20
  %120 = load i32, ptr %3, align 4, !tbaa !7
  %121 = call i32 @mp_inv(i32 noundef %29, i32 noundef %85, ptr noundef nonnull %48, ptr noundef %47, ptr noundef %50, ptr noundef %51, i32 noundef %120, ptr noundef %55, ptr noundef %56, ptr noundef nonnull %37, ptr noundef %42) #20, !range !52
  %122 = load i32, ptr %3, align 4, !tbaa !7
  call void @mp_squ(i32 noundef %29, i32 noundef %85, ptr noundef %46, ptr noundef %46, ptr noundef %50, i32 noundef %122, ptr noundef %55, ptr noundef %56, ptr noundef nonnull %37, ptr noundef %42) #20
  call void @mp_sub(i32 noundef %29, i32 noundef %85, ptr noundef %46, ptr noundef nonnull %49, ptr noundef %46) #20
  call void @mp_idiv_2(i32 noundef %29, i32 noundef %85, ptr noundef nonnull %49, ptr noundef nonnull %49) #20
  call void @mp_sub(i32 noundef %29, i32 noundef %85, ptr noundef %46, ptr noundef nonnull %49, ptr noundef %46) #20
  %123 = load i32, ptr %3, align 4, !tbaa !7
  call void @mp_mul(i32 noundef %29, i32 noundef %85, ptr noundef %46, ptr noundef %47, ptr noundef %46, ptr noundef %50, i32 noundef %123, ptr noundef %55, ptr noundef %56, ptr noundef nonnull %57, ptr noundef nonnull %37, ptr noundef %42) #20
  %124 = call i32 @mp_idiv(i32 noundef %29, i32 noundef %85, ptr noundef %46, i32 noundef %.lcssa, ptr noundef %46) #20, !range !52
  call void @free(ptr noundef %57) #19
  call void @free(ptr noundef %56) #19
  call void @free(ptr noundef %55) #19
  %125 = mul nsw i32 %84, %29
  %126 = add nsw i32 %125, 32
  %127 = sext i32 %126 to i64
  %128 = call noalias ptr @malloc(i64 noundef %127) #25
  %129 = add nuw nsw i32 %.lcssa3, 1
  call void @mp_sprintf(i32 noundef %129, i32 noundef %84, ptr noundef %46, ptr noundef %128) #20
  %130 = call i32 @puts(ptr nonnull dereferenceable(1) %128)
  call void @free(ptr noundef %128) #19
  call void @free(ptr noundef %51) #19
  call void @free(ptr noundef %50) #19
  call void @free(ptr noundef nonnull %49) #19
  call void @free(ptr noundef %48) #19
  call void @free(ptr noundef %47) #19
  call void @free(ptr noundef %46) #19
  call void @free(ptr noundef %42) #19
  call void @free(ptr noundef %37) #19
  %131 = load i32, ptr %3, align 4, !tbaa !7
  %132 = sitofp i32 %131 to double
  %133 = fmul double %132, 5.000000e+01
  %134 = sitofp i32 %.lcssa4 to double
  %135 = fmul double %133, %134
  %136 = fmul double %135, %134
  %137 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, double noundef %136) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal double @mp_mul_radix_test(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #8 {
  %7 = ashr i32 %2, 1
  %8 = add nsw i32 %7, 1
  %9 = icmp slt i32 %7, %0
  %10 = select i1 %9, i32 %8, i32 %0
  %11 = add nsw i32 %1, -1
  %12 = sitofp i32 %11 to double
  %13 = add nsw i32 %2, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds double, ptr %3, i64 %14
  store double %12, ptr %15, align 8, !tbaa !11
  %16 = icmp slt i32 %10, %2
  br i1 %16, label %17, label %27

17:                                               ; preds = %6
  %18 = sext i32 %2 to i64
  %19 = xor i32 %10, -1
  %20 = add i32 %19, %2
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 3
  %23 = sub nsw i64 %18, %21
  %24 = shl nsw i64 %23, 3
  %25 = getelementptr i8, ptr %3, i64 %24
  %26 = add nuw nsw i64 %22, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %25, i8 0, i64 %26, i1 false), !tbaa !11
  br label %27

27:                                               ; preds = %17, %6
  %28 = icmp sgt i32 %10, 2
  br i1 %28, label %29, label %39

29:                                               ; preds = %27
  %30 = add nsw i32 %1, 1
  %31 = sdiv i32 %30, 2
  %32 = sitofp i32 %31 to double
  %33 = zext i32 %10 to i64
  br label %34

34:                                               ; preds = %34, %29
  %35 = phi i64 [ %33, %29 ], [ %37, %34 ]
  %36 = getelementptr inbounds double, ptr %3, i64 %35
  store double %32, ptr %36, align 8, !tbaa !11
  %37 = add nsw i64 %35, -1
  %38 = icmp ugt i64 %35, 3
  br i1 %38, label %34, label %39, !llvm.loop !54

39:                                               ; preds = %34, %27
  %40 = sitofp i32 %1 to double
  %41 = getelementptr inbounds double, ptr %3, i64 2
  store double %40, ptr %41, align 8, !tbaa !11
  %42 = getelementptr inbounds double, ptr %3, i64 1
  store double %12, ptr %42, align 8, !tbaa !11
  store double 0.000000e+00, ptr %3, align 8, !tbaa !11
  tail call void @rdft(i32 noundef %2, i32 noundef 1, ptr noundef nonnull %42, ptr noundef %4, ptr noundef %5) #19
  tail call void @mp_mul_csqu(i32 noundef %2, ptr noundef nonnull %3) #20
  tail call void @rdft(i32 noundef %2, i32 noundef -1, ptr noundef nonnull %42, ptr noundef %4, ptr noundef %5) #19
  %43 = tail call double @mp_mul_d2i_test(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3) #20
  %44 = fmul double %43, 2.000000e+00
  ret double %44
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize uwtable
define internal void @mp_sscanf(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) #15 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi ptr [ %2, %4 ], [ %10, %6 ]
  %8 = load i8, ptr %7, align 1, !tbaa !55
  %9 = icmp eq i8 %8, 32
  %10 = getelementptr inbounds i8, ptr %7, i64 1
  br i1 %9, label %6, label %11, !llvm.loop !56

11:                                               ; preds = %6
  %.lcssa17 = phi ptr [ %7, %6 ]
  %.lcssa16 = phi ptr [ %10, %6 ]
  store i32 1, ptr %3, align 4, !tbaa !7
  %12 = load i8, ptr %.lcssa17, align 1, !tbaa !55
  switch i8 %12, label %15 [
    i8 45, label %13
    i8 43, label %14
  ]

13:                                               ; preds = %11
  store i32 -1, ptr %3, align 4, !tbaa !7
  br label %15

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %14, %13, %11
  %16 = phi ptr [ %.lcssa17, %11 ], [ %.lcssa16, %14 ], [ %.lcssa16, %13 ]
  br label %17

17:                                               ; preds = %20, %15
  %18 = phi ptr [ %21, %20 ], [ %16, %15 ]
  %19 = load i8, ptr %18, align 1, !tbaa !55
  switch i8 %19, label %22 [
    i8 32, label %20
    i8 48, label %20
  ]

20:                                               ; preds = %17, %17
  %21 = getelementptr inbounds i8, ptr %18, i64 1
  br label %17, !llvm.loop !57

22:                                               ; preds = %17
  %.lcssa15 = phi ptr [ %18, %17 ]
  store i32 0, ptr %5, align 4, !tbaa !7
  br label %23

23:                                               ; preds = %31, %22
  %24 = phi ptr [ %.lcssa15, %22 ], [ %32, %31 ]
  %25 = load i8, ptr %24, align 1, !tbaa !55
  switch i8 %25, label %31 [
    i8 0, label %33
    i8 101, label %26
    i8 69, label %26
    i8 100, label %26
    i8 68, label %26
  ]

26:                                               ; preds = %23, %23, %23, %23
  %.lcssa14 = phi ptr [ %24, %23 ], [ %24, %23 ], [ %24, %23 ], [ %24, %23 ]
  %27 = getelementptr inbounds i8, ptr %.lcssa14, i64 1
  %28 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %27, ptr noundef nonnull @.str.7, ptr noundef nonnull %5) #19
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  store i32 0, ptr %5, align 4, !tbaa !7
  br label %33

31:                                               ; preds = %23
  %32 = getelementptr inbounds i8, ptr %24, i64 1
  br label %23, !llvm.loop !58

33:                                               ; preds = %30, %26, %23
  %34 = load i8, ptr %.lcssa15, align 1, !tbaa !55
  switch i8 %34, label %47 [
    i8 46, label %37
    i8 0, label %35
  ]

35:                                               ; preds = %33
  %36 = load i32, ptr %5, align 4, !tbaa !7
  br label %68

37:                                               ; preds = %33
  %38 = load i32, ptr %5, align 4, !tbaa !7
  br label %39

39:                                               ; preds = %43, %37
  %40 = phi i32 [ %38, %37 ], [ %42, %43 ]
  %41 = phi ptr [ %.lcssa15, %37 ], [ %45, %43 ]
  %42 = add nsw i32 %40, -1
  store i32 %42, ptr %5, align 4, !tbaa !7
  br label %43

43:                                               ; preds = %43, %39
  %44 = phi ptr [ %41, %39 ], [ %45, %43 ]
  %45 = getelementptr inbounds i8, ptr %44, i64 1
  %46 = load i8, ptr %45, align 1, !tbaa !55
  switch i8 %46, label %68 [
    i8 32, label %43
    i8 48, label %39
  ]

47:                                               ; preds = %47, %33
  %48 = phi ptr [ %49, %47 ], [ %.lcssa15, %33 ]
  %49 = getelementptr inbounds i8, ptr %48, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !55
  %51 = icmp eq i8 %50, 32
  br i1 %51, label %47, label %52, !llvm.loop !59

52:                                               ; preds = %47
  %.lcssa12 = phi ptr [ %49, %47 ]
  %.lcssa11 = phi i8 [ %50, %47 ]
  %53 = load i32, ptr %5, align 4, !tbaa !7
  %54 = add i8 %.lcssa11, -48
  %55 = icmp ult i8 %54, 10
  br i1 %55, label %56, label %68

56:                                               ; preds = %65, %52
  %57 = phi ptr [ %.lcssa10, %65 ], [ %.lcssa12, %52 ]
  %58 = phi i32 [ %59, %65 ], [ %53, %52 ]
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %5, align 4, !tbaa !7
  br label %60

60:                                               ; preds = %60, %56
  %61 = phi ptr [ %57, %56 ], [ %62, %60 ]
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !55
  %64 = icmp eq i8 %63, 32
  br i1 %64, label %60, label %65, !llvm.loop !60

65:                                               ; preds = %60
  %.lcssa10 = phi ptr [ %62, %60 ]
  %.lcssa9 = phi i8 [ %63, %60 ]
  %66 = add i8 %.lcssa9, -48
  %67 = icmp ult i8 %66, 10
  br i1 %67, label %56, label %68, !llvm.loop !61

68:                                               ; preds = %65, %52, %43, %35
  %69 = phi i32 [ %36, %35 ], [ %53, %52 ], [ %59, %65 ], [ %42, %43 ]
  %70 = phi ptr [ %.lcssa15, %35 ], [ %.lcssa15, %52 ], [ %.lcssa15, %65 ], [ %45, %43 ]
  %71 = sdiv i32 %69, %1
  %72 = mul nsw i32 %71, %1
  %73 = srem i32 %69, %1
  %74 = icmp slt i32 %73, 0
  %75 = ashr i32 %73, 31
  %76 = add nsw i32 %75, %71
  %77 = select i1 %74, i32 %1, i32 0
  %78 = add nsw i32 %77, %73
  %79 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 %76, ptr %79, align 4, !tbaa !7
  %80 = add nsw i32 %0, 1
  %81 = add nsw i32 %1, -1
  br label %82

82:                                               ; preds = %104, %68
  %83 = phi ptr [ %70, %68 ], [ %108, %104 ]
  %84 = phi i32 [ 2, %68 ], [ %105, %104 ]
  %85 = phi i32 [ 0, %68 ], [ %106, %104 ]
  %86 = phi i32 [ %78, %68 ], [ %107, %104 ]
  %87 = load i8, ptr %83, align 1, !tbaa !55
  %88 = sext i8 %87 to i32
  switch i8 %87, label %89 [
    i8 0, label %109
    i8 46, label %104
    i8 32, label %104
  ]

89:                                               ; preds = %82
  %90 = add i8 %87, -58
  %91 = icmp ult i8 %90, -10
  br i1 %91, label %109, label %92

92:                                               ; preds = %89
  %93 = mul nsw i32 %85, 10
  %94 = add i32 %93, -48
  %95 = add i32 %94, %88
  %96 = add nsw i32 %86, -1
  %97 = icmp slt i32 %86, 1
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = icmp sgt i32 %84, %80
  br i1 %99, label %129, label %100

100:                                              ; preds = %98
  %101 = add nsw i32 %84, 1
  %102 = sext i32 %84 to i64
  %103 = getelementptr inbounds i32, ptr %3, i64 %102
  store i32 %95, ptr %103, align 4, !tbaa !7
  br label %104

104:                                              ; preds = %100, %92, %82, %82
  %105 = phi i32 [ %101, %100 ], [ %84, %92 ], [ %84, %82 ], [ %84, %82 ]
  %106 = phi i32 [ 0, %100 ], [ %95, %92 ], [ %85, %82 ], [ %85, %82 ]
  %107 = phi i32 [ %81, %100 ], [ %96, %92 ], [ %86, %82 ], [ %86, %82 ]
  %108 = getelementptr inbounds i8, ptr %83, i64 1
  br label %82, !llvm.loop !62

109:                                              ; preds = %89, %82
  %.lcssa7 = phi i32 [ %84, %89 ], [ %84, %82 ]
  %.lcssa5 = phi i32 [ %85, %89 ], [ %85, %82 ]
  %.lcssa3 = phi i32 [ %86, %89 ], [ %86, %82 ]
  %110 = icmp sgt i32 %.lcssa3, -1
  br i1 %110, label %111, label %129

111:                                              ; preds = %109
  %112 = and i32 %.lcssa3, -4
  %113 = insertelement <4 x i32> poison, i32 %.lcssa3, i64 0
  %114 = shufflevector <4 x i32> %113, <4 x i32> poison, <4 x i32> zeroinitializer
  %115 = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %.lcssa5, i64 0
  br label %116

116:                                              ; preds = %116, %111
  %117 = phi i32 [ 0, %111 ], [ %120, %116 ]
  %118 = phi <4 x i32> [ %115, %111 ], [ %119, %116 ]
  %119 = mul <4 x i32> %118, <i32 10, i32 10, i32 10, i32 10>
  %120 = add i32 %117, 4
  %121 = icmp eq i32 %117, %112
  br i1 %121, label %122, label %116, !llvm.loop !63

122:                                              ; preds = %116
  %.lcssa2 = phi i32 [ %117, %116 ]
  %.lcssa1 = phi <4 x i32> [ %118, %116 ]
  %.lcssa = phi <4 x i32> [ %119, %116 ]
  %123 = insertelement <4 x i32> poison, i32 %.lcssa2, i64 0
  %124 = shufflevector <4 x i32> %123, <4 x i32> poison, <4 x i32> zeroinitializer
  %125 = or <4 x i32> %124, <i32 0, i32 1, i32 2, i32 3>, !ddbg !109
  %126 = icmp ugt <4 x i32> %125, %114
  %127 = select <4 x i1> %126, <4 x i32> %.lcssa1, <4 x i32> %.lcssa
  %128 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %127)
  br label %129

129:                                              ; preds = %122, %109, %98
  %.lcssa8 = phi i32 [ %.lcssa7, %122 ], [ %.lcssa7, %109 ], [ %84, %98 ]
  %130 = phi i32 [ %.lcssa5, %109 ], [ %128, %122 ], [ %95, %98 ]
  %131 = icmp sgt i32 %.lcssa8, %80
  br i1 %131, label %142, label %132

132:                                              ; preds = %129
  %133 = sext i32 %.lcssa8 to i64
  %134 = add i32 %0, 2
  br label %135

135:                                              ; preds = %135, %132
  %136 = phi i64 [ %133, %132 ], [ %138, %135 ]
  %137 = phi i32 [ %130, %132 ], [ 0, %135 ]
  %138 = add nsw i64 %136, 1
  %139 = getelementptr inbounds i32, ptr %3, i64 %136
  store i32 %137, ptr %139, align 4, !tbaa !7
  %140 = trunc i64 %138 to i32
  %141 = icmp eq i32 %134, %140
  br i1 %141, label %142, label %135, !llvm.loop !66

142:                                              ; preds = %135, %129
  %143 = getelementptr inbounds i32, ptr %3, i64 2
  %144 = load i32, ptr %143, align 4, !tbaa !7
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i32 0, ptr %3, align 4, !tbaa !7
  store i32 0, ptr %79, align 4, !tbaa !7
  br label %147

147:                                              ; preds = %146, %142
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @mp_sqrt(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #8 {
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #21
  %13 = load i32, ptr %2, align 4, !tbaa !7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %57, label %15

15:                                               ; preds = %11
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %15
  %18 = icmp slt i32 %0, -1
  br i1 %18, label %57, label %19

19:                                               ; preds = %17
  %20 = add i32 %0, 1
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 2
  %23 = add nuw nsw i64 %22, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 0, i64 %23, i1 false), !tbaa !7
  br label %57

24:                                               ; preds = %15
  %25 = sitofp i32 %1 to double
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi i32 [ 1, %24 ], [ %30, %26 ]
  %28 = phi double [ %25, %24 ], [ %29, %26 ]
  %29 = fmul double %28, %28
  %30 = shl i32 %27, 1
  %31 = fmul double %29, 0x3CB0000000000000
  %32 = fcmp olt double %31, 1.000000e+00
  %33 = icmp slt i32 %30, %6
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %26, label %35, !llvm.loop !67

35:                                               ; preds = %26
  %.lcssa = phi i32 [ %30, %26 ]
  %36 = add nsw i32 %.lcssa, 2
  %37 = tail call i32 @llvm.smin.i32(i32 %36, i32 %0)
  tail call void @mp_sqrt_init(i32 noundef %37, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #20
  store i32 0, ptr %12, align 4, !tbaa !7
  br label %38

38:                                               ; preds = %38, %35
  %39 = phi i32 [ %.lcssa, %35 ], [ %55, %38 ]
  %40 = phi i32 [ 8, %35 ], [ %52, %38 ]
  %41 = add nsw i32 %39, 2
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 %0)
  %43 = call i32 @mp_sqrt_newton(i32 noundef %42, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %39, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %12) #20
  %44 = mul nsw i32 %40, %39
  %45 = icmp slt i32 %44, %6
  %46 = add nsw i32 %42, -2
  %47 = shl nsw i32 %43, 1
  %48 = icmp sle i32 %47, %46
  %49 = mul nsw i32 %43, 3
  %50 = icmp slt i32 %49, %46
  %51 = select i1 %45, i1 %50, i1 %48
  %52 = select i1 %45, i32 %40, i32 0
  %53 = zext i1 %51 to i32
  %54 = ashr exact i32 %39, %53
  %55 = shl i32 %54, 1
  %56 = icmp sgt i32 %55, %6
  br i1 %56, label %57, label %38, !llvm.loop !68

57:                                               ; preds = %38, %19, %17, %11
  %58 = phi i32 [ -1, %11 ], [ 0, %17 ], [ 0, %19 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #21
  ret i32 %58
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @mp_unsgn_imul(i32 noundef %0, double noundef %1, ptr nocapture noundef readonly %2, double noundef %3, ptr nocapture noundef %4) #2 {
  %6 = fdiv double 1.000000e+00, %1
  %7 = icmp sgt i32 %0, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  %9 = fneg double %1
  %10 = zext i32 %0 to i64
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi i64 [ %10, %8 ], [ %26, %11 ]
  %13 = phi i32 [ 0, %8 ], [ %21, %11 ]
  %14 = getelementptr inbounds i32, ptr %2, i64 %12
  %15 = load i32, ptr %14, align 4, !tbaa !7
  %16 = sitofp i32 %15 to double
  %17 = sitofp i32 %13 to double
  %18 = tail call double @llvm.fmuladd.f64(double %3, double %16, double %17)
  %19 = fadd double %18, 5.000000e-01
  %20 = fmul double %6, %19
  %21 = fptosi double %20 to i32
  %22 = sitofp i32 %21 to double
  %23 = tail call double @llvm.fmuladd.f64(double %9, double %22, double %19)
  %24 = fptosi double %23 to i32
  %25 = getelementptr inbounds i32, ptr %4, i64 %12
  store i32 %24, ptr %25, align 4, !tbaa !7
  %26 = add nsw i64 %12, -1
  %27 = icmp ugt i64 %12, 1
  br i1 %27, label %11, label %28, !llvm.loop !69

28:                                               ; preds = %11, %5
  %29 = phi i32 [ 0, %5 ], [ %21, %11 ]
  %30 = sitofp i32 %29 to double
  %31 = fadd double %30, 5.000000e-01
  %32 = fcmp ogt double %31, 1.000000e+00
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %2, align 4, !tbaa !7
  store i32 %34, ptr %4, align 4, !tbaa !7
  br label %86

35:                                               ; preds = %35, %28
  %36 = phi double [ %38, %35 ], [ %31, %28 ]
  %37 = phi i32 [ %39, %35 ], [ 0, %28 ]
  %38 = fmul double %6, %36
  %39 = add nuw nsw i32 %37, 1
  %40 = fcmp ogt double %38, 1.000000e+00
  br i1 %40, label %35, label %41, !llvm.loop !70

41:                                               ; preds = %35
  %.lcssa2 = phi i32 [ %37, %35 ]
  %.lcssa1 = phi i32 [ %39, %35 ]
  %42 = load i32, ptr %2, align 4, !tbaa !7
  %43 = add nsw i32 %42, %.lcssa1
  store i32 %43, ptr %4, align 4, !tbaa !7
  %44 = icmp slt i32 %.lcssa2, %0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = icmp slt i32 %.lcssa1, %0
  br i1 %46, label %47, label %60

47:                                               ; preds = %45
  %48 = sext i32 %0 to i64
  %49 = zext i32 %.lcssa1 to i64
  br label %65

50:                                               ; preds = %50, %41
  %51 = phi i32 [ %56, %50 ], [ %.lcssa1, %41 ]
  %52 = phi i32 [ %55, %50 ], [ %29, %41 ]
  %53 = sitofp i32 %52 to double
  %54 = tail call double @llvm.fmuladd.f64(double %6, double %53, double 5.000000e-01)
  %55 = fptosi double %54 to i32
  %56 = add nsw i32 %51, -1
  %57 = icmp sgt i32 %56, %0
  br i1 %57, label %50, label %58, !llvm.loop !71

58:                                               ; preds = %50
  %.lcssa = phi i32 [ %55, %50 ]
  %59 = icmp sgt i32 %0, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %65, %58, %45
  %61 = phi i32 [ %.lcssa, %58 ], [ %29, %45 ], [ %29, %65 ]
  %62 = phi i32 [ %0, %58 ], [ %.lcssa1, %45 ], [ %.lcssa1, %65 ]
  %63 = fneg double %1
  %64 = zext i32 %62 to i64
  br label %73

65:                                               ; preds = %65, %47
  %66 = phi i64 [ %48, %47 ], [ %71, %65 ]
  %67 = sub nsw i64 %66, %49
  %68 = getelementptr inbounds i32, ptr %4, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !7
  %70 = getelementptr inbounds i32, ptr %4, i64 %66
  store i32 %69, ptr %70, align 4, !tbaa !7
  %71 = add nsw i64 %66, -1
  %72 = icmp sgt i64 %71, %49
  br i1 %72, label %65, label %60, !llvm.loop !72

73:                                               ; preds = %73, %60
  %74 = phi i64 [ %64, %60 ], [ %84, %73 ]
  %75 = phi i32 [ %61, %60 ], [ %79, %73 ]
  %76 = sitofp i32 %75 to double
  %77 = fadd double %76, 5.000000e-01
  %78 = fmul double %6, %77
  %79 = fptosi double %78 to i32
  %80 = sitofp i32 %79 to double
  %81 = tail call double @llvm.fmuladd.f64(double %63, double %80, double %77)
  %82 = fptosi double %81 to i32
  %83 = getelementptr inbounds i32, ptr %4, i64 %74
  store i32 %82, ptr %83, align 4, !tbaa !7
  %84 = add nsw i64 %74, -1
  %85 = icmp ugt i64 %74, 1
  br i1 %85, label %73, label %86, !llvm.loop !73

86:                                               ; preds = %73, %58, %33
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mp_add(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) #16 {
  %6 = getelementptr inbounds i32, ptr %2, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !7
  %8 = getelementptr inbounds i32, ptr %3, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !7
  %10 = sub nsw i32 %7, %9
  %11 = icmp slt i32 %10, 0
  %12 = select i1 %11, i32 %9, i32 %7
  %13 = load i32, ptr %2, align 4, !tbaa !7
  %14 = load i32, ptr %3, align 4, !tbaa !7
  %15 = mul nsw i32 %14, %13
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %40

17:                                               ; preds = %5
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = add nsw i32 %14, %13
  %21 = add nsw i32 %9, %7
  br label %24

22:                                               ; preds = %17
  %23 = icmp sgt i32 %10, -1
  br i1 %23, label %24, label %33

24:                                               ; preds = %22, %19
  %25 = phi i32 [ 0, %19 ], [ %10, %22 ]
  %26 = phi i32 [ %21, %19 ], [ %12, %22 ]
  %27 = phi i32 [ %20, %19 ], [ %13, %22 ]
  %28 = getelementptr inbounds i32, ptr %2, i64 2
  %29 = getelementptr inbounds i32, ptr %3, i64 2
  %30 = getelementptr inbounds i32, ptr %4, i64 2
  %31 = tail call i32 @mp_unexp_add(i32 noundef %0, i32 noundef %1, i32 noundef %25, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %30) #20, !range !74
  %32 = add nsw i32 %31, %26
  br label %76

33:                                               ; preds = %22
  %34 = sub nsw i32 0, %10
  %35 = getelementptr inbounds i32, ptr %3, i64 2
  %36 = getelementptr inbounds i32, ptr %2, i64 2
  %37 = getelementptr inbounds i32, ptr %4, i64 2
  %38 = tail call i32 @mp_unexp_add(i32 noundef %0, i32 noundef %1, i32 noundef %34, ptr noundef nonnull %35, ptr noundef nonnull %36, ptr noundef nonnull %37) #20, !range !74
  %39 = add nsw i32 %38, %12
  br label %76

40:                                               ; preds = %5
  %41 = icmp sgt i32 %0, -1
  br i1 %41, label %42, label %62

42:                                               ; preds = %40
  %43 = zext i32 %0 to i64
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi i64 [ 0, %42 ], [ %52, %44 ]
  %46 = getelementptr inbounds i32, ptr %6, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !7
  %48 = getelementptr inbounds i32, ptr %8, i64 %45
  %49 = load i32, ptr %48, align 4, !tbaa !7
  %50 = sub nsw i32 %47, %49
  %51 = freeze i32 %50
  %52 = add nuw nsw i64 %45, 1
  %53 = icmp ult i64 %45, %43
  %54 = icmp eq i32 %51, 0
  %55 = and i1 %53, %54
  br i1 %55, label %44, label %56, !llvm.loop !75

56:                                               ; preds = %44
  %.lcssa2 = phi i32 [ %47, %44 ]
  %.lcssa1 = phi i32 [ %49, %44 ]
  %.lcssa = phi i32 [ %51, %44 ]
  %57 = icmp slt i32 %.lcssa, 1
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  %59 = icmp eq i32 %.lcssa2, %.lcssa1
  br i1 %59, label %62, label %60

60:                                               ; preds = %58
  %61 = sub nsw i32 0, %10
  br label %62

62:                                               ; preds = %60, %58, %56, %40
  %63 = phi ptr [ %3, %60 ], [ %2, %56 ], [ %2, %40 ], [ %2, %58 ]
  %64 = phi ptr [ %2, %60 ], [ %3, %56 ], [ %3, %40 ], [ %3, %58 ]
  %65 = phi i32 [ %61, %60 ], [ %10, %56 ], [ %10, %40 ], [ %10, %58 ]
  %66 = phi i32 [ -1, %60 ], [ 1, %56 ], [ 0, %40 ], [ 0, %58 ]
  %67 = getelementptr inbounds i32, ptr %63, i64 2
  %68 = getelementptr inbounds i32, ptr %64, i64 2
  %69 = getelementptr inbounds i32, ptr %4, i64 2
  %70 = tail call i32 @mp_unexp_sub(i32 noundef %0, i32 noundef %1, i32 noundef %65, ptr noundef nonnull %67, ptr noundef nonnull %68, ptr noundef nonnull %69) #20
  %71 = sub nsw i32 %12, %70
  %72 = load i32, ptr %2, align 4, !tbaa !7
  %73 = mul nsw i32 %72, %66
  %74 = icmp eq i32 %70, %0
  %75 = select i1 %74, i32 0, i32 %73
  br label %76

76:                                               ; preds = %62, %33, %24
  %77 = phi i32 [ %27, %24 ], [ %13, %33 ], [ %75, %62 ]
  %78 = phi i32 [ %32, %24 ], [ %39, %33 ], [ %71, %62 ]
  %79 = icmp eq i32 %77, 0
  %80 = select i1 %79, i32 0, i32 %78
  store i32 %77, ptr %4, align 4, !tbaa !7
  %81 = getelementptr inbounds i32, ptr %4, i64 1
  store i32 %80, ptr %81, align 4, !tbaa !7
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mp_sub(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) #16 {
  %6 = getelementptr inbounds i32, ptr %2, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !7
  %8 = getelementptr inbounds i32, ptr %3, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !7
  %10 = sub nsw i32 %7, %9
  %11 = icmp slt i32 %10, 0
  %12 = select i1 %11, i32 %9, i32 %7
  %13 = load i32, ptr %2, align 4, !tbaa !7
  %14 = load i32, ptr %3, align 4, !tbaa !7
  %15 = mul nsw i32 %14, %13
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %40

17:                                               ; preds = %5
  %18 = icmp slt i32 %15, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = sub nsw i32 %13, %14
  %21 = add nsw i32 %9, %7
  br label %24

22:                                               ; preds = %17
  %23 = icmp sgt i32 %10, -1
  br i1 %23, label %24, label %33

24:                                               ; preds = %22, %19
  %25 = phi i32 [ 0, %19 ], [ %10, %22 ]
  %26 = phi i32 [ %21, %19 ], [ %12, %22 ]
  %27 = phi i32 [ %20, %19 ], [ %13, %22 ]
  %28 = getelementptr inbounds i32, ptr %2, i64 2
  %29 = getelementptr inbounds i32, ptr %3, i64 2
  %30 = getelementptr inbounds i32, ptr %4, i64 2
  %31 = tail call i32 @mp_unexp_add(i32 noundef %0, i32 noundef %1, i32 noundef %25, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %30) #20, !range !74
  %32 = add nsw i32 %31, %26
  br label %76

33:                                               ; preds = %22
  %34 = sub nsw i32 0, %10
  %35 = getelementptr inbounds i32, ptr %3, i64 2
  %36 = getelementptr inbounds i32, ptr %2, i64 2
  %37 = getelementptr inbounds i32, ptr %4, i64 2
  %38 = tail call i32 @mp_unexp_add(i32 noundef %0, i32 noundef %1, i32 noundef %34, ptr noundef nonnull %35, ptr noundef nonnull %36, ptr noundef nonnull %37) #20, !range !74
  %39 = add nsw i32 %38, %12
  br label %76

40:                                               ; preds = %5
  %41 = icmp sgt i32 %0, -1
  br i1 %41, label %42, label %62

42:                                               ; preds = %40
  %43 = zext i32 %0 to i64
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi i64 [ 0, %42 ], [ %52, %44 ]
  %46 = getelementptr inbounds i32, ptr %6, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !7
  %48 = getelementptr inbounds i32, ptr %8, i64 %45
  %49 = load i32, ptr %48, align 4, !tbaa !7
  %50 = sub nsw i32 %47, %49
  %51 = freeze i32 %50
  %52 = add nuw nsw i64 %45, 1
  %53 = icmp ult i64 %45, %43
  %54 = icmp eq i32 %51, 0
  %55 = and i1 %53, %54
  br i1 %55, label %44, label %56, !llvm.loop !75

56:                                               ; preds = %44
  %.lcssa2 = phi i32 [ %47, %44 ]
  %.lcssa1 = phi i32 [ %49, %44 ]
  %.lcssa = phi i32 [ %51, %44 ]
  %57 = icmp slt i32 %.lcssa, 1
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  %59 = icmp eq i32 %.lcssa2, %.lcssa1
  br i1 %59, label %62, label %60

60:                                               ; preds = %58
  %61 = sub nsw i32 0, %10
  br label %62

62:                                               ; preds = %60, %58, %56, %40
  %63 = phi ptr [ %3, %60 ], [ %2, %56 ], [ %2, %40 ], [ %2, %58 ]
  %64 = phi ptr [ %2, %60 ], [ %3, %56 ], [ %3, %40 ], [ %3, %58 ]
  %65 = phi i32 [ %61, %60 ], [ %10, %56 ], [ %10, %40 ], [ %10, %58 ]
  %66 = phi i32 [ -1, %60 ], [ 1, %56 ], [ 0, %40 ], [ 0, %58 ]
  %67 = getelementptr inbounds i32, ptr %63, i64 2
  %68 = getelementptr inbounds i32, ptr %64, i64 2
  %69 = getelementptr inbounds i32, ptr %4, i64 2
  %70 = tail call i32 @mp_unexp_sub(i32 noundef %0, i32 noundef %1, i32 noundef %65, ptr noundef nonnull %67, ptr noundef nonnull %68, ptr noundef nonnull %69) #20
  %71 = sub nsw i32 %12, %70
  %72 = load i32, ptr %2, align 4, !tbaa !7
  %73 = mul nsw i32 %72, %66
  %74 = icmp eq i32 %70, %0
  %75 = select i1 %74, i32 0, i32 %73
  br label %76

76:                                               ; preds = %62, %33, %24
  %77 = phi i32 [ %27, %24 ], [ %13, %33 ], [ %75, %62 ]
  %78 = phi i32 [ %32, %24 ], [ %39, %33 ], [ %71, %62 ]
  %79 = icmp eq i32 %77, 0
  %80 = select i1 %79, i32 0, i32 %78
  store i32 %77, ptr %4, align 4, !tbaa !7
  %81 = getelementptr inbounds i32, ptr %4, i64 1
  store i32 %80, ptr %81, align 4, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @mp_idiv_2(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #4 {
  %5 = load i32, ptr %2, align 4, !tbaa !7
  store i32 %5, ptr %3, align 4, !tbaa !7
  %6 = getelementptr inbounds i32, ptr %2, i64 2
  %7 = load i32, ptr %6, align 4, !tbaa !7
  %8 = icmp eq i32 %7, 1
  %9 = sext i1 %8 to i32
  %10 = zext i1 %8 to i32
  %11 = getelementptr inbounds i32, ptr %2, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !7
  %13 = sub nsw i32 %12, %10
  %14 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 %13, ptr %14, align 4, !tbaa !7
  %15 = add nsw i32 %0, 1
  %16 = sub nsw i32 %15, %10
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %37, label %18

18:                                               ; preds = %4
  %19 = zext i1 %8 to i64
  %20 = add i32 %0, 2
  %21 = sub i32 %20, %10
  %22 = zext i32 %21 to i64
  br label %23

23:                                               ; preds = %23, %18
  %24 = phi i64 [ 2, %18 ], [ %35, %23 ]
  %25 = phi i32 [ %9, %18 ], [ %32, %23 ]
  %26 = add nuw nsw i64 %24, %19
  %27 = getelementptr inbounds i32, ptr %2, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !7
  %29 = and i32 %25, %1
  %30 = add nsw i32 %28, %29
  %31 = and i32 %30, 1
  %32 = sub nsw i32 0, %31
  %33 = ashr i32 %30, 1
  %34 = getelementptr inbounds i32, ptr %3, i64 %24
  store i32 %33, ptr %34, align 4, !tbaa !7
  %35 = add nuw nsw i64 %24, 1
  %36 = icmp eq i64 %35, %22
  br i1 %36, label %37, label %23, !llvm.loop !76

37:                                               ; preds = %23, %4
  %38 = phi i32 [ %9, %4 ], [ %32, %23 ]
  br i1 %8, label %39, label %44

39:                                               ; preds = %37
  %40 = and i32 %38, %1
  %41 = ashr i32 %40, 1
  %42 = sext i32 %15 to i64
  %43 = getelementptr inbounds i32, ptr %3, i64 %42
  store i32 %41, ptr %43, align 4, !tbaa !7
  br label %44

44:                                               ; preds = %39, %37
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @mp_mul(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr nocapture noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #8 {
  %13 = ashr i32 %6, 1
  %14 = sext i32 %13 to i64
  %15 = sext i32 %0 to i64
  %16 = add nsw i32 %13, 1
  %17 = tail call i32 @llvm.smax.i32(i32 %0, i32 %16)
  br label %18

18:                                               ; preds = %22, %12
  %19 = phi i64 [ %20, %22 ], [ %14, %12 ]
  %20 = add nsw i64 %19, 1
  %21 = icmp slt i64 %20, %15
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = add nsw i64 %19, 3
  %24 = getelementptr inbounds i32, ptr %2, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !7
  %26 = getelementptr inbounds i32, ptr %3, i64 %23
  %27 = load i32, ptr %26, align 4, !tbaa !7
  %28 = sub i32 0, %27
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %18, label %30, !llvm.loop !77

30:                                               ; preds = %22
  %.lcssa1 = phi i64 [ %20, %22 ]
  %31 = trunc i64 %.lcssa1 to i32
  br label %32

32:                                               ; preds = %30, %18
  %33 = phi i32 [ %31, %30 ], [ %17, %18 ]
  %34 = sdiv i32 %0, 2
  %35 = add nsw i32 %34, 1
  %36 = sub nsw i32 %0, %33
  %37 = tail call i32 @llvm.smax.i32(i32 %35, i32 %36)
  tail call void @mp_mul_i2d(i32 noundef %0, i32 noundef %1, i32 noundef %6, i32 noundef 0, ptr noundef %2, ptr noundef %7) #20
  %38 = getelementptr inbounds double, ptr %7, i64 1
  tail call void @rdft(i32 noundef %6, i32 noundef 1, ptr noundef nonnull %38, ptr noundef %10, ptr noundef %11) #19
  tail call void @mp_mul_i2d(i32 noundef %0, i32 noundef %1, i32 noundef %6, i32 noundef %33, ptr noundef %3, ptr noundef %9) #20
  %39 = getelementptr inbounds double, ptr %9, i64 1
  tail call void @rdft(i32 noundef %6, i32 noundef 1, ptr noundef nonnull %39, ptr noundef %10, ptr noundef %11) #19
  tail call void @mp_mul_cmul(i32 noundef %6, ptr noundef %7, ptr noundef %9) #20
  tail call void @mp_mul_i2d(i32 noundef %0, i32 noundef %1, i32 noundef %6, i32 noundef 0, ptr noundef %3, ptr noundef %8) #20
  %40 = getelementptr inbounds double, ptr %8, i64 1
  tail call void @rdft(i32 noundef %6, i32 noundef 1, ptr noundef nonnull %40, ptr noundef %10, ptr noundef %11) #19
  tail call void @mp_mul_cmul(i32 noundef %6, ptr noundef %8, ptr noundef %7) #20
  tail call void @rdft(i32 noundef %6, i32 noundef -1, ptr noundef nonnull %38, ptr noundef %10, ptr noundef %11) #19
  tail call void @mp_mul_d2i(i32 noundef %0, i32 noundef %1, i32 noundef %6, ptr noundef %7, ptr noundef %5) #20
  tail call void @mp_mul_i2d(i32 noundef %0, i32 noundef %1, i32 noundef %6, i32 noundef %33, ptr noundef %2, ptr noundef %7) #20
  tail call void @rdft(i32 noundef %6, i32 noundef 1, ptr noundef nonnull %38, ptr noundef %10, ptr noundef %11) #19
  tail call void @mp_mul_cmuladd(i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #20
  tail call void @rdft(i32 noundef %6, i32 noundef -1, ptr noundef nonnull %39, ptr noundef %10, ptr noundef %11) #19
  tail call void @mp_mul_d2i(i32 noundef %37, i32 noundef %1, i32 noundef %6, ptr noundef %9, ptr noundef %4) #20
  tail call void @mp_add(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5, ptr noundef %4) #20
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @mp_squh(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #8 {
  tail call void @mp_mul_i2d(i32 noundef %0, i32 noundef %1, i32 noundef %4, i32 noundef 0, ptr noundef %2, ptr noundef %5) #20
  %9 = getelementptr inbounds double, ptr %5, i64 1
  tail call void @rdft(i32 noundef %4, i32 noundef 1, ptr noundef nonnull %9, ptr noundef %6, ptr noundef %7) #19
  tail call void @mp_mul_csqu(i32 noundef %4, ptr noundef %5) #20
  tail call void @rdft(i32 noundef %4, i32 noundef -1, ptr noundef nonnull %9, ptr noundef %6, ptr noundef %7) #19
  tail call void @mp_mul_d2i(i32 noundef %0, i32 noundef %1, i32 noundef %4, ptr noundef %5, ptr noundef %3) #20
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @mp_inv(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #8 {
  %12 = load i32, ptr %2, align 4, !tbaa !7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %47, label %14

14:                                               ; preds = %11
  %15 = sitofp i32 %1 to double
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ 1, %14 ], [ %20, %16 ]
  %18 = phi double [ %15, %14 ], [ %19, %16 ]
  %19 = fmul double %18, %18
  %20 = shl i32 %17, 1
  %21 = fmul double %19, 0x3CB0000000000000
  %22 = fcmp olt double %21, 1.000000e+00
  %23 = icmp slt i32 %20, %6
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %16, label %25, !llvm.loop !67

25:                                               ; preds = %16
  %.lcssa = phi i32 [ %20, %16 ]
  %26 = add nsw i32 %.lcssa, 2
  %27 = tail call i32 @llvm.smin.i32(i32 %26, i32 %0)
  tail call void @mp_inv_init(i32 noundef %27, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) #20
  br label %28

28:                                               ; preds = %28, %25
  %29 = phi i32 [ %.lcssa, %25 ], [ %45, %28 ]
  %30 = phi i32 [ 8, %25 ], [ %42, %28 ]
  %31 = add nsw i32 %29, 2
  %32 = tail call i32 @llvm.smin.i32(i32 %31, i32 %0)
  %33 = tail call i32 @mp_inv_newton(i32 noundef %32, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %29, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #20
  %34 = mul nsw i32 %30, %29
  %35 = icmp slt i32 %34, %6
  %36 = add nsw i32 %32, -2
  %37 = shl nsw i32 %33, 1
  %38 = icmp sle i32 %37, %36
  %39 = mul nsw i32 %33, 3
  %40 = icmp slt i32 %39, %36
  %41 = select i1 %35, i1 %40, i1 %38
  %42 = select i1 %35, i32 %30, i32 0
  %43 = zext i1 %41 to i32
  %44 = ashr exact i32 %29, %43
  %45 = shl i32 %44, 1
  %46 = icmp sgt i32 %45, %6
  br i1 %46, label %47, label %28, !llvm.loop !78

47:                                               ; preds = %28, %11
  %48 = phi i32 [ -1, %11 ], [ 0, %28 ]
  ret i32 %48
}

; Function Attrs: nounwind optsize uwtable
define internal void @mp_squ(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #8 {
  %11 = ashr i32 %5, 1
  %12 = sext i32 %11 to i64
  %13 = sext i32 %0 to i64
  %14 = add nsw i32 %11, 1
  %15 = tail call i32 @llvm.smax.i32(i32 %0, i32 %14)
  br label %16

16:                                               ; preds = %20, %10
  %17 = phi i64 [ %18, %20 ], [ %12, %10 ]
  %18 = add nsw i64 %17, 1
  %19 = icmp slt i64 %18, %13
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = add nsw i64 %17, 3
  %22 = getelementptr inbounds i32, ptr %2, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %16, label %25, !llvm.loop !79

25:                                               ; preds = %20
  %.lcssa1 = phi i64 [ %18, %20 ]
  %26 = trunc i64 %.lcssa1 to i32
  br label %27

27:                                               ; preds = %25, %16
  %28 = phi i32 [ %26, %25 ], [ %15, %16 ]
  %29 = sdiv i32 %0, 2
  %30 = add nsw i32 %29, 1
  %31 = sub nsw i32 %0, %28
  %32 = tail call i32 @llvm.smax.i32(i32 %30, i32 %31)
  tail call void @mp_mul_i2d(i32 noundef %0, i32 noundef %1, i32 noundef %5, i32 noundef 0, ptr noundef %2, ptr noundef %6) #20
  %33 = getelementptr inbounds double, ptr %6, i64 1
  tail call void @rdft(i32 noundef %5, i32 noundef 1, ptr noundef nonnull %33, ptr noundef %8, ptr noundef %9) #19
  tail call void @mp_mul_i2d(i32 noundef %0, i32 noundef %1, i32 noundef %5, i32 noundef %28, ptr noundef %2, ptr noundef %7) #20
  %34 = getelementptr inbounds double, ptr %7, i64 1
  tail call void @rdft(i32 noundef %5, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %8, ptr noundef %9) #19
  tail call void @mp_mul_cmul(i32 noundef %5, ptr noundef %6, ptr noundef %7) #20
  tail call void @rdft(i32 noundef %5, i32 noundef -1, ptr noundef nonnull %34, ptr noundef %8, ptr noundef %9) #19
  tail call void @mp_mul_d2i(i32 noundef %32, i32 noundef %1, i32 noundef %5, ptr noundef %7, ptr noundef %4) #20
  tail call void @mp_add(i32 noundef %32, i32 noundef %1, ptr noundef %4, ptr noundef %4, ptr noundef %4) #20
  tail call void @mp_mul_csqu(i32 noundef %5, ptr noundef %6) #20
  tail call void @rdft(i32 noundef %5, i32 noundef -1, ptr noundef nonnull %33, ptr noundef %8, ptr noundef %9) #19
  tail call void @mp_mul_d2i(i32 noundef %0, i32 noundef %1, i32 noundef %5, ptr noundef %6, ptr noundef %3) #20
  tail call void @mp_add(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %3) #20
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal i32 @mp_idiv(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #2 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %5
  %8 = icmp sgt i32 %3, 0
  %9 = load i32, ptr %2, align 4, !tbaa !7
  %10 = sub nsw i32 0, %9
  %11 = select i1 %8, i32 %9, i32 %10
  store i32 %11, ptr %4, align 4
  %12 = load i32, ptr %2, align 4, !tbaa !7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %7
  %15 = icmp slt i32 %0, -1
  br i1 %15, label %27, label %16

16:                                               ; preds = %14
  %17 = add i32 %0, 1
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 2
  %20 = add nuw nsw i64 %19, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %4, i8 0, i64 %20, i1 false), !tbaa !7
  br label %27

21:                                               ; preds = %7
  %22 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %23 = sitofp i32 %1 to double
  %24 = getelementptr inbounds i32, ptr %2, i64 1
  %25 = sitofp i32 %22 to double
  %26 = getelementptr inbounds i32, ptr %4, i64 1
  tail call void @mp_unsgn_idiv(i32 noundef %0, double noundef %23, ptr noundef nonnull %24, double noundef %25, ptr noundef nonnull %26) #20
  br label %27

27:                                               ; preds = %21, %16, %14, %5
  %28 = phi i32 [ 0, %21 ], [ -1, %5 ], [ 0, %14 ], [ 0, %16 ]
  ret i32 %28
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind optsize uwtable
define internal void @mp_sprintf(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) #15 {
  %5 = load i32, ptr %2, align 4, !tbaa !7
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 45, ptr %3, align 1, !tbaa !55
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %8, %7 ], [ %3, %4 ]
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = getelementptr inbounds i32, ptr %2, i64 2
  %14 = load i32, ptr %13, align 4, !tbaa !7
  %15 = zext i32 %1 to i64
  br label %16

16:                                               ; preds = %16, %12
  %17 = phi i64 [ %15, %12 ], [ %28, %16 ]
  %18 = phi i32 [ %1, %12 ], [ %27, %16 ]
  %19 = phi i32 [ %14, %12 ], [ %21, %16 ]
  %20 = srem i32 %19, 10
  %21 = sdiv i32 %19, 10
  %22 = trunc i32 %20 to i8
  %23 = add nsw i8 %22, 48
  %24 = getelementptr inbounds i8, ptr %10, i64 %17
  store i8 %23, ptr %24, align 1, !tbaa !55
  %25 = icmp eq i32 %20, 0
  %26 = trunc i64 %17 to i32
  %27 = select i1 %25, i32 %18, i32 %26
  %28 = add nsw i64 %17, -1
  %29 = icmp ugt i64 %17, 1
  br i1 %29, label %16, label %30, !llvm.loop !80

30:                                               ; preds = %16, %9
  %31 = phi i32 [ %1, %9 ], [ %27, %16 ]
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %10, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !55
  store i8 %34, ptr %10, align 1, !tbaa !55
  %35 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 46, ptr %35, align 1, !tbaa !55
  %36 = sub nsw i32 %1, %31
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %50, label %38

38:                                               ; preds = %30
  %39 = add i32 %1, 1
  %40 = sub i32 %39, %31
  %41 = zext i32 %40 to i64
  br label %42

42:                                               ; preds = %42, %38
  %43 = phi i64 [ 1, %38 ], [ %47, %42 ]
  %44 = add nsw i64 %43, %32
  %45 = getelementptr inbounds i8, ptr %10, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !55
  %47 = add nuw nsw i64 %43, 1
  %48 = getelementptr inbounds i8, ptr %10, i64 %47
  store i8 %46, ptr %48, align 1, !tbaa !55
  %49 = icmp eq i64 %47, %41
  br i1 %49, label %50, label %42, !llvm.loop !81

50:                                               ; preds = %42, %30
  %51 = add nsw i32 %36, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %10, i64 %52
  %54 = icmp slt i32 %0, 2
  br i1 %54, label %81, label %55

55:                                               ; preds = %50
  %56 = sext i32 %1 to i64
  %57 = zext i32 %1 to i64
  %58 = add nuw i32 %0, 2
  %59 = zext i32 %58 to i64
  br label %60

60:                                               ; preds = %77, %55
  %61 = phi i64 [ 3, %55 ], [ %79, %77 ]
  %62 = phi ptr [ %53, %55 ], [ %78, %77 ]
  br i1 %11, label %63, label %77

63:                                               ; preds = %60
  %64 = getelementptr inbounds i32, ptr %2, i64 %61
  %65 = load i32, ptr %64, align 4, !tbaa !7
  br label %66

66:                                               ; preds = %66, %63
  %67 = phi i64 [ %57, %63 ], [ %69, %66 ]
  %68 = phi i32 [ %65, %63 ], [ %71, %66 ]
  %69 = add nsw i64 %67, -1
  %70 = srem i32 %68, 10
  %71 = sdiv i32 %68, 10
  %72 = trunc i32 %70 to i8
  %73 = add nsw i8 %72, 48
  %74 = and i64 %69, 4294967295
  %75 = getelementptr inbounds i8, ptr %62, i64 %74
  store i8 %73, ptr %75, align 1, !tbaa !55
  %76 = icmp sgt i64 %67, 1
  br i1 %76, label %66, label %77, !llvm.loop !82

77:                                               ; preds = %66, %60
  %78 = getelementptr inbounds i8, ptr %62, i64 %56
  %79 = add nuw nsw i64 %61, 1
  %80 = icmp eq i64 %79, %59
  br i1 %80, label %81, label %60, !llvm.loop !83

81:                                               ; preds = %77, %50
  %82 = phi ptr [ %53, %50 ], [ %78, %77 ]
  %83 = getelementptr inbounds i8, ptr %82, i64 1
  store i8 101, ptr %82, align 1, !tbaa !55
  %84 = getelementptr inbounds i32, ptr %2, i64 1
  %85 = load i32, ptr %84, align 4, !tbaa !7
  %86 = mul nsw i32 %85, %1
  %87 = add nsw i32 %86, %36
  %88 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %83, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %87) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @mp_unsgn_idiv(i32 noundef %0, double noundef %1, ptr nocapture noundef readonly %2, double noundef %3, ptr nocapture noundef writeonly %4) #2 {
  %6 = fadd double %3, -5.000000e-01
  %7 = sext i32 %0 to i64
  br label %8

8:                                                ; preds = %19, %5
  %9 = phi i64 [ %11, %19 ], [ 0, %5 ]
  %10 = phi double [ %20, %19 ], [ 0.000000e+00, %5 ]
  %11 = add nuw i64 %9, 1
  %12 = fmul double %10, %1
  %13 = icmp slt i64 %9, %7
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds i32, ptr %2, i64 %11
  %16 = load i32, ptr %15, align 4, !tbaa !7
  %17 = sitofp i32 %16 to double
  %18 = fadd double %12, %17
  br label %19

19:                                               ; preds = %14, %8
  %20 = phi double [ %18, %14 ], [ %12, %8 ]
  %21 = fcmp olt double %20, %6
  br i1 %21, label %8, label %22, !llvm.loop !84

22:                                               ; preds = %19
  %.lcssa2 = phi double [ %20, %19 ]
  %.lcssa1 = phi i64 [ %9, %19 ]
  %.lcssa = phi i1 [ %13, %19 ]
  %23 = fdiv double 1.000000e+00, %3
  %24 = trunc i64 %.lcssa1 to i32
  %25 = fadd double %.lcssa2, 5.000000e-01
  %26 = fmul double %23, %25
  %27 = fptosi double %26 to i32
  %28 = sitofp i32 %27 to double
  %29 = fneg double %3
  %30 = tail call double @llvm.fmuladd.f64(double %29, double %28, double %25)
  %31 = getelementptr inbounds i32, ptr %4, i64 1
  store i32 %27, ptr %31, align 4, !tbaa !7
  %32 = load i32, ptr %2, align 4, !tbaa !7
  %33 = sub nsw i32 %32, %24
  store i32 %33, ptr %4, align 4, !tbaa !7
  %34 = add nsw i32 %0, -1
  %35 = select i1 %.lcssa, i32 %24, i32 %34
  %36 = sub nsw i32 %0, %35
  %37 = fptosi double %30 to i32
  %38 = icmp slt i32 %36, 2
  br i1 %38, label %44, label %39

39:                                               ; preds = %22
  %40 = sext i32 %35 to i64
  %41 = add i32 %0, 1
  %42 = sub i32 %41, %35
  %43 = zext i32 %42 to i64
  br label %49

44:                                               ; preds = %49, %22
  %45 = phi i32 [ %37, %22 ], [ %65, %49 ]
  %46 = icmp sgt i32 %35, 0
  br i1 %46, label %47, label %80

47:                                               ; preds = %44
  %48 = sext i32 %36 to i64
  br label %67

49:                                               ; preds = %49, %39
  %50 = phi i64 [ 2, %39 ], [ %64, %49 ]
  %51 = phi i32 [ %37, %39 ], [ %65, %49 ]
  %52 = add nsw i64 %50, %40
  %53 = getelementptr inbounds i32, ptr %2, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !7
  %55 = sitofp i32 %54 to double
  %56 = sitofp i32 %51 to double
  %57 = tail call double @llvm.fmuladd.f64(double %1, double %56, double %55)
  %58 = fadd double %57, 5.000000e-01
  %59 = fmul double %23, %58
  %60 = fptosi double %59 to i32
  %61 = sitofp i32 %60 to double
  %62 = tail call double @llvm.fmuladd.f64(double %29, double %61, double %58)
  %63 = getelementptr inbounds i32, ptr %4, i64 %50
  store i32 %60, ptr %63, align 4, !tbaa !7
  %64 = add nuw nsw i64 %50, 1
  %65 = fptosi double %62 to i32
  %66 = icmp eq i64 %64, %43
  br i1 %66, label %44, label %49, !llvm.loop !85

67:                                               ; preds = %67, %47
  %68 = phi i64 [ %48, %47 ], [ %70, %67 ]
  %69 = phi i32 [ %45, %47 ], [ %77, %67 ]
  %70 = add nsw i64 %68, 1
  %71 = sitofp i32 %69 to double
  %72 = tail call double @llvm.fmuladd.f64(double %1, double %71, double 5.000000e-01)
  %73 = fmul double %23, %72
  %74 = fptosi double %73 to i32
  %75 = sitofp i32 %74 to double
  %76 = tail call double @llvm.fmuladd.f64(double %29, double %75, double %72)
  %77 = fptosi double %76 to i32
  %78 = getelementptr inbounds i32, ptr %4, i64 %70
  store i32 %74, ptr %78, align 4, !tbaa !7
  %79 = icmp slt i64 %70, %7
  br i1 %79, label %67, label %80, !llvm.loop !86

80:                                               ; preds = %67, %44
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @mp_mul_i2d(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5) #2 {
  %7 = icmp sgt i32 %0, %3
  br i1 %7, label %8, label %18

8:                                                ; preds = %6
  %9 = add nsw i32 %3, 2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %4, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !7
  %13 = ashr i32 %2, 1
  %14 = add nsw i32 %13, 1
  %15 = sub nsw i32 %0, %3
  %16 = icmp slt i32 %13, %15
  %17 = select i1 %16, i32 %14, i32 %15
  br label %18

18:                                               ; preds = %8, %6
  %19 = phi i32 [ 0, %6 ], [ %17, %8 ]
  %20 = phi i32 [ 0, %6 ], [ %12, %8 ]
  %21 = load i32, ptr %4, align 4, !tbaa !7
  %22 = mul nsw i32 %21, %20
  %23 = sitofp i32 %22 to double
  %24 = add nsw i32 %2, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, ptr %5, i64 %25
  store double %23, ptr %26, align 8, !tbaa !11
  %27 = icmp slt i32 %19, %2
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = sext i32 %2 to i64
  %30 = xor i32 %19, -1
  %31 = add i32 %30, %2
  %32 = zext i32 %31 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = sub nsw i64 %29, %32
  %35 = shl nsw i64 %34, 3
  %36 = getelementptr i8, ptr %5, i64 %35
  %37 = add nuw nsw i64 %33, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, i8 0, i64 %37, i1 false), !tbaa !11
  br label %38

38:                                               ; preds = %28, %18
  %39 = icmp sgt i32 %19, 1
  br i1 %39, label %40, label %71

40:                                               ; preds = %38
  %41 = sdiv i32 %1, 2
  %42 = icmp eq i32 %19, 2
  br i1 %42, label %62, label %43

43:                                               ; preds = %40
  %44 = add nuw i32 %19, 1
  %45 = sext i32 %44 to i64
  %46 = sext i32 %3 to i64
  br label %47

47:                                               ; preds = %47, %43
  %48 = phi i64 [ %45, %43 ], [ %59, %47 ]
  %49 = phi i32 [ 0, %43 ], [ %55, %47 ]
  %50 = add nsw i64 %48, %46
  %51 = getelementptr inbounds i32, ptr %4, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !7
  %53 = sub nsw i32 %52, %49
  %54 = icmp sge i32 %53, %41
  %55 = sext i1 %54 to i32
  %56 = and i32 %55, %1
  %57 = sub nsw i32 %53, %56
  %58 = sitofp i32 %57 to double
  %59 = add nsw i64 %48, -1
  %60 = getelementptr inbounds double, ptr %5, i64 %59
  store double %58, ptr %60, align 8, !tbaa !11
  %61 = icmp sgt i64 %48, 4
  br i1 %61, label %47, label %62, !llvm.loop !87

62:                                               ; preds = %47, %40
  %63 = phi i32 [ 0, %40 ], [ %55, %47 ]
  %64 = add nsw i32 %3, 3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %4, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !7
  %68 = sub nsw i32 %67, %63
  %69 = sitofp i32 %68 to double
  %70 = getelementptr inbounds double, ptr %5, i64 2
  store double %69, ptr %70, align 8, !tbaa !11
  br label %71

71:                                               ; preds = %62, %38
  %72 = sitofp i32 %20 to double
  %73 = getelementptr inbounds double, ptr %5, i64 1
  store double %72, ptr %73, align 8, !tbaa !11
  %74 = getelementptr inbounds i32, ptr %4, i64 1
  %75 = load i32, ptr %74, align 4, !tbaa !7
  %76 = sub nsw i32 %75, %3
  %77 = sitofp i32 %76 to double
  store double %77, ptr %5, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @mp_mul_cmul(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #2 {
  %4 = load double, ptr %1, align 8, !tbaa !11
  %5 = load double, ptr %2, align 8, !tbaa !11
  %6 = fadd double %4, %5
  store double %6, ptr %2, align 8, !tbaa !11
  %7 = getelementptr inbounds double, ptr %1, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !11
  %9 = getelementptr inbounds double, ptr %2, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !11
  %11 = fmul double %8, %10
  store double %11, ptr %9, align 8, !tbaa !11
  %12 = getelementptr inbounds double, ptr %1, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !11
  %14 = getelementptr inbounds double, ptr %2, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !11
  %16 = fmul double %13, %15
  store double %16, ptr %14, align 8, !tbaa !11
  %17 = icmp sgt i32 %0, 3
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  %19 = zext i32 %0 to i64
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i64 [ 3, %18 ], [ %37, %20 ]
  %22 = getelementptr inbounds double, ptr %1, i64 %21
  %23 = load double, ptr %22, align 8, !tbaa !11
  %24 = add nuw nsw i64 %21, 1
  %25 = getelementptr inbounds double, ptr %1, i64 %24
  %26 = load double, ptr %25, align 8, !tbaa !11
  %27 = getelementptr inbounds double, ptr %2, i64 %21
  %28 = fneg double %26
  %29 = load <2 x double>, ptr %27, align 8, !tbaa !11
  %30 = insertelement <2 x double> poison, double %26, i64 0
  %31 = insertelement <2 x double> %30, double %28, i64 1
  %32 = fmul <2 x double> %29, %31
  %33 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %34 = insertelement <2 x double> poison, double %23, i64 0
  %35 = shufflevector <2 x double> %34, <2 x double> poison, <2 x i32> zeroinitializer
  %36 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %35, <2 x double> %29, <2 x double> %33)
  store <2 x double> %36, ptr %27, align 8, !tbaa !11
  %37 = add nuw nsw i64 %21, 2
  %38 = icmp ult i64 %37, %19
  br i1 %38, label %20, label %39, !llvm.loop !88

39:                                               ; preds = %20, %3
  %40 = add nsw i32 %0, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, ptr %1, i64 %41
  %43 = load double, ptr %42, align 8, !tbaa !11
  %44 = getelementptr inbounds double, ptr %2, i64 %41
  %45 = load double, ptr %44, align 8, !tbaa !11
  %46 = fmul double %43, %45
  store double %46, ptr %44, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @mp_mul_d2i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #2 {
  %6 = sitofp i32 %2 to double
  %7 = fdiv double 2.000000e+00, %6
  %8 = sitofp i32 %1 to double
  %9 = fdiv double 1.000000e+00, %8
  %10 = fmul double %9, %9
  %11 = add nsw i32 %2, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds double, ptr %3, i64 %12
  %14 = load double, ptr %13, align 8, !tbaa !11
  %15 = fcmp olt double %14, 0.000000e+00
  %16 = fneg double %14
  %17 = select i1 %15, double %16, double %14
  %18 = fadd double %17, 5.000000e-01
  %19 = fcmp oge double %18, %8
  %20 = zext i1 %19 to i32
  %21 = fmul double %6, 5.000000e-01
  %22 = fmul double %21, %17
  %23 = getelementptr inbounds double, ptr %3, i64 1
  %24 = load double, ptr %23, align 8, !tbaa !11
  %25 = fsub double %24, %22
  store double %25, ptr %13, align 8, !tbaa !11
  store double %22, ptr %23, align 8, !tbaa !11
  %26 = add nsw i32 %11, %20
  %27 = icmp slt i32 %26, %0
  br i1 %27, label %28, label %40

28:                                               ; preds = %5
  %29 = add i32 %0, 1
  %30 = add nsw i32 %26, 1
  %31 = sext i32 %29 to i64
  %32 = tail call i32 @llvm.smin.i32(i32 %0, i32 %30)
  %33 = sub i32 %0, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 2
  %36 = sub nsw i64 %31, %34
  %37 = shl nsw i64 %36, 2
  %38 = getelementptr i8, ptr %4, i64 %37
  %39 = add nuw nsw i64 %35, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %38, i8 0, i64 %39, i1 false), !tbaa !7
  br label %40

40:                                               ; preds = %28, %5
  %41 = phi i32 [ %0, %5 ], [ %26, %28 ]
  %42 = xor i1 %19, true
  %43 = zext i1 %42 to i32
  %44 = add i32 %41, %43
  %45 = icmp sgt i32 %44, %11
  br i1 %45, label %61, label %46

46:                                               ; preds = %40
  %47 = sext i32 %44 to i64
  %48 = sext i32 %2 to i64
  br label %49

49:                                               ; preds = %49, %46
  %50 = phi i64 [ %47, %46 ], [ %58, %49 ]
  %51 = phi double [ 1.000000e+00, %46 ], [ %56, %49 ]
  %52 = phi double [ 0.000000e+00, %46 ], [ %55, %49 ]
  %53 = getelementptr inbounds double, ptr %3, i64 %50
  %54 = load double, ptr %53, align 8, !tbaa !11
  %55 = tail call double @llvm.fmuladd.f64(double %51, double %54, double %52)
  %56 = fmul double %9, %51
  %57 = fcmp olt double %56, 0x3CB0000000000000
  %58 = add i64 %50, 1
  %59 = icmp sgt i64 %50, %48
  %60 = or i1 %57, %59
  br i1 %60, label %61, label %49, !llvm.loop !89

61:                                               ; preds = %49, %40
  %62 = phi double [ 0.000000e+00, %40 ], [ %55, %49 ]
  %63 = tail call double @llvm.fmuladd.f64(double %7, double %62, double 5.000000e-01)
  %64 = fmul double %10, %63
  %65 = fptosi double %64 to i32
  %66 = add nsw i32 %65, -1
  %67 = sitofp i32 %66 to double
  %68 = fsub double %64, %67
  %69 = tail call double @llvm.fmuladd.f64(double %8, double %68, double 5.000000e-01)
  %70 = fptosi double %69 to i32
  %71 = icmp sgt i32 %41, 1
  br i1 %71, label %72, label %101

72:                                               ; preds = %61
  %73 = zext i32 %41 to i64
  %74 = sext i1 %19 to i64
  br label %75

75:                                               ; preds = %75, %72
  %76 = phi i64 [ %73, %72 ], [ %99, %75 ]
  %77 = phi i32 [ %70, %72 ], [ %98, %75 ]
  %78 = phi i32 [ %66, %72 ], [ %87, %75 ]
  %79 = add i64 %76, %74
  %80 = getelementptr inbounds double, ptr %3, i64 %79
  %81 = load double, ptr %80, align 8, !tbaa !11
  %82 = sitofp i32 %77 to double
  %83 = tail call double @llvm.fmuladd.f64(double %7, double %81, double %82)
  %84 = fadd double %83, 5.000000e-01
  %85 = fmul double %10, %84
  %86 = fptosi double %85 to i32
  %87 = add nsw i32 %86, -1
  %88 = sitofp i32 %87 to double
  %89 = fsub double %85, %88
  %90 = fmul double %89, %8
  %91 = fptosi double %90 to i32
  %92 = sitofp i32 %91 to double
  %93 = fsub double %90, %92
  %94 = fmul double %93, %8
  %95 = fptosi double %94 to i32
  %96 = add nuw nsw i64 %76, 1
  %97 = getelementptr inbounds i32, ptr %4, i64 %96
  store i32 %95, ptr %97, align 4, !tbaa !7
  %98 = add nsw i32 %78, %91
  %99 = add nsw i64 %76, -1
  %100 = icmp ugt i64 %76, 2
  br i1 %100, label %75, label %101, !llvm.loop !90

101:                                              ; preds = %75, %61
  %102 = phi double [ %67, %61 ], [ %88, %75 ]
  %103 = phi i32 [ %70, %61 ], [ %98, %75 ]
  %104 = sitofp i32 %103 to double
  %105 = tail call double @llvm.fmuladd.f64(double %8, double %102, double %104)
  %106 = fadd double %105, 5.000000e-01
  %107 = tail call double @llvm.fmuladd.f64(double %7, double %22, double %106)
  %108 = select i1 %19, double %106, double %107
  %109 = fmul double %9, %108
  %110 = fptosi double %109 to i32
  %111 = sitofp i32 %110 to double
  %112 = fneg double %8
  %113 = tail call double @llvm.fmuladd.f64(double %112, double %111, double %108)
  %114 = fptosi double %113 to i32
  %115 = getelementptr inbounds i32, ptr %4, i64 2
  store i32 %114, ptr %115, align 4, !tbaa !7
  %116 = icmp sgt i32 %110, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %101
  %118 = icmp sgt i32 %0, 1
  br i1 %118, label %119, label %131

119:                                              ; preds = %117
  %120 = add nuw i32 %0, 1
  %121 = zext i32 %120 to i64
  br label %122

122:                                              ; preds = %122, %119
  %123 = phi i64 [ %121, %119 ], [ %124, %122 ]
  %124 = add nsw i64 %123, -1
  %125 = and i64 %124, 4294967295
  %126 = getelementptr inbounds i32, ptr %4, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !7
  %128 = getelementptr inbounds i32, ptr %4, i64 %123
  store i32 %127, ptr %128, align 4, !tbaa !7
  %129 = trunc i64 %123 to i32
  %130 = icmp sgt i32 %129, 3
  br i1 %130, label %122, label %131, !llvm.loop !91

131:                                              ; preds = %122, %117
  store i32 %110, ptr %115, align 4, !tbaa !7
  %132 = select i1 %19, i32 2, i32 1
  br label %133

133:                                              ; preds = %131, %101
  %134 = phi i32 [ 1, %131 ], [ %114, %101 ]
  %135 = phi i32 [ %132, %131 ], [ %20, %101 ]
  %136 = load double, ptr %3, align 8, !tbaa !11
  %137 = sitofp i32 %135 to double
  %138 = fadd double %136, %137
  %139 = fadd double %138, 5.000000e-01
  %140 = fptosi double %139 to i32
  %141 = add nsw i32 %140, -1
  %142 = sitofp i32 %141 to double
  %143 = fsub double %139, %142
  %144 = fptosi double %143 to i32
  %145 = add nsw i32 %141, %144
  %146 = getelementptr inbounds i32, ptr %4, i64 1
  store i32 %145, ptr %146, align 4, !tbaa !7
  %147 = fcmp ogt double %14, 5.000000e-01
  %148 = select i1 %147, i32 1, i32 -1
  store i32 %148, ptr %4, align 4, !tbaa !7
  %149 = icmp eq i32 %134, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %133
  store i32 0, ptr %4, align 4, !tbaa !7
  store i32 0, ptr %146, align 4, !tbaa !7
  br label %151

151:                                              ; preds = %150, %133
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @mp_mul_csqu(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = load <2 x double>, ptr %1, align 8, !tbaa !11
  %4 = insertelement <2 x double> %3, double 2.000000e+00, i64 0
  %5 = fmul <2 x double> %3, %4
  store <2 x double> %5, ptr %1, align 8, !tbaa !11
  %6 = getelementptr inbounds double, ptr %1, i64 2
  %7 = load double, ptr %6, align 8, !tbaa !11
  %8 = fmul double %7, %7
  store double %8, ptr %6, align 8, !tbaa !11
  %9 = icmp sgt i32 %0, 3
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = zext i32 %0 to i64
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i64 [ 3, %10 ], [ %24, %12 ]
  %14 = getelementptr inbounds double, ptr %1, i64 %13
  %15 = load double, ptr %14, align 8, !tbaa !11
  %16 = add nuw nsw i64 %13, 1
  %17 = getelementptr inbounds double, ptr %1, i64 %16
  %18 = load double, ptr %17, align 8, !tbaa !11
  %19 = fneg double %18
  %20 = fmul double %18, %19
  %21 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %20)
  store double %21, ptr %14, align 8, !tbaa !11
  %22 = fmul double %15, 2.000000e+00
  %23 = fmul double %22, %18
  store double %23, ptr %17, align 8, !tbaa !11
  %24 = add nuw nsw i64 %13, 2
  %25 = icmp ult i64 %24, %11
  br i1 %25, label %12, label %26, !llvm.loop !92

26:                                               ; preds = %12, %2
  %27 = add nsw i32 %0, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, ptr %1, i64 %28
  %30 = load double, ptr %29, align 8, !tbaa !11
  %31 = fmul double %30, %30
  store double %31, ptr %29, align 8, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @mp_inv_init(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = load i32, ptr %2, align 4, !tbaa !7
  store i32 %5, ptr %3, align 4, !tbaa !7
  %6 = getelementptr inbounds i32, ptr %2, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !7
  %8 = sub nsw i32 0, %7
  %9 = getelementptr inbounds i32, ptr %2, i64 2
  %10 = sitofp i32 %1 to double
  %11 = fdiv double 1.000000e+00, %10
  %12 = icmp sgt i32 %0, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %4
  %14 = zext i32 %0 to i64
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i64 [ %14, %13 ], [ %18, %15 ]
  %17 = phi double [ 0.000000e+00, %13 ], [ %23, %15 ]
  %18 = add nsw i64 %16, -1
  %19 = and i64 %18, 4294967295
  %20 = getelementptr inbounds i32, ptr %9, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !7
  %22 = sitofp i32 %21 to double
  %23 = tail call double @llvm.fmuladd.f64(double %11, double %17, double %22)
  %24 = icmp ugt i64 %16, 1
  br i1 %24, label %15, label %25, !llvm.loop !93

25:                                               ; preds = %15, %4
  %26 = phi double [ 0.000000e+00, %4 ], [ %23, %15 ]
  %27 = fdiv double 1.000000e+00, %26
  %28 = fcmp olt double %27, 1.000000e+00
  br i1 %28, label %29, label %35

29:                                               ; preds = %29, %25
  %30 = phi double [ %32, %29 ], [ %27, %25 ]
  %31 = phi i32 [ %33, %29 ], [ %8, %25 ]
  %32 = fmul double %30, %10
  %33 = add nsw i32 %31, -1
  %34 = fcmp olt double %32, 1.000000e+00
  br i1 %34, label %29, label %35, !llvm.loop !94

35:                                               ; preds = %29, %25
  %36 = phi i32 [ %8, %25 ], [ %33, %29 ]
  %37 = phi double [ %27, %25 ], [ %32, %29 ]
  %38 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 %36, ptr %38, align 4, !tbaa !7
  %39 = getelementptr inbounds i32, ptr %3, i64 2
  br i1 %12, label %40, label %56

40:                                               ; preds = %35
  %41 = add nsw i32 %1, -1
  %42 = zext i32 %0 to i64
  br label %43

43:                                               ; preds = %43, %40
  %44 = phi i64 [ 0, %40 ], [ %54, %43 ]
  %45 = phi double [ %37, %40 ], [ %52, %43 ]
  %46 = fptosi double %45 to i32
  %47 = icmp slt i32 %46, %1
  %48 = select i1 %47, double %45, double %10
  %49 = select i1 %47, i32 %46, i32 %41
  %50 = sitofp i32 %49 to double
  %51 = fsub double %48, %50
  %52 = fmul double %51, %10
  %53 = getelementptr inbounds i32, ptr %39, i64 %44
  store i32 %49, ptr %53, align 4, !tbaa !7
  %54 = add nuw nsw i64 %44, 1
  %55 = icmp eq i64 %54, %42
  br i1 %55, label %56, label %43, !llvm.loop !95

56:                                               ; preds = %43, %35
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @mp_inv_newton(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #8 {
  %12 = ashr i32 %6, 1
  %13 = add nsw i32 %12, 1
  tail call void @mp_round(i32 noundef %0, i32 noundef %1, i32 noundef %13, ptr noundef %3) #20
  tail call void @mp_mulh(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %4, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #20
  store i32 1, ptr %5, align 4, !tbaa !7
  %14 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 0, ptr %14, align 4, !tbaa !7
  %15 = getelementptr inbounds i32, ptr %5, i64 2
  store i32 1, ptr %15, align 4, !tbaa !7
  %16 = icmp slt i32 %0, 2
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %5, i64 12
  %19 = add nsw i32 %0, -1
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %18, i8 0, i64 %21, i1 false), !tbaa !7
  br label %22

22:                                               ; preds = %17, %11
  %23 = sub nsw i32 %0, %13
  %24 = sdiv i32 %0, 2
  %25 = add nsw i32 %24, 1
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 %23)
  tail call void @mp_sub(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef %4, ptr noundef nonnull %5) #20
  tail call void @mp_mulh_use_in1fft(i32 noundef %0, i32 noundef %1, ptr noundef %7, i32 noundef %13, ptr noundef %2, ptr noundef %4, i32 noundef %6, ptr noundef %8, ptr noundef %9, ptr noundef %10) #20
  tail call void @mp_sub(i32 noundef %26, i32 noundef %1, ptr noundef nonnull %5, ptr noundef %4, ptr noundef nonnull %5) #20
  %27 = load i32, ptr %14, align 4, !tbaa !7
  %28 = sub nsw i32 0, %27
  %29 = load i32, ptr %5, align 4, !tbaa !7
  %30 = icmp eq i32 %29, 0
  %31 = add nsw i32 %6, 1
  %32 = select i1 %30, i32 %31, i32 %28
  tail call void @mp_mulh_use_in1fft(i32 noundef %26, i32 noundef %1, ptr noundef %7, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %5, i32 noundef %6, ptr noundef %8, ptr noundef %9, ptr noundef %10) #20
  tail call void @mp_add(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef nonnull %5, ptr noundef %3) #20
  ret i32 %32
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @mp_round(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) #2 {
  %5 = icmp slt i32 %2, %0
  br i1 %5, label %6, label %46

6:                                                ; preds = %4
  %7 = add nsw i32 %2, 2
  %8 = icmp sgt i32 %7, %0
  br i1 %8, label %20, label %9

9:                                                ; preds = %6
  %10 = add i32 %0, 1
  %11 = sext i32 %10 to i64
  %12 = add i32 %0, -2
  %13 = sub i32 %12, %2
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 2
  %16 = sub nsw i64 %11, %14
  %17 = shl nsw i64 %16, 2
  %18 = getelementptr i8, ptr %3, i64 %17
  %19 = add nuw nsw i64 %15, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %18, i8 0, i64 %19, i1 false), !tbaa !7
  br label %20

20:                                               ; preds = %9, %6
  %21 = sext i32 %7 to i64
  %22 = getelementptr inbounds i32, ptr %3, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !7
  %24 = shl nsw i32 %23, 1
  store i32 0, ptr %22, align 4, !tbaa !7
  %25 = icmp slt i32 %24, %1
  br i1 %25, label %46, label %26

26:                                               ; preds = %20
  %27 = icmp sgt i32 %2, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %26
  %29 = add nuw nsw i32 %2, 1
  br label %30

30:                                               ; preds = %37, %28
  %31 = phi i32 [ %38, %37 ], [ %29, %28 ]
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %3, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !7
  %35 = add nsw i32 %34, 1
  %36 = icmp slt i32 %35, %1
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  store i32 0, ptr %33, align 4, !tbaa !7
  %38 = add nsw i32 %31, -1
  %39 = icmp sgt i32 %31, 2
  br i1 %39, label %30, label %41, !llvm.loop !96

40:                                               ; preds = %30
  %.lcssa1 = phi ptr [ %33, %30 ]
  %.lcssa = phi i32 [ %35, %30 ]
  store i32 %.lcssa, ptr %.lcssa1, align 4, !tbaa !7
  br label %46

41:                                               ; preds = %37, %26
  %42 = getelementptr inbounds i32, ptr %3, i64 2
  store i32 1, ptr %42, align 4, !tbaa !7
  %43 = getelementptr inbounds i32, ptr %3, i64 1
  %44 = load i32, ptr %43, align 4, !tbaa !7
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %43, align 4, !tbaa !7
  br label %46

46:                                               ; preds = %41, %40, %20, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @mp_mulh(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #8 {
  tail call void @mp_mul_i2d(i32 noundef %0, i32 noundef %1, i32 noundef %5, i32 noundef 0, ptr noundef %2, ptr noundef %6) #20
  %11 = getelementptr inbounds double, ptr %6, i64 1
  tail call void @rdft(i32 noundef %5, i32 noundef 1, ptr noundef nonnull %11, ptr noundef %8, ptr noundef %9) #19
  tail call void @mp_mul_i2d(i32 noundef %0, i32 noundef %1, i32 noundef %5, i32 noundef 0, ptr noundef %3, ptr noundef %7) #20
  %12 = getelementptr inbounds double, ptr %7, i64 1
  tail call void @rdft(i32 noundef %5, i32 noundef 1, ptr noundef nonnull %12, ptr noundef %8, ptr noundef %9) #19
  tail call void @mp_mul_cmul(i32 noundef %5, ptr noundef %6, ptr noundef %7) #20
  tail call void @rdft(i32 noundef %5, i32 noundef -1, ptr noundef nonnull %12, ptr noundef %8, ptr noundef %9) #19
  tail call void @mp_mul_d2i(i32 noundef %0, i32 noundef %1, i32 noundef %5, ptr noundef %7, ptr noundef %4) #20
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @mp_mulh_use_in1fft(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #8 {
  %11 = icmp slt i32 %3, %0
  br i1 %11, label %12, label %26

12:                                               ; preds = %10
  %13 = sext i32 %3 to i64
  br label %14

14:                                               ; preds = %20, %12
  %15 = phi i64 [ %13, %12 ], [ %21, %20 ]
  %16 = add nsw i64 %15, 2
  %17 = getelementptr inbounds i32, ptr %4, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = add nsw i64 %15, 1
  %22 = trunc i64 %21 to i32
  %23 = icmp eq i32 %22, %0
  br i1 %23, label %26, label %14, !llvm.loop !97

24:                                               ; preds = %14
  %.lcssa = phi i64 [ %15, %14 ]
  %25 = trunc i64 %.lcssa to i32
  br label %26

26:                                               ; preds = %24, %20, %10
  %27 = phi i32 [ %3, %10 ], [ %25, %24 ], [ %0, %20 ]
  tail call void @mp_mul_i2d(i32 noundef %0, i32 noundef %1, i32 noundef %6, i32 noundef %27, ptr noundef %4, ptr noundef %7) #20
  %28 = getelementptr inbounds double, ptr %7, i64 1
  tail call void @rdft(i32 noundef %6, i32 noundef 1, ptr noundef nonnull %28, ptr noundef %8, ptr noundef %9) #19
  tail call void @mp_mul_cmul(i32 noundef %6, ptr noundef %2, ptr noundef %7) #20
  tail call void @rdft(i32 noundef %6, i32 noundef -1, ptr noundef nonnull %28, ptr noundef %8, ptr noundef %9) #19
  tail call void @mp_mul_d2i(i32 noundef %0, i32 noundef %1, i32 noundef %6, ptr noundef %7, ptr noundef %5) #20
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @mp_mul_cmuladd(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) #2 {
  %5 = getelementptr inbounds double, ptr %1, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds double, ptr %2, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !11
  %9 = getelementptr inbounds double, ptr %3, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !11
  %11 = tail call double @llvm.fmuladd.f64(double %6, double %8, double %10)
  store double %11, ptr %9, align 8, !tbaa !11
  %12 = getelementptr inbounds double, ptr %1, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !11
  %14 = getelementptr inbounds double, ptr %2, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !11
  %16 = getelementptr inbounds double, ptr %3, i64 2
  %17 = load double, ptr %16, align 8, !tbaa !11
  %18 = tail call double @llvm.fmuladd.f64(double %13, double %15, double %17)
  store double %18, ptr %16, align 8, !tbaa !11
  %19 = icmp sgt i32 %0, 3
  br i1 %19, label %20, label %44

20:                                               ; preds = %4
  %21 = zext i32 %0 to i64
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i64 [ 3, %20 ], [ %42, %22 ]
  %24 = getelementptr inbounds double, ptr %1, i64 %23
  %25 = load double, ptr %24, align 8, !tbaa !11
  %26 = add nuw nsw i64 %23, 1
  %27 = getelementptr inbounds double, ptr %1, i64 %26
  %28 = load double, ptr %27, align 8, !tbaa !11
  %29 = getelementptr inbounds double, ptr %2, i64 %23
  %30 = fneg double %28
  %31 = getelementptr inbounds double, ptr %3, i64 %23
  %32 = load <2 x double>, ptr %29, align 8, !tbaa !11
  %33 = insertelement <2 x double> poison, double %28, i64 0
  %34 = insertelement <2 x double> %33, double %30, i64 1
  %35 = fmul <2 x double> %32, %34
  %36 = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %37 = insertelement <2 x double> poison, double %25, i64 0
  %38 = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> zeroinitializer
  %39 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %38, <2 x double> %32, <2 x double> %36)
  %40 = load <2 x double>, ptr %31, align 8, !tbaa !11
  %41 = fadd <2 x double> %40, %39
  store <2 x double> %41, ptr %31, align 8, !tbaa !11
  %42 = add nuw nsw i64 %23, 2
  %43 = icmp ult i64 %42, %21
  br i1 %43, label %22, label %44, !llvm.loop !98

44:                                               ; preds = %22, %4
  %45 = add nsw i32 %0, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, ptr %1, i64 %46
  %48 = load double, ptr %47, align 8, !tbaa !11
  %49 = getelementptr inbounds double, ptr %2, i64 %46
  %50 = load double, ptr %49, align 8, !tbaa !11
  %51 = getelementptr inbounds double, ptr %3, i64 %46
  %52 = load double, ptr %51, align 8, !tbaa !11
  %53 = tail call double @llvm.fmuladd.f64(double %48, double %50, double %52)
  store double %53, ptr %51, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal i32 @mp_unexp_add(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5) #2 {
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %6
  %9 = load i32, ptr %3, align 4, !tbaa !7
  %10 = load i32, ptr %4, align 4, !tbaa !7
  %11 = add nsw i32 %10, %9
  %12 = icmp slt i32 %11, %1
  br i1 %12, label %43, label %13

13:                                               ; preds = %8
  %14 = add nsw i32 %0, -1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %3, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !7
  %18 = getelementptr inbounds i32, ptr %4, i64 %15
  %19 = load i32, ptr %18, align 4, !tbaa !7
  %20 = add nsw i32 %19, %17
  %21 = icmp sge i32 %20, %1
  %22 = zext i1 %21 to i32
  %23 = icmp sgt i32 %0, 1
  br i1 %23, label %24, label %102

24:                                               ; preds = %13
  %25 = zext i32 %14 to i64
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi i64 [ %25, %24 ], [ %29, %26 ]
  %28 = phi i32 [ %22, %24 ], [ %38, %26 ]
  %29 = add nsw i64 %27, -1
  %30 = and i64 %29, 4294967295
  %31 = getelementptr inbounds i32, ptr %3, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !7
  %33 = getelementptr inbounds i32, ptr %4, i64 %30
  %34 = load i32, ptr %33, align 4, !tbaa !7
  %35 = add i32 %32, %28
  %36 = add i32 %35, %34
  %37 = icmp sge i32 %36, %1
  %38 = zext i1 %37 to i32
  %39 = select i1 %37, i32 %1, i32 0
  %40 = sub nsw i32 %36, %39
  %41 = getelementptr inbounds i32, ptr %5, i64 %27
  store i32 %40, ptr %41, align 4, !tbaa !7
  %42 = icmp ugt i64 %27, 1
  br i1 %42, label %26, label %102, !llvm.loop !99

43:                                               ; preds = %8, %6
  %44 = tail call i32 @llvm.smin.i32(i32 %2, i32 %0)
  %45 = add i32 %0, -1
  %46 = icmp sgt i32 %0, %2
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = sext i32 %0 to i64
  %49 = sext i32 %44 to i64
  br label %55

50:                                               ; preds = %55, %43
  %51 = phi i32 [ 0, %43 ], [ %68, %55 ]
  %52 = icmp sgt i32 %44, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %50
  %54 = zext i32 %44 to i64
  br label %73

55:                                               ; preds = %55, %47
  %56 = phi i64 [ %48, %47 ], [ %58, %55 ]
  %57 = phi i32 [ 0, %47 ], [ %67, %55 ]
  %58 = add nsw i64 %56, -1
  %59 = getelementptr inbounds i32, ptr %3, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !7
  %61 = sub nsw i64 %58, %49
  %62 = getelementptr inbounds i32, ptr %4, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !7
  %64 = add i32 %60, %57
  %65 = add i32 %64, %63
  %66 = icmp sge i32 %65, %1
  %67 = zext i1 %66 to i32
  %68 = sext i1 %66 to i32
  %69 = and i32 %68, %1
  %70 = sub nsw i32 %65, %69
  %71 = getelementptr inbounds i32, ptr %5, i64 %58
  store i32 %70, ptr %71, align 4, !tbaa !7
  %72 = icmp sgt i64 %58, %49
  br i1 %72, label %55, label %50, !llvm.loop !100

73:                                               ; preds = %73, %53
  %74 = phi i64 [ %54, %53 ], [ %76, %73 ]
  %75 = phi i32 [ %51, %53 ], [ %82, %73 ]
  %76 = add nsw i64 %74, -1
  %77 = and i64 %76, 4294967295
  %78 = getelementptr inbounds i32, ptr %3, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !7
  %80 = sub nsw i32 %79, %75
  %81 = icmp sge i32 %80, %1
  %82 = sext i1 %81 to i32
  %83 = and i32 %82, %1
  %84 = sub nsw i32 %80, %83
  %85 = getelementptr inbounds i32, ptr %5, i64 %77
  store i32 %84, ptr %85, align 4, !tbaa !7
  %86 = icmp ugt i64 %74, 1
  br i1 %86, label %73, label %87, !llvm.loop !101

87:                                               ; preds = %73, %50
  %88 = phi i32 [ %51, %50 ], [ %82, %73 ]
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %87
  %91 = icmp sgt i32 %0, 1
  br i1 %91, label %92, label %102

92:                                               ; preds = %90
  %93 = zext i32 %45 to i64
  br label %94

94:                                               ; preds = %94, %92
  %95 = phi i64 [ %93, %92 ], [ %96, %94 ]
  %96 = add nsw i64 %95, -1
  %97 = and i64 %96, 4294967295
  %98 = getelementptr inbounds i32, ptr %5, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !7
  %100 = getelementptr inbounds i32, ptr %5, i64 %95
  store i32 %99, ptr %100, align 4, !tbaa !7
  %101 = icmp ugt i64 %95, 1
  br i1 %101, label %94, label %102, !llvm.loop !102

102:                                              ; preds = %94, %90, %26, %13
  %103 = phi i32 [ %22, %13 ], [ 1, %90 ], [ 1, %94 ], [ %38, %26 ]
  store i32 %103, ptr %5, align 4, !tbaa !7
  br label %104

104:                                              ; preds = %102, %87
  %105 = phi i32 [ 0, %87 ], [ %103, %102 ]
  ret i32 %105
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal i32 @mp_unexp_sub(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5) #2 {
  %7 = tail call i32 @llvm.smin.i32(i32 %2, i32 %0)
  %8 = icmp sgt i32 %0, %2
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = sext i32 %0 to i64
  %11 = sext i32 %7 to i64
  br label %17

12:                                               ; preds = %17, %6
  %13 = phi i32 [ 0, %6 ], [ %28, %17 ]
  %14 = icmp sgt i32 %7, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = zext i32 %7 to i64
  br label %37

17:                                               ; preds = %17, %9
  %18 = phi i64 [ %10, %9 ], [ %20, %17 ]
  %19 = phi i32 [ 0, %9 ], [ %28, %17 ]
  %20 = add nsw i64 %18, -1
  %21 = getelementptr inbounds i32, ptr %3, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !7
  %23 = sub nsw i64 %20, %11
  %24 = getelementptr inbounds i32, ptr %4, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !7
  %26 = sub nsw i32 %22, %25
  %27 = add nsw i32 %26, %19
  %28 = ashr i32 %27, 31
  %29 = and i32 %28, %1
  %30 = add nsw i32 %29, %27
  %31 = getelementptr inbounds i32, ptr %5, i64 %20
  store i32 %30, ptr %31, align 4, !tbaa !7
  %32 = icmp sgt i64 %20, %11
  br i1 %32, label %17, label %12, !llvm.loop !103

33:                                               ; preds = %37, %12
  %34 = icmp sgt i32 %0, 0
  br i1 %34, label %35, label %92

35:                                               ; preds = %33
  %36 = zext i32 %0 to i64
  br label %50

37:                                               ; preds = %37, %15
  %38 = phi i64 [ %16, %15 ], [ %40, %37 ]
  %39 = phi i32 [ %13, %15 ], [ %45, %37 ]
  %40 = add nsw i64 %38, -1
  %41 = and i64 %40, 4294967295
  %42 = getelementptr inbounds i32, ptr %3, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !7
  %44 = add nsw i32 %43, %39
  %45 = ashr i32 %44, 31
  %46 = and i32 %45, %1
  %47 = add nsw i32 %46, %44
  %48 = getelementptr inbounds i32, ptr %5, i64 %41
  store i32 %47, ptr %48, align 4, !tbaa !7
  %49 = icmp ugt i64 %38, 1
  br i1 %49, label %37, label %33, !llvm.loop !104

50:                                               ; preds = %56, %35
  %51 = phi i32 [ %0, %35 ], [ %59, %56 ]
  %52 = phi i64 [ 0, %35 ], [ %57, %56 ]
  %53 = getelementptr inbounds i32, ptr %5, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !7
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = add nuw nsw i64 %52, 1
  %58 = icmp eq i64 %57, %36
  %59 = add i32 %51, -1
  br i1 %58, label %92, label %50, !llvm.loop !105

60:                                               ; preds = %50
  %.lcssa1 = phi i32 [ %51, %50 ]
  %.lcssa = phi i64 [ %52, %50 ]
  %61 = trunc i64 %.lcssa to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %92, label %63

63:                                               ; preds = %60
  %64 = sub nsw i32 %0, %61
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = and i64 %.lcssa, 4294967295
  %68 = zext i32 %.lcssa1 to i64
  br label %84

69:                                               ; preds = %84, %63
  %70 = sext i32 %64 to i64
  %71 = shl nsw i64 %70, 2
  %72 = getelementptr i8, ptr %5, i64 %71
  %73 = add i32 %0, 1
  %74 = trunc i64 %.lcssa to i32
  %75 = sub i32 %73, %74
  %76 = tail call i32 @llvm.smax.i32(i32 %0, i32 %75)
  %77 = xor i32 %0, -1
  %78 = trunc i64 %.lcssa to i32
  %79 = add i32 %78, %77
  %80 = add i32 %76, %79
  %81 = zext i32 %80 to i64
  %82 = shl nuw nsw i64 %81, 2
  %83 = add nuw nsw i64 %82, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %72, i8 0, i64 %83, i1 false), !tbaa !7
  br label %92

84:                                               ; preds = %84, %66
  %85 = phi i64 [ 0, %66 ], [ %90, %84 ]
  %86 = add nuw nsw i64 %85, %67
  %87 = getelementptr inbounds i32, ptr %5, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !7
  %89 = getelementptr inbounds i32, ptr %5, i64 %85
  store i32 %88, ptr %89, align 4, !tbaa !7
  %90 = add nuw nsw i64 %85, 1
  %91 = icmp eq i64 %90, %68
  br i1 %91, label %69, label %84, !llvm.loop !106

92:                                               ; preds = %69, %60, %56, %33
  %93 = phi i32 [ 0, %60 ], [ 0, %33 ], [ %61, %69 ], [ %0, %56 ]
  ret i32 %93
}

; Function Attrs: nofree nounwind optsize memory(write, argmem: readwrite) uwtable
define internal void @mp_sqrt_init(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #0 {
  store i32 1, ptr %3, align 4, !tbaa !7
  store i32 1, ptr %4, align 4, !tbaa !7
  %6 = getelementptr inbounds i32, ptr %2, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !7
  %8 = getelementptr inbounds i32, ptr %2, i64 2
  %9 = sitofp i32 %1 to double
  %10 = fdiv double 1.000000e+00, %9
  %11 = icmp sgt i32 %0, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %5
  %13 = zext i32 %0 to i64
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i64 [ %13, %12 ], [ %17, %14 ]
  %16 = phi double [ 0.000000e+00, %12 ], [ %22, %14 ]
  %17 = add nsw i64 %15, -1
  %18 = and i64 %17, 4294967295
  %19 = getelementptr inbounds i32, ptr %8, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !7
  %21 = sitofp i32 %20 to double
  %22 = tail call double @llvm.fmuladd.f64(double %10, double %16, double %21)
  %23 = icmp ugt i64 %15, 1
  br i1 %23, label %14, label %24, !llvm.loop !93

24:                                               ; preds = %14, %5
  %25 = phi double [ 0.000000e+00, %5 ], [ %22, %14 ]
  %26 = and i32 %7, 1
  %27 = icmp ne i32 %26, 0
  %28 = sext i1 %27 to i32
  %29 = add nsw i32 %7, %28
  %30 = select i1 %27, double %9, double 1.000000e+00
  %31 = fmul double %30, %25
  %32 = sdiv i32 %29, 2
  %33 = tail call double @sqrt(double noundef %31) #19
  %34 = fcmp olt double %33, 1.000000e+00
  %35 = sext i1 %34 to i32
  %36 = add nsw i32 %32, %35
  %37 = select i1 %34, double %9, double 1.000000e+00
  %38 = fmul double %33, %37
  %39 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 %36, ptr %39, align 4, !tbaa !7
  %40 = getelementptr inbounds i32, ptr %3, i64 2
  br i1 %11, label %41, label %57

41:                                               ; preds = %24
  %42 = add nsw i32 %1, -1
  %43 = zext i32 %0 to i64
  br label %44

44:                                               ; preds = %44, %41
  %45 = phi i64 [ 0, %41 ], [ %55, %44 ]
  %46 = phi double [ %38, %41 ], [ %53, %44 ]
  %47 = fptosi double %46 to i32
  %48 = icmp slt i32 %47, %1
  %49 = select i1 %48, double %46, double %9
  %50 = select i1 %48, i32 %47, i32 %42
  %51 = sitofp i32 %50 to double
  %52 = fsub double %49, %51
  %53 = fmul double %52, %9
  %54 = getelementptr inbounds i32, ptr %40, i64 %45
  store i32 %50, ptr %54, align 4, !tbaa !7
  %55 = add nuw nsw i64 %45, 1
  %56 = icmp eq i64 %55, %43
  br i1 %56, label %57, label %44, !llvm.loop !95

57:                                               ; preds = %44, %24
  %58 = sub nsw i32 0, %36
  %59 = fdiv double 1.000000e+00, %38
  %60 = fcmp olt double %59, 1.000000e+00
  br i1 %60, label %61, label %67

61:                                               ; preds = %61, %57
  %62 = phi double [ %64, %61 ], [ %59, %57 ]
  %63 = phi i32 [ %65, %61 ], [ %58, %57 ]
  %64 = fmul double %62, %9
  %65 = add nsw i32 %63, -1
  %66 = fcmp olt double %64, 1.000000e+00
  br i1 %66, label %61, label %67, !llvm.loop !107

67:                                               ; preds = %61, %57
  %68 = phi i32 [ %58, %57 ], [ %65, %61 ]
  %69 = phi double [ %59, %57 ], [ %64, %61 ]
  %70 = getelementptr inbounds i32, ptr %4, i64 1
  store i32 %68, ptr %70, align 4, !tbaa !7
  %71 = getelementptr inbounds i32, ptr %4, i64 2
  br i1 %11, label %72, label %88

72:                                               ; preds = %67
  %73 = add nsw i32 %1, -1
  %74 = zext i32 %0 to i64
  br label %75

75:                                               ; preds = %75, %72
  %76 = phi i64 [ 0, %72 ], [ %86, %75 ]
  %77 = phi double [ %69, %72 ], [ %84, %75 ]
  %78 = fptosi double %77 to i32
  %79 = icmp slt i32 %78, %1
  %80 = select i1 %79, double %77, double %9
  %81 = select i1 %79, i32 %78, i32 %73
  %82 = sitofp i32 %81 to double
  %83 = fsub double %80, %82
  %84 = fmul double %83, %9
  %85 = getelementptr inbounds i32, ptr %71, i64 %76
  store i32 %81, ptr %85, align 4, !tbaa !7
  %86 = add nuw nsw i64 %76, 1
  %87 = icmp eq i64 %86, %74
  br i1 %87, label %88, label %75, !llvm.loop !95

88:                                               ; preds = %75, %67
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @mp_sqrt_newton(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr nocapture noundef %11) #8 {
  %13 = ashr i32 %6, 1
  %14 = add nsw i32 %13, 1
  %15 = tail call i32 @llvm.smax.i32(i32 %13, i32 2)
  %16 = sdiv i32 %0, 2
  %17 = add nsw i32 %16, 1
  %18 = sub nsw i32 %0, %14
  %19 = tail call i32 @llvm.smax.i32(i32 %17, i32 %18)
  %20 = lshr i32 %15, 1
  %21 = add nuw nsw i32 %20, 1
  tail call void @mp_round(i32 noundef %19, i32 noundef %1, i32 noundef %21, ptr noundef %4) #20
  %22 = load i32, ptr %11, align 4, !tbaa !7
  %23 = icmp eq i32 %22, %15
  br i1 %23, label %25, label %24

24:                                               ; preds = %12
  tail call void @mp_squh(i32 noundef %19, i32 noundef %1, ptr noundef %4, ptr noundef %5, i32 noundef %15, ptr noundef %7, ptr noundef %9, ptr noundef %10) #20
  br label %26

25:                                               ; preds = %12
  tail call void @mp_squh_use_in1fft(i32 noundef %19, i32 noundef %1, ptr noundef %7, ptr noundef %5, i32 noundef %15, ptr noundef %9, ptr noundef %10) #20
  br label %26

26:                                               ; preds = %25, %24
  tail call void @mp_round(i32 noundef %0, i32 noundef %1, i32 noundef %14, ptr noundef %3) #20
  tail call void @mp_mulh(i32 noundef %19, i32 noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #20
  tail call void @mp_sub(i32 noundef %19, i32 noundef %1, ptr noundef %4, ptr noundef %5, ptr noundef %5) #20
  tail call void @mp_add(i32 noundef %19, i32 noundef %1, ptr noundef %4, ptr noundef %5, ptr noundef %4) #20
  tail call void @mp_squh_use_in1fft(i32 noundef %0, i32 noundef %1, ptr noundef %7, ptr noundef %5, i32 noundef %6, ptr noundef %9, ptr noundef %10) #20
  tail call void @mp_sub(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %5, ptr noundef %5) #20
  %27 = getelementptr inbounds i32, ptr %2, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !7
  %29 = getelementptr inbounds i32, ptr %5, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !7
  %31 = sub i32 %28, %30
  %32 = getelementptr inbounds i32, ptr %2, i64 2
  %33 = load i32, ptr %32, align 4, !tbaa !7
  %34 = getelementptr inbounds i32, ptr %5, i64 2
  %35 = load i32, ptr %34, align 4, !tbaa !7
  %36 = icmp sgt i32 %33, %35
  %37 = zext i1 %36 to i32
  %38 = add nsw i32 %31, %37
  %39 = load i32, ptr %5, align 4, !tbaa !7
  %40 = icmp eq i32 %39, 0
  %41 = add nsw i32 %6, 1
  %42 = select i1 %40, i32 %41, i32 %38
  tail call void @mp_round(i32 noundef %19, i32 noundef %1, i32 noundef %14, ptr noundef %4) #20
  tail call void @mp_mulh(i32 noundef %19, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #20
  store i32 %6, ptr %11, align 4, !tbaa !7
  tail call void @mp_idiv_2(i32 noundef %19, i32 noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %5) #20
  tail call void @mp_add(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef nonnull %5, ptr noundef %3) #20
  ret i32 %42
}

; Function Attrs: nounwind optsize uwtable
define internal void @mp_squh_use_in1fft(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #8 {
  tail call void @mp_mul_csqu(i32 noundef %4, ptr noundef %2) #20
  %8 = getelementptr inbounds double, ptr %2, i64 1
  tail call void @rdft(i32 noundef %4, i32 noundef -1, ptr noundef nonnull %8, ptr noundef %5, ptr noundef %6) #19
  tail call void @mp_mul_d2i(i32 noundef %0, i32 noundef %1, i32 noundef %4, ptr noundef %2, ptr noundef %3) #20
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #6

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal double @mp_mul_d2i_test(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = sitofp i32 %1 to double
  %5 = fdiv double 2.000000e+00, %4
  %6 = sitofp i32 %0 to double
  %7 = fdiv double 1.000000e+00, %6
  %8 = fmul double %7, %7
  %9 = add nsw i32 %1, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds double, ptr %2, i64 %10
  %12 = load double, ptr %11, align 8, !tbaa !11
  %13 = fmul double %12, %4
  %14 = fmul double %13, 5.000000e-01
  %15 = fcmp olt double %14, 0.000000e+00
  %16 = fneg double %14
  %17 = select i1 %15, double %16, double %14
  %18 = getelementptr inbounds double, ptr %2, i64 1
  %19 = load double, ptr %18, align 8, !tbaa !11
  %20 = fsub double %19, %17
  store double %20, ptr %11, align 8, !tbaa !11
  %21 = icmp sgt i32 %1, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %3
  %23 = zext i32 %9 to i64
  br label %24

24:                                               ; preds = %54, %22
  %25 = phi i64 [ %23, %22 ], [ %56, %54 ]
  %26 = phi double [ 0.000000e+00, %22 ], [ %55, %54 ]
  %27 = phi i32 [ 0, %22 ], [ %44, %54 ]
  %28 = phi i32 [ 0, %22 ], [ %36, %54 ]
  %29 = getelementptr inbounds double, ptr %2, i64 %25
  %30 = load double, ptr %29, align 8, !tbaa !11
  %31 = sitofp i32 %27 to double
  %32 = tail call double @llvm.fmuladd.f64(double %5, double %30, double %31)
  %33 = fadd double %32, 5.000000e-01
  %34 = fmul double %8, %33
  %35 = fptosi double %34 to i32
  %36 = add nsw i32 %35, -1
  %37 = sitofp i32 %36 to double
  %38 = fsub double %34, %37
  %39 = fmul double %38, %6
  %40 = fptosi double %39 to i32
  %41 = sitofp i32 %40 to double
  %42 = fsub double %39, %41
  %43 = fmul double %42, %6
  %44 = add nsw i32 %28, %40
  %45 = fadd double %43, -5.000000e-01
  %46 = fptosi double %43 to i32
  %47 = sitofp i32 %46 to double
  %48 = fsub double %45, %47
  %49 = fcmp ogt double %48, %26
  br i1 %49, label %54, label %50

50:                                               ; preds = %24
  %51 = fneg double %48
  %52 = fcmp olt double %26, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53, %50, %24
  %55 = phi double [ %51, %53 ], [ %26, %50 ], [ %48, %24 ]
  %56 = add nsw i64 %25, -1
  %57 = icmp sgt i64 %25, 2
  br i1 %57, label %24, label %58, !llvm.loop !108

58:                                               ; preds = %54, %3
  %59 = phi double [ 0.000000e+00, %3 ], [ %55, %54 ]
  ret double %59
}

attributes #0 = { nofree nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind optsize memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind optsize }
attributes #20 = { optsize }
attributes #21 = { nounwind }
attributes #22 = { cold optsize }
attributes #23 = { noreturn nounwind optsize }
attributes #24 = { cold }
attributes #25 = { nounwind optsize allocsize(0) }

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
!12 = !{!"double", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !9, i64 0}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = !{i32 -1, i32 1}
!53 = distinct !{!53, !14}
!54 = distinct !{!54, !14}
!55 = !{!9, !9, i64 0}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
!58 = distinct !{!58, !14}
!59 = distinct !{!59, !14}
!60 = distinct !{!60, !14}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14, !64, !65}
!64 = !{!"llvm.loop.isvectorized", i32 1}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = distinct !{!66, !14}
!67 = distinct !{!67, !14}
!68 = distinct !{!68, !14}
!69 = distinct !{!69, !14}
!70 = distinct !{!70, !14}
!71 = distinct !{!71, !14}
!72 = distinct !{!72, !14}
!73 = distinct !{!73, !14}
!74 = !{i32 0, i32 2}
!75 = distinct !{!75, !14}
!76 = distinct !{!76, !14}
!77 = distinct !{!77, !14}
!78 = distinct !{!78, !14}
!79 = distinct !{!79, !14}
!80 = distinct !{!80, !14}
!81 = distinct !{!81, !14}
!82 = distinct !{!82, !14}
!83 = distinct !{!83, !14}
!84 = distinct !{!84, !14}
!85 = distinct !{!85, !14}
!86 = distinct !{!86, !14}
!87 = distinct !{!87, !14}
!88 = distinct !{!88, !14}
!89 = distinct !{!89, !14}
!90 = distinct !{!90, !14}
!91 = distinct !{!91, !14}
!92 = distinct !{!92, !14}
!93 = distinct !{!93, !14}
!94 = distinct !{!94, !14}
!95 = distinct !{!95, !14}
!96 = distinct !{!96, !14}
!97 = distinct !{!97, !14}
!98 = distinct !{!98, !14}
!99 = distinct !{!99, !14}
!100 = distinct !{!100, !14}
!101 = distinct !{!101, !14}
!102 = distinct !{!102, !14}
!103 = distinct !{!103, !14}
!104 = distinct !{!104, !14}
!105 = distinct !{!105, !14}
!106 = distinct !{!106, !14}
!107 = distinct !{!107, !14}
!108 = distinct !{!108, !14}
!109 = !{!"ddbg"}
