; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Misc-C++/stepanov_v1p2.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Double = type { double }
%struct.double_pointer = type { ptr }
%struct.reverse_iterator.1 = type { %struct.double_pointer }
%struct.reverse_iterator.5 = type { %struct.reverse_iterator.1 }

$_Z4testIPddEvT_S1_T0_ = comdat any

$_Z4testIP6DoubleS0_EvT_S2_T0_ = comdat any

$_Z4testI14double_pointerdEvT_S1_T0_ = comdat any

$_Z4testI14Double_pointer6DoubleEvT_S2_T0_ = comdat any

$_Z4testI16reverse_iteratorIPddEdEvT_S3_T0_ = comdat any

$_Z4testI16reverse_iteratorIP6DoubleS1_ES1_EvT_S4_T0_ = comdat any

$_Z4testI16reverse_iteratorI14double_pointerdEdEvT_S3_T0_ = comdat any

$_Z4testI16reverse_iteratorI14Double_pointer6DoubleES2_EvT_S4_T0_ = comdat any

$_Z4testI16reverse_iteratorIS0_IPddEdEdEvT_S4_T0_ = comdat any

$_Z4testI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_EvT_S5_T0_ = comdat any

$_Z4testI16reverse_iteratorIS0_I14double_pointerdEdEdEvT_S4_T0_ = comdat any

$_Z4testI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_EvT_S5_T0_ = comdat any

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer
@iterations = internal global i32 250000, align 4
@current_test = internal global i32 0, align 4
@result_times = internal global [20 x double] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [43 x i8] c"%2i       %5.2fsec    %5.2fM         %.2f\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"mean:    %5.2fsec    %5.2fM         %.2f\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"\0ATotal absolute time: %.2f sec\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"\0AAbstraction Penalty: %.2f\0A\0A\00", align 1
@start_time = internal global i64 0, align 8
@end_time = internal global i64 0, align 8
@data = internal global [2000 x double] zeroinitializer, align 16
@Data = internal global [2000 x %struct.Double] zeroinitializer, align 16
@d = internal global double 0.000000e+00, align 8
@D = internal global %struct.Double zeroinitializer, align 8
@dpb = internal global ptr @data, align 8
@dpe = internal global ptr getelementptr inbounds ([2000 x double], ptr @data, i64 1, i64 0), align 8
@Dpb = internal global ptr @Data, align 8
@Dpe = internal global ptr getelementptr inbounds ([2000 x %struct.Double], ptr @Data, i64 1, i64 0, i32 0), align 8
@dPb = internal global %struct.double_pointer { ptr @data }, align 8
@dPe = internal global %struct.double_pointer { ptr getelementptr inbounds ([2000 x double], ptr @data, i64 1, i64 0) }, align 8
@DPb = internal global %struct.double_pointer { ptr @Data }, align 8
@DPe = internal global %struct.double_pointer { ptr getelementptr inbounds ([2000 x %struct.Double], ptr @Data, i64 1, i64 0, i32 0) }, align 8
@rdpb = internal global %struct.double_pointer { ptr getelementptr inbounds ([2000 x double], ptr @data, i64 1, i64 0) }, align 8
@rdpe = internal global %struct.double_pointer { ptr @data }, align 8
@rDpb = internal global %struct.double_pointer { ptr getelementptr inbounds ([2000 x %struct.Double], ptr @Data, i64 1, i64 0, i32 0) }, align 8
@rDpe = internal global %struct.double_pointer { ptr @Data }, align 8
@rdPb = internal global %struct.reverse_iterator.1 { %struct.double_pointer { ptr getelementptr inbounds ([2000 x double], ptr @data, i64 1, i64 0) } }, align 8
@rdPe = internal global %struct.reverse_iterator.1 { %struct.double_pointer { ptr @data } }, align 8
@rDPb = internal global %struct.reverse_iterator.1 { %struct.double_pointer { ptr getelementptr inbounds ([2000 x %struct.Double], ptr @Data, i64 1, i64 0, i32 0) } }, align 8
@rDPe = internal global %struct.reverse_iterator.1 { %struct.double_pointer { ptr @Data } }, align 8
@rrdpb = internal global %struct.reverse_iterator.1 { %struct.double_pointer { ptr @data } }, align 8
@rrdpe = internal global %struct.reverse_iterator.1 { %struct.double_pointer { ptr getelementptr inbounds ([2000 x double], ptr @data, i64 1, i64 0) } }, align 8
@rrDpb = internal global %struct.reverse_iterator.1 { %struct.double_pointer { ptr @Data } }, align 8
@rrDpe = internal global %struct.reverse_iterator.1 { %struct.double_pointer { ptr getelementptr inbounds ([2000 x %struct.Double], ptr @Data, i64 1, i64 0, i32 0) } }, align 8
@rrdPb = internal global %struct.reverse_iterator.5 { %struct.reverse_iterator.1 { %struct.double_pointer { ptr @data } } }, align 8
@rrdPe = internal global %struct.reverse_iterator.5 { %struct.reverse_iterator.1 { %struct.double_pointer { ptr getelementptr inbounds ([2000 x double], ptr @data, i64 1, i64 0) } } }, align 8
@rrDPb = internal global %struct.reverse_iterator.5 { %struct.reverse_iterator.1 { %struct.double_pointer { ptr @Data } } }, align 8
@rrDPe = internal global %struct.reverse_iterator.5 { %struct.reverse_iterator.1 { %struct.double_pointer { ptr getelementptr inbounds ([2000 x %struct.Double], ptr @Data, i64 1, i64 0, i32 0) } } }, align 8
@.str.27 = private unnamed_addr constant [16 x i8] c"test %i failed\0A\00", align 1
@str = private unnamed_addr constant [48 x i8] c"\0Atest      absolute   additions      ratio with\00", align 1
@str.28 = private unnamed_addr constant [43 x i8] c"number    time       per second     test0\0A\00", align 1

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal void @_Z9summarizev() #0 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %3 = load i32, ptr @iterations, align 4, !tbaa !7
  %4 = sitofp i32 %3 to double
  %5 = fmul double %4, 2.000000e+03
  %6 = fdiv double %5, 1.000000e+06
  %7 = load i32, ptr @current_test, align 4, !tbaa !7
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %11, label %53

9:                                                ; preds = %11
  %.lcssa5 = phi i32 [ %24, %11 ]
  %10 = icmp sgt i32 %.lcssa5, 0
  br i1 %10, label %27, label %53

11:                                               ; preds = %11, %0
  %12 = phi i64 [ %23, %11 ], [ 0, %0 ]
  %13 = getelementptr inbounds [20 x double], ptr @result_times, i64 0, i64 %12
  %14 = load double, ptr %13, align 8, !tbaa !11
  %15 = fmul double %14, 0x3E7AD7F29ABCAF48
  %16 = fdiv double %6, %14
  %17 = fmul double %16, 0x3E7AD7F29ABCAF48
  %18 = load double, ptr @result_times, align 16, !tbaa !11
  %19 = fdiv double %14, %18
  %20 = fmul double %19, 0x3E7AD7F29ABCAF48
  %21 = trunc i64 %12 to i32
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %21, double noundef %15, double noundef %17, double noundef %20) #10
  %23 = add nuw nsw i64 %12, 1
  %24 = load i32, ptr @current_test, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %11, label %9, !llvm.loop !13

27:                                               ; preds = %27, %9
  %28 = phi i64 [ %47, %27 ], [ 0, %9 ]
  %29 = phi double [ %46, %27 ], [ 0.000000e+00, %9 ]
  %30 = phi double [ %41, %27 ], [ 0.000000e+00, %9 ]
  %31 = phi double [ %35, %27 ], [ 0.000000e+00, %9 ]
  %32 = phi double [ %37, %27 ], [ 0.000000e+00, %9 ]
  %33 = getelementptr inbounds [20 x double], ptr @result_times, i64 0, i64 %28
  %34 = load double, ptr %33, align 8, !tbaa !11
  %35 = fadd double %31, %34
  %36 = tail call double @log(double noundef %34) #11
  %37 = fadd double %32, %36
  %38 = load double, ptr %33, align 8, !tbaa !11
  %39 = fdiv double %6, %38
  %40 = tail call double @log(double noundef %39) #11
  %41 = fadd double %30, %40
  %42 = load double, ptr %33, align 8, !tbaa !11
  %43 = load double, ptr @result_times, align 16, !tbaa !11
  %44 = fdiv double %42, %43
  %45 = tail call double @log(double noundef %44) #11
  %46 = fadd double %29, %45
  %47 = add nuw nsw i64 %28, 1
  %48 = load i32, ptr @current_test, align 4, !tbaa !7
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %27, label %51, !llvm.loop !15

51:                                               ; preds = %27
  %.lcssa4 = phi double [ %35, %27 ]
  %.lcssa3 = phi double [ %37, %27 ]
  %.lcssa2 = phi double [ %41, %27 ]
  %.lcssa1 = phi double [ %46, %27 ]
  %.lcssa = phi i32 [ %48, %27 ]
  %52 = fmul double %.lcssa4, 0x3E7AD7F29ABCAF48
  br label %53

53:                                               ; preds = %51, %9, %0
  %54 = phi double [ 0.000000e+00, %9 ], [ %.lcssa3, %51 ], [ 0.000000e+00, %0 ]
  %55 = phi double [ 0.000000e+00, %9 ], [ %52, %51 ], [ 0.000000e+00, %0 ]
  %56 = phi double [ 0.000000e+00, %9 ], [ %.lcssa2, %51 ], [ 0.000000e+00, %0 ]
  %57 = phi double [ 0.000000e+00, %9 ], [ %.lcssa1, %51 ], [ 0.000000e+00, %0 ]
  %58 = phi i32 [ %.lcssa5, %9 ], [ %.lcssa, %51 ], [ %7, %0 ]
  %59 = sitofp i32 %58 to double
  %60 = fdiv double %54, %59
  %61 = tail call double @exp(double noundef %60) #11
  %62 = fmul double %61, 0x3E7AD7F29ABCAF48
  %63 = load i32, ptr @current_test, align 4, !tbaa !7
  %64 = sitofp i32 %63 to double
  %65 = fdiv double %56, %64
  %66 = tail call double @exp(double noundef %65) #11
  %67 = fmul double %66, 0x3E7AD7F29ABCAF48
  %68 = load i32, ptr @current_test, align 4, !tbaa !7
  %69 = sitofp i32 %68 to double
  %70 = fdiv double %57, %69
  %71 = tail call double @exp(double noundef %70) #11
  %72 = fmul double %71, 0x3E7AD7F29ABCAF48
  %73 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %62, double noundef %67, double noundef %72) #10
  %74 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %55) #10
  %75 = load i32, ptr @current_test, align 4, !tbaa !7
  %76 = sitofp i32 %75 to double
  %77 = fdiv double %57, %76
  %78 = tail call double @exp(double noundef %77) #11
  %79 = fmul double %78, 0x3E7AD7F29ABCAF48
  %80 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %79) #10
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize uwtable
define internal void @_Z5test0PdS_(ptr noundef %0, ptr noundef %1) #4 {
  %3 = tail call i64 @clock() #11
  store i64 %3, ptr @start_time, align 8, !tbaa !16
  %4 = load i32, ptr @iterations, align 4, !tbaa !7
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = ashr i64 %9, 3
  %11 = icmp sgt i64 %9, 0
  %12 = tail call i64 @llvm.smax.i64(i64 %10, i64 1)
  br label %13

13:                                               ; preds = %33, %6
  %14 = phi i32 [ %4, %6 ], [ %34, %33 ]
  %15 = phi i32 [ 0, %6 ], [ %35, %33 ]
  br i1 %11, label %37, label %29

16:                                               ; preds = %33, %2
  %17 = tail call i64 @clock() #11
  store i64 %17, ptr @end_time, align 8, !tbaa !16
  %18 = load i64, ptr @start_time, align 8, !tbaa !16
  %19 = sub nsw i64 %17, %18
  %20 = sitofp i64 %19 to double
  %21 = fdiv double %20, 1.000000e+06
  %22 = fadd double %21, 0x3E80000000000000
  %23 = load i32, ptr @current_test, align 4, !tbaa !7
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr @current_test, align 4, !tbaa !7
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds [20 x double], ptr @result_times, i64 0, i64 %25
  store double %22, ptr %26, align 8, !tbaa !11
  ret void

27:                                               ; preds = %37
  %.lcssa = phi double [ %42, %37 ]
  %28 = fcmp une double %.lcssa, 6.000000e+03
  br i1 %28, label %29, label %33

29:                                               ; preds = %27, %13
  %30 = load i32, ptr @current_test, align 4, !tbaa !7
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %30) #10
  %32 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi i32 [ %14, %27 ], [ %32, %29 ]
  %35 = add nuw nsw i32 %15, 1
  %36 = icmp slt i32 %35, %34
  br i1 %36, label %13, label %16, !llvm.loop !18

37:                                               ; preds = %37, %13
  %38 = phi i64 [ %43, %37 ], [ 0, %13 ]
  %39 = phi double [ %42, %37 ], [ 0.000000e+00, %13 ]
  %40 = getelementptr inbounds double, ptr %0, i64 %38
  %41 = load double, ptr %40, align 8, !tbaa !11
  %42 = fadd double %39, %41
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %12
  br i1 %44, label %27, label %37, !llvm.loop !19
}

; Function Attrs: nounwind optsize
declare i64 @clock() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: norecurse optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #7 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = tail call i32 @atoi(ptr nocapture noundef %6) #12
  store i32 %7, ptr @iterations, align 4, !tbaa !7
  br label %8

8:                                                ; preds = %4, %2
  %9 = load ptr, ptr @dpb, align 8, !tbaa !20
  %10 = load ptr, ptr @dpe, align 8, !tbaa !20
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %12, %8
  %13 = phi ptr [ %14, %12 ], [ %9, %8 ]
  %14 = getelementptr inbounds double, ptr %13, i64 1
  store double 3.000000e+00, ptr %13, align 8, !tbaa !11
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !llvm.loop !22

16:                                               ; preds = %12, %8
  %17 = load ptr, ptr @Dpb, align 8, !tbaa !20
  %18 = load ptr, ptr @Dpe, align 8, !tbaa !20
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %20, %16
  %21 = phi ptr [ %22, %20 ], [ %17, %16 ]
  %22 = getelementptr inbounds %struct.Double, ptr %21, i64 1
  store double 3.000000e+00, ptr %21, align 8, !tbaa.struct !23
  %23 = icmp eq ptr %22, %18
  br i1 %23, label %24, label %20, !llvm.loop !24

24:                                               ; preds = %20
  %25 = load ptr, ptr @dpb, align 8, !tbaa !20
  %26 = load ptr, ptr @dpe, align 8, !tbaa !20
  br label %27

27:                                               ; preds = %24, %16
  %28 = phi ptr [ %26, %24 ], [ %10, %16 ]
  %29 = phi ptr [ %25, %24 ], [ %9, %16 ]
  tail call void @_Z5test0PdS_(ptr noundef %29, ptr noundef %28) #10
  %30 = load ptr, ptr @dpb, align 8, !tbaa !20
  %31 = load ptr, ptr @dpe, align 8, !tbaa !20
  %32 = load double, ptr @d, align 8, !tbaa !11
  tail call void @_Z4testIPddEvT_S1_T0_(ptr noundef %30, ptr noundef %31, double noundef %32) #10
  %33 = load ptr, ptr @Dpb, align 8, !tbaa !20
  %34 = load ptr, ptr @Dpe, align 8, !tbaa !20
  %35 = load double, ptr @D, align 8, !tbaa.struct !23
  tail call void @_Z4testIP6DoubleS0_EvT_S2_T0_(ptr noundef %33, ptr noundef %34, double %35) #10
  %36 = load ptr, ptr @dPb, align 8, !tbaa.struct !25
  %37 = load ptr, ptr @dPe, align 8, !tbaa.struct !25
  %38 = load double, ptr @d, align 8, !tbaa !11
  tail call void @_Z4testI14double_pointerdEvT_S1_T0_(ptr %36, ptr %37, double noundef %38) #10
  %39 = load ptr, ptr @DPb, align 8, !tbaa.struct !25
  %40 = load ptr, ptr @DPe, align 8, !tbaa.struct !25
  %41 = load double, ptr @D, align 8, !tbaa.struct !23
  tail call void @_Z4testI14Double_pointer6DoubleEvT_S2_T0_(ptr %39, ptr %40, double %41) #10
  %42 = load ptr, ptr @rdpb, align 8, !tbaa.struct !25
  %43 = load ptr, ptr @rdpe, align 8, !tbaa.struct !25
  %44 = load double, ptr @d, align 8, !tbaa !11
  tail call void @_Z4testI16reverse_iteratorIPddEdEvT_S3_T0_(ptr %42, ptr %43, double noundef %44) #10
  %45 = load ptr, ptr @rDpb, align 8, !tbaa.struct !25
  %46 = load ptr, ptr @rDpe, align 8, !tbaa.struct !25
  %47 = load double, ptr @D, align 8, !tbaa.struct !23
  tail call void @_Z4testI16reverse_iteratorIP6DoubleS1_ES1_EvT_S4_T0_(ptr %45, ptr %46, double %47) #10
  %48 = load ptr, ptr @rdPb, align 8, !tbaa.struct !25
  %49 = load ptr, ptr @rdPe, align 8, !tbaa.struct !25
  %50 = load double, ptr @d, align 8, !tbaa !11
  tail call void @_Z4testI16reverse_iteratorI14double_pointerdEdEvT_S3_T0_(ptr %48, ptr %49, double noundef %50) #10
  %51 = load ptr, ptr @rDPb, align 8, !tbaa.struct !25
  %52 = load ptr, ptr @rDPe, align 8, !tbaa.struct !25
  %53 = load double, ptr @D, align 8, !tbaa.struct !23
  tail call void @_Z4testI16reverse_iteratorI14Double_pointer6DoubleES2_EvT_S4_T0_(ptr %51, ptr %52, double %53) #10
  %54 = load ptr, ptr @rrdpb, align 8, !tbaa.struct !25
  %55 = load ptr, ptr @rrdpe, align 8, !tbaa.struct !25
  %56 = load double, ptr @d, align 8, !tbaa !11
  tail call void @_Z4testI16reverse_iteratorIS0_IPddEdEdEvT_S4_T0_(ptr %54, ptr %55, double noundef %56) #10
  %57 = load ptr, ptr @rrDpb, align 8, !tbaa.struct !25
  %58 = load ptr, ptr @rrDpe, align 8, !tbaa.struct !25
  %59 = load double, ptr @D, align 8, !tbaa.struct !23
  tail call void @_Z4testI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_EvT_S5_T0_(ptr %57, ptr %58, double %59) #10
  %60 = load ptr, ptr @rrdPb, align 8, !tbaa.struct !25
  %61 = load ptr, ptr @rrdPe, align 8, !tbaa.struct !25
  %62 = load double, ptr @d, align 8, !tbaa !11
  tail call void @_Z4testI16reverse_iteratorIS0_I14double_pointerdEdEdEvT_S4_T0_(ptr %60, ptr %61, double noundef %62) #10
  %63 = load ptr, ptr @rrDPb, align 8, !tbaa.struct !25
  %64 = load ptr, ptr @rrDPe, align 8, !tbaa.struct !25
  %65 = load double, ptr @D, align 8, !tbaa.struct !23
  tail call void @_Z4testI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_EvT_S5_T0_(ptr %63, ptr %64, double %65) #10
  tail call void @_Z9summarizev() #10
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z4testIPddEvT_S1_T0_(ptr noundef %0, ptr noundef %1, double noundef %2) #9 comdat {
  %4 = tail call i64 @clock() #11
  store i64 %4, ptr @start_time, align 8, !tbaa !16
  %5 = load i32, ptr @iterations, align 4, !tbaa !7
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = icmp eq ptr %0, %1
  br label %9

9:                                                ; preds = %26, %7
  %10 = phi i32 [ %5, %7 ], [ %27, %26 ]
  %11 = phi i32 [ 0, %7 ], [ %28, %26 ]
  br i1 %8, label %19, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %15, %12 ], [ %0, %9 ]
  %14 = phi double [ %17, %12 ], [ %2, %9 ]
  %15 = getelementptr inbounds double, ptr %13, i64 1
  %16 = load double, ptr %13, align 8, !tbaa !11
  %17 = fadd double %14, %16
  %18 = icmp eq ptr %15, %1
  br i1 %18, label %19, label %12, !llvm.loop !26

19:                                               ; preds = %12, %9
  %20 = phi double [ %2, %9 ], [ %17, %12 ]
  %21 = fcmp une double %20, 6.000000e+03
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, ptr @current_test, align 4, !tbaa !7
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %23) #10
  %25 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i32 [ %10, %19 ], [ %25, %22 ]
  %28 = add nuw nsw i32 %11, 1
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %9, label %30, !llvm.loop !27

30:                                               ; preds = %26, %3
  %31 = tail call i64 @clock() #11
  store i64 %31, ptr @end_time, align 8, !tbaa !16
  %32 = load i64, ptr @start_time, align 8, !tbaa !16
  %33 = sub nsw i64 %31, %32
  %34 = sitofp i64 %33 to double
  %35 = fdiv double %34, 1.000000e+06
  %36 = fadd double %35, 0x3E80000000000000
  %37 = load i32, ptr @current_test, align 4, !tbaa !7
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @current_test, align 4, !tbaa !7
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [20 x double], ptr @result_times, i64 0, i64 %39
  store double %36, ptr %40, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z4testIP6DoubleS0_EvT_S2_T0_(ptr noundef %0, ptr noundef %1, double %2) #9 comdat {
  %4 = tail call i64 @clock() #11
  store i64 %4, ptr @start_time, align 8, !tbaa !16
  %5 = load i32, ptr @iterations, align 4, !tbaa !7
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = icmp eq ptr %0, %1
  br label %9

9:                                                ; preds = %26, %7
  %10 = phi i32 [ %5, %7 ], [ %27, %26 ]
  %11 = phi i32 [ 0, %7 ], [ %28, %26 ]
  br i1 %8, label %19, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %15, %12 ], [ %0, %9 ]
  %14 = phi double [ %17, %12 ], [ %2, %9 ]
  %15 = getelementptr inbounds %struct.Double, ptr %13, i64 1
  %16 = load double, ptr %13, align 8, !tbaa !28
  %17 = fadd double %14, %16
  %18 = icmp eq ptr %15, %1
  br i1 %18, label %19, label %12, !llvm.loop !30

19:                                               ; preds = %12, %9
  %20 = phi double [ %2, %9 ], [ %17, %12 ]
  %21 = fcmp une double %20, 6.000000e+03
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, ptr @current_test, align 4, !tbaa !7
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %23) #10
  %25 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i32 [ %10, %19 ], [ %25, %22 ]
  %28 = add nuw nsw i32 %11, 1
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %9, label %30, !llvm.loop !31

30:                                               ; preds = %26, %3
  %31 = tail call i64 @clock() #11
  store i64 %31, ptr @end_time, align 8, !tbaa !16
  %32 = load i64, ptr @start_time, align 8, !tbaa !16
  %33 = sub nsw i64 %31, %32
  %34 = sitofp i64 %33 to double
  %35 = fdiv double %34, 1.000000e+06
  %36 = fadd double %35, 0x3E80000000000000
  %37 = load i32, ptr @current_test, align 4, !tbaa !7
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @current_test, align 4, !tbaa !7
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [20 x double], ptr @result_times, i64 0, i64 %39
  store double %36, ptr %40, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z4testI14double_pointerdEvT_S1_T0_(ptr %0, ptr %1, double noundef %2) #9 comdat {
  %4 = tail call i64 @clock() #11
  store i64 %4, ptr @start_time, align 8, !tbaa !16
  %5 = load i32, ptr @iterations, align 4, !tbaa !7
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = icmp eq ptr %0, %1
  br label %9

9:                                                ; preds = %26, %7
  %10 = phi i32 [ %5, %7 ], [ %27, %26 ]
  %11 = phi i32 [ 0, %7 ], [ %28, %26 ]
  br i1 %8, label %19, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %15, %12 ], [ %0, %9 ]
  %14 = phi double [ %17, %12 ], [ %2, %9 ]
  %15 = getelementptr inbounds double, ptr %13, i64 1
  %16 = load double, ptr %13, align 8, !tbaa !11
  %17 = fadd double %14, %16
  %18 = icmp eq ptr %15, %1
  br i1 %18, label %19, label %12, !llvm.loop !32

19:                                               ; preds = %12, %9
  %20 = phi double [ %2, %9 ], [ %17, %12 ]
  %21 = fcmp une double %20, 6.000000e+03
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, ptr @current_test, align 4, !tbaa !7
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %23) #10
  %25 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i32 [ %10, %19 ], [ %25, %22 ]
  %28 = add nuw nsw i32 %11, 1
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %9, label %30, !llvm.loop !33

30:                                               ; preds = %26, %3
  %31 = tail call i64 @clock() #11
  store i64 %31, ptr @end_time, align 8, !tbaa !16
  %32 = load i64, ptr @start_time, align 8, !tbaa !16
  %33 = sub nsw i64 %31, %32
  %34 = sitofp i64 %33 to double
  %35 = fdiv double %34, 1.000000e+06
  %36 = fadd double %35, 0x3E80000000000000
  %37 = load i32, ptr @current_test, align 4, !tbaa !7
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @current_test, align 4, !tbaa !7
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [20 x double], ptr @result_times, i64 0, i64 %39
  store double %36, ptr %40, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z4testI14Double_pointer6DoubleEvT_S2_T0_(ptr %0, ptr %1, double %2) #9 comdat {
  %4 = tail call i64 @clock() #11
  store i64 %4, ptr @start_time, align 8, !tbaa !16
  %5 = load i32, ptr @iterations, align 4, !tbaa !7
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = icmp eq ptr %0, %1
  br label %9

9:                                                ; preds = %26, %7
  %10 = phi i32 [ %5, %7 ], [ %27, %26 ]
  %11 = phi i32 [ 0, %7 ], [ %28, %26 ]
  br i1 %8, label %19, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %15, %12 ], [ %0, %9 ]
  %14 = phi double [ %17, %12 ], [ %2, %9 ]
  %15 = getelementptr inbounds %struct.Double, ptr %13, i64 1
  %16 = load double, ptr %13, align 8, !tbaa !28
  %17 = fadd double %14, %16
  %18 = icmp eq ptr %15, %1
  br i1 %18, label %19, label %12, !llvm.loop !34

19:                                               ; preds = %12, %9
  %20 = phi double [ %2, %9 ], [ %17, %12 ]
  %21 = fcmp une double %20, 6.000000e+03
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, ptr @current_test, align 4, !tbaa !7
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %23) #10
  %25 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i32 [ %10, %19 ], [ %25, %22 ]
  %28 = add nuw nsw i32 %11, 1
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %9, label %30, !llvm.loop !35

30:                                               ; preds = %26, %3
  %31 = tail call i64 @clock() #11
  store i64 %31, ptr @end_time, align 8, !tbaa !16
  %32 = load i64, ptr @start_time, align 8, !tbaa !16
  %33 = sub nsw i64 %31, %32
  %34 = sitofp i64 %33 to double
  %35 = fdiv double %34, 1.000000e+06
  %36 = fadd double %35, 0x3E80000000000000
  %37 = load i32, ptr @current_test, align 4, !tbaa !7
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @current_test, align 4, !tbaa !7
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [20 x double], ptr @result_times, i64 0, i64 %39
  store double %36, ptr %40, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z4testI16reverse_iteratorIPddEdEvT_S3_T0_(ptr %0, ptr %1, double noundef %2) #9 comdat {
  %4 = tail call i64 @clock() #11
  store i64 %4, ptr @start_time, align 8, !tbaa !16
  %5 = load i32, ptr @iterations, align 4, !tbaa !7
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = icmp eq ptr %0, %1
  br label %9

9:                                                ; preds = %26, %7
  %10 = phi i32 [ %5, %7 ], [ %27, %26 ]
  %11 = phi i32 [ 0, %7 ], [ %28, %26 ]
  br i1 %8, label %19, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %15, %12 ], [ %0, %9 ]
  %14 = phi double [ %17, %12 ], [ %2, %9 ]
  %15 = getelementptr inbounds double, ptr %13, i64 -1
  %16 = load double, ptr %15, align 8, !tbaa !11
  %17 = fadd double %14, %16
  %18 = icmp eq ptr %15, %1
  br i1 %18, label %19, label %12, !llvm.loop !36

19:                                               ; preds = %12, %9
  %20 = phi double [ %2, %9 ], [ %17, %12 ]
  %21 = fcmp une double %20, 6.000000e+03
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, ptr @current_test, align 4, !tbaa !7
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %23) #10
  %25 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i32 [ %10, %19 ], [ %25, %22 ]
  %28 = add nuw nsw i32 %11, 1
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %9, label %30, !llvm.loop !37

30:                                               ; preds = %26, %3
  %31 = tail call i64 @clock() #11
  store i64 %31, ptr @end_time, align 8, !tbaa !16
  %32 = load i64, ptr @start_time, align 8, !tbaa !16
  %33 = sub nsw i64 %31, %32
  %34 = sitofp i64 %33 to double
  %35 = fdiv double %34, 1.000000e+06
  %36 = fadd double %35, 0x3E80000000000000
  %37 = load i32, ptr @current_test, align 4, !tbaa !7
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @current_test, align 4, !tbaa !7
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [20 x double], ptr @result_times, i64 0, i64 %39
  store double %36, ptr %40, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z4testI16reverse_iteratorIP6DoubleS1_ES1_EvT_S4_T0_(ptr %0, ptr %1, double %2) #9 comdat {
  %4 = tail call i64 @clock() #11
  store i64 %4, ptr @start_time, align 8, !tbaa !16
  %5 = load i32, ptr @iterations, align 4, !tbaa !7
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = icmp eq ptr %0, %1
  br label %9

9:                                                ; preds = %26, %7
  %10 = phi i32 [ %5, %7 ], [ %27, %26 ]
  %11 = phi i32 [ 0, %7 ], [ %28, %26 ]
  br i1 %8, label %19, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %15, %12 ], [ %0, %9 ]
  %14 = phi double [ %17, %12 ], [ %2, %9 ]
  %15 = getelementptr inbounds %struct.Double, ptr %13, i64 -1
  %16 = load double, ptr %15, align 8, !tbaa !28
  %17 = fadd double %14, %16
  %18 = icmp eq ptr %15, %1
  br i1 %18, label %19, label %12, !llvm.loop !38

19:                                               ; preds = %12, %9
  %20 = phi double [ %2, %9 ], [ %17, %12 ]
  %21 = fcmp une double %20, 6.000000e+03
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, ptr @current_test, align 4, !tbaa !7
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %23) #10
  %25 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i32 [ %10, %19 ], [ %25, %22 ]
  %28 = add nuw nsw i32 %11, 1
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %9, label %30, !llvm.loop !39

30:                                               ; preds = %26, %3
  %31 = tail call i64 @clock() #11
  store i64 %31, ptr @end_time, align 8, !tbaa !16
  %32 = load i64, ptr @start_time, align 8, !tbaa !16
  %33 = sub nsw i64 %31, %32
  %34 = sitofp i64 %33 to double
  %35 = fdiv double %34, 1.000000e+06
  %36 = fadd double %35, 0x3E80000000000000
  %37 = load i32, ptr @current_test, align 4, !tbaa !7
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @current_test, align 4, !tbaa !7
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [20 x double], ptr @result_times, i64 0, i64 %39
  store double %36, ptr %40, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z4testI16reverse_iteratorI14double_pointerdEdEvT_S3_T0_(ptr %0, ptr %1, double noundef %2) #9 comdat {
  %4 = tail call i64 @clock() #11
  store i64 %4, ptr @start_time, align 8, !tbaa !16
  %5 = load i32, ptr @iterations, align 4, !tbaa !7
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = icmp eq ptr %0, %1
  br label %9

9:                                                ; preds = %26, %7
  %10 = phi i32 [ %5, %7 ], [ %27, %26 ]
  %11 = phi i32 [ 0, %7 ], [ %28, %26 ]
  br i1 %8, label %19, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %15, %12 ], [ %0, %9 ]
  %14 = phi double [ %17, %12 ], [ %2, %9 ]
  %15 = getelementptr inbounds double, ptr %13, i64 -1
  %16 = load double, ptr %15, align 8, !tbaa !11
  %17 = fadd double %14, %16
  %18 = icmp eq ptr %15, %1
  br i1 %18, label %19, label %12, !llvm.loop !40

19:                                               ; preds = %12, %9
  %20 = phi double [ %2, %9 ], [ %17, %12 ]
  %21 = fcmp une double %20, 6.000000e+03
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, ptr @current_test, align 4, !tbaa !7
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %23) #10
  %25 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i32 [ %10, %19 ], [ %25, %22 ]
  %28 = add nuw nsw i32 %11, 1
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %9, label %30, !llvm.loop !41

30:                                               ; preds = %26, %3
  %31 = tail call i64 @clock() #11
  store i64 %31, ptr @end_time, align 8, !tbaa !16
  %32 = load i64, ptr @start_time, align 8, !tbaa !16
  %33 = sub nsw i64 %31, %32
  %34 = sitofp i64 %33 to double
  %35 = fdiv double %34, 1.000000e+06
  %36 = fadd double %35, 0x3E80000000000000
  %37 = load i32, ptr @current_test, align 4, !tbaa !7
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @current_test, align 4, !tbaa !7
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [20 x double], ptr @result_times, i64 0, i64 %39
  store double %36, ptr %40, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z4testI16reverse_iteratorI14Double_pointer6DoubleES2_EvT_S4_T0_(ptr %0, ptr %1, double %2) #9 comdat {
  %4 = tail call i64 @clock() #11
  store i64 %4, ptr @start_time, align 8, !tbaa !16
  %5 = load i32, ptr @iterations, align 4, !tbaa !7
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = icmp eq ptr %0, %1
  br label %9

9:                                                ; preds = %26, %7
  %10 = phi i32 [ %5, %7 ], [ %27, %26 ]
  %11 = phi i32 [ 0, %7 ], [ %28, %26 ]
  br i1 %8, label %19, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %15, %12 ], [ %0, %9 ]
  %14 = phi double [ %17, %12 ], [ %2, %9 ]
  %15 = getelementptr inbounds %struct.Double, ptr %13, i64 -1
  %16 = load double, ptr %15, align 8, !tbaa !28
  %17 = fadd double %14, %16
  %18 = icmp eq ptr %15, %1
  br i1 %18, label %19, label %12, !llvm.loop !42

19:                                               ; preds = %12, %9
  %20 = phi double [ %2, %9 ], [ %17, %12 ]
  %21 = fcmp une double %20, 6.000000e+03
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, ptr @current_test, align 4, !tbaa !7
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %23) #10
  %25 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i32 [ %10, %19 ], [ %25, %22 ]
  %28 = add nuw nsw i32 %11, 1
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %9, label %30, !llvm.loop !43

30:                                               ; preds = %26, %3
  %31 = tail call i64 @clock() #11
  store i64 %31, ptr @end_time, align 8, !tbaa !16
  %32 = load i64, ptr @start_time, align 8, !tbaa !16
  %33 = sub nsw i64 %31, %32
  %34 = sitofp i64 %33 to double
  %35 = fdiv double %34, 1.000000e+06
  %36 = fadd double %35, 0x3E80000000000000
  %37 = load i32, ptr @current_test, align 4, !tbaa !7
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @current_test, align 4, !tbaa !7
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [20 x double], ptr @result_times, i64 0, i64 %39
  store double %36, ptr %40, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z4testI16reverse_iteratorIS0_IPddEdEdEvT_S4_T0_(ptr %0, ptr %1, double noundef %2) #9 comdat {
  %4 = tail call i64 @clock() #11
  store i64 %4, ptr @start_time, align 8, !tbaa !16
  %5 = load i32, ptr @iterations, align 4, !tbaa !7
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = icmp eq ptr %0, %1
  br label %9

9:                                                ; preds = %26, %7
  %10 = phi i32 [ %5, %7 ], [ %27, %26 ]
  %11 = phi i32 [ 0, %7 ], [ %28, %26 ]
  br i1 %8, label %19, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %15, %12 ], [ %0, %9 ]
  %14 = phi double [ %17, %12 ], [ %2, %9 ]
  %15 = getelementptr inbounds double, ptr %13, i64 1
  %16 = load double, ptr %13, align 8, !tbaa !11
  %17 = fadd double %14, %16
  %18 = icmp eq ptr %15, %1
  br i1 %18, label %19, label %12, !llvm.loop !44

19:                                               ; preds = %12, %9
  %20 = phi double [ %2, %9 ], [ %17, %12 ]
  %21 = fcmp une double %20, 6.000000e+03
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, ptr @current_test, align 4, !tbaa !7
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %23) #10
  %25 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i32 [ %10, %19 ], [ %25, %22 ]
  %28 = add nuw nsw i32 %11, 1
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %9, label %30, !llvm.loop !45

30:                                               ; preds = %26, %3
  %31 = tail call i64 @clock() #11
  store i64 %31, ptr @end_time, align 8, !tbaa !16
  %32 = load i64, ptr @start_time, align 8, !tbaa !16
  %33 = sub nsw i64 %31, %32
  %34 = sitofp i64 %33 to double
  %35 = fdiv double %34, 1.000000e+06
  %36 = fadd double %35, 0x3E80000000000000
  %37 = load i32, ptr @current_test, align 4, !tbaa !7
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @current_test, align 4, !tbaa !7
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [20 x double], ptr @result_times, i64 0, i64 %39
  store double %36, ptr %40, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z4testI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_EvT_S5_T0_(ptr %0, ptr %1, double %2) #9 comdat {
  %4 = tail call i64 @clock() #11
  store i64 %4, ptr @start_time, align 8, !tbaa !16
  %5 = load i32, ptr @iterations, align 4, !tbaa !7
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = icmp eq ptr %0, %1
  br label %9

9:                                                ; preds = %26, %7
  %10 = phi i32 [ %5, %7 ], [ %27, %26 ]
  %11 = phi i32 [ 0, %7 ], [ %28, %26 ]
  br i1 %8, label %19, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %15, %12 ], [ %0, %9 ]
  %14 = phi double [ %17, %12 ], [ %2, %9 ]
  %15 = getelementptr inbounds %struct.Double, ptr %13, i64 1
  %16 = load double, ptr %13, align 8, !tbaa !28
  %17 = fadd double %14, %16
  %18 = icmp eq ptr %15, %1
  br i1 %18, label %19, label %12, !llvm.loop !46

19:                                               ; preds = %12, %9
  %20 = phi double [ %2, %9 ], [ %17, %12 ]
  %21 = fcmp une double %20, 6.000000e+03
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, ptr @current_test, align 4, !tbaa !7
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %23) #10
  %25 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i32 [ %10, %19 ], [ %25, %22 ]
  %28 = add nuw nsw i32 %11, 1
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %9, label %30, !llvm.loop !47

30:                                               ; preds = %26, %3
  %31 = tail call i64 @clock() #11
  store i64 %31, ptr @end_time, align 8, !tbaa !16
  %32 = load i64, ptr @start_time, align 8, !tbaa !16
  %33 = sub nsw i64 %31, %32
  %34 = sitofp i64 %33 to double
  %35 = fdiv double %34, 1.000000e+06
  %36 = fadd double %35, 0x3E80000000000000
  %37 = load i32, ptr @current_test, align 4, !tbaa !7
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @current_test, align 4, !tbaa !7
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [20 x double], ptr @result_times, i64 0, i64 %39
  store double %36, ptr %40, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z4testI16reverse_iteratorIS0_I14double_pointerdEdEdEvT_S4_T0_(ptr %0, ptr %1, double noundef %2) #9 comdat {
  %4 = tail call i64 @clock() #11
  store i64 %4, ptr @start_time, align 8, !tbaa !16
  %5 = load i32, ptr @iterations, align 4, !tbaa !7
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = icmp eq ptr %0, %1
  br label %9

9:                                                ; preds = %26, %7
  %10 = phi i32 [ %5, %7 ], [ %27, %26 ]
  %11 = phi i32 [ 0, %7 ], [ %28, %26 ]
  br i1 %8, label %19, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %15, %12 ], [ %0, %9 ]
  %14 = phi double [ %17, %12 ], [ %2, %9 ]
  %15 = getelementptr inbounds double, ptr %13, i64 1
  %16 = load double, ptr %13, align 8, !tbaa !11
  %17 = fadd double %14, %16
  %18 = icmp eq ptr %15, %1
  br i1 %18, label %19, label %12, !llvm.loop !48

19:                                               ; preds = %12, %9
  %20 = phi double [ %2, %9 ], [ %17, %12 ]
  %21 = fcmp une double %20, 6.000000e+03
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, ptr @current_test, align 4, !tbaa !7
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %23) #10
  %25 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i32 [ %10, %19 ], [ %25, %22 ]
  %28 = add nuw nsw i32 %11, 1
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %9, label %30, !llvm.loop !49

30:                                               ; preds = %26, %3
  %31 = tail call i64 @clock() #11
  store i64 %31, ptr @end_time, align 8, !tbaa !16
  %32 = load i64, ptr @start_time, align 8, !tbaa !16
  %33 = sub nsw i64 %31, %32
  %34 = sitofp i64 %33 to double
  %35 = fdiv double %34, 1.000000e+06
  %36 = fadd double %35, 0x3E80000000000000
  %37 = load i32, ptr @current_test, align 4, !tbaa !7
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @current_test, align 4, !tbaa !7
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [20 x double], ptr @result_times, i64 0, i64 %39
  store double %36, ptr %40, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z4testI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_EvT_S5_T0_(ptr %0, ptr %1, double %2) #9 comdat {
  %4 = tail call i64 @clock() #11
  store i64 %4, ptr @start_time, align 8, !tbaa !16
  %5 = load i32, ptr @iterations, align 4, !tbaa !7
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = icmp eq ptr %0, %1
  br label %9

9:                                                ; preds = %26, %7
  %10 = phi i32 [ %5, %7 ], [ %27, %26 ]
  %11 = phi i32 [ 0, %7 ], [ %28, %26 ]
  br i1 %8, label %19, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %15, %12 ], [ %0, %9 ]
  %14 = phi double [ %17, %12 ], [ %2, %9 ]
  %15 = getelementptr inbounds %struct.Double, ptr %13, i64 1
  %16 = load double, ptr %13, align 8, !tbaa !28
  %17 = fadd double %14, %16
  %18 = icmp eq ptr %15, %1
  br i1 %18, label %19, label %12, !llvm.loop !50

19:                                               ; preds = %12, %9
  %20 = phi double [ %2, %9 ], [ %17, %12 ]
  %21 = fcmp une double %20, 6.000000e+03
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, ptr @current_test, align 4, !tbaa !7
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %23) #10
  %25 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i32 [ %10, %19 ], [ %25, %22 ]
  %28 = add nuw nsw i32 %11, 1
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %9, label %30, !llvm.loop !51

30:                                               ; preds = %26, %3
  %31 = tail call i64 @clock() #11
  store i64 %31, ptr @end_time, align 8, !tbaa !16
  %32 = load i64, ptr @start_time, align 8, !tbaa !16
  %33 = sub nsw i64 %31, %32
  %34 = sitofp i64 %33 to double
  %35 = fdiv double %34, 1.000000e+06
  %36 = fadd double %35, 0x3E80000000000000
  %37 = load i32, ptr @current_test, align 4, !tbaa !7
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @current_test, align 4, !tbaa !7
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [20 x double], ptr @result_times, i64 0, i64 %39
  store double %36, ptr %40, align 8, !tbaa !11
  ret void
}

attributes #0 = { mustprogress nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind optsize willreturn memory(read) }

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
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !9, i64 0}
!22 = distinct !{!22, !14}
!23 = !{i64 0, i64 8, !11}
!24 = distinct !{!24, !14}
!25 = !{i64 0, i64 8, !20}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = !{!29, !12, i64 0}
!29 = !{!"_ZTS6Double", !12, i64 0}
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
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
