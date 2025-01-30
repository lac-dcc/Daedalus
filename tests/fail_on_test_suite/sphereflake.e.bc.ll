; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Misc-C++/Large/sphereflake.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.v_t = type { double, double, double }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%struct.hit_t = type { %struct.v_t, double }
%struct.ray_t = type { %struct.v_t, %struct.v_t }
%struct.node_t = type { %struct.hit_t, %struct.hit_t, i64 }
%struct.basis_t = type { %struct.v_t, %struct.v_t, %struct.v_t }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

$_ZNK3v_t4normEv = comdat any

$_ZN6node_t9intersectILb0EEEvRK5ray_tR5hit_t = comdat any

$_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t = comdat any

$_ZNK8sphere_t9intersectERK5ray_t = comdat any

$_ZN7basis_tC2ERK3v_t = comdat any

@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_sphereflake.cpp, ptr null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZL5light = internal global %struct.v_t zeroinitializer, align 16
@_ZL4pool = internal unnamed_addr global ptr null, align 8
@_ZL3end = internal unnamed_addr global ptr null, align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [4 x i8] c"P2\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\0A256\0A\00", align 1
@_ZL4grid = internal unnamed_addr constant [4 x [2 x double]] [[2 x double] [double -1.000000e+00, double 0xBFD5555555555555], [2 x double] [double 0x3FD5555555555555, double -1.000000e+00], [2 x double] [double 0xBFD5555555555555, double 1.000000e+00], [2 x double] [double 1.000000e+00, double 0x3FD5555555555555]], align 16

; Function Attrs: optsize uwtable
define internal void @_GLOBAL__sub_I_sphereflake.cpp() #0 section ".text.startup" {
  %1 = alloca %struct.v_t, align 16
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #15
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #16
  store <2 x double> <double -5.000000e-01, double -6.500000e-01>, ptr %1, align 16, !tbaa !7
  %3 = getelementptr inbounds %struct.v_t, ptr %1, i64 0, i32 2
  store double 9.000000e-01, ptr %3, align 16, !tbaa !11
  call void @_ZNK3v_t4normEv(ptr nonnull sret(%struct.v_t) align 8 @_ZL5light, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #16
  %4 = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZL5light)
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize uwtable
define internal void @_ZNK3v_t4normEv(ptr noalias sret(%struct.v_t) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #0 comdat align 2 {
  %3 = load <2 x double>, ptr %1, align 8, !tbaa !7
  %4 = fmul <2 x double> %3, %3
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %6 = fadd <2 x double> %4, %5
  %7 = extractelement <2 x double> %6, i64 0
  %8 = getelementptr inbounds %struct.v_t, ptr %1, i64 0, i32 2
  %9 = load double, ptr %8, align 8, !tbaa !11
  %10 = fmul double %9, %9
  %11 = fadd double %7, %10
  %12 = fcmp oeq double %11, 0x7FF0000000000000
  br i1 %12, label %26, label %13

13:                                               ; preds = %13, %2
  %14 = phi i32 [ %23, %13 ], [ 100, %2 ]
  %15 = phi double [ %18, %13 ], [ 1.000000e+00, %2 ]
  %16 = fdiv double %11, %15
  %17 = fadd double %15, %16
  %18 = fmul double %17, 5.000000e-01
  %19 = fsub double %18, %15
  %20 = fcmp ule double %19, 0x3D719799812DEA11
  %21 = fcmp uge double %19, 0xBD719799812DEA11
  %22 = and i1 %20, %21
  %23 = add nsw i32 %14, -1
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %26, label %13, !llvm.loop !13

26:                                               ; preds = %13, %2
  %27 = phi double [ 0x7FF0000000000000, %2 ], [ %18, %13 ]
  %28 = fdiv double 1.000000e+00, %27
  %29 = fmul double %9, %28
  %30 = insertelement <2 x double> poison, double %28, i64 0
  %31 = shufflevector <2 x double> %30, <2 x double> poison, <2 x i32> zeroinitializer
  %32 = fmul <2 x double> %3, %31
  store <2 x double> %32, ptr %0, align 8, !tbaa !7, !alias.scope !15
  %33 = getelementptr inbounds %struct.v_t, ptr %0, i64 0, i32 2
  store double %29, ptr %33, align 8, !tbaa !11, !alias.scope !15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: norecurse optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #5 personality ptr @__gxx_personality_v0 {
  %3 = alloca %struct.hit_t, align 16
  %4 = alloca %struct.ray_t, align 16
  %5 = alloca %struct.hit_t, align 8
  %6 = alloca %struct.ray_t, align 16
  %7 = alloca [4 x %struct.v_t], align 16
  %8 = alloca %struct.v_t, align 8
  %9 = alloca %struct.v_t, align 16
  %10 = alloca %struct.v_t, align 8
  %11 = alloca %struct.v_t, align 8
  %12 = alloca %struct.v_t, align 16
  %13 = icmp eq i32 %0, 2
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = getelementptr inbounds ptr, ptr %1, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = tail call i32 @atoi(ptr nocapture noundef %16) #17
  %18 = tail call i32 @llvm.smax.i32(i32 %17, i32 2)
  %19 = icmp ugt i32 %18, 2
  br i1 %19, label %20, label %31

20:                                               ; preds = %14, %2
  %21 = phi i32 [ %18, %14 ], [ 6, %2 ]
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ %27, %22 ], [ 9, %20 ]
  %24 = phi i32 [ %25, %22 ], [ %21, %20 ]
  %25 = add nsw i32 %24, -1
  %26 = mul nsw i32 %23, 9
  %27 = add nsw i32 %26, 9
  %28 = icmp ugt i32 %24, 3
  br i1 %28, label %22, label %29, !llvm.loop !20

29:                                               ; preds = %22
  %.lcssa1 = phi i32 [ %26, %22 ]
  %30 = add nsw i32 %.lcssa1, 10
  br label %31

31:                                               ; preds = %29, %14
  %32 = phi i32 [ 2, %14 ], [ %21, %29 ]
  %33 = phi i32 [ 10, %14 ], [ %30, %29 ]
  %34 = sext i32 %33 to i64
  %35 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %34, i64 72)
  %36 = extractvalue { i64, i1 } %35, 1
  %37 = extractvalue { i64, i1 } %35, 0
  %38 = select i1 %36, i64 -1, i64 %37
  %39 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %38) #18
  store ptr %39, ptr @_ZL4pool, align 8, !tbaa !18
  %40 = getelementptr inbounds %struct.node_t, ptr %39, i64 %34
  store ptr %40, ptr @_ZL3end, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #16
  store <2 x double> <double 2.500000e-01, double 1.000000e+00>, ptr %12, align 16, !tbaa !7
  %41 = getelementptr inbounds %struct.v_t, ptr %12, i64 0, i32 2
  store double -5.000000e-01, ptr %41, align 16, !tbaa !11
  call void @_ZNK3v_t4normEv(ptr nonnull sret(%struct.v_t) align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %12) #15
  %42 = call fastcc noundef ptr @_ZL6createP6node_tii3v_tS1_d(ptr noundef nonnull %39, i32 noundef %32, i32 noundef %33, ptr noundef nonnull byval(%struct.v_t) align 8 %10, ptr noundef nonnull byval(%struct.v_t) align 8 %11, double noundef 1.000000e+00) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #16
  %43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3) #15
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1024) #15
  %45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull @.str.2, i64 noundef 1) #15
  %46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %44, i32 noundef 1024) #15
  %47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull @.str.3, i64 noundef 5) #15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #16
  %48 = getelementptr inbounds i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store double -4.500000e+00, ptr %48, align 16, !tbaa.struct !21
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #16
  br label %49

49:                                               ; preds = %49, %31
  %50 = phi i64 [ 0, %31 ], [ %62, %49 ]
  %51 = getelementptr inbounds [4 x [2 x double]], ptr @_ZL4grid, i64 0, i64 %50
  %52 = load <4 x double>, ptr %51, align 16, !tbaa !7
  %53 = shufflevector <4 x double> %52, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %54 = shufflevector <4 x double> %52, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %55 = fmul <2 x double> %53, <double 5.000000e-01, double 5.000000e-01>
  %56 = fadd <2 x double> %55, <double -5.120000e+02, double -5.120000e+02>
  %57 = fmul <2 x double> %54, <double 5.000000e-01, double 5.000000e-01>
  %58 = fadd <2 x double> %57, <double -5.120000e+02, double -5.120000e+02>
  %59 = getelementptr inbounds [4 x %struct.v_t], ptr %7, i64 0, i64 %50
  %60 = shufflevector <2 x double> %56, <2 x double> %58, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %61 = shufflevector <4 x double> %60, <4 x double> <double 0.000000e+00, double 0.000000e+00, double poison, double poison>, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %61, ptr %59, align 16
  %62 = add nuw i64 %50, 2
  %63 = icmp eq i64 %62, 4
  br i1 %63, label %64, label %49, !llvm.loop !22

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.v_t, ptr %9, i64 0, i32 2
  %66 = getelementptr inbounds %struct.ray_t, ptr %6, i64 0, i32 1
  %67 = getelementptr inbounds %struct.hit_t, ptr %3, i64 0, i32 1
  %68 = getelementptr inbounds %struct.v_t, ptr %3, i64 0, i32 2
  %69 = getelementptr inbounds %struct.ray_t, ptr %6, i64 0, i32 1, i32 2
  %70 = getelementptr inbounds i8, ptr %4, i64 16
  %71 = getelementptr inbounds %struct.ray_t, ptr %4, i64 0, i32 1
  %72 = getelementptr inbounds %struct.ray_t, ptr %4, i64 0, i32 1, i32 2
  %73 = getelementptr inbounds %struct.hit_t, ptr %5, i64 0, i32 1
  br label %74

74:                                               ; preds = %82, %64
  %75 = phi i32 [ 1024, %64 ], [ %84, %82 ]
  %76 = phi double [ 1.023000e+03, %64 ], [ %83, %82 ]
  br label %77

77:                                               ; preds = %86, %74
  %78 = phi i32 [ 1024, %74 ], [ %92, %86 ]
  %79 = phi double [ 0.000000e+00, %74 ], [ %91, %86 ]
  %80 = insertelement <2 x double> poison, double %79, i64 0
  %81 = insertelement <2 x double> %80, double %76, i64 1
  br label %94

82:                                               ; preds = %86
  %83 = fadd double %76, -1.000000e+00
  %84 = add nsw i32 %75, -1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %143, label %74, !llvm.loop !25

86:                                               ; preds = %138
  %.lcssa = phi double [ %140, %138 ]
  %87 = fmul double %.lcssa, 6.400000e+01
  %88 = fptosi double %87 to i32
  %89 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %88) #15
  %90 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef nonnull @.str.2, i64 noundef 1) #15
  %91 = fadd double %79, 1.000000e+00
  %92 = add nsw i32 %78, -1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %82, label %77, !llvm.loop !26

94:                                               ; preds = %138, %77
  %95 = phi i64 [ 0, %77 ], [ %141, %138 ]
  %96 = phi double [ 0.000000e+00, %77 ], [ %140, %138 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  %97 = getelementptr inbounds [4 x %struct.v_t], ptr %7, i64 0, i64 %95
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %98 = getelementptr inbounds [4 x %struct.v_t], ptr %7, i64 0, i64 %95, i32 2
  %99 = load double, ptr %98, align 8, !tbaa !11, !noalias !27
  %100 = fadd double %99, 1.024000e+03
  %101 = load <2 x double>, ptr %97, align 8, !tbaa !7, !noalias !27
  %102 = fadd <2 x double> %81, %101
  store <2 x double> %102, ptr %9, align 16, !tbaa !7, !alias.scope !27
  store double %100, ptr %65, align 16, !tbaa !11, !alias.scope !27
  call void @_ZNK3v_t4normEv(ptr nonnull sret(%struct.v_t) align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %9) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %66, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store double 0x7FF0000000000000, ptr %67, align 8, !tbaa !31
  call void @_ZN6node_t9intersectILb0EEEvRK5ray_tR5hit_t(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  %103 = load double, ptr %67, align 8, !tbaa !31
  %104 = fcmp oeq double %103, 0x7FF0000000000000
  br i1 %104, label %138, label %105

105:                                              ; preds = %94
  %106 = load <2 x double>, ptr %3, align 16, !tbaa !7
  %107 = load <2 x double>, ptr @_ZL5light, align 16, !tbaa !7
  %108 = fmul <2 x double> %106, %107
  %109 = shufflevector <2 x double> %108, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %110 = fadd <2 x double> %108, %109
  %111 = extractelement <2 x double> %110, i64 0
  %112 = load double, ptr %68, align 16, !tbaa !11
  %113 = load double, ptr getelementptr inbounds (%struct.v_t, ptr @_ZL5light, i64 0, i32 2), align 16, !tbaa !11
  %114 = fmul double %112, %113
  %115 = fadd double %111, %114
  %116 = fcmp ult double %115, 0.000000e+00
  br i1 %116, label %117, label %138

117:                                              ; preds = %105
  %118 = fneg double %115
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #16
  %119 = load double, ptr %69, align 8, !tbaa !11, !noalias !33
  %120 = fmul double %103, %119
  %121 = load double, ptr %48, align 16, !tbaa !11, !noalias !36
  %122 = fadd double %120, %121
  %123 = fmul <2 x double> %106, <double 0x3D719799812DEA11, double 0x3D719799812DEA11>
  %124 = fmul double %112, 0x3D719799812DEA11
  %125 = fadd double %124, %122
  %126 = fneg <2 x double> %107
  %127 = fneg double %113
  %128 = load <2 x double>, ptr %66, align 8, !tbaa !7, !noalias !33
  %129 = insertelement <2 x double> poison, double %103, i64 0
  %130 = shufflevector <2 x double> %129, <2 x double> poison, <2 x i32> zeroinitializer
  %131 = fmul <2 x double> %130, %128
  %132 = load <2 x double>, ptr %6, align 16, !tbaa !7, !noalias !36
  %133 = fadd <2 x double> %131, %132
  %134 = fadd <2 x double> %123, %133
  store <2 x double> %134, ptr %4, align 16
  store double %125, ptr %70, align 16, !tbaa.struct !21
  store <2 x double> %126, ptr %71, align 8
  store double %127, ptr %72, align 8, !tbaa.struct !21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store double 0x7FF0000000000000, ptr %73, align 8, !tbaa !31
  call void @_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  %135 = load double, ptr %73, align 8, !tbaa !31
  %136 = fcmp oeq double %135, 0x7FF0000000000000
  %137 = select i1 %136, double %118, double 0.000000e+00
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #16
  br label %138

138:                                              ; preds = %117, %105, %94
  %139 = phi double [ %137, %117 ], [ 0.000000e+00, %105 ], [ 0.000000e+00, %94 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  %140 = fadd double %96, %139
  %141 = add nuw nsw i64 %95, 1
  %142 = icmp eq i64 %141, 4
  br i1 %142, label %86, label %94, !llvm.loop !39

143:                                              ; preds = %82
  %144 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !40
  %145 = getelementptr i8, ptr %144, i64 -24
  %146 = load i64, ptr %145, align 8
  %147 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %146
  %148 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %147, i8 noundef signext 10) #15
  %149 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %148) #15
  %150 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %149) #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #16
  ret i32 0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize uwtable
define internal fastcc noundef nonnull ptr @_ZL6createP6node_tii3v_tS1_d(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly byval(%struct.v_t) align 8 %3, ptr noundef byval(%struct.v_t) align 8 %4, double noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.basis_t, align 8
  %8 = alloca %struct.v_t, align 16
  %9 = alloca %struct.v_t, align 16
  %10 = alloca %struct.v_t, align 16
  %11 = alloca %struct.v_t, align 16
  %12 = alloca %struct.v_t, align 16
  %13 = alloca %struct.v_t, align 16
  %14 = fmul double %5, 2.000000e+00
  %15 = icmp sgt i32 %1, 1
  %16 = select i1 %15, i32 %2, i32 1
  %17 = sext i32 %16 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %18 = getelementptr inbounds i8, ptr %0, i64 24
  store double %14, ptr %18, align 8, !tbaa.struct !21
  %19 = getelementptr inbounds %struct.node_t, ptr %0, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %20 = getelementptr inbounds %struct.node_t, ptr %0, i64 0, i32 1, i32 1
  store double %5, ptr %20, align 8, !tbaa.struct !21
  %21 = getelementptr inbounds %struct.node_t, ptr %0, i64 0, i32 2
  store i64 %17, ptr %21, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.node_t, ptr %0, i64 1
  %23 = icmp slt i32 %1, 2
  br i1 %23, label %124, label %24

24:                                               ; preds = %6
  %25 = add nsw i32 %2, -9
  %26 = sdiv i32 %25, 9
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 1)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #16
  call void @_ZN7basis_tC2ERK3v_t(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %28 = fdiv double %5, 3.000000e+00
  %29 = getelementptr inbounds %struct.v_t, ptr %4, i64 0, i32 2
  %30 = getelementptr inbounds %struct.basis_t, ptr %7, i64 0, i32 1
  %31 = getelementptr inbounds %struct.basis_t, ptr %7, i64 0, i32 1, i32 2
  %32 = getelementptr inbounds %struct.basis_t, ptr %7, i64 0, i32 2
  %33 = getelementptr inbounds %struct.basis_t, ptr %7, i64 0, i32 2, i32 2
  %34 = getelementptr inbounds %struct.v_t, ptr %9, i64 0, i32 2
  %35 = add nsw i32 %1, -1
  %36 = fadd double %28, %5
  %37 = getelementptr inbounds %struct.v_t, ptr %8, i64 0, i32 2
  %38 = load <2 x double>, ptr %3, align 8
  %39 = getelementptr inbounds %struct.v_t, ptr %3, i64 0, i32 2
  %40 = load double, ptr %39, align 8
  %41 = getelementptr inbounds %struct.v_t, ptr %10, i64 0, i32 2
  %42 = insertelement <2 x double> poison, double %36, i64 0
  %43 = shufflevector <2 x double> %42, <2 x double> poison, <2 x i32> zeroinitializer
  br label %49

44:                                               ; preds = %49
  %.lcssa2 = phi ptr [ %82, %49 ]
  %.lcssa1 = phi double [ %83, %49 ]
  %45 = fadd double %.lcssa1, 0xBFD657184AE74487
  %46 = getelementptr inbounds %struct.v_t, ptr %12, i64 0, i32 2
  %47 = getelementptr inbounds %struct.v_t, ptr %11, i64 0, i32 2
  %48 = getelementptr inbounds %struct.v_t, ptr %13, i64 0, i32 2
  br label %87

49:                                               ; preds = %49, %24
  %50 = phi i32 [ 0, %24 ], [ %84, %49 ]
  %51 = phi double [ 0.000000e+00, %24 ], [ %83, %49 ]
  %52 = phi ptr [ %22, %24 ], [ %82, %49 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  %53 = load double, ptr %29, align 8, !tbaa !11, !noalias !46
  %54 = fmul double %53, 2.000000e-01
  %55 = call fastcc noundef double @_ZL7LLVMsind(double noundef %51) #15
  %56 = load double, ptr %31, align 8, !tbaa !11, !noalias !49
  %57 = fmul double %55, %56
  %58 = fsub double %57, %54
  %59 = fadd double %51, 0x3FF921FB54524550
  %60 = call fastcc noundef double @_ZL7LLVMsind(double noundef %59) #15
  %61 = load double, ptr %33, align 8, !tbaa !11, !noalias !52
  %62 = fmul double %60, %61
  %63 = fadd double %58, %62
  %64 = load <2 x double>, ptr %4, align 8, !tbaa !7, !noalias !46
  %65 = fmul <2 x double> %64, <double 2.000000e-01, double 2.000000e-01>
  %66 = load <2 x double>, ptr %30, align 8, !tbaa !7, !noalias !49
  %67 = insertelement <2 x double> poison, double %55, i64 0
  %68 = shufflevector <2 x double> %67, <2 x double> poison, <2 x i32> zeroinitializer
  %69 = fmul <2 x double> %68, %66
  %70 = fsub <2 x double> %69, %65
  %71 = load <2 x double>, ptr %32, align 8, !tbaa !7, !noalias !52
  %72 = insertelement <2 x double> poison, double %60, i64 0
  %73 = shufflevector <2 x double> %72, <2 x double> poison, <2 x i32> zeroinitializer
  %74 = fmul <2 x double> %73, %71
  %75 = fadd <2 x double> %70, %74
  store <2 x double> %75, ptr %9, align 16, !tbaa !7, !alias.scope !55
  store double %63, ptr %34, align 16, !tbaa !11, !alias.scope !55
  call void @_ZNK3v_t4normEv(ptr nonnull sret(%struct.v_t) align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %9) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  %76 = load double, ptr %37, align 16, !tbaa !11, !noalias !58
  %77 = fmul double %36, %76
  %78 = fadd double %77, %40
  %79 = load <2 x double>, ptr %8, align 16, !tbaa !7, !noalias !58
  %80 = fmul <2 x double> %43, %79
  %81 = fadd <2 x double> %80, %38
  store <2 x double> %81, ptr %10, align 16, !tbaa !7, !alias.scope !61
  store double %78, ptr %41, align 16, !tbaa !11, !alias.scope !61
  %82 = call fastcc noundef ptr @_ZL6createP6node_tii3v_tS1_d(ptr noundef nonnull %52, i32 noundef %35, i32 noundef %27, ptr noundef nonnull byval(%struct.v_t) align 8 %10, ptr noundef nonnull byval(%struct.v_t) align 8 %8, double noundef %28) #15
  %83 = fadd double %51, 0x3FF0C152382D7365
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  %84 = add nuw nsw i32 %50, 1
  %85 = icmp eq i32 %84, 6
  br i1 %85, label %44, label %49, !llvm.loop !64

86:                                               ; preds = %87
  %.lcssa = phi ptr [ %120, %87 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #16
  br label %124

87:                                               ; preds = %87, %44
  %88 = phi i32 [ 0, %44 ], [ %122, %87 ]
  %89 = phi double [ %45, %44 ], [ %121, %87 ]
  %90 = phi ptr [ %.lcssa2, %44 ], [ %120, %87 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #16
  %91 = load double, ptr %29, align 8, !tbaa !11, !noalias !65
  %92 = fmul double %91, 6.000000e-01
  %93 = call fastcc noundef double @_ZL7LLVMsind(double noundef %89) #15
  %94 = load double, ptr %31, align 8, !tbaa !11, !noalias !68
  %95 = fmul double %93, %94
  %96 = fadd double %92, %95
  %97 = fadd double %89, 0x3FF921FB54524550
  %98 = call fastcc noundef double @_ZL7LLVMsind(double noundef %97) #15
  %99 = load double, ptr %33, align 8, !tbaa !11, !noalias !71
  %100 = fmul double %98, %99
  %101 = fadd double %96, %100
  %102 = load <2 x double>, ptr %4, align 8, !tbaa !7, !noalias !65
  %103 = fmul <2 x double> %102, <double 6.000000e-01, double 6.000000e-01>
  %104 = load <2 x double>, ptr %30, align 8, !tbaa !7, !noalias !68
  %105 = insertelement <2 x double> poison, double %93, i64 0
  %106 = shufflevector <2 x double> %105, <2 x double> poison, <2 x i32> zeroinitializer
  %107 = fmul <2 x double> %106, %104
  %108 = fadd <2 x double> %103, %107
  %109 = load <2 x double>, ptr %32, align 8, !tbaa !7, !noalias !71
  %110 = insertelement <2 x double> poison, double %98, i64 0
  %111 = shufflevector <2 x double> %110, <2 x double> poison, <2 x i32> zeroinitializer
  %112 = fmul <2 x double> %111, %109
  %113 = fadd <2 x double> %108, %112
  store <2 x double> %113, ptr %12, align 16, !tbaa !7, !alias.scope !74
  store double %101, ptr %46, align 16, !tbaa !11, !alias.scope !74
  call void @_ZNK3v_t4normEv(ptr nonnull sret(%struct.v_t) align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %12) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #16
  %114 = load double, ptr %47, align 16, !tbaa !11, !noalias !77
  %115 = fmul double %36, %114
  %116 = fadd double %115, %40
  %117 = load <2 x double>, ptr %11, align 16, !tbaa !7, !noalias !77
  %118 = fmul <2 x double> %43, %117
  %119 = fadd <2 x double> %118, %38
  store <2 x double> %119, ptr %13, align 16, !tbaa !7, !alias.scope !80
  store double %116, ptr %48, align 16, !tbaa !11, !alias.scope !80
  %120 = call fastcc noundef ptr @_ZL6createP6node_tii3v_tS1_d(ptr noundef nonnull %90, i32 noundef %35, i32 noundef %27, ptr noundef nonnull byval(%struct.v_t) align 8 %13, ptr noundef nonnull byval(%struct.v_t) align 8 %11, double noundef %28) #15
  %121 = fadd double %89, 0x4000C152382D7365
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #16
  %122 = add nuw nsw i32 %88, 1
  %123 = icmp eq i32 %122, 3
  br i1 %123, label %86, label %87, !llvm.loop !83

124:                                              ; preds = %86, %6
  %125 = phi ptr [ %.lcssa, %86 ], [ %22, %6 ]
  ret ptr %125
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: optsize uwtable
define internal void @_ZN6node_t9intersectILb0EEEvRK5ray_tR5hit_t(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #0 comdat align 2 {
  %3 = load ptr, ptr @_ZL4pool, align 8, !tbaa !18
  %4 = load ptr, ptr @_ZL3end, align 8, !tbaa !18
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %6, label %53

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hit_t, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.ray_t, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.ray_t, ptr %0, i64 0, i32 1, i32 2
  %10 = getelementptr inbounds %struct.v_t, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds i8, ptr %1, i64 16
  br label %12

12:                                               ; preds = %48, %6
  %13 = phi ptr [ %3, %6 ], [ %50, %48 ]
  %14 = tail call noundef double @_ZNK8sphere_t9intersectERK5ray_t(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  %15 = load double, ptr %7, align 8, !tbaa !31
  %16 = fcmp ult double %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.node_t, ptr %13, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !42
  br label %48

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.node_t, ptr %13, i64 0, i32 1
  %22 = tail call noundef double @_ZNK8sphere_t9intersectERK5ray_t(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  %23 = load double, ptr %7, align 8, !tbaa !31
  %24 = fcmp olt double %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %20
  store double %22, ptr %7, align 8, !tbaa !31
  %26 = load double, ptr %9, align 8, !tbaa !11, !noalias !84
  %27 = fmul double %22, %26
  %28 = load double, ptr %10, align 8, !tbaa !11, !noalias !87
  %29 = fadd double %27, %28
  %30 = getelementptr inbounds %struct.node_t, ptr %13, i64 0, i32 1, i32 0, i32 2
  %31 = load double, ptr %30, align 8, !tbaa !11, !noalias !90
  %32 = fsub double %29, %31
  %33 = getelementptr inbounds %struct.node_t, ptr %13, i64 0, i32 1, i32 1
  %34 = load double, ptr %33, align 8, !tbaa !95, !noalias !96
  %35 = fdiv double 1.000000e+00, %34
  %36 = fmul double %32, %35
  %37 = load <2 x double>, ptr %8, align 8, !tbaa !7, !noalias !84
  %38 = insertelement <2 x double> poison, double %22, i64 0
  %39 = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> zeroinitializer
  %40 = fmul <2 x double> %39, %37
  %41 = load <2 x double>, ptr %0, align 8, !tbaa !7, !noalias !87
  %42 = fadd <2 x double> %40, %41
  %43 = load <2 x double>, ptr %21, align 8, !tbaa !7, !noalias !90
  %44 = fsub <2 x double> %42, %43
  %45 = insertelement <2 x double> poison, double %35, i64 0
  %46 = shufflevector <2 x double> %45, <2 x double> poison, <2 x i32> zeroinitializer
  %47 = fmul <2 x double> %44, %46
  store <2 x double> %47, ptr %1, align 8
  store double %36, ptr %11, align 8, !tbaa.struct !21
  br label %48

48:                                               ; preds = %25, %20, %17
  %49 = phi i64 [ %19, %17 ], [ 1, %25 ], [ 1, %20 ]
  %50 = getelementptr inbounds %struct.node_t, ptr %13, i64 %49
  %51 = load ptr, ptr @_ZL3end, align 8, !tbaa !18
  %52 = icmp ult ptr %50, %51
  br i1 %52, label %12, label %53, !llvm.loop !97

53:                                               ; preds = %48, %2
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #12 comdat align 2 {
  %3 = load ptr, ptr @_ZL4pool, align 8, !tbaa !18
  %4 = load ptr, ptr @_ZL3end, align 8, !tbaa !18
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %6, label %27

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hit_t, ptr %1, i64 0, i32 1
  br label %8

8:                                                ; preds = %22, %6
  %9 = phi ptr [ %3, %6 ], [ %24, %22 ]
  %10 = tail call noundef double @_ZNK8sphere_t9intersectERK5ray_t(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  %11 = load double, ptr %7, align 8, !tbaa !31
  %12 = fcmp ult double %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.node_t, ptr %9, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !42
  br label %22

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.node_t, ptr %9, i64 0, i32 1
  %18 = tail call noundef double @_ZNK8sphere_t9intersectERK5ray_t(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  %19 = load double, ptr %7, align 8, !tbaa !31
  %20 = fcmp olt double %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  %.lcssa = phi double [ %18, %16 ]
  store double %.lcssa, ptr %7, align 8, !tbaa !31
  br label %27

22:                                               ; preds = %16, %13
  %23 = phi i64 [ %15, %13 ], [ 1, %16 ]
  %24 = getelementptr inbounds %struct.node_t, ptr %9, i64 %23
  %25 = load ptr, ptr @_ZL3end, align 8, !tbaa !18
  %26 = icmp ult ptr %24, %25
  br i1 %26, label %8, label %27, !llvm.loop !98

27:                                               ; preds = %22, %21, %2
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %0, i8 noundef signext %1) local_unnamed_addr #12 align 2 {
  %3 = getelementptr inbounds %"class.std::basic_ios", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZSt16__throw_bad_castv() #19
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::ctype", ptr %4, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !108
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = zext i8 %1 to i64
  %13 = getelementptr inbounds %"class.std::ctype", ptr %4, i64 0, i32 9, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !111
  br label %20

15:                                               ; preds = %7
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %4) #15
  %16 = load ptr, ptr %4, align 8, !tbaa !40
  %17 = getelementptr inbounds ptr, ptr %16, i64 6
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef signext i8 %18(ptr noundef nonnull align 8 dereferenceable(570) %4, i8 noundef signext %1) #15
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i8 [ %14, %11 ], [ %19, %15 ]
  ret i8 %21
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn optsize
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #13

; Function Attrs: optsize
declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

; Function Attrs: optsize uwtable
define internal noundef double @_ZNK8sphere_t9intersectERK5ray_t(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #0 comdat align 2 {
  %3 = getelementptr inbounds %struct.v_t, ptr %0, i64 0, i32 2
  %4 = load double, ptr %3, align 8, !tbaa !11, !noalias !112
  %5 = getelementptr inbounds %struct.v_t, ptr %1, i64 0, i32 2
  %6 = load double, ptr %5, align 8, !tbaa !11, !noalias !112
  %7 = fsub double %4, %6
  %8 = getelementptr inbounds %struct.ray_t, ptr %1, i64 0, i32 1
  %9 = load double, ptr %8, align 8, !tbaa !115
  %10 = getelementptr inbounds %struct.ray_t, ptr %1, i64 0, i32 1, i32 1
  %11 = load double, ptr %10, align 8, !tbaa !116
  %12 = getelementptr inbounds %struct.ray_t, ptr %1, i64 0, i32 1, i32 2
  %13 = load double, ptr %12, align 8, !tbaa !11
  %14 = load <2 x double>, ptr %0, align 8, !tbaa !7, !noalias !112
  %15 = load <2 x double>, ptr %1, align 8, !tbaa !7, !noalias !112
  %16 = fsub <2 x double> %14, %15
  %17 = insertelement <2 x double> %16, double %11, i64 1
  %18 = fmul <2 x double> %16, %17
  %19 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %20 = insertelement <2 x double> %19, double %9, i64 1
  %21 = fmul <2 x double> %19, %20
  %22 = fadd <2 x double> %18, %21
  %23 = insertelement <2 x double> poison, double %7, i64 0
  %24 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> zeroinitializer
  %25 = insertelement <2 x double> %24, double %13, i64 1
  %26 = fmul <2 x double> %24, %25
  %27 = fadd <2 x double> %22, %26
  %28 = extractelement <2 x double> %27, i64 1
  %29 = fmul double %28, %28
  %30 = extractelement <2 x double> %27, i64 0
  %31 = fsub double %29, %30
  %32 = getelementptr inbounds %struct.hit_t, ptr %0, i64 0, i32 1
  %33 = load double, ptr %32, align 8, !tbaa !95
  %34 = fmul double %33, %33
  %35 = fadd double %34, %31
  %36 = fcmp olt double %35, 0.000000e+00
  br i1 %36, label %60, label %37

37:                                               ; preds = %2
  %38 = fcmp oeq double %35, 0x7FF0000000000000
  br i1 %38, label %52, label %39

39:                                               ; preds = %39, %37
  %40 = phi i32 [ %49, %39 ], [ 100, %37 ]
  %41 = phi double [ %44, %39 ], [ 1.000000e+00, %37 ]
  %42 = fdiv double %35, %41
  %43 = fadd double %41, %42
  %44 = fmul double %43, 5.000000e-01
  %45 = fsub double %44, %41
  %46 = fcmp ule double %45, 0x3D719799812DEA11
  %47 = fcmp uge double %45, 0xBD719799812DEA11
  %48 = and i1 %46, %47
  %49 = add nsw i32 %40, -1
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %48, i1 true, i1 %50
  br i1 %51, label %52, label %39, !llvm.loop !13

52:                                               ; preds = %39, %37
  %53 = phi double [ 0x7FF0000000000000, %37 ], [ %44, %39 ]
  %54 = fadd double %28, %53
  %55 = fcmp olt double %54, 0.000000e+00
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = fsub double %28, %53
  %58 = fcmp ogt double %57, 0.000000e+00
  %59 = select i1 %58, double %57, double %54
  br label %60

60:                                               ; preds = %56, %52, %2
  %61 = phi double [ 0x7FF0000000000000, %2 ], [ %59, %56 ], [ 0x7FF0000000000000, %52 ]
  ret double %61
}

; Function Attrs: optsize uwtable
define internal void @_ZN7basis_tC2ERK3v_t(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %struct.v_t, align 16
  %4 = getelementptr inbounds %struct.basis_t, ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @_ZNK3v_t4normEv(ptr nonnull sret(%struct.v_t) align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  %5 = load <2 x double>, ptr %3, align 16, !tbaa !7
  %6 = fmul <2 x double> %5, %5
  %7 = extractelement <2 x double> %6, i64 0
  %8 = fcmp une double %7, 1.000000e+00
  %9 = fmul <2 x double> %5, %5
  %10 = extractelement <2 x double> %9, i64 1
  %11 = fcmp une double %10, 1.000000e+00
  %12 = and i1 %8, %11
  %13 = getelementptr inbounds %struct.v_t, ptr %3, i64 0, i32 2
  %14 = load double, ptr %13, align 16, !tbaa !11
  %15 = fmul double %14, %14
  %16 = fcmp une double %15, 1.000000e+00
  %17 = and i1 %12, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 16 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !30
  %19 = fcmp ogt double %10, %7
  br i1 %19, label %20, label %30

20:                                               ; preds = %18
  %21 = fcmp ogt double %10, %15
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.basis_t, ptr %0, i64 0, i32 1, i32 1
  %24 = load double, ptr %23, align 8, !tbaa !117
  %25 = fneg double %24
  store double %25, ptr %23, align 8, !tbaa !117
  br label %41

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.basis_t, ptr %0, i64 0, i32 1, i32 2
  %28 = load double, ptr %27, align 8, !tbaa !119
  %29 = fneg double %28
  store double %29, ptr %27, align 8, !tbaa !119
  br label %41

30:                                               ; preds = %18
  %31 = fcmp ogt double %15, %7
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.basis_t, ptr %0, i64 0, i32 1, i32 2
  %34 = load double, ptr %33, align 8, !tbaa !119
  %35 = fneg double %34
  store double %35, ptr %33, align 8, !tbaa !119
  br label %41

36:                                               ; preds = %30
  %37 = load double, ptr %4, align 8, !tbaa !120
  %38 = fneg double %37
  store double %38, ptr %4, align 8, !tbaa !120
  br label %41

39:                                               ; preds = %2
  store double %14, ptr %4, align 8, !tbaa.struct !30
  %40 = getelementptr inbounds %struct.basis_t, ptr %0, i64 0, i32 1, i32 1
  store <2 x double> %5, ptr %40, align 8
  br label %41

41:                                               ; preds = %39, %36, %32, %26, %22
  %42 = getelementptr inbounds %struct.basis_t, ptr %0, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !30
  %43 = getelementptr inbounds %struct.v_t, ptr %0, i64 0, i32 1
  %44 = getelementptr inbounds %struct.basis_t, ptr %0, i64 0, i32 1, i32 2
  %45 = getelementptr inbounds %struct.basis_t, ptr %0, i64 0, i32 1, i32 1
  %46 = load <2 x double>, ptr %4, align 8
  %47 = load double, ptr %0, align 8, !tbaa !115, !noalias !121
  %48 = getelementptr inbounds %struct.basis_t, ptr %0, i64 0, i32 2, i32 1
  %49 = getelementptr inbounds %struct.basis_t, ptr %0, i64 0, i32 2, i32 2
  %50 = load <2 x double>, ptr %43, align 8, !tbaa !7, !noalias !121
  %51 = load <2 x double>, ptr %45, align 8, !tbaa !7, !noalias !122
  %52 = shufflevector <2 x double> %50, <2 x double> %51, <2 x i32> <i32 1, i32 3>
  %53 = insertelement <2 x double> %46, double %47, i64 1
  %54 = fmul <2 x double> %52, %53
  %55 = shufflevector <2 x double> %54, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %56 = fsub <2 x double> %54, %55
  %57 = extractelement <2 x double> %56, i64 0
  %58 = insertelement <2 x double> poison, double %47, i64 0
  %59 = shufflevector <2 x double> %58, <2 x double> %50, <2 x i32> <i32 0, i32 2>
  %60 = fmul <2 x double> %59, %51
  %61 = shufflevector <2 x double> %46, <2 x double> %51, <2 x i32> <i32 0, i32 2>
  %62 = fmul <2 x double> %50, %61
  %63 = fsub <2 x double> %60, %62
  %64 = extractelement <2 x double> %63, i64 1
  store double %64, ptr %42, align 8, !tbaa.struct !30
  store double %57, ptr %48, align 8, !tbaa.struct !125
  %65 = extractelement <2 x double> %63, i64 0
  store double %65, ptr %49, align 8, !tbaa.struct !21
  %66 = fmul <2 x double> %50, %63
  %67 = insertelement <2 x double> %50, double %47, i64 0
  %68 = shufflevector <2 x double> %63, <2 x double> %56, <2 x i32> <i32 0, i32 2>
  %69 = fmul <2 x double> %67, %68
  %70 = shufflevector <2 x double> %69, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %71 = fsub <2 x double> %66, %70
  %72 = fmul double %47, %57
  %73 = extractelement <2 x double> %50, i64 0
  %74 = fmul double %73, %64
  %75 = fsub double %72, %74
  store <2 x double> %71, ptr %4, align 8
  store double %75, ptr %44, align 8, !tbaa.struct !21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @_ZL7LLVMsind(double noundef %0) unnamed_addr #14 {
  %2 = fcmp olt double %0, 0.000000e+00
  br i1 %2, label %6, label %3

3:                                                ; preds = %6, %1
  %4 = phi double [ %0, %1 ], [ %8, %6 ]
  %5 = fcmp ogt double %4, 0x401921FB54411744
  br i1 %5, label %10, label %14

6:                                                ; preds = %6, %1
  %7 = phi double [ %8, %6 ], [ %0, %1 ]
  %8 = fadd double %7, 0x401921FB54411744
  %9 = fcmp olt double %8, 0.000000e+00
  br i1 %9, label %6, label %3, !llvm.loop !126

10:                                               ; preds = %10, %3
  %11 = phi double [ %12, %10 ], [ %4, %3 ]
  %12 = fadd double %11, 0xC01921FB54411744
  %13 = fcmp ogt double %12, 0x401921FB54411744
  br i1 %13, label %10, label %14, !llvm.loop !127

14:                                               ; preds = %10, %3
  %15 = phi double [ %4, %3 ], [ %12, %10 ]
  %16 = fcmp ogt double %15, 0x4012D97C7F713E20
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = fsub double 0x401921FB54411744, %15
  br label %27

19:                                               ; preds = %14
  %20 = fcmp ogt double %15, 0x400921FB5496FD7F
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = fadd double %15, 0xC00921FB5496FD7F
  br label %27

23:                                               ; preds = %19
  %24 = fcmp ogt double %15, 0x3FF921FB54524550
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = fsub double 0x400921FB5496FD7F, %15
  br label %27

27:                                               ; preds = %25, %23, %21, %17
  %28 = phi double [ -1.000000e+00, %17 ], [ -1.000000e+00, %21 ], [ 1.000000e+00, %25 ], [ 1.000000e+00, %23 ]
  %29 = phi double [ %18, %17 ], [ %22, %21 ], [ %26, %25 ], [ %15, %23 ]
  %30 = fmul double %29, %29
  %31 = fmul double %29, %30
  %32 = fmul double %29, %31
  %33 = fmul double %29, %32
  %34 = insertelement <2 x double> poison, double %31, i64 0
  %35 = insertelement <2 x double> %34, double %33, i64 1
  %36 = fdiv <2 x double> %35, <double 6.000000e+00, double 1.200000e+02>
  %37 = extractelement <2 x double> %36, i64 0
  %38 = fsub double %29, %37
  %39 = extractelement <2 x double> %36, i64 1
  %40 = fadd double %38, %39
  %41 = fmul double %28, %40
  %42 = fcmp ogt double %41, 1.000000e+00
  %43 = select i1 %42, double 1.000000e+00, double %41
  %44 = fcmp olt double %43, -1.000000e+00
  %45 = select i1 %44, double -1.000000e+00, double %43
  ret double %45
}

attributes #0 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize willreturn memory(read) }
attributes #18 = { builtin optsize allocsize(0) }
attributes #19 = { noreturn optsize }

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
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !8, i64 16}
!12 = !{!"_ZTS3v_t", !8, i64 0, !8, i64 8, !8, i64 16}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZNK3v_tmlEd: %agg.result"}
!17 = distinct !{!17, !"_ZNK3v_tmlEd"}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !9, i64 0}
!20 = distinct !{!20, !14}
!21 = !{i64 0, i64 8, !7}
!22 = distinct !{!22, !14, !23, !24}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZNK3v_tplERKS_: %agg.result"}
!29 = distinct !{!29, !"_ZNK3v_tplERKS_"}
!30 = !{i64 0, i64 8, !7, i64 8, i64 8, !7, i64 16, i64 8, !7}
!31 = !{!32, !8, i64 24}
!32 = !{!"_ZTS5hit_t", !12, i64 0, !8, i64 24}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZNK3v_tmlEd: %agg.result"}
!35 = distinct !{!35, !"_ZNK3v_tmlEd"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZNK3v_tplERKS_: %agg.result"}
!38 = distinct !{!38, !"_ZNK3v_tplERKS_"}
!39 = distinct !{!39, !14}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !10, i64 0}
!42 = !{!43, !45, i64 64}
!43 = !{!"_ZTS6node_t", !44, i64 0, !44, i64 32, !45, i64 64}
!44 = !{!"_ZTS8sphere_t", !12, i64 0, !8, i64 24}
!45 = !{!"long", !9, i64 0}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZNK3v_tmlEd: %agg.result"}
!48 = distinct !{!48, !"_ZNK3v_tmlEd"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZNK3v_tmlEd: %agg.result"}
!51 = distinct !{!51, !"_ZNK3v_tmlEd"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNK3v_tmlEd: %agg.result"}
!54 = distinct !{!54, !"_ZNK3v_tmlEd"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNK3v_tplERKS_: %agg.result"}
!57 = distinct !{!57, !"_ZNK3v_tplERKS_"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZNK3v_tmlEd: %agg.result"}
!60 = distinct !{!60, !"_ZNK3v_tmlEd"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZNK3v_tplERKS_: %agg.result"}
!63 = distinct !{!63, !"_ZNK3v_tplERKS_"}
!64 = distinct !{!64, !14}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNK3v_tmlEd: %agg.result"}
!67 = distinct !{!67, !"_ZNK3v_tmlEd"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZNK3v_tmlEd: %agg.result"}
!70 = distinct !{!70, !"_ZNK3v_tmlEd"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZNK3v_tmlEd: %agg.result"}
!73 = distinct !{!73, !"_ZNK3v_tmlEd"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZNK3v_tplERKS_: %agg.result"}
!76 = distinct !{!76, !"_ZNK3v_tplERKS_"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNK3v_tmlEd: %agg.result"}
!79 = distinct !{!79, !"_ZNK3v_tmlEd"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZNK3v_tplERKS_: %agg.result"}
!82 = distinct !{!82, !"_ZNK3v_tplERKS_"}
!83 = distinct !{!83, !14}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZNK3v_tmlEd: %agg.result"}
!86 = distinct !{!86, !"_ZNK3v_tmlEd"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZNK3v_tplERKS_: %agg.result"}
!89 = distinct !{!89, !"_ZNK3v_tplERKS_"}
!90 = !{!91, !93}
!91 = distinct !{!91, !92, !"_ZNK3v_tmiERKS_: %agg.result"}
!92 = distinct !{!92, !"_ZNK3v_tmiERKS_"}
!93 = distinct !{!93, !94, !"_ZNK8sphere_t10get_normalERK3v_t: %agg.result"}
!94 = distinct !{!94, !"_ZNK8sphere_t10get_normalERK3v_t"}
!95 = !{!44, !8, i64 24}
!96 = !{!93}
!97 = distinct !{!97, !14}
!98 = distinct !{!98, !14}
!99 = !{!100, !19, i64 240}
!100 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !101, i64 0, !19, i64 216, !9, i64 224, !107, i64 225, !19, i64 232, !19, i64 240, !19, i64 248, !19, i64 256}
!101 = !{!"_ZTSSt8ios_base", !45, i64 8, !45, i64 16, !102, i64 24, !103, i64 28, !103, i64 32, !19, i64 40, !104, i64 48, !9, i64 64, !105, i64 192, !19, i64 200, !106, i64 208}
!102 = !{!"_ZTSSt13_Ios_Fmtflags", !9, i64 0}
!103 = !{!"_ZTSSt12_Ios_Iostate", !9, i64 0}
!104 = !{!"_ZTSNSt8ios_base6_WordsE", !19, i64 0, !45, i64 8}
!105 = !{!"int", !9, i64 0}
!106 = !{!"_ZTSSt6locale", !19, i64 0}
!107 = !{!"bool", !9, i64 0}
!108 = !{!109, !9, i64 56}
!109 = !{!"_ZTSSt5ctypeIcE", !110, i64 0, !19, i64 16, !107, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !9, i64 56, !9, i64 57, !9, i64 313, !9, i64 569}
!110 = !{!"_ZTSNSt6locale5facetE", !105, i64 8}
!111 = !{!9, !9, i64 0}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZNK3v_tmiERKS_: %agg.result"}
!114 = distinct !{!114, !"_ZNK3v_tmiERKS_"}
!115 = !{!12, !8, i64 0}
!116 = !{!12, !8, i64 8}
!117 = !{!118, !8, i64 32}
!118 = !{!"_ZTS7basis_t", !12, i64 0, !12, i64 24, !12, i64 48}
!119 = !{!118, !8, i64 40}
!120 = !{!118, !8, i64 24}
!121 = !{}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZNK3v_t5crossERKS_: %agg.result"}
!124 = distinct !{!124, !"_ZNK3v_t5crossERKS_"}
!125 = !{i64 0, i64 8, !7, i64 8, i64 8, !7}
!126 = distinct !{!126, !14}
!127 = distinct !{!127, !14}
