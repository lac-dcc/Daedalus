; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/DOE-ProxyApps-C++/HACCKernels/HACCKernels.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt6vectorIfSaIfEEC2EmRKS0_ = comdat any

$_ZNSt15__new_allocatorIfE8allocateEmPKv = comdat any

@PolyCoefficients4 = internal constant [5 x float] [float 0x3FD0E0EFA0000000, float 0xBFB191A320000000, float 0x3F82118540000000, float 0xBF436A2420000000, float 0x3EF14309C0000000], align 16
@PolyCoefficients5 = internal constant [6 x float] [float 0x3FD13CA760000000, float 0xBFB3399C00000000, float 0x3F87833EE0000000, float 0xBF51E8EB60000000, float 0x3F0FBEC340000000, float 0xBEB8B13440000000], align 16
@PolyCoefficients6 = internal constant [7 x float] [float 0x3FD15F2020000000, float 0xBFB40E0D00000000, float 0x3F8B436D40000000, float 0xBF5A214920000000, float 0x3F215875A0000000, float 0xBEDBD32380000000, float 0x3E83C55C80000000], align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_main.cpp, ptr null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@NumIters = internal global i32 2000, align 4
@IListMin = internal global i32 250, align 4
@IListMax = internal global i32 2250, align 4
@PMin = internal global i32 75, align 4
@PMax = internal global i32 150, align 4
@SofteningLen = internal global float 0x3FB99999A0000000, align 4
@MaxSep = internal global float 0x40099999A0000000, align 4
@OffsetAdjFrac = internal global float 0x3FB99999A0000000, align 4
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [35 x i8] c"Gravity Short-Range-Force Kernel (\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"): \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Iterations: \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"4th Order\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"5th Order\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"6th Order\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress nofree nosync nounwind optsize memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_(i32 noundef %0, ptr noalias nocapture noundef readonly %1, ptr noalias nocapture noundef readonly %2, ptr noalias nocapture noundef readonly %3, ptr noalias nocapture noundef readonly %4, float noundef nofpclass(nan inf) %5, float noundef nofpclass(nan inf) %6, float noundef nofpclass(nan inf) %7, float noundef nofpclass(nan inf) %8, float noundef nofpclass(nan inf) %9, ptr noalias nocapture noundef nonnull align 4 dereferenceable(4) %10, ptr noalias nocapture noundef nonnull align 4 dereferenceable(4) %11, ptr noalias nocapture noundef nonnull align 4 dereferenceable(4) %12) #0 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %14 = icmp sgt i32 %0, 0
  br i1 %14, label %15, label %72

15:                                               ; preds = %13
  %16 = zext i32 %0 to i64
  %17 = insertelement <2 x float> poison, float %6, i64 0
  %18 = insertelement <2 x float> %17, float %5, i64 1
  br label %19

19:                                               ; preds = %67, %15
  %20 = phi i64 [ 0, %15 ], [ %70, %67 ]
  %21 = phi float [ 0.000000e+00, %15 ], [ %68, %67 ]
  %22 = phi <2 x float> [ zeroinitializer, %15 ], [ %69, %67 ]
  %23 = getelementptr inbounds float, ptr %1, i64 %20
  %24 = load float, ptr %23, align 4, !tbaa !22, !alias.scope !7, !noalias !26
  %25 = getelementptr inbounds float, ptr %2, i64 %20
  %26 = load float, ptr %25, align 4, !tbaa !22, !alias.scope !10, !noalias !27
  %27 = insertelement <2 x float> poison, float %26, i64 0
  %28 = insertelement <2 x float> %27, float %24, i64 1
  %29 = fsub fast <2 x float> %28, %18
  %30 = getelementptr inbounds float, ptr %3, i64 %20
  %31 = load float, ptr %30, align 4, !tbaa !22, !alias.scope !12, !noalias !28
  %32 = fsub fast float %31, %7
  %33 = fmul fast <2 x float> %29, %29
  %34 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %35 = fadd fast <2 x float> %33, %34
  %36 = extractelement <2 x float> %35, i64 0
  %37 = fmul fast float %32, %32
  %38 = fadd fast float %36, %37
  %39 = fcmp fast oge float %38, %8
  %40 = fcmp fast oeq float %38, 0.000000e+00
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %67, label %57

42:                                               ; preds = %57
  %.lcssa = phi float [ %64, %57 ]
  %43 = fadd fast float %38, %9
  %44 = tail call fast float @llvm.sqrt.f32(float %43)
  %45 = fmul fast float %44, %43
  %46 = fdiv fast float 1.000000e+00, %45
  %47 = fsub fast float %46, %.lcssa
  %48 = getelementptr inbounds float, ptr %4, i64 %20
  %49 = load float, ptr %48, align 4, !tbaa !22, !alias.scope !14, !noalias !29
  %50 = fmul fast float %49, %47
  %51 = insertelement <2 x float> poison, float %50, i64 0
  %52 = shufflevector <2 x float> %51, <2 x float> poison, <2 x i32> zeroinitializer
  %53 = fmul fast <2 x float> %52, %29
  %54 = fadd fast <2 x float> %53, %22
  %55 = fmul fast float %50, %32
  %56 = fadd fast float %55, %21
  br label %67

57:                                               ; preds = %57, %19
  %58 = phi i64 [ %65, %57 ], [ 1, %19 ]
  %59 = phi float [ %64, %57 ], [ 0x3EF14309C0000000, %19 ]
  %60 = sub nuw nsw i64 4, %58
  %61 = getelementptr inbounds [5 x float], ptr @PolyCoefficients4, i64 0, i64 %60
  %62 = load float, ptr %61, align 4, !tbaa !22, !noalias !30
  %63 = fmul fast float %59, %38
  %64 = fadd fast float %62, %63
  %65 = add nuw nsw i64 %58, 1
  %66 = icmp eq i64 %65, 5
  br i1 %66, label %42, label %57, !llvm.loop !31

67:                                               ; preds = %42, %19
  %68 = phi float [ %56, %42 ], [ %21, %19 ]
  %69 = phi <2 x float> [ %54, %42 ], [ %22, %19 ]
  %70 = add nuw nsw i64 %20, 1
  %71 = icmp eq i64 %70, %16
  br i1 %71, label %72, label %19, !llvm.loop !33

72:                                               ; preds = %67, %13
  %73 = phi float [ 0.000000e+00, %13 ], [ %68, %67 ]
  %74 = phi <2 x float> [ zeroinitializer, %13 ], [ %69, %67 ]
  %75 = load float, ptr %10, align 4, !tbaa !22, !alias.scope !16, !noalias !34
  %76 = extractelement <2 x float> %74, i64 1
  %77 = fadd fast float %75, %76
  store float %77, ptr %10, align 4, !tbaa !22, !alias.scope !16, !noalias !34
  %78 = load float, ptr %11, align 4, !tbaa !22, !alias.scope !18, !noalias !35
  %79 = extractelement <2 x float> %74, i64 0
  %80 = fadd fast float %78, %79
  store float %80, ptr %11, align 4, !tbaa !22, !alias.scope !18, !noalias !35
  %81 = load float, ptr %12, align 4, !tbaa !22, !alias.scope !20, !noalias !36
  %82 = fadd fast float %81, %73
  store float %82, ptr %12, align 4, !tbaa !22, !alias.scope !20, !noalias !36
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: mustprogress nofree nosync nounwind optsize memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_(i32 noundef %0, ptr noalias nocapture noundef readonly %1, ptr noalias nocapture noundef readonly %2, ptr noalias nocapture noundef readonly %3, ptr noalias nocapture noundef readonly %4, float noundef nofpclass(nan inf) %5, float noundef nofpclass(nan inf) %6, float noundef nofpclass(nan inf) %7, float noundef nofpclass(nan inf) %8, float noundef nofpclass(nan inf) %9, ptr noalias nocapture noundef nonnull align 4 dereferenceable(4) %10, ptr noalias nocapture noundef nonnull align 4 dereferenceable(4) %11, ptr noalias nocapture noundef nonnull align 4 dereferenceable(4) %12) #0 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %14 = icmp sgt i32 %0, 0
  br i1 %14, label %15, label %72

15:                                               ; preds = %13
  %16 = zext i32 %0 to i64
  %17 = insertelement <2 x float> poison, float %6, i64 0
  %18 = insertelement <2 x float> %17, float %5, i64 1
  br label %19

19:                                               ; preds = %67, %15
  %20 = phi i64 [ 0, %15 ], [ %70, %67 ]
  %21 = phi float [ 0.000000e+00, %15 ], [ %68, %67 ]
  %22 = phi <2 x float> [ zeroinitializer, %15 ], [ %69, %67 ]
  %23 = getelementptr inbounds float, ptr %1, i64 %20
  %24 = load float, ptr %23, align 4, !tbaa !22, !alias.scope !37, !noalias !52
  %25 = getelementptr inbounds float, ptr %2, i64 %20
  %26 = load float, ptr %25, align 4, !tbaa !22, !alias.scope !40, !noalias !53
  %27 = insertelement <2 x float> poison, float %26, i64 0
  %28 = insertelement <2 x float> %27, float %24, i64 1
  %29 = fsub fast <2 x float> %28, %18
  %30 = getelementptr inbounds float, ptr %3, i64 %20
  %31 = load float, ptr %30, align 4, !tbaa !22, !alias.scope !42, !noalias !54
  %32 = fsub fast float %31, %7
  %33 = fmul fast <2 x float> %29, %29
  %34 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %35 = fadd fast <2 x float> %33, %34
  %36 = extractelement <2 x float> %35, i64 0
  %37 = fmul fast float %32, %32
  %38 = fadd fast float %36, %37
  %39 = fcmp fast oge float %38, %8
  %40 = fcmp fast oeq float %38, 0.000000e+00
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %67, label %57

42:                                               ; preds = %57
  %.lcssa = phi float [ %64, %57 ]
  %43 = fadd fast float %38, %9
  %44 = tail call fast float @llvm.sqrt.f32(float %43)
  %45 = fmul fast float %44, %43
  %46 = fdiv fast float 1.000000e+00, %45
  %47 = fsub fast float %46, %.lcssa
  %48 = getelementptr inbounds float, ptr %4, i64 %20
  %49 = load float, ptr %48, align 4, !tbaa !22, !alias.scope !44, !noalias !55
  %50 = fmul fast float %49, %47
  %51 = insertelement <2 x float> poison, float %50, i64 0
  %52 = shufflevector <2 x float> %51, <2 x float> poison, <2 x i32> zeroinitializer
  %53 = fmul fast <2 x float> %52, %29
  %54 = fadd fast <2 x float> %53, %22
  %55 = fmul fast float %50, %32
  %56 = fadd fast float %55, %21
  br label %67

57:                                               ; preds = %57, %19
  %58 = phi i64 [ %65, %57 ], [ 1, %19 ]
  %59 = phi float [ %64, %57 ], [ 0xBEB8B13440000000, %19 ]
  %60 = sub nuw nsw i64 5, %58
  %61 = getelementptr inbounds [6 x float], ptr @PolyCoefficients5, i64 0, i64 %60
  %62 = load float, ptr %61, align 4, !tbaa !22, !noalias !56
  %63 = fmul fast float %59, %38
  %64 = fadd fast float %62, %63
  %65 = add nuw nsw i64 %58, 1
  %66 = icmp eq i64 %65, 6
  br i1 %66, label %42, label %57, !llvm.loop !57

67:                                               ; preds = %42, %19
  %68 = phi float [ %56, %42 ], [ %21, %19 ]
  %69 = phi <2 x float> [ %54, %42 ], [ %22, %19 ]
  %70 = add nuw nsw i64 %20, 1
  %71 = icmp eq i64 %70, %16
  br i1 %71, label %72, label %19, !llvm.loop !58

72:                                               ; preds = %67, %13
  %73 = phi float [ 0.000000e+00, %13 ], [ %68, %67 ]
  %74 = phi <2 x float> [ zeroinitializer, %13 ], [ %69, %67 ]
  %75 = load float, ptr %10, align 4, !tbaa !22, !alias.scope !46, !noalias !59
  %76 = extractelement <2 x float> %74, i64 1
  %77 = fadd fast float %75, %76
  store float %77, ptr %10, align 4, !tbaa !22, !alias.scope !46, !noalias !59
  %78 = load float, ptr %11, align 4, !tbaa !22, !alias.scope !48, !noalias !60
  %79 = extractelement <2 x float> %74, i64 0
  %80 = fadd fast float %78, %79
  store float %80, ptr %11, align 4, !tbaa !22, !alias.scope !48, !noalias !60
  %81 = load float, ptr %12, align 4, !tbaa !22, !alias.scope !50, !noalias !61
  %82 = fadd fast float %81, %73
  store float %82, ptr %12, align 4, !tbaa !22, !alias.scope !50, !noalias !61
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_(i32 noundef %0, ptr noalias nocapture noundef readonly %1, ptr noalias nocapture noundef readonly %2, ptr noalias nocapture noundef readonly %3, ptr noalias nocapture noundef readonly %4, float noundef nofpclass(nan inf) %5, float noundef nofpclass(nan inf) %6, float noundef nofpclass(nan inf) %7, float noundef nofpclass(nan inf) %8, float noundef nofpclass(nan inf) %9, ptr noalias nocapture noundef nonnull align 4 dereferenceable(4) %10, ptr noalias nocapture noundef nonnull align 4 dereferenceable(4) %11, ptr noalias nocapture noundef nonnull align 4 dereferenceable(4) %12) #0 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %14 = icmp sgt i32 %0, 0
  br i1 %14, label %15, label %72

15:                                               ; preds = %13
  %16 = zext i32 %0 to i64
  %17 = insertelement <2 x float> poison, float %6, i64 0
  %18 = insertelement <2 x float> %17, float %5, i64 1
  br label %19

19:                                               ; preds = %67, %15
  %20 = phi i64 [ 0, %15 ], [ %70, %67 ]
  %21 = phi float [ 0.000000e+00, %15 ], [ %68, %67 ]
  %22 = phi <2 x float> [ zeroinitializer, %15 ], [ %69, %67 ]
  %23 = getelementptr inbounds float, ptr %1, i64 %20
  %24 = load float, ptr %23, align 4, !tbaa !22, !alias.scope !62, !noalias !77
  %25 = getelementptr inbounds float, ptr %2, i64 %20
  %26 = load float, ptr %25, align 4, !tbaa !22, !alias.scope !65, !noalias !78
  %27 = insertelement <2 x float> poison, float %26, i64 0
  %28 = insertelement <2 x float> %27, float %24, i64 1
  %29 = fsub fast <2 x float> %28, %18
  %30 = getelementptr inbounds float, ptr %3, i64 %20
  %31 = load float, ptr %30, align 4, !tbaa !22, !alias.scope !67, !noalias !79
  %32 = fsub fast float %31, %7
  %33 = fmul fast <2 x float> %29, %29
  %34 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %35 = fadd fast <2 x float> %33, %34
  %36 = extractelement <2 x float> %35, i64 0
  %37 = fmul fast float %32, %32
  %38 = fadd fast float %36, %37
  %39 = fcmp fast oge float %38, %8
  %40 = fcmp fast oeq float %38, 0.000000e+00
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %67, label %57

42:                                               ; preds = %57
  %.lcssa = phi float [ %64, %57 ]
  %43 = fadd fast float %38, %9
  %44 = tail call fast float @llvm.sqrt.f32(float %43)
  %45 = fmul fast float %44, %43
  %46 = fdiv fast float 1.000000e+00, %45
  %47 = fsub fast float %46, %.lcssa
  %48 = getelementptr inbounds float, ptr %4, i64 %20
  %49 = load float, ptr %48, align 4, !tbaa !22, !alias.scope !69, !noalias !80
  %50 = fmul fast float %49, %47
  %51 = insertelement <2 x float> poison, float %50, i64 0
  %52 = shufflevector <2 x float> %51, <2 x float> poison, <2 x i32> zeroinitializer
  %53 = fmul fast <2 x float> %52, %29
  %54 = fadd fast <2 x float> %53, %22
  %55 = fmul fast float %50, %32
  %56 = fadd fast float %55, %21
  br label %67

57:                                               ; preds = %57, %19
  %58 = phi i64 [ %65, %57 ], [ 1, %19 ]
  %59 = phi float [ %64, %57 ], [ 0x3E83C55C80000000, %19 ]
  %60 = sub nuw nsw i64 6, %58
  %61 = getelementptr inbounds [7 x float], ptr @PolyCoefficients6, i64 0, i64 %60
  %62 = load float, ptr %61, align 4, !tbaa !22, !noalias !81
  %63 = fmul fast float %59, %38
  %64 = fadd fast float %62, %63
  %65 = add nuw nsw i64 %58, 1
  %66 = icmp eq i64 %65, 7
  br i1 %66, label %42, label %57, !llvm.loop !82

67:                                               ; preds = %42, %19
  %68 = phi float [ %56, %42 ], [ %21, %19 ]
  %69 = phi <2 x float> [ %54, %42 ], [ %22, %19 ]
  %70 = add nuw nsw i64 %20, 1
  %71 = icmp eq i64 %70, %16
  br i1 %71, label %72, label %19, !llvm.loop !83

72:                                               ; preds = %67, %13
  %73 = phi float [ 0.000000e+00, %13 ], [ %68, %67 ]
  %74 = phi <2 x float> [ zeroinitializer, %13 ], [ %69, %67 ]
  %75 = load float, ptr %10, align 4, !tbaa !22, !alias.scope !71, !noalias !84
  %76 = extractelement <2 x float> %74, i64 1
  %77 = fadd fast float %75, %76
  store float %77, ptr %10, align 4, !tbaa !22, !alias.scope !71, !noalias !84
  %78 = load float, ptr %11, align 4, !tbaa !22, !alias.scope !73, !noalias !85
  %79 = extractelement <2 x float> %74, i64 0
  %80 = fadd fast float %78, %79
  store float %80, ptr %11, align 4, !tbaa !22, !alias.scope !73, !noalias !85
  %81 = load float, ptr %12, align 4, !tbaa !22, !alias.scope !75, !noalias !86
  %82 = fadd fast float %81, %73
  store float %82, ptr %12, align 4, !tbaa !22, !alias.scope !75, !noalias !86
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #16
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #17
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: optsize uwtable
define internal void @_Z3runPFviPfS_S_S_fffffRfS0_S0_EPKc(ptr nocapture noundef readonly %0, ptr noundef %1) #3 personality ptr @__gxx_personality_v0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca %"class.std::vector", align 8
  %7 = alloca %"class.std::ios_base::Init", align 1
  %8 = alloca %"class.std::vector", align 8
  %9 = alloca %"class.std::ios_base::Init", align 1
  %10 = alloca %"class.std::vector", align 8
  %11 = alloca %"class.std::ios_base::Init", align 1
  %12 = alloca %"class.std::vector", align 8
  %13 = alloca %"class.std::ios_base::Init", align 1
  %14 = alloca %"class.std::vector", align 8
  %15 = alloca %"class.std::ios_base::Init", align 1
  %16 = alloca %"class.std::vector", align 8
  %17 = alloca %"class.std::ios_base::Init", align 1
  %18 = alloca %"class.std::vector", align 8
  %19 = alloca %"class.std::ios_base::Init", align 1
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 34) #16
  %21 = icmp eq ptr %1, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !87
  %24 = getelementptr i8, ptr %23, i64 -24
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %25
  %27 = getelementptr inbounds %"class.std::ios_base", ptr %26, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !89
  %29 = or i32 %28, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %26, i32 noundef %29) #16
  br label %33

30:                                               ; preds = %2
  %31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %1, i64 noundef %31) #16
  br label %33

33:                                               ; preds = %30, %22
  %34 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  %35 = load i32, ptr @NumIters, align 4, !tbaa !98
  %36 = icmp sgt i32 %35, 0
  tail call void @llvm.assume(i1 %36)
  br label %50

37:                                               ; preds = %251
  %38 = load float, ptr %3, align 4, !tbaa !22
  %39 = fpext float %38 to double
  %40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef nofpclass(nan inf) %39) #16
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull @.str.2, i64 noundef 1) #16
  %42 = load float, ptr %4, align 4, !tbaa !22
  %43 = fpext float %42 to double
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %40, double noundef nofpclass(nan inf) %43) #16
  %45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull @.str.2, i64 noundef 1) #16
  %46 = load float, ptr %5, align 4, !tbaa !22
  %47 = fpext float %46 to double
  %48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %44, double noundef nofpclass(nan inf) %47) #16
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 1) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void

50:                                               ; preds = %251, %33
  %51 = phi i32 [ %52, %251 ], [ 0, %33 ]
  %52 = add nuw nsw i32 %51, 1
  store float 0.000000e+00, ptr %5, align 4, !tbaa !22
  store float 0.000000e+00, ptr %4, align 4, !tbaa !22
  store float 0.000000e+00, ptr %3, align 4, !tbaa !22
  %53 = load i32, ptr @IListMin, align 4, !tbaa !98
  %54 = shl i32 %52, 13
  %55 = xor i32 %54, %52
  %56 = lshr i32 %55, 17
  %57 = xor i32 %56, %55
  %58 = shl i32 %57, 5
  %59 = xor i32 %58, %57
  %60 = load i32, ptr @IListMax, align 4, !tbaa !98
  %61 = sub nsw i32 %60, %53
  %62 = urem i32 %59, %61
  %63 = add i32 %62, %53
  %64 = load i32, ptr @PMin, align 4, !tbaa !98
  %65 = shl i32 %59, 13
  %66 = xor i32 %65, %59
  %67 = lshr i32 %66, 17
  %68 = xor i32 %67, %66
  %69 = shl i32 %68, 5
  %70 = xor i32 %69, %68
  %71 = load i32, ptr @PMax, align 4, !tbaa !98
  %72 = sub nsw i32 %71, %64
  %73 = urem i32 %70, %72
  %74 = add i32 %73, %64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  %75 = sext i32 %74 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #17
  call void @_ZNSt6vectorIfSaIfEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %75, ptr noundef nonnull align 1 dereferenceable(1) %7) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #17
  invoke void @_ZNSt6vectorIfSaIfEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %75, ptr noundef nonnull align 1 dereferenceable(1) %9) #16
          to label %76 unwind label %96

76:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #17
  invoke void @_ZNSt6vectorIfSaIfEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %75, ptr noundef nonnull align 1 dereferenceable(1) %11) #16
          to label %77 unwind label %98

77:                                               ; preds = %76
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #17
  %78 = sext i32 %63 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #17
  invoke void @_ZNSt6vectorIfSaIfEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %78, ptr noundef nonnull align 1 dereferenceable(1) %13) #16
          to label %79 unwind label %100

79:                                               ; preds = %77
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #17
  invoke void @_ZNSt6vectorIfSaIfEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %78, ptr noundef nonnull align 1 dereferenceable(1) %15) #16
          to label %80 unwind label %102

80:                                               ; preds = %79
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #17
  invoke void @_ZNSt6vectorIfSaIfEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %78, ptr noundef nonnull align 1 dereferenceable(1) %17) #16
          to label %81 unwind label %104

81:                                               ; preds = %80
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #17
  invoke void @_ZNSt6vectorIfSaIfEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef %78, ptr noundef nonnull align 1 dereferenceable(1) %19) #16
          to label %82 unwind label %106

82:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #17
  %83 = icmp sgt i32 %74, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %82
  %85 = load ptr, ptr %6, align 8, !tbaa !99
  %86 = load ptr, ptr %8, align 8, !tbaa !99
  %87 = load ptr, ptr %10, align 8, !tbaa !99
  br label %108

88:                                               ; preds = %108, %82
  %89 = phi i32 [ %70, %82 ], [ %146, %108 ]
  %90 = icmp sgt i32 %63, 0
  br i1 %90, label %91, label %158

91:                                               ; preds = %88
  %92 = load ptr, ptr %12, align 8, !tbaa !99
  %93 = load ptr, ptr %14, align 8, !tbaa !99
  %94 = load ptr, ptr %16, align 8, !tbaa !99
  %95 = load ptr, ptr %18, align 8, !tbaa !99
  br label %159

96:                                               ; preds = %50
  %97 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #17
  br label %306

98:                                               ; preds = %76
  %99 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #17
  br label %301

100:                                              ; preds = %77
  %101 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #17
  br label %296

102:                                              ; preds = %79
  %103 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #17
  br label %291

104:                                              ; preds = %80
  %105 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #17
  br label %286

106:                                              ; preds = %81
  %107 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #17
  br label %281

108:                                              ; preds = %108, %84
  %109 = phi i64 [ 0, %84 ], [ %156, %108 ]
  %110 = phi i32 [ %70, %84 ], [ %146, %108 ]
  %111 = shl i32 %110, 13
  %112 = xor i32 %111, %110
  %113 = lshr i32 %112, 17
  %114 = xor i32 %113, %112
  %115 = shl i32 %114, 5
  %116 = xor i32 %115, %114
  %117 = uitofp i32 %116 to float
  %118 = fmul fast float %117, 0x3DF0000000000000
  %119 = fpext float %118 to double
  %120 = fmul fast double %119, 5.000000e-01
  %121 = load float, ptr @MaxSep, align 4, !tbaa !22
  %122 = fpext float %121 to double
  %123 = fmul fast double %120, %122
  %124 = fptrunc double %123 to float
  %125 = getelementptr inbounds float, ptr %85, i64 %109
  store float %124, ptr %125, align 4, !tbaa !22
  %126 = shl i32 %116, 13
  %127 = xor i32 %126, %116
  %128 = lshr i32 %127, 17
  %129 = xor i32 %128, %127
  %130 = shl i32 %129, 5
  %131 = xor i32 %130, %129
  %132 = uitofp i32 %131 to float
  %133 = fmul fast float %132, 0x3DF0000000000000
  %134 = fpext float %133 to double
  %135 = fmul fast double %134, 5.000000e-01
  %136 = load float, ptr @MaxSep, align 4, !tbaa !22
  %137 = fpext float %136 to double
  %138 = fmul fast double %135, %137
  %139 = fptrunc double %138 to float
  %140 = getelementptr inbounds float, ptr %86, i64 %109
  store float %139, ptr %140, align 4, !tbaa !22
  %141 = shl i32 %131, 13
  %142 = xor i32 %141, %131
  %143 = lshr i32 %142, 17
  %144 = xor i32 %143, %142
  %145 = shl i32 %144, 5
  %146 = xor i32 %145, %144
  %147 = uitofp i32 %146 to float
  %148 = fmul fast float %147, 0x3DF0000000000000
  %149 = fpext float %148 to double
  %150 = fmul fast double %149, 5.000000e-01
  %151 = load float, ptr @MaxSep, align 4, !tbaa !22
  %152 = fpext float %151 to double
  %153 = fmul fast double %150, %152
  %154 = fptrunc double %153 to float
  %155 = getelementptr inbounds float, ptr %87, i64 %109
  store float %154, ptr %155, align 4, !tbaa !22
  %156 = add nuw nsw i64 %109, 1
  %157 = icmp slt i64 %156, %75
  br i1 %157, label %108, label %88, !llvm.loop !101

158:                                              ; preds = %159, %88
  br i1 %83, label %254, label %223

159:                                              ; preds = %159, %91
  %160 = phi i64 [ 0, %91 ], [ %221, %159 ]
  %161 = phi i32 [ %89, %91 ], [ %216, %159 ]
  %162 = shl i32 %161, 13
  %163 = xor i32 %162, %161
  %164 = lshr i32 %163, 17
  %165 = xor i32 %164, %163
  %166 = shl i32 %165, 5
  %167 = xor i32 %166, %165
  %168 = uitofp i32 %167 to float
  %169 = fmul fast float %168, 0x3DF0000000000000
  %170 = fpext float %169 to double
  %171 = fmul fast double %170, 5.000000e-01
  %172 = load float, ptr @MaxSep, align 4, !tbaa !22
  %173 = fpext float %172 to double
  %174 = load float, ptr @OffsetAdjFrac, align 4, !tbaa !22
  %175 = fpext float %174 to double
  %176 = fadd fast double %171, 5.000000e-01
  %177 = fadd fast double %176, %175
  %178 = fmul fast double %177, %173
  %179 = fptrunc double %178 to float
  %180 = getelementptr inbounds float, ptr %92, i64 %160
  store float %179, ptr %180, align 4, !tbaa !22
  %181 = shl i32 %167, 13
  %182 = xor i32 %181, %167
  %183 = lshr i32 %182, 17
  %184 = xor i32 %183, %182
  %185 = shl i32 %184, 5
  %186 = xor i32 %185, %184
  %187 = uitofp i32 %186 to float
  %188 = fmul fast float %187, 0x3DF0000000000000
  %189 = fpext float %188 to double
  %190 = fmul fast double %189, 5.000000e-01
  %191 = load float, ptr @MaxSep, align 4, !tbaa !22
  %192 = fpext float %191 to double
  %193 = fmul fast double %190, %192
  %194 = fptrunc double %193 to float
  %195 = getelementptr inbounds float, ptr %93, i64 %160
  store float %194, ptr %195, align 4, !tbaa !22
  %196 = shl i32 %186, 13
  %197 = xor i32 %196, %186
  %198 = lshr i32 %197, 17
  %199 = xor i32 %198, %197
  %200 = shl i32 %199, 5
  %201 = xor i32 %200, %199
  %202 = uitofp i32 %201 to float
  %203 = fmul fast float %202, 0x3DF0000000000000
  %204 = fpext float %203 to double
  %205 = fmul fast double %204, 5.000000e-01
  %206 = load float, ptr @MaxSep, align 4, !tbaa !22
  %207 = fpext float %206 to double
  %208 = fmul fast double %205, %207
  %209 = fptrunc double %208 to float
  %210 = getelementptr inbounds float, ptr %94, i64 %160
  store float %209, ptr %210, align 4, !tbaa !22
  %211 = shl i32 %201, 13
  %212 = xor i32 %211, %201
  %213 = lshr i32 %212, 17
  %214 = xor i32 %213, %212
  %215 = shl i32 %214, 5
  %216 = xor i32 %215, %214
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3DF0000000000000
  %219 = fadd fast float %218, 1.000000e+00
  %220 = getelementptr inbounds float, ptr %95, i64 %160
  store float %219, ptr %220, align 4, !tbaa !22
  %221 = add nuw nsw i64 %160, 1
  %222 = icmp slt i64 %221, %78
  br i1 %222, label %159, label %158, !llvm.loop !102

223:                                              ; preds = %273, %158
  %224 = load ptr, ptr %18, align 8, !tbaa !99
  %225 = icmp eq ptr %224, null
  br i1 %225, label %227, label %226

226:                                              ; preds = %223
  call void @_ZdlPv(ptr noundef nonnull %224) #19
  br label %227

227:                                              ; preds = %226, %223
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #17
  %228 = load ptr, ptr %16, align 8, !tbaa !99
  %229 = icmp eq ptr %228, null
  br i1 %229, label %231, label %230

230:                                              ; preds = %227
  call void @_ZdlPv(ptr noundef nonnull %228) #19
  br label %231

231:                                              ; preds = %230, %227
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #17
  %232 = load ptr, ptr %14, align 8, !tbaa !99
  %233 = icmp eq ptr %232, null
  br i1 %233, label %235, label %234

234:                                              ; preds = %231
  call void @_ZdlPv(ptr noundef nonnull %232) #19
  br label %235

235:                                              ; preds = %234, %231
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #17
  %236 = load ptr, ptr %12, align 8, !tbaa !99
  %237 = icmp eq ptr %236, null
  br i1 %237, label %239, label %238

238:                                              ; preds = %235
  call void @_ZdlPv(ptr noundef nonnull %236) #19
  br label %239

239:                                              ; preds = %238, %235
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #17
  %240 = load ptr, ptr %10, align 8, !tbaa !99
  %241 = icmp eq ptr %240, null
  br i1 %241, label %243, label %242

242:                                              ; preds = %239
  call void @_ZdlPv(ptr noundef nonnull %240) #19
  br label %243

243:                                              ; preds = %242, %239
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #17
  %244 = load ptr, ptr %8, align 8, !tbaa !99
  %245 = icmp eq ptr %244, null
  br i1 %245, label %247, label %246

246:                                              ; preds = %243
  call void @_ZdlPv(ptr noundef nonnull %244) #19
  br label %247

247:                                              ; preds = %246, %243
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #17
  %248 = load ptr, ptr %6, align 8, !tbaa !99
  %249 = icmp eq ptr %248, null
  br i1 %249, label %251, label %250

250:                                              ; preds = %247
  call void @_ZdlPv(ptr noundef nonnull %248) #19
  br label %251

251:                                              ; preds = %250, %247
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  %252 = load i32, ptr @NumIters, align 4, !tbaa !98
  %253 = icmp slt i32 %52, %252
  br i1 %253, label %50, label %37, !llvm.loop !103

254:                                              ; preds = %273, %158
  %255 = phi i64 [ %274, %273 ], [ 0, %158 ]
  %256 = load ptr, ptr %12, align 8, !tbaa !99
  %257 = load ptr, ptr %14, align 8, !tbaa !99
  %258 = load ptr, ptr %16, align 8, !tbaa !99
  %259 = load ptr, ptr %18, align 8, !tbaa !99
  %260 = load ptr, ptr %6, align 8, !tbaa !99
  %261 = getelementptr inbounds float, ptr %260, i64 %255
  %262 = load float, ptr %261, align 4, !tbaa !22
  %263 = load ptr, ptr %8, align 8, !tbaa !99
  %264 = getelementptr inbounds float, ptr %263, i64 %255
  %265 = load float, ptr %264, align 4, !tbaa !22
  %266 = load ptr, ptr %10, align 8, !tbaa !99
  %267 = getelementptr inbounds float, ptr %266, i64 %255
  %268 = load float, ptr %267, align 4, !tbaa !22
  %269 = load float, ptr @MaxSep, align 4, !tbaa !22
  %270 = fmul fast float %269, %269
  %271 = load float, ptr @SofteningLen, align 4, !tbaa !22
  %272 = fmul fast float %271, %271
  invoke void %0(i32 noundef %63, ptr noundef nonnull %256, ptr noundef nonnull %257, ptr noundef nonnull %258, ptr noundef nonnull %259, float noundef nofpclass(nan inf) %262, float noundef nofpclass(nan inf) %265, float noundef nofpclass(nan inf) %268, float noundef nofpclass(nan inf) %270, float noundef nofpclass(nan inf) %272, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #16
          to label %273 unwind label %276

273:                                              ; preds = %254
  %274 = add nuw nsw i64 %255, 1
  %275 = icmp slt i64 %274, %75
  br i1 %275, label %254, label %223, !llvm.loop !104

276:                                              ; preds = %254
  %277 = landingpad { ptr, i32 }
          cleanup
  %278 = load ptr, ptr %18, align 8, !tbaa !99
  %279 = icmp eq ptr %278, null
  br i1 %279, label %281, label %280

280:                                              ; preds = %276
  call void @_ZdlPv(ptr noundef nonnull %278) #19
  br label %281

281:                                              ; preds = %280, %276, %106
  %282 = phi { ptr, i32 } [ %107, %106 ], [ %277, %276 ], [ %277, %280 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #17
  %283 = load ptr, ptr %16, align 8, !tbaa !99
  %284 = icmp eq ptr %283, null
  br i1 %284, label %286, label %285

285:                                              ; preds = %281
  call void @_ZdlPv(ptr noundef nonnull %283) #19
  br label %286

286:                                              ; preds = %285, %281, %104
  %287 = phi { ptr, i32 } [ %105, %104 ], [ %282, %281 ], [ %282, %285 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #17
  %288 = load ptr, ptr %14, align 8, !tbaa !99
  %289 = icmp eq ptr %288, null
  br i1 %289, label %291, label %290

290:                                              ; preds = %286
  call void @_ZdlPv(ptr noundef nonnull %288) #19
  br label %291

291:                                              ; preds = %290, %286, %102
  %292 = phi { ptr, i32 } [ %103, %102 ], [ %287, %286 ], [ %287, %290 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #17
  %293 = load ptr, ptr %12, align 8, !tbaa !99
  %294 = icmp eq ptr %293, null
  br i1 %294, label %296, label %295

295:                                              ; preds = %291
  call void @_ZdlPv(ptr noundef nonnull %293) #19
  br label %296

296:                                              ; preds = %295, %291, %100
  %297 = phi { ptr, i32 } [ %101, %100 ], [ %292, %291 ], [ %292, %295 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #17
  %298 = load ptr, ptr %10, align 8, !tbaa !99
  %299 = icmp eq ptr %298, null
  br i1 %299, label %301, label %300

300:                                              ; preds = %296
  call void @_ZdlPv(ptr noundef nonnull %298) #19
  br label %301

301:                                              ; preds = %300, %296, %98
  %302 = phi { ptr, i32 } [ %99, %98 ], [ %297, %296 ], [ %297, %300 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #17
  %303 = load ptr, ptr %8, align 8, !tbaa !99
  %304 = icmp eq ptr %303, null
  br i1 %304, label %306, label %305

305:                                              ; preds = %301
  call void @_ZdlPv(ptr noundef nonnull %303) #19
  br label %306

306:                                              ; preds = %305, %301, %96
  %307 = phi { ptr, i32 } [ %97, %96 ], [ %302, %301 ], [ %302, %305 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #17
  %308 = load ptr, ptr %6, align 8, !tbaa !99
  %309 = icmp eq ptr %308, null
  br i1 %309, label %311, label %310

310:                                              ; preds = %306
  call void @_ZdlPv(ptr noundef nonnull %308) #19
  br label %311

311:                                              ; preds = %310, %306
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  resume { ptr, i32 } %307
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef nofpclass(nan inf)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: optsize uwtable
define internal void @_ZNSt6vectorIfSaIfEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = icmp ugt i64 %1, 2305843009213693951
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #20
  unreachable

6:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %18

9:                                                ; preds = %6
  %10 = tail call noundef ptr @_ZNSt15__new_allocatorIfE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #16
  store ptr %10, ptr %0, align 8, !tbaa !99
  %11 = getelementptr inbounds float, ptr %10, i64 %1
  %12 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !105
  store float 0.000000e+00, ptr %10, align 4, !tbaa !22
  %13 = getelementptr float, ptr %10, i64 1
  %14 = icmp eq i64 %1, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = shl nuw nsw i64 %1, 2
  %17 = add nsw i64 %16, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %13, i8 0, i64 %17, i1 false), !tbaa !22
  br label %18

18:                                               ; preds = %15, %9, %8
  %19 = phi ptr [ %13, %9 ], [ %11, %15 ], [ null, %8 ]
  %20 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !106
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZNSt15__new_allocatorIfE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) #12 comdat align 2 {
  %4 = icmp ugt i64 %1, 2305843009213693951
  br i1 %4, label %5, label %9, !prof !107

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 4611686018427387903
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 2
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #21
  ret ptr %11
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress norecurse optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #14 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = tail call i32 @atoi(ptr nocapture noundef %6) #22
  store i32 %7, ptr @NumIters, align 4, !tbaa !98
  br label %8

8:                                                ; preds = %4, %2
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 12) #16
  %10 = load i32, ptr @NumIters, align 4, !tbaa !98
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %10) #16
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.3, i64 noundef 1) #16
  tail call void @_Z3runPFviPfS_S_S_fffffRfS0_S0_EPKc(ptr noundef nonnull @_Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_, ptr noundef nonnull @.str.5) #16
  tail call void @_Z3runPFviPfS_S_S_fffffRfS0_S0_EPKc(ptr noundef nonnull @_Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_, ptr noundef nonnull @.str.6) #16
  tail call void @_Z3runPFviPfS_S_S_fffffRfS0_S0_EPKc(ptr noundef nonnull @_Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_, ptr noundef nonnull @.str.7) #16
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree nosync nounwind optsize memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { optsize uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { optsize "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { nounwind optsize "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nobuiltin nounwind optsize "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #10 = { noreturn optsize "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress optsize uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #13 = { nobuiltin optsize allocsize(0) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #14 = { mustprogress norecurse optsize uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(read) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #16 = { optsize }
attributes #17 = { nounwind }
attributes #18 = { nounwind optsize }
attributes #19 = { builtin nounwind optsize }
attributes #20 = { noreturn optsize }
attributes #21 = { builtin optsize allocsize(0) }
attributes #22 = { nounwind optsize willreturn memory(read) }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZL18GravityForceKernelILi4EL_Z17PolyCoefficients4EEviPfS0_S0_S0_fffffRfS1_S1_: %x"}
!9 = distinct !{!9, !"_ZL18GravityForceKernelILi4EL_Z17PolyCoefficients4EEviPfS0_S0_S0_fffffRfS1_S1_"}
!10 = !{!11}
!11 = distinct !{!11, !9, !"_ZL18GravityForceKernelILi4EL_Z17PolyCoefficients4EEviPfS0_S0_S0_fffffRfS1_S1_: %y"}
!12 = !{!13}
!13 = distinct !{!13, !9, !"_ZL18GravityForceKernelILi4EL_Z17PolyCoefficients4EEviPfS0_S0_S0_fffffRfS1_S1_: %z"}
!14 = !{!15}
!15 = distinct !{!15, !9, !"_ZL18GravityForceKernelILi4EL_Z17PolyCoefficients4EEviPfS0_S0_S0_fffffRfS1_S1_: %mass"}
!16 = !{!17}
!17 = distinct !{!17, !9, !"_ZL18GravityForceKernelILi4EL_Z17PolyCoefficients4EEviPfS0_S0_S0_fffffRfS1_S1_: %ax"}
!18 = !{!19}
!19 = distinct !{!19, !9, !"_ZL18GravityForceKernelILi4EL_Z17PolyCoefficients4EEviPfS0_S0_S0_fffffRfS1_S1_: %ay"}
!20 = !{!21}
!21 = distinct !{!21, !9, !"_ZL18GravityForceKernelILi4EL_Z17PolyCoefficients4EEviPfS0_S0_S0_fffffRfS1_S1_: %az"}
!22 = !{!23, !23, i64 0}
!23 = !{!"float", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C++ TBAA"}
!26 = !{!11, !13, !15, !17, !19, !21}
!27 = !{!8, !13, !15, !17, !19, !21}
!28 = !{!8, !11, !15, !17, !19, !21}
!29 = !{!8, !11, !13, !17, !19, !21}
!30 = !{!8, !11, !13, !15, !17, !19, !21}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = distinct !{!33, !32}
!34 = !{!8, !11, !13, !15, !19, !21}
!35 = !{!8, !11, !13, !15, !17, !21}
!36 = !{!8, !11, !13, !15, !17, !19}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZL18GravityForceKernelILi5EL_Z17PolyCoefficients5EEviPfS0_S0_S0_fffffRfS1_S1_: %x"}
!39 = distinct !{!39, !"_ZL18GravityForceKernelILi5EL_Z17PolyCoefficients5EEviPfS0_S0_S0_fffffRfS1_S1_"}
!40 = !{!41}
!41 = distinct !{!41, !39, !"_ZL18GravityForceKernelILi5EL_Z17PolyCoefficients5EEviPfS0_S0_S0_fffffRfS1_S1_: %y"}
!42 = !{!43}
!43 = distinct !{!43, !39, !"_ZL18GravityForceKernelILi5EL_Z17PolyCoefficients5EEviPfS0_S0_S0_fffffRfS1_S1_: %z"}
!44 = !{!45}
!45 = distinct !{!45, !39, !"_ZL18GravityForceKernelILi5EL_Z17PolyCoefficients5EEviPfS0_S0_S0_fffffRfS1_S1_: %mass"}
!46 = !{!47}
!47 = distinct !{!47, !39, !"_ZL18GravityForceKernelILi5EL_Z17PolyCoefficients5EEviPfS0_S0_S0_fffffRfS1_S1_: %ax"}
!48 = !{!49}
!49 = distinct !{!49, !39, !"_ZL18GravityForceKernelILi5EL_Z17PolyCoefficients5EEviPfS0_S0_S0_fffffRfS1_S1_: %ay"}
!50 = !{!51}
!51 = distinct !{!51, !39, !"_ZL18GravityForceKernelILi5EL_Z17PolyCoefficients5EEviPfS0_S0_S0_fffffRfS1_S1_: %az"}
!52 = !{!41, !43, !45, !47, !49, !51}
!53 = !{!38, !43, !45, !47, !49, !51}
!54 = !{!38, !41, !45, !47, !49, !51}
!55 = !{!38, !41, !43, !47, !49, !51}
!56 = !{!38, !41, !43, !45, !47, !49, !51}
!57 = distinct !{!57, !32}
!58 = distinct !{!58, !32}
!59 = !{!38, !41, !43, !45, !49, !51}
!60 = !{!38, !41, !43, !45, !47, !51}
!61 = !{!38, !41, !43, !45, !47, !49}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZL18GravityForceKernelILi6EL_Z17PolyCoefficients6EEviPfS0_S0_S0_fffffRfS1_S1_: %x"}
!64 = distinct !{!64, !"_ZL18GravityForceKernelILi6EL_Z17PolyCoefficients6EEviPfS0_S0_S0_fffffRfS1_S1_"}
!65 = !{!66}
!66 = distinct !{!66, !64, !"_ZL18GravityForceKernelILi6EL_Z17PolyCoefficients6EEviPfS0_S0_S0_fffffRfS1_S1_: %y"}
!67 = !{!68}
!68 = distinct !{!68, !64, !"_ZL18GravityForceKernelILi6EL_Z17PolyCoefficients6EEviPfS0_S0_S0_fffffRfS1_S1_: %z"}
!69 = !{!70}
!70 = distinct !{!70, !64, !"_ZL18GravityForceKernelILi6EL_Z17PolyCoefficients6EEviPfS0_S0_S0_fffffRfS1_S1_: %mass"}
!71 = !{!72}
!72 = distinct !{!72, !64, !"_ZL18GravityForceKernelILi6EL_Z17PolyCoefficients6EEviPfS0_S0_S0_fffffRfS1_S1_: %ax"}
!73 = !{!74}
!74 = distinct !{!74, !64, !"_ZL18GravityForceKernelILi6EL_Z17PolyCoefficients6EEviPfS0_S0_S0_fffffRfS1_S1_: %ay"}
!75 = !{!76}
!76 = distinct !{!76, !64, !"_ZL18GravityForceKernelILi6EL_Z17PolyCoefficients6EEviPfS0_S0_S0_fffffRfS1_S1_: %az"}
!77 = !{!66, !68, !70, !72, !74, !76}
!78 = !{!63, !68, !70, !72, !74, !76}
!79 = !{!63, !66, !70, !72, !74, !76}
!80 = !{!63, !66, !68, !72, !74, !76}
!81 = !{!63, !66, !68, !70, !72, !74, !76}
!82 = distinct !{!82, !32}
!83 = distinct !{!83, !32}
!84 = !{!63, !66, !68, !70, !74, !76}
!85 = !{!63, !66, !68, !70, !72, !76}
!86 = !{!63, !66, !68, !70, !72, !74}
!87 = !{!88, !88, i64 0}
!88 = !{!"vtable pointer", !25, i64 0}
!89 = !{!90, !93, i64 32}
!90 = !{!"_ZTSSt8ios_base", !91, i64 8, !91, i64 16, !92, i64 24, !93, i64 28, !93, i64 32, !94, i64 40, !95, i64 48, !24, i64 64, !96, i64 192, !94, i64 200, !97, i64 208}
!91 = !{!"long", !24, i64 0}
!92 = !{!"_ZTSSt13_Ios_Fmtflags", !24, i64 0}
!93 = !{!"_ZTSSt12_Ios_Iostate", !24, i64 0}
!94 = !{!"any pointer", !24, i64 0}
!95 = !{!"_ZTSNSt8ios_base6_WordsE", !94, i64 0, !91, i64 8}
!96 = !{!"int", !24, i64 0}
!97 = !{!"_ZTSSt6locale", !94, i64 0}
!98 = !{!96, !96, i64 0}
!99 = !{!100, !94, i64 0}
!100 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !94, i64 0, !94, i64 8, !94, i64 16}
!101 = distinct !{!101, !32}
!102 = distinct !{!102, !32}
!103 = distinct !{!103, !32}
!104 = distinct !{!104, !32}
!105 = !{!100, !94, i64 16}
!106 = !{!100, !94, i64 8}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{!94, !94, i64 0}
