; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/DOE-ProxyApps-C++/HPCCG/HPCCG.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%struct.HPC_Sparse_Matrix_STRUCT = type { ptr, i32, i32, i32, i64, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>
%class.YAML_Doc = type { %class.YAML_Element, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.YAML_Element = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<YAML_Element *, std::allocator<YAML_Element *>>::_Vector_impl" }
%"struct.std::_Vector_base<YAML_Element *, std::allocator<YAML_Element *>>::_Vector_impl" = type { %"struct.std::_Vector_base<YAML_Element *, std::allocator<YAML_Element *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<YAML_Element *, std::allocator<YAML_Element *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"class.std::locale", i64, %union.anon }
%union.anon = type { i64, [8 x i8] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"struct.std::ios_base::_Words", %"class.std::locale" }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon.37, %union.anon.37, %union.anon.37, %union.anon.37, %union.anon.37, %union.anon.37, %union.anon.37, %union.anon.37, %union.anon.37, %union.anon.37, %union.anon.37, %union.anon.37, %union.anon.37, %union.anon.37 }
%struct.timeval = type { i64, i64 }
%union.anon.37 = type { i64 }

$_ZN12YAML_ElementC2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_ = comdat any

$_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc = comdat any

$_ZNSt15__new_allocatorIP12YAML_ElementE8allocateEmPKv = comdat any

$_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_ = comdat any

@llvm.global_ctors = appending global [7 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_HPCCG.cpp, ptr null }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_HPC_sparsemv.cpp, ptr null }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_YAML_Doc.cpp, ptr null }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_YAML_Element.cpp, ptr null }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_generate_matrix.cpp, ptr null }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_main.cpp, ptr null }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_read_HPC_row.cpp, ptr null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@.str = private unnamed_addr constant [20 x i8] c"Initial Residual = \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Iteration = \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"   Residual = \00", align 1
@_ZStL8__ioinit.2 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@_ZStL8__ioinit.6 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Mini-Application Name: \00", align 1
@.str.1.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2.9 = private unnamed_addr constant [27 x i8] c"Mini-Application Version: \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%04d:%02d:%02d-%02d:%02d:%02d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.7.10 = private unnamed_addr constant [6 x i8] c".yaml\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"mkdir \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@_ZStL8__ioinit.12 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.20 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.2.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3.22 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5.17 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [5 x ptr], [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZStL8__ioinit.26 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@_ZStL8__ioinit.28 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.29 = private unnamed_addr constant [7 x i8] c"Usage:\00", align 1
@.str.1.30 = private unnamed_addr constant [9 x i8] c"Mode 1: \00", align 1
@.str.2.31 = private unnamed_addr constant [10 x i8] c" nx ny nz\00", align 1
@.str.3.32 = private unnamed_addr constant [64 x i8] c"     where nx, ny and nz are the local sub-block dimensions, or\00", align 1
@.str.4.33 = private unnamed_addr constant [9 x i8] c"Mode 2: \00", align 1
@.str.5.34 = private unnamed_addr constant [16 x i8] c" HPC_data_file \00", align 1
@.str.6.35 = private unnamed_addr constant [79 x i8] c"     where HPC_data_file is a globally accessible file containing matrix data.\00", align 1
@.str.7.36 = private unnamed_addr constant [22 x i8] c"Error in call to CG: \00", align 1
@.str.8.37 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.9.38 = private unnamed_addr constant [6 x i8] c"hpccg\00", align 1
@.str.10.39 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.11.40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12.41 = private unnamed_addr constant [12 x i8] c"Parallelism\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"MPI not enabled\00", align 1
@.str.14.42 = private unnamed_addr constant [19 x i8] c"OpenMP not enabled\00", align 1
@.str.15.43 = private unnamed_addr constant [11 x i8] c"Dimensions\00", align 1
@.str.16.44 = private unnamed_addr constant [3 x i8] c"nx\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"ny\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"nz\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Number of iterations: \00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"Final residual: \00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZStL8__ioinit.48 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str.51 = private unnamed_addr constant [32 x i8] c"Reading matrix info from %s...\0A\00", align 1
@.str.1.52 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2.53 = private unnamed_addr constant [29 x i8] c"Error: Cannot open file: %s\0A\00", align 1
@.str.3.54 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4.55 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.8.56 = private unnamed_addr constant [7 x i8] c"%lf %d\00", align 1
@.str.10.57 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1

@_ZN8YAML_DocC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_ = internal unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN8YAML_DocC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_
@_ZN8YAML_DocD1Ev = internal unnamed_addr alias void (ptr), ptr @_ZN8YAML_DocD2Ev

; Function Attrs: optsize uwtable
define internal void @_GLOBAL__sub_I_HPCCG.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #26
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #27
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_Z5HPCCGP24HPC_Sparse_Matrix_STRUCTPKdPdidRiRdS3_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, double noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, ptr nocapture noundef nonnull align 8 dereferenceable(8) %6, ptr nocapture noundef writeonly %7) #4 {
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = tail call noundef double @_Z7mytimerv() #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #27
  store double 0.000000e+00, ptr %9, align 8, !tbaa !7
  %13 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !16
  %17 = sext i32 %14 to i64
  %18 = icmp slt i32 %14, 0
  %19 = shl nsw i64 %17, 3
  %20 = select i1 %18, i64 -1, i64 %19
  %21 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %20) #28
  %22 = sext i32 %16 to i64
  %23 = icmp slt i32 %16, 0
  %24 = shl nsw i64 %22, 3
  %25 = select i1 %23, i64 -1, i64 %24
  %26 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %25) #28
  %27 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %20) #28
  store double 0.000000e+00, ptr %6, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #27
  store double 0.000000e+00, ptr %10, align 8, !tbaa !7
  %28 = sdiv i32 %3, 10
  %29 = tail call i32 @llvm.smin.i32(i32 %28, i32 50)
  %30 = tail call i32 @llvm.smax.i32(i32 %29, i32 1)
  %31 = tail call noundef double @_Z7mytimerv() #26
  %32 = tail call noundef i32 @_Z6waxpbyidPKddS0_Pd(i32 noundef %14, double noundef 1.000000e+00, ptr noundef %2, double noundef 0.000000e+00, ptr noundef %2, ptr noundef nonnull %26) #26
  %33 = tail call noundef double @_Z7mytimerv() #26
  %34 = fsub double %33, %31
  %35 = fadd double %34, 0.000000e+00
  %36 = tail call noundef double @_Z7mytimerv() #26
  %37 = tail call noundef i32 @_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd(ptr noundef %0, ptr noundef nonnull %26, ptr noundef nonnull %27) #26
  %38 = tail call noundef double @_Z7mytimerv() #26
  %39 = fsub double %38, %36
  %40 = fadd double %39, 0.000000e+00
  %41 = tail call noundef double @_Z7mytimerv() #26
  %42 = tail call noundef i32 @_Z6waxpbyidPKddS0_Pd(i32 noundef %14, double noundef 1.000000e+00, ptr noundef %1, double noundef -1.000000e+00, ptr noundef nonnull %27, ptr noundef nonnull %21) #26
  %43 = tail call noundef double @_Z7mytimerv() #26
  %44 = tail call noundef double @_Z7mytimerv() #26
  %45 = call noundef i32 @_Z4ddotiPKdS0_PdRd(i32 noundef %14, ptr noundef nonnull %21, ptr noundef nonnull %21, ptr noundef nonnull %10, ptr noundef nonnull align 8 dereferenceable(8) %9) #26
  %46 = call noundef double @_Z7mytimerv() #26
  %47 = insertelement <2 x double> poison, double %46, i64 0
  %48 = insertelement <2 x double> %47, double %43, i64 1
  %49 = insertelement <2 x double> poison, double %44, i64 0
  %50 = insertelement <2 x double> %49, double %41, i64 1
  %51 = fsub <2 x double> %48, %50
  %52 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %35, i64 1
  %53 = fadd <2 x double> %51, %52
  %54 = load double, ptr %10, align 8, !tbaa !7
  %55 = call double @sqrt(double noundef %54) #29
  store double %55, ptr %6, align 8, !tbaa !7
  %56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 19) #26
  %57 = load double, ptr %6, align 8, !tbaa !7
  %58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %57) #26
  %59 = load ptr, ptr %58, align 8, !tbaa !17
  %60 = getelementptr i8, ptr %59, i64 -24
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds i8, ptr %58, i64 %61
  %63 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %62, i8 noundef signext 10) #26
  %64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %58, i8 noundef signext %63) #26
  %65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %64) #26
  %66 = icmp sgt i32 %3, 1
  %67 = load double, ptr %6, align 8
  %68 = fcmp ogt double %67, %4
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %79, label %70

70:                                               ; preds = %127, %8
  %71 = phi double [ %40, %8 ], [ %132, %127 ]
  %72 = phi <2 x double> [ %53, %8 ], [ %153, %127 ]
  %73 = getelementptr inbounds double, ptr %7, i64 1
  store <2 x double> %72, ptr %73, align 8, !tbaa !7
  %74 = getelementptr inbounds double, ptr %7, i64 3
  store double %71, ptr %74, align 8, !tbaa !7
  %75 = load double, ptr %9, align 8, !tbaa !7
  %76 = getelementptr inbounds double, ptr %7, i64 4
  store double %75, ptr %76, align 8, !tbaa !7
  call void @_ZdaPv(ptr noundef nonnull %26) #30
  call void @_ZdaPv(ptr noundef nonnull %27) #30
  call void @_ZdaPv(ptr noundef nonnull %21) #30
  %77 = call noundef double @_Z7mytimerv() #26
  %78 = fsub double %77, %12
  store double %78, ptr %7, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #27
  ret i32 0

79:                                               ; preds = %127, %8
  %80 = phi i32 [ %111, %127 ], [ 1, %8 ]
  %81 = phi double [ %132, %127 ], [ %40, %8 ]
  %82 = phi <2 x double> [ %153, %127 ], [ %53, %8 ]
  %83 = icmp eq i32 %80, 1
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = call noundef double @_Z7mytimerv() #26
  %86 = call noundef i32 @_Z6waxpbyidPKddS0_Pd(i32 noundef %14, double noundef 1.000000e+00, ptr noundef nonnull %21, double noundef 0.000000e+00, ptr noundef nonnull %21, ptr noundef nonnull %26) #26
  %87 = extractelement <2 x double> %82, i64 0
  br label %100

88:                                               ; preds = %79
  %89 = load double, ptr %10, align 8, !tbaa !7
  %90 = call noundef double @_Z7mytimerv() #26
  %91 = call noundef i32 @_Z4ddotiPKdS0_PdRd(i32 noundef %14, ptr noundef nonnull %21, ptr noundef nonnull %21, ptr noundef nonnull %10, ptr noundef nonnull align 8 dereferenceable(8) %9) #26
  %92 = call noundef double @_Z7mytimerv() #26
  %93 = fsub double %92, %90
  %94 = extractelement <2 x double> %82, i64 0
  %95 = fadd double %94, %93
  %96 = load double, ptr %10, align 8, !tbaa !7
  %97 = fdiv double %96, %89
  %98 = call noundef double @_Z7mytimerv() #26
  %99 = call noundef i32 @_Z6waxpbyidPKddS0_Pd(i32 noundef %14, double noundef 1.000000e+00, ptr noundef nonnull %21, double noundef %97, ptr noundef nonnull %26, ptr noundef nonnull %26) #26
  br label %100

100:                                              ; preds = %88, %84
  %101 = phi double [ %98, %88 ], [ %85, %84 ]
  %102 = phi double [ %95, %88 ], [ %87, %84 ]
  %103 = call noundef double @_Z7mytimerv() #26
  %104 = fsub double %103, %101
  %105 = extractelement <2 x double> %82, i64 1
  %106 = fadd double %105, %104
  %107 = load double, ptr %10, align 8, !tbaa !7
  %108 = call double @sqrt(double noundef %107) #29
  store double %108, ptr %6, align 8, !tbaa !7
  %109 = urem i32 %80, %30
  %110 = icmp eq i32 %109, 0
  %111 = add nuw nsw i32 %80, 1
  %112 = icmp eq i32 %111, %3
  %113 = select i1 %110, i1 true, i1 %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %100
  %115 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 12) #26
  %116 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %80) #26
  %117 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %116, ptr noundef nonnull @.str.2, i64 noundef 14) #26
  %118 = load double, ptr %6, align 8, !tbaa !7
  %119 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %116, double noundef %118) #26
  %120 = load ptr, ptr %119, align 8, !tbaa !17
  %121 = getelementptr i8, ptr %120, i64 -24
  %122 = load i64, ptr %121, align 8
  %123 = getelementptr inbounds i8, ptr %119, i64 %122
  %124 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %123, i8 noundef signext 10) #26
  %125 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %119, i8 noundef signext %124) #26
  %126 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %125) #26
  br label %127

127:                                              ; preds = %114, %100
  %128 = call noundef double @_Z7mytimerv() #26
  %129 = call noundef i32 @_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd(ptr noundef %0, ptr noundef nonnull %26, ptr noundef nonnull %27) #26
  %130 = call noundef double @_Z7mytimerv() #26
  %131 = fsub double %130, %128
  %132 = fadd double %81, %131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #27
  store double 0.000000e+00, ptr %11, align 8, !tbaa !7
  %133 = call noundef double @_Z7mytimerv() #26
  %134 = call noundef i32 @_Z4ddotiPKdS0_PdRd(i32 noundef %14, ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(8) %9) #26
  %135 = call noundef double @_Z7mytimerv() #26
  %136 = load double, ptr %10, align 8, !tbaa !7
  %137 = load double, ptr %11, align 8, !tbaa !7
  %138 = fdiv double %136, %137
  store double %138, ptr %11, align 8, !tbaa !7
  %139 = call noundef double @_Z7mytimerv() #26
  %140 = load double, ptr %11, align 8, !tbaa !7
  %141 = call noundef i32 @_Z6waxpbyidPKddS0_Pd(i32 noundef %14, double noundef 1.000000e+00, ptr noundef %2, double noundef %140, ptr noundef nonnull %26, ptr noundef %2) #26
  %142 = load double, ptr %11, align 8, !tbaa !7
  %143 = fneg double %142
  %144 = call noundef i32 @_Z6waxpbyidPKddS0_Pd(i32 noundef %14, double noundef 1.000000e+00, ptr noundef nonnull %21, double noundef %143, ptr noundef nonnull %27, ptr noundef nonnull %21) #26
  %145 = call noundef double @_Z7mytimerv() #26
  %146 = insertelement <2 x double> poison, double %135, i64 0
  %147 = insertelement <2 x double> %146, double %145, i64 1
  %148 = insertelement <2 x double> poison, double %133, i64 0
  %149 = insertelement <2 x double> %148, double %139, i64 1
  %150 = fsub <2 x double> %147, %149
  %151 = insertelement <2 x double> poison, double %102, i64 0
  %152 = insertelement <2 x double> %151, double %106, i64 1
  %153 = fadd <2 x double> %152, %150
  store i32 %80, ptr %5, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #27
  %154 = icmp slt i32 %111, %3
  %155 = load double, ptr %6, align 8
  %156 = fcmp ogt double %155, %4
  %157 = select i1 %154, i1 %156, i1 false
  br i1 %157, label %79, label %70, !llvm.loop !20
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress optsize uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %0, i8 noundef signext %1) local_unnamed_addr #4 align 2 {
  %3 = getelementptr inbounds %"class.std::basic_ios", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZSt16__throw_bad_castv() #31
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::ctype", ptr %4, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !31
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = zext i8 %1 to i64
  %13 = getelementptr inbounds %"class.std::ctype", ptr %4, i64 0, i32 9, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !34
  br label %20

15:                                               ; preds = %7
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %4) #26
  %16 = load ptr, ptr %4, align 8, !tbaa !17
  %17 = getelementptr inbounds ptr, ptr %16, i64 6
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef signext i8 %18(ptr noundef nonnull align 8 dereferenceable(570) %4, i8 noundef signext %1) #26
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i8 [ %14, %11 ], [ %19, %15 ]
  ret i8 %21
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn optsize
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

; Function Attrs: optsize
declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

; Function Attrs: optsize uwtable
define internal void @_GLOBAL__sub_I_HPC_sparsemv.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit.2) #26
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit.2, ptr nonnull @__dso_handle) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !11
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  %12 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !37
  %14 = zext i32 %5 to i64
  br label %16

15:                                               ; preds = %27, %3
  ret i32 0

16:                                               ; preds = %27, %7
  %17 = phi i64 [ 0, %7 ], [ %30, %27 ]
  %18 = getelementptr inbounds ptr, ptr %9, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !38
  %20 = getelementptr inbounds ptr, ptr %11, i64 %17
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  %22 = getelementptr inbounds i32, ptr %13, i64 %17
  %23 = load i32, ptr %22, align 4, !tbaa !19
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = zext i32 %23 to i64
  br label %32

27:                                               ; preds = %32, %16
  %28 = phi double [ 0.000000e+00, %16 ], [ %43, %32 ]
  %29 = getelementptr inbounds double, ptr %2, i64 %17
  store double %28, ptr %29, align 8, !tbaa !7
  %30 = add nuw nsw i64 %17, 1
  %31 = icmp eq i64 %30, %14
  br i1 %31, label %15, label %16, !llvm.loop !39

32:                                               ; preds = %32, %25
  %33 = phi i64 [ 0, %25 ], [ %44, %32 ]
  %34 = phi double [ 0.000000e+00, %25 ], [ %43, %32 ]
  %35 = getelementptr inbounds double, ptr %19, i64 %33
  %36 = load double, ptr %35, align 8, !tbaa !7
  %37 = getelementptr inbounds i32, ptr %21, i64 %33
  %38 = load i32, ptr %37, align 4, !tbaa !19
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, ptr %1, i64 %39
  %41 = load double, ptr %40, align 8, !tbaa !7
  %42 = fmul double %36, %41
  %43 = fadd double %34, %42
  %44 = add nuw nsw i64 %33, 1
  %45 = icmp eq i64 %44, %26
  br i1 %45, label %27, label %32, !llvm.loop !40
}

; Function Attrs: optsize uwtable
define internal void @_GLOBAL__sub_I_YAML_Doc.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit.6) #26
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit.6, ptr nonnull @__dso_handle) #27
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZN8YAML_DocC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN12YAML_ElementC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #26
  %6 = getelementptr inbounds %class.YAML_Doc, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %class.YAML_Doc, ptr %0, i64 0, i32 1, i32 2
  store ptr %7, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds %class.YAML_Doc, ptr %0, i64 0, i32 1, i32 1
  store i64 0, ptr %8, align 8, !tbaa !43
  store i8 0, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %class.YAML_Doc, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %class.YAML_Doc, ptr %0, i64 0, i32 2, i32 2
  store ptr %10, ptr %9, align 8, !tbaa !41
  %11 = getelementptr inbounds %class.YAML_Doc, ptr %0, i64 0, i32 2, i32 1
  store i64 0, ptr %11, align 8, !tbaa !43
  store i8 0, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %class.YAML_Doc, ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %class.YAML_Doc, ptr %0, i64 0, i32 3, i32 2
  store ptr %13, ptr %12, align 8, !tbaa !41
  %14 = getelementptr inbounds %class.YAML_Doc, ptr %0, i64 0, i32 3, i32 1
  store i64 0, ptr %14, align 8, !tbaa !43
  store i8 0, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds %class.YAML_Doc, ptr %0, i64 0, i32 4
  %16 = getelementptr inbounds %class.YAML_Doc, ptr %0, i64 0, i32 4, i32 2
  store ptr %16, ptr %15, align 8, !tbaa !41
  %17 = getelementptr inbounds %class.YAML_Doc, ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %17, align 8, !tbaa !43
  store i8 0, ptr %16, align 8, !tbaa !34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %1) #26
          to label %18 unwind label %22

18:                                               ; preds = %5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %2) #26
          to label %19 unwind label %22

19:                                               ; preds = %18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %3) #26
          to label %20 unwind label %22

20:                                               ; preds = %19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %4) #26
          to label %21 unwind label %22

21:                                               ; preds = %20
  ret void

22:                                               ; preds = %20, %19, %18, %5
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = load ptr, ptr %15, align 8, !tbaa !45
  %25 = icmp eq ptr %24, %16
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @_ZdlPv(ptr noundef %24) #30
  br label %27

27:                                               ; preds = %26, %22
  %28 = load ptr, ptr %12, align 8, !tbaa !45
  %29 = icmp eq ptr %28, %13
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @_ZdlPv(ptr noundef %28) #30
  br label %31

31:                                               ; preds = %30, %27
  %32 = load ptr, ptr %9, align 8, !tbaa !45
  %33 = icmp eq ptr %32, %10
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @_ZdlPv(ptr noundef %32) #30
  br label %35

35:                                               ; preds = %34, %31
  %36 = load ptr, ptr %6, align 8, !tbaa !45
  %37 = icmp eq ptr %36, %7
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @_ZdlPv(ptr noundef %36) #30
  br label %39

39:                                               ; preds = %38, %35
  tail call void @_ZN12YAML_ElementD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #29
  resume { ptr, i32 } %23
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize uwtable
define internal void @_ZN12YAML_ElementC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %2, ptr %0, align 8, !tbaa !41
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %3, align 8, !tbaa !43
  store i8 0, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, i32 2
  store ptr %5, ptr %4, align 8, !tbaa !41
  %6 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, i32 1
  store i64 0, ptr %6, align 8, !tbaa !43
  store i8 0, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %8 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.3, i64 noundef 0) #26
          to label %9 unwind label %13

9:                                                ; preds = %1
  %10 = load i64, ptr %6, align 8, !tbaa !43
  %11 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %10, ptr noundef nonnull @.str.3, i64 noundef 0) #26
          to label %12 unwind label %13

12:                                               ; preds = %9
  ret void

13:                                               ; preds = %9, %1
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = load ptr, ptr %7, align 8, !tbaa !46
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @_ZdlPv(ptr noundef nonnull %15) #30
  br label %18

18:                                               ; preds = %17, %13
  %19 = load ptr, ptr %4, align 8, !tbaa !45
  %20 = icmp eq ptr %19, %5
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @_ZdlPv(ptr noundef %19) #30
  br label %22

22:                                               ; preds = %21, %18
  %23 = load ptr, ptr %0, align 8, !tbaa !45
  %24 = icmp eq ptr %23, %2
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @_ZdlPv(ptr noundef %23) #30
  br label %26

26:                                               ; preds = %25, %22
  resume { ptr, i32 } %14
}

; Function Attrs: optsize
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN8YAML_DocD2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %class.YAML_Doc, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %class.YAML_Doc, ptr %0, i64 0, i32 4, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #30
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %class.YAML_Doc, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %class.YAML_Doc, ptr %0, i64 0, i32 3, i32 2
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #30
  br label %13

13:                                               ; preds = %12, %7
  %14 = getelementptr inbounds %class.YAML_Doc, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = getelementptr inbounds %class.YAML_Doc, ptr %0, i64 0, i32 2, i32 2
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @_ZdlPv(ptr noundef %15) #30
  br label %19

19:                                               ; preds = %18, %13
  %20 = getelementptr inbounds %class.YAML_Doc, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = getelementptr inbounds %class.YAML_Doc, ptr %0, i64 0, i32 1, i32 2
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @_ZdlPv(ptr noundef %21) #30
  br label %25

25:                                               ; preds = %24, %19
  tail call void @_ZN12YAML_ElementD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #29
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZN8YAML_Doc12generateYAMLB5cxx11Ev(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca i64, align 8
  %13 = alloca [25 x i8], align 16
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca %"class.std::__cxx11::basic_string", align 8
  %19 = alloca %"class.std::__cxx11::basic_string", align 8
  %20 = alloca %"class.std::__cxx11::basic_string", align 8
  %21 = alloca %"class.std::__cxx11::basic_string", align 8
  %22 = alloca %"class.std::__cxx11::basic_string", align 8
  %23 = alloca %"class.std::__cxx11::basic_string", align 8
  %24 = alloca %"class.std::__cxx11::basic_string", align 8
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %25, ptr %0, align 8, !tbaa !41
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %26, align 8, !tbaa !43
  store i8 0, ptr %25, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %27, ptr %5, align 8, !tbaa !41, !alias.scope !48
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %25, ptr noundef nonnull %25) #26
          to label %28 unwind label %186

28:                                               ; preds = %2
  %29 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.7) #26
          to label %35 unwind label %30

30:                                               ; preds = %28
  %31 = landingpad { ptr, i32 }
          cleanup
  %32 = load ptr, ptr %5, align 8, !tbaa !45, !alias.scope !48
  %33 = icmp eq ptr %32, %27
  br i1 %33, label %200, label %34

34:                                               ; preds = %30
  call void @_ZdlPv(ptr noundef %32) #30
  br label %200

35:                                               ; preds = %28
  %36 = getelementptr inbounds %class.YAML_Doc, ptr %1, i64 0, i32 1
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %37 = load ptr, ptr %36, align 8, !tbaa !45, !noalias !51
  %38 = getelementptr inbounds %class.YAML_Doc, ptr %1, i64 0, i32 1, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !43, !noalias !51
  %40 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, i64 noundef %39) #26
          to label %41 unwind label %188

41:                                               ; preds = %35
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %42, ptr %4, align 8, !tbaa !41, !alias.scope !51
  %43 = load ptr, ptr %40, align 8, !tbaa !45
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %40, i64 0, i32 2
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %40, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !43
  %49 = add i64 %48, 1
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull align 8 %43, i64 %49, i1 false)
  br label %54

52:                                               ; preds = %41
  store ptr %43, ptr %4, align 8, !tbaa !45, !alias.scope !51
  %53 = load i64, ptr %44, align 8, !tbaa !34
  store i64 %53, ptr %42, align 8, !tbaa !34, !alias.scope !51
  br label %54

54:                                               ; preds = %52, %51, %46
  %55 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %40, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !43
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %56, ptr %57, align 8, !tbaa !43, !alias.scope !51
  store ptr %44, ptr %40, align 8, !tbaa !45
  store i64 0, ptr %55, align 8, !tbaa !43
  store i8 0, ptr %44, align 8, !tbaa !34
  %58 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.1.8) #26
          to label %59 unwind label %190

59:                                               ; preds = %54
  %60 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %60, ptr %3, align 8, !tbaa !41, !alias.scope !54
  %61 = load ptr, ptr %58, align 8, !tbaa !45
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %58, i64 0, i32 2
  %63 = icmp eq ptr %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %58, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !43
  %67 = add i64 %66, 1
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %60, ptr nonnull align 8 %61, i64 %67, i1 false)
  br label %72

70:                                               ; preds = %59
  store ptr %61, ptr %3, align 8, !tbaa !45, !alias.scope !54
  %71 = load i64, ptr %62, align 8, !tbaa !34
  store i64 %71, ptr %60, align 8, !tbaa !34, !alias.scope !54
  br label %72

72:                                               ; preds = %70, %69, %64
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %58, i64 0, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !43
  %75 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %74, ptr %75, align 8, !tbaa !43, !alias.scope !54
  store ptr %62, ptr %58, align 8, !tbaa !45
  store i64 0, ptr %73, align 8, !tbaa !43
  store i8 0, ptr %62, align 8, !tbaa !34
  %76 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #29
  %77 = load ptr, ptr %3, align 8, !tbaa !45
  %78 = icmp eq ptr %77, %60
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  call void @_ZdlPv(ptr noundef %77) #30
  br label %80

80:                                               ; preds = %79, %72
  %81 = load ptr, ptr %4, align 8, !tbaa !45
  %82 = icmp eq ptr %81, %42
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  call void @_ZdlPv(ptr noundef %81) #30
  br label %84

84:                                               ; preds = %83, %80
  %85 = load ptr, ptr %5, align 8, !tbaa !45
  %86 = icmp eq ptr %85, %27
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  call void @_ZdlPv(ptr noundef %85) #30
  br label %88

88:                                               ; preds = %87, %84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %89 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  store ptr %89, ptr %8, align 8, !tbaa !41, !alias.scope !57
  %90 = load ptr, ptr %0, align 8, !tbaa !45, !noalias !57
  %91 = load i64, ptr %26, align 8, !tbaa !43, !noalias !57
  %92 = getelementptr inbounds i8, ptr %90, i64 %91
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %90, ptr noundef %92) #26
          to label %93 unwind label %202

93:                                               ; preds = %88
  %94 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.2.9) #26
          to label %100 unwind label %95

95:                                               ; preds = %93
  %96 = landingpad { ptr, i32 }
          cleanup
  %97 = load ptr, ptr %8, align 8, !tbaa !45, !alias.scope !57
  %98 = icmp eq ptr %97, %89
  br i1 %98, label %216, label %99

99:                                               ; preds = %95
  call void @_ZdlPv(ptr noundef %97) #30
  br label %216

100:                                              ; preds = %93
  %101 = getelementptr inbounds %class.YAML_Doc, ptr %1, i64 0, i32 2
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %102 = load ptr, ptr %101, align 8, !tbaa !45, !noalias !60
  %103 = getelementptr inbounds %class.YAML_Doc, ptr %1, i64 0, i32 2, i32 1
  %104 = load i64, ptr %103, align 8, !tbaa !43, !noalias !60
  %105 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %102, i64 noundef %104) #26
          to label %106 unwind label %204

106:                                              ; preds = %100
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  store ptr %107, ptr %7, align 8, !tbaa !41, !alias.scope !60
  %108 = load ptr, ptr %105, align 8, !tbaa !45
  %109 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %105, i64 0, i32 2
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %105, i64 0, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !43
  %114 = add i64 %113, 1
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %107, ptr nonnull align 8 %108, i64 %114, i1 false)
  br label %119

117:                                              ; preds = %106
  store ptr %108, ptr %7, align 8, !tbaa !45, !alias.scope !60
  %118 = load i64, ptr %109, align 8, !tbaa !34
  store i64 %118, ptr %107, align 8, !tbaa !34, !alias.scope !60
  br label %119

119:                                              ; preds = %117, %116, %111
  %120 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %105, i64 0, i32 1
  %121 = load i64, ptr %120, align 8, !tbaa !43
  %122 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  store i64 %121, ptr %122, align 8, !tbaa !43, !alias.scope !60
  store ptr %109, ptr %105, align 8, !tbaa !45
  store i64 0, ptr %120, align 8, !tbaa !43
  store i8 0, ptr %109, align 8, !tbaa !34
  %123 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.1.8) #26
          to label %124 unwind label %206

124:                                              ; preds = %119
  %125 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  store ptr %125, ptr %6, align 8, !tbaa !41, !alias.scope !63
  %126 = load ptr, ptr %123, align 8, !tbaa !45
  %127 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %123, i64 0, i32 2
  %128 = icmp eq ptr %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %123, i64 0, i32 1
  %131 = load i64, ptr %130, align 8, !tbaa !43
  %132 = add i64 %131, 1
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %125, ptr nonnull align 8 %126, i64 %132, i1 false)
  br label %137

135:                                              ; preds = %124
  store ptr %126, ptr %6, align 8, !tbaa !45, !alias.scope !63
  %136 = load i64, ptr %127, align 8, !tbaa !34
  store i64 %136, ptr %125, align 8, !tbaa !34, !alias.scope !63
  br label %137

137:                                              ; preds = %135, %134, %129
  %138 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %123, i64 0, i32 1
  %139 = load i64, ptr %138, align 8, !tbaa !43
  %140 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  store i64 %139, ptr %140, align 8, !tbaa !43, !alias.scope !63
  store ptr %127, ptr %123, align 8, !tbaa !45
  store i64 0, ptr %138, align 8, !tbaa !43
  store i8 0, ptr %127, align 8, !tbaa !34
  %141 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %6) #29
  %142 = load ptr, ptr %6, align 8, !tbaa !45
  %143 = icmp eq ptr %142, %125
  br i1 %143, label %145, label %144

144:                                              ; preds = %137
  call void @_ZdlPv(ptr noundef %142) #30
  br label %145

145:                                              ; preds = %144, %137
  %146 = load ptr, ptr %7, align 8, !tbaa !45
  %147 = icmp eq ptr %146, %107
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  call void @_ZdlPv(ptr noundef %146) #30
  br label %149

149:                                              ; preds = %148, %145
  %150 = load ptr, ptr %8, align 8, !tbaa !45
  %151 = icmp eq ptr %150, %89
  br i1 %151, label %153, label %152

152:                                              ; preds = %149
  call void @_ZdlPv(ptr noundef %150) #30
  br label %153

153:                                              ; preds = %152, %149
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  %154 = getelementptr inbounds %class.YAML_Element, ptr %1, i64 0, i32 2
  %155 = getelementptr inbounds %class.YAML_Element, ptr %1, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !66
  %157 = load ptr, ptr %154, align 8, !tbaa !46
  %158 = icmp eq ptr %156, %157
  br i1 %158, label %164, label %159

159:                                              ; preds = %153
  %160 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %161 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %162 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %163 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  br label %218

164:                                              ; preds = %255, %153
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #27
  %165 = call i64 @time(ptr noundef nonnull %12) #29
  %166 = call ptr @localtime(ptr noundef nonnull %12) #29
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %13) #27
  %167 = getelementptr inbounds %struct.tm, ptr %166, i64 0, i32 5
  %168 = load i32, ptr %167, align 4, !tbaa !67
  %169 = add nsw i32 %168, 1900
  %170 = getelementptr inbounds %struct.tm, ptr %166, i64 0, i32 4
  %171 = load i32, ptr %170, align 8, !tbaa !69
  %172 = add nsw i32 %171, 1
  %173 = getelementptr inbounds %struct.tm, ptr %166, i64 0, i32 3
  %174 = load i32, ptr %173, align 4, !tbaa !70
  %175 = getelementptr inbounds %struct.tm, ptr %166, i64 0, i32 2
  %176 = load i32, ptr %175, align 8, !tbaa !71
  %177 = getelementptr inbounds %struct.tm, ptr %166, i64 0, i32 1
  %178 = load i32, ptr %177, align 4, !tbaa !72
  %179 = load i32, ptr %166, align 8, !tbaa !73
  %180 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %169, i32 noundef %172, i32 noundef %174, i32 noundef %176, i32 noundef %178, i32 noundef %179) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #27
  %181 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  store ptr %181, ptr %14, align 8, !tbaa !41
  %182 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  store i64 0, ptr %182, align 8, !tbaa !43
  store i8 0, ptr %181, align 8, !tbaa !34
  %183 = getelementptr inbounds %class.YAML_Doc, ptr %1, i64 0, i32 4
  %184 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %183, ptr noundef nonnull @.str.3) #29
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %280, label %362

186:                                              ; preds = %2
  %187 = landingpad { ptr, i32 }
          cleanup
  br label %200

188:                                              ; preds = %35
  %189 = landingpad { ptr, i32 }
          cleanup
  br label %195

190:                                              ; preds = %54
  %191 = landingpad { ptr, i32 }
          cleanup
  %192 = load ptr, ptr %4, align 8, !tbaa !45
  %193 = icmp eq ptr %192, %42
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  call void @_ZdlPv(ptr noundef %192) #30
  br label %195

195:                                              ; preds = %194, %190, %188
  %196 = phi { ptr, i32 } [ %189, %188 ], [ %191, %190 ], [ %191, %194 ]
  %197 = load ptr, ptr %5, align 8, !tbaa !45
  %198 = icmp eq ptr %197, %27
  br i1 %198, label %200, label %199

199:                                              ; preds = %195
  call void @_ZdlPv(ptr noundef %197) #30
  br label %200

200:                                              ; preds = %199, %195, %186, %34, %30
  %201 = phi { ptr, i32 } [ %187, %186 ], [ %31, %34 ], [ %31, %30 ], [ %196, %195 ], [ %196, %199 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  br label %531

202:                                              ; preds = %88
  %203 = landingpad { ptr, i32 }
          cleanup
  br label %216

204:                                              ; preds = %100
  %205 = landingpad { ptr, i32 }
          cleanup
  br label %211

206:                                              ; preds = %119
  %207 = landingpad { ptr, i32 }
          cleanup
  %208 = load ptr, ptr %7, align 8, !tbaa !45
  %209 = icmp eq ptr %208, %107
  br i1 %209, label %211, label %210

210:                                              ; preds = %206
  call void @_ZdlPv(ptr noundef %208) #30
  br label %211

211:                                              ; preds = %210, %206, %204
  %212 = phi { ptr, i32 } [ %205, %204 ], [ %207, %206 ], [ %207, %210 ]
  %213 = load ptr, ptr %8, align 8, !tbaa !45
  %214 = icmp eq ptr %213, %89
  br i1 %214, label %216, label %215

215:                                              ; preds = %211
  call void @_ZdlPv(ptr noundef %213) #30
  br label %216

216:                                              ; preds = %215, %211, %202, %99, %95
  %217 = phi { ptr, i32 } [ %203, %202 ], [ %96, %99 ], [ %96, %95 ], [ %212, %211 ], [ %212, %215 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  br label %531

218:                                              ; preds = %255, %159
  %219 = phi ptr [ %157, %159 ], [ %258, %255 ]
  %220 = phi i64 [ 0, %159 ], [ %256, %255 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #27
  %221 = getelementptr inbounds ptr, ptr %219, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !38
  store ptr %160, ptr %11, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3) #26
          to label %223 unwind label %264

223:                                              ; preds = %218
  invoke void @_ZN12YAML_Element9printYAMLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(88) %222, ptr noundef nonnull %11) #26
          to label %224 unwind label %266

224:                                              ; preds = %223
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %225 = load ptr, ptr %0, align 8, !tbaa !45, !noalias !74
  %226 = load i64, ptr %26, align 8, !tbaa !43, !noalias !74
  %227 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %225, i64 noundef %226) #26
          to label %228 unwind label %268

228:                                              ; preds = %224
  store ptr %161, ptr %9, align 8, !tbaa !41, !alias.scope !74
  %229 = load ptr, ptr %227, align 8, !tbaa !45
  %230 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %227, i64 0, i32 2
  %231 = icmp eq ptr %229, %230
  br i1 %231, label %232, label %238

232:                                              ; preds = %228
  %233 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %227, i64 0, i32 1
  %234 = load i64, ptr %233, align 8, !tbaa !43
  %235 = add i64 %234, 1
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %232
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %161, ptr nonnull align 8 %229, i64 %235, i1 false)
  br label %240

238:                                              ; preds = %228
  store ptr %229, ptr %9, align 8, !tbaa !45, !alias.scope !74
  %239 = load i64, ptr %230, align 8, !tbaa !34
  store i64 %239, ptr %161, align 8, !tbaa !34, !alias.scope !74
  br label %240

240:                                              ; preds = %238, %237, %232
  %241 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %227, i64 0, i32 1
  %242 = load i64, ptr %241, align 8, !tbaa !43
  store i64 %242, ptr %162, align 8, !tbaa !43, !alias.scope !74
  store ptr %230, ptr %227, align 8, !tbaa !45
  store i64 0, ptr %241, align 8, !tbaa !43
  store i8 0, ptr %230, align 8, !tbaa !34
  %243 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %9) #29
  %244 = load ptr, ptr %9, align 8, !tbaa !45
  %245 = icmp eq ptr %244, %161
  br i1 %245, label %247, label %246

246:                                              ; preds = %240
  call void @_ZdlPv(ptr noundef %244) #30
  br label %247

247:                                              ; preds = %246, %240
  %248 = load ptr, ptr %10, align 8, !tbaa !45
  %249 = icmp eq ptr %248, %163
  br i1 %249, label %251, label %250

250:                                              ; preds = %247
  call void @_ZdlPv(ptr noundef %248) #30
  br label %251

251:                                              ; preds = %250, %247
  %252 = load ptr, ptr %11, align 8, !tbaa !45
  %253 = icmp eq ptr %252, %160
  br i1 %253, label %255, label %254

254:                                              ; preds = %251
  call void @_ZdlPv(ptr noundef %252) #30
  br label %255

255:                                              ; preds = %254, %251
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #27
  %256 = add nuw i64 %220, 1
  %257 = load ptr, ptr %155, align 8, !tbaa !66
  %258 = load ptr, ptr %154, align 8, !tbaa !46
  %259 = ptrtoint ptr %257 to i64
  %260 = ptrtoint ptr %258 to i64
  %261 = sub i64 %259, %260
  %262 = ashr exact i64 %261, 3
  %263 = icmp ult i64 %256, %262
  br i1 %263, label %218, label %164, !llvm.loop !77

264:                                              ; preds = %218
  %265 = landingpad { ptr, i32 }
          cleanup
  br label %278

266:                                              ; preds = %223
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %273

268:                                              ; preds = %224
  %269 = landingpad { ptr, i32 }
          cleanup
  %270 = load ptr, ptr %10, align 8, !tbaa !45
  %271 = icmp eq ptr %270, %163
  br i1 %271, label %273, label %272

272:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #30
  br label %273

273:                                              ; preds = %272, %268, %266
  %274 = phi { ptr, i32 } [ %267, %266 ], [ %269, %268 ], [ %269, %272 ]
  %275 = load ptr, ptr %11, align 8, !tbaa !45
  %276 = icmp eq ptr %275, %160
  br i1 %276, label %278, label %277

277:                                              ; preds = %273
  call void @_ZdlPv(ptr noundef %275) #30
  br label %278

278:                                              ; preds = %277, %273, %264
  %279 = phi { ptr, i32 } [ %265, %264 ], [ %274, %273 ], [ %274, %277 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #27
  br label %531

280:                                              ; preds = %164
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %281 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 2
  store ptr %281, ptr %17, align 8, !tbaa !41, !alias.scope !78
  %282 = load ptr, ptr %36, align 8, !tbaa !45, !noalias !78
  %283 = load i64, ptr %38, align 8, !tbaa !43, !noalias !78
  %284 = getelementptr inbounds i8, ptr %282, i64 %283
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef %282, ptr noundef %284) #26
          to label %285 unwind label %346

285:                                              ; preds = %280
  %286 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.5) #26
          to label %292 unwind label %287

287:                                              ; preds = %285
  %288 = landingpad { ptr, i32 }
          cleanup
  %289 = load ptr, ptr %17, align 8, !tbaa !45, !alias.scope !78
  %290 = icmp eq ptr %289, %281
  br i1 %290, label %360, label %291

291:                                              ; preds = %287
  call void @_ZdlPv(ptr noundef %289) #30
  br label %360

292:                                              ; preds = %285
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %293 = load ptr, ptr %101, align 8, !tbaa !45, !noalias !81
  %294 = load i64, ptr %103, align 8, !tbaa !43, !noalias !81
  %295 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef %293, i64 noundef %294) #26
          to label %296 unwind label %348

296:                                              ; preds = %292
  %297 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 2
  store ptr %297, ptr %16, align 8, !tbaa !41, !alias.scope !81
  %298 = load ptr, ptr %295, align 8, !tbaa !45
  %299 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %295, i64 0, i32 2
  %300 = icmp eq ptr %298, %299
  br i1 %300, label %301, label %307

301:                                              ; preds = %296
  %302 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %295, i64 0, i32 1
  %303 = load i64, ptr %302, align 8, !tbaa !43
  %304 = add i64 %303, 1
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %309, label %306

306:                                              ; preds = %301
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %297, ptr nonnull align 8 %298, i64 %304, i1 false)
  br label %309

307:                                              ; preds = %296
  store ptr %298, ptr %16, align 8, !tbaa !45, !alias.scope !81
  %308 = load i64, ptr %299, align 8, !tbaa !34
  store i64 %308, ptr %297, align 8, !tbaa !34, !alias.scope !81
  br label %309

309:                                              ; preds = %307, %306, %301
  %310 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %295, i64 0, i32 1
  %311 = load i64, ptr %310, align 8, !tbaa !43
  %312 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  store i64 %311, ptr %312, align 8, !tbaa !43, !alias.scope !81
  store ptr %299, ptr %295, align 8, !tbaa !45
  store i64 0, ptr %310, align 8, !tbaa !43
  store i8 0, ptr %299, align 8, !tbaa !34
  %313 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.6) #26
          to label %314 unwind label %350

314:                                              ; preds = %309
  %315 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  store ptr %315, ptr %15, align 8, !tbaa !41, !alias.scope !84
  %316 = load ptr, ptr %313, align 8, !tbaa !45
  %317 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %313, i64 0, i32 2
  %318 = icmp eq ptr %316, %317
  br i1 %318, label %319, label %325

319:                                              ; preds = %314
  %320 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %313, i64 0, i32 1
  %321 = load i64, ptr %320, align 8, !tbaa !43
  %322 = add i64 %321, 1
  %323 = icmp eq i64 %322, 0
  br i1 %323, label %327, label %324

324:                                              ; preds = %319
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %315, ptr nonnull align 8 %316, i64 %322, i1 false)
  br label %327

325:                                              ; preds = %314
  store ptr %316, ptr %15, align 8, !tbaa !45, !alias.scope !84
  %326 = load i64, ptr %317, align 8, !tbaa !34
  store i64 %326, ptr %315, align 8, !tbaa !34, !alias.scope !84
  br label %327

327:                                              ; preds = %325, %324, %319
  %328 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %313, i64 0, i32 1
  %329 = load i64, ptr %328, align 8, !tbaa !43
  %330 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1
  store i64 %329, ptr %330, align 8, !tbaa !43, !alias.scope !84
  store ptr %317, ptr %313, align 8, !tbaa !45
  store i64 0, ptr %328, align 8, !tbaa !43
  store i8 0, ptr %317, align 8, !tbaa !34
  %331 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15) #29
  %332 = load ptr, ptr %15, align 8, !tbaa !45
  %333 = icmp eq ptr %332, %315
  br i1 %333, label %335, label %334

334:                                              ; preds = %327
  call void @_ZdlPv(ptr noundef %332) #30
  br label %335

335:                                              ; preds = %334, %327
  %336 = load ptr, ptr %16, align 8, !tbaa !45
  %337 = icmp eq ptr %336, %297
  br i1 %337, label %339, label %338

338:                                              ; preds = %335
  call void @_ZdlPv(ptr noundef %336) #30
  br label %339

339:                                              ; preds = %338, %335
  %340 = load ptr, ptr %17, align 8, !tbaa !45
  %341 = icmp eq ptr %340, %281
  br i1 %341, label %343, label %342

342:                                              ; preds = %339
  call void @_ZdlPv(ptr noundef %340) #30
  br label %343

343:                                              ; preds = %342, %339
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #27
  br label %363

344:                                              ; preds = %362
  %345 = landingpad { ptr, i32 }
          cleanup
  br label %525

346:                                              ; preds = %280
  %347 = landingpad { ptr, i32 }
          cleanup
  br label %360

348:                                              ; preds = %292
  %349 = landingpad { ptr, i32 }
          cleanup
  br label %355

350:                                              ; preds = %309
  %351 = landingpad { ptr, i32 }
          cleanup
  %352 = load ptr, ptr %16, align 8, !tbaa !45
  %353 = icmp eq ptr %352, %297
  br i1 %353, label %355, label %354

354:                                              ; preds = %350
  call void @_ZdlPv(ptr noundef %352) #30
  br label %355

355:                                              ; preds = %354, %350, %348
  %356 = phi { ptr, i32 } [ %349, %348 ], [ %351, %350 ], [ %351, %354 ]
  %357 = load ptr, ptr %17, align 8, !tbaa !45
  %358 = icmp eq ptr %357, %281
  br i1 %358, label %360, label %359

359:                                              ; preds = %355
  call void @_ZdlPv(ptr noundef %357) #30
  br label %360

360:                                              ; preds = %359, %355, %346, %291, %287
  %361 = phi { ptr, i32 } [ %347, %346 ], [ %288, %291 ], [ %288, %287 ], [ %356, %355 ], [ %356, %359 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #27
  br label %525

362:                                              ; preds = %164
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %183) #26
          to label %363 unwind label %344

363:                                              ; preds = %362, %343
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %19) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %20) #27
  %364 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %20, i64 0, i32 2
  store ptr %364, ptr %20, align 8, !tbaa !41
  %365 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #29
  %366 = getelementptr inbounds i8, ptr %13, i64 %365
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull %13, ptr noundef nonnull %366) #26
          to label %367 unwind label %477

367:                                              ; preds = %363
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %368 = load ptr, ptr %14, align 8, !tbaa !45, !noalias !87
  %369 = load i64, ptr %182, align 8, !tbaa !43, !noalias !87
  %370 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef 0, i64 noundef 0, ptr noundef %368, i64 noundef %369) #26
          to label %371 unwind label %479

371:                                              ; preds = %367
  %372 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 0, i32 2
  store ptr %372, ptr %19, align 8, !tbaa !41, !alias.scope !87
  %373 = load ptr, ptr %370, align 8, !tbaa !45
  %374 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %370, i64 0, i32 2
  %375 = icmp eq ptr %373, %374
  br i1 %375, label %376, label %382

376:                                              ; preds = %371
  %377 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %370, i64 0, i32 1
  %378 = load i64, ptr %377, align 8, !tbaa !43
  %379 = add i64 %378, 1
  %380 = icmp eq i64 %379, 0
  br i1 %380, label %384, label %381

381:                                              ; preds = %376
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %372, ptr nonnull align 8 %373, i64 %379, i1 false)
  br label %384

382:                                              ; preds = %371
  store ptr %373, ptr %19, align 8, !tbaa !45, !alias.scope !87
  %383 = load i64, ptr %374, align 8, !tbaa !34
  store i64 %383, ptr %372, align 8, !tbaa !34, !alias.scope !87
  br label %384

384:                                              ; preds = %382, %381, %376
  %385 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %370, i64 0, i32 1
  %386 = load i64, ptr %385, align 8, !tbaa !43
  %387 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 0, i32 1
  store i64 %386, ptr %387, align 8, !tbaa !43, !alias.scope !87
  store ptr %374, ptr %370, align 8, !tbaa !45
  store i64 0, ptr %385, align 8, !tbaa !43
  store i8 0, ptr %374, align 8, !tbaa !34
  %388 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.7.10) #26
          to label %389 unwind label %481

389:                                              ; preds = %384
  %390 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 2
  store ptr %390, ptr %18, align 8, !tbaa !41, !alias.scope !90
  %391 = load ptr, ptr %388, align 8, !tbaa !45
  %392 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %388, i64 0, i32 2
  %393 = icmp eq ptr %391, %392
  br i1 %393, label %394, label %400

394:                                              ; preds = %389
  %395 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %388, i64 0, i32 1
  %396 = load i64, ptr %395, align 8, !tbaa !43
  %397 = add i64 %396, 1
  %398 = icmp eq i64 %397, 0
  br i1 %398, label %402, label %399

399:                                              ; preds = %394
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %390, ptr nonnull align 8 %391, i64 %397, i1 false)
  br label %402

400:                                              ; preds = %389
  store ptr %391, ptr %18, align 8, !tbaa !45, !alias.scope !90
  %401 = load i64, ptr %392, align 8, !tbaa !34
  store i64 %401, ptr %390, align 8, !tbaa !34, !alias.scope !90
  br label %402

402:                                              ; preds = %400, %399, %394
  %403 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %388, i64 0, i32 1
  %404 = load i64, ptr %403, align 8, !tbaa !43
  %405 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 1
  store i64 %404, ptr %405, align 8, !tbaa !43, !alias.scope !90
  store ptr %392, ptr %388, align 8, !tbaa !45
  store i64 0, ptr %403, align 8, !tbaa !43
  store i8 0, ptr %392, align 8, !tbaa !34
  %406 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %18) #29
  %407 = load ptr, ptr %18, align 8, !tbaa !45
  %408 = icmp eq ptr %407, %390
  br i1 %408, label %410, label %409

409:                                              ; preds = %402
  call void @_ZdlPv(ptr noundef %407) #30
  br label %410

410:                                              ; preds = %409, %402
  %411 = load ptr, ptr %19, align 8, !tbaa !45
  %412 = icmp eq ptr %411, %372
  br i1 %412, label %414, label %413

413:                                              ; preds = %410
  call void @_ZdlPv(ptr noundef %411) #30
  br label %414

414:                                              ; preds = %413, %410
  %415 = load ptr, ptr %20, align 8, !tbaa !45
  %416 = icmp eq ptr %415, %364
  br i1 %416, label %418, label %417

417:                                              ; preds = %414
  call void @_ZdlPv(ptr noundef %415) #30
  br label %418

418:                                              ; preds = %417, %414
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %20) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #27
  %419 = getelementptr inbounds %class.YAML_Doc, ptr %1, i64 0, i32 3
  %420 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %419, ptr noundef nonnull @.str.3) #29
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %510, label %422

422:                                              ; preds = %418
  %423 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %419, ptr noundef nonnull @.str.8) #29
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %510, label %425

425:                                              ; preds = %422
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %21) #27
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(32) %419) #26
          to label %426 unwind label %493

426:                                              ; preds = %425
  %427 = load ptr, ptr %419, align 8, !tbaa !45
  %428 = call i32 @mkdir(ptr noundef %427, i32 noundef 493) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %22) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %23) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %429 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %23, i64 0, i32 2
  store ptr %429, ptr %23, align 8, !tbaa !41, !alias.scope !93
  %430 = load ptr, ptr %419, align 8, !tbaa !45, !noalias !93
  %431 = getelementptr inbounds %class.YAML_Doc, ptr %1, i64 0, i32 3, i32 1
  %432 = load i64, ptr %431, align 8, !tbaa !43, !noalias !93
  %433 = getelementptr inbounds i8, ptr %430, i64 %432
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %430, ptr noundef %433) #26
          to label %434 unwind label %495

434:                                              ; preds = %426
  %435 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.10) #26
          to label %441 unwind label %436

436:                                              ; preds = %434
  %437 = landingpad { ptr, i32 }
          cleanup
  %438 = load ptr, ptr %23, align 8, !tbaa !45, !alias.scope !93
  %439 = icmp eq ptr %438, %429
  br i1 %439, label %502, label %440

440:                                              ; preds = %436
  call void @_ZdlPv(ptr noundef %438) #30
  br label %502

441:                                              ; preds = %434
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %442 = load ptr, ptr %183, align 8, !tbaa !45, !noalias !96
  %443 = getelementptr inbounds %class.YAML_Doc, ptr %1, i64 0, i32 4, i32 1
  %444 = load i64, ptr %443, align 8, !tbaa !43, !noalias !96
  %445 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %442, i64 noundef %444) #26
          to label %446 unwind label %497

446:                                              ; preds = %441
  %447 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %22, i64 0, i32 2
  store ptr %447, ptr %22, align 8, !tbaa !41, !alias.scope !96
  %448 = load ptr, ptr %445, align 8, !tbaa !45
  %449 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %445, i64 0, i32 2
  %450 = icmp eq ptr %448, %449
  br i1 %450, label %451, label %457

451:                                              ; preds = %446
  %452 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %445, i64 0, i32 1
  %453 = load i64, ptr %452, align 8, !tbaa !43
  %454 = add i64 %453, 1
  %455 = icmp eq i64 %454, 0
  br i1 %455, label %459, label %456

456:                                              ; preds = %451
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %447, ptr nonnull align 8 %448, i64 %454, i1 false)
  br label %459

457:                                              ; preds = %446
  store ptr %448, ptr %22, align 8, !tbaa !45, !alias.scope !96
  %458 = load i64, ptr %449, align 8, !tbaa !34
  store i64 %458, ptr %447, align 8, !tbaa !34, !alias.scope !96
  br label %459

459:                                              ; preds = %457, %456, %451
  %460 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %445, i64 0, i32 1
  %461 = load i64, ptr %460, align 8, !tbaa !43
  %462 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %22, i64 0, i32 1
  store i64 %461, ptr %462, align 8, !tbaa !43, !alias.scope !96
  store ptr %449, ptr %445, align 8, !tbaa !45
  store i64 0, ptr %460, align 8, !tbaa !43
  store i8 0, ptr %449, align 8, !tbaa !34
  %463 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %22) #29
  %464 = load ptr, ptr %22, align 8, !tbaa !45
  %465 = icmp eq ptr %464, %447
  br i1 %465, label %467, label %466

466:                                              ; preds = %459
  call void @_ZdlPv(ptr noundef %464) #30
  br label %467

467:                                              ; preds = %466, %459
  %468 = load ptr, ptr %23, align 8, !tbaa !45
  %469 = icmp eq ptr %468, %429
  br i1 %469, label %471, label %470

470:                                              ; preds = %467
  call void @_ZdlPv(ptr noundef %468) #30
  br label %471

471:                                              ; preds = %470, %467
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %23) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %22) #27
  %472 = load ptr, ptr %21, align 8, !tbaa !45
  %473 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %21, i64 0, i32 2
  %474 = icmp eq ptr %472, %473
  br i1 %474, label %476, label %475

475:                                              ; preds = %471
  call void @_ZdlPv(ptr noundef %472) #30
  br label %476

476:                                              ; preds = %475, %471
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %21) #27
  br label %520

477:                                              ; preds = %363
  %478 = landingpad { ptr, i32 }
          cleanup
  br label %491

479:                                              ; preds = %367
  %480 = landingpad { ptr, i32 }
          cleanup
  br label %486

481:                                              ; preds = %384
  %482 = landingpad { ptr, i32 }
          cleanup
  %483 = load ptr, ptr %19, align 8, !tbaa !45
  %484 = icmp eq ptr %483, %372
  br i1 %484, label %486, label %485

485:                                              ; preds = %481
  call void @_ZdlPv(ptr noundef %483) #30
  br label %486

486:                                              ; preds = %485, %481, %479
  %487 = phi { ptr, i32 } [ %480, %479 ], [ %482, %481 ], [ %482, %485 ]
  %488 = load ptr, ptr %20, align 8, !tbaa !45
  %489 = icmp eq ptr %488, %364
  br i1 %489, label %491, label %490

490:                                              ; preds = %486
  call void @_ZdlPv(ptr noundef %488) #30
  br label %491

491:                                              ; preds = %490, %486, %477
  %492 = phi { ptr, i32 } [ %478, %477 ], [ %487, %486 ], [ %487, %490 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %20) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #27
  br label %525

493:                                              ; preds = %425
  %494 = landingpad { ptr, i32 }
          cleanup
  br label %508

495:                                              ; preds = %426
  %496 = landingpad { ptr, i32 }
          cleanup
  br label %502

497:                                              ; preds = %441
  %498 = landingpad { ptr, i32 }
          cleanup
  %499 = load ptr, ptr %23, align 8, !tbaa !45
  %500 = icmp eq ptr %499, %429
  br i1 %500, label %502, label %501

501:                                              ; preds = %497
  call void @_ZdlPv(ptr noundef %499) #30
  br label %502

502:                                              ; preds = %501, %497, %495, %440, %436
  %503 = phi { ptr, i32 } [ %496, %495 ], [ %437, %440 ], [ %437, %436 ], [ %498, %497 ], [ %498, %501 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %23) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %22) #27
  %504 = load ptr, ptr %21, align 8, !tbaa !45
  %505 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %21, i64 0, i32 2
  %506 = icmp eq ptr %504, %505
  br i1 %506, label %508, label %507

507:                                              ; preds = %502
  call void @_ZdlPv(ptr noundef %504) #30
  br label %508

508:                                              ; preds = %507, %502, %493
  %509 = phi { ptr, i32 } [ %494, %493 ], [ %503, %502 ], [ %503, %507 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %21) #27
  br label %525

510:                                              ; preds = %422, %418
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %24) #27
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull @.str.11, ptr noundef nonnull align 8 dereferenceable(32) %14) #26
          to label %511 unwind label %518

511:                                              ; preds = %510
  %512 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %24) #29
  %513 = load ptr, ptr %24, align 8, !tbaa !45
  %514 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %24, i64 0, i32 2
  %515 = icmp eq ptr %513, %514
  br i1 %515, label %517, label %516

516:                                              ; preds = %511
  call void @_ZdlPv(ptr noundef %513) #30
  br label %517

517:                                              ; preds = %516, %511
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %24) #27
  br label %520

518:                                              ; preds = %510
  %519 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %24) #27
  br label %525

520:                                              ; preds = %517, %476
  %521 = load ptr, ptr %14, align 8, !tbaa !45
  %522 = icmp eq ptr %521, %181
  br i1 %522, label %524, label %523

523:                                              ; preds = %520
  call void @_ZdlPv(ptr noundef %521) #30
  br label %524

524:                                              ; preds = %523, %520
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #27
  ret void

525:                                              ; preds = %518, %508, %491, %360, %344
  %526 = phi { ptr, i32 } [ %509, %508 ], [ %519, %518 ], [ %492, %491 ], [ %361, %360 ], [ %345, %344 ]
  %527 = load ptr, ptr %14, align 8, !tbaa !45
  %528 = icmp eq ptr %527, %181
  br i1 %528, label %530, label %529

529:                                              ; preds = %525
  call void @_ZdlPv(ptr noundef %527) #30
  br label %530

530:                                              ; preds = %529, %525
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #27
  br label %531

531:                                              ; preds = %530, %278, %216, %200
  %532 = phi { ptr, i32 } [ %279, %278 ], [ %526, %530 ], [ %217, %216 ], [ %201, %200 ]
  %533 = load ptr, ptr %0, align 8, !tbaa !45
  %534 = icmp eq ptr %533, %25
  br i1 %534, label %536, label %535

535:                                              ; preds = %531
  call void @_ZdlPv(ptr noundef %533) #30
  br label %536

536:                                              ; preds = %535, %531
  resume { ptr, i32 } %532
}

; Function Attrs: optsize uwtable
define weak_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !99
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !45
  br label %15

11:                                               ; preds = %3
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #26
  store ptr %12, ptr %0, align 8, !tbaa !45
  %13 = load i64, ptr %4, align 8, !tbaa !99
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %13, ptr %14, align 8, !tbaa !34
  br label %15

15:                                               ; preds = %11, %9
  %16 = phi ptr [ %10, %9 ], [ %12, %11 ]
  switch i64 %7, label %19 [
    i64 1, label %17
    i64 0, label %20
  ]

17:                                               ; preds = %15
  %18 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %18, ptr %16, align 1, !tbaa !34
  br label %20

19:                                               ; preds = %15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %1, i64 %7, i1 false)
  br label %20

20:                                               ; preds = %19, %17, %15
  %21 = load i64, ptr %4, align 8, !tbaa !99
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %21, ptr %22, align 8, !tbaa !43
  %23 = load ptr, ptr %0, align 8, !tbaa !45
  %24 = getelementptr inbounds i8, ptr %23, i64 %21
  store i8 0, ptr %24, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define available_externally noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !43
  %6 = sub i64 4611686018427387903, %5
  %7 = icmp ult i64 %6, %3
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #31
  unreachable

9:                                                ; preds = %2
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %3) #26
  ret ptr %10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: mustprogress optsize uwtable
define available_externally noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 align 2 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !43
  %6 = sub i64 4611686018427387903, %5
  %7 = icmp ult i64 %6, %2
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #31
  unreachable

9:                                                ; preds = %3
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) #26
  ret ptr %10
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: mustprogress nounwind optsize uwtable
define available_externally noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, %0
  br i1 %8, label %42, label %9, !prof !100

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !43
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 8, !tbaa !45
  %15 = icmp eq i64 %11, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i8, ptr %4, align 1, !tbaa !34
  store i8 %17, ptr %14, align 1, !tbaa !34
  br label %19

18:                                               ; preds = %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %4, i64 %11, i1 false)
  br label %19

19:                                               ; preds = %18, %16, %9
  %20 = load i64, ptr %10, align 8, !tbaa !43
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !43
  %22 = load ptr, ptr %0, align 8, !tbaa !45
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !34
  %24 = load ptr, ptr %1, align 8, !tbaa !45
  br label %42

25:                                               ; preds = %2
  %26 = load ptr, ptr %0, align 8, !tbaa !45
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  store ptr %4, ptr %0, align 8, !tbaa !45
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !43
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %30, ptr %31, align 8, !tbaa !43
  %32 = load i64, ptr %5, align 8, !tbaa !34
  store i64 %32, ptr %3, align 8, !tbaa !34
  br label %41

33:                                               ; preds = %25
  %34 = load i64, ptr %3, align 8, !tbaa !34
  store ptr %4, ptr %0, align 8, !tbaa !45
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !43
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %36, ptr %37, align 8, !tbaa !43
  %38 = load i64, ptr %5, align 8, !tbaa !34
  store i64 %38, ptr %3, align 8, !tbaa !34
  %39 = icmp eq ptr %26, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store ptr %26, ptr %1, align 8, !tbaa !45
  store i64 %34, ptr %5, align 8, !tbaa !34
  br label %42

41:                                               ; preds = %33, %28
  store ptr %5, ptr %1, align 8, !tbaa !45
  br label %42

42:                                               ; preds = %41, %40, %19, %7
  %43 = phi ptr [ %24, %19 ], [ %26, %40 ], [ %5, %41 ], [ %4, %7 ]
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  store i64 0, ptr %44, align 8, !tbaa !43
  store i8 0, ptr %43, align 1, !tbaa !34
  ret ptr %0
}

; Function Attrs: nounwind optsize
declare i64 @time(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare ptr @localtime(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nounwind optsize
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize uwtable
define weak_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !99
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !45
  br label %15

11:                                               ; preds = %3
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #26
  store ptr %12, ptr %0, align 8, !tbaa !45
  %13 = load i64, ptr %4, align 8, !tbaa !99
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %13, ptr %14, align 8, !tbaa !34
  br label %15

15:                                               ; preds = %11, %9
  %16 = phi ptr [ %10, %9 ], [ %12, %11 ]
  switch i64 %7, label %19 [
    i64 1, label %17
    i64 0, label %20
  ]

17:                                               ; preds = %15
  %18 = load i8, ptr %1, align 1, !tbaa !34
  store i8 %18, ptr %16, align 1, !tbaa !34
  br label %20

19:                                               ; preds = %15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %1, i64 %7, i1 false)
  br label %20

20:                                               ; preds = %19, %17, %15
  %21 = load i64, ptr %4, align 8, !tbaa !99
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %21, ptr %22, align 8, !tbaa !43
  %23 = load ptr, ptr %0, align 8, !tbaa !45
  %24 = getelementptr inbounds i8, ptr %23, i64 %21
  store i8 0, ptr %24, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define available_externally noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 align 2 {
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !43
  %8 = icmp ult i64 %7, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i64 noundef %1, i64 noundef %7) #31
  unreachable

10:                                               ; preds = %5
  %11 = sub i64 %7, %1
  %12 = tail call i64 @llvm.umin.i64(i64 %11, i64 %2)
  %13 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %12, ptr noundef %3, i64 noundef %4) #26
  ret ptr %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: optsize uwtable
define weak_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat personality ptr @__gxx_personality_v0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !41
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %6, align 8, !tbaa !43
  store i8 0, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = add i64 %8, %4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %9) #26
          to label %10 unwind label %16

10:                                               ; preds = %3
  %11 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %4) #26
          to label %12 unwind label %16

12:                                               ; preds = %10
  %13 = load ptr, ptr %2, align 8, !tbaa !45
  %14 = load i64, ptr %7, align 8, !tbaa !43
  %15 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %13, i64 noundef %14) #26
          to label %21 unwind label %16

16:                                               ; preds = %12, %10, %3
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = load ptr, ptr %0, align 8, !tbaa !45
  %19 = icmp eq ptr %18, %5
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  tail call void @_ZdlPv(ptr noundef %18) #30
  br label %22

21:                                               ; preds = %12
  ret void

22:                                               ; preds = %20, %16
  resume { ptr, i32 } %17
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @mkdir(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #17

; Function Attrs: optsize
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn optsize
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize uwtable
define internal void @_GLOBAL__sub_I_YAML_Element.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit.12) #26
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit.12, ptr nonnull @__dso_handle) #27
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %4, ptr %0, align 8, !tbaa !41
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %5, align 8, !tbaa !43
  store i8 0, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, i32 2
  store ptr %7, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, i32 1
  store i64 0, ptr %8, align 8, !tbaa !43
  store i8 0, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #26
          to label %10 unwind label %12

10:                                               ; preds = %3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %2) #26
          to label %11 unwind label %12

11:                                               ; preds = %10
  ret void

12:                                               ; preds = %10, %3
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = load ptr, ptr %9, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @_ZdlPv(ptr noundef nonnull %14) #30
  br label %17

17:                                               ; preds = %16, %12
  %18 = load ptr, ptr %6, align 8, !tbaa !45
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %18) #30
  br label %21

21:                                               ; preds = %20, %17
  %22 = load ptr, ptr %0, align 8, !tbaa !45
  %23 = icmp eq ptr %22, %4
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %22) #30
  br label %25

25:                                               ; preds = %24, %21
  resume { ptr, i32 } %13
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN12YAML_ElementD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = load ptr, ptr %2, align 8, !tbaa !46
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %10, label %26

7:                                                ; preds = %36
  %.lcssa1 = phi ptr [ %37, %36 ]
  %.lcssa = phi ptr [ %38, %36 ]
  %8 = icmp eq ptr %.lcssa, %.lcssa1
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  store ptr %.lcssa1, ptr %3, align 8, !tbaa !66
  br label %10

10:                                               ; preds = %9, %7, %1
  %11 = phi ptr [ %.lcssa1, %7 ], [ %.lcssa1, %9 ], [ %4, %1 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @_ZdlPv(ptr noundef nonnull %11) #30
  br label %14

14:                                               ; preds = %13, %10
  %15 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, i32 2
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @_ZdlPv(ptr noundef %16) #30
  br label %20

20:                                               ; preds = %19, %14
  %21 = load ptr, ptr %0, align 8, !tbaa !45
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @_ZdlPv(ptr noundef %21) #30
  br label %25

25:                                               ; preds = %24, %20
  ret void

26:                                               ; preds = %36, %1
  %27 = phi ptr [ %37, %36 ], [ %5, %1 ]
  %28 = phi ptr [ %38, %36 ], [ %4, %1 ]
  %29 = phi i64 [ %39, %36 ], [ 0, %1 ]
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !38
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  tail call void @_ZN12YAML_ElementD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %31) #29
  tail call void @_ZdlPv(ptr noundef nonnull %31) #30
  %34 = load ptr, ptr %3, align 8, !tbaa !66
  %35 = load ptr, ptr %2, align 8, !tbaa !46
  br label %36

36:                                               ; preds = %33, %26
  %37 = phi ptr [ %27, %26 ], [ %35, %33 ]
  %38 = phi ptr [ %28, %26 ], [ %34, %33 ]
  %39 = add nuw i64 %29, 1
  %40 = ptrtoint ptr %38 to i64
  %41 = ptrtoint ptr %37 to i64
  %42 = sub i64 %40, %41
  %43 = ashr exact i64 %42, 3
  %44 = icmp ult i64 %39, %43
  br i1 %44, label %26, label %7, !llvm.loop !101
}

; Function Attrs: optsize uwtable
define internal noundef ptr @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, double noundef %2) #0 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef %8, ptr noundef nonnull @.str.16, i64 noundef 0) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @_ZN12YAML_Element24convert_double_to_stringB5cxx11Ed(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 8 poison, double noundef %2) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  %10 = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #28
          to label %11 unwind label %30

11:                                               ; preds = %3
  invoke void @_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %4) #26
          to label %12 unwind label %32

12:                                               ; preds = %11
  store ptr %10, ptr %5, align 8, !tbaa !38
  %13 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !102
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  store ptr %10, ptr %14, align 8, !tbaa !38
  %19 = load ptr, ptr %13, align 8, !tbaa !66
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  store ptr %20, ptr %13, align 8, !tbaa !66
  br label %23

21:                                               ; preds = %12
  %22 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2
  invoke void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr %14, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
          to label %23 unwind label %30

23:                                               ; preds = %21, %18
  %24 = load ptr, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  %25 = load ptr, ptr %4, align 8, !tbaa !45
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  call void @_ZdlPv(ptr noundef %25) #30
  br label %29

29:                                               ; preds = %28, %23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  ret ptr %24

30:                                               ; preds = %21, %3
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %34

32:                                               ; preds = %11
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %10) #30
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi { ptr, i32 } [ %31, %30 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  %36 = load ptr, ptr %4, align 8, !tbaa !45
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  call void @_ZdlPv(ptr noundef %36) #30
  br label %40

40:                                               ; preds = %39, %34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  resume { ptr, i32 } %35
}

; Function Attrs: optsize uwtable
define internal void @_ZN12YAML_Element24convert_double_to_stringB5cxx11Ed(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1, double noundef %2) #0 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %4) #27
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #26
  %5 = getelementptr inbounds i8, ptr %4, i64 16
  %6 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, double noundef %2) #26
          to label %7 unwind label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %8) #26
          to label %9 unwind label %11

9:                                                ; preds = %7
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #29
  %10 = getelementptr inbounds i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %10) #29
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #27
  ret void

11:                                               ; preds = %7, %3
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #29
  %13 = getelementptr inbounds i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %13) #29
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #27
  resume { ptr, i32 } %12
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize uwtable
define internal void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str.5.17) #26
  %5 = load ptr, ptr %0, align 8, !tbaa !38
  %6 = getelementptr inbounds %"struct.std::_Vector_base<YAML_Element *, std::allocator<YAML_Element *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %5 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp eq i64 %4, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = tail call noundef ptr @_ZNSt15__new_allocatorIP12YAML_ElementE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %4, ptr noundef null) #26
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi ptr [ %14, %13 ], [ null, %3 ]
  %17 = getelementptr inbounds ptr, ptr %16, i64 %11
  %18 = load ptr, ptr %2, align 8, !tbaa !38
  store ptr %18, ptr %17, align 8, !tbaa !38
  %19 = icmp sgt i64 %10, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %16, ptr align 8 %5, i64 %10, i1 false)
  br label %21

21:                                               ; preds = %20, %15
  %22 = getelementptr inbounds ptr, ptr %17, i64 1
  %23 = ptrtoint ptr %7 to i64
  %24 = sub i64 %23, %8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %22, ptr align 8 %1, i64 %24, i1 false)
  br label %27

27:                                               ; preds = %26, %21
  %28 = icmp eq ptr %5, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %27
  tail call void @_ZdlPv(ptr noundef nonnull %5) #30
  br label %30

30:                                               ; preds = %29, %27
  %31 = getelementptr inbounds %"struct.std::_Vector_base<YAML_Element *, std::allocator<YAML_Element *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %32 = ashr exact i64 %24, 3
  %33 = getelementptr inbounds ptr, ptr %22, i64 %32
  store ptr %16, ptr %0, align 8, !tbaa !46
  store ptr %33, ptr %6, align 8, !tbaa !66
  %34 = getelementptr inbounds ptr, ptr %16, i64 %4
  store ptr %34, ptr %31, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef i64 @_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<YAML_Element *, std::allocator<YAML_Element *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = load ptr, ptr %0, align 8, !tbaa !46
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = sub nsw i64 1152921504606846975, %10
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #31
  unreachable

14:                                               ; preds = %3
  %15 = tail call i64 @llvm.umax.i64(i64 %10, i64 %1)
  %16 = add i64 %15, %10
  %17 = icmp ult i64 %16, %10
  %18 = icmp ugt i64 %16, 1152921504606846975
  %19 = or i1 %17, %18
  %20 = select i1 %19, i64 1152921504606846975, i64 %16
  ret i64 %20
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZNSt15__new_allocatorIP12YAML_ElementE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) #4 comdat align 2 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !100

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #28
  ret ptr %11
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #15

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: optsize uwtable
define available_externally void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 128
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216) %2) #29
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !17
  %3 = getelementptr inbounds i8, ptr %0, i64 344
  store ptr null, ptr %3, align 8, !tbaa !103
  %4 = getelementptr inbounds i8, ptr %0, i64 352
  store i8 0, ptr %4, align 8, !tbaa !104
  %5 = getelementptr inbounds i8, ptr %0, i64 353
  store i8 0, ptr %5, align 1, !tbaa !105
  %6 = getelementptr inbounds i8, ptr %0, i64 360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  invoke void @_ZNSdC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 1)) #26
          to label %7 unwind label %21

7:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 3), ptr %0, align 8, !tbaa !17
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 2, i64 3), ptr %2, align 8, !tbaa !17
  %8 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 1, i64 3), ptr %8, align 8, !tbaa !17
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %0, i64 0, i32 1
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %9, align 8, !tbaa !17
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %0, i64 0, i32 1, i32 0, i32 1
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %0, i64 0, i32 1, i32 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, i8 0, i64 48, i1 false)
  tail call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #29
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2), ptr %9, align 8, !tbaa !17
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %0, i64 0, i32 1, i32 1
  store i32 24, ptr %12, align 8, !tbaa !106
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %0, i64 0, i32 1, i32 2
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %0, i64 0, i32 1, i32 2, i32 2
  store ptr %14, ptr %13, align 8, !tbaa !41
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %0, i64 0, i32 1, i32 2, i32 1
  store i64 0, ptr %15, align 8, !tbaa !43
  store i8 0, ptr %14, align 8, !tbaa !34
  %16 = load ptr, ptr %0, align 8, !tbaa !17
  %17 = getelementptr i8, ptr %16, i64 -24
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds i8, ptr %0, i64 %18
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %19, ptr noundef nonnull %9) #26
          to label %20 unwind label %23

20:                                               ; preds = %7
  ret void

21:                                               ; preds = %1
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %31

23:                                               ; preds = %7
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %9) #29
  %25 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2), align 8
  store ptr %25, ptr %0, align 8, !tbaa !17
  %26 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3), align 8
  %27 = getelementptr i8, ptr %25, i64 -24
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  store ptr %26, ptr %29, align 8, !tbaa !17
  %30 = getelementptr inbounds %"class.std::basic_istream", ptr %0, i64 0, i32 1
  store i64 0, ptr %30, align 8, !tbaa !110
  br label %31

31:                                               ; preds = %23, %21
  %32 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %2) #29
  resume { ptr, i32 } %32
}

; Function Attrs: optsize uwtable
define available_externally void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %3, ptr %0, align 8, !tbaa !41
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !43
  store i8 0, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %"class.std::basic_streambuf", ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %"class.std::basic_streambuf", ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ugt ptr %6, %9
  %11 = select i1 %10, ptr %6, ptr %9
  %12 = icmp eq ptr %11, null
  %13 = select i1 %7, i1 true, i1 %12
  br i1 %13, label %27, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"class.std::basic_streambuf", ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = ptrtoint ptr %11 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %16, i64 noundef %19) #26
          to label %29 unwind label %21

21:                                               ; preds = %27, %14
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = load ptr, ptr %0, align 8, !tbaa !45
  %24 = icmp eq ptr %23, %3
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #30
  br label %26

26:                                               ; preds = %25, %21
  resume { ptr, i32 } %22

27:                                               ; preds = %2
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", ptr %1, i64 0, i32 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %28) #26
          to label %29 unwind label %21

29:                                               ; preds = %27, %14
  ret void
}

; Function Attrs: nounwind optsize uwtable
define available_externally void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
  %3 = load ptr, ptr %1, align 8
  store ptr %3, ptr %0, align 8, !tbaa !17
  %4 = getelementptr inbounds ptr, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %3, i64 -24
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  store ptr %5, ptr %8, align 8, !tbaa !17
  %9 = getelementptr inbounds ptr, ptr %1, i64 9
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr %10, ptr %11, align 8, !tbaa !17
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %0, i64 0, i32 1
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2), ptr %12, align 8, !tbaa !17
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %0, i64 0, i32 1, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %0, i64 0, i32 1, i32 2, i32 2
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  tail call void @_ZdlPv(ptr noundef %14) #30
  br label %18

18:                                               ; preds = %17, %2
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %12, align 8, !tbaa !17
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %0, i64 0, i32 1, i32 0, i32 7
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #29
  %20 = getelementptr inbounds ptr, ptr %1, i64 2
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %0, align 8, !tbaa !17
  %22 = getelementptr inbounds ptr, ptr %1, i64 3
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr i8, ptr %21, i64 -24
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds i8, ptr %0, i64 %25
  store ptr %23, ptr %26, align 8, !tbaa !17
  %27 = getelementptr inbounds %"class.std::basic_istream", ptr %0, i64 0, i32 1
  store i64 0, ptr %27, align 8, !tbaa !110
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #2

; Function Attrs: optsize uwtable
define available_externally void @_ZNSdC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds ptr, ptr %1, i64 1
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %0, align 8, !tbaa !17
  %5 = getelementptr inbounds ptr, ptr %1, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %4, i64 -24
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  store ptr %6, ptr %9, align 8, !tbaa !17
  %10 = getelementptr inbounds %"class.std::basic_istream", ptr %0, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !110
  %11 = load ptr, ptr %0, align 8, !tbaa !17
  %12 = getelementptr i8, ptr %11, i64 -24
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %14, ptr noundef null) #26
  %15 = getelementptr inbounds i8, ptr %0, i64 16
  %16 = getelementptr inbounds ptr, ptr %1, i64 3
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %15, align 8, !tbaa !17
  %18 = getelementptr inbounds ptr, ptr %1, i64 4
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %17, i64 -24
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds i8, ptr %15, i64 %21
  store ptr %19, ptr %22, align 8, !tbaa !17
  %23 = load ptr, ptr %15, align 8, !tbaa !17
  %24 = getelementptr i8, ptr %23, i64 -24
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds i8, ptr %15, i64 %25
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %26, ptr noundef null) #26
          to label %27 unwind label %36

27:                                               ; preds = %2
  %28 = load ptr, ptr %1, align 8
  store ptr %28, ptr %0, align 8, !tbaa !17
  %29 = getelementptr inbounds ptr, ptr %1, i64 5
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr i8, ptr %28, i64 -24
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds i8, ptr %0, i64 %32
  store ptr %30, ptr %33, align 8, !tbaa !17
  %34 = getelementptr inbounds ptr, ptr %1, i64 6
  %35 = load ptr, ptr %34, align 8
  store ptr %35, ptr %15, align 8, !tbaa !17
  ret void

36:                                               ; preds = %2
  %37 = landingpad { ptr, i32 }
          cleanup
  %38 = load ptr, ptr %3, align 8
  store ptr %38, ptr %0, align 8, !tbaa !17
  %39 = load ptr, ptr %5, align 8
  %40 = getelementptr i8, ptr %38, i64 -24
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds i8, ptr %0, i64 %41
  store ptr %39, ptr %42, align 8, !tbaa !17
  store i64 0, ptr %10, align 8, !tbaa !110
  resume { ptr, i32 } %37
}

; Function Attrs: nounwind optsize
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind optsize uwtable
define weak_odr dso_local void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !17
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", ptr %0, i64 0, i32 2, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #30
  br label %7

7:                                                ; preds = %6, %1
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !17
  %8 = getelementptr inbounds %"class.std::basic_streambuf", ptr %0, i64 0, i32 7
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #29
  ret void
}

; Function Attrs: optsize uwtable
define internal noundef ptr @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) #0 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !43
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef %8, ptr noundef nonnull @.str.16, i64 noundef 0) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @_ZN12YAML_Element21convert_int_to_stringB5cxx11Ei(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 8 poison, i32 noundef %2) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  %10 = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #28
          to label %11 unwind label %30

11:                                               ; preds = %3
  invoke void @_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %4) #26
          to label %12 unwind label %32

12:                                               ; preds = %11
  store ptr %10, ptr %5, align 8, !tbaa !38
  %13 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !102
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  store ptr %10, ptr %14, align 8, !tbaa !38
  %19 = load ptr, ptr %13, align 8, !tbaa !66
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  store ptr %20, ptr %13, align 8, !tbaa !66
  br label %23

21:                                               ; preds = %12
  %22 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2
  invoke void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr %14, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
          to label %23 unwind label %30

23:                                               ; preds = %21, %18
  %24 = load ptr, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  %25 = load ptr, ptr %4, align 8, !tbaa !45
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  call void @_ZdlPv(ptr noundef %25) #30
  br label %29

29:                                               ; preds = %28, %23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  ret ptr %24

30:                                               ; preds = %21, %3
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %34

32:                                               ; preds = %11
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %10) #30
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi { ptr, i32 } [ %31, %30 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  %36 = load ptr, ptr %4, align 8, !tbaa !45
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  call void @_ZdlPv(ptr noundef %36) #30
  br label %40

40:                                               ; preds = %39, %34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  resume { ptr, i32 } %35
}

; Function Attrs: optsize uwtable
define internal void @_ZN12YAML_Element21convert_int_to_stringB5cxx11Ei(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1, i32 noundef %2) #0 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %4) #27
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #26
  %5 = getelementptr inbounds i8, ptr %4, i64 16
  %6 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %2) #26
          to label %7 unwind label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %8) #26
          to label %9 unwind label %11

9:                                                ; preds = %7
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #29
  %10 = getelementptr inbounds i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %10) #29
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #27
  ret void

11:                                               ; preds = %7, %3
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #29
  %13 = getelementptr inbounds i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %13) #29
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #27
  resume { ptr, i32 } %12
}

; Function Attrs: optsize uwtable
define internal noundef ptr @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !43
  %8 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %7, ptr noundef nonnull @.str.16, i64 noundef 0) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %9 = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #28
  invoke void @_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #26
          to label %10 unwind label %23

10:                                               ; preds = %3
  store ptr %9, ptr %4, align 8, !tbaa !38
  %11 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  store ptr %9, ptr %12, align 8, !tbaa !38
  %17 = load ptr, ptr %11, align 8, !tbaa !66
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  store ptr %18, ptr %11, align 8, !tbaa !66
  br label %21

19:                                               ; preds = %10
  %20 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2
  call void @_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr %12, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %21

21:                                               ; preds = %19, %16
  %22 = load ptr, ptr %4, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  ret ptr %22

23:                                               ; preds = %3
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %9) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  resume { ptr, i32 } %24
}

; Function Attrs: optsize uwtable
define internal noundef ptr @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = load ptr, ptr %4, align 8, !tbaa !46
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %53, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  br label %13

13:                                               ; preds = %44, %9
  %14 = phi ptr [ %7, %9 ], [ %47, %44 ]
  %15 = phi i64 [ 0, %9 ], [ %45, %44 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  store ptr %10, ptr %3, align 8, !tbaa !41, !alias.scope !114
  %18 = load ptr, ptr %17, align 8, !tbaa !45, !noalias !114
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !43, !noalias !114
  %21 = getelementptr inbounds i8, ptr %18, i64 %20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %18, ptr noundef %21) #26
  %22 = load i64, ptr %11, align 8, !tbaa !43
  %23 = load i64, ptr %12, align 8, !tbaa !43
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %27, label %25

25:                                               ; preds = %13
  %26 = load ptr, ptr %3, align 8, !tbaa !45
  br label %34

27:                                               ; preds = %13
  %28 = icmp eq i64 %22, 0
  %29 = load ptr, ptr %3, align 8, !tbaa !45
  br i1 %28, label %34, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %1, align 8, !tbaa !45
  %32 = call i32 @bcmp(ptr %29, ptr %31, i64 %22)
  %33 = icmp eq i32 %32, 0
  br label %34

34:                                               ; preds = %30, %27, %25
  %35 = phi ptr [ %26, %25 ], [ %29, %30 ], [ %29, %27 ]
  %36 = phi i1 [ false, %25 ], [ %33, %30 ], [ true, %27 ]
  %37 = icmp eq ptr %35, %10
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  call void @_ZdlPv(ptr noundef %35) #30
  br label %39

39:                                               ; preds = %38, %34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  br i1 %36, label %40, label %44

40:                                               ; preds = %39
  %.lcssa = phi i64 [ %15, %39 ]
  %41 = load ptr, ptr %4, align 8, !tbaa !46
  %42 = getelementptr inbounds ptr, ptr %41, i64 %.lcssa
  %43 = load ptr, ptr %42, align 8, !tbaa !38
  br label %53

44:                                               ; preds = %39
  %45 = add nuw i64 %15, 1
  %46 = load ptr, ptr %5, align 8, !tbaa !66
  %47 = load ptr, ptr %4, align 8, !tbaa !46
  %48 = ptrtoint ptr %46 to i64
  %49 = ptrtoint ptr %47 to i64
  %50 = sub i64 %48, %49
  %51 = ashr exact i64 %50, 3
  %52 = icmp ult i64 %45, %51
  br i1 %52, label %13, label %53, !llvm.loop !117

53:                                               ; preds = %44, %40, %2
  %54 = phi ptr [ %43, %40 ], [ null, %2 ], [ null, %44 ]
  ret ptr %54
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: optsize uwtable
define internal void @_ZN12YAML_Element9printYAMLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %2) #0 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #27
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1) #26
  %11 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.1.20) #26
          to label %12 unwind label %95

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %13, ptr %5, align 8, !tbaa !41, !alias.scope !118
  %14 = load ptr, ptr %11, align 8, !tbaa !45
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !43
  %20 = add i64 %19, 1
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %13, ptr nonnull align 8 %14, i64 %20, i1 false)
  br label %25

23:                                               ; preds = %12
  store ptr %14, ptr %5, align 8, !tbaa !45, !alias.scope !118
  %24 = load i64, ptr %15, align 8, !tbaa !34
  store i64 %24, ptr %13, align 8, !tbaa !34, !alias.scope !118
  br label %25

25:                                               ; preds = %23, %22, %17
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !43
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 %27, ptr %28, align 8, !tbaa !43, !alias.scope !118
  store ptr %15, ptr %11, align 8, !tbaa !45
  store i64 0, ptr %26, align 8, !tbaa !43
  store i8 0, ptr %15, align 8, !tbaa !34
  %29 = getelementptr inbounds %class.YAML_Element, ptr %1, i64 0, i32 1
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %30 = load ptr, ptr %29, align 8, !tbaa !45, !noalias !121
  %31 = getelementptr inbounds %class.YAML_Element, ptr %1, i64 0, i32 1, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !43, !noalias !121
  %33 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %30, i64 noundef %32) #26
          to label %34 unwind label %97

34:                                               ; preds = %25
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %35, ptr %4, align 8, !tbaa !41, !alias.scope !121
  %36 = load ptr, ptr %33, align 8, !tbaa !45
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 0, i32 2
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !43
  %42 = add i64 %41, 1
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %35, ptr nonnull align 8 %36, i64 %42, i1 false)
  br label %47

45:                                               ; preds = %34
  store ptr %36, ptr %4, align 8, !tbaa !45, !alias.scope !121
  %46 = load i64, ptr %37, align 8, !tbaa !34
  store i64 %46, ptr %35, align 8, !tbaa !34, !alias.scope !121
  br label %47

47:                                               ; preds = %45, %44, %39
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !43
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !43, !alias.scope !121
  store ptr %37, ptr %33, align 8, !tbaa !45
  store i64 0, ptr %48, align 8, !tbaa !43
  store i8 0, ptr %37, align 8, !tbaa !34
  %51 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2.21) #26
          to label %52 unwind label %99

52:                                               ; preds = %47
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %53, ptr %0, align 8, !tbaa !41, !alias.scope !124
  %54 = load ptr, ptr %51, align 8, !tbaa !45
  %55 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 2
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !43
  %60 = add i64 %59, 1
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %53, ptr nonnull align 8 %54, i64 %60, i1 false)
  br label %65

63:                                               ; preds = %52
  store ptr %54, ptr %0, align 8, !tbaa !45, !alias.scope !124
  %64 = load i64, ptr %55, align 8, !tbaa !34
  store i64 %64, ptr %53, align 8, !tbaa !34, !alias.scope !124
  br label %65

65:                                               ; preds = %63, %62, %57
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !43
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %67, ptr %68, align 8, !tbaa !43, !alias.scope !124
  store ptr %55, ptr %51, align 8, !tbaa !45
  store i64 0, ptr %66, align 8, !tbaa !43
  store i8 0, ptr %55, align 8, !tbaa !34
  %69 = load ptr, ptr %4, align 8, !tbaa !45
  %70 = icmp eq ptr %69, %35
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %69) #30
  br label %72

72:                                               ; preds = %71, %65
  %73 = load ptr, ptr %5, align 8, !tbaa !45
  %74 = icmp eq ptr %73, %13
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  call void @_ZdlPv(ptr noundef %73) #30
  br label %76

76:                                               ; preds = %75, %72
  %77 = load ptr, ptr %6, align 8, !tbaa !45
  %78 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %79 = icmp eq ptr %77, %78
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  call void @_ZdlPv(ptr noundef %77) #30
  br label %81

81:                                               ; preds = %80, %76
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  %82 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  br label %116

84:                                               ; preds = %133
  %85 = getelementptr inbounds %class.YAML_Element, ptr %1, i64 0, i32 2
  %86 = getelementptr inbounds %class.YAML_Element, ptr %1, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !66
  %88 = load ptr, ptr %85, align 8, !tbaa !46
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %203, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %92 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %93 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %94 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  br label %138

95:                                               ; preds = %3
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %109

97:                                               ; preds = %25
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %104

99:                                               ; preds = %47
  %100 = landingpad { ptr, i32 }
          cleanup
  %101 = load ptr, ptr %4, align 8, !tbaa !45
  %102 = icmp eq ptr %101, %35
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  call void @_ZdlPv(ptr noundef %101) #30
  br label %104

104:                                              ; preds = %103, %99, %97
  %105 = phi { ptr, i32 } [ %98, %97 ], [ %100, %99 ], [ %100, %103 ]
  %106 = load ptr, ptr %5, align 8, !tbaa !45
  %107 = icmp eq ptr %106, %13
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  call void @_ZdlPv(ptr noundef %106) #30
  br label %109

109:                                              ; preds = %108, %104, %95
  %110 = phi { ptr, i32 } [ %96, %95 ], [ %105, %104 ], [ %105, %108 ]
  %111 = load ptr, ptr %6, align 8, !tbaa !45
  %112 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %113 = icmp eq ptr %111, %112
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  call void @_ZdlPv(ptr noundef %111) #30
  br label %115

115:                                              ; preds = %114, %109
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  br label %209

116:                                              ; preds = %133, %81
  %117 = phi i1 [ true, %81 ], [ false, %133 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  store ptr %82, ptr %7, align 8, !tbaa !41, !alias.scope !127
  %118 = load ptr, ptr %2, align 8, !tbaa !45, !noalias !127
  %119 = load i64, ptr %83, align 8, !tbaa !43, !noalias !127
  %120 = getelementptr inbounds i8, ptr %118, i64 %119
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %118, ptr noundef %120) #26
          to label %121 unwind label %134

121:                                              ; preds = %116
  %122 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.3.22) #26
          to label %128 unwind label %123

123:                                              ; preds = %121
  %124 = landingpad { ptr, i32 }
          cleanup
  %125 = load ptr, ptr %7, align 8, !tbaa !45, !alias.scope !127
  %126 = icmp eq ptr %125, %82
  br i1 %126, label %136, label %127

127:                                              ; preds = %123
  call void @_ZdlPv(ptr noundef %125) #30
  br label %136

128:                                              ; preds = %121
  %129 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %7) #29
  %130 = load ptr, ptr %7, align 8, !tbaa !45
  %131 = icmp eq ptr %130, %82
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  call void @_ZdlPv(ptr noundef %130) #30
  br label %133

133:                                              ; preds = %132, %128
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #27
  br i1 %117, label %116, label %84, !llvm.loop !130

134:                                              ; preds = %116
  %135 = landingpad { ptr, i32 }
          cleanup
  br label %136

136:                                              ; preds = %134, %127, %123
  %137 = phi { ptr, i32 } [ %135, %134 ], [ %124, %127 ], [ %124, %123 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #27
  br label %204

138:                                              ; preds = %178, %90
  %139 = phi ptr [ %88, %90 ], [ %181, %178 ]
  %140 = phi i64 [ 0, %90 ], [ %179, %178 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #27
  %141 = getelementptr inbounds ptr, ptr %139, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !38
  store ptr %91, ptr %10, align 8, !tbaa !41
  %143 = load ptr, ptr %2, align 8, !tbaa !45
  %144 = load i64, ptr %83, align 8, !tbaa !43
  %145 = getelementptr inbounds i8, ptr %143, i64 %144
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %143, ptr noundef %145) #26
          to label %146 unwind label %187

146:                                              ; preds = %138
  invoke void @_ZN12YAML_Element9printYAMLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(88) %142, ptr noundef nonnull %10) #26
          to label %147 unwind label %189

147:                                              ; preds = %146
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %148 = load ptr, ptr %0, align 8, !tbaa !45, !noalias !131
  %149 = load i64, ptr %68, align 8, !tbaa !43, !noalias !131
  %150 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %148, i64 noundef %149) #26
          to label %151 unwind label %191

151:                                              ; preds = %147
  store ptr %92, ptr %8, align 8, !tbaa !41, !alias.scope !131
  %152 = load ptr, ptr %150, align 8, !tbaa !45
  %153 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %150, i64 0, i32 2
  %154 = icmp eq ptr %152, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %151
  %156 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %150, i64 0, i32 1
  %157 = load i64, ptr %156, align 8, !tbaa !43
  %158 = add i64 %157, 1
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %155
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %92, ptr nonnull align 8 %152, i64 %158, i1 false)
  br label %163

161:                                              ; preds = %151
  store ptr %152, ptr %8, align 8, !tbaa !45, !alias.scope !131
  %162 = load i64, ptr %153, align 8, !tbaa !34
  store i64 %162, ptr %92, align 8, !tbaa !34, !alias.scope !131
  br label %163

163:                                              ; preds = %161, %160, %155
  %164 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %150, i64 0, i32 1
  %165 = load i64, ptr %164, align 8, !tbaa !43
  store i64 %165, ptr %93, align 8, !tbaa !43, !alias.scope !131
  store ptr %153, ptr %150, align 8, !tbaa !45
  store i64 0, ptr %164, align 8, !tbaa !43
  store i8 0, ptr %153, align 8, !tbaa !34
  %166 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %8) #29
  %167 = load ptr, ptr %8, align 8, !tbaa !45
  %168 = icmp eq ptr %167, %92
  br i1 %168, label %170, label %169

169:                                              ; preds = %163
  call void @_ZdlPv(ptr noundef %167) #30
  br label %170

170:                                              ; preds = %169, %163
  %171 = load ptr, ptr %9, align 8, !tbaa !45
  %172 = icmp eq ptr %171, %94
  br i1 %172, label %174, label %173

173:                                              ; preds = %170
  call void @_ZdlPv(ptr noundef %171) #30
  br label %174

174:                                              ; preds = %173, %170
  %175 = load ptr, ptr %10, align 8, !tbaa !45
  %176 = icmp eq ptr %175, %91
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  call void @_ZdlPv(ptr noundef %175) #30
  br label %178

178:                                              ; preds = %177, %174
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #27
  %179 = add nuw i64 %140, 1
  %180 = load ptr, ptr %86, align 8, !tbaa !66
  %181 = load ptr, ptr %85, align 8, !tbaa !46
  %182 = ptrtoint ptr %180 to i64
  %183 = ptrtoint ptr %181 to i64
  %184 = sub i64 %182, %183
  %185 = ashr exact i64 %184, 3
  %186 = icmp ult i64 %179, %185
  br i1 %186, label %138, label %203, !llvm.loop !134

187:                                              ; preds = %138
  %188 = landingpad { ptr, i32 }
          cleanup
  br label %201

189:                                              ; preds = %146
  %190 = landingpad { ptr, i32 }
          cleanup
  br label %196

191:                                              ; preds = %147
  %192 = landingpad { ptr, i32 }
          cleanup
  %193 = load ptr, ptr %9, align 8, !tbaa !45
  %194 = icmp eq ptr %193, %94
  br i1 %194, label %196, label %195

195:                                              ; preds = %191
  call void @_ZdlPv(ptr noundef %193) #30
  br label %196

196:                                              ; preds = %195, %191, %189
  %197 = phi { ptr, i32 } [ %190, %189 ], [ %192, %191 ], [ %192, %195 ]
  %198 = load ptr, ptr %10, align 8, !tbaa !45
  %199 = icmp eq ptr %198, %91
  br i1 %199, label %201, label %200

200:                                              ; preds = %196
  call void @_ZdlPv(ptr noundef %198) #30
  br label %201

201:                                              ; preds = %200, %196, %187
  %202 = phi { ptr, i32 } [ %188, %187 ], [ %197, %196 ], [ %197, %200 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #27
  br label %204

203:                                              ; preds = %178, %84
  ret void

204:                                              ; preds = %201, %136
  %205 = phi { ptr, i32 } [ %137, %136 ], [ %202, %201 ]
  %206 = load ptr, ptr %0, align 8, !tbaa !45
  %207 = icmp eq ptr %206, %53
  br i1 %207, label %209, label %208

208:                                              ; preds = %204
  call void @_ZdlPv(ptr noundef %206) #30
  br label %209

209:                                              ; preds = %208, %204, %115
  %210 = phi { ptr, i32 } [ %110, %115 ], [ %205, %204 ], [ %205, %208 ]
  resume { ptr, i32 } %210
}

; Function Attrs: optsize uwtable
define weak_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %4, ptr %0, align 8, !tbaa !41
  %5 = load ptr, ptr %1, align 8, !tbaa !45
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !43
  %8 = getelementptr inbounds i8, ptr %5, i64 %7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %5, ptr noundef %8) #26
  %9 = load ptr, ptr %2, align 8, !tbaa !45
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !43
  %12 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9, i64 noundef %11) #26
          to label %19 unwind label %13

13:                                               ; preds = %3
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = load ptr, ptr %0, align 8, !tbaa !45
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @_ZdlPv(ptr noundef %15) #30
  br label %18

18:                                               ; preds = %17, %13
  resume { ptr, i32 } %14

19:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal noundef i32 @_Z4ddotiPKdS0_PdRd(i32 noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %4) #21 {
  %6 = icmp eq ptr %2, %1
  %7 = icmp sgt i32 %0, 0
  br i1 %6, label %11, label %8

8:                                                ; preds = %5
  br i1 %7, label %9, label %34

9:                                                ; preds = %8
  %10 = zext i32 %0 to i64
  br label %23

11:                                               ; preds = %5
  br i1 %7, label %12, label %34

12:                                               ; preds = %11
  %13 = zext i32 %0 to i64
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i64 [ 0, %12 ], [ %21, %14 ]
  %16 = phi double [ 0.000000e+00, %12 ], [ %20, %14 ]
  %17 = getelementptr inbounds double, ptr %2, i64 %15
  %18 = load double, ptr %17, align 8, !tbaa !7
  %19 = fmul double %18, %18
  %20 = fadd double %16, %19
  %21 = add nuw nsw i64 %15, 1
  %22 = icmp eq i64 %21, %13
  br i1 %22, label %34, label %14, !llvm.loop !135

23:                                               ; preds = %23, %9
  %24 = phi i64 [ 0, %9 ], [ %32, %23 ]
  %25 = phi double [ 0.000000e+00, %9 ], [ %31, %23 ]
  %26 = getelementptr inbounds double, ptr %1, i64 %24
  %27 = load double, ptr %26, align 8, !tbaa !7
  %28 = getelementptr inbounds double, ptr %2, i64 %24
  %29 = load double, ptr %28, align 8, !tbaa !7
  %30 = fmul double %27, %29
  %31 = fadd double %25, %30
  %32 = add nuw nsw i64 %24, 1
  %33 = icmp eq i64 %32, %10
  br i1 %33, label %34, label %23, !llvm.loop !136

34:                                               ; preds = %23, %14, %11, %8
  %35 = phi double [ 0.000000e+00, %11 ], [ 0.000000e+00, %8 ], [ %20, %14 ], [ %31, %23 ]
  store double %35, ptr %3, align 8, !tbaa !7
  ret i32 0
}

; Function Attrs: optsize uwtable
define internal void @_GLOBAL__sub_I_generate_matrix.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit.26) #26
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit.26, ptr nonnull @__dso_handle) #27
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) #4 {
  %8 = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #28
  store ptr %8, ptr %3, align 8, !tbaa !38
  store ptr null, ptr %8, align 8, !tbaa !137
  %9 = mul nsw i32 %1, %0
  %10 = mul nsw i32 %9, %2
  %11 = mul nsw i32 %10, 27
  %12 = sext i32 %10 to i64
  %13 = icmp slt i32 %10, 0
  %14 = shl nsw i64 %12, 2
  %15 = select i1 %13, i64 -1, i64 %14
  %16 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %15) #28
  %17 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %8, i64 0, i32 8
  store ptr %16, ptr %17, align 8, !tbaa !37
  %18 = shl nsw i64 %12, 3
  %19 = select i1 %13, i64 -1, i64 %18
  %20 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %19) #28
  %21 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %8, i64 0, i32 9
  store ptr %20, ptr %21, align 8, !tbaa !35
  %22 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %19) #28
  %23 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %8, i64 0, i32 10
  store ptr %22, ptr %23, align 8, !tbaa !36
  %24 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %19) #28
  %25 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %8, i64 0, i32 11
  store ptr %24, ptr %25, align 8, !tbaa !138
  %26 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %19) #28
  store ptr %26, ptr %4, align 8, !tbaa !38
  %27 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %19) #28
  store ptr %27, ptr %5, align 8, !tbaa !38
  %28 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %19) #28
  store ptr %28, ptr %6, align 8, !tbaa !38
  %29 = sext i32 %11 to i64
  %30 = shl nsw i64 %29, 3
  %31 = select i1 %13, i64 -1, i64 %30
  %32 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %31) #28
  %33 = load ptr, ptr %3, align 8, !tbaa !38
  %34 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %33, i64 0, i32 12
  store ptr %32, ptr %34, align 8, !tbaa !139
  %35 = shl nsw i64 %29, 2
  %36 = select i1 %13, i64 -1, i64 %35
  %37 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %36) #28
  %38 = load ptr, ptr %3, align 8, !tbaa !38
  %39 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %38, i64 0, i32 13
  store ptr %37, ptr %39, align 8, !tbaa !140
  %40 = icmp sgt i32 %2, 0
  %41 = load ptr, ptr %3, align 8, !tbaa !38
  br i1 %40, label %42, label %165

42:                                               ; preds = %7
  %43 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %41, i64 0, i32 13
  %44 = load ptr, ptr %43, align 8, !tbaa !140
  %45 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %41, i64 0, i32 12
  %46 = load ptr, ptr %45, align 8, !tbaa !139
  %47 = icmp sgt i32 %1, 0
  %48 = icmp sgt i32 %0, 0
  %49 = zext i32 %0 to i64
  br label %50

50:                                               ; preds = %65, %42
  %51 = phi ptr [ %41, %42 ], [ %66, %65 ]
  %52 = phi ptr [ %46, %42 ], [ %68, %65 ]
  %53 = phi ptr [ %44, %42 ], [ %67, %65 ]
  %54 = phi i32 [ 0, %42 ], [ %69, %65 ]
  br i1 %47, label %55, label %65

55:                                               ; preds = %50
  %56 = mul i32 %54, %1
  br label %57

57:                                               ; preds = %71, %55
  %58 = phi ptr [ %51, %55 ], [ %72, %71 ]
  %59 = phi ptr [ %52, %55 ], [ %74, %71 ]
  %60 = phi ptr [ %53, %55 ], [ %73, %71 ]
  %61 = phi i32 [ 0, %55 ], [ %75, %71 ]
  br i1 %48, label %62, label %71

62:                                               ; preds = %57
  %63 = add i32 %61, %56
  %64 = mul i32 %63, %0
  br label %77

65:                                               ; preds = %71, %50
  %66 = phi ptr [ %51, %50 ], [ %72, %71 ]
  %67 = phi ptr [ %53, %50 ], [ %73, %71 ]
  %68 = phi ptr [ %52, %50 ], [ %74, %71 ]
  %69 = add nuw nsw i32 %54, 1
  %70 = icmp eq i32 %69, %2
  br i1 %70, label %165, label %50, !llvm.loop !141

71:                                               ; preds = %98, %57
  %72 = phi ptr [ %58, %57 ], [ %99, %98 ]
  %73 = phi ptr [ %60, %57 ], [ %.lcssa2.lcssa.lcssa, %98 ]
  %74 = phi ptr [ %59, %57 ], [ %.lcssa.lcssa.lcssa, %98 ]
  %75 = add nuw nsw i32 %61, 1
  %76 = icmp eq i32 %75, %1
  br i1 %76, label %65, label %57, !llvm.loop !142

77:                                               ; preds = %98, %62
  %78 = phi ptr [ %58, %62 ], [ %99, %98 ]
  %79 = phi i64 [ 0, %62 ], [ %112, %98 ]
  %80 = phi ptr [ %59, %62 ], [ %.lcssa.lcssa.lcssa, %98 ]
  %81 = phi ptr [ %60, %62 ], [ %.lcssa2.lcssa.lcssa, %98 ]
  %82 = trunc i64 %79 to i32
  %83 = add i32 %64, %82
  %84 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %78, i64 0, i32 9
  %85 = load ptr, ptr %84, align 8, !tbaa !35
  %86 = sext i32 %83 to i64
  %87 = getelementptr inbounds ptr, ptr %85, i64 %86
  store ptr %80, ptr %87, align 8, !tbaa !38
  %88 = load ptr, ptr %3, align 8, !tbaa !38
  %89 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %88, i64 0, i32 10
  %90 = load ptr, ptr %89, align 8, !tbaa !36
  %91 = getelementptr inbounds ptr, ptr %90, i64 %86
  store ptr %81, ptr %91, align 8, !tbaa !38
  br label %92

92:                                               ; preds = %125, %77
  %93 = phi ptr [ %80, %77 ], [ %.lcssa.lcssa, %125 ]
  %94 = phi i32 [ -1, %77 ], [ %126, %125 ]
  %95 = phi i32 [ 0, %77 ], [ %.lcssa1.lcssa, %125 ]
  %96 = phi ptr [ %81, %77 ], [ %.lcssa2.lcssa, %125 ]
  %97 = mul i32 %94, %1
  br label %114

98:                                               ; preds = %125
  %.lcssa2.lcssa.lcssa = phi ptr [ %.lcssa2.lcssa, %125 ]
  %.lcssa1.lcssa.lcssa = phi i32 [ %.lcssa1.lcssa, %125 ]
  %.lcssa.lcssa.lcssa = phi ptr [ %.lcssa.lcssa, %125 ]
  %99 = load ptr, ptr %3, align 8, !tbaa !38
  %100 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %99, i64 0, i32 8
  %101 = load ptr, ptr %100, align 8, !tbaa !37
  %102 = getelementptr inbounds i32, ptr %101, i64 %86
  store i32 %.lcssa1.lcssa.lcssa, ptr %102, align 4, !tbaa !19
  %103 = load ptr, ptr %4, align 8, !tbaa !38
  %104 = getelementptr inbounds double, ptr %103, i64 %86
  store double 0.000000e+00, ptr %104, align 8, !tbaa !7
  %105 = add nsw i32 %.lcssa1.lcssa.lcssa, -1
  %106 = sitofp i32 %105 to double
  %107 = fsub double 2.700000e+01, %106
  %108 = load ptr, ptr %5, align 8, !tbaa !38
  %109 = getelementptr inbounds double, ptr %108, i64 %86
  store double %107, ptr %109, align 8, !tbaa !7
  %110 = load ptr, ptr %6, align 8, !tbaa !38
  %111 = getelementptr inbounds double, ptr %110, i64 %86
  store double 1.000000e+00, ptr %111, align 8, !tbaa !7
  %112 = add nuw nsw i64 %79, 1
  %113 = icmp eq i64 %112, %49
  br i1 %113, label %71, label %77, !llvm.loop !143

114:                                              ; preds = %128, %92
  %115 = phi ptr [ %93, %92 ], [ %.lcssa, %128 ]
  %116 = phi i32 [ -1, %92 ], [ %129, %128 ]
  %117 = phi i32 [ %95, %92 ], [ %.lcssa1, %128 ]
  %118 = phi ptr [ %96, %92 ], [ %.lcssa2, %128 ]
  %119 = add i32 %116, %97
  %120 = mul i32 %119, %0
  %121 = add i32 %120, %83
  %122 = add nsw i32 %116, %61
  %123 = icmp slt i32 %122, 0
  %124 = icmp slt i32 %122, %1
  br label %131

125:                                              ; preds = %128
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %128 ]
  %.lcssa1.lcssa = phi i32 [ %.lcssa1, %128 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %128 ]
  %126 = add nsw i32 %94, 1
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %98, label %92, !llvm.loop !144

128:                                              ; preds = %159
  %.lcssa2 = phi ptr [ %160, %159 ]
  %.lcssa1 = phi i32 [ %161, %159 ]
  %.lcssa = phi ptr [ %162, %159 ]
  %129 = add nsw i32 %116, 1
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %125, label %114, !llvm.loop !145

131:                                              ; preds = %159, %114
  %132 = phi ptr [ %115, %114 ], [ %162, %159 ]
  %133 = phi i32 [ -1, %114 ], [ %163, %159 ]
  %134 = phi i32 [ %117, %114 ], [ %161, %159 ]
  %135 = phi ptr [ %118, %114 ], [ %160, %159 ]
  %136 = add i32 %121, %133
  %137 = add nsw i32 %133, %82
  %138 = icmp slt i32 %137, 0
  %139 = icmp sge i32 %137, %0
  %140 = or i1 %138, %139
  %141 = select i1 %140, i1 true, i1 %123
  br i1 %141, label %159, label %142

142:                                              ; preds = %131
  %143 = icmp sgt i32 %136, -1
  %144 = and i1 %124, %143
  %145 = icmp slt i32 %136, %10
  %146 = and i1 %144, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %142
  %148 = icmp eq i32 %136, %83
  br i1 %148, label %149, label %154

149:                                              ; preds = %147
  %150 = load ptr, ptr %3, align 8, !tbaa !38
  %151 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %150, i64 0, i32 11
  %152 = load ptr, ptr %151, align 8, !tbaa !138
  %153 = getelementptr inbounds ptr, ptr %152, i64 %86
  store ptr %132, ptr %153, align 8, !tbaa !38
  br label %154

154:                                              ; preds = %149, %147
  %155 = phi double [ 2.700000e+01, %149 ], [ -1.000000e+00, %147 ]
  %156 = getelementptr inbounds double, ptr %132, i64 1
  store double %155, ptr %132, align 8, !tbaa !7
  %157 = getelementptr inbounds i32, ptr %135, i64 1
  store i32 %136, ptr %135, align 4, !tbaa !19
  %158 = add nsw i32 %134, 1
  br label %159

159:                                              ; preds = %154, %142, %131
  %160 = phi ptr [ %157, %154 ], [ %135, %142 ], [ %135, %131 ]
  %161 = phi i32 [ %158, %154 ], [ %134, %142 ], [ %134, %131 ]
  %162 = phi ptr [ %156, %154 ], [ %132, %142 ], [ %132, %131 ]
  %163 = add nsw i32 %133, 1
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %128, label %131, !llvm.loop !146

165:                                              ; preds = %65, %7
  %166 = phi ptr [ %41, %7 ], [ %66, %65 ]
  %167 = add nsw i32 %10, -1
  %168 = mul nsw i64 %12, 27
  %169 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %166, i64 0, i32 1
  store i32 0, ptr %169, align 8, !tbaa !147
  %170 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %166, i64 0, i32 2
  store i32 %167, ptr %170, align 4, !tbaa !148
  %171 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %166, i64 0, i32 3
  store i32 %10, ptr %171, align 8, !tbaa !149
  %172 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %166, i64 0, i32 4
  store i64 %168, ptr %172, align 8, !tbaa !150
  %173 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %166, i64 0, i32 5
  store i32 %10, ptr %173, align 8, !tbaa !11
  %174 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %166, i64 0, i32 6
  store i32 %10, ptr %174, align 4, !tbaa !16
  %175 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %166, i64 0, i32 7
  store i32 %11, ptr %175, align 8, !tbaa !151
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit.28) #26
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit.28, ptr nonnull @__dso_handle) #27
  ret void
}

; Function Attrs: norecurse optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #22 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [7 x double], align 16
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca %class.YAML_Doc, align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca %"class.std::__cxx11::basic_string", align 8
  %19 = alloca %"class.std::__cxx11::basic_string", align 8
  %20 = alloca %"class.std::__cxx11::basic_string", align 8
  %21 = alloca %"class.std::__cxx11::basic_string", align 8
  %22 = alloca %"class.std::__cxx11::basic_string", align 8
  %23 = alloca %"class.std::__cxx11::basic_string", align 8
  %24 = alloca %"class.std::__cxx11::basic_string", align 8
  %25 = alloca %"class.std::__cxx11::basic_string", align 8
  %26 = alloca %"class.std::__cxx11::basic_string", align 8
  %27 = alloca %"class.std::__cxx11::basic_string", align 8
  %28 = alloca %"class.std::__cxx11::basic_string", align 8
  %29 = alloca %"class.std::__cxx11::basic_string", align 8
  %30 = alloca %"class.std::__cxx11::basic_string", align 8
  %31 = alloca %"class.std::__cxx11::basic_string", align 8
  %32 = alloca %"class.std::__cxx11::basic_string", align 8
  %33 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #27
  switch i32 %0, label %34 [
    i32 4, label %51
    i32 2, label %61
  ]

34:                                               ; preds = %2
  %35 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.29) #26
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %35) #26
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull @.str.1.30) #26
  %38 = load ptr, ptr %1, align 8, !tbaa !38
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef %38) #26
  %40 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull @.str.2.31) #26
  %41 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %40) #26
  %42 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull @.str.3.32) #26
  %43 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %42) #26
  %44 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull @.str.4.33) #26
  %45 = load ptr, ptr %1, align 8, !tbaa !38
  %46 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %45) #26
  %47 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull @.str.5.34) #26
  %48 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %47) #26
  %49 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull @.str.6.35) #26
  %50 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %49) #26
  tail call void @exit(i32 noundef 1) #32
  unreachable

51:                                               ; preds = %2
  %52 = getelementptr inbounds ptr, ptr %1, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !38
  %54 = tail call i32 @atoi(ptr nocapture noundef %53) #33
  %55 = getelementptr inbounds ptr, ptr %1, i64 2
  %56 = load ptr, ptr %55, align 8, !tbaa !38
  %57 = tail call i32 @atoi(ptr nocapture noundef %56) #33
  %58 = getelementptr inbounds ptr, ptr %1, i64 3
  %59 = load ptr, ptr %58, align 8, !tbaa !38
  %60 = tail call i32 @atoi(ptr nocapture noundef %59) #33
  call void @_Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_(i32 noundef %54, i32 noundef %57, i32 noundef %60, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #26
  br label %64

61:                                               ; preds = %2
  %62 = getelementptr inbounds ptr, ptr %1, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !38
  call void @_Z12read_HPC_rowPcPP24HPC_Sparse_Matrix_STRUCTPPdS4_S4_(ptr noundef %63, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #26
  br label %64

64:                                               ; preds = %61, %51
  %65 = phi i32 [ %60, %51 ], [ undef, %61 ]
  %66 = phi i32 [ %57, %51 ], [ undef, %61 ]
  %67 = phi i32 [ %54, %51 ], [ undef, %61 ]
  %68 = call noundef double @_Z7mytimerv() #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  store i32 0, ptr %8, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #27
  store double 0.000000e+00, ptr %9, align 8, !tbaa !7
  %69 = load ptr, ptr %3, align 8, !tbaa !38
  %70 = load ptr, ptr %5, align 8, !tbaa !38
  %71 = load ptr, ptr %4, align 8, !tbaa !38
  %72 = call noundef i32 @_Z5HPCCGP24HPC_Sparse_Matrix_STRUCTPKdPdidRiRdS3_(ptr noundef %69, ptr noundef %70, ptr noundef %71, i32 noundef 150, double noundef 0.000000e+00, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %7) #26
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %64
  %75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.7.36, i64 noundef 21) #26
  %76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %72) #26
  %77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef nonnull @.str.8.37, i64 noundef 2) #26
  %78 = load ptr, ptr %76, align 8, !tbaa !17
  %79 = getelementptr i8, ptr %78, i64 -24
  %80 = load i64, ptr %79, align 8
  %81 = getelementptr inbounds i8, ptr %76, i64 %80
  %82 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %81, i8 noundef signext 10) #26
  %83 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %76, i8 noundef signext %82) #26
  %84 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %83) #26
  br label %85

85:                                               ; preds = %74, %64
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #27
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  store ptr %86, ptr %11, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.9.38, ptr noundef nonnull getelementptr inbounds ([6 x i8], ptr @.str.9.38, i64 0, i64 5)) #26
          to label %87 unwind label %260

87:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #27
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  store ptr %88, ptr %12, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.10.39, ptr noundef nonnull getelementptr inbounds ([4 x i8], ptr @.str.10.39, i64 0, i64 3)) #26
          to label %89 unwind label %262

89:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #27
  %90 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  store ptr %90, ptr %13, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.11.40, ptr noundef nonnull @.str.11.40) #26
          to label %91 unwind label %264

91:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #27
  %92 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  store ptr %92, ptr %14, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.11.40, ptr noundef nonnull @.str.11.40) #26
          to label %93 unwind label %266

93:                                               ; preds = %91
  invoke void @_ZN8YAML_DocC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(216) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14) #26
          to label %94 unwind label %268

94:                                               ; preds = %93
  %95 = load ptr, ptr %14, align 8, !tbaa !45
  %96 = icmp eq ptr %95, %92
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  call void @_ZdlPv(ptr noundef %95) #30
  br label %98

98:                                               ; preds = %97, %94
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #27
  %99 = load ptr, ptr %13, align 8, !tbaa !45
  %100 = icmp eq ptr %99, %90
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  call void @_ZdlPv(ptr noundef %99) #30
  br label %102

102:                                              ; preds = %101, %98
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #27
  %103 = load ptr, ptr %12, align 8, !tbaa !45
  %104 = icmp eq ptr %103, %88
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  call void @_ZdlPv(ptr noundef %103) #30
  br label %106

106:                                              ; preds = %105, %102
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #27
  %107 = load ptr, ptr %11, align 8, !tbaa !45
  %108 = icmp eq ptr %107, %86
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  call void @_ZdlPv(ptr noundef %107) #30
  br label %110

110:                                              ; preds = %109, %106
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #27
  %111 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  store ptr %111, ptr %15, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.12.41, ptr noundef nonnull getelementptr inbounds ([12 x i8], ptr @.str.12.41, i64 0, i64 11)) #26
          to label %112 unwind label %290

112:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #27
  %113 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 2
  store ptr %113, ptr %16, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.11.40, ptr noundef nonnull @.str.11.40) #26
          to label %114 unwind label %292

114:                                              ; preds = %112
  %115 = invoke noundef ptr @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16) #26
          to label %116 unwind label %294

116:                                              ; preds = %114
  %117 = load ptr, ptr %16, align 8, !tbaa !45
  %118 = icmp eq ptr %117, %113
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  call void @_ZdlPv(ptr noundef %117) #30
  br label %120

120:                                              ; preds = %119, %116
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #27
  %121 = load ptr, ptr %15, align 8, !tbaa !45
  %122 = icmp eq ptr %121, %111
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  call void @_ZdlPv(ptr noundef %121) #30
  br label %124

124:                                              ; preds = %123, %120
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #27
  %125 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 2
  store ptr %125, ptr %17, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.12.41, ptr noundef nonnull getelementptr inbounds ([12 x i8], ptr @.str.12.41, i64 0, i64 11)) #26
          to label %126 unwind label %306

126:                                              ; preds = %124
  %127 = invoke noundef ptr @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull align 8 dereferenceable(32) %17) #26
          to label %128 unwind label %308

128:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #27
  %129 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 2
  store ptr %129, ptr %18, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.13, ptr noundef nonnull getelementptr inbounds ([16 x i8], ptr @.str.13, i64 0, i64 15)) #26
          to label %130 unwind label %310

130:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %19) #27
  %131 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 0, i32 2
  store ptr %131, ptr %19, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.11.40, ptr noundef nonnull @.str.11.40) #26
          to label %132 unwind label %312

132:                                              ; preds = %130
  %133 = invoke noundef ptr @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(88) %127, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %19) #26
          to label %134 unwind label %314

134:                                              ; preds = %132
  %135 = load ptr, ptr %19, align 8, !tbaa !45
  %136 = icmp eq ptr %135, %131
  br i1 %136, label %138, label %137

137:                                              ; preds = %134
  call void @_ZdlPv(ptr noundef %135) #30
  br label %138

138:                                              ; preds = %137, %134
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #27
  %139 = load ptr, ptr %18, align 8, !tbaa !45
  %140 = icmp eq ptr %139, %129
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  call void @_ZdlPv(ptr noundef %139) #30
  br label %142

142:                                              ; preds = %141, %138
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #27
  %143 = load ptr, ptr %17, align 8, !tbaa !45
  %144 = icmp eq ptr %143, %125
  br i1 %144, label %146, label %145

145:                                              ; preds = %142
  call void @_ZdlPv(ptr noundef %143) #30
  br label %146

146:                                              ; preds = %145, %142
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %20) #27
  %147 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %20, i64 0, i32 2
  store ptr %147, ptr %20, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.12.41, ptr noundef nonnull getelementptr inbounds ([12 x i8], ptr @.str.12.41, i64 0, i64 11)) #26
          to label %148 unwind label %333

148:                                              ; preds = %146
  %149 = invoke noundef ptr @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull align 8 dereferenceable(32) %20) #26
          to label %150 unwind label %335

150:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %21) #27
  %151 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %21, i64 0, i32 2
  store ptr %151, ptr %21, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.14.42, ptr noundef nonnull getelementptr inbounds ([19 x i8], ptr @.str.14.42, i64 0, i64 18)) #26
          to label %152 unwind label %337

152:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %22) #27
  %153 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %22, i64 0, i32 2
  store ptr %153, ptr %22, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.11.40, ptr noundef nonnull @.str.11.40) #26
          to label %154 unwind label %339

154:                                              ; preds = %152
  %155 = invoke noundef ptr @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(88) %149, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %22) #26
          to label %156 unwind label %341

156:                                              ; preds = %154
  %157 = load ptr, ptr %22, align 8, !tbaa !45
  %158 = icmp eq ptr %157, %153
  br i1 %158, label %160, label %159

159:                                              ; preds = %156
  call void @_ZdlPv(ptr noundef %157) #30
  br label %160

160:                                              ; preds = %159, %156
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %22) #27
  %161 = load ptr, ptr %21, align 8, !tbaa !45
  %162 = icmp eq ptr %161, %151
  br i1 %162, label %164, label %163

163:                                              ; preds = %160
  call void @_ZdlPv(ptr noundef %161) #30
  br label %164

164:                                              ; preds = %163, %160
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %21) #27
  %165 = load ptr, ptr %20, align 8, !tbaa !45
  %166 = icmp eq ptr %165, %147
  br i1 %166, label %168, label %167

167:                                              ; preds = %164
  call void @_ZdlPv(ptr noundef %165) #30
  br label %168

168:                                              ; preds = %167, %164
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %20) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %23) #27
  %169 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %23, i64 0, i32 2
  store ptr %169, ptr %23, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.15.43, ptr noundef nonnull getelementptr inbounds ([11 x i8], ptr @.str.15.43, i64 0, i64 10)) #26
          to label %170 unwind label %360

170:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %24) #27
  %171 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %24, i64 0, i32 2
  store ptr %171, ptr %24, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.11.40, ptr noundef nonnull @.str.11.40) #26
          to label %172 unwind label %362

172:                                              ; preds = %170
  %173 = invoke noundef ptr @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %24) #26
          to label %174 unwind label %364

174:                                              ; preds = %172
  %175 = load ptr, ptr %24, align 8, !tbaa !45
  %176 = icmp eq ptr %175, %171
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  call void @_ZdlPv(ptr noundef %175) #30
  br label %178

178:                                              ; preds = %177, %174
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %24) #27
  %179 = load ptr, ptr %23, align 8, !tbaa !45
  %180 = icmp eq ptr %179, %169
  br i1 %180, label %182, label %181

181:                                              ; preds = %178
  call void @_ZdlPv(ptr noundef %179) #30
  br label %182

182:                                              ; preds = %181, %178
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %23) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %25) #27
  %183 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %25, i64 0, i32 2
  store ptr %183, ptr %25, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.15.43, ptr noundef nonnull getelementptr inbounds ([11 x i8], ptr @.str.15.43, i64 0, i64 10)) #26
          to label %184 unwind label %376

184:                                              ; preds = %182
  %185 = invoke noundef ptr @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull align 8 dereferenceable(32) %25) #26
          to label %186 unwind label %378

186:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %26) #27
  %187 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 0, i32 2
  store ptr %187, ptr %26, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.16.44, ptr noundef nonnull getelementptr inbounds ([3 x i8], ptr @.str.16.44, i64 0, i64 2)) #26
          to label %188 unwind label %380

188:                                              ; preds = %186
  %189 = invoke noundef ptr @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %185, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef %67) #26
          to label %190 unwind label %382

190:                                              ; preds = %188
  %191 = load ptr, ptr %26, align 8, !tbaa !45
  %192 = icmp eq ptr %191, %187
  br i1 %192, label %194, label %193

193:                                              ; preds = %190
  call void @_ZdlPv(ptr noundef %191) #30
  br label %194

194:                                              ; preds = %193, %190
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #27
  %195 = load ptr, ptr %25, align 8, !tbaa !45
  %196 = icmp eq ptr %195, %183
  br i1 %196, label %198, label %197

197:                                              ; preds = %194
  call void @_ZdlPv(ptr noundef %195) #30
  br label %198

198:                                              ; preds = %197, %194
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %25) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %27) #27
  %199 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 0, i32 2
  store ptr %199, ptr %27, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.15.43, ptr noundef nonnull getelementptr inbounds ([11 x i8], ptr @.str.15.43, i64 0, i64 10)) #26
          to label %200 unwind label %396

200:                                              ; preds = %198
  %201 = invoke noundef ptr @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull align 8 dereferenceable(32) %27) #26
          to label %202 unwind label %398

202:                                              ; preds = %200
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %28) #27
  %203 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 0, i32 2
  store ptr %203, ptr %28, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.17, ptr noundef nonnull getelementptr inbounds ([3 x i8], ptr @.str.17, i64 0, i64 2)) #26
          to label %204 unwind label %400

204:                                              ; preds = %202
  %205 = invoke noundef ptr @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %201, ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef %66) #26
          to label %206 unwind label %402

206:                                              ; preds = %204
  %207 = load ptr, ptr %28, align 8, !tbaa !45
  %208 = icmp eq ptr %207, %203
  br i1 %208, label %210, label %209

209:                                              ; preds = %206
  call void @_ZdlPv(ptr noundef %207) #30
  br label %210

210:                                              ; preds = %209, %206
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %28) #27
  %211 = load ptr, ptr %27, align 8, !tbaa !45
  %212 = icmp eq ptr %211, %199
  br i1 %212, label %214, label %213

213:                                              ; preds = %210
  call void @_ZdlPv(ptr noundef %211) #30
  br label %214

214:                                              ; preds = %213, %210
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %27) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %29) #27
  %215 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %29, i64 0, i32 2
  store ptr %215, ptr %29, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.15.43, ptr noundef nonnull getelementptr inbounds ([11 x i8], ptr @.str.15.43, i64 0, i64 10)) #26
          to label %216 unwind label %416

216:                                              ; preds = %214
  %217 = invoke noundef ptr @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull align 8 dereferenceable(32) %29) #26
          to label %218 unwind label %418

218:                                              ; preds = %216
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %30) #27
  %219 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %30, i64 0, i32 2
  store ptr %219, ptr %30, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.18, ptr noundef nonnull getelementptr inbounds ([3 x i8], ptr @.str.18, i64 0, i64 2)) #26
          to label %220 unwind label %420

220:                                              ; preds = %218
  %221 = invoke noundef ptr @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %217, ptr noundef nonnull align 8 dereferenceable(32) %30, i32 noundef %65) #26
          to label %222 unwind label %422

222:                                              ; preds = %220
  %223 = load ptr, ptr %30, align 8, !tbaa !45
  %224 = icmp eq ptr %223, %219
  br i1 %224, label %226, label %225

225:                                              ; preds = %222
  call void @_ZdlPv(ptr noundef %223) #30
  br label %226

226:                                              ; preds = %225, %222
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %30) #27
  %227 = load ptr, ptr %29, align 8, !tbaa !45
  %228 = icmp eq ptr %227, %215
  br i1 %228, label %230, label %229

229:                                              ; preds = %226
  call void @_ZdlPv(ptr noundef %227) #30
  br label %230

230:                                              ; preds = %229, %226
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %29) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %31) #27
  %231 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %31, i64 0, i32 2
  store ptr %231, ptr %31, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.19, ptr noundef nonnull getelementptr inbounds ([23 x i8], ptr @.str.19, i64 0, i64 22)) #26
          to label %232 unwind label %436

232:                                              ; preds = %230
  %233 = load i32, ptr %8, align 4, !tbaa !19
  %234 = invoke noundef ptr @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull align 8 dereferenceable(32) %31, i32 noundef %233) #26
          to label %235 unwind label %438

235:                                              ; preds = %232
  %236 = load ptr, ptr %31, align 8, !tbaa !45
  %237 = icmp eq ptr %236, %231
  br i1 %237, label %239, label %238

238:                                              ; preds = %235
  call void @_ZdlPv(ptr noundef %236) #30
  br label %239

239:                                              ; preds = %238, %235
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %31) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %32) #27
  %240 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %32, i64 0, i32 2
  store ptr %240, ptr %32, align 8, !tbaa !41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.20, ptr noundef nonnull getelementptr inbounds ([17 x i8], ptr @.str.20, i64 0, i64 16)) #26
          to label %241 unwind label %445

241:                                              ; preds = %239
  %242 = load double, ptr %9, align 8, !tbaa !7
  %243 = invoke noundef ptr @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull align 8 dereferenceable(32) %32, double noundef %242) #26
          to label %244 unwind label %447

244:                                              ; preds = %241
  %245 = load ptr, ptr %32, align 8, !tbaa !45
  %246 = icmp eq ptr %245, %240
  br i1 %246, label %248, label %247

247:                                              ; preds = %244
  call void @_ZdlPv(ptr noundef %245) #30
  br label %248

248:                                              ; preds = %247, %244
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %32) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %33) #27
  invoke void @_ZN8YAML_Doc12generateYAMLB5cxx11Ev(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(216) %10) #26
          to label %249 unwind label %454

249:                                              ; preds = %248
  %250 = load ptr, ptr %33, align 8, !tbaa !45
  %251 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 0, i32 1
  %252 = load i64, ptr %251, align 8, !tbaa !43
  %253 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %250, i64 noundef %252) #26
          to label %254 unwind label %456

254:                                              ; preds = %249
  %255 = load ptr, ptr %33, align 8, !tbaa !45
  %256 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 0, i32 2
  %257 = icmp eq ptr %255, %256
  br i1 %257, label %259, label %258

258:                                              ; preds = %254
  call void @_ZdlPv(ptr noundef %255) #30
  br label %259

259:                                              ; preds = %258, %254
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %33) #27
  call void @_ZN8YAML_DocD1Ev(ptr noundef nonnull align 8 dereferenceable(216) %10) #29
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret i32 0

260:                                              ; preds = %85
  %261 = landingpad { ptr, i32 }
          cleanup
  br label %288

262:                                              ; preds = %87
  %263 = landingpad { ptr, i32 }
          cleanup
  br label %283

264:                                              ; preds = %89
  %265 = landingpad { ptr, i32 }
          cleanup
  br label %278

266:                                              ; preds = %91
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %273

268:                                              ; preds = %93
  %269 = landingpad { ptr, i32 }
          cleanup
  %270 = load ptr, ptr %14, align 8, !tbaa !45
  %271 = icmp eq ptr %270, %92
  br i1 %271, label %273, label %272

272:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #30
  br label %273

273:                                              ; preds = %272, %268, %266
  %274 = phi { ptr, i32 } [ %267, %266 ], [ %269, %268 ], [ %269, %272 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #27
  %275 = load ptr, ptr %13, align 8, !tbaa !45
  %276 = icmp eq ptr %275, %90
  br i1 %276, label %278, label %277

277:                                              ; preds = %273
  call void @_ZdlPv(ptr noundef %275) #30
  br label %278

278:                                              ; preds = %277, %273, %264
  %279 = phi { ptr, i32 } [ %265, %264 ], [ %274, %273 ], [ %274, %277 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #27
  %280 = load ptr, ptr %12, align 8, !tbaa !45
  %281 = icmp eq ptr %280, %88
  br i1 %281, label %283, label %282

282:                                              ; preds = %278
  call void @_ZdlPv(ptr noundef %280) #30
  br label %283

283:                                              ; preds = %282, %278, %262
  %284 = phi { ptr, i32 } [ %263, %262 ], [ %279, %278 ], [ %279, %282 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #27
  %285 = load ptr, ptr %11, align 8, !tbaa !45
  %286 = icmp eq ptr %285, %86
  br i1 %286, label %288, label %287

287:                                              ; preds = %283
  call void @_ZdlPv(ptr noundef %285) #30
  br label %288

288:                                              ; preds = %287, %283, %260
  %289 = phi { ptr, i32 } [ %261, %260 ], [ %284, %283 ], [ %284, %287 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #27
  br label %466

290:                                              ; preds = %110
  %291 = landingpad { ptr, i32 }
          cleanup
  br label %304

292:                                              ; preds = %112
  %293 = landingpad { ptr, i32 }
          cleanup
  br label %299

294:                                              ; preds = %114
  %295 = landingpad { ptr, i32 }
          cleanup
  %296 = load ptr, ptr %16, align 8, !tbaa !45
  %297 = icmp eq ptr %296, %113
  br i1 %297, label %299, label %298

298:                                              ; preds = %294
  call void @_ZdlPv(ptr noundef %296) #30
  br label %299

299:                                              ; preds = %298, %294, %292
  %300 = phi { ptr, i32 } [ %293, %292 ], [ %295, %294 ], [ %295, %298 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #27
  %301 = load ptr, ptr %15, align 8, !tbaa !45
  %302 = icmp eq ptr %301, %111
  br i1 %302, label %304, label %303

303:                                              ; preds = %299
  call void @_ZdlPv(ptr noundef %301) #30
  br label %304

304:                                              ; preds = %303, %299, %290
  %305 = phi { ptr, i32 } [ %291, %290 ], [ %300, %299 ], [ %300, %303 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #27
  br label %464

306:                                              ; preds = %124
  %307 = landingpad { ptr, i32 }
          cleanup
  br label %331

308:                                              ; preds = %126
  %309 = landingpad { ptr, i32 }
          cleanup
  br label %326

310:                                              ; preds = %128
  %311 = landingpad { ptr, i32 }
          cleanup
  br label %324

312:                                              ; preds = %130
  %313 = landingpad { ptr, i32 }
          cleanup
  br label %319

314:                                              ; preds = %132
  %315 = landingpad { ptr, i32 }
          cleanup
  %316 = load ptr, ptr %19, align 8, !tbaa !45
  %317 = icmp eq ptr %316, %131
  br i1 %317, label %319, label %318

318:                                              ; preds = %314
  call void @_ZdlPv(ptr noundef %316) #30
  br label %319

319:                                              ; preds = %318, %314, %312
  %320 = phi { ptr, i32 } [ %313, %312 ], [ %315, %314 ], [ %315, %318 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #27
  %321 = load ptr, ptr %18, align 8, !tbaa !45
  %322 = icmp eq ptr %321, %129
  br i1 %322, label %324, label %323

323:                                              ; preds = %319
  call void @_ZdlPv(ptr noundef %321) #30
  br label %324

324:                                              ; preds = %323, %319, %310
  %325 = phi { ptr, i32 } [ %311, %310 ], [ %320, %319 ], [ %320, %323 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #27
  br label %326

326:                                              ; preds = %324, %308
  %327 = phi { ptr, i32 } [ %325, %324 ], [ %309, %308 ]
  %328 = load ptr, ptr %17, align 8, !tbaa !45
  %329 = icmp eq ptr %328, %125
  br i1 %329, label %331, label %330

330:                                              ; preds = %326
  call void @_ZdlPv(ptr noundef %328) #30
  br label %331

331:                                              ; preds = %330, %326, %306
  %332 = phi { ptr, i32 } [ %307, %306 ], [ %327, %326 ], [ %327, %330 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #27
  br label %464

333:                                              ; preds = %146
  %334 = landingpad { ptr, i32 }
          cleanup
  br label %358

335:                                              ; preds = %148
  %336 = landingpad { ptr, i32 }
          cleanup
  br label %353

337:                                              ; preds = %150
  %338 = landingpad { ptr, i32 }
          cleanup
  br label %351

339:                                              ; preds = %152
  %340 = landingpad { ptr, i32 }
          cleanup
  br label %346

341:                                              ; preds = %154
  %342 = landingpad { ptr, i32 }
          cleanup
  %343 = load ptr, ptr %22, align 8, !tbaa !45
  %344 = icmp eq ptr %343, %153
  br i1 %344, label %346, label %345

345:                                              ; preds = %341
  call void @_ZdlPv(ptr noundef %343) #30
  br label %346

346:                                              ; preds = %345, %341, %339
  %347 = phi { ptr, i32 } [ %340, %339 ], [ %342, %341 ], [ %342, %345 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %22) #27
  %348 = load ptr, ptr %21, align 8, !tbaa !45
  %349 = icmp eq ptr %348, %151
  br i1 %349, label %351, label %350

350:                                              ; preds = %346
  call void @_ZdlPv(ptr noundef %348) #30
  br label %351

351:                                              ; preds = %350, %346, %337
  %352 = phi { ptr, i32 } [ %338, %337 ], [ %347, %346 ], [ %347, %350 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %21) #27
  br label %353

353:                                              ; preds = %351, %335
  %354 = phi { ptr, i32 } [ %352, %351 ], [ %336, %335 ]
  %355 = load ptr, ptr %20, align 8, !tbaa !45
  %356 = icmp eq ptr %355, %147
  br i1 %356, label %358, label %357

357:                                              ; preds = %353
  call void @_ZdlPv(ptr noundef %355) #30
  br label %358

358:                                              ; preds = %357, %353, %333
  %359 = phi { ptr, i32 } [ %334, %333 ], [ %354, %353 ], [ %354, %357 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %20) #27
  br label %464

360:                                              ; preds = %168
  %361 = landingpad { ptr, i32 }
          cleanup
  br label %374

362:                                              ; preds = %170
  %363 = landingpad { ptr, i32 }
          cleanup
  br label %369

364:                                              ; preds = %172
  %365 = landingpad { ptr, i32 }
          cleanup
  %366 = load ptr, ptr %24, align 8, !tbaa !45
  %367 = icmp eq ptr %366, %171
  br i1 %367, label %369, label %368

368:                                              ; preds = %364
  call void @_ZdlPv(ptr noundef %366) #30
  br label %369

369:                                              ; preds = %368, %364, %362
  %370 = phi { ptr, i32 } [ %363, %362 ], [ %365, %364 ], [ %365, %368 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %24) #27
  %371 = load ptr, ptr %23, align 8, !tbaa !45
  %372 = icmp eq ptr %371, %169
  br i1 %372, label %374, label %373

373:                                              ; preds = %369
  call void @_ZdlPv(ptr noundef %371) #30
  br label %374

374:                                              ; preds = %373, %369, %360
  %375 = phi { ptr, i32 } [ %361, %360 ], [ %370, %369 ], [ %370, %373 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %23) #27
  br label %464

376:                                              ; preds = %182
  %377 = landingpad { ptr, i32 }
          cleanup
  br label %394

378:                                              ; preds = %184
  %379 = landingpad { ptr, i32 }
          cleanup
  br label %389

380:                                              ; preds = %186
  %381 = landingpad { ptr, i32 }
          cleanup
  br label %387

382:                                              ; preds = %188
  %383 = landingpad { ptr, i32 }
          cleanup
  %384 = load ptr, ptr %26, align 8, !tbaa !45
  %385 = icmp eq ptr %384, %187
  br i1 %385, label %387, label %386

386:                                              ; preds = %382
  call void @_ZdlPv(ptr noundef %384) #30
  br label %387

387:                                              ; preds = %386, %382, %380
  %388 = phi { ptr, i32 } [ %381, %380 ], [ %383, %382 ], [ %383, %386 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #27
  br label %389

389:                                              ; preds = %387, %378
  %390 = phi { ptr, i32 } [ %388, %387 ], [ %379, %378 ]
  %391 = load ptr, ptr %25, align 8, !tbaa !45
  %392 = icmp eq ptr %391, %183
  br i1 %392, label %394, label %393

393:                                              ; preds = %389
  call void @_ZdlPv(ptr noundef %391) #30
  br label %394

394:                                              ; preds = %393, %389, %376
  %395 = phi { ptr, i32 } [ %377, %376 ], [ %390, %389 ], [ %390, %393 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %25) #27
  br label %464

396:                                              ; preds = %198
  %397 = landingpad { ptr, i32 }
          cleanup
  br label %414

398:                                              ; preds = %200
  %399 = landingpad { ptr, i32 }
          cleanup
  br label %409

400:                                              ; preds = %202
  %401 = landingpad { ptr, i32 }
          cleanup
  br label %407

402:                                              ; preds = %204
  %403 = landingpad { ptr, i32 }
          cleanup
  %404 = load ptr, ptr %28, align 8, !tbaa !45
  %405 = icmp eq ptr %404, %203
  br i1 %405, label %407, label %406

406:                                              ; preds = %402
  call void @_ZdlPv(ptr noundef %404) #30
  br label %407

407:                                              ; preds = %406, %402, %400
  %408 = phi { ptr, i32 } [ %401, %400 ], [ %403, %402 ], [ %403, %406 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %28) #27
  br label %409

409:                                              ; preds = %407, %398
  %410 = phi { ptr, i32 } [ %408, %407 ], [ %399, %398 ]
  %411 = load ptr, ptr %27, align 8, !tbaa !45
  %412 = icmp eq ptr %411, %199
  br i1 %412, label %414, label %413

413:                                              ; preds = %409
  call void @_ZdlPv(ptr noundef %411) #30
  br label %414

414:                                              ; preds = %413, %409, %396
  %415 = phi { ptr, i32 } [ %397, %396 ], [ %410, %409 ], [ %410, %413 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %27) #27
  br label %464

416:                                              ; preds = %214
  %417 = landingpad { ptr, i32 }
          cleanup
  br label %434

418:                                              ; preds = %216
  %419 = landingpad { ptr, i32 }
          cleanup
  br label %429

420:                                              ; preds = %218
  %421 = landingpad { ptr, i32 }
          cleanup
  br label %427

422:                                              ; preds = %220
  %423 = landingpad { ptr, i32 }
          cleanup
  %424 = load ptr, ptr %30, align 8, !tbaa !45
  %425 = icmp eq ptr %424, %219
  br i1 %425, label %427, label %426

426:                                              ; preds = %422
  call void @_ZdlPv(ptr noundef %424) #30
  br label %427

427:                                              ; preds = %426, %422, %420
  %428 = phi { ptr, i32 } [ %421, %420 ], [ %423, %422 ], [ %423, %426 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %30) #27
  br label %429

429:                                              ; preds = %427, %418
  %430 = phi { ptr, i32 } [ %428, %427 ], [ %419, %418 ]
  %431 = load ptr, ptr %29, align 8, !tbaa !45
  %432 = icmp eq ptr %431, %215
  br i1 %432, label %434, label %433

433:                                              ; preds = %429
  call void @_ZdlPv(ptr noundef %431) #30
  br label %434

434:                                              ; preds = %433, %429, %416
  %435 = phi { ptr, i32 } [ %417, %416 ], [ %430, %429 ], [ %430, %433 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %29) #27
  br label %464

436:                                              ; preds = %230
  %437 = landingpad { ptr, i32 }
          cleanup
  br label %443

438:                                              ; preds = %232
  %439 = landingpad { ptr, i32 }
          cleanup
  %440 = load ptr, ptr %31, align 8, !tbaa !45
  %441 = icmp eq ptr %440, %231
  br i1 %441, label %443, label %442

442:                                              ; preds = %438
  call void @_ZdlPv(ptr noundef %440) #30
  br label %443

443:                                              ; preds = %442, %438, %436
  %444 = phi { ptr, i32 } [ %437, %436 ], [ %439, %438 ], [ %439, %442 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %31) #27
  br label %464

445:                                              ; preds = %239
  %446 = landingpad { ptr, i32 }
          cleanup
  br label %452

447:                                              ; preds = %241
  %448 = landingpad { ptr, i32 }
          cleanup
  %449 = load ptr, ptr %32, align 8, !tbaa !45
  %450 = icmp eq ptr %449, %240
  br i1 %450, label %452, label %451

451:                                              ; preds = %447
  call void @_ZdlPv(ptr noundef %449) #30
  br label %452

452:                                              ; preds = %451, %447, %445
  %453 = phi { ptr, i32 } [ %446, %445 ], [ %448, %447 ], [ %448, %451 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %32) #27
  br label %464

454:                                              ; preds = %248
  %455 = landingpad { ptr, i32 }
          cleanup
  br label %462

456:                                              ; preds = %249
  %457 = landingpad { ptr, i32 }
          cleanup
  %458 = load ptr, ptr %33, align 8, !tbaa !45
  %459 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 0, i32 2
  %460 = icmp eq ptr %458, %459
  br i1 %460, label %462, label %461

461:                                              ; preds = %456
  call void @_ZdlPv(ptr noundef %458) #30
  br label %462

462:                                              ; preds = %461, %456, %454
  %463 = phi { ptr, i32 } [ %455, %454 ], [ %457, %456 ], [ %457, %461 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %33) #27
  br label %464

464:                                              ; preds = %462, %452, %443, %434, %414, %394, %374, %358, %331, %304
  %465 = phi { ptr, i32 } [ %463, %462 ], [ %453, %452 ], [ %444, %443 ], [ %435, %434 ], [ %415, %414 ], [ %395, %394 ], [ %375, %374 ], [ %359, %358 ], [ %332, %331 ], [ %305, %304 ]
  call void @_ZN8YAML_DocD1Ev(ptr noundef nonnull align 8 dereferenceable(216) %10) #29
  br label %466

466:                                              ; preds = %464, %288
  %467 = phi { ptr, i32 } [ %465, %464 ], [ %289, %288 ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  resume { ptr, i32 } %467
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #23 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !17
  %6 = getelementptr i8, ptr %5, i64 -24
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = getelementptr inbounds %"class.std::ios_base", ptr %8, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !152
  %11 = or i32 %10, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %8, i32 noundef %11) #26
  br label %15

12:                                               ; preds = %2
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %13) #26
  br label %15

15:                                               ; preds = %12, %4
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #23 {
  %2 = load ptr, ptr %0, align 8, !tbaa !17
  %3 = getelementptr i8, ptr %2, i64 -24
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  %6 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %5, i8 noundef signext 10) #26
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %6) #26
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #26
  ret ptr %8
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #25

; Function Attrs: optsize
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef double @_Z7mytimerv() #16 {
  %1 = alloca %struct.rusage, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %1) #27
  %2 = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %1) #29
  %3 = load i64, ptr %1, align 8, !tbaa !153
  %4 = sitofp i64 %3 to double
  %5 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !156
  %7 = sitofp i64 %6 to double
  %8 = fdiv double %7, 1.000000e+06
  %9 = fadd double %8, %4
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %1) #27
  ret double %9
}

; Function Attrs: nounwind optsize
declare i32 @getrusage(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize uwtable
define internal void @_GLOBAL__sub_I_read_HPC_row.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit.48) #26
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit.48, ptr nonnull @__dso_handle) #27
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z12read_HPC_rowPcPP24HPC_Sparse_Matrix_STRUCTPPdS4_S4_(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #4 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #27
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef %0) #26
  %15 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.1.52) #26
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.53, ptr noundef %0) #26
  tail call void @exit(i32 noundef 1) #32
  unreachable

19:                                               ; preds = %5
  %20 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %15, ptr noundef nonnull @.str.3.54, ptr noundef nonnull %6) #26
  %21 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %15, ptr noundef nonnull @.str.4.55, ptr noundef nonnull %7) #26
  %22 = load i32, ptr %6, align 4, !tbaa !19
  %23 = sext i32 %22 to i64
  %24 = icmp slt i32 %22, 0
  %25 = shl nsw i64 %23, 2
  %26 = select i1 %24, i64 -1, i64 %25
  %27 = call noalias noundef nonnull ptr @_Znam(i64 noundef %26) #28
  %28 = shl nsw i64 %23, 3
  %29 = select i1 %24, i64 -1, i64 %28
  %30 = call noalias noundef nonnull ptr @_Znam(i64 noundef %29) #28
  %31 = call noalias noundef nonnull ptr @_Znam(i64 noundef %29) #28
  %32 = call noalias noundef nonnull ptr @_Znam(i64 noundef %29) #28
  %33 = call noalias noundef nonnull ptr @_Znam(i64 noundef %29) #28
  store ptr %33, ptr %2, align 8, !tbaa !38
  %34 = call noalias noundef nonnull ptr @_Znam(i64 noundef %29) #28
  store ptr %34, ptr %3, align 8, !tbaa !38
  %35 = call noalias noundef nonnull ptr @_Znam(i64 noundef %29) #28
  store ptr %35, ptr %4, align 8, !tbaa !38
  %36 = icmp sgt i32 %22, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %49, %19
  %38 = phi i32 [ %52, %49 ], [ 0, %19 ]
  %39 = phi i32 [ %51, %49 ], [ 0, %19 ]
  %40 = phi i32 [ %50, %49 ], [ 0, %19 ]
  %41 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %15, ptr noundef nonnull @.str.3.54, ptr noundef nonnull %8) #26
  %42 = icmp slt i32 %38, %22
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32, ptr %8, align 4, !tbaa !19
  %45 = add nsw i32 %44, %40
  %46 = sext i32 %39 to i64
  %47 = getelementptr inbounds i32, ptr %27, i64 %46
  store i32 %44, ptr %47, align 4, !tbaa !19
  %48 = add nsw i32 %39, 1
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i32 [ %45, %43 ], [ %40, %37 ]
  %51 = phi i32 [ %48, %43 ], [ %39, %37 ]
  %52 = add nuw nsw i32 %38, 1
  %53 = load i32, ptr %6, align 4, !tbaa !19
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %37, label %55, !llvm.loop !157

55:                                               ; preds = %49, %19
  %56 = phi i32 [ %22, %19 ], [ %53, %49 ]
  %57 = phi i32 [ 0, %19 ], [ %50, %49 ]
  %58 = sext i32 %57 to i64
  %59 = icmp slt i32 %57, 0
  %60 = shl nsw i64 %58, 3
  %61 = select i1 %59, i64 -1, i64 %60
  %62 = call noalias noundef nonnull ptr @_Znam(i64 noundef %61) #28
  %63 = shl nsw i64 %58, 2
  %64 = select i1 %59, i64 -1, i64 %63
  %65 = call noalias noundef nonnull ptr @_Znam(i64 noundef %64) #28
  store ptr %62, ptr %30, align 8, !tbaa !38
  store ptr %65, ptr %31, align 8, !tbaa !38
  %66 = icmp sgt i32 %22, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = zext i32 %22 to i64
  br label %72

69:                                               ; preds = %72, %55
  %70 = icmp sgt i32 %56, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #27
  br label %151

72:                                               ; preds = %72, %67
  %73 = phi ptr [ %65, %67 ], [ %82, %72 ]
  %74 = phi ptr [ %62, %67 ], [ %80, %72 ]
  %75 = phi i64 [ 1, %67 ], [ %84, %72 ]
  %76 = add nsw i64 %75, -1
  %77 = getelementptr inbounds i32, ptr %27, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !19
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, ptr %74, i64 %79
  %81 = getelementptr inbounds ptr, ptr %30, i64 %75
  store ptr %80, ptr %81, align 8, !tbaa !38
  %82 = getelementptr inbounds i32, ptr %73, i64 %79
  %83 = getelementptr inbounds ptr, ptr %31, i64 %75
  store ptr %82, ptr %83, align 8, !tbaa !38
  %84 = add nuw nsw i64 %75, 1
  %85 = icmp eq i64 %84, %68
  br i1 %85, label %69, label %72, !llvm.loop !158

86:                                               ; preds = %120, %69
  %87 = phi i32 [ %122, %120 ], [ 0, %69 ]
  %88 = phi i32 [ %121, %120 ], [ 0, %69 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #27
  %89 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %15, ptr noundef nonnull @.str.3.54, ptr noundef nonnull %10) #26
  %90 = icmp slt i32 %87, %22
  %91 = load i32, ptr %10, align 4, !tbaa !19
  %92 = icmp sgt i32 %91, 0
  br i1 %90, label %94, label %93

93:                                               ; preds = %86
  br i1 %92, label %114, label %120

94:                                               ; preds = %86
  br i1 %92, label %95, label %112

95:                                               ; preds = %94
  %96 = sext i32 %88 to i64
  %97 = getelementptr inbounds ptr, ptr %30, i64 %96
  %98 = getelementptr inbounds ptr, ptr %31, i64 %96
  br label %99

99:                                               ; preds = %99, %95
  %100 = phi i64 [ 0, %95 ], [ %108, %99 ]
  %101 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %15, ptr noundef nonnull @.str.8.56, ptr noundef nonnull %9, ptr noundef nonnull %8) #26
  %102 = load double, ptr %9, align 8, !tbaa !7
  %103 = load ptr, ptr %97, align 8, !tbaa !38
  %104 = getelementptr inbounds double, ptr %103, i64 %100
  store double %102, ptr %104, align 8, !tbaa !7
  %105 = load i32, ptr %8, align 4, !tbaa !19
  %106 = load ptr, ptr %98, align 8, !tbaa !38
  %107 = getelementptr inbounds i32, ptr %106, i64 %100
  store i32 %105, ptr %107, align 4, !tbaa !19
  %108 = add nuw nsw i64 %100, 1
  %109 = load i32, ptr %10, align 4, !tbaa !19
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %108, %110
  br i1 %111, label %99, label %112, !llvm.loop !159

112:                                              ; preds = %99, %94
  %113 = add nsw i32 %88, 1
  br label %120

114:                                              ; preds = %114, %93
  %115 = phi i32 [ %117, %114 ], [ 0, %93 ]
  %116 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %15, ptr noundef nonnull @.str.8.56, ptr noundef nonnull %9, ptr noundef nonnull %8) #26
  %117 = add nuw nsw i32 %115, 1
  %118 = load i32, ptr %10, align 4, !tbaa !19
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %114, label %120, !llvm.loop !160

120:                                              ; preds = %114, %112, %93
  %121 = phi i32 [ %113, %112 ], [ %88, %93 ], [ %88, %114 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #27
  %122 = add nuw nsw i32 %87, 1
  %123 = load i32, ptr %6, align 4, !tbaa !19
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %86, label %125, !llvm.loop !161

125:                                              ; preds = %120
  %.lcssa = phi i32 [ %123, %120 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #27
  %126 = icmp sgt i32 %.lcssa, 0
  br i1 %126, label %127, label %151

127:                                              ; preds = %146, %125
  %128 = phi i32 [ %148, %146 ], [ 0, %125 ]
  %129 = phi i32 [ %147, %146 ], [ 0, %125 ]
  %130 = icmp slt i32 %128, %22
  br i1 %130, label %131, label %144

131:                                              ; preds = %127
  %132 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %15, ptr noundef nonnull @.str.10.57, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13) #26
  %133 = load double, ptr %11, align 8, !tbaa !7
  %134 = load ptr, ptr %2, align 8, !tbaa !38
  %135 = sext i32 %129 to i64
  %136 = getelementptr inbounds double, ptr %134, i64 %135
  store double %133, ptr %136, align 8, !tbaa !7
  %137 = load double, ptr %12, align 8, !tbaa !7
  %138 = load ptr, ptr %3, align 8, !tbaa !38
  %139 = getelementptr inbounds double, ptr %138, i64 %135
  store double %137, ptr %139, align 8, !tbaa !7
  %140 = load double, ptr %13, align 8, !tbaa !7
  %141 = load ptr, ptr %4, align 8, !tbaa !38
  %142 = getelementptr inbounds double, ptr %141, i64 %135
  store double %140, ptr %142, align 8, !tbaa !7
  %143 = add nsw i32 %129, 1
  br label %146

144:                                              ; preds = %127
  %145 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %15, ptr noundef nonnull @.str.10.57, ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %9) #26
  br label %146

146:                                              ; preds = %144, %131
  %147 = phi i32 [ %143, %131 ], [ %129, %144 ]
  %148 = add nuw nsw i32 %128, 1
  %149 = load i32, ptr %6, align 4, !tbaa !19
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %127, label %151, !llvm.loop !162

151:                                              ; preds = %146, %125, %71
  %152 = call i32 @fclose(ptr noundef nonnull %15) #26
  %153 = add nsw i32 %22, -1
  %154 = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #28
  store ptr %154, ptr %1, align 8, !tbaa !38
  store ptr null, ptr %154, align 8, !tbaa !137
  %155 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %154, i64 0, i32 1
  store i32 0, ptr %155, align 8, !tbaa !147
  %156 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %154, i64 0, i32 2
  store i32 %153, ptr %156, align 4, !tbaa !148
  %157 = load i32, ptr %6, align 4, !tbaa !19
  %158 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %154, i64 0, i32 3
  store i32 %157, ptr %158, align 8, !tbaa !149
  %159 = load i64, ptr %7, align 8, !tbaa !163
  %160 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %154, i64 0, i32 4
  store i64 %159, ptr %160, align 8, !tbaa !150
  %161 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %154, i64 0, i32 5
  store i32 %22, ptr %161, align 8, !tbaa !11
  %162 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %154, i64 0, i32 6
  store i32 %22, ptr %162, align 4, !tbaa !16
  %163 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %154, i64 0, i32 7
  store i32 %57, ptr %163, align 8, !tbaa !151
  %164 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %154, i64 0, i32 8
  store ptr %27, ptr %164, align 8, !tbaa !37
  %165 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %154, i64 0, i32 9
  store ptr %30, ptr %165, align 8, !tbaa !35
  %166 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %154, i64 0, i32 10
  store ptr %31, ptr %166, align 8, !tbaa !36
  %167 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT, ptr %154, i64 0, i32 11
  store ptr %32, ptr %167, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal noundef i32 @_Z6waxpbyidPKddS0_Pd(i32 noundef %0, double noundef %1, ptr nocapture noundef readonly %2, double noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5) #21 {
  %7 = fcmp oeq double %1, 1.000000e+00
  br i1 %7, label %8, label %23

8:                                                ; preds = %6
  %9 = icmp sgt i32 %0, 0
  br i1 %9, label %10, label %55

10:                                               ; preds = %8
  %11 = zext i32 %0 to i64
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i64 [ 0, %10 ], [ %21, %12 ]
  %14 = getelementptr inbounds double, ptr %2, i64 %13
  %15 = load double, ptr %14, align 8, !tbaa !7
  %16 = getelementptr inbounds double, ptr %4, i64 %13
  %17 = load double, ptr %16, align 8, !tbaa !7
  %18 = fmul double %17, %3
  %19 = fadd double %15, %18
  %20 = getelementptr inbounds double, ptr %5, i64 %13
  store double %19, ptr %20, align 8, !tbaa !7
  %21 = add nuw nsw i64 %13, 1
  %22 = icmp eq i64 %21, %11
  br i1 %22, label %55, label %12, !llvm.loop !164

23:                                               ; preds = %6
  %24 = fcmp oeq double %3, 1.000000e+00
  %25 = icmp sgt i32 %0, 0
  br i1 %24, label %29, label %26

26:                                               ; preds = %23
  br i1 %25, label %27, label %55

27:                                               ; preds = %26
  %28 = zext i32 %0 to i64
  br label %43

29:                                               ; preds = %23
  br i1 %25, label %30, label %55

30:                                               ; preds = %29
  %31 = zext i32 %0 to i64
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %41, %32 ]
  %34 = getelementptr inbounds double, ptr %2, i64 %33
  %35 = load double, ptr %34, align 8, !tbaa !7
  %36 = fmul double %35, %1
  %37 = getelementptr inbounds double, ptr %4, i64 %33
  %38 = load double, ptr %37, align 8, !tbaa !7
  %39 = fadd double %36, %38
  %40 = getelementptr inbounds double, ptr %5, i64 %33
  store double %39, ptr %40, align 8, !tbaa !7
  %41 = add nuw nsw i64 %33, 1
  %42 = icmp eq i64 %41, %31
  br i1 %42, label %55, label %32, !llvm.loop !165

43:                                               ; preds = %43, %27
  %44 = phi i64 [ 0, %27 ], [ %53, %43 ]
  %45 = getelementptr inbounds double, ptr %2, i64 %44
  %46 = load double, ptr %45, align 8, !tbaa !7
  %47 = fmul double %46, %1
  %48 = getelementptr inbounds double, ptr %4, i64 %44
  %49 = load double, ptr %48, align 8, !tbaa !7
  %50 = fmul double %49, %3
  %51 = fadd double %47, %50
  %52 = getelementptr inbounds double, ptr %5, i64 %44
  store double %51, ptr %52, align 8, !tbaa !7
  %53 = add nuw nsw i64 %44, 1
  %54 = icmp eq i64 %53, %28
  br i1 %54, label %55, label %43, !llvm.loop !166

55:                                               ; preds = %43, %32, %29, %26, %12, %8
  ret i32 0
}

attributes #0 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { mustprogress nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { optsize }
attributes #27 = { nounwind }
attributes #28 = { builtin optsize allocsize(0) }
attributes #29 = { nounwind optsize }
attributes #30 = { builtin nounwind optsize }
attributes #31 = { noreturn optsize }
attributes #32 = { noreturn nounwind optsize }
attributes #33 = { nounwind optsize willreturn memory(read) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!11 = !{!12, !14, i64 32}
!12 = !{!"_ZTS24HPC_Sparse_Matrix_STRUCT", !13, i64 0, !14, i64 8, !14, i64 12, !14, i64 16, !15, i64 24, !14, i64 32, !14, i64 36, !14, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"int", !9, i64 0}
!15 = !{!"long long", !9, i64 0}
!16 = !{!12, !14, i64 36}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !10, i64 0}
!19 = !{!14, !14, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !13, i64 240}
!23 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !24, i64 0, !13, i64 216, !9, i64 224, !30, i64 225, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256}
!24 = !{!"_ZTSSt8ios_base", !25, i64 8, !25, i64 16, !26, i64 24, !27, i64 28, !27, i64 32, !13, i64 40, !28, i64 48, !9, i64 64, !14, i64 192, !13, i64 200, !29, i64 208}
!25 = !{!"long", !9, i64 0}
!26 = !{!"_ZTSSt13_Ios_Fmtflags", !9, i64 0}
!27 = !{!"_ZTSSt12_Ios_Iostate", !9, i64 0}
!28 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !25, i64 8}
!29 = !{!"_ZTSSt6locale", !13, i64 0}
!30 = !{!"bool", !9, i64 0}
!31 = !{!32, !9, i64 56}
!32 = !{!"_ZTSSt5ctypeIcE", !33, i64 0, !13, i64 16, !30, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !9, i64 56, !9, i64 57, !9, i64 313, !9, i64 569}
!33 = !{!"_ZTSNSt6locale5facetE", !14, i64 8}
!34 = !{!9, !9, i64 0}
!35 = !{!12, !13, i64 56}
!36 = !{!12, !13, i64 64}
!37 = !{!12, !13, i64 48}
!38 = !{!13, !13, i64 0}
!39 = distinct !{!39, !21}
!40 = distinct !{!40, !21}
!41 = !{!42, !13, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!43 = !{!44, !25, i64 8}
!44 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !42, i64 0, !25, i64 8, !9, i64 16}
!45 = !{!44, !13, i64 0}
!46 = !{!47, !13, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIP12YAML_ElementSaIS1_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: %agg.result"}
!50 = distinct !{!50, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: %agg.result"}
!53 = distinct !{!53, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: %agg.result"}
!56 = distinct !{!56, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: %agg.result"}
!59 = distinct !{!59, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: %agg.result"}
!62 = distinct !{!62, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: %agg.result"}
!65 = distinct !{!65, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!66 = !{!47, !13, i64 8}
!67 = !{!68, !14, i64 20}
!68 = !{!"_ZTS2tm", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !25, i64 40, !13, i64 48}
!69 = !{!68, !14, i64 16}
!70 = !{!68, !14, i64 12}
!71 = !{!68, !14, i64 8}
!72 = !{!68, !14, i64 4}
!73 = !{!68, !14, i64 0}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_: %agg.result"}
!76 = distinct !{!76, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_"}
!77 = distinct !{!77, !21}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: %agg.result"}
!80 = distinct !{!80, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: %agg.result"}
!83 = distinct !{!83, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: %agg.result"}
!86 = distinct !{!86, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_: %agg.result"}
!89 = distinct !{!89, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: %agg.result"}
!92 = distinct !{!92, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: %agg.result"}
!95 = distinct !{!95, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: %agg.result"}
!98 = distinct !{!98, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!99 = !{!25, !25, i64 0}
!100 = !{!"branch_weights", i32 1, i32 2000}
!101 = distinct !{!101, !21}
!102 = !{!47, !13, i64 16}
!103 = !{!23, !13, i64 216}
!104 = !{!23, !9, i64 224}
!105 = !{!23, !30, i64 225}
!106 = !{!107, !109, i64 64}
!107 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !108, i64 0, !109, i64 64, !44, i64 72}
!108 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !29, i64 56}
!109 = !{!"_ZTSSt13_Ios_Openmode", !9, i64 0}
!110 = !{!111, !25, i64 8}
!111 = !{!"_ZTSSi", !25, i64 8}
!112 = !{!108, !13, i64 40}
!113 = !{!108, !13, i64 32}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN12YAML_Element6getKeyB5cxx11Ev: %agg.result"}
!116 = distinct !{!116, !"_ZN12YAML_Element6getKeyB5cxx11Ev"}
!117 = distinct !{!117, !21}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: %agg.result"}
!120 = distinct !{!120, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: %agg.result"}
!123 = distinct !{!123, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: %agg.result"}
!126 = distinct !{!126, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: %agg.result"}
!129 = distinct !{!129, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!130 = distinct !{!130, !21}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_: %agg.result"}
!133 = distinct !{!133, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_"}
!134 = distinct !{!134, !21}
!135 = distinct !{!135, !21}
!136 = distinct !{!136, !21}
!137 = !{!12, !13, i64 0}
!138 = !{!12, !13, i64 72}
!139 = !{!12, !13, i64 80}
!140 = !{!12, !13, i64 88}
!141 = distinct !{!141, !21}
!142 = distinct !{!142, !21}
!143 = distinct !{!143, !21}
!144 = distinct !{!144, !21}
!145 = distinct !{!145, !21}
!146 = distinct !{!146, !21}
!147 = !{!12, !14, i64 8}
!148 = !{!12, !14, i64 12}
!149 = !{!12, !14, i64 16}
!150 = !{!12, !15, i64 24}
!151 = !{!12, !14, i64 40}
!152 = !{!24, !27, i64 32}
!153 = !{!154, !25, i64 0}
!154 = !{!"_ZTS6rusage", !155, i64 0, !155, i64 16, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136}
!155 = !{!"_ZTS7timeval", !25, i64 0, !25, i64 8}
!156 = !{!154, !25, i64 8}
!157 = distinct !{!157, !21}
!158 = distinct !{!158, !21}
!159 = distinct !{!159, !21}
!160 = distinct !{!160, !21}
!161 = distinct !{!161, !21}
!162 = distinct !{!162, !21}
!163 = !{!15, !15, i64 0}
!164 = distinct !{!164, !21}
!165 = distinct !{!165, !21}
!166 = distinct !{!166, !21}
