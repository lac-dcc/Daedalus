; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/CoyoteBench/fftbench.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.polynomial = type { ptr, ptr, i64 }
%"class.std::complex" = type { { double, double } }

$_ZNK10polynomialIdEmlERKS0_ = comdat any

$_ZN10polynomialIdEaSERKS0_ = comdat any

$_ZN10polynomialIdEC2ERKS0_ = comdat any

$_ZN10polynomialIdE11stretch_fftEv = comdat any

$_ZN10polynomialIdE7stretchEm = comdat any

$_ZN10polynomialIdE3fftERKS0_ = comdat any

$_ZN10polynomialIdE11inverse_fftERKS_ISt7complexIdEE = comdat any

$_ZNSt7complexIdEmLIdEERS0_RKS_IT_E = comdat any

$_ZN10polynomialISt7complexIdEEaSERKS2_ = comdat any

$_ZN10polynomialISt7complexIdEED2Ev = comdat any

$_ZN10polynomialISt7complexIdEED0Ev = comdat any

$_ZN10polynomialIdE11bit_reverseERKS_ISt7complexIdEE = comdat any

$_ZN10polynomialIdE11bit_reverseERKS0_ = comdat any

$_ZN10polynomialIdED2Ev = comdat any

$_ZN10polynomialIdED0Ev = comdat any

$_ZTV10polynomialIdE = comdat any

$_ZTS10polynomialIdE = comdat any

$_ZTI10polynomialIdE = comdat any

$_ZTV10polynomialISt7complexIdEE = comdat any

$_ZTS10polynomialISt7complexIdEE = comdat any

$_ZTI10polynomialISt7complexIdEE = comdat any

@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_fftbench.cpp, ptr null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"\0Afftbench (Std. C++) run time: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@_ZZL13random_doublevE4seed = internal unnamed_addr global i64 1325, align 8
@_ZTV10polynomialIdE = internal unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI10polynomialIdE, ptr @_ZN10polynomialIdED2Ev, ptr @_ZN10polynomialIdED0Ev] }, comdat, align 8, !type !0
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS10polynomialIdE = internal constant [16 x i8] c"10polynomialIdE\00", comdat, align 1
@_ZTI10polynomialIdE = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS10polynomialIdE }, comdat, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"overflow in fft polynomial stretch\00", align 1
@_ZTISt14overflow_error = external constant ptr
@_ZTV10polynomialISt7complexIdEE = internal unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI10polynomialISt7complexIdEE, ptr @_ZN10polynomialISt7complexIdEED2Ev, ptr @_ZN10polynomialISt7complexIdEED0Ev] }, comdat, align 8, !type !1
@_ZTS10polynomialISt7complexIdEE = internal constant [28 x i8] c"10polynomialISt7complexIdEE\00", comdat, align 1
@_ZTI10polynomialISt7complexIdEE = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS10polynomialISt7complexIdEE }, comdat, align 8

; Function Attrs: optsize uwtable
define internal void @_GLOBAL__sub_I_fftbench.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #14
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: norecurse optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #4 personality ptr @__gxx_personality_v0 {
  %3 = alloca %class.polynomial, align 8
  %4 = alloca %class.polynomial, align 8
  %5 = alloca %class.polynomial, align 8
  %6 = alloca %class.polynomial, align 8
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds ptr, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(4) @.str) #16
  %12 = icmp eq i32 %11, 0
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i1 [ false, %2 ], [ %12, %8 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialIdE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !13
  %15 = getelementptr inbounds %class.polynomial, ptr %3, i64 0, i32 1
  %16 = getelementptr inbounds %class.polynomial, ptr %3, i64 0, i32 2
  store i64 524288, ptr %16, align 8, !tbaa !15
  %17 = tail call noalias noundef nonnull dereferenceable(4194304) ptr @_Znam(i64 noundef 4194304) #17
  store ptr %17, ptr %15, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialIdE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !13
  %18 = getelementptr inbounds %class.polynomial, ptr %4, i64 0, i32 1
  %19 = getelementptr inbounds %class.polynomial, ptr %4, i64 0, i32 2
  store i64 524288, ptr %19, align 8, !tbaa !15
  %20 = invoke noalias noundef nonnull dereferenceable(4194304) ptr @_Znam(i64 noundef 4194304) #17
          to label %21 unwind label %30

21:                                               ; preds = %13
  store ptr %20, ptr %18, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialIdE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !13
  %22 = getelementptr inbounds %class.polynomial, ptr %5, i64 0, i32 1
  %23 = getelementptr inbounds %class.polynomial, ptr %5, i64 0, i32 2
  store i64 1048575, ptr %23, align 8, !tbaa !15
  %24 = invoke noalias noundef nonnull dereferenceable(8388600) ptr @_Znam(i64 noundef 8388600) #17
          to label %25 unwind label %32

25:                                               ; preds = %21
  store ptr %24, ptr %22, align 8, !tbaa !18
  %26 = load i64, ptr @_ZZL13random_doublevE4seed, align 8, !tbaa !19
  %27 = xor i64 %26, 123459876
  br label %34

28:                                               ; preds = %34
  %.lcssa = phi i64 [ %57, %34 ]
  %29 = xor i64 %.lcssa, 123459876
  store i64 %29, ptr @_ZZL13random_doublevE4seed, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  invoke void @_ZNK10polynomialIdEmlERKS0_(ptr nonnull sret(%class.polynomial) align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #14
          to label %63 unwind label %73

30:                                               ; preds = %13
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %116

32:                                               ; preds = %21
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %111

34:                                               ; preds = %34, %25
  %35 = phi i64 [ 0, %25 ], [ %61, %34 ]
  %36 = phi i64 [ %27, %25 ], [ %57, %34 ]
  %37 = sdiv i64 %36, 127773
  %38 = mul nsw i64 %37, -127773
  %39 = add i64 %38, %36
  %40 = mul nsw i64 %39, 16807
  %41 = mul nsw i64 %37, -2836
  %42 = add i64 %40, %41
  %43 = icmp slt i64 %42, 0
  %44 = add nsw i64 %42, 2147483647
  %45 = select i1 %43, i64 %44, i64 %42
  %46 = sitofp i64 %45 to double
  %47 = fmul double %46, 0x3E340000002813D9
  %48 = getelementptr inbounds double, ptr %17, i64 %35
  store double %47, ptr %48, align 8, !tbaa !20
  %49 = sdiv i64 %45, 127773
  %50 = mul nsw i64 %49, -127773
  %51 = add i64 %50, %45
  %52 = mul nsw i64 %51, 16807
  %53 = mul nsw i64 %49, -2836
  %54 = add i64 %52, %53
  %55 = icmp slt i64 %54, 0
  %56 = add nsw i64 %54, 2147483647
  %57 = select i1 %55, i64 %56, i64 %54
  %58 = sitofp i64 %57 to double
  %59 = fmul double %58, 0x3E340000002813D9
  %60 = getelementptr inbounds double, ptr %20, i64 %35
  store double %59, ptr %60, align 8, !tbaa !20
  %61 = add nuw nsw i64 %35, 1
  %62 = icmp eq i64 %61, 524288
  br i1 %62, label %28, label %34, !llvm.loop !22

63:                                               ; preds = %28
  %64 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN10polynomialIdEaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #14
          to label %65 unwind label %75

65:                                               ; preds = %63
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialIdE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !13
  %66 = getelementptr inbounds %class.polynomial, ptr %6, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !18
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  call void @_ZdaPv(ptr noundef nonnull %67) #18
  br label %70

70:                                               ; preds = %69, %65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  br i1 %14, label %71, label %85

71:                                               ; preds = %70
  %72 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef 0.000000e+00) #14
          to label %91 unwind label %83

73:                                               ; preds = %28
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %81

75:                                               ; preds = %63
  %76 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialIdE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !13
  %77 = getelementptr inbounds %class.polynomial, ptr %6, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !18
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  call void @_ZdaPv(ptr noundef nonnull %78) #18
  br label %81

81:                                               ; preds = %80, %75, %73
  %82 = phi { ptr, i32 } [ %74, %73 ], [ %76, %75 ], [ %76, %80 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  br label %106

83:                                               ; preds = %91, %89, %87, %85, %71
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %106

85:                                               ; preds = %70
  %86 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 31) #14
          to label %87 unwind label %83

87:                                               ; preds = %85
  %88 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef 0.000000e+00) #14
          to label %89 unwind label %83

89:                                               ; preds = %87
  %90 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef nonnull @.str.2, i64 noundef 2) #14
          to label %91 unwind label %83

91:                                               ; preds = %89, %71
  %92 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout) #14
          to label %93 unwind label %83

93:                                               ; preds = %91
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialIdE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !13
  %94 = load ptr, ptr %22, align 8, !tbaa !18
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  call void @_ZdaPv(ptr noundef nonnull %94) #18
  br label %97

97:                                               ; preds = %96, %93
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialIdE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !13
  %98 = load ptr, ptr %18, align 8, !tbaa !18
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  call void @_ZdaPv(ptr noundef nonnull %98) #18
  br label %101

101:                                              ; preds = %100, %97
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialIdE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !13
  %102 = load ptr, ptr %15, align 8, !tbaa !18
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  call void @_ZdaPv(ptr noundef nonnull %102) #18
  br label %105

105:                                              ; preds = %104, %101
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret i32 0

106:                                              ; preds = %83, %81
  %107 = phi { ptr, i32 } [ %84, %83 ], [ %82, %81 ]
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialIdE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !13
  %108 = load ptr, ptr %22, align 8, !tbaa !18
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  call void @_ZdaPv(ptr noundef nonnull %108) #18
  br label %111

111:                                              ; preds = %110, %106, %32
  %112 = phi { ptr, i32 } [ %33, %32 ], [ %107, %106 ], [ %107, %110 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialIdE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !13
  %113 = load ptr, ptr %18, align 8, !tbaa !18
  %114 = icmp eq ptr %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  call void @_ZdaPv(ptr noundef nonnull %113) #18
  br label %116

116:                                              ; preds = %115, %111, %30
  %117 = phi { ptr, i32 } [ %31, %30 ], [ %112, %111 ], [ %112, %115 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialIdE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !13
  %118 = load ptr, ptr %15, align 8, !tbaa !18
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  call void @_ZdaPv(ptr noundef nonnull %118) #18
  br label %121

121:                                              ; preds = %120, %116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  resume { ptr, i32 } %117
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize uwtable
define internal void @_ZNK10polynomialIdEmlERKS0_(ptr noalias sret(%class.polynomial) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %class.polynomial, align 8
  %5 = alloca %class.polynomial, align 8
  %6 = alloca %class.polynomial, align 8
  %7 = alloca %class.polynomial, align 8
  %8 = alloca %class.polynomial, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @_ZN10polynomialIdEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  invoke void @_ZN10polynomialIdEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2) #14
          to label %9 unwind label %17

9:                                                ; preds = %3
  %10 = getelementptr inbounds %class.polynomial, ptr %4, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %class.polynomial, ptr %5, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !15
  %14 = icmp ugt i64 %11, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = invoke noundef i64 @_ZN10polynomialIdE11stretch_fftEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #14
          to label %23 unwind label %19

17:                                               ; preds = %3
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %127

19:                                               ; preds = %23, %21, %15
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %121

21:                                               ; preds = %9
  %22 = invoke noundef i64 @_ZN10polynomialIdE11stretch_fftEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
          to label %23 unwind label %19

23:                                               ; preds = %21, %15
  %24 = phi ptr [ %4, %21 ], [ %5, %15 ]
  %25 = phi i64 [ %22, %21 ], [ %16, %15 ]
  %26 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN10polynomialIdE7stretchEm(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 noundef %25) #14
          to label %27 unwind label %19

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  invoke void @_ZN10polynomialIdE3fftERKS0_(ptr nonnull sret(%class.polynomial) align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %4) #14
          to label %28 unwind label %36

28:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  invoke void @_ZN10polynomialIdE3fftERKS0_(ptr nonnull sret(%class.polynomial) align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %5) #14
          to label %29 unwind label %38

29:                                               ; preds = %28
  %30 = load i64, ptr %10, align 8, !tbaa !15
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %class.polynomial, ptr %7, i64 0, i32 1
  %34 = getelementptr inbounds %class.polynomial, ptr %6, i64 0, i32 1
  br label %42

35:                                               ; preds = %42, %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #15
  invoke void @_ZN10polynomialIdE11inverse_fftERKS_ISt7complexIdEE(ptr nonnull sret(%class.polynomial) align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %6) #14
          to label %51 unwind label %70

36:                                               ; preds = %27
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %119

38:                                               ; preds = %28
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %113

40:                                               ; preds = %58
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %107

42:                                               ; preds = %42, %32
  %43 = phi i64 [ 0, %32 ], [ %49, %42 ]
  %44 = load ptr, ptr %33, align 8, !tbaa !24
  %45 = getelementptr inbounds %"class.std::complex", ptr %44, i64 %43
  %46 = load ptr, ptr %34, align 8, !tbaa !24
  %47 = getelementptr inbounds %"class.std::complex", ptr %46, i64 %43
  %48 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt7complexIdEmLIdEERS0_RKS_IT_E(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull align 8 dereferenceable(16) %45) #14
  %49 = add nuw i64 %43, 1
  %50 = icmp eq i64 %49, %30
  br i1 %50, label %35, label %42, !llvm.loop !26

51:                                               ; preds = %35
  %52 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN10polynomialISt7complexIdEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) #14
          to label %53 unwind label %72

53:                                               ; preds = %51
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialISt7complexIdEE, i64 0, inrange i32 0, i64 2), ptr %8, align 8, !tbaa !13
  %54 = getelementptr inbounds %class.polynomial, ptr %8, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !24
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  call void @_ZdaPv(ptr noundef nonnull %55) #18
  br label %58

58:                                               ; preds = %57, %53
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #15
  %59 = add i64 %30, -1
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialIdE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !13
  %60 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 1
  store ptr null, ptr %60, align 8, !tbaa !18
  %61 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 2
  store i64 %59, ptr %61, align 8, !tbaa !15
  %62 = icmp ugt i64 %59, 2305843009213693951
  %63 = shl i64 %59, 3
  %64 = select i1 %62, i64 -1, i64 %63
  %65 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %64) #17
          to label %66 unwind label %40

66:                                               ; preds = %58
  store ptr %65, ptr %60, align 8, !tbaa !18
  %67 = icmp eq i64 %59, 0
  %68 = getelementptr inbounds %class.polynomial, ptr %7, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !24
  br i1 %67, label %88, label %80

70:                                               ; preds = %35
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %78

72:                                               ; preds = %51
  %73 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialISt7complexIdEE, i64 0, inrange i32 0, i64 2), ptr %8, align 8, !tbaa !13
  %74 = getelementptr inbounds %class.polynomial, ptr %8, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !24
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  call void @_ZdaPv(ptr noundef nonnull %75) #18
  br label %78

78:                                               ; preds = %77, %72, %70
  %79 = phi { ptr, i32 } [ %71, %70 ], [ %73, %72 ], [ %73, %77 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #15
  br label %107

80:                                               ; preds = %80, %66
  %81 = phi i64 [ %85, %80 ], [ 0, %66 ]
  %82 = getelementptr inbounds %"class.std::complex", ptr %69, i64 %81
  %83 = load double, ptr %82, align 8, !tbaa !20
  %84 = getelementptr inbounds double, ptr %65, i64 %81
  store double %83, ptr %84, align 8, !tbaa !20
  %85 = add nuw i64 %81, 1
  %86 = icmp eq i64 %85, %59
  br i1 %86, label %87, label %80, !llvm.loop !27

87:                                               ; preds = %80
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialISt7complexIdEE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !13
  br label %90

88:                                               ; preds = %66
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialISt7complexIdEE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !13
  %89 = icmp eq ptr %69, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %88, %87
  call void @_ZdaPv(ptr noundef nonnull %69) #18
  br label %91

91:                                               ; preds = %90, %88
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialISt7complexIdEE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !13
  %92 = getelementptr inbounds %class.polynomial, ptr %6, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !24
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  call void @_ZdaPv(ptr noundef nonnull %93) #18
  br label %96

96:                                               ; preds = %95, %91
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialIdE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !13
  %97 = getelementptr inbounds %class.polynomial, ptr %5, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !18
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  call void @_ZdaPv(ptr noundef nonnull %98) #18
  br label %101

101:                                              ; preds = %100, %96
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialIdE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !13
  %102 = getelementptr inbounds %class.polynomial, ptr %4, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !18
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  call void @_ZdaPv(ptr noundef nonnull %103) #18
  br label %106

106:                                              ; preds = %105, %101
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void

107:                                              ; preds = %78, %40
  %108 = phi { ptr, i32 } [ %41, %40 ], [ %79, %78 ]
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialISt7complexIdEE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !13
  %109 = getelementptr inbounds %class.polynomial, ptr %7, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !24
  %111 = icmp eq ptr %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  call void @_ZdaPv(ptr noundef nonnull %110) #18
  br label %113

113:                                              ; preds = %112, %107, %38
  %114 = phi { ptr, i32 } [ %39, %38 ], [ %108, %107 ], [ %108, %112 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialISt7complexIdEE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !13
  %115 = getelementptr inbounds %class.polynomial, ptr %6, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !24
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  call void @_ZdaPv(ptr noundef nonnull %116) #18
  br label %119

119:                                              ; preds = %118, %113, %36
  %120 = phi { ptr, i32 } [ %37, %36 ], [ %114, %113 ], [ %114, %118 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  br label %121

121:                                              ; preds = %119, %19
  %122 = phi { ptr, i32 } [ %120, %119 ], [ %20, %19 ]
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialIdE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !13
  %123 = getelementptr inbounds %class.polynomial, ptr %5, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !18
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %121
  call void @_ZdaPv(ptr noundef nonnull %124) #18
  br label %127

127:                                              ; preds = %126, %121, %17
  %128 = phi { ptr, i32 } [ %18, %17 ], [ %122, %121 ], [ %122, %126 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialIdE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !13
  %129 = getelementptr inbounds %class.polynomial, ptr %4, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !18
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  call void @_ZdaPv(ptr noundef nonnull %130) #18
  br label %133

133:                                              ; preds = %132, %127
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  resume { ptr, i32 } %128
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef nonnull align 8 dereferenceable(24) ptr @_ZN10polynomialIdEaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #8 comdat align 2 {
  %3 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !15
  %5 = getelementptr inbounds %class.polynomial, ptr %1, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !15
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  tail call void @_ZdaPv(ptr noundef nonnull %10) #18
  %13 = load i64, ptr %5, align 8, !tbaa !15
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i64 [ %6, %8 ], [ %13, %12 ]
  store i64 %15, ptr %3, align 8, !tbaa !15
  %16 = icmp ugt i64 %15, 2305843009213693951
  %17 = shl i64 %15, 3
  %18 = select i1 %16, i64 -1, i64 %17
  %19 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %18) #17
  store ptr %19, ptr %9, align 8, !tbaa !18
  br label %20

20:                                               ; preds = %14, %2
  %21 = phi i64 [ %15, %14 ], [ %4, %2 ]
  %22 = getelementptr inbounds %class.polynomial, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !18
  %24 = icmp eq i64 %21, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  br label %28

28:                                               ; preds = %28, %25
  %29 = phi i64 [ 0, %25 ], [ %33, %28 ]
  %30 = getelementptr inbounds double, ptr %23, i64 %29
  %31 = load double, ptr %30, align 8, !tbaa !20
  %32 = getelementptr inbounds double, ptr %27, i64 %29
  store double %31, ptr %32, align 8, !tbaa !20
  %33 = add nuw i64 %29, 1
  %34 = icmp eq i64 %33, %21
  br i1 %34, label %35, label %28, !llvm.loop !28

35:                                               ; preds = %28, %20
  ret ptr %0
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize uwtable
define internal void @_ZN10polynomialIdEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialIdE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !13
  %3 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !18
  %4 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %class.polynomial, ptr %1, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !15
  store i64 %6, ptr %4, align 8, !tbaa !15
  %7 = icmp ugt i64 %6, 2305843009213693951
  %8 = shl i64 %6, 3
  %9 = select i1 %7, i64 -1, i64 %8
  %10 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %9) #17
  store ptr %10, ptr %3, align 8, !tbaa !18
  %11 = getelementptr inbounds %class.polynomial, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  %13 = icmp eq i64 %6, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %14, %2
  %15 = phi i64 [ %19, %14 ], [ 0, %2 ]
  %16 = getelementptr inbounds double, ptr %12, i64 %15
  %17 = load double, ptr %16, align 8, !tbaa !20
  %18 = getelementptr inbounds double, ptr %10, i64 %15
  store double %17, ptr %18, align 8, !tbaa !20
  %19 = add nuw i64 %15, 1
  %20 = icmp eq i64 %19, %6
  br i1 %20, label %21, label %14, !llvm.loop !28

21:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef i64 @_ZN10polynomialIdE11stretch_fftEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !15
  br label %4

4:                                                ; preds = %8, %1
  %5 = phi i64 [ 1, %1 ], [ %7, %8 ]
  %6 = icmp ugt i64 %3, %5
  %7 = shl i64 %5, 1
  br i1 %6, label %8, label %15

8:                                                ; preds = %4
  %9 = icmp eq i64 %7, 0
  br i1 %9, label %10, label %4, !llvm.loop !29

10:                                               ; preds = %8
  %11 = tail call ptr @__cxa_allocate_exception(i64 16) #15
  invoke void @_ZNSt14overflow_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.3) #14
          to label %12 unwind label %13

12:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTISt14overflow_error, ptr nonnull @_ZNSt14overflow_errorD1Ev) #19
  unreachable

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #15
  resume { ptr, i32 } %14

15:                                               ; preds = %4
  %.lcssa = phi i64 [ %7, %4 ]
  %16 = sub i64 %.lcssa, %3
  %17 = icmp eq i64 %.lcssa, %3
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN10polynomialIdE7stretchEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %16) #14
  br label %20

20:                                               ; preds = %18, %15
  ret i64 %16
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef nonnull align 8 dereferenceable(24) ptr @_ZN10polynomialIdE7stretchEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #8 comdat align 2 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !15
  %9 = add i64 %8, %1
  store i64 %9, ptr %7, align 8, !tbaa !15
  %10 = icmp ugt i64 %9, 2305843009213693951
  %11 = shl i64 %9, 3
  %12 = select i1 %10, i64 -1, i64 %11
  %13 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %12) #17
  store ptr %13, ptr %5, align 8, !tbaa !18
  %14 = icmp eq i64 %8, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %21, %4
  %16 = icmp ult i64 %8, %9
  br i1 %16, label %17, label %28

17:                                               ; preds = %15
  %18 = shl i64 %8, 3
  %19 = getelementptr i8, ptr %13, i64 %18
  %20 = shl nuw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %19, i8 0, i64 %20, i1 false), !tbaa !20
  br label %28

21:                                               ; preds = %21, %4
  %22 = phi i64 [ %26, %21 ], [ 0, %4 ]
  %23 = getelementptr inbounds double, ptr %6, i64 %22
  %24 = load double, ptr %23, align 8, !tbaa !20
  %25 = getelementptr inbounds double, ptr %13, i64 %22
  store double %24, ptr %25, align 8, !tbaa !20
  %26 = add nuw i64 %22, 1
  %27 = icmp eq i64 %26, %8
  br i1 %27, label %15, label %21, !llvm.loop !30

28:                                               ; preds = %17, %15, %2
  ret ptr %0
}

; Function Attrs: optsize uwtable
define internal void @_ZN10polynomialIdE3fftERKS0_(ptr noalias sret(%class.polynomial) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::complex", align 16
  %4 = alloca %"class.std::complex", align 8
  %5 = alloca %"class.std::complex", align 16
  %6 = getelementptr inbounds %class.polynomial, ptr %1, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !15
  br label %8

8:                                                ; preds = %12, %2
  %9 = phi i64 [ 1, %2 ], [ %14, %12 ]
  %10 = phi i64 [ 0, %2 ], [ %13, %12 ]
  %11 = icmp ult i64 %9, %7
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = add nuw nsw i64 %10, 1
  %14 = shl i64 %9, 1
  %15 = icmp eq i64 %13, 64
  br i1 %15, label %16, label %8, !llvm.loop !31

16:                                               ; preds = %12, %8
  %17 = phi i64 [ 64, %12 ], [ %10, %8 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %18 = getelementptr inbounds { double, double }, ptr %4, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void @_ZN10polynomialIdE11bit_reverseERKS0_(ptr sret(%class.polynomial) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %19 = icmp eq i64 %17, 0
  br i1 %19, label %66, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 1
  br label %22

22:                                               ; preds = %61, %20
  %23 = phi i64 [ 2, %20 ], [ %62, %61 ]
  %24 = phi i64 [ 1, %20 ], [ %63, %61 ]
  %25 = phi i64 [ 0, %20 ], [ %64, %61 ]
  %26 = uitofp i64 %23 to double
  %27 = call noundef { double, double } @__divdc3(double noundef 0.000000e+00, double noundef 0x401921FB54442D18, double noundef %26, double noundef 0.000000e+00) #20
  %28 = extractvalue { double, double } %27, 0
  %29 = extractvalue { double, double } %27, 1
  %30 = call { double, double } @cexp(double noundef %28, double noundef %29) #20
  %31 = extractvalue { double, double } %30, 0
  %32 = extractvalue { double, double } %30, 1
  store double %31, ptr %4, align 8, !tbaa.struct !32
  store double %32, ptr %18, align 8, !tbaa.struct !34
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %5, align 16
  %33 = add i64 %24, -1
  br label %34

34:                                               ; preds = %57, %22
  %35 = phi i64 [ 0, %22 ], [ %59, %57 ]
  %36 = load i64, ptr %6, align 8, !tbaa !15
  %37 = add i64 %36, -1
  %38 = icmp ugt i64 %35, %37
  br i1 %38, label %57, label %39

39:                                               ; preds = %39, %34
  %40 = phi i64 [ %53, %39 ], [ %35, %34 ]
  %41 = add i64 %40, %24
  %42 = load ptr, ptr %21, align 8, !tbaa !24
  %43 = getelementptr inbounds %"class.std::complex", ptr %42, i64 %41
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !32
  %44 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt7complexIdEmLIdEERS0_RKS_IT_E(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %43) #14
  %45 = load <2 x double>, ptr %3, align 16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  %46 = load ptr, ptr %21, align 8, !tbaa !24
  %47 = getelementptr inbounds %"class.std::complex", ptr %46, i64 %40
  %48 = load <2 x double>, ptr %47, align 8
  %49 = fadd <2 x double> %45, %48
  store <2 x double> %49, ptr %47, align 8
  %50 = load ptr, ptr %21, align 8, !tbaa !24
  %51 = getelementptr inbounds %"class.std::complex", ptr %50, i64 %41
  %52 = fsub <2 x double> %48, %45
  store <2 x double> %52, ptr %51, align 8
  %53 = add i64 %40, %23
  %54 = load i64, ptr %6, align 8, !tbaa !15
  %55 = add i64 %54, -1
  %56 = icmp ugt i64 %53, %55
  br i1 %56, label %57, label %39, !llvm.loop !35

57:                                               ; preds = %39, %34
  %58 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt7complexIdEmLIdEERS0_RKS_IT_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  %59 = add i64 %35, 1
  %60 = icmp ugt i64 %59, %33
  br i1 %60, label %61, label %34, !llvm.loop !36

61:                                               ; preds = %57
  %62 = shl i64 %23, 1
  %63 = shl i64 %24, 1
  %64 = add nuw nsw i64 %25, 1
  %65 = icmp eq i64 %64, %17
  br i1 %65, label %66, label %22, !llvm.loop !37

66:                                               ; preds = %61, %16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZN10polynomialIdE11inverse_fftERKS_ISt7complexIdEE(ptr noalias sret(%class.polynomial) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::complex", align 16
  %4 = alloca %"class.std::complex", align 8
  %5 = alloca %"class.std::complex", align 16
  %6 = getelementptr inbounds %class.polynomial, ptr %1, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !38
  br label %8

8:                                                ; preds = %12, %2
  %9 = phi i64 [ 1, %2 ], [ %14, %12 ]
  %10 = phi i64 [ 0, %2 ], [ %13, %12 ]
  %11 = icmp ult i64 %9, %7
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = add nuw nsw i64 %10, 1
  %14 = shl i64 %9, 1
  %15 = icmp eq i64 %13, 64
  br i1 %15, label %16, label %8, !llvm.loop !31

16:                                               ; preds = %12, %8
  %17 = phi i64 [ 64, %12 ], [ %10, %8 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %18 = getelementptr inbounds { double, double }, ptr %4, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void @_ZN10polynomialIdE11bit_reverseERKS_ISt7complexIdEE(ptr sret(%class.polynomial) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %19 = icmp eq i64 %17, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 1
  br label %27

22:                                               ; preds = %66, %16
  %23 = load i64, ptr %6, align 8, !tbaa !38
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %84, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 1
  br label %71

27:                                               ; preds = %66, %20
  %28 = phi i64 [ 2, %20 ], [ %67, %66 ]
  %29 = phi i64 [ 1, %20 ], [ %68, %66 ]
  %30 = phi i64 [ 0, %20 ], [ %69, %66 ]
  %31 = uitofp i64 %28 to double
  %32 = call noundef { double, double } @__divdc3(double noundef -0.000000e+00, double noundef 0xC01921FB54442D18, double noundef %31, double noundef 0.000000e+00) #20
  %33 = extractvalue { double, double } %32, 0
  %34 = extractvalue { double, double } %32, 1
  %35 = call { double, double } @cexp(double noundef %33, double noundef %34) #20
  %36 = extractvalue { double, double } %35, 0
  %37 = extractvalue { double, double } %35, 1
  store double %36, ptr %4, align 8, !tbaa.struct !32
  store double %37, ptr %18, align 8, !tbaa.struct !34
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %5, align 16
  %38 = add i64 %29, -1
  br label %39

39:                                               ; preds = %62, %27
  %40 = phi i64 [ 0, %27 ], [ %64, %62 ]
  %41 = load i64, ptr %6, align 8, !tbaa !38
  %42 = add i64 %41, -1
  %43 = icmp ugt i64 %40, %42
  br i1 %43, label %62, label %44

44:                                               ; preds = %44, %39
  %45 = phi i64 [ %58, %44 ], [ %40, %39 ]
  %46 = add i64 %45, %29
  %47 = load ptr, ptr %21, align 8, !tbaa !24
  %48 = getelementptr inbounds %"class.std::complex", ptr %47, i64 %46
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !32
  %49 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt7complexIdEmLIdEERS0_RKS_IT_E(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %48) #14
  %50 = load <2 x double>, ptr %3, align 16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  %51 = load ptr, ptr %21, align 8, !tbaa !24
  %52 = getelementptr inbounds %"class.std::complex", ptr %51, i64 %45
  %53 = load <2 x double>, ptr %52, align 8
  %54 = fadd <2 x double> %50, %53
  store <2 x double> %54, ptr %52, align 8
  %55 = load ptr, ptr %21, align 8, !tbaa !24
  %56 = getelementptr inbounds %"class.std::complex", ptr %55, i64 %46
  %57 = fsub <2 x double> %53, %50
  store <2 x double> %57, ptr %56, align 8
  %58 = add i64 %45, %28
  %59 = load i64, ptr %6, align 8, !tbaa !38
  %60 = add i64 %59, -1
  %61 = icmp ugt i64 %58, %60
  br i1 %61, label %62, label %44, !llvm.loop !39

62:                                               ; preds = %44, %39
  %63 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt7complexIdEmLIdEERS0_RKS_IT_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  %64 = add i64 %40, 1
  %65 = icmp ugt i64 %64, %38
  br i1 %65, label %66, label %39, !llvm.loop !40

66:                                               ; preds = %62
  %67 = shl i64 %28, 1
  %68 = shl i64 %29, 1
  %69 = add nuw nsw i64 %30, 1
  %70 = icmp eq i64 %69, %17
  br i1 %70, label %22, label %27, !llvm.loop !41

71:                                               ; preds = %71, %25
  %72 = phi i64 [ %23, %25 ], [ %82, %71 ]
  %73 = phi i64 [ 0, %25 ], [ %81, %71 ]
  %74 = uitofp i64 %72 to double
  %75 = load ptr, ptr %26, align 8, !tbaa !24
  %76 = getelementptr inbounds %"class.std::complex", ptr %75, i64 %73
  %77 = load <2 x double>, ptr %76, align 8
  %78 = insertelement <2 x double> poison, double %74, i64 0
  %79 = shufflevector <2 x double> %78, <2 x double> poison, <2 x i32> zeroinitializer
  %80 = fdiv <2 x double> %77, %79
  store <2 x double> %80, ptr %76, align 8
  %81 = add nuw i64 %73, 1
  %82 = load i64, ptr %6, align 8, !tbaa !38
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %71, label %84, !llvm.loop !42

84:                                               ; preds = %71, %22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt7complexIdEmLIdEERS0_RKS_IT_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #10 comdat align 2 {
  %3 = load <2 x double>, ptr %1, align 8
  %4 = load <2 x double>, ptr %0, align 8
  %5 = fmul <2 x double> %3, %4
  %6 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %7 = fmul <2 x double> %6, %4
  %8 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %9 = fsub <2 x double> %5, %8
  %10 = extractelement <2 x double> %9, i64 0
  %11 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %12 = fadd <2 x double> %7, %11
  %13 = extractelement <2 x double> %12, i64 0
  %14 = fcmp uno double %10, 0.000000e+00
  br i1 %14, label %15, label %25, !prof !43

15:                                               ; preds = %2
  %16 = fcmp uno double %13, 0.000000e+00
  br i1 %16, label %17, label %25, !prof !43

17:                                               ; preds = %15
  %18 = extractelement <2 x double> %3, i64 0
  %19 = extractelement <2 x double> %3, i64 1
  %20 = extractelement <2 x double> %4, i64 0
  %21 = extractelement <2 x double> %4, i64 1
  %22 = tail call noundef { double, double } @__muldc3(double noundef %20, double noundef %21, double noundef %18, double noundef %19) #20
  %23 = extractvalue { double, double } %22, 0
  %24 = extractvalue { double, double } %22, 1
  br label %25

25:                                               ; preds = %17, %15, %2
  %26 = phi double [ %10, %2 ], [ %10, %15 ], [ %23, %17 ]
  %27 = phi double [ %13, %2 ], [ %13, %15 ], [ %24, %17 ]
  %28 = getelementptr inbounds { double, double }, ptr %0, i64 0, i32 1
  store double %26, ptr %0, align 8
  store double %27, ptr %28, align 8
  ret ptr %0
}

; Function Attrs: optsize uwtable
define internal noundef nonnull align 8 dereferenceable(24) ptr @_ZN10polynomialISt7complexIdEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %class.polynomial, ptr %1, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !38
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  tail call void @_ZdaPv(ptr noundef nonnull %10) #18
  %13 = load i64, ptr %5, align 8, !tbaa !38
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i64 [ %6, %8 ], [ %13, %12 ]
  store i64 %15, ptr %3, align 8, !tbaa !38
  %16 = icmp ugt i64 %15, 1152921504606846975
  %17 = shl i64 %15, 4
  %18 = select i1 %16, i64 -1, i64 %17
  %19 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %18) #17
  %20 = icmp eq i64 %15, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %19, i8 0, i64 %17, i1 false)
  br label %22

22:                                               ; preds = %21, %14
  store ptr %19, ptr %9, align 8, !tbaa !24
  br label %23

23:                                               ; preds = %22, %2
  %24 = phi i64 [ %15, %22 ], [ %4, %2 ]
  %25 = getelementptr inbounds %class.polynomial, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !24
  %27 = icmp eq i64 %24, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 1
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i64 [ 0, %28 ], [ %35, %30 ]
  %32 = getelementptr inbounds %"class.std::complex", ptr %26, i64 %31
  %33 = load ptr, ptr %29, align 8, !tbaa !24
  %34 = getelementptr inbounds %"class.std::complex", ptr %33, i64 %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %32, i64 16, i1 false), !tbaa.struct !32
  %35 = add nuw i64 %31, 1
  %36 = load i64, ptr %3, align 8, !tbaa !38
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %30, label %38, !llvm.loop !44

38:                                               ; preds = %30, %23
  ret ptr %0
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN10polynomialISt7complexIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialISt7complexIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !13
  %2 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %3) #18
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN10polynomialISt7complexIdEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialISt7complexIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !13
  %2 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %3) #18
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

declare { double, double } @__muldc3(double, double, double, double) local_unnamed_addr

; Function Attrs: optsize uwtable
define internal void @_ZN10polynomialIdE11bit_reverseERKS_ISt7complexIdEE(ptr noalias sret(%class.polynomial) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %class.polynomial, ptr %1, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !38
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi i64 [ 1, %2 ], [ %11, %9 ]
  %7 = phi i64 [ 0, %2 ], [ %10, %9 ]
  %8 = icmp ult i64 %6, %4
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = add nuw nsw i64 %7, 1
  %11 = shl i64 %6, 1
  %12 = icmp eq i64 %10, 64
  br i1 %12, label %13, label %5, !llvm.loop !31

13:                                               ; preds = %9, %5
  %14 = phi i64 [ 64, %9 ], [ %7, %5 ]
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialISt7complexIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !13
  %15 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !24
  %16 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 2
  store i64 %4, ptr %16, align 8, !tbaa !38
  %17 = icmp ugt i64 %4, 1152921504606846975
  %18 = shl i64 %4, 4
  %19 = select i1 %17, i64 -1, i64 %18
  %20 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %19) #17
  %21 = icmp eq i64 %4, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store ptr %20, ptr %15, align 8, !tbaa !24
  br label %49

23:                                               ; preds = %13
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %20, i8 0, i64 %18, i1 false)
  store ptr %20, ptr %15, align 8, !tbaa !24
  %24 = getelementptr inbounds %class.polynomial, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = trunc i64 %14 to i32
  %27 = add i32 %26, -1
  %28 = shl nuw i32 1, %27
  %29 = sext i32 %28 to i64
  br label %30

30:                                               ; preds = %45, %23
  %31 = phi i64 [ 0, %23 ], [ %47, %45 ]
  %32 = getelementptr inbounds %"class.std::complex", ptr %25, i64 %31
  %33 = load <2 x double>, ptr %32, align 8
  br label %34

34:                                               ; preds = %34, %30
  %35 = phi i64 [ 0, %30 ], [ %41, %34 ]
  %36 = phi i64 [ 1, %30 ], [ %43, %34 ]
  %37 = phi i64 [ %29, %30 ], [ %42, %34 ]
  %38 = and i64 %36, %31
  %39 = icmp eq i64 %38, 0
  %40 = select i1 %39, i64 0, i64 %37
  %41 = or i64 %40, %35
  %42 = lshr i64 %37, 1
  %43 = shl i64 %36, 1
  %44 = icmp ult i64 %37, 2
  br i1 %44, label %45, label %34, !llvm.loop !45

45:                                               ; preds = %34
  %.lcssa = phi i64 [ %41, %34 ]
  %46 = getelementptr inbounds %"class.std::complex", ptr %20, i64 %.lcssa
  store <2 x double> %33, ptr %46, align 8
  %47 = add nuw i64 %31, 1
  %48 = icmp eq i64 %47, %4
  br i1 %48, label %49, label %30, !llvm.loop !46

49:                                               ; preds = %45, %22
  ret void
}

declare { double, double } @__divdc3(double, double, double, double) local_unnamed_addr

; Function Attrs: nounwind optsize
declare { double, double } @cexp(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize uwtable
define internal void @_ZN10polynomialIdE11bit_reverseERKS0_(ptr noalias sret(%class.polynomial) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %class.polynomial, ptr %1, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !15
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi i64 [ 1, %2 ], [ %11, %9 ]
  %7 = phi i64 [ 0, %2 ], [ %10, %9 ]
  %8 = icmp ult i64 %6, %4
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = add nuw nsw i64 %7, 1
  %11 = shl i64 %6, 1
  %12 = icmp eq i64 %10, 64
  br i1 %12, label %13, label %5, !llvm.loop !31

13:                                               ; preds = %9, %5
  %14 = phi i64 [ 64, %9 ], [ %7, %5 ]
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialISt7complexIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !13
  %15 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !24
  %16 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 2
  store i64 %4, ptr %16, align 8, !tbaa !38
  %17 = icmp ugt i64 %4, 1152921504606846975
  %18 = shl i64 %4, 4
  %19 = select i1 %17, i64 -1, i64 %18
  %20 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %19) #17
  %21 = icmp eq i64 %4, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store ptr %20, ptr %15, align 8, !tbaa !24
  br label %50

23:                                               ; preds = %13
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %20, i8 0, i64 %18, i1 false)
  store ptr %20, ptr %15, align 8, !tbaa !24
  %24 = getelementptr inbounds %class.polynomial, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !18
  %26 = trunc i64 %14 to i32
  %27 = add i32 %26, -1
  %28 = shl nuw i32 1, %27
  %29 = sext i32 %28 to i64
  br label %30

30:                                               ; preds = %45, %23
  %31 = phi i64 [ 0, %23 ], [ %48, %45 ]
  %32 = getelementptr inbounds double, ptr %25, i64 %31
  %33 = load double, ptr %32, align 8, !tbaa !20
  br label %34

34:                                               ; preds = %34, %30
  %35 = phi i64 [ 0, %30 ], [ %41, %34 ]
  %36 = phi i64 [ 1, %30 ], [ %43, %34 ]
  %37 = phi i64 [ %29, %30 ], [ %42, %34 ]
  %38 = and i64 %36, %31
  %39 = icmp eq i64 %38, 0
  %40 = select i1 %39, i64 0, i64 %37
  %41 = or i64 %40, %35
  %42 = lshr i64 %37, 1
  %43 = shl i64 %36, 1
  %44 = icmp ult i64 %37, 2
  br i1 %44, label %45, label %34, !llvm.loop !45

45:                                               ; preds = %34
  %.lcssa = phi i64 [ %41, %34 ]
  %46 = getelementptr inbounds %"class.std::complex", ptr %20, i64 %.lcssa
  %47 = getelementptr inbounds { double, double }, ptr %46, i64 0, i32 1
  store double %33, ptr %46, align 8
  store double 0.000000e+00, ptr %47, align 8
  %48 = add nuw i64 %31, 1
  %49 = icmp eq i64 %48, %4
  br i1 %49, label %50, label %30, !llvm.loop !47

50:                                               ; preds = %45, %22
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZNSt14overflow_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt14overflow_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN10polynomialIdED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialIdE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !13
  %2 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %3) #18
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN10polynomialIdED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTV10polynomialIdE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !13
  %2 = getelementptr inbounds %class.polynomial, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %3) #18
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

attributes #0 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize willreturn memory(read) }
attributes #17 = { builtin optsize allocsize(0) }
attributes #18 = { builtin nounwind optsize }
attributes #19 = { noreturn }
attributes #20 = { nounwind optsize }

!llvm.ident = !{!2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}

!0 = !{i64 16, !"_ZTS10polynomialIdE"}
!1 = !{i64 16, !"_ZTS10polynomialISt7complexIdEE"}
!2 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 1, !"ThinLTO", i32 0}
!8 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !12, i64 0}
!15 = !{!16, !17, i64 16}
!16 = !{!"_ZTS10polynomialIdE", !10, i64 8, !17, i64 16}
!17 = !{!"long", !11, i64 0}
!18 = !{!16, !10, i64 8}
!19 = !{!17, !17, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"double", !11, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!25, !10, i64 8}
!25 = !{!"_ZTS10polynomialISt7complexIdEE", !10, i64 8, !17, i64 16}
!26 = distinct !{!26, !23}
!27 = distinct !{!27, !23}
!28 = distinct !{!28, !23}
!29 = distinct !{!29, !23}
!30 = distinct !{!30, !23}
!31 = distinct !{!31, !23}
!32 = !{i64 0, i64 16, !33}
!33 = !{!11, !11, i64 0}
!34 = !{i64 0, i64 8, !33}
!35 = distinct !{!35, !23}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !23}
!38 = !{!25, !17, i64 16}
!39 = distinct !{!39, !23}
!40 = distinct !{!40, !23}
!41 = distinct !{!41, !23}
!42 = distinct !{!42, !23}
!43 = !{!"branch_weights", i32 1, i32 1048575}
!44 = distinct !{!44, !23}
!45 = distinct !{!45, !23}
!46 = distinct !{!46, !23}
!47 = distinct !{!47, !23}
