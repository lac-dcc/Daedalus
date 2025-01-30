; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Adobe-C++/stepanov_abstraction.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ValueWrapper = type { double }
%struct.ValueWrapper.0 = type { %struct.ValueWrapper.1 }
%struct.ValueWrapper.1 = type { %struct.ValueWrapper.2 }
%struct.ValueWrapper.2 = type { %struct.ValueWrapper.3 }
%struct.ValueWrapper.3 = type { %struct.ValueWrapper.4 }
%struct.ValueWrapper.4 = type { %struct.ValueWrapper.5 }
%struct.ValueWrapper.5 = type { %struct.ValueWrapper.6 }
%struct.ValueWrapper.6 = type { %struct.ValueWrapper.7 }
%struct.ValueWrapper.7 = type { %struct.ValueWrapper.8 }
%struct.ValueWrapper.8 = type { %struct.ValueWrapper }
%struct.PointerWrapper = type { ptr }

$_Z15test_accumulateIPddEvT_S1_T0_PKc = comdat any

$_Z15test_accumulateI14PointerWrapperIdEdEvT_S2_T0_PKc = comdat any

$_Z15test_accumulateIP12ValueWrapperIdES1_EvT_S3_T0_PKc = comdat any

$_Z15test_accumulateI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_T0_PKc = comdat any

$_Z15test_accumulateIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_T0_PKc = comdat any

$_Z15test_accumulateI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_T0_PKc = comdat any

$_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc = comdat any

$_Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc = comdat any

$_Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc = comdat any

$_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc = comdat any

$_Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc = comdat any

$_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc = comdat any

$_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc = comdat any

$_Z14test_quicksortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc = comdat any

$_Z14test_quicksortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc = comdat any

$_Z14test_quicksortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc = comdat any

$_Z14test_quicksortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc = comdat any

$_Z14test_quicksortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc = comdat any

$_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc = comdat any

$_Z14test_heap_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc = comdat any

$_Z14test_heap_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc = comdat any

$_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc = comdat any

$_Z14test_heap_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc = comdat any

$_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc = comdat any

$_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_ = comdat any

$_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_ = comdat any

$_ZN9benchmark8heapsortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_ = comdat any

$_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_ = comdat any

$_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_ = comdat any

$_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_ = comdat any

$_ZN9benchmark8heapsortIP12ValueWrapperIdES2_EEvT_S4_ = comdat any

$_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_ = comdat any

$_ZN9benchmark8heapsortI14PointerWrapperIdEdEEvT_S3_ = comdat any

$_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_ = comdat any

$_ZN9benchmark8heapsortIPddEEvT_S2_ = comdat any

$_ZN9benchmark7sift_inIPddEEvlT_lT0_ = comdat any

$_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_ = comdat any

$_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_ = comdat any

$_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_ = comdat any

$_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_ = comdat any

$_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_ = comdat any

$_ZN9benchmark9quicksortIPddEEvT_S2_ = comdat any

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer
@current_test = internal global i32 0, align 4
@iterations = internal global i32 200000, align 4
@init_value = internal global double 3.000000e+00, align 8
@data = internal global [2000 x double] zeroinitializer, align 16
@VData = internal global [2000 x %struct.ValueWrapper] zeroinitializer, align 16
@V10Data = internal global [2000 x %struct.ValueWrapper.0] zeroinitializer, align 16
@dataMaster = internal global [2000 x double] zeroinitializer, align 16
@VDataMaster = internal global [2000 x %struct.ValueWrapper] zeroinitializer, align 16
@V10DataMaster = internal global [2000 x %struct.ValueWrapper.0] zeroinitializer, align 16
@dpb = internal global ptr @data, align 8
@dpe = internal global ptr getelementptr inbounds ([2000 x double], ptr @data, i64 1, i64 0), align 8
@dMpb = internal global ptr @dataMaster, align 8
@dMpe = internal global ptr getelementptr inbounds ([2000 x double], ptr @dataMaster, i64 1, i64 0), align 8
@DVpb = internal global ptr @VData, align 8
@DVpe = internal global ptr getelementptr inbounds ([2000 x %struct.ValueWrapper], ptr @VData, i64 1, i64 0, i32 0), align 8
@DVMpb = internal global ptr @VDataMaster, align 8
@DVMpe = internal global ptr getelementptr inbounds ([2000 x %struct.ValueWrapper], ptr @VDataMaster, i64 1, i64 0, i32 0), align 8
@DV10pb = internal global ptr @V10Data, align 8
@DV10pe = internal global ptr getelementptr inbounds ([2000 x %struct.ValueWrapper.0], ptr @V10Data, i64 1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 8
@DV10Mpb = internal global ptr @V10DataMaster, align 8
@DV10Mpe = internal global ptr getelementptr inbounds ([2000 x %struct.ValueWrapper.0], ptr @V10DataMaster, i64 1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), align 8
@dPb = internal global %struct.PointerWrapper { ptr @data }, align 8
@dPe = internal global %struct.PointerWrapper { ptr getelementptr inbounds ([2000 x double], ptr @data, i64 1, i64 0) }, align 8
@dMPb = internal global %struct.PointerWrapper { ptr @dataMaster }, align 8
@dMPe = internal global %struct.PointerWrapper { ptr getelementptr inbounds ([2000 x double], ptr @dataMaster, i64 1, i64 0) }, align 8
@DVPb = internal global %struct.PointerWrapper { ptr @VData }, align 8
@DVPe = internal global %struct.PointerWrapper { ptr getelementptr inbounds ([2000 x %struct.ValueWrapper], ptr @VData, i64 1, i64 0, i32 0) }, align 8
@DVMPb = internal global %struct.PointerWrapper { ptr @VDataMaster }, align 8
@DVMPe = internal global %struct.PointerWrapper { ptr getelementptr inbounds ([2000 x %struct.ValueWrapper], ptr @VDataMaster, i64 1, i64 0, i32 0) }, align 8
@DV10Pb = internal global %struct.PointerWrapper { ptr @V10Data }, align 8
@DV10Pe = internal global %struct.PointerWrapper { ptr getelementptr inbounds ([2000 x %struct.ValueWrapper.0], ptr @V10Data, i64 1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) }, align 8
@DV10MPb = internal global %struct.PointerWrapper { ptr @V10DataMaster }, align 8
@DV10MPe = internal global %struct.PointerWrapper { ptr getelementptr inbounds ([2000 x %struct.ValueWrapper.0], ptr @V10DataMaster, i64 1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) }, align 8
@.str.26 = private unnamed_addr constant [15 x i8] c"double pointer\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"double pointer_class\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"DoubleValueWrapper pointer\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"DoubleValueWrapper pointer_class\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"DoubleValueWrapper10 pointer\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"DoubleValueWrapper10 pointer_class\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"insertion_sort double pointer\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"insertion_sort double pointer_class\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"insertion_sort DoubleValueWrapper pointer\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"insertion_sort DoubleValueWrapper pointer_class\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"insertion_sort DoubleValueWrapper10 pointer\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"insertion_sort DoubleValueWrapper10 pointer_class\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"quicksort double pointer\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"quicksort double pointer_class\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"quicksort DoubleValueWrapper pointer\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"quicksort DoubleValueWrapper pointer_class\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"quicksort DoubleValueWrapper10 pointer\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"quicksort DoubleValueWrapper10 pointer_class\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"heap_sort double pointer\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"heap_sort double pointer_class\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"heap_sort DoubleValueWrapper pointer\00", align 1
@.str.47 = private unnamed_addr constant [43 x i8] c"heap_sort DoubleValueWrapper pointer_class\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"heap_sort DoubleValueWrapper10 pointer\00", align 1
@.str.49 = private unnamed_addr constant [45 x i8] c"heap_sort DoubleValueWrapper10 pointer_class\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"test %i failed\0A\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"sort test %i failed\0A\00", align 1

; Function Attrs: norecurse optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !7
  %7 = tail call i32 @atoi(ptr nocapture noundef %6) #7
  store i32 %7, ptr @iterations, align 4, !tbaa !11
  %8 = icmp eq i32 %0, 2
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds ptr, ptr %1, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = tail call double @atof(ptr noundef %11) #7
  store double %12, ptr @init_value, align 8, !tbaa !13
  br label %13

13:                                               ; preds = %9, %4, %2
  %14 = load double, ptr @init_value, align 8, !tbaa !13
  %15 = fptosi double %14 to i32
  %16 = add nsw i32 %15, 123
  tail call void @srand(i32 noundef %16) #8
  %17 = load ptr, ptr @dpb, align 8, !tbaa !7
  %18 = load ptr, ptr @dpe, align 8, !tbaa !7
  %19 = load double, ptr @init_value, align 8, !tbaa !13
  %20 = icmp eq ptr %17, %18
  br i1 %20, label %27, label %21

21:                                               ; preds = %21, %13
  %22 = phi ptr [ %23, %21 ], [ %17, %13 ]
  %23 = getelementptr inbounds double, ptr %22, i64 1
  store double %19, ptr %22, align 8, !tbaa !13
  %24 = icmp eq ptr %23, %18
  br i1 %24, label %25, label %21, !llvm.loop !15

25:                                               ; preds = %21
  %26 = load double, ptr @init_value, align 8, !tbaa !13
  br label %27

27:                                               ; preds = %25, %13
  %28 = phi double [ %26, %25 ], [ %19, %13 ]
  %29 = load ptr, ptr @DVpb, align 8, !tbaa !7
  %30 = load ptr, ptr @DVpe, align 8, !tbaa !7
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %32, %27
  %33 = phi ptr [ %34, %32 ], [ %29, %27 ]
  %34 = getelementptr inbounds %struct.ValueWrapper, ptr %33, i64 1
  store double %28, ptr %33, align 8, !tbaa.struct !17
  %35 = icmp eq ptr %34, %30
  br i1 %35, label %36, label %32, !llvm.loop !18

36:                                               ; preds = %32
  %37 = load double, ptr @init_value, align 8, !tbaa !13
  br label %38

38:                                               ; preds = %36, %27
  %39 = phi double [ %37, %36 ], [ %28, %27 ]
  %40 = load ptr, ptr @DV10pb, align 8, !tbaa !7
  %41 = load ptr, ptr @DV10pe, align 8, !tbaa !7
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %43, %38
  %44 = phi ptr [ %45, %43 ], [ %40, %38 ]
  %45 = getelementptr inbounds %struct.ValueWrapper.0, ptr %44, i64 1
  store double %39, ptr %44, align 8, !tbaa.struct !17
  %46 = icmp eq ptr %45, %41
  br i1 %46, label %47, label %43, !llvm.loop !19

47:                                               ; preds = %43, %38
  %48 = load ptr, ptr @dpb, align 8, !tbaa !7
  %49 = load ptr, ptr @dpe, align 8, !tbaa !7
  tail call void @_Z15test_accumulateIPddEvT_S1_T0_PKc(ptr noundef %48, ptr noundef %49, double noundef 0.000000e+00, ptr noundef nonnull @.str.26) #9
  %50 = load ptr, ptr @dPb, align 8, !tbaa.struct !20
  %51 = load ptr, ptr @dPe, align 8, !tbaa.struct !20
  tail call void @_Z15test_accumulateI14PointerWrapperIdEdEvT_S2_T0_PKc(ptr %50, ptr %51, double noundef 0.000000e+00, ptr noundef nonnull @.str.27) #9
  %52 = load ptr, ptr @DVpb, align 8, !tbaa !7
  %53 = load ptr, ptr @DVpe, align 8, !tbaa !7
  tail call void @_Z15test_accumulateIP12ValueWrapperIdES1_EvT_S3_T0_PKc(ptr noundef %52, ptr noundef %53, double 0.000000e+00, ptr noundef nonnull @.str.28) #9
  %54 = load ptr, ptr @DVPb, align 8, !tbaa.struct !20
  %55 = load ptr, ptr @DVPe, align 8, !tbaa.struct !20
  tail call void @_Z15test_accumulateI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_T0_PKc(ptr %54, ptr %55, double 0.000000e+00, ptr noundef nonnull @.str.29) #9
  %56 = load ptr, ptr @DV10pb, align 8, !tbaa !7
  %57 = load ptr, ptr @DV10pe, align 8, !tbaa !7
  tail call void @_Z15test_accumulateIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_T0_PKc(ptr noundef %56, ptr noundef %57, double 0.000000e+00, ptr noundef nonnull @.str.30) #9
  %58 = load ptr, ptr @DV10Pb, align 8, !tbaa.struct !20
  %59 = load ptr, ptr @DV10Pe, align 8, !tbaa.struct !20
  tail call void @_Z15test_accumulateI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_T0_PKc(ptr %58, ptr %59, double 0.000000e+00, ptr noundef nonnull @.str.31) #9
  %60 = load i32, ptr @iterations, align 4, !tbaa !11
  %61 = sdiv i32 %60, 2000
  store i32 %61, ptr @iterations, align 4, !tbaa !11
  %62 = load ptr, ptr @dMpb, align 8, !tbaa !7
  %63 = load ptr, ptr @dMpe, align 8, !tbaa !7
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %93, label %65

65:                                               ; preds = %65, %47
  %66 = phi ptr [ %69, %65 ], [ %62, %47 ]
  %67 = tail call i32 @rand() #8
  %68 = sitofp i32 %67 to double
  %69 = getelementptr inbounds double, ptr %66, i64 1
  store double %68, ptr %66, align 8, !tbaa !13
  %70 = icmp eq ptr %69, %63
  br i1 %70, label %71, label %65, !llvm.loop !21

71:                                               ; preds = %65
  %72 = load ptr, ptr @dMpb, align 8, !tbaa !7
  %73 = load ptr, ptr @dMpe, align 8, !tbaa !7
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %93, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr @DVMpb, align 8, !tbaa !7
  br label %77

77:                                               ; preds = %77, %75
  %78 = phi ptr [ %82, %77 ], [ %76, %75 ]
  %79 = phi ptr [ %80, %77 ], [ %72, %75 ]
  %80 = getelementptr inbounds double, ptr %79, i64 1
  %81 = load i64, ptr %79, align 8, !tbaa !13
  %82 = getelementptr inbounds %struct.ValueWrapper, ptr %78, i64 1
  store i64 %81, ptr %78, align 8, !tbaa !13
  %83 = icmp eq ptr %80, %73
  br i1 %83, label %84, label %77, !llvm.loop !22

84:                                               ; preds = %77
  %85 = load ptr, ptr @DV10Mpb, align 8, !tbaa !7
  br label %86

86:                                               ; preds = %86, %84
  %87 = phi ptr [ %91, %86 ], [ %85, %84 ]
  %88 = phi ptr [ %89, %86 ], [ %72, %84 ]
  %89 = getelementptr inbounds double, ptr %88, i64 1
  %90 = load i64, ptr %88, align 8, !tbaa !13
  %91 = getelementptr inbounds %struct.ValueWrapper.0, ptr %87, i64 1
  store i64 %90, ptr %87, align 8, !tbaa !13
  %92 = icmp eq ptr %89, %73
  br i1 %92, label %93, label %86, !llvm.loop !23

93:                                               ; preds = %86, %71, %47
  %94 = phi ptr [ %72, %71 ], [ %62, %47 ], [ %72, %86 ]
  %95 = phi ptr [ %73, %71 ], [ %62, %47 ], [ %73, %86 ]
  %96 = load ptr, ptr @dpb, align 8, !tbaa !7
  %97 = load ptr, ptr @dpe, align 8, !tbaa !7
  tail call void @_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc(ptr noundef %94, ptr noundef %95, ptr noundef %96, ptr noundef %97, double noundef 0.000000e+00, ptr noundef nonnull @.str.32) #9
  %98 = load ptr, ptr @dMPb, align 8, !tbaa.struct !20
  %99 = load ptr, ptr @dMPe, align 8, !tbaa.struct !20
  %100 = load ptr, ptr @dPb, align 8, !tbaa.struct !20
  %101 = load ptr, ptr @dPe, align 8, !tbaa.struct !20
  tail call void @_Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc(ptr %98, ptr %99, ptr %100, ptr %101, double noundef 0.000000e+00, ptr noundef nonnull @.str.33) #9
  %102 = load ptr, ptr @DVMpb, align 8, !tbaa !7
  %103 = load ptr, ptr @DVMpe, align 8, !tbaa !7
  %104 = load ptr, ptr @DVpb, align 8, !tbaa !7
  %105 = load ptr, ptr @DVpe, align 8, !tbaa !7
  tail call void @_Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc(ptr noundef %102, ptr noundef %103, ptr noundef %104, ptr noundef %105, double 0.000000e+00, ptr noundef nonnull @.str.34) #9
  %106 = load ptr, ptr @DVMPb, align 8, !tbaa.struct !20
  %107 = load ptr, ptr @DVMPe, align 8, !tbaa.struct !20
  %108 = load ptr, ptr @DVPb, align 8, !tbaa.struct !20
  %109 = load ptr, ptr @DVPe, align 8, !tbaa.struct !20
  tail call void @_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc(ptr %106, ptr %107, ptr %108, ptr %109, double 0.000000e+00, ptr noundef nonnull @.str.35) #9
  %110 = load ptr, ptr @DV10Mpb, align 8, !tbaa !7
  %111 = load ptr, ptr @DV10Mpe, align 8, !tbaa !7
  %112 = load ptr, ptr @DV10pb, align 8, !tbaa !7
  %113 = load ptr, ptr @DV10pe, align 8, !tbaa !7
  tail call void @_Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc(ptr noundef %110, ptr noundef %111, ptr noundef %112, ptr noundef %113, double 0.000000e+00, ptr noundef nonnull @.str.36) #9
  %114 = load ptr, ptr @DV10MPb, align 8, !tbaa.struct !20
  %115 = load ptr, ptr @DV10MPe, align 8, !tbaa.struct !20
  %116 = load ptr, ptr @DV10Pb, align 8, !tbaa.struct !20
  %117 = load ptr, ptr @DV10Pe, align 8, !tbaa.struct !20
  tail call void @_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc(ptr %114, ptr %115, ptr %116, ptr %117, double 0.000000e+00, ptr noundef nonnull @.str.37) #9
  %118 = load i32, ptr @iterations, align 4, !tbaa !11
  %119 = shl nsw i32 %118, 3
  store i32 %119, ptr @iterations, align 4, !tbaa !11
  %120 = load ptr, ptr @dMpb, align 8, !tbaa !7
  %121 = load ptr, ptr @dMpe, align 8, !tbaa !7
  %122 = load ptr, ptr @dpb, align 8, !tbaa !7
  %123 = load ptr, ptr @dpe, align 8, !tbaa !7
  tail call void @_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc(ptr noundef %120, ptr noundef %121, ptr noundef %122, ptr noundef %123, double noundef 0.000000e+00, ptr noundef nonnull @.str.38) #9
  %124 = load ptr, ptr @dMPb, align 8, !tbaa.struct !20
  %125 = load ptr, ptr @dMPe, align 8, !tbaa.struct !20
  %126 = load ptr, ptr @dPb, align 8, !tbaa.struct !20
  %127 = load ptr, ptr @dPe, align 8, !tbaa.struct !20
  tail call void @_Z14test_quicksortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc(ptr %124, ptr %125, ptr %126, ptr %127, double noundef 0.000000e+00, ptr noundef nonnull @.str.39) #9
  %128 = load ptr, ptr @DVMpb, align 8, !tbaa !7
  %129 = load ptr, ptr @DVMpe, align 8, !tbaa !7
  %130 = load ptr, ptr @DVpb, align 8, !tbaa !7
  %131 = load ptr, ptr @DVpe, align 8, !tbaa !7
  tail call void @_Z14test_quicksortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc(ptr noundef %128, ptr noundef %129, ptr noundef %130, ptr noundef %131, double 0.000000e+00, ptr noundef nonnull @.str.40) #9
  %132 = load ptr, ptr @DVMPb, align 8, !tbaa.struct !20
  %133 = load ptr, ptr @DVMPe, align 8, !tbaa.struct !20
  %134 = load ptr, ptr @DVPb, align 8, !tbaa.struct !20
  %135 = load ptr, ptr @DVPe, align 8, !tbaa.struct !20
  tail call void @_Z14test_quicksortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc(ptr %132, ptr %133, ptr %134, ptr %135, double 0.000000e+00, ptr noundef nonnull @.str.41) #9
  %136 = load ptr, ptr @DV10Mpb, align 8, !tbaa !7
  %137 = load ptr, ptr @DV10Mpe, align 8, !tbaa !7
  %138 = load ptr, ptr @DV10pb, align 8, !tbaa !7
  %139 = load ptr, ptr @DV10pe, align 8, !tbaa !7
  tail call void @_Z14test_quicksortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc(ptr noundef %136, ptr noundef %137, ptr noundef %138, ptr noundef %139, double 0.000000e+00, ptr noundef nonnull @.str.42) #9
  %140 = load ptr, ptr @DV10MPb, align 8, !tbaa.struct !20
  %141 = load ptr, ptr @DV10MPe, align 8, !tbaa.struct !20
  %142 = load ptr, ptr @DV10Pb, align 8, !tbaa.struct !20
  %143 = load ptr, ptr @DV10Pe, align 8, !tbaa.struct !20
  tail call void @_Z14test_quicksortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc(ptr %140, ptr %141, ptr %142, ptr %143, double 0.000000e+00, ptr noundef nonnull @.str.43) #9
  %144 = load ptr, ptr @dMpb, align 8, !tbaa !7
  %145 = load ptr, ptr @dMpe, align 8, !tbaa !7
  %146 = load ptr, ptr @dpb, align 8, !tbaa !7
  %147 = load ptr, ptr @dpe, align 8, !tbaa !7
  tail call void @_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc(ptr noundef %144, ptr noundef %145, ptr noundef %146, ptr noundef %147, double noundef 0.000000e+00, ptr noundef nonnull @.str.44) #9
  %148 = load ptr, ptr @dMPb, align 8, !tbaa.struct !20
  %149 = load ptr, ptr @dMPe, align 8, !tbaa.struct !20
  %150 = load ptr, ptr @dPb, align 8, !tbaa.struct !20
  %151 = load ptr, ptr @dPe, align 8, !tbaa.struct !20
  tail call void @_Z14test_heap_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc(ptr %148, ptr %149, ptr %150, ptr %151, double noundef 0.000000e+00, ptr noundef nonnull @.str.45) #9
  %152 = load ptr, ptr @DVMpb, align 8, !tbaa !7
  %153 = load ptr, ptr @DVMpe, align 8, !tbaa !7
  %154 = load ptr, ptr @DVpb, align 8, !tbaa !7
  %155 = load ptr, ptr @DVpe, align 8, !tbaa !7
  tail call void @_Z14test_heap_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc(ptr noundef %152, ptr noundef %153, ptr noundef %154, ptr noundef %155, double 0.000000e+00, ptr noundef nonnull @.str.46) #9
  %156 = load ptr, ptr @DVMPb, align 8, !tbaa.struct !20
  %157 = load ptr, ptr @DVMPe, align 8, !tbaa.struct !20
  %158 = load ptr, ptr @DVPb, align 8, !tbaa.struct !20
  %159 = load ptr, ptr @DVPe, align 8, !tbaa.struct !20
  tail call void @_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc(ptr %156, ptr %157, ptr %158, ptr %159, double 0.000000e+00, ptr noundef nonnull @.str.47) #9
  %160 = load ptr, ptr @DV10Mpb, align 8, !tbaa !7
  %161 = load ptr, ptr @DV10Mpe, align 8, !tbaa !7
  %162 = load ptr, ptr @DV10pb, align 8, !tbaa !7
  %163 = load ptr, ptr @DV10pe, align 8, !tbaa !7
  tail call void @_Z14test_heap_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc(ptr noundef %160, ptr noundef %161, ptr noundef %162, ptr noundef %163, double 0.000000e+00, ptr noundef nonnull @.str.48) #9
  %164 = load ptr, ptr @DV10MPb, align 8, !tbaa.struct !20
  %165 = load ptr, ptr @DV10MPe, align 8, !tbaa.struct !20
  %166 = load ptr, ptr @DV10Pb, align 8, !tbaa.struct !20
  %167 = load ptr, ptr @DV10Pe, align 8, !tbaa.struct !20
  tail call void @_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc(ptr %164, ptr %165, ptr %166, ptr %167, double 0.000000e+00, ptr noundef nonnull @.str.49) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare double @atof(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @srand(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z15test_accumulateIPddEvT_S1_T0_PKc(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef %3) #3 comdat {
  %5 = load i32, ptr @iterations, align 4, !tbaa !11
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %4
  %8 = icmp eq ptr %0, %1
  br label %9

9:                                                ; preds = %28, %7
  %10 = phi i32 [ %5, %7 ], [ %29, %28 ]
  %11 = phi i32 [ 0, %7 ], [ %30, %28 ]
  br i1 %8, label %19, label %12

12:                                               ; preds = %12, %9
  %13 = phi double [ %17, %12 ], [ %2, %9 ]
  %14 = phi ptr [ %15, %12 ], [ %0, %9 ]
  %15 = getelementptr inbounds double, ptr %14, i64 1
  %16 = load double, ptr %14, align 8, !tbaa !13
  %17 = fadd double %13, %16
  %18 = icmp eq ptr %15, %1
  br i1 %18, label %19, label %12, !llvm.loop !24

19:                                               ; preds = %12, %9
  %20 = phi double [ %2, %9 ], [ %17, %12 ]
  %21 = load double, ptr @init_value, align 8, !tbaa !13
  %22 = fmul double %21, 2.000000e+03
  %23 = fcmp une double %22, %20
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, ptr @current_test, align 4, !tbaa !11
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %25) #9
  %27 = load i32, ptr @iterations, align 4, !tbaa !11
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i32 [ %10, %19 ], [ %27, %24 ]
  %30 = add nuw nsw i32 %11, 1
  %31 = icmp slt i32 %30, %29
  br i1 %31, label %9, label %32, !llvm.loop !25

32:                                               ; preds = %28, %4
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z15test_accumulateI14PointerWrapperIdEdEvT_S2_T0_PKc(ptr %0, ptr %1, double noundef %2, ptr noundef %3) #3 comdat {
  %5 = load i32, ptr @iterations, align 4, !tbaa !11
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %4
  %8 = icmp eq ptr %0, %1
  br label %9

9:                                                ; preds = %28, %7
  %10 = phi i32 [ %5, %7 ], [ %29, %28 ]
  %11 = phi i32 [ 0, %7 ], [ %30, %28 ]
  br i1 %8, label %19, label %12

12:                                               ; preds = %12, %9
  %13 = phi double [ %17, %12 ], [ %2, %9 ]
  %14 = phi ptr [ %15, %12 ], [ %0, %9 ]
  %15 = getelementptr inbounds double, ptr %14, i64 1
  %16 = load double, ptr %14, align 8, !tbaa !13
  %17 = fadd double %13, %16
  %18 = icmp eq ptr %15, %1
  br i1 %18, label %19, label %12, !llvm.loop !26

19:                                               ; preds = %12, %9
  %20 = phi double [ %2, %9 ], [ %17, %12 ]
  %21 = load double, ptr @init_value, align 8, !tbaa !13
  %22 = fmul double %21, 2.000000e+03
  %23 = fcmp une double %22, %20
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, ptr @current_test, align 4, !tbaa !11
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %25) #9
  %27 = load i32, ptr @iterations, align 4, !tbaa !11
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i32 [ %10, %19 ], [ %27, %24 ]
  %30 = add nuw nsw i32 %11, 1
  %31 = icmp slt i32 %30, %29
  br i1 %31, label %9, label %32, !llvm.loop !27

32:                                               ; preds = %28, %4
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_Z15test_accumulateIP12ValueWrapperIdES1_EvT_S3_T0_PKc(ptr noundef %0, ptr noundef %1, double %2, ptr noundef %3) #4 comdat {
  %5 = load i32, ptr @iterations, align 4, !tbaa !11
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %4
  %8 = icmp eq ptr %0, %1
  br label %9

9:                                                ; preds = %28, %7
  %10 = phi i32 [ %5, %7 ], [ %29, %28 ]
  %11 = phi i32 [ 0, %7 ], [ %30, %28 ]
  br i1 %8, label %19, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %15, %12 ], [ %0, %9 ]
  %14 = phi double [ %17, %12 ], [ %2, %9 ]
  %15 = getelementptr inbounds %struct.ValueWrapper, ptr %13, i64 1
  %16 = load double, ptr %13, align 8, !tbaa !28
  %17 = fadd double %14, %16
  %18 = icmp eq ptr %15, %1
  br i1 %18, label %19, label %12, !llvm.loop !30

19:                                               ; preds = %12, %9
  %20 = phi double [ %2, %9 ], [ %17, %12 ]
  %21 = load double, ptr @init_value, align 8, !tbaa !13
  %22 = fmul double %21, 2.000000e+03
  %23 = fcmp une double %22, %20
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, ptr @current_test, align 4, !tbaa !11
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %25) #9
  %27 = load i32, ptr @iterations, align 4, !tbaa !11
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i32 [ %10, %19 ], [ %27, %24 ]
  %30 = add nuw nsw i32 %11, 1
  %31 = icmp slt i32 %30, %29
  br i1 %31, label %9, label %32, !llvm.loop !31

32:                                               ; preds = %28, %4
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_Z15test_accumulateI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_T0_PKc(ptr %0, ptr %1, double %2, ptr noundef %3) #4 comdat {
  %5 = load i32, ptr @iterations, align 4, !tbaa !11
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %4
  %8 = icmp eq ptr %0, %1
  br label %9

9:                                                ; preds = %28, %7
  %10 = phi i32 [ %5, %7 ], [ %29, %28 ]
  %11 = phi i32 [ 0, %7 ], [ %30, %28 ]
  br i1 %8, label %19, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %15, %12 ], [ %0, %9 ]
  %14 = phi double [ %17, %12 ], [ %2, %9 ]
  %15 = getelementptr inbounds %struct.ValueWrapper, ptr %13, i64 1
  %16 = load double, ptr %13, align 8, !tbaa !28
  %17 = fadd double %14, %16
  %18 = icmp eq ptr %15, %1
  br i1 %18, label %19, label %12, !llvm.loop !32

19:                                               ; preds = %12, %9
  %20 = phi double [ %2, %9 ], [ %17, %12 ]
  %21 = load double, ptr @init_value, align 8, !tbaa !13
  %22 = fmul double %21, 2.000000e+03
  %23 = fcmp une double %22, %20
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, ptr @current_test, align 4, !tbaa !11
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %25) #9
  %27 = load i32, ptr @iterations, align 4, !tbaa !11
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i32 [ %10, %19 ], [ %27, %24 ]
  %30 = add nuw nsw i32 %11, 1
  %31 = icmp slt i32 %30, %29
  br i1 %31, label %9, label %32, !llvm.loop !33

32:                                               ; preds = %28, %4
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_Z15test_accumulateIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_T0_PKc(ptr noundef %0, ptr noundef %1, double %2, ptr noundef %3) #4 comdat {
  %5 = load i32, ptr @iterations, align 4, !tbaa !11
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %4
  %8 = icmp eq ptr %0, %1
  br label %9

9:                                                ; preds = %28, %7
  %10 = phi i32 [ %5, %7 ], [ %29, %28 ]
  %11 = phi i32 [ 0, %7 ], [ %30, %28 ]
  br i1 %8, label %19, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %15, %12 ], [ %0, %9 ]
  %14 = phi double [ %17, %12 ], [ %2, %9 ]
  %15 = getelementptr inbounds %struct.ValueWrapper.0, ptr %13, i64 1
  %16 = load double, ptr %13, align 8, !tbaa !28
  %17 = fadd double %14, %16
  %18 = icmp eq ptr %15, %1
  br i1 %18, label %19, label %12, !llvm.loop !34

19:                                               ; preds = %12, %9
  %20 = phi double [ %2, %9 ], [ %17, %12 ]
  %21 = load double, ptr @init_value, align 8, !tbaa !13
  %22 = fmul double %21, 2.000000e+03
  %23 = fcmp une double %22, %20
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, ptr @current_test, align 4, !tbaa !11
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %25) #9
  %27 = load i32, ptr @iterations, align 4, !tbaa !11
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i32 [ %10, %19 ], [ %27, %24 ]
  %30 = add nuw nsw i32 %11, 1
  %31 = icmp slt i32 %30, %29
  br i1 %31, label %9, label %32, !llvm.loop !35

32:                                               ; preds = %28, %4
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_Z15test_accumulateI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_T0_PKc(ptr %0, ptr %1, double %2, ptr noundef %3) #4 comdat {
  %5 = load i32, ptr @iterations, align 4, !tbaa !11
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %4
  %8 = icmp eq ptr %0, %1
  br label %9

9:                                                ; preds = %28, %7
  %10 = phi i32 [ %5, %7 ], [ %29, %28 ]
  %11 = phi i32 [ 0, %7 ], [ %30, %28 ]
  br i1 %8, label %19, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %15, %12 ], [ %0, %9 ]
  %14 = phi double [ %17, %12 ], [ %2, %9 ]
  %15 = getelementptr inbounds %struct.ValueWrapper.0, ptr %13, i64 1
  %16 = load double, ptr %13, align 8, !tbaa !28
  %17 = fadd double %14, %16
  %18 = icmp eq ptr %15, %1
  br i1 %18, label %19, label %12, !llvm.loop !36

19:                                               ; preds = %12, %9
  %20 = phi double [ %2, %9 ], [ %17, %12 ]
  %21 = load double, ptr @init_value, align 8, !tbaa !13
  %22 = fmul double %21, 2.000000e+03
  %23 = fcmp une double %22, %20
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, ptr @current_test, align 4, !tbaa !11
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %25) #9
  %27 = load i32, ptr @iterations, align 4, !tbaa !11
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i32 [ %10, %19 ], [ %27, %24 ]
  %30 = add nuw nsw i32 %11, 1
  %31 = icmp slt i32 %30, %29
  br i1 %31, label %9, label %32, !llvm.loop !37

32:                                               ; preds = %28, %4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @rand() local_unnamed_addr #2

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5) #3 comdat {
  %7 = load i32, ptr @iterations, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %56

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, %1
  %11 = getelementptr inbounds double, ptr %2, i64 1
  %12 = icmp eq ptr %11, %3
  br label %13

13:                                               ; preds = %52, %9
  %14 = phi i32 [ %7, %9 ], [ %53, %52 ]
  %15 = phi i32 [ 0, %9 ], [ %54, %52 ]
  br i1 %10, label %23, label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %21, %16 ], [ %2, %13 ]
  %18 = phi ptr [ %19, %16 ], [ %0, %13 ]
  %19 = getelementptr inbounds double, ptr %18, i64 1
  %20 = load double, ptr %18, align 8, !tbaa !13
  %21 = getelementptr inbounds double, ptr %17, i64 1
  store double %20, ptr %17, align 8, !tbaa !13
  %22 = icmp eq ptr %19, %1
  br i1 %22, label %23, label %16, !llvm.loop !38

23:                                               ; preds = %16, %13
  br i1 %12, label %39, label %24

24:                                               ; preds = %35, %23
  %25 = phi ptr [ %37, %35 ], [ %11, %23 ]
  %26 = load double, ptr %25, align 8, !tbaa !13
  %27 = icmp eq ptr %25, %2
  br i1 %27, label %35, label %28

28:                                               ; preds = %33, %24
  %29 = phi ptr [ %30, %33 ], [ %25, %24 ]
  %30 = getelementptr double, ptr %29, i64 -1
  %31 = load double, ptr %30, align 8, !tbaa !13
  %32 = fcmp olt double %26, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  store double %31, ptr %29, align 8, !tbaa !13
  %34 = icmp eq ptr %30, %2
  br i1 %34, label %35, label %28, !llvm.loop !39

35:                                               ; preds = %33, %28, %24
  %36 = phi ptr [ %2, %24 ], [ %29, %28 ], [ %2, %33 ]
  store double %26, ptr %36, align 8, !tbaa !13
  %37 = getelementptr inbounds double, ptr %25, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %39, label %24, !llvm.loop !40

39:                                               ; preds = %35, %23
  br label %40

40:                                               ; preds = %44, %39
  %41 = phi ptr [ %42, %44 ], [ %2, %39 ]
  %42 = getelementptr double, ptr %41, i64 1
  %43 = icmp eq ptr %42, %3
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load double, ptr %42, align 8, !tbaa !13
  %46 = load double, ptr %41, align 8, !tbaa !13
  %47 = fcmp olt double %45, %46
  br i1 %47, label %48, label %40, !llvm.loop !41

48:                                               ; preds = %44
  %49 = load i32, ptr @current_test, align 4, !tbaa !11
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %49) #9
  %51 = load i32, ptr @iterations, align 4, !tbaa !11
  br label %52

52:                                               ; preds = %48, %40
  %53 = phi i32 [ %51, %48 ], [ %14, %40 ]
  %54 = add nuw nsw i32 %15, 1
  %55 = icmp slt i32 %54, %53
  br i1 %55, label %13, label %56, !llvm.loop !42

56:                                               ; preds = %52, %6
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z19test_insertion_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double noundef %4, ptr noundef %5) #3 comdat {
  %7 = load i32, ptr @iterations, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %56

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, %1
  %11 = getelementptr inbounds double, ptr %2, i64 1
  %12 = icmp eq ptr %11, %3
  br label %13

13:                                               ; preds = %52, %9
  %14 = phi i32 [ %7, %9 ], [ %53, %52 ]
  %15 = phi i32 [ 0, %9 ], [ %54, %52 ]
  br i1 %10, label %23, label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %19, %16 ], [ %0, %13 ]
  %18 = phi ptr [ %21, %16 ], [ %2, %13 ]
  %19 = getelementptr inbounds double, ptr %17, i64 1
  %20 = load double, ptr %17, align 8, !tbaa !13
  %21 = getelementptr inbounds double, ptr %18, i64 1
  store double %20, ptr %18, align 8, !tbaa !13
  %22 = icmp eq ptr %19, %1
  br i1 %22, label %23, label %16, !llvm.loop !43

23:                                               ; preds = %16, %13
  br i1 %12, label %39, label %24

24:                                               ; preds = %35, %23
  %25 = phi ptr [ %37, %35 ], [ %11, %23 ]
  %26 = load double, ptr %25, align 8, !tbaa !13
  %27 = icmp eq ptr %25, %2
  br i1 %27, label %35, label %28

28:                                               ; preds = %33, %24
  %29 = phi ptr [ %30, %33 ], [ %25, %24 ]
  %30 = getelementptr double, ptr %29, i64 -1
  %31 = load double, ptr %30, align 8, !tbaa !13
  %32 = fcmp olt double %26, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  store double %31, ptr %29, align 8, !tbaa !13
  %34 = icmp eq ptr %30, %2
  br i1 %34, label %35, label %28, !llvm.loop !44

35:                                               ; preds = %33, %28, %24
  %36 = phi ptr [ %2, %24 ], [ %29, %28 ], [ %2, %33 ]
  store double %26, ptr %36, align 8, !tbaa !13
  %37 = getelementptr inbounds double, ptr %25, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %39, label %24, !llvm.loop !45

39:                                               ; preds = %35, %23
  br label %40

40:                                               ; preds = %44, %39
  %41 = phi ptr [ %42, %44 ], [ %2, %39 ]
  %42 = getelementptr double, ptr %41, i64 1
  %43 = icmp eq ptr %42, %3
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load double, ptr %42, align 8, !tbaa !13
  %46 = load double, ptr %41, align 8, !tbaa !13
  %47 = fcmp olt double %45, %46
  br i1 %47, label %48, label %40, !llvm.loop !46

48:                                               ; preds = %44
  %49 = load i32, ptr @current_test, align 4, !tbaa !11
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %49) #9
  %51 = load i32, ptr @iterations, align 4, !tbaa !11
  br label %52

52:                                               ; preds = %48, %40
  %53 = phi i32 [ %51, %48 ], [ %14, %40 ]
  %54 = add nuw nsw i32 %15, 1
  %55 = icmp slt i32 %54, %53
  br i1 %55, label %13, label %56, !llvm.loop !47

56:                                               ; preds = %52, %6
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z19test_insertion_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double %4, ptr noundef %5) #3 comdat {
  %7 = load i32, ptr @iterations, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %57

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, %1
  %11 = getelementptr inbounds %struct.ValueWrapper, ptr %2, i64 1
  %12 = icmp eq ptr %11, %3
  br label %13

13:                                               ; preds = %53, %9
  %14 = phi i32 [ %7, %9 ], [ %54, %53 ]
  %15 = phi i32 [ 0, %9 ], [ %55, %53 ]
  br i1 %10, label %23, label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %20, %16 ], [ %2, %13 ]
  %18 = phi ptr [ %19, %16 ], [ %0, %13 ]
  %19 = getelementptr inbounds %struct.ValueWrapper, ptr %18, i64 1
  %20 = getelementptr inbounds %struct.ValueWrapper, ptr %17, i64 1
  %21 = load i64, ptr %18, align 8, !tbaa !13
  store i64 %21, ptr %17, align 8, !tbaa !13
  %22 = icmp eq ptr %19, %1
  br i1 %22, label %23, label %16, !llvm.loop !48

23:                                               ; preds = %16, %13
  br i1 %12, label %40, label %24

24:                                               ; preds = %36, %23
  %25 = phi ptr [ %38, %36 ], [ %11, %23 ]
  %26 = load i64, ptr %25, align 8, !tbaa !13
  %27 = bitcast i64 %26 to double
  %28 = icmp eq ptr %25, %2
  br i1 %28, label %36, label %29

29:                                               ; preds = %34, %24
  %30 = phi ptr [ %31, %34 ], [ %25, %24 ]
  %31 = getelementptr %struct.ValueWrapper, ptr %30, i64 -1
  %32 = load double, ptr %31, align 8
  %33 = fcmp ogt double %32, %27
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  store double %32, ptr %30, align 8, !tbaa !13
  %35 = icmp eq ptr %31, %2
  br i1 %35, label %36, label %29, !llvm.loop !49

36:                                               ; preds = %34, %29, %24
  %37 = phi ptr [ %2, %24 ], [ %30, %29 ], [ %2, %34 ]
  store i64 %26, ptr %37, align 8, !tbaa !13
  %38 = getelementptr inbounds %struct.ValueWrapper, ptr %25, i64 1
  %39 = icmp eq ptr %38, %3
  br i1 %39, label %40, label %24, !llvm.loop !50

40:                                               ; preds = %36, %23
  br label %41

41:                                               ; preds = %45, %40
  %42 = phi ptr [ %43, %45 ], [ %2, %40 ]
  %43 = getelementptr %struct.ValueWrapper, ptr %42, i64 1
  %44 = icmp eq ptr %43, %3
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load double, ptr %43, align 8, !tbaa !28
  %47 = load double, ptr %42, align 8, !tbaa !28
  %48 = fcmp olt double %46, %47
  br i1 %48, label %49, label %41, !llvm.loop !51

49:                                               ; preds = %45
  %50 = load i32, ptr @current_test, align 4, !tbaa !11
  %51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %50) #9
  %52 = load i32, ptr @iterations, align 4, !tbaa !11
  br label %53

53:                                               ; preds = %49, %41
  %54 = phi i32 [ %52, %49 ], [ %14, %41 ]
  %55 = add nuw nsw i32 %15, 1
  %56 = icmp slt i32 %55, %54
  br i1 %56, label %13, label %57, !llvm.loop !52

57:                                               ; preds = %53, %6
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double %4, ptr noundef %5) #3 comdat {
  %7 = load i32, ptr @iterations, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %57

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, %1
  %11 = getelementptr inbounds %struct.ValueWrapper, ptr %2, i64 1
  %12 = icmp eq ptr %11, %3
  br label %13

13:                                               ; preds = %53, %9
  %14 = phi i32 [ %7, %9 ], [ %54, %53 ]
  %15 = phi i32 [ 0, %9 ], [ %55, %53 ]
  br i1 %10, label %23, label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %19, %16 ], [ %0, %13 ]
  %18 = phi ptr [ %20, %16 ], [ %2, %13 ]
  %19 = getelementptr inbounds %struct.ValueWrapper, ptr %17, i64 1
  %20 = getelementptr inbounds %struct.ValueWrapper, ptr %18, i64 1
  %21 = load i64, ptr %17, align 8, !tbaa !13
  store i64 %21, ptr %18, align 8, !tbaa !13
  %22 = icmp eq ptr %19, %1
  br i1 %22, label %23, label %16, !llvm.loop !53

23:                                               ; preds = %16, %13
  br i1 %12, label %40, label %24

24:                                               ; preds = %36, %23
  %25 = phi ptr [ %38, %36 ], [ %11, %23 ]
  %26 = load i64, ptr %25, align 8, !tbaa !13
  %27 = bitcast i64 %26 to double
  %28 = icmp eq ptr %25, %2
  br i1 %28, label %36, label %29

29:                                               ; preds = %34, %24
  %30 = phi ptr [ %31, %34 ], [ %25, %24 ]
  %31 = getelementptr %struct.ValueWrapper, ptr %30, i64 -1
  %32 = load double, ptr %31, align 8
  %33 = fcmp ogt double %32, %27
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  store double %32, ptr %30, align 8, !tbaa !13
  %35 = icmp eq ptr %31, %2
  br i1 %35, label %36, label %29, !llvm.loop !54

36:                                               ; preds = %34, %29, %24
  %37 = phi ptr [ %2, %24 ], [ %30, %29 ], [ %2, %34 ]
  store i64 %26, ptr %37, align 8, !tbaa !13
  %38 = getelementptr inbounds %struct.ValueWrapper, ptr %25, i64 1
  %39 = icmp eq ptr %38, %3
  br i1 %39, label %40, label %24, !llvm.loop !55

40:                                               ; preds = %36, %23
  br label %41

41:                                               ; preds = %45, %40
  %42 = phi ptr [ %43, %45 ], [ %2, %40 ]
  %43 = getelementptr %struct.ValueWrapper, ptr %42, i64 1
  %44 = icmp eq ptr %43, %3
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load double, ptr %43, align 8, !tbaa !28
  %47 = load double, ptr %42, align 8, !tbaa !28
  %48 = fcmp olt double %46, %47
  br i1 %48, label %49, label %41, !llvm.loop !56

49:                                               ; preds = %45
  %50 = load i32, ptr @current_test, align 4, !tbaa !11
  %51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %50) #9
  %52 = load i32, ptr @iterations, align 4, !tbaa !11
  br label %53

53:                                               ; preds = %49, %41
  %54 = phi i32 [ %52, %49 ], [ %14, %41 ]
  %55 = add nuw nsw i32 %15, 1
  %56 = icmp slt i32 %55, %54
  br i1 %56, label %13, label %57, !llvm.loop !57

57:                                               ; preds = %53, %6
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z19test_insertion_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double %4, ptr noundef %5) #3 comdat {
  %7 = load i32, ptr @iterations, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %57

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, %1
  %11 = getelementptr inbounds %struct.ValueWrapper.0, ptr %2, i64 1
  %12 = icmp eq ptr %11, %3
  br label %13

13:                                               ; preds = %53, %9
  %14 = phi i32 [ %7, %9 ], [ %54, %53 ]
  %15 = phi i32 [ 0, %9 ], [ %55, %53 ]
  br i1 %10, label %23, label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %20, %16 ], [ %2, %13 ]
  %18 = phi ptr [ %19, %16 ], [ %0, %13 ]
  %19 = getelementptr inbounds %struct.ValueWrapper.0, ptr %18, i64 1
  %20 = getelementptr inbounds %struct.ValueWrapper.0, ptr %17, i64 1
  %21 = load i64, ptr %18, align 8, !tbaa !13
  store i64 %21, ptr %17, align 8, !tbaa !13
  %22 = icmp eq ptr %19, %1
  br i1 %22, label %23, label %16, !llvm.loop !58

23:                                               ; preds = %16, %13
  br i1 %12, label %40, label %24

24:                                               ; preds = %36, %23
  %25 = phi ptr [ %38, %36 ], [ %11, %23 ]
  %26 = load i64, ptr %25, align 8, !tbaa !13
  %27 = bitcast i64 %26 to double
  %28 = icmp eq ptr %25, %2
  br i1 %28, label %36, label %29

29:                                               ; preds = %34, %24
  %30 = phi ptr [ %31, %34 ], [ %25, %24 ]
  %31 = getelementptr %struct.ValueWrapper.0, ptr %30, i64 -1
  %32 = load double, ptr %31, align 8
  %33 = fcmp ogt double %32, %27
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  store double %32, ptr %30, align 8, !tbaa !13
  %35 = icmp eq ptr %31, %2
  br i1 %35, label %36, label %29, !llvm.loop !59

36:                                               ; preds = %34, %29, %24
  %37 = phi ptr [ %2, %24 ], [ %30, %29 ], [ %2, %34 ]
  store i64 %26, ptr %37, align 8, !tbaa !13
  %38 = getelementptr inbounds %struct.ValueWrapper.0, ptr %25, i64 1
  %39 = icmp eq ptr %38, %3
  br i1 %39, label %40, label %24, !llvm.loop !60

40:                                               ; preds = %36, %23
  br label %41

41:                                               ; preds = %45, %40
  %42 = phi ptr [ %43, %45 ], [ %2, %40 ]
  %43 = getelementptr %struct.ValueWrapper.0, ptr %42, i64 1
  %44 = icmp eq ptr %43, %3
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load double, ptr %43, align 8, !tbaa !28
  %47 = load double, ptr %42, align 8, !tbaa !28
  %48 = fcmp olt double %46, %47
  br i1 %48, label %49, label %41, !llvm.loop !61

49:                                               ; preds = %45
  %50 = load i32, ptr @current_test, align 4, !tbaa !11
  %51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %50) #9
  %52 = load i32, ptr @iterations, align 4, !tbaa !11
  br label %53

53:                                               ; preds = %49, %41
  %54 = phi i32 [ %52, %49 ], [ %14, %41 ]
  %55 = add nuw nsw i32 %15, 1
  %56 = icmp slt i32 %55, %54
  br i1 %56, label %13, label %57, !llvm.loop !62

57:                                               ; preds = %53, %6
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z19test_insertion_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double %4, ptr noundef %5) #3 comdat {
  %7 = load i32, ptr @iterations, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %57

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, %1
  %11 = getelementptr inbounds %struct.ValueWrapper.0, ptr %2, i64 1
  %12 = icmp eq ptr %11, %3
  br label %13

13:                                               ; preds = %53, %9
  %14 = phi i32 [ %7, %9 ], [ %54, %53 ]
  %15 = phi i32 [ 0, %9 ], [ %55, %53 ]
  br i1 %10, label %23, label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %19, %16 ], [ %0, %13 ]
  %18 = phi ptr [ %20, %16 ], [ %2, %13 ]
  %19 = getelementptr inbounds %struct.ValueWrapper.0, ptr %17, i64 1
  %20 = getelementptr inbounds %struct.ValueWrapper.0, ptr %18, i64 1
  %21 = load i64, ptr %17, align 8, !tbaa !13
  store i64 %21, ptr %18, align 8, !tbaa !13
  %22 = icmp eq ptr %19, %1
  br i1 %22, label %23, label %16, !llvm.loop !63

23:                                               ; preds = %16, %13
  br i1 %12, label %40, label %24

24:                                               ; preds = %36, %23
  %25 = phi ptr [ %38, %36 ], [ %11, %23 ]
  %26 = load i64, ptr %25, align 8, !tbaa !13
  %27 = bitcast i64 %26 to double
  %28 = icmp eq ptr %25, %2
  br i1 %28, label %36, label %29

29:                                               ; preds = %34, %24
  %30 = phi ptr [ %31, %34 ], [ %25, %24 ]
  %31 = getelementptr %struct.ValueWrapper.0, ptr %30, i64 -1
  %32 = load double, ptr %31, align 8
  %33 = fcmp ogt double %32, %27
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  store double %32, ptr %30, align 8, !tbaa !13
  %35 = icmp eq ptr %31, %2
  br i1 %35, label %36, label %29, !llvm.loop !64

36:                                               ; preds = %34, %29, %24
  %37 = phi ptr [ %2, %24 ], [ %30, %29 ], [ %2, %34 ]
  store i64 %26, ptr %37, align 8, !tbaa !13
  %38 = getelementptr inbounds %struct.ValueWrapper.0, ptr %25, i64 1
  %39 = icmp eq ptr %38, %3
  br i1 %39, label %40, label %24, !llvm.loop !65

40:                                               ; preds = %36, %23
  br label %41

41:                                               ; preds = %45, %40
  %42 = phi ptr [ %43, %45 ], [ %2, %40 ]
  %43 = getelementptr %struct.ValueWrapper.0, ptr %42, i64 1
  %44 = icmp eq ptr %43, %3
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load double, ptr %43, align 8, !tbaa !28
  %47 = load double, ptr %42, align 8, !tbaa !28
  %48 = fcmp olt double %46, %47
  br i1 %48, label %49, label %41, !llvm.loop !66

49:                                               ; preds = %45
  %50 = load i32, ptr @current_test, align 4, !tbaa !11
  %51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %50) #9
  %52 = load i32, ptr @iterations, align 4, !tbaa !11
  br label %53

53:                                               ; preds = %49, %41
  %54 = phi i32 [ %52, %49 ], [ %14, %41 ]
  %55 = add nuw nsw i32 %15, 1
  %56 = icmp slt i32 %55, %54
  br i1 %56, label %13, label %57, !llvm.loop !67

57:                                               ; preds = %53, %6
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5) #3 comdat {
  %7 = load i32, ptr @iterations, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, %1
  br label %11

11:                                               ; preds = %32, %9
  %12 = phi i32 [ 0, %9 ], [ %33, %32 ]
  br i1 %10, label %20, label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %18, %13 ], [ %2, %11 ]
  %15 = phi ptr [ %16, %13 ], [ %0, %11 ]
  %16 = getelementptr inbounds double, ptr %15, i64 1
  %17 = load double, ptr %15, align 8, !tbaa !13
  %18 = getelementptr inbounds double, ptr %14, i64 1
  store double %17, ptr %14, align 8, !tbaa !13
  %19 = icmp eq ptr %16, %1
  br i1 %19, label %20, label %13, !llvm.loop !38

20:                                               ; preds = %13, %11
  tail call void @_ZN9benchmark9quicksortIPddEEvT_S2_(ptr noundef %2, ptr noundef %3) #9
  br label %21

21:                                               ; preds = %25, %20
  %22 = phi ptr [ %2, %20 ], [ %23, %25 ]
  %23 = getelementptr double, ptr %22, i64 1
  %24 = icmp eq ptr %23, %3
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load double, ptr %23, align 8, !tbaa !13
  %27 = load double, ptr %22, align 8, !tbaa !13
  %28 = fcmp olt double %26, %27
  br i1 %28, label %29, label %21, !llvm.loop !41

29:                                               ; preds = %25
  %30 = load i32, ptr @current_test, align 4, !tbaa !11
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %30) #9
  br label %32

32:                                               ; preds = %29, %21
  %33 = add nuw nsw i32 %12, 1
  %34 = load i32, ptr @iterations, align 4, !tbaa !11
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %11, label %36, !llvm.loop !68

36:                                               ; preds = %32, %6
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z14test_quicksortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double noundef %4, ptr noundef %5) #3 comdat {
  %7 = load i32, ptr @iterations, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, %1
  br label %11

11:                                               ; preds = %32, %9
  %12 = phi i32 [ 0, %9 ], [ %33, %32 ]
  br i1 %10, label %20, label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %16, %13 ], [ %0, %11 ]
  %15 = phi ptr [ %18, %13 ], [ %2, %11 ]
  %16 = getelementptr inbounds double, ptr %14, i64 1
  %17 = load double, ptr %14, align 8, !tbaa !13
  %18 = getelementptr inbounds double, ptr %15, i64 1
  store double %17, ptr %15, align 8, !tbaa !13
  %19 = icmp eq ptr %16, %1
  br i1 %19, label %20, label %13, !llvm.loop !43

20:                                               ; preds = %13, %11
  tail call void @_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_(ptr %2, ptr %3) #9
  br label %21

21:                                               ; preds = %25, %20
  %22 = phi ptr [ %2, %20 ], [ %23, %25 ]
  %23 = getelementptr double, ptr %22, i64 1
  %24 = icmp eq ptr %23, %3
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load double, ptr %23, align 8, !tbaa !13
  %27 = load double, ptr %22, align 8, !tbaa !13
  %28 = fcmp olt double %26, %27
  br i1 %28, label %29, label %21, !llvm.loop !46

29:                                               ; preds = %25
  %30 = load i32, ptr @current_test, align 4, !tbaa !11
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %30) #9
  br label %32

32:                                               ; preds = %29, %21
  %33 = add nuw nsw i32 %12, 1
  %34 = load i32, ptr @iterations, align 4, !tbaa !11
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %11, label %36, !llvm.loop !69

36:                                               ; preds = %32, %6
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z14test_quicksortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double %4, ptr noundef %5) #3 comdat {
  %7 = load i32, ptr @iterations, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, %1
  br label %11

11:                                               ; preds = %32, %9
  %12 = phi i32 [ 0, %9 ], [ %33, %32 ]
  br i1 %10, label %20, label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %17, %13 ], [ %2, %11 ]
  %15 = phi ptr [ %16, %13 ], [ %0, %11 ]
  %16 = getelementptr inbounds %struct.ValueWrapper, ptr %15, i64 1
  %17 = getelementptr inbounds %struct.ValueWrapper, ptr %14, i64 1
  %18 = load i64, ptr %15, align 8, !tbaa !13
  store i64 %18, ptr %14, align 8, !tbaa !13
  %19 = icmp eq ptr %16, %1
  br i1 %19, label %20, label %13, !llvm.loop !48

20:                                               ; preds = %13, %11
  tail call void @_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_(ptr noundef %2, ptr noundef %3) #9
  br label %21

21:                                               ; preds = %25, %20
  %22 = phi ptr [ %2, %20 ], [ %23, %25 ]
  %23 = getelementptr %struct.ValueWrapper, ptr %22, i64 1
  %24 = icmp eq ptr %23, %3
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load double, ptr %23, align 8, !tbaa !28
  %27 = load double, ptr %22, align 8, !tbaa !28
  %28 = fcmp olt double %26, %27
  br i1 %28, label %29, label %21, !llvm.loop !51

29:                                               ; preds = %25
  %30 = load i32, ptr @current_test, align 4, !tbaa !11
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %30) #9
  br label %32

32:                                               ; preds = %29, %21
  %33 = add nuw nsw i32 %12, 1
  %34 = load i32, ptr @iterations, align 4, !tbaa !11
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %11, label %36, !llvm.loop !70

36:                                               ; preds = %32, %6
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z14test_quicksortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double %4, ptr noundef %5) #3 comdat {
  %7 = load i32, ptr @iterations, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, %1
  br label %11

11:                                               ; preds = %32, %9
  %12 = phi i32 [ 0, %9 ], [ %33, %32 ]
  br i1 %10, label %20, label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %16, %13 ], [ %0, %11 ]
  %15 = phi ptr [ %17, %13 ], [ %2, %11 ]
  %16 = getelementptr inbounds %struct.ValueWrapper, ptr %14, i64 1
  %17 = getelementptr inbounds %struct.ValueWrapper, ptr %15, i64 1
  %18 = load i64, ptr %14, align 8, !tbaa !13
  store i64 %18, ptr %15, align 8, !tbaa !13
  %19 = icmp eq ptr %16, %1
  br i1 %19, label %20, label %13, !llvm.loop !53

20:                                               ; preds = %13, %11
  tail call void @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_(ptr %2, ptr %3) #9
  br label %21

21:                                               ; preds = %25, %20
  %22 = phi ptr [ %2, %20 ], [ %23, %25 ]
  %23 = getelementptr %struct.ValueWrapper, ptr %22, i64 1
  %24 = icmp eq ptr %23, %3
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load double, ptr %23, align 8, !tbaa !28
  %27 = load double, ptr %22, align 8, !tbaa !28
  %28 = fcmp olt double %26, %27
  br i1 %28, label %29, label %21, !llvm.loop !56

29:                                               ; preds = %25
  %30 = load i32, ptr @current_test, align 4, !tbaa !11
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %30) #9
  br label %32

32:                                               ; preds = %29, %21
  %33 = add nuw nsw i32 %12, 1
  %34 = load i32, ptr @iterations, align 4, !tbaa !11
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %11, label %36, !llvm.loop !71

36:                                               ; preds = %32, %6
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z14test_quicksortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double %4, ptr noundef %5) #3 comdat {
  %7 = load i32, ptr @iterations, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, %1
  br label %11

11:                                               ; preds = %32, %9
  %12 = phi i32 [ 0, %9 ], [ %33, %32 ]
  br i1 %10, label %20, label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %17, %13 ], [ %2, %11 ]
  %15 = phi ptr [ %16, %13 ], [ %0, %11 ]
  %16 = getelementptr inbounds %struct.ValueWrapper.0, ptr %15, i64 1
  %17 = getelementptr inbounds %struct.ValueWrapper.0, ptr %14, i64 1
  %18 = load i64, ptr %15, align 8, !tbaa !13
  store i64 %18, ptr %14, align 8, !tbaa !13
  %19 = icmp eq ptr %16, %1
  br i1 %19, label %20, label %13, !llvm.loop !58

20:                                               ; preds = %13, %11
  tail call void @_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_(ptr noundef %2, ptr noundef %3) #9
  br label %21

21:                                               ; preds = %25, %20
  %22 = phi ptr [ %2, %20 ], [ %23, %25 ]
  %23 = getelementptr %struct.ValueWrapper.0, ptr %22, i64 1
  %24 = icmp eq ptr %23, %3
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load double, ptr %23, align 8, !tbaa !28
  %27 = load double, ptr %22, align 8, !tbaa !28
  %28 = fcmp olt double %26, %27
  br i1 %28, label %29, label %21, !llvm.loop !61

29:                                               ; preds = %25
  %30 = load i32, ptr @current_test, align 4, !tbaa !11
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %30) #9
  br label %32

32:                                               ; preds = %29, %21
  %33 = add nuw nsw i32 %12, 1
  %34 = load i32, ptr @iterations, align 4, !tbaa !11
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %11, label %36, !llvm.loop !72

36:                                               ; preds = %32, %6
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z14test_quicksortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double %4, ptr noundef %5) #3 comdat {
  %7 = load i32, ptr @iterations, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, %1
  br label %11

11:                                               ; preds = %32, %9
  %12 = phi i32 [ 0, %9 ], [ %33, %32 ]
  br i1 %10, label %20, label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %16, %13 ], [ %0, %11 ]
  %15 = phi ptr [ %17, %13 ], [ %2, %11 ]
  %16 = getelementptr inbounds %struct.ValueWrapper.0, ptr %14, i64 1
  %17 = getelementptr inbounds %struct.ValueWrapper.0, ptr %15, i64 1
  %18 = load i64, ptr %14, align 8, !tbaa !13
  store i64 %18, ptr %15, align 8, !tbaa !13
  %19 = icmp eq ptr %16, %1
  br i1 %19, label %20, label %13, !llvm.loop !63

20:                                               ; preds = %13, %11
  tail call void @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_(ptr %2, ptr %3) #9
  br label %21

21:                                               ; preds = %25, %20
  %22 = phi ptr [ %2, %20 ], [ %23, %25 ]
  %23 = getelementptr %struct.ValueWrapper.0, ptr %22, i64 1
  %24 = icmp eq ptr %23, %3
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load double, ptr %23, align 8, !tbaa !28
  %27 = load double, ptr %22, align 8, !tbaa !28
  %28 = fcmp olt double %26, %27
  br i1 %28, label %29, label %21, !llvm.loop !66

29:                                               ; preds = %25
  %30 = load i32, ptr @current_test, align 4, !tbaa !11
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %30) #9
  br label %32

32:                                               ; preds = %29, %21
  %33 = add nuw nsw i32 %12, 1
  %34 = load i32, ptr @iterations, align 4, !tbaa !11
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %11, label %36, !llvm.loop !73

36:                                               ; preds = %32, %6
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5) #3 comdat {
  %7 = load i32, ptr @iterations, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, %1
  br label %11

11:                                               ; preds = %32, %9
  %12 = phi i32 [ 0, %9 ], [ %33, %32 ]
  br i1 %10, label %20, label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %18, %13 ], [ %2, %11 ]
  %15 = phi ptr [ %16, %13 ], [ %0, %11 ]
  %16 = getelementptr inbounds double, ptr %15, i64 1
  %17 = load double, ptr %15, align 8, !tbaa !13
  %18 = getelementptr inbounds double, ptr %14, i64 1
  store double %17, ptr %14, align 8, !tbaa !13
  %19 = icmp eq ptr %16, %1
  br i1 %19, label %20, label %13, !llvm.loop !38

20:                                               ; preds = %13, %11
  tail call void @_ZN9benchmark8heapsortIPddEEvT_S2_(ptr noundef %2, ptr noundef %3) #9
  br label %21

21:                                               ; preds = %25, %20
  %22 = phi ptr [ %2, %20 ], [ %23, %25 ]
  %23 = getelementptr double, ptr %22, i64 1
  %24 = icmp eq ptr %23, %3
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load double, ptr %23, align 8, !tbaa !13
  %27 = load double, ptr %22, align 8, !tbaa !13
  %28 = fcmp olt double %26, %27
  br i1 %28, label %29, label %21, !llvm.loop !41

29:                                               ; preds = %25
  %30 = load i32, ptr @current_test, align 4, !tbaa !11
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %30) #9
  br label %32

32:                                               ; preds = %29, %21
  %33 = add nuw nsw i32 %12, 1
  %34 = load i32, ptr @iterations, align 4, !tbaa !11
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %11, label %36, !llvm.loop !74

36:                                               ; preds = %32, %6
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z14test_heap_sortI14PointerWrapperIdEdEvT_S2_S2_S2_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double noundef %4, ptr noundef %5) #3 comdat {
  %7 = load i32, ptr @iterations, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, %1
  br label %11

11:                                               ; preds = %32, %9
  %12 = phi i32 [ 0, %9 ], [ %33, %32 ]
  br i1 %10, label %20, label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %16, %13 ], [ %0, %11 ]
  %15 = phi ptr [ %18, %13 ], [ %2, %11 ]
  %16 = getelementptr inbounds double, ptr %14, i64 1
  %17 = load double, ptr %14, align 8, !tbaa !13
  %18 = getelementptr inbounds double, ptr %15, i64 1
  store double %17, ptr %15, align 8, !tbaa !13
  %19 = icmp eq ptr %16, %1
  br i1 %19, label %20, label %13, !llvm.loop !43

20:                                               ; preds = %13, %11
  tail call void @_ZN9benchmark8heapsortI14PointerWrapperIdEdEEvT_S3_(ptr %2, ptr %3) #9
  br label %21

21:                                               ; preds = %25, %20
  %22 = phi ptr [ %2, %20 ], [ %23, %25 ]
  %23 = getelementptr double, ptr %22, i64 1
  %24 = icmp eq ptr %23, %3
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load double, ptr %23, align 8, !tbaa !13
  %27 = load double, ptr %22, align 8, !tbaa !13
  %28 = fcmp olt double %26, %27
  br i1 %28, label %29, label %21, !llvm.loop !46

29:                                               ; preds = %25
  %30 = load i32, ptr @current_test, align 4, !tbaa !11
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %30) #9
  br label %32

32:                                               ; preds = %29, %21
  %33 = add nuw nsw i32 %12, 1
  %34 = load i32, ptr @iterations, align 4, !tbaa !11
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %11, label %36, !llvm.loop !75

36:                                               ; preds = %32, %6
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z14test_heap_sortIP12ValueWrapperIdES1_EvT_S3_S3_S3_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double %4, ptr noundef %5) #3 comdat {
  %7 = load i32, ptr @iterations, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, %1
  br label %11

11:                                               ; preds = %32, %9
  %12 = phi i32 [ 0, %9 ], [ %33, %32 ]
  br i1 %10, label %20, label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %17, %13 ], [ %2, %11 ]
  %15 = phi ptr [ %16, %13 ], [ %0, %11 ]
  %16 = getelementptr inbounds %struct.ValueWrapper, ptr %15, i64 1
  %17 = getelementptr inbounds %struct.ValueWrapper, ptr %14, i64 1
  %18 = load i64, ptr %15, align 8, !tbaa !13
  store i64 %18, ptr %14, align 8, !tbaa !13
  %19 = icmp eq ptr %16, %1
  br i1 %19, label %20, label %13, !llvm.loop !48

20:                                               ; preds = %13, %11
  tail call void @_ZN9benchmark8heapsortIP12ValueWrapperIdES2_EEvT_S4_(ptr noundef %2, ptr noundef %3) #9
  br label %21

21:                                               ; preds = %25, %20
  %22 = phi ptr [ %2, %20 ], [ %23, %25 ]
  %23 = getelementptr %struct.ValueWrapper, ptr %22, i64 1
  %24 = icmp eq ptr %23, %3
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load double, ptr %23, align 8, !tbaa !28
  %27 = load double, ptr %22, align 8, !tbaa !28
  %28 = fcmp olt double %26, %27
  br i1 %28, label %29, label %21, !llvm.loop !51

29:                                               ; preds = %25
  %30 = load i32, ptr @current_test, align 4, !tbaa !11
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %30) #9
  br label %32

32:                                               ; preds = %29, %21
  %33 = add nuw nsw i32 %12, 1
  %34 = load i32, ptr @iterations, align 4, !tbaa !11
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %11, label %36, !llvm.loop !76

36:                                               ; preds = %32, %6
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIdEES2_EvT_S4_S4_S4_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double %4, ptr noundef %5) #3 comdat {
  %7 = load i32, ptr @iterations, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, %1
  br label %11

11:                                               ; preds = %32, %9
  %12 = phi i32 [ 0, %9 ], [ %33, %32 ]
  br i1 %10, label %20, label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %16, %13 ], [ %0, %11 ]
  %15 = phi ptr [ %17, %13 ], [ %2, %11 ]
  %16 = getelementptr inbounds %struct.ValueWrapper, ptr %14, i64 1
  %17 = getelementptr inbounds %struct.ValueWrapper, ptr %15, i64 1
  %18 = load i64, ptr %14, align 8, !tbaa !13
  store i64 %18, ptr %15, align 8, !tbaa !13
  %19 = icmp eq ptr %16, %1
  br i1 %19, label %20, label %13, !llvm.loop !53

20:                                               ; preds = %13, %11
  tail call void @_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_(ptr %2, ptr %3) #9
  br label %21

21:                                               ; preds = %25, %20
  %22 = phi ptr [ %2, %20 ], [ %23, %25 ]
  %23 = getelementptr %struct.ValueWrapper, ptr %22, i64 1
  %24 = icmp eq ptr %23, %3
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load double, ptr %23, align 8, !tbaa !28
  %27 = load double, ptr %22, align 8, !tbaa !28
  %28 = fcmp olt double %26, %27
  br i1 %28, label %29, label %21, !llvm.loop !56

29:                                               ; preds = %25
  %30 = load i32, ptr @current_test, align 4, !tbaa !11
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %30) #9
  br label %32

32:                                               ; preds = %29, %21
  %33 = add nuw nsw i32 %12, 1
  %34 = load i32, ptr @iterations, align 4, !tbaa !11
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %11, label %36, !llvm.loop !77

36:                                               ; preds = %32, %6
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z14test_heap_sortIP12ValueWrapperIS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IS0_IdEEEEEEEEEESA_EvT_SC_SC_SC_T0_PKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double %4, ptr noundef %5) #3 comdat {
  %7 = load i32, ptr @iterations, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, %1
  br label %11

11:                                               ; preds = %32, %9
  %12 = phi i32 [ 0, %9 ], [ %33, %32 ]
  br i1 %10, label %20, label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %17, %13 ], [ %2, %11 ]
  %15 = phi ptr [ %16, %13 ], [ %0, %11 ]
  %16 = getelementptr inbounds %struct.ValueWrapper.0, ptr %15, i64 1
  %17 = getelementptr inbounds %struct.ValueWrapper.0, ptr %14, i64 1
  %18 = load i64, ptr %15, align 8, !tbaa !13
  store i64 %18, ptr %14, align 8, !tbaa !13
  %19 = icmp eq ptr %16, %1
  br i1 %19, label %20, label %13, !llvm.loop !58

20:                                               ; preds = %13, %11
  tail call void @_ZN9benchmark8heapsortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_(ptr noundef %2, ptr noundef %3) #9
  br label %21

21:                                               ; preds = %25, %20
  %22 = phi ptr [ %2, %20 ], [ %23, %25 ]
  %23 = getelementptr %struct.ValueWrapper.0, ptr %22, i64 1
  %24 = icmp eq ptr %23, %3
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load double, ptr %23, align 8, !tbaa !28
  %27 = load double, ptr %22, align 8, !tbaa !28
  %28 = fcmp olt double %26, %27
  br i1 %28, label %29, label %21, !llvm.loop !61

29:                                               ; preds = %25
  %30 = load i32, ptr @current_test, align 4, !tbaa !11
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %30) #9
  br label %32

32:                                               ; preds = %29, %21
  %33 = add nuw nsw i32 %12, 1
  %34 = load i32, ptr @iterations, align 4, !tbaa !11
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %11, label %36, !llvm.loop !78

36:                                               ; preds = %32, %6
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z14test_heap_sortI14PointerWrapperI12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEEESB_EvT_SD_SD_SD_T0_PKc(ptr %0, ptr %1, ptr %2, ptr %3, double %4, ptr noundef %5) #3 comdat {
  %7 = load i32, ptr @iterations, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, %1
  br label %11

11:                                               ; preds = %32, %9
  %12 = phi i32 [ 0, %9 ], [ %33, %32 ]
  br i1 %10, label %20, label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %16, %13 ], [ %0, %11 ]
  %15 = phi ptr [ %17, %13 ], [ %2, %11 ]
  %16 = getelementptr inbounds %struct.ValueWrapper.0, ptr %14, i64 1
  %17 = getelementptr inbounds %struct.ValueWrapper.0, ptr %15, i64 1
  %18 = load i64, ptr %14, align 8, !tbaa !13
  store i64 %18, ptr %15, align 8, !tbaa !13
  %19 = icmp eq ptr %16, %1
  br i1 %19, label %20, label %13, !llvm.loop !63

20:                                               ; preds = %13, %11
  tail call void @_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_(ptr %2, ptr %3) #9
  br label %21

21:                                               ; preds = %25, %20
  %22 = phi ptr [ %2, %20 ], [ %23, %25 ]
  %23 = getelementptr %struct.ValueWrapper.0, ptr %22, i64 1
  %24 = icmp eq ptr %23, %3
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load double, ptr %23, align 8, !tbaa !28
  %27 = load double, ptr %22, align 8, !tbaa !28
  %28 = fcmp olt double %26, %27
  br i1 %28, label %29, label %21, !llvm.loop !66

29:                                               ; preds = %25
  %30 = load i32, ptr @current_test, align 4, !tbaa !11
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %30) #9
  br label %32

32:                                               ; preds = %29, %21
  %33 = add nuw nsw i32 %12, 1
  %34 = load i32, ptr @iterations, align 4, !tbaa !11
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %11, label %36, !llvm.loop !79

36:                                               ; preds = %32, %6
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_(ptr %0, ptr %1) #3 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  %7 = icmp sgt i64 %5, 8
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = sdiv i64 %6, 2
  br label %11

10:                                               ; preds = %11
  br i1 %7, label %17, label %24

11:                                               ; preds = %11, %8
  %12 = phi i64 [ %13, %11 ], [ %9, %8 ]
  %13 = add nsw i64 %12, -1
  %14 = getelementptr inbounds %struct.ValueWrapper.0, ptr %0, i64 %13
  %15 = load double, ptr %14, align 8, !tbaa.struct !17
  tail call void @_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_(i64 noundef %6, ptr %0, i64 noundef %13, double %15) #9
  %16 = icmp sgt i64 %12, 1
  br i1 %16, label %11, label %10, !llvm.loop !80

17:                                               ; preds = %17, %10
  %18 = phi i64 [ %19, %17 ], [ %6, %10 ]
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds %struct.ValueWrapper.0, ptr %0, i64 %19
  %21 = load double, ptr %20, align 8, !tbaa.struct !17
  %22 = load i64, ptr %0, align 8, !tbaa !13
  store i64 %22, ptr %20, align 8, !tbaa !13
  tail call void @_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_(i64 noundef %19, ptr nonnull %0, i64 noundef 0, double %21) #9
  %23 = icmp sgt i64 %18, 2
  br i1 %23, label %17, label %24, !llvm.loop !81

24:                                               ; preds = %17, %10, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvlT_lT0_(i64 noundef %0, ptr %1, i64 noundef %2, double %3) #3 comdat {
  %5 = shl i64 %2, 1
  %6 = add i64 %5, 2
  %7 = icmp slt i64 %6, %0
  br i1 %7, label %8, label %25

8:                                                ; preds = %8, %4
  %9 = phi i64 [ %19, %8 ], [ %2, %4 ]
  %10 = phi i64 [ %23, %8 ], [ %6, %4 ]
  %11 = add nsw i64 %10, -1
  %12 = getelementptr inbounds %struct.ValueWrapper.0, ptr %1, i64 %11
  %13 = getelementptr inbounds %struct.ValueWrapper.0, ptr %1, i64 %10
  %14 = load double, ptr %12, align 8, !tbaa !28
  %15 = load double, ptr %13, align 8, !tbaa !28
  %16 = fcmp olt double %14, %15
  %17 = zext i1 %16 to i64
  %18 = add nsw i64 %10, %17
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds %struct.ValueWrapper.0, ptr %1, i64 %19
  %21 = getelementptr inbounds %struct.ValueWrapper.0, ptr %1, i64 %9
  %22 = load i64, ptr %20, align 8, !tbaa !13
  store i64 %22, ptr %21, align 8, !tbaa !13
  %23 = shl nsw i64 %18, 1
  %24 = icmp slt i64 %23, %0
  br i1 %24, label %8, label %25, !llvm.loop !82

25:                                               ; preds = %8, %4
  %26 = phi i64 [ %6, %4 ], [ %23, %8 ]
  %27 = phi i64 [ %2, %4 ], [ %19, %8 ]
  %28 = icmp eq i64 %26, %0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = add nsw i64 %0, -1
  %31 = getelementptr inbounds %struct.ValueWrapper.0, ptr %1, i64 %30
  %32 = getelementptr inbounds %struct.ValueWrapper.0, ptr %1, i64 %27
  %33 = load i64, ptr %31, align 8, !tbaa !13
  store i64 %33, ptr %32, align 8, !tbaa !13
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i64 [ %30, %29 ], [ %27, %25 ]
  %36 = icmp sgt i64 %35, %2
  br i1 %36, label %37, label %47

37:                                               ; preds = %44, %34
  %38 = phi i64 [ %40, %44 ], [ %35, %34 ]
  %39 = add nsw i64 %38, -1
  %40 = sdiv i64 %39, 2
  %41 = getelementptr inbounds %struct.ValueWrapper.0, ptr %1, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = fcmp olt double %42, %3
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.ValueWrapper.0, ptr %1, i64 %38
  store double %42, ptr %45, align 8, !tbaa !13
  %46 = icmp sgt i64 %40, %2
  br i1 %46, label %37, label %47, !llvm.loop !83

47:                                               ; preds = %44, %37, %34
  %48 = phi i64 [ %35, %34 ], [ %40, %44 ], [ %38, %37 ]
  %49 = getelementptr inbounds %struct.ValueWrapper.0, ptr %1, i64 %48
  store double %3, ptr %49, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN9benchmark8heapsortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_(ptr noundef %0, ptr noundef %1) #3 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  %7 = icmp sgt i64 %5, 8
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = sdiv i64 %6, 2
  br label %11

10:                                               ; preds = %11
  br i1 %7, label %17, label %24

11:                                               ; preds = %11, %8
  %12 = phi i64 [ %13, %11 ], [ %9, %8 ]
  %13 = add nsw i64 %12, -1
  %14 = getelementptr inbounds %struct.ValueWrapper.0, ptr %0, i64 %13
  %15 = load double, ptr %14, align 8, !tbaa.struct !17
  tail call void @_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_(i64 noundef %6, ptr noundef %0, i64 noundef %13, double %15) #9
  %16 = icmp sgt i64 %12, 1
  br i1 %16, label %11, label %10, !llvm.loop !84

17:                                               ; preds = %17, %10
  %18 = phi i64 [ %19, %17 ], [ %6, %10 ]
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds %struct.ValueWrapper.0, ptr %0, i64 %19
  %21 = load double, ptr %20, align 8, !tbaa.struct !17
  %22 = load i64, ptr %0, align 8, !tbaa !13
  store i64 %22, ptr %20, align 8, !tbaa !13
  tail call void @_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_(i64 noundef %19, ptr noundef nonnull %0, i64 noundef 0, double %21) #9
  %23 = icmp sgt i64 %18, 2
  br i1 %23, label %17, label %24, !llvm.loop !85

24:                                               ; preds = %17, %10, %2
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN9benchmark7sift_inIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvlT_lT0_(i64 noundef %0, ptr noundef %1, i64 noundef %2, double %3) #3 comdat {
  %5 = shl i64 %2, 1
  %6 = add i64 %5, 2
  %7 = icmp slt i64 %6, %0
  br i1 %7, label %8, label %25

8:                                                ; preds = %8, %4
  %9 = phi i64 [ %19, %8 ], [ %2, %4 ]
  %10 = phi i64 [ %23, %8 ], [ %6, %4 ]
  %11 = add nsw i64 %10, -1
  %12 = getelementptr inbounds %struct.ValueWrapper.0, ptr %1, i64 %11
  %13 = getelementptr inbounds %struct.ValueWrapper.0, ptr %1, i64 %10
  %14 = load double, ptr %12, align 8, !tbaa !28
  %15 = load double, ptr %13, align 8, !tbaa !28
  %16 = fcmp olt double %14, %15
  %17 = zext i1 %16 to i64
  %18 = add nsw i64 %10, %17
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds %struct.ValueWrapper.0, ptr %1, i64 %19
  %21 = getelementptr inbounds %struct.ValueWrapper.0, ptr %1, i64 %9
  %22 = load i64, ptr %20, align 8, !tbaa !13
  store i64 %22, ptr %21, align 8, !tbaa !13
  %23 = shl nsw i64 %18, 1
  %24 = icmp slt i64 %23, %0
  br i1 %24, label %8, label %25, !llvm.loop !86

25:                                               ; preds = %8, %4
  %26 = phi i64 [ %6, %4 ], [ %23, %8 ]
  %27 = phi i64 [ %2, %4 ], [ %19, %8 ]
  %28 = icmp eq i64 %26, %0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = add nsw i64 %0, -1
  %31 = getelementptr inbounds %struct.ValueWrapper.0, ptr %1, i64 %30
  %32 = getelementptr inbounds %struct.ValueWrapper.0, ptr %1, i64 %27
  %33 = load i64, ptr %31, align 8, !tbaa !13
  store i64 %33, ptr %32, align 8, !tbaa !13
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i64 [ %30, %29 ], [ %27, %25 ]
  %36 = icmp sgt i64 %35, %2
  br i1 %36, label %37, label %47

37:                                               ; preds = %44, %34
  %38 = phi i64 [ %40, %44 ], [ %35, %34 ]
  %39 = add nsw i64 %38, -1
  %40 = sdiv i64 %39, 2
  %41 = getelementptr inbounds %struct.ValueWrapper.0, ptr %1, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = fcmp olt double %42, %3
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.ValueWrapper.0, ptr %1, i64 %38
  store double %42, ptr %45, align 8, !tbaa !13
  %46 = icmp sgt i64 %40, %2
  br i1 %46, label %37, label %47, !llvm.loop !87

47:                                               ; preds = %44, %37, %34
  %48 = phi i64 [ %35, %34 ], [ %40, %44 ], [ %38, %37 ]
  %49 = getelementptr inbounds %struct.ValueWrapper.0, ptr %1, i64 %48
  store double %3, ptr %49, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN9benchmark8heapsortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_(ptr %0, ptr %1) #3 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  %7 = icmp sgt i64 %5, 8
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = sdiv i64 %6, 2
  br label %11

10:                                               ; preds = %11
  br i1 %7, label %17, label %24

11:                                               ; preds = %11, %8
  %12 = phi i64 [ %13, %11 ], [ %9, %8 ]
  %13 = add nsw i64 %12, -1
  %14 = getelementptr inbounds %struct.ValueWrapper, ptr %0, i64 %13
  %15 = load double, ptr %14, align 8, !tbaa.struct !17
  tail call void @_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_(i64 noundef %6, ptr %0, i64 noundef %13, double %15) #9
  %16 = icmp sgt i64 %12, 1
  br i1 %16, label %11, label %10, !llvm.loop !88

17:                                               ; preds = %17, %10
  %18 = phi i64 [ %19, %17 ], [ %6, %10 ]
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds %struct.ValueWrapper, ptr %0, i64 %19
  %21 = load double, ptr %20, align 8, !tbaa.struct !17
  %22 = load i64, ptr %0, align 8, !tbaa !13
  store i64 %22, ptr %20, align 8, !tbaa !13
  tail call void @_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_(i64 noundef %19, ptr nonnull %0, i64 noundef 0, double %21) #9
  %23 = icmp sgt i64 %18, 2
  br i1 %23, label %17, label %24, !llvm.loop !89

24:                                               ; preds = %17, %10, %2
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal void @_ZN9benchmark7sift_inI14PointerWrapperI12ValueWrapperIdEES3_EEvlT_lT0_(i64 noundef %0, ptr %1, i64 noundef %2, double %3) #6 comdat {
  %5 = shl i64 %2, 1
  %6 = add i64 %5, 2
  %7 = icmp slt i64 %6, %0
  br i1 %7, label %8, label %25

8:                                                ; preds = %8, %4
  %9 = phi i64 [ %19, %8 ], [ %2, %4 ]
  %10 = phi i64 [ %23, %8 ], [ %6, %4 ]
  %11 = add nsw i64 %10, -1
  %12 = getelementptr inbounds %struct.ValueWrapper, ptr %1, i64 %11
  %13 = getelementptr inbounds %struct.ValueWrapper, ptr %1, i64 %10
  %14 = load double, ptr %12, align 8, !tbaa !28
  %15 = load double, ptr %13, align 8, !tbaa !28
  %16 = fcmp olt double %14, %15
  %17 = zext i1 %16 to i64
  %18 = add nsw i64 %10, %17
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds %struct.ValueWrapper, ptr %1, i64 %19
  %21 = getelementptr inbounds %struct.ValueWrapper, ptr %1, i64 %9
  %22 = load i64, ptr %20, align 8, !tbaa !13
  store i64 %22, ptr %21, align 8, !tbaa !13
  %23 = shl nsw i64 %18, 1
  %24 = icmp slt i64 %23, %0
  br i1 %24, label %8, label %25, !llvm.loop !90

25:                                               ; preds = %8, %4
  %26 = phi i64 [ %6, %4 ], [ %23, %8 ]
  %27 = phi i64 [ %2, %4 ], [ %19, %8 ]
  %28 = icmp eq i64 %26, %0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = add nsw i64 %0, -1
  %31 = getelementptr inbounds %struct.ValueWrapper, ptr %1, i64 %30
  %32 = getelementptr inbounds %struct.ValueWrapper, ptr %1, i64 %27
  %33 = load i64, ptr %31, align 8, !tbaa !13
  store i64 %33, ptr %32, align 8, !tbaa !13
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i64 [ %30, %29 ], [ %27, %25 ]
  %36 = icmp sgt i64 %35, %2
  br i1 %36, label %37, label %47

37:                                               ; preds = %44, %34
  %38 = phi i64 [ %40, %44 ], [ %35, %34 ]
  %39 = add nsw i64 %38, -1
  %40 = sdiv i64 %39, 2
  %41 = getelementptr inbounds %struct.ValueWrapper, ptr %1, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = fcmp olt double %42, %3
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.ValueWrapper, ptr %1, i64 %38
  store double %42, ptr %45, align 8, !tbaa !13
  %46 = icmp sgt i64 %40, %2
  br i1 %46, label %37, label %47, !llvm.loop !91

47:                                               ; preds = %44, %37, %34
  %48 = phi i64 [ %35, %34 ], [ %40, %44 ], [ %38, %37 ]
  %49 = getelementptr inbounds %struct.ValueWrapper, ptr %1, i64 %48
  store double %3, ptr %49, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN9benchmark8heapsortIP12ValueWrapperIdES2_EEvT_S4_(ptr noundef %0, ptr noundef %1) #3 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  %7 = icmp sgt i64 %5, 8
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = sdiv i64 %6, 2
  br label %11

10:                                               ; preds = %11
  br i1 %7, label %17, label %24

11:                                               ; preds = %11, %8
  %12 = phi i64 [ %13, %11 ], [ %9, %8 ]
  %13 = add nsw i64 %12, -1
  %14 = getelementptr inbounds %struct.ValueWrapper, ptr %0, i64 %13
  %15 = load double, ptr %14, align 8, !tbaa.struct !17
  tail call void @_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_(i64 noundef %6, ptr noundef %0, i64 noundef %13, double %15) #9
  %16 = icmp sgt i64 %12, 1
  br i1 %16, label %11, label %10, !llvm.loop !92

17:                                               ; preds = %17, %10
  %18 = phi i64 [ %19, %17 ], [ %6, %10 ]
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds %struct.ValueWrapper, ptr %0, i64 %19
  %21 = load double, ptr %20, align 8, !tbaa.struct !17
  %22 = load i64, ptr %0, align 8, !tbaa !13
  store i64 %22, ptr %20, align 8, !tbaa !13
  tail call void @_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_(i64 noundef %19, ptr noundef nonnull %0, i64 noundef 0, double %21) #9
  %23 = icmp sgt i64 %18, 2
  br i1 %23, label %17, label %24, !llvm.loop !93

24:                                               ; preds = %17, %10, %2
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal void @_ZN9benchmark7sift_inIP12ValueWrapperIdES2_EEvlT_lT0_(i64 noundef %0, ptr noundef %1, i64 noundef %2, double %3) #6 comdat {
  %5 = shl i64 %2, 1
  %6 = add i64 %5, 2
  %7 = icmp slt i64 %6, %0
  br i1 %7, label %8, label %25

8:                                                ; preds = %8, %4
  %9 = phi i64 [ %19, %8 ], [ %2, %4 ]
  %10 = phi i64 [ %23, %8 ], [ %6, %4 ]
  %11 = add nsw i64 %10, -1
  %12 = getelementptr inbounds %struct.ValueWrapper, ptr %1, i64 %11
  %13 = getelementptr inbounds %struct.ValueWrapper, ptr %1, i64 %10
  %14 = load double, ptr %12, align 8, !tbaa !28
  %15 = load double, ptr %13, align 8, !tbaa !28
  %16 = fcmp olt double %14, %15
  %17 = zext i1 %16 to i64
  %18 = add nsw i64 %10, %17
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds %struct.ValueWrapper, ptr %1, i64 %19
  %21 = getelementptr inbounds %struct.ValueWrapper, ptr %1, i64 %9
  %22 = load i64, ptr %20, align 8, !tbaa !13
  store i64 %22, ptr %21, align 8, !tbaa !13
  %23 = shl nsw i64 %18, 1
  %24 = icmp slt i64 %23, %0
  br i1 %24, label %8, label %25, !llvm.loop !94

25:                                               ; preds = %8, %4
  %26 = phi i64 [ %6, %4 ], [ %23, %8 ]
  %27 = phi i64 [ %2, %4 ], [ %19, %8 ]
  %28 = icmp eq i64 %26, %0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = add nsw i64 %0, -1
  %31 = getelementptr inbounds %struct.ValueWrapper, ptr %1, i64 %30
  %32 = getelementptr inbounds %struct.ValueWrapper, ptr %1, i64 %27
  %33 = load i64, ptr %31, align 8, !tbaa !13
  store i64 %33, ptr %32, align 8, !tbaa !13
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i64 [ %30, %29 ], [ %27, %25 ]
  %36 = icmp sgt i64 %35, %2
  br i1 %36, label %37, label %47

37:                                               ; preds = %44, %34
  %38 = phi i64 [ %40, %44 ], [ %35, %34 ]
  %39 = add nsw i64 %38, -1
  %40 = sdiv i64 %39, 2
  %41 = getelementptr inbounds %struct.ValueWrapper, ptr %1, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = fcmp olt double %42, %3
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.ValueWrapper, ptr %1, i64 %38
  store double %42, ptr %45, align 8, !tbaa !13
  %46 = icmp sgt i64 %40, %2
  br i1 %46, label %37, label %47, !llvm.loop !95

47:                                               ; preds = %44, %37, %34
  %48 = phi i64 [ %35, %34 ], [ %40, %44 ], [ %38, %37 ]
  %49 = getelementptr inbounds %struct.ValueWrapper, ptr %1, i64 %48
  store double %3, ptr %49, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN9benchmark8heapsortI14PointerWrapperIdEdEEvT_S3_(ptr %0, ptr %1) #3 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  %7 = icmp sgt i64 %5, 8
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = sdiv i64 %6, 2
  br label %11

10:                                               ; preds = %11
  br i1 %7, label %17, label %24

11:                                               ; preds = %11, %8
  %12 = phi i64 [ %13, %11 ], [ %9, %8 ]
  %13 = add nsw i64 %12, -1
  %14 = getelementptr inbounds double, ptr %0, i64 %13
  %15 = load double, ptr %14, align 8, !tbaa !13
  tail call void @_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_(i64 noundef %6, ptr %0, i64 noundef %13, double noundef %15) #9
  %16 = icmp sgt i64 %12, 1
  br i1 %16, label %11, label %10, !llvm.loop !96

17:                                               ; preds = %17, %10
  %18 = phi i64 [ %19, %17 ], [ %6, %10 ]
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds double, ptr %0, i64 %19
  %21 = load double, ptr %20, align 8, !tbaa !13
  %22 = load double, ptr %0, align 8, !tbaa !13
  store double %22, ptr %20, align 8, !tbaa !13
  tail call void @_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_(i64 noundef %19, ptr nonnull %0, i64 noundef 0, double noundef %21) #9
  %23 = icmp sgt i64 %18, 2
  br i1 %23, label %17, label %24, !llvm.loop !97

24:                                               ; preds = %17, %10, %2
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal void @_ZN9benchmark7sift_inI14PointerWrapperIdEdEEvlT_lT0_(i64 noundef %0, ptr %1, i64 noundef %2, double noundef %3) #6 comdat {
  %5 = shl i64 %2, 1
  %6 = add i64 %5, 2
  %7 = icmp slt i64 %6, %0
  br i1 %7, label %8, label %25

8:                                                ; preds = %8, %4
  %9 = phi i64 [ %19, %8 ], [ %2, %4 ]
  %10 = phi i64 [ %23, %8 ], [ %6, %4 ]
  %11 = add nsw i64 %10, -1
  %12 = getelementptr inbounds double, ptr %1, i64 %11
  %13 = load double, ptr %12, align 8, !tbaa !13
  %14 = getelementptr inbounds double, ptr %1, i64 %10
  %15 = load double, ptr %14, align 8, !tbaa !13
  %16 = fcmp olt double %13, %15
  %17 = zext i1 %16 to i64
  %18 = add nsw i64 %10, %17
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds double, ptr %1, i64 %19
  %21 = load double, ptr %20, align 8, !tbaa !13
  %22 = getelementptr inbounds double, ptr %1, i64 %9
  store double %21, ptr %22, align 8, !tbaa !13
  %23 = shl nsw i64 %18, 1
  %24 = icmp slt i64 %23, %0
  br i1 %24, label %8, label %25, !llvm.loop !98

25:                                               ; preds = %8, %4
  %26 = phi i64 [ %6, %4 ], [ %23, %8 ]
  %27 = phi i64 [ %2, %4 ], [ %19, %8 ]
  %28 = icmp eq i64 %26, %0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = add nsw i64 %0, -1
  %31 = getelementptr inbounds double, ptr %1, i64 %30
  %32 = load double, ptr %31, align 8, !tbaa !13
  %33 = getelementptr inbounds double, ptr %1, i64 %27
  store double %32, ptr %33, align 8, !tbaa !13
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i64 [ %30, %29 ], [ %27, %25 ]
  %36 = icmp sgt i64 %35, %2
  br i1 %36, label %37, label %47

37:                                               ; preds = %44, %34
  %38 = phi i64 [ %40, %44 ], [ %35, %34 ]
  %39 = add nsw i64 %38, -1
  %40 = sdiv i64 %39, 2
  %41 = getelementptr inbounds double, ptr %1, i64 %40
  %42 = load double, ptr %41, align 8, !tbaa !13
  %43 = fcmp olt double %42, %3
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = getelementptr inbounds double, ptr %1, i64 %38
  store double %42, ptr %45, align 8, !tbaa !13
  %46 = icmp sgt i64 %40, %2
  br i1 %46, label %37, label %47, !llvm.loop !99

47:                                               ; preds = %44, %37, %34
  %48 = phi i64 [ %35, %34 ], [ %40, %44 ], [ %38, %37 ]
  %49 = getelementptr inbounds double, ptr %1, i64 %48
  store double %3, ptr %49, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN9benchmark8heapsortIPddEEvT_S2_(ptr noundef %0, ptr noundef %1) #3 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  %7 = icmp sgt i64 %5, 8
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = sdiv i64 %6, 2
  br label %11

10:                                               ; preds = %11
  br i1 %7, label %17, label %24

11:                                               ; preds = %11, %8
  %12 = phi i64 [ %13, %11 ], [ %9, %8 ]
  %13 = add nsw i64 %12, -1
  %14 = getelementptr inbounds double, ptr %0, i64 %13
  %15 = load double, ptr %14, align 8, !tbaa !13
  tail call void @_ZN9benchmark7sift_inIPddEEvlT_lT0_(i64 noundef %6, ptr noundef %0, i64 noundef %13, double noundef %15) #9
  %16 = icmp sgt i64 %12, 1
  br i1 %16, label %11, label %10, !llvm.loop !100

17:                                               ; preds = %17, %10
  %18 = phi i64 [ %19, %17 ], [ %6, %10 ]
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds double, ptr %0, i64 %19
  %21 = load double, ptr %20, align 8, !tbaa !13
  %22 = load double, ptr %0, align 8, !tbaa !13
  store double %22, ptr %20, align 8, !tbaa !13
  tail call void @_ZN9benchmark7sift_inIPddEEvlT_lT0_(i64 noundef %19, ptr noundef nonnull %0, i64 noundef 0, double noundef %21) #9
  %23 = icmp sgt i64 %18, 2
  br i1 %23, label %17, label %24, !llvm.loop !101

24:                                               ; preds = %17, %10, %2
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal void @_ZN9benchmark7sift_inIPddEEvlT_lT0_(i64 noundef %0, ptr noundef %1, i64 noundef %2, double noundef %3) #6 comdat {
  %5 = shl i64 %2, 1
  %6 = add i64 %5, 2
  %7 = icmp slt i64 %6, %0
  br i1 %7, label %8, label %25

8:                                                ; preds = %8, %4
  %9 = phi i64 [ %19, %8 ], [ %2, %4 ]
  %10 = phi i64 [ %23, %8 ], [ %6, %4 ]
  %11 = add nsw i64 %10, -1
  %12 = getelementptr inbounds double, ptr %1, i64 %11
  %13 = load double, ptr %12, align 8, !tbaa !13
  %14 = getelementptr inbounds double, ptr %1, i64 %10
  %15 = load double, ptr %14, align 8, !tbaa !13
  %16 = fcmp olt double %13, %15
  %17 = zext i1 %16 to i64
  %18 = add nsw i64 %10, %17
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds double, ptr %1, i64 %19
  %21 = load double, ptr %20, align 8, !tbaa !13
  %22 = getelementptr inbounds double, ptr %1, i64 %9
  store double %21, ptr %22, align 8, !tbaa !13
  %23 = shl nsw i64 %18, 1
  %24 = icmp slt i64 %23, %0
  br i1 %24, label %8, label %25, !llvm.loop !102

25:                                               ; preds = %8, %4
  %26 = phi i64 [ %6, %4 ], [ %23, %8 ]
  %27 = phi i64 [ %2, %4 ], [ %19, %8 ]
  %28 = icmp eq i64 %26, %0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = add nsw i64 %0, -1
  %31 = getelementptr inbounds double, ptr %1, i64 %30
  %32 = load double, ptr %31, align 8, !tbaa !13
  %33 = getelementptr inbounds double, ptr %1, i64 %27
  store double %32, ptr %33, align 8, !tbaa !13
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i64 [ %30, %29 ], [ %27, %25 ]
  %36 = icmp sgt i64 %35, %2
  br i1 %36, label %37, label %47

37:                                               ; preds = %44, %34
  %38 = phi i64 [ %40, %44 ], [ %35, %34 ]
  %39 = add nsw i64 %38, -1
  %40 = sdiv i64 %39, 2
  %41 = getelementptr inbounds double, ptr %1, i64 %40
  %42 = load double, ptr %41, align 8, !tbaa !13
  %43 = fcmp olt double %42, %3
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = getelementptr inbounds double, ptr %1, i64 %38
  store double %42, ptr %45, align 8, !tbaa !13
  %46 = icmp sgt i64 %40, %2
  br i1 %46, label %37, label %47, !llvm.loop !103

47:                                               ; preds = %44, %37, %34
  %48 = phi i64 [ %35, %34 ], [ %40, %44 ], [ %38, %37 ]
  %49 = getelementptr inbounds double, ptr %1, i64 %48
  store double %3, ptr %49, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_(ptr %0, ptr %1) #3 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = icmp sgt i64 %5, 8
  br i1 %6, label %7, label %32

7:                                                ; preds = %28, %2
  %8 = phi ptr [ %.lcssa2.lcssa, %28 ], [ %0, %2 ]
  %9 = load double, ptr %8, align 8, !tbaa !13
  br label %10

10:                                               ; preds = %27, %7
  %11 = phi ptr [ %8, %7 ], [ %.lcssa4, %27 ]
  %12 = phi ptr [ %1, %7 ], [ %.lcssa1, %27 ]
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi ptr [ %12, %10 ], [ %15, %13 ]
  %15 = getelementptr inbounds %struct.ValueWrapper.0, ptr %14, i64 -1
  %16 = load double, ptr %15, align 8
  %17 = fcmp olt double %9, %16
  br i1 %17, label %13, label %18, !llvm.loop !104

18:                                               ; preds = %13
  %.lcssa2 = phi ptr [ %14, %13 ]
  %.lcssa1 = phi ptr [ %15, %13 ]
  %.lcssa = phi double [ %16, %13 ]
  %19 = icmp ult ptr %11, %.lcssa1
  br i1 %19, label %20, label %28

20:                                               ; preds = %20, %18
  %21 = phi ptr [ %24, %20 ], [ %11, %18 ]
  %22 = load double, ptr %21, align 8
  %23 = fcmp olt double %22, %9
  %24 = getelementptr inbounds %struct.ValueWrapper.0, ptr %21, i64 1
  br i1 %23, label %20, label %25, !llvm.loop !105

25:                                               ; preds = %20
  %.lcssa4 = phi ptr [ %21, %20 ]
  %.lcssa3 = phi double [ %22, %20 ]
  %26 = icmp ult ptr %.lcssa4, %.lcssa1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  store double %.lcssa3, ptr %.lcssa1, align 8, !tbaa !13
  store double %.lcssa, ptr %.lcssa4, align 8, !tbaa.struct !17
  br label %10, !llvm.loop !106

28:                                               ; preds = %25, %18
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %25 ], [ %.lcssa2, %18 ]
  tail call void @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IS2_IdEEEEEEEEEEESC_EEvT_SE_(ptr nonnull %8, ptr nonnull %.lcssa2.lcssa) #9
  %29 = ptrtoint ptr %.lcssa2.lcssa to i64
  %30 = sub i64 %3, %29
  %31 = icmp sgt i64 %30, 8
  br i1 %31, label %7, label %32

32:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_(ptr noundef %0, ptr noundef %1) #3 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = icmp sgt i64 %5, 8
  br i1 %6, label %7, label %32

7:                                                ; preds = %28, %2
  %8 = phi ptr [ %.lcssa2.lcssa, %28 ], [ %0, %2 ]
  %9 = load double, ptr %8, align 8, !tbaa !13
  br label %10

10:                                               ; preds = %27, %7
  %11 = phi ptr [ %1, %7 ], [ %.lcssa1, %27 ]
  %12 = phi ptr [ %8, %7 ], [ %.lcssa4, %27 ]
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi ptr [ %11, %10 ], [ %15, %13 ]
  %15 = getelementptr inbounds %struct.ValueWrapper.0, ptr %14, i64 -1
  %16 = load double, ptr %15, align 8
  %17 = fcmp olt double %9, %16
  br i1 %17, label %13, label %18, !llvm.loop !107

18:                                               ; preds = %13
  %.lcssa2 = phi ptr [ %14, %13 ]
  %.lcssa1 = phi ptr [ %15, %13 ]
  %.lcssa = phi double [ %16, %13 ]
  %19 = icmp ult ptr %12, %.lcssa1
  br i1 %19, label %20, label %28

20:                                               ; preds = %20, %18
  %21 = phi ptr [ %24, %20 ], [ %12, %18 ]
  %22 = load double, ptr %21, align 8
  %23 = fcmp olt double %22, %9
  %24 = getelementptr inbounds %struct.ValueWrapper.0, ptr %21, i64 1
  br i1 %23, label %20, label %25, !llvm.loop !108

25:                                               ; preds = %20
  %.lcssa4 = phi ptr [ %21, %20 ]
  %.lcssa3 = phi double [ %22, %20 ]
  %26 = icmp ult ptr %.lcssa4, %.lcssa1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  store double %.lcssa3, ptr %.lcssa1, align 8, !tbaa !13
  store double %.lcssa, ptr %.lcssa4, align 8, !tbaa.struct !17
  br label %10, !llvm.loop !109

28:                                               ; preds = %25, %18
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %25 ], [ %.lcssa2, %18 ]
  tail call void @_ZN9benchmark9quicksortIP12ValueWrapperIS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IS1_IdEEEEEEEEEESB_EEvT_SD_(ptr noundef nonnull %8, ptr noundef %.lcssa2.lcssa) #9
  %29 = ptrtoint ptr %.lcssa2.lcssa to i64
  %30 = sub i64 %3, %29
  %31 = icmp sgt i64 %30, 8
  br i1 %31, label %7, label %32

32:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_(ptr %0, ptr %1) #3 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = icmp sgt i64 %5, 8
  br i1 %6, label %7, label %32

7:                                                ; preds = %28, %2
  %8 = phi ptr [ %.lcssa2.lcssa, %28 ], [ %0, %2 ]
  %9 = load double, ptr %8, align 8, !tbaa !13
  br label %10

10:                                               ; preds = %27, %7
  %11 = phi ptr [ %8, %7 ], [ %.lcssa4, %27 ]
  %12 = phi ptr [ %1, %7 ], [ %.lcssa1, %27 ]
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi ptr [ %12, %10 ], [ %15, %13 ]
  %15 = getelementptr inbounds %struct.ValueWrapper, ptr %14, i64 -1
  %16 = load double, ptr %15, align 8
  %17 = fcmp olt double %9, %16
  br i1 %17, label %13, label %18, !llvm.loop !110

18:                                               ; preds = %13
  %.lcssa2 = phi ptr [ %14, %13 ]
  %.lcssa1 = phi ptr [ %15, %13 ]
  %.lcssa = phi double [ %16, %13 ]
  %19 = icmp ult ptr %11, %.lcssa1
  br i1 %19, label %20, label %28

20:                                               ; preds = %20, %18
  %21 = phi ptr [ %24, %20 ], [ %11, %18 ]
  %22 = load double, ptr %21, align 8
  %23 = fcmp olt double %22, %9
  %24 = getelementptr inbounds %struct.ValueWrapper, ptr %21, i64 1
  br i1 %23, label %20, label %25, !llvm.loop !111

25:                                               ; preds = %20
  %.lcssa4 = phi ptr [ %21, %20 ]
  %.lcssa3 = phi double [ %22, %20 ]
  %26 = icmp ult ptr %.lcssa4, %.lcssa1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  store double %.lcssa3, ptr %.lcssa1, align 8, !tbaa !13
  store double %.lcssa, ptr %.lcssa4, align 8, !tbaa.struct !17
  br label %10, !llvm.loop !112

28:                                               ; preds = %25, %18
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %25 ], [ %.lcssa2, %18 ]
  tail call void @_ZN9benchmark9quicksortI14PointerWrapperI12ValueWrapperIdEES3_EEvT_S5_(ptr nonnull %8, ptr nonnull %.lcssa2.lcssa) #9
  %29 = ptrtoint ptr %.lcssa2.lcssa to i64
  %30 = sub i64 %3, %29
  %31 = icmp sgt i64 %30, 8
  br i1 %31, label %7, label %32

32:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_(ptr noundef %0, ptr noundef %1) #3 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = icmp sgt i64 %5, 8
  br i1 %6, label %7, label %32

7:                                                ; preds = %28, %2
  %8 = phi ptr [ %.lcssa2.lcssa, %28 ], [ %0, %2 ]
  %9 = load double, ptr %8, align 8, !tbaa !13
  br label %10

10:                                               ; preds = %27, %7
  %11 = phi ptr [ %1, %7 ], [ %.lcssa1, %27 ]
  %12 = phi ptr [ %8, %7 ], [ %.lcssa4, %27 ]
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi ptr [ %11, %10 ], [ %15, %13 ]
  %15 = getelementptr inbounds %struct.ValueWrapper, ptr %14, i64 -1
  %16 = load double, ptr %15, align 8
  %17 = fcmp olt double %9, %16
  br i1 %17, label %13, label %18, !llvm.loop !113

18:                                               ; preds = %13
  %.lcssa2 = phi ptr [ %14, %13 ]
  %.lcssa1 = phi ptr [ %15, %13 ]
  %.lcssa = phi double [ %16, %13 ]
  %19 = icmp ult ptr %12, %.lcssa1
  br i1 %19, label %20, label %28

20:                                               ; preds = %20, %18
  %21 = phi ptr [ %24, %20 ], [ %12, %18 ]
  %22 = load double, ptr %21, align 8
  %23 = fcmp olt double %22, %9
  %24 = getelementptr inbounds %struct.ValueWrapper, ptr %21, i64 1
  br i1 %23, label %20, label %25, !llvm.loop !114

25:                                               ; preds = %20
  %.lcssa4 = phi ptr [ %21, %20 ]
  %.lcssa3 = phi double [ %22, %20 ]
  %26 = icmp ult ptr %.lcssa4, %.lcssa1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  store double %.lcssa3, ptr %.lcssa1, align 8, !tbaa !13
  store double %.lcssa, ptr %.lcssa4, align 8, !tbaa.struct !17
  br label %10, !llvm.loop !115

28:                                               ; preds = %25, %18
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %25 ], [ %.lcssa2, %18 ]
  tail call void @_ZN9benchmark9quicksortIP12ValueWrapperIdES2_EEvT_S4_(ptr noundef nonnull %8, ptr noundef %.lcssa2.lcssa) #9
  %29 = ptrtoint ptr %.lcssa2.lcssa to i64
  %30 = sub i64 %3, %29
  %31 = icmp sgt i64 %30, 8
  br i1 %31, label %7, label %32

32:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_(ptr %0, ptr %1) #3 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = icmp sgt i64 %5, 8
  br i1 %6, label %7, label %32

7:                                                ; preds = %28, %2
  %8 = phi ptr [ %.lcssa2.lcssa, %28 ], [ %0, %2 ]
  %9 = load double, ptr %8, align 8, !tbaa !13
  br label %10

10:                                               ; preds = %27, %7
  %11 = phi ptr [ %8, %7 ], [ %.lcssa4, %27 ]
  %12 = phi ptr [ %1, %7 ], [ %.lcssa1, %27 ]
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi ptr [ %12, %10 ], [ %15, %13 ]
  %15 = getelementptr inbounds double, ptr %14, i64 -1
  %16 = load double, ptr %15, align 8, !tbaa !13
  %17 = fcmp olt double %9, %16
  br i1 %17, label %13, label %18, !llvm.loop !116

18:                                               ; preds = %13
  %.lcssa2 = phi ptr [ %14, %13 ]
  %.lcssa1 = phi ptr [ %15, %13 ]
  %.lcssa = phi double [ %16, %13 ]
  %19 = icmp ult ptr %11, %.lcssa1
  br i1 %19, label %20, label %28

20:                                               ; preds = %20, %18
  %21 = phi ptr [ %24, %20 ], [ %11, %18 ]
  %22 = load double, ptr %21, align 8, !tbaa !13
  %23 = fcmp olt double %22, %9
  %24 = getelementptr inbounds double, ptr %21, i64 1
  br i1 %23, label %20, label %25, !llvm.loop !117

25:                                               ; preds = %20
  %.lcssa4 = phi ptr [ %21, %20 ]
  %.lcssa3 = phi double [ %22, %20 ]
  %26 = icmp ult ptr %.lcssa4, %.lcssa1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  store double %.lcssa3, ptr %.lcssa1, align 8, !tbaa !13
  store double %.lcssa, ptr %.lcssa4, align 8, !tbaa !13
  br label %10, !llvm.loop !118

28:                                               ; preds = %25, %18
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %25 ], [ %.lcssa2, %18 ]
  tail call void @_ZN9benchmark9quicksortI14PointerWrapperIdEdEEvT_S3_(ptr nonnull %8, ptr nonnull %.lcssa2.lcssa) #9
  %29 = ptrtoint ptr %.lcssa2.lcssa to i64
  %30 = sub i64 %3, %29
  %31 = icmp sgt i64 %30, 8
  br i1 %31, label %7, label %32

32:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN9benchmark9quicksortIPddEEvT_S2_(ptr noundef %0, ptr noundef %1) #3 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = icmp sgt i64 %5, 8
  br i1 %6, label %7, label %32

7:                                                ; preds = %28, %2
  %8 = phi ptr [ %.lcssa2.lcssa, %28 ], [ %0, %2 ]
  %9 = load double, ptr %8, align 8, !tbaa !13
  br label %10

10:                                               ; preds = %27, %7
  %11 = phi ptr [ %1, %7 ], [ %.lcssa1, %27 ]
  %12 = phi ptr [ %8, %7 ], [ %.lcssa4, %27 ]
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi ptr [ %11, %10 ], [ %15, %13 ]
  %15 = getelementptr inbounds double, ptr %14, i64 -1
  %16 = load double, ptr %15, align 8, !tbaa !13
  %17 = fcmp olt double %9, %16
  br i1 %17, label %13, label %18, !llvm.loop !119

18:                                               ; preds = %13
  %.lcssa2 = phi ptr [ %14, %13 ]
  %.lcssa1 = phi ptr [ %15, %13 ]
  %.lcssa = phi double [ %16, %13 ]
  %19 = icmp ult ptr %12, %.lcssa1
  br i1 %19, label %20, label %28

20:                                               ; preds = %20, %18
  %21 = phi ptr [ %24, %20 ], [ %12, %18 ]
  %22 = load double, ptr %21, align 8, !tbaa !13
  %23 = fcmp olt double %22, %9
  %24 = getelementptr inbounds double, ptr %21, i64 1
  br i1 %23, label %20, label %25, !llvm.loop !120

25:                                               ; preds = %20
  %.lcssa4 = phi ptr [ %21, %20 ]
  %.lcssa3 = phi double [ %22, %20 ]
  %26 = icmp ult ptr %.lcssa4, %.lcssa1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  store double %.lcssa3, ptr %.lcssa1, align 8, !tbaa !13
  store double %.lcssa, ptr %.lcssa4, align 8, !tbaa !13
  br label %10, !llvm.loop !121

28:                                               ; preds = %25, %18
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %25 ], [ %.lcssa2, %18 ]
  tail call void @_ZN9benchmark9quicksortIPddEEvT_S2_(ptr noundef nonnull %8, ptr noundef %.lcssa2.lcssa) #9
  %29 = ptrtoint ptr %.lcssa2.lcssa to i64
  %30 = sub i64 %3, %29
  %31 = icmp sgt i64 %30, 8
  br i1 %31, label %7, label %32

32:                                               ; preds = %28, %2
  ret void
}

attributes #0 = { norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize willreturn memory(read) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

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
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !9, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{i64 0, i64 8, !13}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = !{i64 0, i64 8, !7}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = !{!29, !14, i64 0}
!29 = !{!"_ZTS12ValueWrapperIdE", !14, i64 0}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !16}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, !16}
!50 = distinct !{!50, !16}
!51 = distinct !{!51, !16}
!52 = distinct !{!52, !16}
!53 = distinct !{!53, !16}
!54 = distinct !{!54, !16}
!55 = distinct !{!55, !16}
!56 = distinct !{!56, !16}
!57 = distinct !{!57, !16}
!58 = distinct !{!58, !16}
!59 = distinct !{!59, !16}
!60 = distinct !{!60, !16}
!61 = distinct !{!61, !16}
!62 = distinct !{!62, !16}
!63 = distinct !{!63, !16}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !16}
!66 = distinct !{!66, !16}
!67 = distinct !{!67, !16}
!68 = distinct !{!68, !16}
!69 = distinct !{!69, !16}
!70 = distinct !{!70, !16}
!71 = distinct !{!71, !16}
!72 = distinct !{!72, !16}
!73 = distinct !{!73, !16}
!74 = distinct !{!74, !16}
!75 = distinct !{!75, !16}
!76 = distinct !{!76, !16}
!77 = distinct !{!77, !16}
!78 = distinct !{!78, !16}
!79 = distinct !{!79, !16}
!80 = distinct !{!80, !16}
!81 = distinct !{!81, !16}
!82 = distinct !{!82, !16}
!83 = distinct !{!83, !16}
!84 = distinct !{!84, !16}
!85 = distinct !{!85, !16}
!86 = distinct !{!86, !16}
!87 = distinct !{!87, !16}
!88 = distinct !{!88, !16}
!89 = distinct !{!89, !16}
!90 = distinct !{!90, !16}
!91 = distinct !{!91, !16}
!92 = distinct !{!92, !16}
!93 = distinct !{!93, !16}
!94 = distinct !{!94, !16}
!95 = distinct !{!95, !16}
!96 = distinct !{!96, !16}
!97 = distinct !{!97, !16}
!98 = distinct !{!98, !16}
!99 = distinct !{!99, !16}
!100 = distinct !{!100, !16}
!101 = distinct !{!101, !16}
!102 = distinct !{!102, !16}
!103 = distinct !{!103, !16}
!104 = distinct !{!104, !16}
!105 = distinct !{!105, !16}
!106 = distinct !{!106, !16}
!107 = distinct !{!107, !16}
!108 = distinct !{!108, !16}
!109 = distinct !{!109, !16}
!110 = distinct !{!110, !16}
!111 = distinct !{!111, !16}
!112 = distinct !{!112, !16}
!113 = distinct !{!113, !16}
!114 = distinct !{!114, !16}
!115 = distinct !{!115, !16}
!116 = distinct !{!116, !16}
!117 = distinct !{!117, !16}
!118 = distinct !{!118, !16}
!119 = distinct !{!119, !16}
!120 = distinct !{!120, !16}
!121 = distinct !{!121, !16}
