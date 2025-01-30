; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Misc/oourafft.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [45 x i8] c"FFT sanity check failed! Difference is: %le\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%e %e\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca %struct.timeval, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %5 = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %6 = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  %7 = tail call noalias align 16 dereferenceable_or_null(128) ptr @memalign(i64 noundef 16, i64 noundef 128) #16
  %8 = tail call noalias align 16 dereferenceable_or_null(20480) ptr @memalign(i64 noundef 16, i64 noundef 20480) #16
  tail call void @makewt(i32 noundef 512, ptr noundef %7, ptr noundef %8) #17
  %9 = tail call noalias align 16 dereferenceable_or_null(16384) ptr @memalign(i64 noundef 16, i64 noundef 16384) #16
  %10 = tail call noalias align 16 dereferenceable_or_null(16384) ptr @memalign(i64 noundef 16, i64 noundef 16384) #16
  %11 = tail call noalias align 16 dereferenceable_or_null(16384) ptr @memalign(i64 noundef 16, i64 noundef 16384) #16
  br label %12

12:                                               ; preds = %12, %0
  %13 = phi i64 [ 0, %0 ], [ %21, %12 ]
  %14 = phi i32 [ 0, %0 ], [ %17, %12 ]
  %15 = mul nuw nsw i32 %14, 7141
  %16 = add nuw nsw i32 %15, 54773
  %17 = urem i32 %16, 259200
  %18 = sitofp i32 %17 to double
  %19 = fmul double %18, 0x3ED02E85C0898B71
  %20 = getelementptr inbounds double, ptr %9, i64 %13
  store double %19, ptr %20, align 8, !tbaa !7
  %21 = add nuw nsw i64 %13, 1
  %22 = and i64 %21, 4294967295
  %23 = icmp eq i64 %22, 2048
  br i1 %23, label %24, label %12, !llvm.loop !11

24:                                               ; preds = %12
  tail call fastcc void @bitrv2(i32 noundef 2048, ptr noundef %7, ptr noundef nonnull %9) #17
  tail call fastcc void @cftfsub(i32 noundef 2048, ptr noundef nonnull %9, ptr noundef %8) #17
  tail call void @cdft(i32 noundef 2048, i32 noundef -1, ptr noundef nonnull %9, ptr noundef %7, ptr noundef %8) #17
  br label %25

25:                                               ; preds = %25, %24
  %26 = phi i64 [ 0, %24 ], [ %40, %25 ]
  %27 = phi double [ 0.000000e+00, %24 ], [ %39, %25 ]
  %28 = phi i32 [ 0, %24 ], [ %31, %25 ]
  %29 = mul nuw nsw i32 %28, 7141
  %30 = add nuw nsw i32 %29, 54773
  %31 = urem i32 %30, 259200
  %32 = sitofp i32 %31 to double
  %33 = getelementptr inbounds double, ptr %9, i64 %26
  %34 = load double, ptr %33, align 8, !tbaa !7
  %35 = fmul double %34, 0xBF50000000000000
  %36 = tail call double @llvm.fmuladd.f64(double %32, double 0x3ED02E85C0898B71, double %35)
  %37 = tail call double @llvm.fabs.f64(double %36)
  %38 = fcmp ogt double %27, %37
  %39 = select i1 %38, double %27, double %37
  %40 = add nuw nsw i64 %26, 1
  %41 = and i64 %40, 4294967295
  %42 = icmp eq i64 %41, 2048
  br i1 %42, label %43, label %25, !llvm.loop !13

43:                                               ; preds = %25
  %.lcssa = phi double [ %39, %25 ]
  %44 = tail call double @llvm.fabs.f64(double %.lcssa)
  %45 = fcmp ogt double %44, 1.000000e-10
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %.lcssa) #17
  tail call void @abort() #18
  unreachable

48:                                               ; preds = %43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) %9, i8 0, i64 16384, i1 false)
  br label %49

49:                                               ; preds = %49, %48
  %50 = phi i64 [ 0, %48 ], [ %58, %49 ]
  %51 = phi i32 [ 0, %48 ], [ %54, %49 ]
  %52 = mul nuw nsw i32 %51, 7141
  %53 = add nuw nsw i32 %52, 54773
  %54 = urem i32 %53, 259200
  %55 = sitofp i32 %54 to double
  %56 = fmul double %55, 0x3ED02E85C0898B71
  %57 = getelementptr inbounds double, ptr %9, i64 %50
  store double %56, ptr %57, align 8, !tbaa !7
  %58 = add nuw nsw i64 %50, 1
  %59 = and i64 %58, 4294967295
  %60 = icmp eq i64 %59, 1024
  br i1 %60, label %61, label %49, !llvm.loop !11

61:                                               ; preds = %49
  tail call fastcc void @bitrv2(i32 noundef 2048, ptr noundef %7, ptr noundef nonnull %9) #17
  tail call fastcc void @cftfsub(i32 noundef 2048, ptr noundef nonnull %9, ptr noundef %8) #17
  br label %62

62:                                               ; preds = %62, %61
  %63 = phi i64 [ 0, %61 ], [ %69, %62 ]
  %64 = shl nuw nsw i64 %63, 1
  %65 = or i64 %64, 1
  %66 = getelementptr inbounds double, ptr %9, i64 %65
  %67 = load double, ptr %66, align 8, !tbaa !7
  %68 = fneg double %67
  store double %68, ptr %66, align 8, !tbaa !7
  %69 = add nuw nsw i64 %63, 1
  %70 = icmp eq i64 %69, 1024
  br i1 %70, label %71, label %62, !llvm.loop !14

71:                                               ; preds = %62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) %11, i8 0, i64 16384, i1 false)
  br label %72

72:                                               ; preds = %72, %71
  %73 = phi i64 [ 0, %71 ], [ %81, %72 ]
  %74 = phi i32 [ 0, %71 ], [ %77, %72 ]
  %75 = mul nuw nsw i32 %74, 7141
  %76 = add nuw nsw i32 %75, 54773
  %77 = urem i32 %76, 259200
  %78 = sitofp i32 %77 to double
  %79 = fmul double %78, 0x3ED02E85C0898B71
  %80 = getelementptr inbounds double, ptr %11, i64 %73
  store double %79, ptr %80, align 8, !tbaa !7
  %81 = add nuw nsw i64 %73, 1
  %82 = and i64 %81, 4294967295
  %83 = icmp eq i64 %82, 1024
  br i1 %83, label %84, label %72, !llvm.loop !11

84:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %85 = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  %86 = getelementptr double, ptr %10, i64 -1
  br label %87

87:                                               ; preds = %110, %84
  %88 = phi i32 [ 0, %84 ], [ %111, %110 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) %10, ptr noundef nonnull align 16 dereferenceable(16384) %11, i64 16384, i1 false)
  tail call fastcc void @bitrv2(i32 noundef 2048, ptr noundef %7, ptr noundef %10) #17
  tail call fastcc void @cftfsub(i32 noundef 2048, ptr noundef %10, ptr noundef %8) #17
  br label %89

89:                                               ; preds = %89, %87
  %90 = phi i64 [ 0, %87 ], [ %108, %89 ]
  %91 = shl nuw nsw i64 %90, 1
  %92 = getelementptr inbounds double, ptr %10, i64 %91
  %93 = load <4 x double>, ptr %92, align 16, !tbaa !7
  %94 = shufflevector <4 x double> %93, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %95 = shufflevector <4 x double> %93, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %96 = getelementptr inbounds double, ptr %9, i64 %91
  %97 = load <4 x double>, ptr %96, align 16, !tbaa !7
  %98 = shufflevector <4 x double> %97, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %99 = shufflevector <4 x double> %97, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %100 = or i64 %91, 1
  %101 = fneg <2 x double> %95
  %102 = fmul <2 x double> %99, %101
  %103 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %94, <2 x double> %98, <2 x double> %102)
  %104 = fmul <2 x double> %98, %95
  %105 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %94, <2 x double> %99, <2 x double> %104)
  %106 = getelementptr double, ptr %86, i64 %100
  %107 = shufflevector <2 x double> %103, <2 x double> %105, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %107, ptr %106, align 16, !tbaa !7
  %108 = add nuw i64 %90, 2
  %109 = icmp eq i64 %108, 1024
  br i1 %109, label %110, label %89, !llvm.loop !15

110:                                              ; preds = %89
  tail call void @cdft(i32 noundef 2048, i32 noundef -1, ptr noundef nonnull %10, ptr noundef %7, ptr noundef %8) #17
  %111 = add nuw nsw i32 %88, 1
  %112 = icmp eq i32 %111, 150000
  br i1 %112, label %113, label %87, !llvm.loop !18

113:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #14
  %114 = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #14
  br label %115

115:                                              ; preds = %115, %113
  %116 = phi i64 [ 0, %113 ], [ %130, %115 ]
  %117 = shl nuw nsw i64 %116, 1
  %118 = getelementptr inbounds double, ptr %10, i64 %117
  %119 = load double, ptr %118, align 16, !tbaa !7
  %120 = tail call double @llvm.fabs.f64(double %119)
  %121 = fcmp ogt double %120, 1.000000e-09
  %122 = select i1 %121, double %119, double 0.000000e+00
  %123 = or i64 %117, 1
  %124 = getelementptr inbounds double, ptr %10, i64 %123
  %125 = load double, ptr %124, align 8, !tbaa !7
  %126 = tail call double @llvm.fabs.f64(double %125)
  %127 = fcmp ogt double %126, 1.000000e-09
  %128 = select i1 %127, double %125, double 0.000000e+00
  %129 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %122, double noundef %128) #17
  %130 = add nuw nsw i64 %116, 1
  %131 = icmp eq i64 %130, 1024
  br i1 %131, label %132, label %115, !llvm.loop !19

132:                                              ; preds = %115
  tail call void @free(ptr noundef %9) #15
  tail call void @free(ptr noundef %8) #15
  tail call void @free(ptr noundef %7) #15
  tail call void @free(ptr noundef nonnull %10) #15
  tail call void @free(ptr noundef %11) #15
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @memalign(i64 allocalign noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize memory(write, argmem: readwrite) uwtable
define internal void @makewt(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #4 {
  %4 = icmp sgt i32 %0, 2
  br i1 %4, label %5, label %36

5:                                                ; preds = %3
  %6 = lshr i32 %0, 1
  %7 = sitofp i32 %6 to double
  %8 = fdiv double 0x3FE921FB54442D18, %7
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %2, align 8, !tbaa !7
  %9 = fmul double %8, %7
  %10 = tail call double @cos(double noundef %9) #15
  %11 = zext i32 %6 to i64
  %12 = getelementptr inbounds double, ptr %2, i64 %11
  store double %10, ptr %12, align 8, !tbaa !7
  %13 = add nuw nsw i32 %6, 1
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds double, ptr %2, i64 %14
  store double %10, ptr %15, align 8, !tbaa !7
  %16 = icmp ugt i32 %0, 5
  br i1 %16, label %17, label %36

17:                                               ; preds = %5
  %18 = zext i32 %0 to i64
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i64 [ 2, %17 ], [ %33, %19 ]
  %21 = trunc i64 %20 to i32
  %22 = sitofp i32 %21 to double
  %23 = fmul double %8, %22
  %24 = tail call double @cos(double noundef %23) #15
  %25 = tail call double @sin(double noundef %23) #15
  %26 = getelementptr inbounds double, ptr %2, i64 %20
  store double %24, ptr %26, align 8, !tbaa !7
  %27 = or i64 %20, 1
  %28 = getelementptr inbounds double, ptr %2, i64 %27
  store double %25, ptr %28, align 8, !tbaa !7
  %29 = sub nsw i64 %18, %20
  %30 = getelementptr inbounds double, ptr %2, i64 %29
  store double %25, ptr %30, align 8, !tbaa !7
  %31 = add nsw i64 %29, 1
  %32 = getelementptr inbounds double, ptr %2, i64 %31
  store double %24, ptr %32, align 8, !tbaa !7
  %33 = add nuw nsw i64 %20, 2
  %34 = icmp ult i64 %33, %11
  br i1 %34, label %19, label %35, !llvm.loop !20

35:                                               ; preds = %19
  tail call fastcc void @bitrv2(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2) #17
  br label %36

36:                                               ; preds = %35, %5, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @bitrv2(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #5 {
  store i32 0, ptr %1, align 4, !tbaa !21
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
  %16 = load i32, ptr %15, align 4, !tbaa !21
  %17 = add nsw i32 %16, %8
  %18 = add nuw nsw i64 %14, %11
  %19 = getelementptr inbounds i32, ptr %1, i64 %18
  store i32 %17, ptr %19, align 4, !tbaa !21
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
  %48 = load i32, ptr %1, align 4, !tbaa !21
  br label %118

49:                                               ; preds = %44
  %50 = getelementptr inbounds i32, ptr %1, i64 %45
  %51 = load i32, ptr %50, align 4, !tbaa !21
  %52 = sext i32 %51 to i64
  %53 = trunc i64 %45 to i32
  %54 = shl i32 %53, 1
  br label %55

55:                                               ; preds = %55, %49
  %56 = phi i64 [ 0, %49 ], [ %116, %55 ]
  %57 = shl nuw nsw i64 %56, 1
  %58 = add nsw i64 %57, %52
  %59 = getelementptr inbounds i32, ptr %1, i64 %56
  %60 = load i32, ptr %59, align 4, !tbaa !21
  %61 = add nsw i32 %60, %54
  %62 = getelementptr inbounds double, ptr %2, i64 %58
  %63 = load double, ptr %62, align 8, !tbaa !7
  %64 = add nsw i64 %58, 1
  %65 = getelementptr inbounds double, ptr %2, i64 %64
  %66 = load double, ptr %65, align 8, !tbaa !7
  %67 = sext i32 %61 to i64
  %68 = getelementptr inbounds double, ptr %2, i64 %67
  %69 = load double, ptr %68, align 8, !tbaa !7
  %70 = add nsw i32 %61, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, ptr %2, i64 %71
  %73 = load double, ptr %72, align 8, !tbaa !7
  store double %69, ptr %62, align 8, !tbaa !7
  store double %73, ptr %65, align 8, !tbaa !7
  store double %63, ptr %68, align 8, !tbaa !7
  store double %66, ptr %72, align 8, !tbaa !7
  %74 = add nsw i64 %58, %42
  %75 = add nsw i32 %61, %41
  %76 = getelementptr inbounds double, ptr %2, i64 %74
  %77 = load double, ptr %76, align 8, !tbaa !7
  %78 = add nsw i64 %74, 1
  %79 = getelementptr inbounds double, ptr %2, i64 %78
  %80 = load double, ptr %79, align 8, !tbaa !7
  %81 = sext i32 %75 to i64
  %82 = getelementptr inbounds double, ptr %2, i64 %81
  %83 = load double, ptr %82, align 8, !tbaa !7
  %84 = add nsw i32 %75, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, ptr %2, i64 %85
  %87 = load double, ptr %86, align 8, !tbaa !7
  store double %83, ptr %76, align 8, !tbaa !7
  store double %87, ptr %79, align 8, !tbaa !7
  store double %77, ptr %82, align 8, !tbaa !7
  store double %80, ptr %86, align 8, !tbaa !7
  %88 = add nsw i64 %74, %42
  %89 = sub nsw i32 %75, %40
  %90 = getelementptr inbounds double, ptr %2, i64 %88
  %91 = load double, ptr %90, align 8, !tbaa !7
  %92 = add nsw i64 %88, 1
  %93 = getelementptr inbounds double, ptr %2, i64 %92
  %94 = load double, ptr %93, align 8, !tbaa !7
  %95 = sext i32 %89 to i64
  %96 = getelementptr inbounds double, ptr %2, i64 %95
  %97 = load double, ptr %96, align 8, !tbaa !7
  %98 = add nsw i32 %89, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, ptr %2, i64 %99
  %101 = load double, ptr %100, align 8, !tbaa !7
  store double %97, ptr %90, align 8, !tbaa !7
  store double %101, ptr %93, align 8, !tbaa !7
  store double %91, ptr %96, align 8, !tbaa !7
  store double %94, ptr %100, align 8, !tbaa !7
  %102 = add nsw i64 %88, %42
  %103 = add nsw i32 %89, %41
  %104 = getelementptr inbounds double, ptr %2, i64 %102
  %105 = load double, ptr %104, align 8, !tbaa !7
  %106 = add nsw i64 %102, 1
  %107 = getelementptr inbounds double, ptr %2, i64 %106
  %108 = load double, ptr %107, align 8, !tbaa !7
  %109 = sext i32 %103 to i64
  %110 = getelementptr inbounds double, ptr %2, i64 %109
  %111 = load double, ptr %110, align 8, !tbaa !7
  %112 = add nsw i32 %103, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds double, ptr %2, i64 %113
  %115 = load double, ptr %114, align 8, !tbaa !7
  store double %111, ptr %104, align 8, !tbaa !7
  store double %115, ptr %107, align 8, !tbaa !7
  store double %105, ptr %110, align 8, !tbaa !7
  store double %108, ptr %114, align 8, !tbaa !7
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
  %127 = load double, ptr %126, align 8, !tbaa !7
  %128 = add nsw i32 %123, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, ptr %2, i64 %129
  %131 = load double, ptr %130, align 8, !tbaa !7
  %132 = sext i32 %124 to i64
  %133 = getelementptr inbounds double, ptr %2, i64 %132
  %134 = load double, ptr %133, align 8, !tbaa !7
  %135 = add nsw i32 %124, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds double, ptr %2, i64 %136
  %138 = load double, ptr %137, align 8, !tbaa !7
  store double %134, ptr %126, align 8, !tbaa !7
  store double %138, ptr %130, align 8, !tbaa !7
  store double %127, ptr %133, align 8, !tbaa !7
  store double %131, ptr %137, align 8, !tbaa !7
  %139 = add nuw nsw i64 %45, 1
  %140 = icmp eq i64 %139, %43
  br i1 %140, label %186, label %44, !llvm.loop !26

141:                                              ; preds = %183, %33
  %142 = phi i64 [ 1, %33 ], [ %184, %183 ]
  %143 = getelementptr inbounds i32, ptr %1, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !21
  %145 = sext i32 %144 to i64
  %146 = trunc i64 %142 to i32
  %147 = shl i32 %146, 1
  br label %148

148:                                              ; preds = %148, %141
  %149 = phi i64 [ 0, %141 ], [ %181, %148 ]
  %150 = shl nuw nsw i64 %149, 1
  %151 = add nsw i64 %150, %145
  %152 = getelementptr inbounds i32, ptr %1, i64 %149
  %153 = load i32, ptr %152, align 4, !tbaa !21
  %154 = add nsw i32 %153, %147
  %155 = getelementptr inbounds double, ptr %2, i64 %151
  %156 = load double, ptr %155, align 8, !tbaa !7
  %157 = add nsw i64 %151, 1
  %158 = getelementptr inbounds double, ptr %2, i64 %157
  %159 = load double, ptr %158, align 8, !tbaa !7
  %160 = sext i32 %154 to i64
  %161 = getelementptr inbounds double, ptr %2, i64 %160
  %162 = load double, ptr %161, align 8, !tbaa !7
  %163 = add nsw i32 %154, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds double, ptr %2, i64 %164
  %166 = load double, ptr %165, align 8, !tbaa !7
  store double %162, ptr %155, align 8, !tbaa !7
  store double %166, ptr %158, align 8, !tbaa !7
  store double %156, ptr %161, align 8, !tbaa !7
  store double %159, ptr %165, align 8, !tbaa !7
  %167 = add nsw i64 %151, %34
  %168 = add nsw i32 %154, %27
  %169 = getelementptr inbounds double, ptr %2, i64 %167
  %170 = load double, ptr %169, align 8, !tbaa !7
  %171 = add nsw i64 %167, 1
  %172 = getelementptr inbounds double, ptr %2, i64 %171
  %173 = load double, ptr %172, align 8, !tbaa !7
  %174 = sext i32 %168 to i64
  %175 = getelementptr inbounds double, ptr %2, i64 %174
  %176 = load double, ptr %175, align 8, !tbaa !7
  %177 = add nsw i32 %168, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds double, ptr %2, i64 %178
  %180 = load double, ptr %179, align 8, !tbaa !7
  store double %176, ptr %169, align 8, !tbaa !7
  store double %180, ptr %172, align 8, !tbaa !7
  store double %170, ptr %175, align 8, !tbaa !7
  store double %173, ptr %179, align 8, !tbaa !7
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

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @cftfsub(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = icmp sgt i32 %0, 8
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  tail call fastcc void @cft1st(i32 noundef %0, ptr noundef %1, ptr noundef %2) #17
  %6 = icmp ugt i32 %0, 32
  br i1 %6, label %7, label %12

7:                                                ; preds = %7, %5
  %8 = phi i32 [ %10, %7 ], [ 32, %5 ]
  %9 = phi i32 [ %8, %7 ], [ 8, %5 ]
  tail call fastcc void @cftmdl(i32 noundef %0, i32 noundef %9, ptr noundef %1, ptr noundef %2) #17
  %10 = shl i32 %8, 2
  %11 = icmp slt i32 %10, %0
  br i1 %11, label %7, label %12, !llvm.loop !29

12:                                               ; preds = %7, %5, %3
  %13 = phi i32 [ 2, %3 ], [ 8, %5 ], [ %8, %7 ]
  %14 = shl i32 %13, 2
  %15 = icmp eq i32 %14, %0
  %16 = icmp sgt i32 %13, 0
  br i1 %15, label %20, label %17

17:                                               ; preds = %12
  br i1 %16, label %18, label %97

18:                                               ; preds = %17
  %19 = zext i32 %13 to i64
  br label %76

20:                                               ; preds = %12
  br i1 %16, label %21, label %97

21:                                               ; preds = %20
  %22 = zext i32 %13 to i64
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i64 [ 0, %21 ], [ %74, %23 ]
  %25 = add nuw nsw i64 %24, %22
  %26 = add nuw nsw i64 %25, %22
  %27 = add nuw nsw i64 %26, %22
  %28 = getelementptr inbounds double, ptr %1, i64 %24
  %29 = getelementptr inbounds double, ptr %1, i64 %25
  %30 = load double, ptr %29, align 8, !tbaa !7
  %31 = shl i64 %25, 32
  %32 = ashr exact i64 %31, 32
  %33 = or i64 %32, 1
  %34 = getelementptr inbounds double, ptr %1, i64 %33
  %35 = load double, ptr %34, align 8, !tbaa !7
  %36 = getelementptr inbounds double, ptr %1, i64 %26
  %37 = load double, ptr %36, align 8, !tbaa !7
  %38 = getelementptr inbounds double, ptr %1, i64 %27
  %39 = load double, ptr %38, align 8, !tbaa !7
  %40 = shl i64 %26, 32
  %41 = ashr exact i64 %40, 32
  %42 = or i64 %41, 1
  %43 = getelementptr inbounds double, ptr %1, i64 %42
  %44 = load double, ptr %43, align 8, !tbaa !7
  %45 = shl i64 %27, 32
  %46 = ashr exact i64 %45, 32
  %47 = or i64 %46, 1
  %48 = getelementptr inbounds double, ptr %1, i64 %47
  %49 = load double, ptr %48, align 8, !tbaa !7
  %50 = fsub double %37, %39
  %51 = fsub double %44, %49
  %52 = load <2 x double>, ptr %28, align 8, !tbaa !7
  %53 = insertelement <2 x double> poison, double %30, i64 0
  %54 = insertelement <2 x double> %53, double %35, i64 1
  %55 = fadd <2 x double> %52, %54
  %56 = extractelement <2 x double> %52, i64 0
  %57 = fsub double %56, %30
  %58 = extractelement <2 x double> %52, i64 1
  %59 = fsub double %58, %35
  %60 = insertelement <2 x double> poison, double %37, i64 0
  %61 = insertelement <2 x double> %60, double %44, i64 1
  %62 = insertelement <2 x double> poison, double %39, i64 0
  %63 = insertelement <2 x double> %62, double %49, i64 1
  %64 = fadd <2 x double> %61, %63
  %65 = fadd <2 x double> %55, %64
  store <2 x double> %65, ptr %28, align 8, !tbaa !7
  %66 = fsub <2 x double> %55, %64
  %67 = extractelement <2 x double> %66, i64 0
  store double %67, ptr %36, align 8, !tbaa !7
  %68 = fsub <2 x double> %55, %64
  %69 = extractelement <2 x double> %68, i64 1
  store double %69, ptr %43, align 8, !tbaa !7
  %70 = fsub double %57, %51
  store double %70, ptr %29, align 8, !tbaa !7
  %71 = fadd double %59, %50
  store double %71, ptr %34, align 8, !tbaa !7
  %72 = fadd double %57, %51
  store double %72, ptr %38, align 8, !tbaa !7
  %73 = fsub double %59, %50
  store double %73, ptr %48, align 8, !tbaa !7
  %74 = add nuw nsw i64 %24, 2
  %75 = icmp ult i64 %74, %22
  br i1 %75, label %23, label %97, !llvm.loop !30

76:                                               ; preds = %76, %18
  %77 = phi i64 [ 0, %18 ], [ %95, %76 ]
  %78 = add nuw nsw i64 %77, %19
  %79 = getelementptr inbounds double, ptr %1, i64 %77
  %80 = getelementptr inbounds double, ptr %1, i64 %78
  %81 = load double, ptr %80, align 8, !tbaa !7
  %82 = shl i64 %78, 32
  %83 = ashr exact i64 %82, 32
  %84 = or i64 %83, 1
  %85 = getelementptr inbounds double, ptr %1, i64 %84
  %86 = load double, ptr %85, align 8, !tbaa !7
  %87 = load <2 x double>, ptr %79, align 8, !tbaa !7
  %88 = extractelement <2 x double> %87, i64 0
  %89 = fsub double %88, %81
  %90 = extractelement <2 x double> %87, i64 1
  %91 = fsub double %90, %86
  %92 = insertelement <2 x double> poison, double %81, i64 0
  %93 = insertelement <2 x double> %92, double %86, i64 1
  %94 = fadd <2 x double> %87, %93
  store <2 x double> %94, ptr %79, align 8, !tbaa !7
  store double %89, ptr %80, align 8, !tbaa !7
  store double %91, ptr %85, align 8, !tbaa !7
  %95 = add nuw nsw i64 %77, 2
  %96 = icmp ult i64 %95, %19
  br i1 %96, label %76, label %97, !llvm.loop !31

97:                                               ; preds = %76, %23, %20, %17
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @cdft(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4) #6 {
  %6 = icmp sgt i32 %0, 4
  br i1 %6, label %7, label %326

7:                                                ; preds = %5
  %8 = icmp sgt i32 %1, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call fastcc void @bitrv2(i32 noundef %0, ptr noundef %3, ptr noundef %2) #17
  br label %328

10:                                               ; preds = %7
  store i32 0, ptr %3, align 4, !tbaa !21
  %11 = icmp ugt i32 %0, 8
  br i1 %11, label %12, label %35

12:                                               ; preds = %28, %10
  %13 = phi i32 [ %29, %28 ], [ 1, %10 ]
  %14 = phi i32 [ %15, %28 ], [ %0, %10 ]
  %15 = ashr i32 %14, 1
  %16 = icmp sgt i32 %13, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = zext i32 %13 to i64
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i64 [ 0, %17 ], [ %26, %19 ]
  %21 = getelementptr inbounds i32, ptr %3, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !21
  %23 = add nsw i32 %22, %15
  %24 = add nuw nsw i64 %20, %18
  %25 = getelementptr inbounds i32, ptr %3, i64 %24
  store i32 %23, ptr %25, align 4, !tbaa !21
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !32

28:                                               ; preds = %19, %12
  %29 = shl i32 %13, 1
  %30 = shl i32 %13, 4
  %31 = icmp slt i32 %30, %15
  br i1 %31, label %12, label %32, !llvm.loop !33

32:                                               ; preds = %28
  %.lcssa3 = phi i32 [ %29, %28 ]
  %.lcssa2 = phi i32 [ %30, %28 ]
  %.lcssa1 = phi i32 [ %13, %28 ]
  %.lcssa = phi i32 [ %15, %28 ]
  %33 = shl i32 %.lcssa1, 2
  %34 = icmp eq i32 %.lcssa2, %.lcssa
  br i1 %34, label %37, label %160

35:                                               ; preds = %10
  %36 = icmp eq i32 %0, 8
  br i1 %36, label %39, label %160

37:                                               ; preds = %32
  %38 = icmp sgt i32 %.lcssa3, 0
  br i1 %38, label %39, label %235

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %.lcssa3, %37 ], [ 1, %35 ]
  %41 = phi i32 [ %33, %37 ], [ 2, %35 ]
  %42 = shl nsw i32 %40, 2
  %43 = or i32 %41, 1
  %44 = sext i32 %41 to i64
  %45 = zext i32 %40 to i64
  br label %46

46:                                               ; preds = %128, %39
  %47 = phi i64 [ 0, %39 ], [ %158, %128 ]
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %128, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds i32, ptr %3, i64 %47
  %51 = load i32, ptr %50, align 4, !tbaa !21
  %52 = sext i32 %51 to i64
  %53 = trunc i64 %47 to i32
  %54 = shl i32 %53, 1
  br label %55

55:                                               ; preds = %55, %49
  %56 = phi i64 [ 0, %49 ], [ %124, %55 ]
  %57 = shl nuw nsw i64 %56, 1
  %58 = add nsw i64 %57, %52
  %59 = getelementptr inbounds i32, ptr %3, i64 %56
  %60 = load i32, ptr %59, align 4, !tbaa !21
  %61 = add nsw i32 %60, %54
  %62 = getelementptr inbounds double, ptr %2, i64 %58
  %63 = load double, ptr %62, align 8, !tbaa !7
  %64 = add nsw i64 %58, 1
  %65 = getelementptr inbounds double, ptr %2, i64 %64
  %66 = load double, ptr %65, align 8, !tbaa !7
  %67 = fneg double %66
  %68 = sext i32 %61 to i64
  %69 = getelementptr inbounds double, ptr %2, i64 %68
  %70 = load double, ptr %69, align 8, !tbaa !7
  %71 = add nsw i32 %61, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, ptr %2, i64 %72
  %74 = load double, ptr %73, align 8, !tbaa !7
  %75 = fneg double %74
  store double %70, ptr %62, align 8, !tbaa !7
  store double %75, ptr %65, align 8, !tbaa !7
  store double %63, ptr %69, align 8, !tbaa !7
  store double %67, ptr %73, align 8, !tbaa !7
  %76 = add nsw i64 %58, %44
  %77 = add nsw i32 %61, %42
  %78 = getelementptr inbounds double, ptr %2, i64 %76
  %79 = load double, ptr %78, align 8, !tbaa !7
  %80 = add nsw i64 %76, 1
  %81 = getelementptr inbounds double, ptr %2, i64 %80
  %82 = load double, ptr %81, align 8, !tbaa !7
  %83 = fneg double %82
  %84 = sext i32 %77 to i64
  %85 = getelementptr inbounds double, ptr %2, i64 %84
  %86 = load double, ptr %85, align 8, !tbaa !7
  %87 = add nsw i32 %77, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, ptr %2, i64 %88
  %90 = load double, ptr %89, align 8, !tbaa !7
  %91 = fneg double %90
  store double %86, ptr %78, align 8, !tbaa !7
  store double %91, ptr %81, align 8, !tbaa !7
  store double %79, ptr %85, align 8, !tbaa !7
  store double %83, ptr %89, align 8, !tbaa !7
  %92 = add nsw i64 %76, %44
  %93 = sub nsw i32 %77, %41
  %94 = getelementptr inbounds double, ptr %2, i64 %92
  %95 = load double, ptr %94, align 8, !tbaa !7
  %96 = add nsw i64 %92, 1
  %97 = getelementptr inbounds double, ptr %2, i64 %96
  %98 = load double, ptr %97, align 8, !tbaa !7
  %99 = fneg double %98
  %100 = sext i32 %93 to i64
  %101 = getelementptr inbounds double, ptr %2, i64 %100
  %102 = load double, ptr %101, align 8, !tbaa !7
  %103 = add nsw i32 %93, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds double, ptr %2, i64 %104
  %106 = load double, ptr %105, align 8, !tbaa !7
  %107 = fneg double %106
  store double %102, ptr %94, align 8, !tbaa !7
  store double %107, ptr %97, align 8, !tbaa !7
  store double %95, ptr %101, align 8, !tbaa !7
  store double %99, ptr %105, align 8, !tbaa !7
  %108 = add nsw i64 %92, %44
  %109 = add nsw i32 %93, %42
  %110 = getelementptr inbounds double, ptr %2, i64 %108
  %111 = load double, ptr %110, align 8, !tbaa !7
  %112 = add nsw i64 %108, 1
  %113 = getelementptr inbounds double, ptr %2, i64 %112
  %114 = load double, ptr %113, align 8, !tbaa !7
  %115 = fneg double %114
  %116 = sext i32 %109 to i64
  %117 = getelementptr inbounds double, ptr %2, i64 %116
  %118 = load double, ptr %117, align 8, !tbaa !7
  %119 = add nsw i32 %109, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds double, ptr %2, i64 %120
  %122 = load double, ptr %121, align 8, !tbaa !7
  %123 = fneg double %122
  store double %118, ptr %110, align 8, !tbaa !7
  store double %123, ptr %113, align 8, !tbaa !7
  store double %111, ptr %117, align 8, !tbaa !7
  store double %115, ptr %121, align 8, !tbaa !7
  %124 = add nuw nsw i64 %56, 1
  %125 = icmp eq i64 %124, %47
  br i1 %125, label %126, label %55, !llvm.loop !34

126:                                              ; preds = %55
  %127 = add nsw i32 %51, %54
  br label %128

128:                                              ; preds = %126, %46
  %129 = phi i32 [ %127, %126 ], [ 0, %46 ]
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double, ptr %2, i64 %131
  %133 = load double, ptr %132, align 8, !tbaa !7
  %134 = fneg double %133
  store double %134, ptr %132, align 8, !tbaa !7
  %135 = add nsw i32 %129, %41
  %136 = add nsw i32 %135, %41
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds double, ptr %2, i64 %137
  %139 = load double, ptr %138, align 8, !tbaa !7
  %140 = add nsw i32 %135, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds double, ptr %2, i64 %141
  %143 = load double, ptr %142, align 8, !tbaa !7
  %144 = fneg double %143
  %145 = sext i32 %136 to i64
  %146 = getelementptr inbounds double, ptr %2, i64 %145
  %147 = load double, ptr %146, align 8, !tbaa !7
  %148 = add nsw i32 %136, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds double, ptr %2, i64 %149
  %151 = load double, ptr %150, align 8, !tbaa !7
  %152 = fneg double %151
  store double %147, ptr %138, align 8, !tbaa !7
  store double %152, ptr %142, align 8, !tbaa !7
  store double %139, ptr %146, align 8, !tbaa !7
  store double %144, ptr %150, align 8, !tbaa !7
  %153 = add i32 %43, %136
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds double, ptr %2, i64 %154
  %156 = load double, ptr %155, align 8, !tbaa !7
  %157 = fneg double %156
  store double %157, ptr %155, align 8, !tbaa !7
  %158 = add nuw nsw i64 %47, 1
  %159 = icmp eq i64 %158, %45
  br i1 %159, label %235, label %46, !llvm.loop !35

160:                                              ; preds = %35, %32
  %161 = phi i32 [ 2, %35 ], [ %33, %32 ]
  %162 = phi i32 [ 1, %35 ], [ %.lcssa3, %32 ]
  %163 = getelementptr inbounds double, ptr %2, i64 1
  %164 = load double, ptr %163, align 8, !tbaa !7
  %165 = fneg double %164
  store double %165, ptr %163, align 8, !tbaa !7
  %166 = or i32 %161, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds double, ptr %2, i64 %167
  %169 = load double, ptr %168, align 8, !tbaa !7
  %170 = fneg double %169
  store double %170, ptr %168, align 8, !tbaa !7
  %171 = icmp sgt i32 %162, 1
  br i1 %171, label %172, label %235

172:                                              ; preds = %160
  %173 = sext i32 %161 to i64
  %174 = zext i32 %162 to i64
  br label %175

175:                                              ; preds = %221, %172
  %176 = phi i64 [ 1, %172 ], [ %233, %221 ]
  %177 = getelementptr inbounds i32, ptr %3, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !21
  %179 = sext i32 %178 to i64
  %180 = trunc i64 %176 to i32
  %181 = shl i32 %180, 1
  br label %182

182:                                              ; preds = %182, %175
  %183 = phi i64 [ 0, %175 ], [ %219, %182 ]
  %184 = shl nuw nsw i64 %183, 1
  %185 = add nsw i64 %184, %179
  %186 = getelementptr inbounds i32, ptr %3, i64 %183
  %187 = load i32, ptr %186, align 4, !tbaa !21
  %188 = add nsw i32 %187, %181
  %189 = getelementptr inbounds double, ptr %2, i64 %185
  %190 = load double, ptr %189, align 8, !tbaa !7
  %191 = add nsw i64 %185, 1
  %192 = getelementptr inbounds double, ptr %2, i64 %191
  %193 = load double, ptr %192, align 8, !tbaa !7
  %194 = fneg double %193
  %195 = sext i32 %188 to i64
  %196 = getelementptr inbounds double, ptr %2, i64 %195
  %197 = load double, ptr %196, align 8, !tbaa !7
  %198 = add nsw i32 %188, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds double, ptr %2, i64 %199
  %201 = load double, ptr %200, align 8, !tbaa !7
  %202 = fneg double %201
  store double %197, ptr %189, align 8, !tbaa !7
  store double %202, ptr %192, align 8, !tbaa !7
  store double %190, ptr %196, align 8, !tbaa !7
  store double %194, ptr %200, align 8, !tbaa !7
  %203 = add nsw i64 %185, %173
  %204 = add nsw i32 %188, %161
  %205 = getelementptr inbounds double, ptr %2, i64 %203
  %206 = load double, ptr %205, align 8, !tbaa !7
  %207 = add nsw i64 %203, 1
  %208 = getelementptr inbounds double, ptr %2, i64 %207
  %209 = load double, ptr %208, align 8, !tbaa !7
  %210 = fneg double %209
  %211 = sext i32 %204 to i64
  %212 = getelementptr inbounds double, ptr %2, i64 %211
  %213 = load double, ptr %212, align 8, !tbaa !7
  %214 = add nsw i32 %204, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds double, ptr %2, i64 %215
  %217 = load double, ptr %216, align 8, !tbaa !7
  %218 = fneg double %217
  store double %213, ptr %205, align 8, !tbaa !7
  store double %218, ptr %208, align 8, !tbaa !7
  store double %206, ptr %212, align 8, !tbaa !7
  store double %210, ptr %216, align 8, !tbaa !7
  %219 = add nuw nsw i64 %183, 1
  %220 = icmp eq i64 %219, %176
  br i1 %220, label %221, label %182, !llvm.loop !36

221:                                              ; preds = %182
  %222 = add nsw i32 %181, %178
  %223 = add nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds double, ptr %2, i64 %224
  %226 = load double, ptr %225, align 8, !tbaa !7
  %227 = fneg double %226
  store double %227, ptr %225, align 8, !tbaa !7
  %228 = add i32 %222, %166
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds double, ptr %2, i64 %229
  %231 = load double, ptr %230, align 8, !tbaa !7
  %232 = fneg double %231
  store double %232, ptr %230, align 8, !tbaa !7
  %233 = add nuw nsw i64 %176, 1
  %234 = icmp eq i64 %233, %174
  br i1 %234, label %235, label %175, !llvm.loop !37

235:                                              ; preds = %221, %160, %128, %37
  br i1 %11, label %236, label %243

236:                                              ; preds = %235
  tail call fastcc void @cft1st(i32 noundef %0, ptr noundef %2, ptr noundef %4) #17
  %237 = icmp ugt i32 %0, 32
  br i1 %237, label %238, label %243

238:                                              ; preds = %238, %236
  %239 = phi i32 [ %241, %238 ], [ 32, %236 ]
  %240 = phi i32 [ %239, %238 ], [ 8, %236 ]
  tail call fastcc void @cftmdl(i32 noundef %0, i32 noundef %240, ptr noundef %2, ptr noundef %4) #17
  %241 = shl i32 %239, 2
  %242 = icmp slt i32 %241, %0
  br i1 %242, label %238, label %243, !llvm.loop !38

243:                                              ; preds = %238, %236, %235
  %244 = phi i32 [ 2, %235 ], [ 8, %236 ], [ %239, %238 ]
  %245 = shl i32 %244, 2
  %246 = icmp eq i32 %245, %0
  %247 = icmp sgt i32 %244, 0
  br i1 %246, label %251, label %248

248:                                              ; preds = %243
  br i1 %247, label %249, label %330

249:                                              ; preds = %248
  %250 = zext i32 %244 to i64
  br label %304

251:                                              ; preds = %243
  br i1 %247, label %252, label %330

252:                                              ; preds = %251
  %253 = zext i32 %244 to i64
  br label %254

254:                                              ; preds = %254, %252
  %255 = phi i64 [ 0, %252 ], [ %302, %254 ]
  %256 = add nuw nsw i64 %255, %253
  %257 = add nuw nsw i64 %256, %253
  %258 = add nuw nsw i64 %257, %253
  %259 = getelementptr inbounds double, ptr %2, i64 %255
  %260 = load double, ptr %259, align 8, !tbaa !7
  %261 = getelementptr inbounds double, ptr %2, i64 %256
  %262 = load double, ptr %261, align 8, !tbaa !7
  %263 = fadd double %260, %262
  %264 = or i64 %255, 1
  %265 = getelementptr inbounds double, ptr %2, i64 %264
  %266 = load double, ptr %265, align 8, !tbaa !7
  %267 = fneg double %266
  %268 = shl i64 %256, 32
  %269 = ashr exact i64 %268, 32
  %270 = or i64 %269, 1
  %271 = getelementptr inbounds double, ptr %2, i64 %270
  %272 = load double, ptr %271, align 8, !tbaa !7
  %273 = fsub double %267, %272
  %274 = fsub double %260, %262
  %275 = fsub double %272, %266
  %276 = getelementptr inbounds double, ptr %2, i64 %257
  %277 = load double, ptr %276, align 8, !tbaa !7
  %278 = getelementptr inbounds double, ptr %2, i64 %258
  %279 = load double, ptr %278, align 8, !tbaa !7
  %280 = fadd double %277, %279
  %281 = shl i64 %257, 32
  %282 = ashr exact i64 %281, 32
  %283 = or i64 %282, 1
  %284 = getelementptr inbounds double, ptr %2, i64 %283
  %285 = load double, ptr %284, align 8, !tbaa !7
  %286 = shl i64 %258, 32
  %287 = ashr exact i64 %286, 32
  %288 = or i64 %287, 1
  %289 = getelementptr inbounds double, ptr %2, i64 %288
  %290 = load double, ptr %289, align 8, !tbaa !7
  %291 = fadd double %285, %290
  %292 = fsub double %277, %279
  %293 = fsub double %285, %290
  %294 = fadd double %263, %280
  store double %294, ptr %259, align 8, !tbaa !7
  %295 = fsub double %273, %291
  store double %295, ptr %265, align 8, !tbaa !7
  %296 = fsub double %263, %280
  store double %296, ptr %276, align 8, !tbaa !7
  %297 = fadd double %273, %291
  store double %297, ptr %284, align 8, !tbaa !7
  %298 = fsub double %274, %293
  store double %298, ptr %261, align 8, !tbaa !7
  %299 = fsub double %275, %292
  store double %299, ptr %271, align 8, !tbaa !7
  %300 = fadd double %274, %293
  store double %300, ptr %278, align 8, !tbaa !7
  %301 = fadd double %275, %292
  store double %301, ptr %289, align 8, !tbaa !7
  %302 = add nuw nsw i64 %255, 2
  %303 = icmp ult i64 %302, %253
  br i1 %303, label %254, label %330, !llvm.loop !39

304:                                              ; preds = %304, %249
  %305 = phi i64 [ 0, %249 ], [ %324, %304 ]
  %306 = add nuw nsw i64 %305, %250
  %307 = getelementptr inbounds double, ptr %2, i64 %305
  %308 = load double, ptr %307, align 8, !tbaa !7
  %309 = getelementptr inbounds double, ptr %2, i64 %306
  %310 = load double, ptr %309, align 8, !tbaa !7
  %311 = fsub double %308, %310
  %312 = or i64 %305, 1
  %313 = getelementptr inbounds double, ptr %2, i64 %312
  %314 = load double, ptr %313, align 8, !tbaa !7
  %315 = shl i64 %306, 32
  %316 = ashr exact i64 %315, 32
  %317 = or i64 %316, 1
  %318 = getelementptr inbounds double, ptr %2, i64 %317
  %319 = load double, ptr %318, align 8, !tbaa !7
  %320 = fsub double %319, %314
  %321 = fadd double %308, %310
  store double %321, ptr %307, align 8, !tbaa !7
  %322 = fneg double %314
  %323 = fsub double %322, %319
  store double %323, ptr %313, align 8, !tbaa !7
  store double %311, ptr %309, align 8, !tbaa !7
  store double %320, ptr %318, align 8, !tbaa !7
  %324 = add nuw nsw i64 %305, 2
  %325 = icmp ult i64 %324, %250
  br i1 %325, label %304, label %330, !llvm.loop !40

326:                                              ; preds = %5
  %327 = icmp eq i32 %0, 4
  br i1 %327, label %328, label %330

328:                                              ; preds = %326, %9
  %329 = phi i32 [ %0, %9 ], [ 4, %326 ]
  tail call fastcc void @cftfsub(i32 noundef %329, ptr noundef %2, ptr noundef %4) #17
  br label %330

330:                                              ; preds = %328, %326, %304, %254, %251, %248
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: inlinehint nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @cft1st(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #12 {
  %4 = getelementptr inbounds double, ptr %1, i64 2
  %5 = getelementptr inbounds double, ptr %1, i64 4
  %6 = getelementptr inbounds double, ptr %1, i64 6
  %7 = load <2 x double>, ptr %1, align 8, !tbaa !7
  %8 = load <2 x double>, ptr %4, align 8, !tbaa !7
  %9 = fadd <2 x double> %7, %8
  %10 = load <2 x double>, ptr %5, align 8, !tbaa !7
  %11 = load <2 x double>, ptr %6, align 8, !tbaa !7
  %12 = fadd <2 x double> %10, %11
  %13 = fadd <2 x double> %9, %12
  store <2 x double> %13, ptr %1, align 8, !tbaa !7
  %14 = fsub <2 x double> %9, %12
  store <2 x double> %14, ptr %5, align 8, !tbaa !7
  %15 = fsub <2 x double> %7, %8
  %16 = fsub <2 x double> %10, %11
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %18 = fsub <2 x double> %15, %17
  %19 = fadd <2 x double> %15, %17
  %20 = shufflevector <2 x double> %18, <2 x double> %19, <2 x i32> <i32 0, i32 3>
  store <2 x double> %20, ptr %4, align 8, !tbaa !7
  %21 = shufflevector <2 x double> %19, <2 x double> %18, <2 x i32> <i32 0, i32 3>
  store <2 x double> %21, ptr %6, align 8, !tbaa !7
  %22 = getelementptr inbounds double, ptr %2, i64 2
  %23 = load double, ptr %22, align 8, !tbaa !7
  %24 = getelementptr inbounds double, ptr %1, i64 8
  %25 = getelementptr inbounds double, ptr %1, i64 10
  %26 = getelementptr inbounds double, ptr %1, i64 11
  %27 = getelementptr inbounds double, ptr %1, i64 12
  %28 = getelementptr inbounds double, ptr %1, i64 14
  %29 = getelementptr inbounds double, ptr %1, i64 15
  %30 = load <2 x double>, ptr %24, align 8, !tbaa !7
  %31 = load <2 x double>, ptr %25, align 8, !tbaa !7
  %32 = fadd <2 x double> %30, %31
  %33 = fsub <2 x double> %30, %31
  %34 = extractelement <2 x double> %33, i64 0
  %35 = fsub <2 x double> %30, %31
  %36 = extractelement <2 x double> %35, i64 1
  %37 = load <2 x double>, ptr %27, align 8, !tbaa !7
  %38 = load <2 x double>, ptr %28, align 8, !tbaa !7
  %39 = fadd <2 x double> %37, %38
  %40 = fsub <2 x double> %37, %38
  %41 = extractelement <2 x double> %40, i64 0
  %42 = fsub <2 x double> %37, %38
  %43 = extractelement <2 x double> %42, i64 1
  %44 = fadd <2 x double> %32, %39
  store <2 x double> %44, ptr %24, align 8, !tbaa !7
  %45 = shufflevector <2 x double> %39, <2 x double> %32, <2 x i32> <i32 1, i32 2>
  %46 = shufflevector <2 x double> %32, <2 x double> %39, <2 x i32> <i32 1, i32 2>
  %47 = fsub <2 x double> %45, %46
  store <2 x double> %47, ptr %27, align 8, !tbaa !7
  %48 = fsub double %34, %43
  %49 = fadd double %36, %41
  %50 = fsub double %48, %49
  %51 = fmul double %23, %50
  store double %51, ptr %25, align 8, !tbaa !7
  %52 = fadd double %49, %48
  %53 = fmul double %23, %52
  store double %53, ptr %26, align 8, !tbaa !7
  %54 = fadd double %34, %43
  %55 = fsub double %41, %36
  %56 = fsub double %55, %54
  %57 = fmul double %23, %56
  store double %57, ptr %28, align 8, !tbaa !7
  %58 = fadd double %55, %54
  %59 = fmul double %23, %58
  store double %59, ptr %29, align 8, !tbaa !7
  %60 = icmp sgt i32 %0, 16
  br i1 %60, label %61, label %186

61:                                               ; preds = %3
  %62 = zext i32 %0 to i64
  br label %63

63:                                               ; preds = %63, %61
  %64 = phi i64 [ 0, %61 ], [ %66, %63 ]
  %65 = phi i64 [ 16, %61 ], [ %184, %63 ]
  %66 = add nuw nsw i64 %64, 2
  %67 = shl nuw nsw i64 %66, 1
  %68 = getelementptr inbounds double, ptr %2, i64 %66
  %69 = load double, ptr %68, align 8, !tbaa !7
  %70 = add nuw nsw i64 %64, 3
  %71 = getelementptr inbounds double, ptr %2, i64 %70
  %72 = load double, ptr %71, align 8, !tbaa !7
  %73 = getelementptr inbounds double, ptr %2, i64 %67
  %74 = load double, ptr %73, align 8, !tbaa !7
  %75 = or i64 %67, 1
  %76 = getelementptr inbounds double, ptr %2, i64 %75
  %77 = load double, ptr %76, align 8, !tbaa !7
  %78 = fmul double %72, 2.000000e+00
  %79 = fneg double %78
  %80 = tail call double @llvm.fmuladd.f64(double %79, double %77, double %74)
  %81 = fneg double %77
  %82 = tail call double @llvm.fmuladd.f64(double %78, double %74, double %81)
  %83 = getelementptr inbounds double, ptr %1, i64 %65
  %84 = or i64 %65, 2
  %85 = getelementptr inbounds double, ptr %1, i64 %84
  %86 = or i64 %65, 4
  %87 = getelementptr inbounds double, ptr %1, i64 %86
  %88 = or i64 %65, 6
  %89 = getelementptr inbounds double, ptr %1, i64 %88
  %90 = load <2 x double>, ptr %83, align 8, !tbaa !7
  %91 = load <2 x double>, ptr %85, align 8, !tbaa !7
  %92 = fadd <2 x double> %90, %91
  %93 = load <2 x double>, ptr %87, align 8, !tbaa !7
  %94 = load <2 x double>, ptr %89, align 8, !tbaa !7
  %95 = fadd <2 x double> %93, %94
  %96 = fadd <2 x double> %92, %95
  store <2 x double> %96, ptr %83, align 8, !tbaa !7
  %97 = fneg double %72
  %98 = fsub <2 x double> %92, %95
  %99 = shufflevector <2 x double> %98, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %100 = insertelement <2 x double> poison, double %97, i64 0
  %101 = insertelement <2 x double> %100, double %72, i64 1
  %102 = fmul <2 x double> %99, %101
  %103 = insertelement <2 x double> poison, double %69, i64 0
  %104 = shufflevector <2 x double> %103, <2 x double> poison, <2 x i32> zeroinitializer
  %105 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %104, <2 x double> %98, <2 x double> %102)
  store <2 x double> %105, ptr %87, align 8, !tbaa !7
  %106 = fsub <2 x double> %90, %91
  %107 = fsub <2 x double> %93, %94
  %108 = shufflevector <2 x double> %107, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %109 = fsub <2 x double> %106, %108
  %110 = fadd <2 x double> %106, %108
  %111 = shufflevector <2 x double> %109, <2 x double> %110, <2 x i32> <i32 0, i32 3>
  %112 = shufflevector <2 x double> %111, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %113 = insertelement <2 x double> poison, double %81, i64 0
  %114 = insertelement <2 x double> %113, double %77, i64 1
  %115 = fmul <2 x double> %112, %114
  %116 = insertelement <2 x double> poison, double %74, i64 0
  %117 = shufflevector <2 x double> %116, <2 x double> poison, <2 x i32> zeroinitializer
  %118 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %117, <2 x double> %111, <2 x double> %115)
  store <2 x double> %118, ptr %85, align 8, !tbaa !7
  %119 = fneg double %82
  %120 = shufflevector <2 x double> %110, <2 x double> %109, <2 x i32> <i32 0, i32 3>
  %121 = shufflevector <2 x double> %120, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %122 = insertelement <2 x double> poison, double %119, i64 0
  %123 = insertelement <2 x double> %122, double %82, i64 1
  %124 = fmul <2 x double> %121, %123
  %125 = insertelement <2 x double> poison, double %80, i64 0
  %126 = shufflevector <2 x double> %125, <2 x double> poison, <2 x i32> zeroinitializer
  %127 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %126, <2 x double> %120, <2 x double> %124)
  store <2 x double> %127, ptr %89, align 8, !tbaa !7
  %128 = or i64 %67, 2
  %129 = getelementptr inbounds double, ptr %2, i64 %128
  %130 = load double, ptr %129, align 8, !tbaa !7
  %131 = or i64 %67, 3
  %132 = getelementptr inbounds double, ptr %2, i64 %131
  %133 = load double, ptr %132, align 8, !tbaa !7
  %134 = fmul double %69, 2.000000e+00
  %135 = fneg double %134
  %136 = tail call double @llvm.fmuladd.f64(double %135, double %133, double %130)
  %137 = fneg double %133
  %138 = tail call double @llvm.fmuladd.f64(double %134, double %130, double %137)
  %139 = or i64 %65, 8
  %140 = getelementptr inbounds double, ptr %1, i64 %139
  %141 = or i64 %65, 10
  %142 = getelementptr inbounds double, ptr %1, i64 %141
  %143 = or i64 %65, 12
  %144 = getelementptr inbounds double, ptr %1, i64 %143
  %145 = or i64 %65, 14
  %146 = getelementptr inbounds double, ptr %1, i64 %145
  %147 = load <2 x double>, ptr %140, align 8, !tbaa !7
  %148 = load <2 x double>, ptr %142, align 8, !tbaa !7
  %149 = fadd <2 x double> %147, %148
  %150 = load <2 x double>, ptr %144, align 8, !tbaa !7
  %151 = load <2 x double>, ptr %146, align 8, !tbaa !7
  %152 = fadd <2 x double> %150, %151
  %153 = fadd <2 x double> %149, %152
  store <2 x double> %153, ptr %140, align 8, !tbaa !7
  %154 = fneg double %69
  %155 = fsub <2 x double> %149, %152
  %156 = shufflevector <2 x double> %155, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %157 = insertelement <2 x double> poison, double %154, i64 0
  %158 = insertelement <2 x double> %157, double %69, i64 1
  %159 = fmul <2 x double> %156, %158
  %160 = shufflevector <2 x double> %100, <2 x double> poison, <2 x i32> zeroinitializer
  %161 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %160, <2 x double> %155, <2 x double> %159)
  store <2 x double> %161, ptr %144, align 8, !tbaa !7
  %162 = fsub <2 x double> %147, %148
  %163 = fsub <2 x double> %150, %151
  %164 = shufflevector <2 x double> %163, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %165 = fsub <2 x double> %162, %164
  %166 = fadd <2 x double> %162, %164
  %167 = shufflevector <2 x double> %165, <2 x double> %166, <2 x i32> <i32 0, i32 3>
  %168 = shufflevector <2 x double> %167, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %169 = insertelement <2 x double> poison, double %137, i64 0
  %170 = insertelement <2 x double> %169, double %133, i64 1
  %171 = fmul <2 x double> %168, %170
  %172 = insertelement <2 x double> poison, double %130, i64 0
  %173 = shufflevector <2 x double> %172, <2 x double> poison, <2 x i32> zeroinitializer
  %174 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %173, <2 x double> %167, <2 x double> %171)
  store <2 x double> %174, ptr %142, align 8, !tbaa !7
  %175 = fneg double %138
  %176 = shufflevector <2 x double> %166, <2 x double> %165, <2 x i32> <i32 0, i32 3>
  %177 = shufflevector <2 x double> %176, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %178 = insertelement <2 x double> poison, double %175, i64 0
  %179 = insertelement <2 x double> %178, double %138, i64 1
  %180 = fmul <2 x double> %177, %179
  %181 = insertelement <2 x double> poison, double %136, i64 0
  %182 = shufflevector <2 x double> %181, <2 x double> poison, <2 x i32> zeroinitializer
  %183 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %182, <2 x double> %176, <2 x double> %180)
  store <2 x double> %183, ptr %146, align 8, !tbaa !7
  %184 = add nuw nsw i64 %65, 16
  %185 = icmp ult i64 %184, %62
  br i1 %185, label %63, label %186, !llvm.loop !41

186:                                              ; preds = %63, %3
  ret void
}

; Function Attrs: inlinehint nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @cftmdl(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #12 {
  %5 = shl i32 %1, 2
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %4
  %8 = zext i32 %1 to i64
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i64 [ 0, %7 ], [ %33, %9 ]
  %11 = add nuw nsw i64 %10, %8
  %12 = add nuw nsw i64 %11, %8
  %13 = add nuw nsw i64 %12, %8
  %14 = getelementptr inbounds double, ptr %2, i64 %10
  %15 = getelementptr inbounds double, ptr %2, i64 %11
  %16 = getelementptr inbounds double, ptr %2, i64 %12
  %17 = getelementptr inbounds double, ptr %2, i64 %13
  %18 = load <2 x double>, ptr %14, align 8, !tbaa !7
  %19 = load <2 x double>, ptr %15, align 8, !tbaa !7
  %20 = fsub <2 x double> %18, %19
  %21 = load <2 x double>, ptr %16, align 8, !tbaa !7
  %22 = load <2 x double>, ptr %17, align 8, !tbaa !7
  %23 = fsub <2 x double> %21, %22
  %24 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %25 = fadd <2 x double> %18, %19
  %26 = fadd <2 x double> %21, %22
  %27 = fadd <2 x double> %25, %26
  store <2 x double> %27, ptr %14, align 8, !tbaa !7
  %28 = fsub <2 x double> %25, %26
  store <2 x double> %28, ptr %16, align 8, !tbaa !7
  %29 = fsub <2 x double> %20, %24
  %30 = fadd <2 x double> %20, %24
  %31 = shufflevector <2 x double> %29, <2 x double> %30, <2 x i32> <i32 0, i32 3>
  store <2 x double> %31, ptr %15, align 8, !tbaa !7
  %32 = shufflevector <2 x double> %30, <2 x double> %29, <2 x i32> <i32 0, i32 3>
  store <2 x double> %32, ptr %17, align 8, !tbaa !7
  %33 = add nuw nsw i64 %10, 2
  %34 = icmp ult i64 %33, %8
  br i1 %34, label %9, label %35, !llvm.loop !42

35:                                               ; preds = %9, %4
  %36 = getelementptr inbounds double, ptr %3, i64 2
  %37 = load double, ptr %36, align 8, !tbaa !7
  %38 = mul i32 %1, 5
  %39 = icmp slt i32 %5, %38
  br i1 %39, label %40, label %100

40:                                               ; preds = %35
  %41 = sext i32 %5 to i64
  %42 = sext i32 %1 to i64
  %43 = sext i32 %38 to i64
  br label %44

44:                                               ; preds = %44, %40
  %45 = phi i64 [ %41, %40 ], [ %98, %44 ]
  %46 = add nsw i64 %45, %42
  %47 = add nsw i64 %46, %42
  %48 = add nsw i64 %47, %42
  %49 = getelementptr inbounds double, ptr %2, i64 %45
  %50 = load double, ptr %49, align 8, !tbaa !7
  %51 = getelementptr inbounds double, ptr %2, i64 %46
  %52 = load double, ptr %51, align 8, !tbaa !7
  %53 = or i64 %45, 1
  %54 = getelementptr inbounds double, ptr %2, i64 %53
  %55 = load double, ptr %54, align 8, !tbaa !7
  %56 = add nsw i64 %46, 1
  %57 = getelementptr inbounds double, ptr %2, i64 %56
  %58 = load double, ptr %57, align 8, !tbaa !7
  %59 = fsub double %50, %52
  %60 = fsub double %55, %58
  %61 = getelementptr inbounds double, ptr %2, i64 %47
  %62 = load double, ptr %61, align 8, !tbaa !7
  %63 = getelementptr inbounds double, ptr %2, i64 %48
  %64 = load double, ptr %63, align 8, !tbaa !7
  %65 = add nuw nsw i64 %47, 1
  %66 = getelementptr inbounds double, ptr %2, i64 %65
  %67 = load double, ptr %66, align 8, !tbaa !7
  %68 = add nsw i64 %48, 1
  %69 = getelementptr inbounds double, ptr %2, i64 %68
  %70 = load double, ptr %69, align 8, !tbaa !7
  %71 = fsub double %62, %64
  %72 = fsub double %67, %70
  %73 = insertelement <2 x double> poison, double %55, i64 0
  %74 = insertelement <2 x double> %73, double %62, i64 1
  %75 = insertelement <2 x double> poison, double %58, i64 0
  %76 = insertelement <2 x double> %75, double %64, i64 1
  %77 = fadd <2 x double> %74, %76
  %78 = insertelement <2 x double> poison, double %67, i64 0
  %79 = insertelement <2 x double> %78, double %50, i64 1
  %80 = insertelement <2 x double> poison, double %70, i64 0
  %81 = insertelement <2 x double> %80, double %52, i64 1
  %82 = fadd <2 x double> %79, %81
  %83 = fadd <2 x double> %77, %82
  %84 = shufflevector <2 x double> %83, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %84, ptr %49, align 8, !tbaa !7
  %85 = fsub <2 x double> %82, %77
  store <2 x double> %85, ptr %61, align 8, !tbaa !7
  %86 = fsub double %59, %72
  %87 = fadd double %60, %71
  %88 = fsub double %86, %87
  %89 = fmul double %37, %88
  store double %89, ptr %51, align 8, !tbaa !7
  %90 = fadd double %87, %86
  %91 = fmul double %37, %90
  store double %91, ptr %57, align 8, !tbaa !7
  %92 = fadd double %59, %72
  %93 = fsub double %71, %60
  %94 = fsub double %93, %92
  %95 = fmul double %37, %94
  store double %95, ptr %63, align 8, !tbaa !7
  %96 = fadd double %93, %92
  %97 = fmul double %37, %96
  store double %97, ptr %69, align 8, !tbaa !7
  %98 = add nsw i64 %45, 2
  %99 = icmp slt i64 %98, %43
  br i1 %99, label %44, label %100, !llvm.loop !43

100:                                              ; preds = %44, %35
  %101 = shl i32 %1, 3
  %102 = icmp slt i32 %101, %0
  br i1 %102, label %103, label %261

103:                                              ; preds = %100
  %104 = sext i32 %101 to i64
  %105 = sext i32 %1 to i64
  %106 = mul i32 %1, 12
  %107 = sext i32 %5 to i64
  %108 = sext i32 %0 to i64
  br label %109

109:                                              ; preds = %257, %103
  %110 = phi i64 [ 0, %103 ], [ %114, %257 ]
  %111 = phi i32 [ %106, %103 ], [ %260, %257 ]
  %112 = phi i64 [ %104, %103 ], [ %258, %257 ]
  %113 = sext i32 %111 to i64
  %114 = add nuw nsw i64 %110, 2
  %115 = shl nuw nsw i64 %114, 1
  %116 = getelementptr inbounds double, ptr %3, i64 %114
  %117 = load double, ptr %116, align 8, !tbaa !7
  %118 = add nuw nsw i64 %110, 3
  %119 = getelementptr inbounds double, ptr %3, i64 %118
  %120 = load double, ptr %119, align 8, !tbaa !7
  %121 = add nsw i64 %112, %105
  br i1 %6, label %122, label %182

122:                                              ; preds = %109
  %123 = fmul double %120, 2.000000e+00
  %124 = getelementptr inbounds double, ptr %3, i64 %115
  %125 = load double, ptr %124, align 8, !tbaa !7
  %126 = or i64 %115, 1
  %127 = getelementptr inbounds double, ptr %3, i64 %126
  %128 = load double, ptr %127, align 8, !tbaa !7
  %129 = fneg double %128
  %130 = tail call double @llvm.fmuladd.f64(double %123, double %125, double %129)
  %131 = fneg double %123
  %132 = tail call double @llvm.fmuladd.f64(double %131, double %128, double %125)
  %133 = fneg double %120
  %134 = fneg double %130
  %135 = insertelement <2 x double> poison, double %132, i64 0
  %136 = shufflevector <2 x double> %135, <2 x double> poison, <2 x i32> zeroinitializer
  %137 = insertelement <2 x double> poison, double %134, i64 0
  %138 = insertelement <2 x double> %137, double %130, i64 1
  %139 = insertelement <2 x double> poison, double %125, i64 0
  %140 = shufflevector <2 x double> %139, <2 x double> poison, <2 x i32> zeroinitializer
  %141 = insertelement <2 x double> poison, double %129, i64 0
  %142 = insertelement <2 x double> %141, double %128, i64 1
  %143 = insertelement <2 x double> poison, double %117, i64 0
  %144 = shufflevector <2 x double> %143, <2 x double> poison, <2 x i32> zeroinitializer
  %145 = insertelement <2 x double> poison, double %133, i64 0
  %146 = insertelement <2 x double> %145, double %120, i64 1
  br label %147

147:                                              ; preds = %147, %122
  %148 = phi i64 [ %112, %122 ], [ %180, %147 ]
  %149 = add nsw i64 %148, %105
  %150 = add nsw i64 %149, %105
  %151 = add nsw i64 %150, %105
  %152 = getelementptr inbounds double, ptr %2, i64 %148
  %153 = getelementptr inbounds double, ptr %2, i64 %149
  %154 = getelementptr inbounds double, ptr %2, i64 %150
  %155 = getelementptr inbounds double, ptr %2, i64 %151
  %156 = load <2 x double>, ptr %152, align 8, !tbaa !7
  %157 = load <2 x double>, ptr %153, align 8, !tbaa !7
  %158 = fadd <2 x double> %156, %157
  %159 = load <2 x double>, ptr %154, align 8, !tbaa !7
  %160 = load <2 x double>, ptr %155, align 8, !tbaa !7
  %161 = fadd <2 x double> %159, %160
  %162 = fadd <2 x double> %158, %161
  store <2 x double> %162, ptr %152, align 8, !tbaa !7
  %163 = fsub <2 x double> %158, %161
  %164 = shufflevector <2 x double> %163, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %165 = fmul <2 x double> %164, %146
  %166 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %144, <2 x double> %163, <2 x double> %165)
  store <2 x double> %166, ptr %154, align 8, !tbaa !7
  %167 = fsub <2 x double> %156, %157
  %168 = fsub <2 x double> %159, %160
  %169 = shufflevector <2 x double> %168, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %170 = fsub <2 x double> %167, %169
  %171 = fadd <2 x double> %167, %169
  %172 = shufflevector <2 x double> %170, <2 x double> %171, <2 x i32> <i32 0, i32 3>
  %173 = shufflevector <2 x double> %172, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %174 = fmul <2 x double> %173, %142
  %175 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %140, <2 x double> %172, <2 x double> %174)
  store <2 x double> %175, ptr %153, align 8, !tbaa !7
  %176 = shufflevector <2 x double> %171, <2 x double> %170, <2 x i32> <i32 0, i32 3>
  %177 = shufflevector <2 x double> %176, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %178 = fmul <2 x double> %177, %138
  %179 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %136, <2 x double> %176, <2 x double> %178)
  store <2 x double> %179, ptr %155, align 8, !tbaa !7
  %180 = add nsw i64 %148, 2
  %181 = icmp slt i64 %180, %121
  br i1 %181, label %147, label %182, !llvm.loop !44

182:                                              ; preds = %147, %109
  %183 = add nsw i64 %112, %107
  %184 = add nsw i64 %183, %105
  br i1 %6, label %185, label %257

185:                                              ; preds = %182
  %186 = fmul double %117, 2.000000e+00
  %187 = or i64 %115, 2
  %188 = getelementptr inbounds double, ptr %3, i64 %187
  %189 = load double, ptr %188, align 8, !tbaa !7
  %190 = or i64 %115, 3
  %191 = getelementptr inbounds double, ptr %3, i64 %190
  %192 = load double, ptr %191, align 8, !tbaa !7
  %193 = fneg double %192
  %194 = tail call double @llvm.fmuladd.f64(double %186, double %189, double %193)
  %195 = fneg double %186
  %196 = tail call double @llvm.fmuladd.f64(double %195, double %192, double %189)
  %197 = fneg double %120
  %198 = fneg double %117
  %199 = fneg double %194
  %200 = insertelement <2 x double> poison, double %196, i64 0
  %201 = shufflevector <2 x double> %200, <2 x double> poison, <2 x i32> zeroinitializer
  %202 = insertelement <2 x double> poison, double %199, i64 0
  %203 = insertelement <2 x double> %202, double %194, i64 1
  %204 = insertelement <2 x double> poison, double %189, i64 0
  %205 = shufflevector <2 x double> %204, <2 x double> poison, <2 x i32> zeroinitializer
  %206 = insertelement <2 x double> poison, double %193, i64 0
  %207 = insertelement <2 x double> %206, double %192, i64 1
  %208 = insertelement <2 x double> poison, double %197, i64 0
  %209 = shufflevector <2 x double> %208, <2 x double> poison, <2 x i32> zeroinitializer
  %210 = insertelement <2 x double> poison, double %198, i64 0
  %211 = insertelement <2 x double> %210, double %117, i64 1
  br label %212

212:                                              ; preds = %212, %185
  %213 = phi i64 [ %113, %185 ], [ %255, %212 ]
  %214 = add nsw i64 %213, %105
  %215 = add nsw i64 %214, %105
  %216 = add nsw i64 %215, %105
  %217 = getelementptr inbounds double, ptr %2, i64 %213
  %218 = load double, ptr %217, align 8, !tbaa !7
  %219 = getelementptr inbounds double, ptr %2, i64 %214
  %220 = shl i64 %213, 32
  %221 = ashr exact i64 %220, 32
  %222 = or i64 %221, 1
  %223 = getelementptr inbounds double, ptr %2, i64 %222
  %224 = load double, ptr %223, align 8, !tbaa !7
  %225 = getelementptr inbounds double, ptr %2, i64 %215
  %226 = getelementptr inbounds double, ptr %2, i64 %216
  %227 = load <2 x double>, ptr %219, align 8, !tbaa !7
  %228 = insertelement <2 x double> poison, double %218, i64 0
  %229 = insertelement <2 x double> %228, double %224, i64 1
  %230 = fsub <2 x double> %229, %227
  %231 = load <2 x double>, ptr %225, align 8, !tbaa !7
  %232 = load <2 x double>, ptr %226, align 8, !tbaa !7
  %233 = fsub <2 x double> %231, %232
  %234 = shufflevector <2 x double> %233, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %235 = fadd <2 x double> %229, %227
  %236 = fadd <2 x double> %231, %232
  %237 = fadd <2 x double> %235, %236
  %238 = extractelement <2 x double> %237, i64 0
  store double %238, ptr %217, align 8, !tbaa !7
  %239 = fadd <2 x double> %235, %236
  %240 = extractelement <2 x double> %239, i64 1
  store double %240, ptr %223, align 8, !tbaa !7
  %241 = fsub <2 x double> %235, %236
  %242 = shufflevector <2 x double> %241, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %243 = fmul <2 x double> %242, %211
  %244 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %209, <2 x double> %241, <2 x double> %243)
  store <2 x double> %244, ptr %225, align 8, !tbaa !7
  %245 = fsub <2 x double> %230, %234
  %246 = fadd <2 x double> %230, %234
  %247 = shufflevector <2 x double> %245, <2 x double> %246, <2 x i32> <i32 0, i32 3>
  %248 = shufflevector <2 x double> %247, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %249 = fmul <2 x double> %248, %207
  %250 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %205, <2 x double> %247, <2 x double> %249)
  store <2 x double> %250, ptr %219, align 8, !tbaa !7
  %251 = shufflevector <2 x double> %246, <2 x double> %245, <2 x i32> <i32 0, i32 3>
  %252 = shufflevector <2 x double> %251, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %253 = fmul <2 x double> %252, %203
  %254 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %201, <2 x double> %251, <2 x double> %253)
  store <2 x double> %254, ptr %226, align 8, !tbaa !7
  %255 = add nsw i64 %213, 2
  %256 = icmp slt i64 %255, %184
  br i1 %256, label %212, label %257, !llvm.loop !45

257:                                              ; preds = %212, %182
  %258 = add i64 %112, %104
  %259 = icmp slt i64 %258, %108
  %260 = add i32 %111, %101
  br i1 %259, label %109, label %261, !llvm.loop !46

261:                                              ; preds = %257, %100
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #13

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nofree nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind optsize allocsize(1) }
attributes #17 = { optsize }
attributes #18 = { noreturn nounwind optsize }

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
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !9, i64 0}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12}
