; ModuleID = 'frame_layout.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::allocator" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl" }
%"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %union.trace_element }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%union.trace_element = type { ptr }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>
%"class.std::__cxx11::basic_string" = type { %union.trace_element, i64, %union.anon }
%union.anon = type { i64, [8 x i8] }

$_ZNSt6vectorIPKcSaIS1_EEC2ESt16initializer_listIS1_ERKS2_ = comdat any

$_ZNSt6vectorIPKcSaIS1_EED2Ev = comdat any

$_ZNSt6vectorIPKcSaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag = comdat any

$_ZNSt15__new_allocatorIPKcE8allocateEmPKv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_Z19check_frame_variantILb1ELb0ELb0ELb0ELb0EEbiRVi = comdat any

$_Z19check_frame_variantILb0ELb0ELb0ELb0ELb0EEbiRVi = comdat any

$_Z19check_frame_variantILb1ELb1ELb0ELb0ELb0EEbiRVi = comdat any

$_Z19check_frame_variantILb0ELb1ELb0ELb0ELb0EEbiRVi = comdat any

$_Z19check_frame_variantILb1ELb0ELb1ELb0ELb0EEbiRVi = comdat any

$_Z19check_frame_variantILb0ELb0ELb1ELb0ELb0EEbiRVi = comdat any

$_Z19check_frame_variantILb1ELb1ELb1ELb0ELb0EEbiRVi = comdat any

$_Z19check_frame_variantILb0ELb1ELb1ELb0ELb0EEbiRVi = comdat any

$_Z19check_frame_variantILb1ELb0ELb0ELb1ELb0EEbiRVi = comdat any

$_Z19check_frame_variantILb0ELb0ELb0ELb1ELb0EEbiRVi = comdat any

$_Z19check_frame_variantILb1ELb1ELb0ELb1ELb0EEbiRVi = comdat any

$_Z19check_frame_variantILb0ELb1ELb0ELb1ELb0EEbiRVi = comdat any

$_Z19check_frame_variantILb1ELb0ELb1ELb1ELb0EEbiRVi = comdat any

$_Z19check_frame_variantILb0ELb0ELb1ELb1ELb0EEbiRVi = comdat any

$_Z19check_frame_variantILb1ELb1ELb1ELb1ELb0EEbiRVi = comdat any

$_Z19check_frame_variantILb0ELb1ELb1ELb1ELb0EEbiRVi = comdat any

$_Z19check_frame_variantILb1ELb0ELb0ELb0ELb1EEbiRVi = comdat any

$_Z19check_frame_variantILb0ELb0ELb0ELb0ELb1EEbiRVi = comdat any

$_Z19check_frame_variantILb1ELb1ELb0ELb0ELb1EEbiRVi = comdat any

$_Z19check_frame_variantILb0ELb1ELb0ELb0ELb1EEbiRVi = comdat any

$_Z19check_frame_variantILb1ELb0ELb1ELb0ELb1EEbiRVi = comdat any

$_Z19check_frame_variantILb0ELb0ELb1ELb0ELb1EEbiRVi = comdat any

$_Z19check_frame_variantILb1ELb1ELb1ELb0ELb1EEbiRVi = comdat any

$_Z19check_frame_variantILb0ELb1ELb1ELb0ELb1EEbiRVi = comdat any

$_Z19check_frame_variantILb1ELb0ELb0ELb1ELb1EEbiRVi = comdat any

$_Z19check_frame_variantILb0ELb0ELb0ELb1ELb1EEbiRVi = comdat any

$_Z19check_frame_variantILb1ELb1ELb0ELb1ELb1EEbiRVi = comdat any

$_Z19check_frame_variantILb0ELb1ELb0ELb1ELb1EEbiRVi = comdat any

$_Z19check_frame_variantILb1ELb0ELb1ELb1ELb1EEbiRVi = comdat any

$_Z19check_frame_variantILb0ELb0ELb1ELb1ELb1EEbiRVi = comdat any

$_Z19check_frame_variantILb1ELb1ELb1ELb1ELb1EEbiRVi = comdat any

$_Z19check_frame_variantILb0ELb1ELb1ELb1ELb1EEbiRVi = comdat any

$_Z10test_frameILj2ELb1ELj2048ELb1ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj4096ELb1ELj2048ELb1ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj2ELb0ELj2048ELb1ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj4096ELb0ELj2048ELb1ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj2ELb1ELj2048ELb0ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj4096ELb1ELj2048ELb0ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj2ELb0ELj2048ELb0ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj4096ELb0ELj2048ELb0ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj2ELb1ELj2048ELb1ELb1EJEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj4096ELb1ELj2048ELb1ELb1EJEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj2ELb0ELj2048ELb1ELb1EJEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj4096ELb0ELj2048ELb1ELb1EJEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj2ELb1ELj2048ELb0ELb1EJEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj4096ELb1ELj2048ELb0ELb1EJEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj2ELb0ELj2048ELb0ELb1EJEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj4096ELb0ELj2048ELb0ELb1EJEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj2ELb1ELj2048ELb1ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj4096ELb1ELj2048ELb1ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj2ELb0ELj2048ELb1ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj4096ELb0ELj2048ELb1ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj2ELb1ELj2048ELb0ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj4096ELb1ELj2048ELb0ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj2ELb0ELj2048ELb0ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj4096ELb0ELj2048ELb0ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj4096ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj4096ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj2ELb1ELj2048ELb0ELb0EJEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj4096ELb1ELj2048ELb0ELb0EJEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj2ELb0ELj2048ELb0ELb0EJEEvDpT4_jPKcP13trace_elementd = comdat any

$_Z10test_frameILj4096ELb0ELj2048ELb0ELb0EJEEvDpT4_jPKcP13trace_elementd = comdat any

@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_frame_layout.cpp, ptr null }]
@_ZStL8__ioinit = internal global %"class.std::allocator" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [12 x i8] c"arg_passing\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"int_local\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"double_local\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"vla_start\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"vla_end\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"callee_save_int\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"callee_save_double\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"thrown_value\00", align 1
@_ZL21testDescriptionHeader = internal global %"class.std::vector" zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"AVCAE\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"LLARX\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"IALGC\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"G|LSE\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"N|E P\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"E|EOT\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"D| NI\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c" |S O\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"L|ASN\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"O|VT|\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"C|EA|\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"A||C|\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"L||K|\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"S||||\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"|||||\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"VVVVV\00", align 1
@constinit = private unnamed_addr constant [16 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], align 8
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.28 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c", alignment: \00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c" OK\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c" ALIGNMENT NOT AS EXPECTED: \00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c" CONTENT NOT AS EXPECTED: \00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c" instead of \00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@_ZTIi = external constant ptr

; Function Attrs: mustprogress noreturn optsize uwtable
define internal void @_Z27function_throwing_exceptionv() #0 {
  %1 = tail call ptr @__cxa_allocate_exception(i64 4) #21
  store i32 42, ptr %1, align 16, !tbaa !7
  tail call void @__cxa_throw(ptr nonnull %1, ptr nonnull @_ZTIi, ptr null) #22
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize uwtable
define internal void @_GLOBAL__sub_I_frame_layout.cpp() #1 section ".text.startup" personality ptr @__gxx_personality_v0 {
  %1 = alloca [16 x ptr], align 8
  %2 = alloca %"class.std::allocator", align 1
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #23
  %3 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #21
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %1) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) @constinit, i64 128, i1 false), !tbaa.struct !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #21
  call void @_ZNSt6vectorIPKcSaIS1_EEC2ESt16initializer_listIS1_ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) @_ZL21testDescriptionHeader, ptr nonnull %1, i64 16, ptr noundef nonnull align 1 dereferenceable(1) %2) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #21
  %4 = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPKcSaIS1_EED2Ev, ptr nonnull @_ZL21testDescriptionHeader, ptr nonnull @__dso_handle) #21
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize uwtable
define internal void @_ZNSt6vectorIPKcSaIS1_EEC2ESt16initializer_listIS1_ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %5 = getelementptr inbounds ptr, ptr %1, i64 %2
  invoke void @_ZNSt6vectorIPKcSaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %5) #23
          to label %6 unwind label %7

6:                                                ; preds = %4
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = load ptr, ptr %0, align 8, !tbaa !13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef nonnull %9) #24
  br label %12

12:                                               ; preds = %11, %7
  resume { ptr, i32 } %8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind optsize uwtable
define internal void @_ZNSt6vectorIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize uwtable
define internal void @_ZNSt6vectorIPKcSaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = call i64 @_wyvern_slice__ZNSt6vectorIPKcSaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag__846410069(ptr %1, ptr %2)
  %5 = ashr exact i64 %4, 3
  %6 = icmp ugt i64 %4, 9223372036854775800
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
  unreachable

8:                                                ; preds = %3
  %9 = icmp eq ptr %2, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  store ptr null, ptr %0, align 8, !tbaa !13
  %11 = getelementptr inbounds ptr, ptr null, i64 %5
  %12 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !16
  br label %17

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZNSt15__new_allocatorIPKcE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %5, ptr noundef null) #23
  store ptr %14, ptr %0, align 8, !tbaa !13
  %15 = getelementptr inbounds ptr, ptr %14, i64 %5
  %16 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %14, ptr align 8 %1, i64 %4, i1 false)
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi ptr [ %11, %10 ], [ %15, %13 ]
  %19 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !17
  ret void
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZNSt15__new_allocatorIPKcE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) #11 comdat align 2 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !18

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #26
  ret ptr %11
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, double noundef %3, i32 noundef %4, i1 noundef zeroext %5, i32 %6, i32 noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i32 noundef %10) #13 {
  %12 = getelementptr inbounds %union.trace_element, ptr %2, i64 1
  %13 = load double, ptr %2, align 8, !tbaa !12
  %14 = tail call fastcc noundef zeroext i1 @_ZL35check_and_print_value_and_alignmentIdEbPKcS1_jPKvT_S4_(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef null, double noundef %13, double noundef %3) #23
  %15 = getelementptr inbounds %union.trace_element, ptr %2, i64 2
  %16 = load i32, ptr %12, align 8, !tbaa !12
  %17 = getelementptr inbounds %union.trace_element, ptr %2, i64 3
  %18 = load ptr, ptr %15, align 8, !tbaa !12
  %19 = getelementptr inbounds %union.trace_element, ptr %2, i64 4
  %20 = load double, ptr %17, align 8, !tbaa !12
  %21 = getelementptr inbounds %union.trace_element, ptr %2, i64 5
  %22 = load ptr, ptr %19, align 8, !tbaa !12
  %23 = getelementptr inbounds i8, ptr %1, i64 1
  %24 = load i8, ptr %1, align 1, !tbaa !12
  %25 = sext i8 %24 to i32
  %26 = tail call fastcc noundef zeroext i1 @_ZL35check_and_print_value_and_alignmentIiEbPKcS1_jPKvT_S4_(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %4, ptr noundef %18, i32 noundef %16, i32 noundef %25) #23
  %27 = or i1 %14, %26
  %28 = getelementptr inbounds i8, ptr %1, i64 2
  %29 = load i8, ptr %23, align 1, !tbaa !12
  %30 = sitofp i8 %29 to double
  %31 = tail call fastcc noundef zeroext i1 @_ZL35check_and_print_value_and_alignmentIdEbPKcS1_jPKvT_S4_(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %4, ptr noundef %22, double noundef %20, double noundef %30) #23
  %32 = or i1 %27, %31
  br i1 %5, label %33, label %52

33:                                               ; preds = %11
  %34 = getelementptr inbounds i8, ptr %1, i64 3
  %35 = load i8, ptr %28, align 1, !tbaa !12
  %36 = getelementptr inbounds i8, ptr %1, i64 4
  %37 = load i8, ptr %34, align 1, !tbaa !12
  %38 = getelementptr inbounds %union.trace_element, ptr %2, i64 6
  %39 = load i32, ptr %21, align 8, !tbaa !12
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %union.trace_element, ptr %2, i64 7
  %42 = load ptr, ptr %38, align 8, !tbaa !12
  %43 = getelementptr inbounds %union.trace_element, ptr %2, i64 8
  %44 = load i32, ptr %41, align 8, !tbaa !12
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds %union.trace_element, ptr %2, i64 9
  %47 = load ptr, ptr %43, align 8, !tbaa !12
  %48 = tail call fastcc noundef zeroext i1 @_ZL35check_and_print_value_and_alignmentIcEbPKcS1_jPKvT_S4_(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %7, ptr noundef %42, i8 noundef signext %40, i8 noundef signext %35) #23
  %49 = tail call fastcc noundef zeroext i1 @_ZL35check_and_print_value_and_alignmentIcEbPKcS1_jPKvT_S4_(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef %47, i8 noundef signext %45, i8 noundef signext %37) #23
  %50 = or i1 %48, %49
  %51 = or i1 %32, %50
  br label %52

52:                                               ; preds = %33, %11
  %53 = phi i1 [ %51, %33 ], [ %32, %11 ]
  %54 = phi ptr [ %46, %33 ], [ %21, %11 ]
  %55 = phi ptr [ %36, %33 ], [ %28, %11 ]
  br i1 %8, label %56, label %394

56:                                               ; preds = %52
  %57 = getelementptr inbounds i8, ptr %55, i64 1
  %58 = load i8, ptr %55, align 1, !tbaa !12
  %59 = sext i8 %58 to i32
  %60 = shl nsw i32 %59, 1
  %61 = shl nsw i32 %59, 2
  %62 = shl nsw i32 %59, 3
  %63 = shl nsw i32 %59, 4
  %64 = shl nsw i32 %59, 5
  %65 = load i8, ptr %57, align 1, !tbaa !12
  %66 = sitofp i8 %65 to double
  %67 = sext i8 %58 to i16
  %68 = mul nsw i16 %67, 39
  %69 = sext i8 %58 to i16
  %70 = mul nsw i16 %69, 38
  %71 = sdiv i16 %68, %70
  %72 = sext i8 %58 to i16
  %73 = mul nsw i16 %72, 37
  %74 = sdiv i16 %71, %73
  %75 = sext i8 %58 to i16
  %76 = mul nsw i16 %75, 36
  %77 = sdiv i16 %74, %76
  %78 = sext i8 %58 to i16
  %79 = mul nsw i16 %78, 35
  %80 = sdiv i16 %77, %79
  %81 = sext i8 %58 to i16
  %82 = mul nsw i16 %81, 34
  %83 = sdiv i16 %80, %82
  %84 = sext i8 %58 to i16
  %85 = mul nsw i16 %84, 33
  %86 = sdiv i16 %83, %85
  %87 = sext i16 %86 to i32
  %88 = sdiv i32 %87, %64
  %89 = trunc i32 %88 to i16
  %90 = sext i8 %58 to i16
  %91 = mul nsw i16 %90, 31
  %92 = sdiv i16 %89, %91
  %93 = sext i8 %58 to i16
  %94 = mul nsw i16 %93, 30
  %95 = sdiv i16 %92, %94
  %96 = sext i8 %58 to i16
  %97 = mul nsw i16 %96, 29
  %98 = sdiv i16 %95, %97
  %99 = sext i8 %58 to i16
  %100 = mul nsw i16 %99, 28
  %101 = sdiv i16 %98, %100
  %102 = sext i8 %58 to i16
  %103 = mul nsw i16 %102, 27
  %104 = sdiv i16 %101, %103
  %105 = sext i8 %58 to i16
  %106 = mul nsw i16 %105, 26
  %107 = sdiv i16 %104, %106
  %108 = sext i8 %58 to i16
  %109 = mul nsw i16 %108, 25
  %110 = sdiv i16 %107, %109
  %111 = sext i8 %58 to i16
  %112 = mul nsw i16 %111, 24
  %113 = sdiv i16 %110, %112
  %114 = sext i8 %58 to i16
  %115 = mul nsw i16 %114, 23
  %116 = sdiv i16 %113, %115
  %117 = sext i8 %58 to i16
  %118 = mul nsw i16 %117, 22
  %119 = sdiv i16 %116, %118
  %120 = sext i8 %58 to i16
  %121 = mul nsw i16 %120, 21
  %122 = sdiv i16 %119, %121
  %123 = sext i8 %58 to i16
  %124 = mul nsw i16 %123, 20
  %125 = sdiv i16 %122, %124
  %126 = sext i8 %58 to i16
  %127 = mul nsw i16 %126, 19
  %128 = sdiv i16 %125, %127
  %129 = sext i8 %58 to i16
  %130 = mul nsw i16 %129, 18
  %131 = sdiv i16 %128, %130
  %132 = sext i8 %58 to i16
  %133 = mul nsw i16 %132, 17
  %134 = sdiv i16 %131, %133
  %135 = sext i16 %134 to i32
  %136 = sdiv i32 %135, %63
  %137 = trunc i32 %136 to i16
  %138 = sext i8 %58 to i16
  %139 = mul nsw i16 %138, 15
  %140 = sdiv i16 %137, %139
  %141 = sext i8 %58 to i16
  %142 = mul nsw i16 %141, 14
  %143 = sdiv i16 %140, %142
  %144 = sext i8 %58 to i16
  %145 = mul nsw i16 %144, 13
  %146 = sdiv i16 %143, %145
  %147 = sext i8 %58 to i16
  %148 = mul nsw i16 %147, 12
  %149 = sdiv i16 %146, %148
  %150 = sext i8 %58 to i16
  %151 = mul nsw i16 %150, 11
  %152 = sdiv i16 %149, %151
  %153 = sext i8 %58 to i16
  %154 = mul nsw i16 %153, 10
  %155 = sdiv i16 %152, %154
  %156 = sext i8 %58 to i16
  %157 = mul nsw i16 %156, 9
  %158 = sdiv i16 %155, %157
  %159 = sext i16 %158 to i32
  %160 = sdiv i32 %159, %62
  %161 = trunc i32 %160 to i16
  %162 = sext i8 %58 to i16
  %163 = mul nsw i16 %162, 7
  %164 = sdiv i16 %161, %163
  %165 = sext i8 %58 to i16
  %166 = mul nsw i16 %165, 6
  %167 = sdiv i16 %164, %166
  %168 = sext i8 %58 to i16
  %169 = mul nsw i16 %168, 5
  %170 = sdiv i16 %167, %169
  %171 = sext i16 %170 to i32
  %172 = sdiv i32 %171, %61
  %173 = trunc i32 %172 to i16
  %174 = sext i8 %58 to i16
  %175 = mul nsw i16 %174, 3
  %176 = sdiv i16 %173, %175
  %177 = sext i16 %176 to i32
  %178 = sdiv i32 %177, %60
  %179 = trunc i32 %178 to i16
  %180 = sext i8 %58 to i16
  %181 = sdiv i16 %179, %180
  %182 = trunc i16 %181 to i8
  %183 = sdiv i32 %59, %60
  %184 = trunc i32 %183 to i16
  %185 = sdiv i16 %184, %175
  %186 = sext i16 %185 to i32
  %187 = sdiv i32 %186, %61
  %188 = trunc i32 %187 to i16
  %189 = sdiv i16 %188, %169
  %190 = sdiv i16 %189, %166
  %191 = sdiv i16 %190, %163
  %192 = sext i16 %191 to i32
  %193 = sdiv i32 %192, %62
  %194 = trunc i32 %193 to i16
  %195 = sdiv i16 %194, %157
  %196 = sdiv i16 %195, %154
  %197 = sdiv i16 %196, %151
  %198 = sdiv i16 %197, %148
  %199 = sdiv i16 %198, %145
  %200 = sdiv i16 %199, %142
  %201 = sdiv i16 %200, %139
  %202 = sext i16 %201 to i32
  %203 = sdiv i32 %202, %63
  %204 = trunc i32 %203 to i16
  %205 = sdiv i16 %204, %133
  %206 = sdiv i16 %205, %130
  %207 = sdiv i16 %206, %127
  %208 = sdiv i16 %207, %124
  %209 = sdiv i16 %208, %121
  %210 = sdiv i16 %209, %118
  %211 = sdiv i16 %210, %115
  %212 = sdiv i16 %211, %112
  %213 = sdiv i16 %212, %109
  %214 = sdiv i16 %213, %106
  %215 = sdiv i16 %214, %103
  %216 = sdiv i16 %215, %100
  %217 = sdiv i16 %216, %97
  %218 = sdiv i16 %217, %94
  %219 = sdiv i16 %218, %91
  %220 = sext i16 %219 to i32
  %221 = sdiv i32 %220, %64
  %222 = trunc i32 %221 to i16
  %223 = sdiv i16 %222, %85
  %224 = sdiv i16 %223, %82
  %225 = sdiv i16 %224, %79
  %226 = sdiv i16 %225, %76
  %227 = sdiv i16 %226, %73
  %228 = sdiv i16 %227, %70
  %229 = sdiv i16 %228, %68
  %230 = sdiv i16 %229, %180
  %231 = trunc i16 %230 to i8
  %232 = mul i8 %231, %182
  %233 = fadd double %66, %66
  %234 = fadd double %233, %66
  %235 = fadd double %234, %66
  %236 = fadd double %235, %66
  %237 = fadd double %236, %66
  %238 = fadd double %237, %66
  %239 = fdiv double %66, %233
  %240 = fdiv double %239, %234
  %241 = fdiv double %240, %235
  %242 = fdiv double %241, %236
  %243 = fdiv double %242, %237
  %244 = fadd double %238, %66
  %245 = fadd double %244, %66
  %246 = fadd double %245, %66
  %247 = fadd double %246, %66
  %248 = fadd double %247, %66
  %249 = fadd double %248, %66
  %250 = fadd double %249, %66
  %251 = fadd double %250, %66
  %252 = fadd double %251, %66
  %253 = fadd double %252, %66
  %254 = fadd double %253, %66
  %255 = fadd double %254, %66
  %256 = fadd double %255, %66
  %257 = fadd double %256, %66
  %258 = fadd double %257, %66
  %259 = fadd double %258, %66
  %260 = fadd double %259, %66
  %261 = fadd double %260, %66
  %262 = fadd double %261, %66
  %263 = fadd double %262, %66
  %264 = fadd double %263, %66
  %265 = fadd double %264, %66
  %266 = fadd double %265, %66
  %267 = fadd double %266, %66
  %268 = fadd double %267, %66
  %269 = fadd double %268, %66
  %270 = fadd double %269, %66
  %271 = fadd double %270, %66
  %272 = fadd double %271, %66
  %273 = fadd double %272, %66
  %274 = fadd double %273, %66
  %275 = fadd double %274, %66
  %276 = fdiv double %275, %274
  %277 = fdiv double %276, %273
  %278 = fdiv double %277, %272
  %279 = fdiv double %278, %271
  %280 = insertelement <2 x double> poison, double %243, i64 0
  %281 = insertelement <2 x double> %280, double %279, i64 1
  %282 = insertelement <2 x double> poison, double %238, i64 0
  %283 = insertelement <2 x double> %282, double %270, i64 1
  %284 = fdiv <2 x double> %281, %283
  %285 = insertelement <2 x double> poison, double %244, i64 0
  %286 = insertelement <2 x double> %285, double %269, i64 1
  %287 = fdiv <2 x double> %284, %286
  %288 = insertelement <2 x double> poison, double %245, i64 0
  %289 = insertelement <2 x double> %288, double %268, i64 1
  %290 = fdiv <2 x double> %287, %289
  %291 = insertelement <2 x double> poison, double %246, i64 0
  %292 = insertelement <2 x double> %291, double %267, i64 1
  %293 = fdiv <2 x double> %290, %292
  %294 = insertelement <2 x double> poison, double %247, i64 0
  %295 = insertelement <2 x double> %294, double %266, i64 1
  %296 = fdiv <2 x double> %293, %295
  %297 = insertelement <2 x double> poison, double %248, i64 0
  %298 = insertelement <2 x double> %297, double %265, i64 1
  %299 = fdiv <2 x double> %296, %298
  %300 = insertelement <2 x double> poison, double %249, i64 0
  %301 = insertelement <2 x double> %300, double %264, i64 1
  %302 = fdiv <2 x double> %299, %301
  %303 = insertelement <2 x double> poison, double %250, i64 0
  %304 = insertelement <2 x double> %303, double %263, i64 1
  %305 = fdiv <2 x double> %302, %304
  %306 = insertelement <2 x double> poison, double %251, i64 0
  %307 = insertelement <2 x double> %306, double %262, i64 1
  %308 = fdiv <2 x double> %305, %307
  %309 = insertelement <2 x double> poison, double %252, i64 0
  %310 = insertelement <2 x double> %309, double %261, i64 1
  %311 = fdiv <2 x double> %308, %310
  %312 = insertelement <2 x double> poison, double %253, i64 0
  %313 = insertelement <2 x double> %312, double %260, i64 1
  %314 = fdiv <2 x double> %311, %313
  %315 = insertelement <2 x double> poison, double %254, i64 0
  %316 = insertelement <2 x double> %315, double %259, i64 1
  %317 = fdiv <2 x double> %314, %316
  %318 = insertelement <2 x double> poison, double %255, i64 0
  %319 = insertelement <2 x double> %318, double %258, i64 1
  %320 = fdiv <2 x double> %317, %319
  %321 = insertelement <2 x double> poison, double %256, i64 0
  %322 = insertelement <2 x double> %321, double %257, i64 1
  %323 = fdiv <2 x double> %320, %322
  %324 = shufflevector <2 x double> %322, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %325 = fdiv <2 x double> %323, %324
  %326 = shufflevector <2 x double> %319, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %327 = fdiv <2 x double> %325, %326
  %328 = shufflevector <2 x double> %316, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %329 = fdiv <2 x double> %327, %328
  %330 = insertelement <2 x double> poison, double %260, i64 0
  %331 = insertelement <2 x double> %330, double %253, i64 1
  %332 = fdiv <2 x double> %329, %331
  %333 = insertelement <2 x double> poison, double %261, i64 0
  %334 = insertelement <2 x double> %333, double %252, i64 1
  %335 = fdiv <2 x double> %332, %334
  %336 = insertelement <2 x double> poison, double %262, i64 0
  %337 = insertelement <2 x double> %336, double %251, i64 1
  %338 = fdiv <2 x double> %335, %337
  %339 = insertelement <2 x double> poison, double %263, i64 0
  %340 = insertelement <2 x double> %339, double %250, i64 1
  %341 = fdiv <2 x double> %338, %340
  %342 = insertelement <2 x double> poison, double %264, i64 0
  %343 = insertelement <2 x double> %342, double %249, i64 1
  %344 = fdiv <2 x double> %341, %343
  %345 = insertelement <2 x double> poison, double %265, i64 0
  %346 = insertelement <2 x double> %345, double %248, i64 1
  %347 = fdiv <2 x double> %344, %346
  %348 = insertelement <2 x double> poison, double %266, i64 0
  %349 = insertelement <2 x double> %348, double %247, i64 1
  %350 = fdiv <2 x double> %347, %349
  %351 = insertelement <2 x double> poison, double %267, i64 0
  %352 = insertelement <2 x double> %351, double %246, i64 1
  %353 = fdiv <2 x double> %350, %352
  %354 = insertelement <2 x double> poison, double %268, i64 0
  %355 = insertelement <2 x double> %354, double %245, i64 1
  %356 = fdiv <2 x double> %353, %355
  %357 = insertelement <2 x double> poison, double %269, i64 0
  %358 = insertelement <2 x double> %357, double %244, i64 1
  %359 = fdiv <2 x double> %356, %358
  %360 = insertelement <2 x double> poison, double %270, i64 0
  %361 = insertelement <2 x double> %360, double %238, i64 1
  %362 = fdiv <2 x double> %359, %361
  %363 = insertelement <2 x double> poison, double %271, i64 0
  %364 = insertelement <2 x double> %363, double %237, i64 1
  %365 = fdiv <2 x double> %362, %364
  %366 = insertelement <2 x double> poison, double %272, i64 0
  %367 = insertelement <2 x double> %366, double %236, i64 1
  %368 = fdiv <2 x double> %365, %367
  %369 = insertelement <2 x double> poison, double %273, i64 0
  %370 = insertelement <2 x double> %369, double %235, i64 1
  %371 = fdiv <2 x double> %368, %370
  %372 = insertelement <2 x double> poison, double %274, i64 0
  %373 = insertelement <2 x double> %372, double %234, i64 1
  %374 = fdiv <2 x double> %371, %373
  %375 = insertelement <2 x double> poison, double %275, i64 0
  %376 = insertelement <2 x double> %375, double %233, i64 1
  %377 = fdiv <2 x double> %374, %376
  %378 = insertelement <2 x double> poison, double %66, i64 0
  %379 = shufflevector <2 x double> %378, <2 x double> poison, <2 x i32> zeroinitializer
  %380 = fdiv <2 x double> %377, %379
  %381 = shufflevector <2 x double> %380, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %382 = fmul <2 x double> %380, %381
  %383 = extractelement <2 x double> %382, i64 0
  %384 = getelementptr inbounds %union.trace_element, ptr %54, i64 1
  %385 = load i32, ptr %54, align 8, !tbaa !12
  %386 = trunc i32 %385 to i8
  %387 = tail call fastcc noundef zeroext i1 @_ZL35check_and_print_value_and_alignmentIcEbPKcS1_jPKvT_S4_(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 1, ptr noundef null, i8 noundef signext %386, i8 noundef signext %232) #23
  %388 = load double, ptr %384, align 8, !tbaa !12
  %389 = fptosi double %388 to i8
  %390 = fptosi double %383 to i8
  %391 = tail call fastcc noundef zeroext i1 @_ZL35check_and_print_value_and_alignmentIcEbPKcS1_jPKvT_S4_(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef null, i8 noundef signext %389, i8 noundef signext %390) #23
  %392 = or i1 %387, %391
  %393 = or i1 %53, %392
  br label %394

394:                                              ; preds = %56, %52
  %395 = phi i1 [ %393, %56 ], [ %53, %52 ]
  %396 = select i1 %9, i32 42, i32 -1
  %397 = tail call fastcc noundef zeroext i1 @_ZL35check_and_print_value_and_alignmentIiEbPKcS1_jPKvT_S4_(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 1, ptr noundef null, i32 noundef %10, i32 noundef %396) #23
  %398 = or i1 %395, %397
  ret i1 %398
}

; Function Attrs: mustprogress optsize uwtable
define internal fastcc noundef zeroext i1 @_ZL35check_and_print_value_and_alignmentIdEbPKcS1_jPKvT_S4_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, double noundef %4, double noundef %5) unnamed_addr #11 {
  %7 = ptrtoint ptr %3 to i64
  %8 = zext i32 %2 to i64
  %9 = add nsw i64 %8, -1
  %10 = and i64 %9, %7
  %11 = icmp ne i64 %10, 0
  %12 = fcmp une double %4, %5
  %13 = icmp eq ptr %0, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %6
  %15 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %16 = getelementptr i8, ptr %15, i64 -24
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %17
  %19 = getelementptr inbounds %"class.std::ios_base", ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !21
  %21 = or i32 %20, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %18, i32 noundef %21) #23
  br label %25

22:                                               ; preds = %6
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #27
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %0, i64 noundef %23) #23
  br label %25

25:                                               ; preds = %22, %14
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.28, i64 noundef 2) #23
  %27 = icmp eq ptr %1, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %30 = getelementptr i8, ptr %29, i64 -24
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %31
  %33 = getelementptr inbounds %"class.std::ios_base", ptr %32, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !21
  %35 = or i32 %34, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %32, i32 noundef %35) #23
  br label %39

36:                                               ; preds = %25
  %37 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %38 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %1, i64 noundef %37) #23
  br label %39

39:                                               ; preds = %36, %28
  %40 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.29, i64 noundef 13) #23
  %41 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %8) #23
  %42 = or i1 %11, %12
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.30, i64 noundef 3) #23
  br label %55

45:                                               ; preds = %39
  br i1 %11, label %46, label %49

46:                                               ; preds = %45
  %47 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.31, i64 noundef 28) #23
  %48 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %3) #23
  br label %49

49:                                               ; preds = %46, %45
  br i1 %12, label %50, label %55

50:                                               ; preds = %49
  %51 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.32, i64 noundef 26) #23
  %52 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %4) #23
  %53 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull @.str.33, i64 noundef 12) #23
  %54 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %52, double noundef %5) #23
  br label %55

55:                                               ; preds = %50, %49, %43
  %56 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %57 = getelementptr i8, ptr %56, i64 -24
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %58
  %60 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %59, i8 noundef signext 10) #23
  %61 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %60) #23
  %62 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %61) #23
  ret i1 %42
}

; Function Attrs: mustprogress optsize uwtable
define internal fastcc noundef zeroext i1 @_ZL35check_and_print_value_and_alignmentIiEbPKcS1_jPKvT_S4_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #11 {
  %7 = ptrtoint ptr %3 to i64
  %8 = zext i32 %2 to i64
  %9 = add nsw i64 %8, -1
  %10 = and i64 %9, %7
  %11 = icmp ne i64 %10, 0
  %12 = icmp ne i32 %4, %5
  %13 = icmp eq ptr %0, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %6
  %15 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %16 = getelementptr i8, ptr %15, i64 -24
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %17
  %19 = getelementptr inbounds %"class.std::ios_base", ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !21
  %21 = or i32 %20, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %18, i32 noundef %21) #23
  br label %25

22:                                               ; preds = %6
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #27
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %0, i64 noundef %23) #23
  br label %25

25:                                               ; preds = %22, %14
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.28, i64 noundef 2) #23
  %27 = icmp eq ptr %1, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %30 = getelementptr i8, ptr %29, i64 -24
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %31
  %33 = getelementptr inbounds %"class.std::ios_base", ptr %32, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !21
  %35 = or i32 %34, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %32, i32 noundef %35) #23
  br label %39

36:                                               ; preds = %25
  %37 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %38 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %1, i64 noundef %37) #23
  br label %39

39:                                               ; preds = %36, %28
  %40 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.29, i64 noundef 13) #23
  %41 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %8) #23
  %42 = or i1 %11, %12
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.30, i64 noundef 3) #23
  br label %55

45:                                               ; preds = %39
  br i1 %11, label %46, label %49

46:                                               ; preds = %45
  %47 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.31, i64 noundef 28) #23
  %48 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %3) #23
  br label %49

49:                                               ; preds = %46, %45
  br i1 %12, label %50, label %55

50:                                               ; preds = %49
  %51 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.32, i64 noundef 26) #23
  %52 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %4) #23
  %53 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull @.str.33, i64 noundef 12) #23
  %54 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %52, i32 noundef %5) #23
  br label %55

55:                                               ; preds = %50, %49, %43
  %56 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %57 = getelementptr i8, ptr %56, i64 -24
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %58
  %60 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %59, i8 noundef signext 10) #23
  %61 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %60) #23
  %62 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %61) #23
  ret i1 %42
}

; Function Attrs: mustprogress optsize uwtable
define internal fastcc noundef zeroext i1 @_ZL35check_and_print_value_and_alignmentIcEbPKcS1_jPKvT_S4_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i8 noundef signext %4, i8 noundef signext %5) unnamed_addr #11 {
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = ptrtoint ptr %3 to i64
  %10 = zext i32 %2 to i64
  %11 = add nsw i64 %10, -1
  %12 = and i64 %11, %9
  %13 = icmp ne i64 %12, 0
  %14 = icmp ne i8 %4, %5
  %15 = icmp eq ptr %0, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %6
  %17 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %18 = getelementptr i8, ptr %17, i64 -24
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %19
  %21 = getelementptr inbounds %"class.std::ios_base", ptr %20, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !21
  %23 = or i32 %22, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %20, i32 noundef %23) #23
  br label %27

24:                                               ; preds = %6
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #27
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %0, i64 noundef %25) #23
  br label %27

27:                                               ; preds = %24, %16
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.28, i64 noundef 2) #23
  %29 = icmp eq ptr %1, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %32 = getelementptr i8, ptr %31, i64 -24
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %33
  %35 = getelementptr inbounds %"class.std::ios_base", ptr %34, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !21
  %37 = or i32 %36, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %34, i32 noundef %37) #23
  br label %41

38:                                               ; preds = %27
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %40 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %1, i64 noundef %39) #23
  br label %41

41:                                               ; preds = %38, %30
  %42 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.29, i64 noundef 13) #23
  %43 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %10) #23
  %44 = or i1 %13, %14
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.30, i64 noundef 3) #23
  br label %80

47:                                               ; preds = %41
  br i1 %13, label %48, label %51

48:                                               ; preds = %47
  %49 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.31, i64 noundef 28) #23
  %50 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %3) #23
  br label %51

51:                                               ; preds = %48, %47
  br i1 %14, label %52, label %80

52:                                               ; preds = %51
  %53 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.32, i64 noundef 26) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8)
  store i8 %4, ptr %8, align 1, !tbaa !12
  %54 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %55 = getelementptr i8, ptr %54, i64 -24
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %56
  %58 = getelementptr inbounds %"class.std::ios_base", ptr %57, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !28
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %52
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %8, i64 noundef 1) #23
  br label %65

63:                                               ; preds = %52
  %64 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %4) #23
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi ptr [ %62, %61 ], [ @_ZSt4cout, %63 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8)
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef nonnull @.str.33, i64 noundef 12) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  store i8 %5, ptr %7, align 1, !tbaa !12
  %68 = load ptr, ptr %66, align 8, !tbaa !19
  %69 = getelementptr i8, ptr %68, i64 -24
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds i8, ptr %66, i64 %70
  %72 = getelementptr inbounds %"class.std::ios_base", ptr %71, i64 0, i32 2
  %73 = load i64, ptr %72, align 8, !tbaa !28
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %65
  %76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef nonnull %7, i64 noundef 1) #23
  br label %79

77:                                               ; preds = %65
  %78 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %66, i8 noundef signext %5) #23
  br label %79

79:                                               ; preds = %77, %75
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  br label %80

80:                                               ; preds = %79, %51, %45
  %81 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %82 = getelementptr i8, ptr %81, i64 -24
  %83 = load i64, ptr %82, align 8
  %84 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %83
  %85 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %84, i8 noundef signext 10) #23
  %86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %85) #23
  %87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %86) #23
  ret i1 %44
}

; Function Attrs: optsize
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress optsize uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %0, i8 noundef signext %1) local_unnamed_addr #11 align 2 {
  %3 = getelementptr inbounds %"class.std::basic_ios", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::ctype", ptr %4, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !32
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = zext i8 %1 to i64
  %13 = getelementptr inbounds %"class.std::ctype", ptr %4, i64 0, i32 9, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !12
  br label %20

15:                                               ; preds = %7
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %4) #23
  %16 = load ptr, ptr %4, align 8, !tbaa !19
  %17 = getelementptr inbounds ptr, ptr %16, i64 6
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef signext i8 %18(ptr noundef nonnull align 8 dereferenceable(570) %4, i8 noundef signext %1) #23
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i8 [ %14, %11 ], [ %19, %15 ]
  ret i8 %21
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

; Function Attrs: optsize
declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: optsize uwtable
define internal void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #1 personality ptr @__gxx_personality_v0 {
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #21
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  store ptr %12, ptr %11, align 8, !tbaa !35
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.25) #23
  %13 = select i1 %1, ptr @.str.26, ptr @.str.27
  %14 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %13) #23
          to label %15 unwind label %128

15:                                               ; preds = %6
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  store ptr %16, ptr %10, align 8, !tbaa !35, !alias.scope !37
  %17 = load ptr, ptr %14, align 8, !tbaa !40
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !42
  %23 = add i64 %22, 1
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %16, ptr nonnull align 8 %17, i64 %23, i1 false)
  br label %28

26:                                               ; preds = %15
  store ptr %17, ptr %10, align 8, !tbaa !40, !alias.scope !37
  %27 = load i64, ptr %18, align 8, !tbaa !12
  store i64 %27, ptr %16, align 8, !tbaa !12, !alias.scope !37
  br label %28

28:                                               ; preds = %26, %25, %20
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !42
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  store i64 %30, ptr %31, align 8, !tbaa !42, !alias.scope !37
  store ptr %18, ptr %14, align 8, !tbaa !40
  store i64 0, ptr %29, align 8, !tbaa !42
  store i8 0, ptr %18, align 8, !tbaa !12
  %32 = select i1 %2, ptr @.str.26, ptr @.str.27
  %33 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %32) #23
          to label %34 unwind label %130

34:                                               ; preds = %28
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  store ptr %35, ptr %9, align 8, !tbaa !35, !alias.scope !43
  %36 = load ptr, ptr %33, align 8, !tbaa !40
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 0, i32 2
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !42
  %42 = add i64 %41, 1
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %35, ptr nonnull align 8 %36, i64 %42, i1 false)
  br label %47

45:                                               ; preds = %34
  store ptr %36, ptr %9, align 8, !tbaa !40, !alias.scope !43
  %46 = load i64, ptr %37, align 8, !tbaa !12
  store i64 %46, ptr %35, align 8, !tbaa !12, !alias.scope !43
  br label %47

47:                                               ; preds = %45, %44, %39
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !42
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !42, !alias.scope !43
  store ptr %37, ptr %33, align 8, !tbaa !40
  store i64 0, ptr %48, align 8, !tbaa !42
  store i8 0, ptr %37, align 8, !tbaa !12
  %51 = select i1 %3, ptr @.str.26, ptr @.str.27
  %52 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %51) #23
          to label %53 unwind label %132

53:                                               ; preds = %47
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  store ptr %54, ptr %8, align 8, !tbaa !35, !alias.scope !46
  %55 = load ptr, ptr %52, align 8, !tbaa !40
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %52, i64 0, i32 2
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %52, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !42
  %61 = add i64 %60, 1
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %54, ptr nonnull align 8 %55, i64 %61, i1 false)
  br label %66

64:                                               ; preds = %53
  store ptr %55, ptr %8, align 8, !tbaa !40, !alias.scope !46
  %65 = load i64, ptr %56, align 8, !tbaa !12
  store i64 %65, ptr %54, align 8, !tbaa !12, !alias.scope !46
  br label %66

66:                                               ; preds = %64, %63, %58
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %52, i64 0, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !42
  %69 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  store i64 %68, ptr %69, align 8, !tbaa !42, !alias.scope !46
  store ptr %56, ptr %52, align 8, !tbaa !40
  store i64 0, ptr %67, align 8, !tbaa !42
  store i8 0, ptr %56, align 8, !tbaa !12
  %70 = select i1 %4, ptr @.str.26, ptr @.str.27
  %71 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %70) #23
          to label %72 unwind label %134

72:                                               ; preds = %66
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  store ptr %73, ptr %7, align 8, !tbaa !35, !alias.scope !49
  %74 = load ptr, ptr %71, align 8, !tbaa !40
  %75 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %71, i64 0, i32 2
  %76 = icmp eq ptr %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %71, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !42
  %80 = add i64 %79, 1
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %73, ptr nonnull align 8 %74, i64 %80, i1 false)
  br label %85

83:                                               ; preds = %72
  store ptr %74, ptr %7, align 8, !tbaa !40, !alias.scope !49
  %84 = load i64, ptr %75, align 8, !tbaa !12
  store i64 %84, ptr %73, align 8, !tbaa !12, !alias.scope !49
  br label %85

85:                                               ; preds = %83, %82, %77
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %71, i64 0, i32 1
  %87 = load i64, ptr %86, align 8, !tbaa !42
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  store i64 %87, ptr %88, align 8, !tbaa !42, !alias.scope !49
  store ptr %75, ptr %71, align 8, !tbaa !40
  store i64 0, ptr %86, align 8, !tbaa !42
  store i8 0, ptr %75, align 8, !tbaa !12
  %89 = select i1 %5, ptr @.str.26, ptr @.str.27
  %90 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %89) #23
          to label %91 unwind label %136

91:                                               ; preds = %85
  %92 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %92, ptr %0, align 8, !tbaa !35, !alias.scope !52
  %93 = load ptr, ptr %90, align 8, !tbaa !40
  %94 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %90, i64 0, i32 2
  %95 = icmp eq ptr %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %90, i64 0, i32 1
  %98 = load i64, ptr %97, align 8, !tbaa !42
  %99 = add i64 %98, 1
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %92, ptr nonnull align 8 %93, i64 %99, i1 false)
  br label %104

102:                                              ; preds = %91
  store ptr %93, ptr %0, align 8, !tbaa !40, !alias.scope !52
  %103 = load i64, ptr %94, align 8, !tbaa !12
  store i64 %103, ptr %92, align 8, !tbaa !12, !alias.scope !52
  br label %104

104:                                              ; preds = %102, %101, %96
  %105 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %90, i64 0, i32 1
  %106 = load i64, ptr %105, align 8, !tbaa !42
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %106, ptr %107, align 8, !tbaa !42, !alias.scope !52
  store ptr %94, ptr %90, align 8, !tbaa !40
  store i64 0, ptr %105, align 8, !tbaa !42
  store i8 0, ptr %94, align 8, !tbaa !12
  %108 = load ptr, ptr %7, align 8, !tbaa !40
  %109 = icmp eq ptr %108, %73
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  call void @_ZdlPv(ptr noundef %108) #24
  br label %111

111:                                              ; preds = %110, %104
  %112 = load ptr, ptr %8, align 8, !tbaa !40
  %113 = icmp eq ptr %112, %54
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  call void @_ZdlPv(ptr noundef %112) #24
  br label %115

115:                                              ; preds = %114, %111
  %116 = load ptr, ptr %9, align 8, !tbaa !40
  %117 = icmp eq ptr %116, %35
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  call void @_ZdlPv(ptr noundef %116) #24
  br label %119

119:                                              ; preds = %118, %115
  %120 = load ptr, ptr %10, align 8, !tbaa !40
  %121 = icmp eq ptr %120, %16
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  call void @_ZdlPv(ptr noundef %120) #24
  br label %123

123:                                              ; preds = %122, %119
  %124 = load ptr, ptr %11, align 8, !tbaa !40
  %125 = icmp eq ptr %124, %12
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  call void @_ZdlPv(ptr noundef %124) #24
  br label %127

127:                                              ; preds = %126, %123
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  ret void

128:                                              ; preds = %6
  %129 = landingpad { ptr, i32 }
          cleanup
  br label %156

130:                                              ; preds = %28
  %131 = landingpad { ptr, i32 }
          cleanup
  br label %151

132:                                              ; preds = %47
  %133 = landingpad { ptr, i32 }
          cleanup
  br label %146

134:                                              ; preds = %66
  %135 = landingpad { ptr, i32 }
          cleanup
  br label %141

136:                                              ; preds = %85
  %137 = landingpad { ptr, i32 }
          cleanup
  %138 = load ptr, ptr %7, align 8, !tbaa !40
  %139 = icmp eq ptr %138, %73
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  call void @_ZdlPv(ptr noundef %138) #24
  br label %141

141:                                              ; preds = %140, %136, %134
  %142 = phi { ptr, i32 } [ %135, %134 ], [ %137, %136 ], [ %137, %140 ]
  %143 = load ptr, ptr %8, align 8, !tbaa !40
  %144 = icmp eq ptr %143, %54
  br i1 %144, label %146, label %145

145:                                              ; preds = %141
  call void @_ZdlPv(ptr noundef %143) #24
  br label %146

146:                                              ; preds = %145, %141, %132
  %147 = phi { ptr, i32 } [ %133, %132 ], [ %142, %141 ], [ %142, %145 ]
  %148 = load ptr, ptr %9, align 8, !tbaa !40
  %149 = icmp eq ptr %148, %35
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  call void @_ZdlPv(ptr noundef %148) #24
  br label %151

151:                                              ; preds = %150, %146, %130
  %152 = phi { ptr, i32 } [ %131, %130 ], [ %147, %146 ], [ %147, %150 ]
  %153 = load ptr, ptr %10, align 8, !tbaa !40
  %154 = icmp eq ptr %153, %16
  br i1 %154, label %156, label %155

155:                                              ; preds = %151
  call void @_ZdlPv(ptr noundef %153) #24
  br label %156

156:                                              ; preds = %155, %151, %128
  %157 = phi { ptr, i32 } [ %129, %128 ], [ %152, %151 ], [ %152, %155 ]
  %158 = load ptr, ptr %11, align 8, !tbaa !40
  %159 = icmp eq ptr %158, %12
  br i1 %159, label %161, label %160

160:                                              ; preds = %156
  call void @_ZdlPv(ptr noundef %158) #24
  br label %161

161:                                              ; preds = %160, %156
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  resume { ptr, i32 } %157
}

; Function Attrs: optsize uwtable
define weak_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = call i64 @_wyvern_slice__ZNSt6vectorIPKcSaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag__846410069(ptr %1, ptr %2)
  store i64 %5, ptr %4, align 8, !tbaa !55
  %6 = icmp ugt i64 %5, 15
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !40
  br label %13

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #23
  store ptr %10, ptr %0, align 8, !tbaa !40
  %11 = load i64, ptr %4, align 8, !tbaa !55
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !12
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi ptr [ %8, %7 ], [ %10, %9 ]
  switch i64 %5, label %17 [
    i64 1, label %15
    i64 0, label %18
  ]

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !12
  store i8 %16, ptr %14, align 1, !tbaa !12
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %5, i1 false)
  br label %18

18:                                               ; preds = %17, %15, %13
  %19 = load i64, ptr %4, align 8, !tbaa !55
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !42
  %21 = load ptr, ptr %0, align 8, !tbaa !40
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define available_externally noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !42
  %6 = sub i64 4611686018427387903, %5
  %7 = icmp ult i64 %6, %3
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #25
  unreachable

9:                                                ; preds = %2
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %3) #23
  ret ptr %10
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: norecurse optsize uwtable
define dso_local noundef i32 @main() #15 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #21
  %2 = load ptr, ptr @_ZL21testDescriptionHeader, align 8, !tbaa !56
  %3 = load ptr, ptr getelementptr inbounds (%"class.std::vector", ptr @_ZL21testDescriptionHeader, i64 0, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !56
  %4 = icmp eq ptr %2, %3
  br i1 %4, label %5, label %70

5:                                                ; preds = %85, %0
  %6 = call noundef zeroext i1 @_Z19check_frame_variantILb1ELb0ELb0ELb0ELb0EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %7 = call noundef zeroext i1 @_Z19check_frame_variantILb0ELb0ELb0ELb0ELb0EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %8 = or i1 %6, %7
  %9 = call noundef zeroext i1 @_Z19check_frame_variantILb1ELb1ELb0ELb0ELb0EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %10 = or i1 %8, %9
  %11 = call noundef zeroext i1 @_Z19check_frame_variantILb0ELb1ELb0ELb0ELb0EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %12 = or i1 %10, %11
  %13 = call noundef zeroext i1 @_Z19check_frame_variantILb1ELb0ELb1ELb0ELb0EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %14 = or i1 %12, %13
  %15 = call noundef zeroext i1 @_Z19check_frame_variantILb0ELb0ELb1ELb0ELb0EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %16 = or i1 %14, %15
  %17 = call noundef zeroext i1 @_Z19check_frame_variantILb1ELb1ELb1ELb0ELb0EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %18 = or i1 %16, %17
  %19 = call noundef zeroext i1 @_Z19check_frame_variantILb0ELb1ELb1ELb0ELb0EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %20 = or i1 %18, %19
  %21 = call noundef zeroext i1 @_Z19check_frame_variantILb1ELb0ELb0ELb1ELb0EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %22 = or i1 %20, %21
  %23 = call noundef zeroext i1 @_Z19check_frame_variantILb0ELb0ELb0ELb1ELb0EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %24 = or i1 %22, %23
  %25 = call noundef zeroext i1 @_Z19check_frame_variantILb1ELb1ELb0ELb1ELb0EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %26 = or i1 %24, %25
  %27 = call noundef zeroext i1 @_Z19check_frame_variantILb0ELb1ELb0ELb1ELb0EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %28 = or i1 %26, %27
  %29 = call noundef zeroext i1 @_Z19check_frame_variantILb1ELb0ELb1ELb1ELb0EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %30 = or i1 %28, %29
  %31 = call noundef zeroext i1 @_Z19check_frame_variantILb0ELb0ELb1ELb1ELb0EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %32 = or i1 %30, %31
  %33 = call noundef zeroext i1 @_Z19check_frame_variantILb1ELb1ELb1ELb1ELb0EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %34 = or i1 %32, %33
  %35 = call noundef zeroext i1 @_Z19check_frame_variantILb0ELb1ELb1ELb1ELb0EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %36 = or i1 %34, %35
  %37 = call noundef zeroext i1 @_Z19check_frame_variantILb1ELb0ELb0ELb0ELb1EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %38 = or i1 %36, %37
  %39 = call noundef zeroext i1 @_Z19check_frame_variantILb0ELb0ELb0ELb0ELb1EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %40 = or i1 %38, %39
  %41 = call noundef zeroext i1 @_Z19check_frame_variantILb1ELb1ELb0ELb0ELb1EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %42 = or i1 %40, %41
  %43 = call noundef zeroext i1 @_Z19check_frame_variantILb0ELb1ELb0ELb0ELb1EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %44 = or i1 %42, %43
  %45 = call noundef zeroext i1 @_Z19check_frame_variantILb1ELb0ELb1ELb0ELb1EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %46 = or i1 %44, %45
  %47 = call noundef zeroext i1 @_Z19check_frame_variantILb0ELb0ELb1ELb0ELb1EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %48 = or i1 %46, %47
  %49 = call noundef zeroext i1 @_Z19check_frame_variantILb1ELb1ELb1ELb0ELb1EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %50 = or i1 %48, %49
  %51 = call noundef zeroext i1 @_Z19check_frame_variantILb0ELb1ELb1ELb0ELb1EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %52 = or i1 %50, %51
  %53 = call noundef zeroext i1 @_Z19check_frame_variantILb1ELb0ELb0ELb1ELb1EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %54 = or i1 %52, %53
  %55 = call noundef zeroext i1 @_Z19check_frame_variantILb0ELb0ELb0ELb1ELb1EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %56 = or i1 %54, %55
  %57 = call noundef zeroext i1 @_Z19check_frame_variantILb1ELb1ELb0ELb1ELb1EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %58 = or i1 %56, %57
  %59 = call noundef zeroext i1 @_Z19check_frame_variantILb0ELb1ELb0ELb1ELb1EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %60 = or i1 %58, %59
  %61 = call noundef zeroext i1 @_Z19check_frame_variantILb1ELb0ELb1ELb1ELb1EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %62 = or i1 %60, %61
  %63 = call noundef zeroext i1 @_Z19check_frame_variantILb0ELb0ELb1ELb1ELb1EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %64 = or i1 %62, %63
  %65 = call noundef zeroext i1 @_Z19check_frame_variantILb1ELb1ELb1ELb1ELb1EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %66 = or i1 %64, %65
  %67 = call noundef zeroext i1 @_Z19check_frame_variantILb0ELb1ELb1ELb1ELb1EEbiRVi(i32 noundef 42, ptr noundef nonnull align 4 dereferenceable(4) %1) #23
  %68 = or i1 %66, %67
  %69 = sext i1 %68 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #21
  ret i32 %69

70:                                               ; preds = %85, %0
  %71 = phi ptr [ %93, %85 ], [ %2, %0 ]
  %72 = load ptr, ptr %71, align 8, !tbaa !56
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %76 = getelementptr i8, ptr %75, i64 -24
  %77 = load i64, ptr %76, align 8
  %78 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %77
  %79 = getelementptr inbounds %"class.std::ios_base", ptr %78, i64 0, i32 5
  %80 = load i32, ptr %79, align 8, !tbaa !21
  %81 = or i32 %80, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %78, i32 noundef %81) #23
  br label %85

82:                                               ; preds = %70
  %83 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #27
  %84 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %72, i64 noundef %83) #23
  br label %85

85:                                               ; preds = %82, %74
  %86 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %87 = getelementptr i8, ptr %86, i64 -24
  %88 = load i64, ptr %87, align 8
  %89 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %88
  %90 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %89, i8 noundef signext 10) #23
  %91 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %90) #23
  %92 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %91) #23
  %93 = getelementptr inbounds ptr, ptr %71, i64 1
  %94 = icmp eq ptr %93, %3
  br i1 %94, label %5, label %70
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb1ELb0ELb0ELb0ELb0EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  call void @_Z10test_frameILj4096ELb0ELj2048ELb0ELb0EJEEvDpT4_jPKcP13trace_elementd(i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
  %160 = load double, ptr %3, align 16
  %161 = fdiv double %5, %6
  %162 = fdiv double %161, %7
  %163 = fdiv double %162, %8
  %164 = fdiv double %163, %9
  %165 = fdiv double %164, %10
  %166 = fdiv double %165, %11
  %167 = fdiv double %166, %12
  %168 = fdiv double %167, %13
  %169 = fdiv double %168, %14
  %170 = fdiv double %169, %15
  %171 = fdiv double %170, %16
  %172 = fdiv double %171, %17
  %173 = fdiv double %172, %18
  %174 = fdiv double %173, %19
  %175 = fdiv double %174, %20
  %176 = fdiv double %175, %21
  %177 = fdiv double %176, %22
  %178 = fdiv double %177, %23
  %179 = fdiv double %178, %24
  %180 = fdiv double %179, %25
  %181 = fdiv double %180, %26
  %182 = fdiv double %181, %27
  %183 = fdiv double %182, %28
  %184 = fdiv double %183, %29
  %185 = fdiv double %184, %30
  %186 = fdiv double %185, %31
  %187 = fdiv double %186, %32
  %188 = fdiv double %187, %33
  %189 = fdiv double %188, %34
  %190 = fdiv double %189, %35
  %191 = fdiv double %190, %36
  %192 = fdiv double %191, %37
  %193 = fdiv double %192, %38
  %194 = fdiv double %193, %39
  %195 = fdiv double %194, %40
  %196 = fdiv double %195, %41
  %197 = fdiv double %196, %42
  %198 = fdiv double %197, %43
  %199 = fdiv double %198, %160
  %200 = bitcast double %160 to i64
  %201 = trunc i64 %200 to i32
  %202 = sdiv i32 %0, %44
  %203 = sdiv i32 %202, %45
  %204 = sdiv i32 %203, %46
  %205 = sdiv i32 %204, %47
  %206 = sdiv i32 %205, %48
  %207 = sdiv i32 %206, %49
  %208 = sdiv i32 %207, %50
  %209 = sdiv i32 %208, %51
  %210 = sdiv i32 %209, %52
  %211 = sdiv i32 %210, %53
  %212 = sdiv i32 %211, %54
  %213 = sdiv i32 %212, %55
  %214 = sdiv i32 %213, %56
  %215 = sdiv i32 %214, %57
  %216 = sdiv i32 %215, %58
  %217 = sdiv i32 %216, %59
  %218 = sdiv i32 %217, %60
  %219 = sdiv i32 %218, %61
  %220 = sdiv i32 %219, %62
  %221 = sdiv i32 %220, %63
  %222 = sdiv i32 %221, %64
  %223 = sdiv i32 %222, %65
  %224 = sdiv i32 %223, %66
  %225 = sdiv i32 %224, %67
  %226 = sdiv i32 %225, %68
  %227 = sdiv i32 %226, %69
  %228 = sdiv i32 %227, %70
  %229 = sdiv i32 %228, %71
  %230 = sdiv i32 %229, %72
  %231 = sdiv i32 %230, %73
  %232 = sdiv i32 %231, %74
  %233 = sdiv i32 %232, %75
  %234 = sdiv i32 %233, %76
  %235 = sdiv i32 %234, %77
  %236 = sdiv i32 %235, %78
  %237 = sdiv i32 %236, %79
  %238 = sdiv i32 %237, %80
  %239 = sdiv i32 %238, %81
  %240 = sdiv i32 %239, %201
  %241 = sitofp i32 %240 to double
  %242 = fadd double %199, %241
  %243 = fptosi double %242 to i32
  %244 = load volatile i32, ptr %1, align 4, !tbaa !7
  %245 = add nsw i32 %244, %243
  store volatile i32 %245, ptr %1, align 4, !tbaa !7
  %246 = load ptr, ptr %4, align 8, !tbaa !40
  %247 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %246, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 4096, i1 noundef zeroext false, i32 poison, i32 noundef 2048, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef -1) #23
          to label %248 unwind label %254

248:                                              ; preds = %2
  %249 = load ptr, ptr %4, align 8, !tbaa !40
  %250 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %251 = icmp eq ptr %249, %250
  br i1 %251, label %253, label %252

252:                                              ; preds = %248
  call void @_ZdlPv(ptr noundef %249) #24
  br label %253

253:                                              ; preds = %252, %248
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %247

254:                                              ; preds = %2
  %255 = landingpad { ptr, i32 }
          cleanup
  %256 = load ptr, ptr %4, align 8, !tbaa !40
  %257 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %258 = icmp eq ptr %256, %257
  br i1 %258, label %260, label %259

259:                                              ; preds = %254
  call void @_ZdlPv(ptr noundef %256) #24
  br label %260

260:                                              ; preds = %259, %254
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %255
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb0ELb0ELb0ELb0ELb0EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  call void @_Z10test_frameILj2ELb0ELj2048ELb0ELb0EJEEvDpT4_jPKcP13trace_elementd(i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
  %160 = load double, ptr %3, align 16
  %161 = fdiv double %5, %6
  %162 = fdiv double %161, %7
  %163 = fdiv double %162, %8
  %164 = fdiv double %163, %9
  %165 = fdiv double %164, %10
  %166 = fdiv double %165, %11
  %167 = fdiv double %166, %12
  %168 = fdiv double %167, %13
  %169 = fdiv double %168, %14
  %170 = fdiv double %169, %15
  %171 = fdiv double %170, %16
  %172 = fdiv double %171, %17
  %173 = fdiv double %172, %18
  %174 = fdiv double %173, %19
  %175 = fdiv double %174, %20
  %176 = fdiv double %175, %21
  %177 = fdiv double %176, %22
  %178 = fdiv double %177, %23
  %179 = fdiv double %178, %24
  %180 = fdiv double %179, %25
  %181 = fdiv double %180, %26
  %182 = fdiv double %181, %27
  %183 = fdiv double %182, %28
  %184 = fdiv double %183, %29
  %185 = fdiv double %184, %30
  %186 = fdiv double %185, %31
  %187 = fdiv double %186, %32
  %188 = fdiv double %187, %33
  %189 = fdiv double %188, %34
  %190 = fdiv double %189, %35
  %191 = fdiv double %190, %36
  %192 = fdiv double %191, %37
  %193 = fdiv double %192, %38
  %194 = fdiv double %193, %39
  %195 = fdiv double %194, %40
  %196 = fdiv double %195, %41
  %197 = fdiv double %196, %42
  %198 = fdiv double %197, %43
  %199 = fdiv double %198, %160
  %200 = bitcast double %160 to i64
  %201 = trunc i64 %200 to i32
  %202 = sdiv i32 %0, %44
  %203 = sdiv i32 %202, %45
  %204 = sdiv i32 %203, %46
  %205 = sdiv i32 %204, %47
  %206 = sdiv i32 %205, %48
  %207 = sdiv i32 %206, %49
  %208 = sdiv i32 %207, %50
  %209 = sdiv i32 %208, %51
  %210 = sdiv i32 %209, %52
  %211 = sdiv i32 %210, %53
  %212 = sdiv i32 %211, %54
  %213 = sdiv i32 %212, %55
  %214 = sdiv i32 %213, %56
  %215 = sdiv i32 %214, %57
  %216 = sdiv i32 %215, %58
  %217 = sdiv i32 %216, %59
  %218 = sdiv i32 %217, %60
  %219 = sdiv i32 %218, %61
  %220 = sdiv i32 %219, %62
  %221 = sdiv i32 %220, %63
  %222 = sdiv i32 %221, %64
  %223 = sdiv i32 %222, %65
  %224 = sdiv i32 %223, %66
  %225 = sdiv i32 %224, %67
  %226 = sdiv i32 %225, %68
  %227 = sdiv i32 %226, %69
  %228 = sdiv i32 %227, %70
  %229 = sdiv i32 %228, %71
  %230 = sdiv i32 %229, %72
  %231 = sdiv i32 %230, %73
  %232 = sdiv i32 %231, %74
  %233 = sdiv i32 %232, %75
  %234 = sdiv i32 %233, %76
  %235 = sdiv i32 %234, %77
  %236 = sdiv i32 %235, %78
  %237 = sdiv i32 %236, %79
  %238 = sdiv i32 %237, %80
  %239 = sdiv i32 %238, %81
  %240 = sdiv i32 %239, %201
  %241 = sitofp i32 %240 to double
  %242 = fadd double %199, %241
  %243 = fptosi double %242 to i32
  %244 = load volatile i32, ptr %1, align 4, !tbaa !7
  %245 = add nsw i32 %244, %243
  store volatile i32 %245, ptr %1, align 4, !tbaa !7
  %246 = load ptr, ptr %4, align 8, !tbaa !40
  %247 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %246, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 2, i1 noundef zeroext false, i32 poison, i32 noundef 2048, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef -1) #23
          to label %248 unwind label %254

248:                                              ; preds = %2
  %249 = load ptr, ptr %4, align 8, !tbaa !40
  %250 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %251 = icmp eq ptr %249, %250
  br i1 %251, label %253, label %252

252:                                              ; preds = %248
  call void @_ZdlPv(ptr noundef %249) #24
  br label %253

253:                                              ; preds = %252, %248
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %247

254:                                              ; preds = %2
  %255 = landingpad { ptr, i32 }
          cleanup
  %256 = load ptr, ptr %4, align 8, !tbaa !40
  %257 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %258 = icmp eq ptr %256, %257
  br i1 %258, label %260, label %259

259:                                              ; preds = %254
  call void @_ZdlPv(ptr noundef %256) #24
  br label %260

260:                                              ; preds = %259, %254
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %255
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb1ELb1ELb0ELb0ELb0EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  call void @_Z10test_frameILj4096ELb1ELj2048ELb0ELb0EJEEvDpT4_jPKcP13trace_elementd(i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
  %160 = load double, ptr %3, align 16
  %161 = fdiv double %5, %6
  %162 = fdiv double %161, %7
  %163 = fdiv double %162, %8
  %164 = fdiv double %163, %9
  %165 = fdiv double %164, %10
  %166 = fdiv double %165, %11
  %167 = fdiv double %166, %12
  %168 = fdiv double %167, %13
  %169 = fdiv double %168, %14
  %170 = fdiv double %169, %15
  %171 = fdiv double %170, %16
  %172 = fdiv double %171, %17
  %173 = fdiv double %172, %18
  %174 = fdiv double %173, %19
  %175 = fdiv double %174, %20
  %176 = fdiv double %175, %21
  %177 = fdiv double %176, %22
  %178 = fdiv double %177, %23
  %179 = fdiv double %178, %24
  %180 = fdiv double %179, %25
  %181 = fdiv double %180, %26
  %182 = fdiv double %181, %27
  %183 = fdiv double %182, %28
  %184 = fdiv double %183, %29
  %185 = fdiv double %184, %30
  %186 = fdiv double %185, %31
  %187 = fdiv double %186, %32
  %188 = fdiv double %187, %33
  %189 = fdiv double %188, %34
  %190 = fdiv double %189, %35
  %191 = fdiv double %190, %36
  %192 = fdiv double %191, %37
  %193 = fdiv double %192, %38
  %194 = fdiv double %193, %39
  %195 = fdiv double %194, %40
  %196 = fdiv double %195, %41
  %197 = fdiv double %196, %42
  %198 = fdiv double %197, %43
  %199 = fdiv double %198, %160
  %200 = bitcast double %160 to i64
  %201 = trunc i64 %200 to i32
  %202 = sdiv i32 %0, %44
  %203 = sdiv i32 %202, %45
  %204 = sdiv i32 %203, %46
  %205 = sdiv i32 %204, %47
  %206 = sdiv i32 %205, %48
  %207 = sdiv i32 %206, %49
  %208 = sdiv i32 %207, %50
  %209 = sdiv i32 %208, %51
  %210 = sdiv i32 %209, %52
  %211 = sdiv i32 %210, %53
  %212 = sdiv i32 %211, %54
  %213 = sdiv i32 %212, %55
  %214 = sdiv i32 %213, %56
  %215 = sdiv i32 %214, %57
  %216 = sdiv i32 %215, %58
  %217 = sdiv i32 %216, %59
  %218 = sdiv i32 %217, %60
  %219 = sdiv i32 %218, %61
  %220 = sdiv i32 %219, %62
  %221 = sdiv i32 %220, %63
  %222 = sdiv i32 %221, %64
  %223 = sdiv i32 %222, %65
  %224 = sdiv i32 %223, %66
  %225 = sdiv i32 %224, %67
  %226 = sdiv i32 %225, %68
  %227 = sdiv i32 %226, %69
  %228 = sdiv i32 %227, %70
  %229 = sdiv i32 %228, %71
  %230 = sdiv i32 %229, %72
  %231 = sdiv i32 %230, %73
  %232 = sdiv i32 %231, %74
  %233 = sdiv i32 %232, %75
  %234 = sdiv i32 %233, %76
  %235 = sdiv i32 %234, %77
  %236 = sdiv i32 %235, %78
  %237 = sdiv i32 %236, %79
  %238 = sdiv i32 %237, %80
  %239 = sdiv i32 %238, %81
  %240 = sdiv i32 %239, %201
  %241 = sitofp i32 %240 to double
  %242 = fadd double %199, %241
  %243 = fptosi double %242 to i32
  %244 = load volatile i32, ptr %1, align 4, !tbaa !7
  %245 = add nsw i32 %244, %243
  store volatile i32 %245, ptr %1, align 4, !tbaa !7
  %246 = load ptr, ptr %4, align 8, !tbaa !40
  %247 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %246, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 4096, i1 noundef zeroext true, i32 poison, i32 noundef 2048, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef -1) #23
          to label %248 unwind label %254

248:                                              ; preds = %2
  %249 = load ptr, ptr %4, align 8, !tbaa !40
  %250 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %251 = icmp eq ptr %249, %250
  br i1 %251, label %253, label %252

252:                                              ; preds = %248
  call void @_ZdlPv(ptr noundef %249) #24
  br label %253

253:                                              ; preds = %252, %248
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %247

254:                                              ; preds = %2
  %255 = landingpad { ptr, i32 }
          cleanup
  %256 = load ptr, ptr %4, align 8, !tbaa !40
  %257 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %258 = icmp eq ptr %256, %257
  br i1 %258, label %260, label %259

259:                                              ; preds = %254
  call void @_ZdlPv(ptr noundef %256) #24
  br label %260

260:                                              ; preds = %259, %254
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %255
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb0ELb1ELb0ELb0ELb0EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  call void @_Z10test_frameILj2ELb1ELj2048ELb0ELb0EJEEvDpT4_jPKcP13trace_elementd(i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
  %160 = load double, ptr %3, align 16
  %161 = fdiv double %5, %6
  %162 = fdiv double %161, %7
  %163 = fdiv double %162, %8
  %164 = fdiv double %163, %9
  %165 = fdiv double %164, %10
  %166 = fdiv double %165, %11
  %167 = fdiv double %166, %12
  %168 = fdiv double %167, %13
  %169 = fdiv double %168, %14
  %170 = fdiv double %169, %15
  %171 = fdiv double %170, %16
  %172 = fdiv double %171, %17
  %173 = fdiv double %172, %18
  %174 = fdiv double %173, %19
  %175 = fdiv double %174, %20
  %176 = fdiv double %175, %21
  %177 = fdiv double %176, %22
  %178 = fdiv double %177, %23
  %179 = fdiv double %178, %24
  %180 = fdiv double %179, %25
  %181 = fdiv double %180, %26
  %182 = fdiv double %181, %27
  %183 = fdiv double %182, %28
  %184 = fdiv double %183, %29
  %185 = fdiv double %184, %30
  %186 = fdiv double %185, %31
  %187 = fdiv double %186, %32
  %188 = fdiv double %187, %33
  %189 = fdiv double %188, %34
  %190 = fdiv double %189, %35
  %191 = fdiv double %190, %36
  %192 = fdiv double %191, %37
  %193 = fdiv double %192, %38
  %194 = fdiv double %193, %39
  %195 = fdiv double %194, %40
  %196 = fdiv double %195, %41
  %197 = fdiv double %196, %42
  %198 = fdiv double %197, %43
  %199 = fdiv double %198, %160
  %200 = bitcast double %160 to i64
  %201 = trunc i64 %200 to i32
  %202 = sdiv i32 %0, %44
  %203 = sdiv i32 %202, %45
  %204 = sdiv i32 %203, %46
  %205 = sdiv i32 %204, %47
  %206 = sdiv i32 %205, %48
  %207 = sdiv i32 %206, %49
  %208 = sdiv i32 %207, %50
  %209 = sdiv i32 %208, %51
  %210 = sdiv i32 %209, %52
  %211 = sdiv i32 %210, %53
  %212 = sdiv i32 %211, %54
  %213 = sdiv i32 %212, %55
  %214 = sdiv i32 %213, %56
  %215 = sdiv i32 %214, %57
  %216 = sdiv i32 %215, %58
  %217 = sdiv i32 %216, %59
  %218 = sdiv i32 %217, %60
  %219 = sdiv i32 %218, %61
  %220 = sdiv i32 %219, %62
  %221 = sdiv i32 %220, %63
  %222 = sdiv i32 %221, %64
  %223 = sdiv i32 %222, %65
  %224 = sdiv i32 %223, %66
  %225 = sdiv i32 %224, %67
  %226 = sdiv i32 %225, %68
  %227 = sdiv i32 %226, %69
  %228 = sdiv i32 %227, %70
  %229 = sdiv i32 %228, %71
  %230 = sdiv i32 %229, %72
  %231 = sdiv i32 %230, %73
  %232 = sdiv i32 %231, %74
  %233 = sdiv i32 %232, %75
  %234 = sdiv i32 %233, %76
  %235 = sdiv i32 %234, %77
  %236 = sdiv i32 %235, %78
  %237 = sdiv i32 %236, %79
  %238 = sdiv i32 %237, %80
  %239 = sdiv i32 %238, %81
  %240 = sdiv i32 %239, %201
  %241 = sitofp i32 %240 to double
  %242 = fadd double %199, %241
  %243 = fptosi double %242 to i32
  %244 = load volatile i32, ptr %1, align 4, !tbaa !7
  %245 = add nsw i32 %244, %243
  store volatile i32 %245, ptr %1, align 4, !tbaa !7
  %246 = load ptr, ptr %4, align 8, !tbaa !40
  %247 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %246, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 2, i1 noundef zeroext true, i32 poison, i32 noundef 2048, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef -1) #23
          to label %248 unwind label %254

248:                                              ; preds = %2
  %249 = load ptr, ptr %4, align 8, !tbaa !40
  %250 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %251 = icmp eq ptr %249, %250
  br i1 %251, label %253, label %252

252:                                              ; preds = %248
  call void @_ZdlPv(ptr noundef %249) #24
  br label %253

253:                                              ; preds = %252, %248
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %247

254:                                              ; preds = %2
  %255 = landingpad { ptr, i32 }
          cleanup
  %256 = load ptr, ptr %4, align 8, !tbaa !40
  %257 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %258 = icmp eq ptr %256, %257
  br i1 %258, label %260, label %259

259:                                              ; preds = %254
  call void @_ZdlPv(ptr noundef %256) #24
  br label %260

260:                                              ; preds = %259, %254
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %255
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb1ELb0ELb1ELb0ELb0EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj4096ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd(i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 4096, i1 noundef zeroext false, i32 poison, i32 noundef 2048, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb0ELb0ELb1ELb0ELb0EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd(i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 2, i1 noundef zeroext false, i32 poison, i32 noundef 2048, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb1ELb1ELb1ELb0ELb0EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj4096ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd(i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 4096, i1 noundef zeroext true, i32 poison, i32 noundef 2048, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb0ELb1ELb1ELb0ELb0EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd(i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 2, i1 noundef zeroext true, i32 poison, i32 noundef 2048, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb1ELb0ELb0ELb1ELb0EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  call void @_Z10test_frameILj4096ELb0ELj2048ELb0ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
  %160 = load double, ptr %3, align 16
  %161 = fdiv double %5, %6
  %162 = fdiv double %161, %7
  %163 = fdiv double %162, %8
  %164 = fdiv double %163, %9
  %165 = fdiv double %164, %10
  %166 = fdiv double %165, %11
  %167 = fdiv double %166, %12
  %168 = fdiv double %167, %13
  %169 = fdiv double %168, %14
  %170 = fdiv double %169, %15
  %171 = fdiv double %170, %16
  %172 = fdiv double %171, %17
  %173 = fdiv double %172, %18
  %174 = fdiv double %173, %19
  %175 = fdiv double %174, %20
  %176 = fdiv double %175, %21
  %177 = fdiv double %176, %22
  %178 = fdiv double %177, %23
  %179 = fdiv double %178, %24
  %180 = fdiv double %179, %25
  %181 = fdiv double %180, %26
  %182 = fdiv double %181, %27
  %183 = fdiv double %182, %28
  %184 = fdiv double %183, %29
  %185 = fdiv double %184, %30
  %186 = fdiv double %185, %31
  %187 = fdiv double %186, %32
  %188 = fdiv double %187, %33
  %189 = fdiv double %188, %34
  %190 = fdiv double %189, %35
  %191 = fdiv double %190, %36
  %192 = fdiv double %191, %37
  %193 = fdiv double %192, %38
  %194 = fdiv double %193, %39
  %195 = fdiv double %194, %40
  %196 = fdiv double %195, %41
  %197 = fdiv double %196, %42
  %198 = fdiv double %197, %43
  %199 = fdiv double %198, %160
  %200 = bitcast double %160 to i64
  %201 = trunc i64 %200 to i32
  %202 = sdiv i32 %0, %44
  %203 = sdiv i32 %202, %45
  %204 = sdiv i32 %203, %46
  %205 = sdiv i32 %204, %47
  %206 = sdiv i32 %205, %48
  %207 = sdiv i32 %206, %49
  %208 = sdiv i32 %207, %50
  %209 = sdiv i32 %208, %51
  %210 = sdiv i32 %209, %52
  %211 = sdiv i32 %210, %53
  %212 = sdiv i32 %211, %54
  %213 = sdiv i32 %212, %55
  %214 = sdiv i32 %213, %56
  %215 = sdiv i32 %214, %57
  %216 = sdiv i32 %215, %58
  %217 = sdiv i32 %216, %59
  %218 = sdiv i32 %217, %60
  %219 = sdiv i32 %218, %61
  %220 = sdiv i32 %219, %62
  %221 = sdiv i32 %220, %63
  %222 = sdiv i32 %221, %64
  %223 = sdiv i32 %222, %65
  %224 = sdiv i32 %223, %66
  %225 = sdiv i32 %224, %67
  %226 = sdiv i32 %225, %68
  %227 = sdiv i32 %226, %69
  %228 = sdiv i32 %227, %70
  %229 = sdiv i32 %228, %71
  %230 = sdiv i32 %229, %72
  %231 = sdiv i32 %230, %73
  %232 = sdiv i32 %231, %74
  %233 = sdiv i32 %232, %75
  %234 = sdiv i32 %233, %76
  %235 = sdiv i32 %234, %77
  %236 = sdiv i32 %235, %78
  %237 = sdiv i32 %236, %79
  %238 = sdiv i32 %237, %80
  %239 = sdiv i32 %238, %81
  %240 = sdiv i32 %239, %201
  %241 = sitofp i32 %240 to double
  %242 = fadd double %199, %241
  %243 = fptosi double %242 to i32
  %244 = load volatile i32, ptr %1, align 4, !tbaa !7
  %245 = add nsw i32 %244, %243
  store volatile i32 %245, ptr %1, align 4, !tbaa !7
  %246 = load ptr, ptr %4, align 8, !tbaa !40
  %247 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %246, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 4096, i1 noundef zeroext false, i32 poison, i32 noundef 2048, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef -1) #23
          to label %248 unwind label %254

248:                                              ; preds = %2
  %249 = load ptr, ptr %4, align 8, !tbaa !40
  %250 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %251 = icmp eq ptr %249, %250
  br i1 %251, label %253, label %252

252:                                              ; preds = %248
  call void @_ZdlPv(ptr noundef %249) #24
  br label %253

253:                                              ; preds = %252, %248
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %247

254:                                              ; preds = %2
  %255 = landingpad { ptr, i32 }
          cleanup
  %256 = load ptr, ptr %4, align 8, !tbaa !40
  %257 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %258 = icmp eq ptr %256, %257
  br i1 %258, label %260, label %259

259:                                              ; preds = %254
  call void @_ZdlPv(ptr noundef %256) #24
  br label %260

260:                                              ; preds = %259, %254
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %255
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb0ELb0ELb0ELb1ELb0EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  call void @_Z10test_frameILj2ELb0ELj2048ELb0ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
  %160 = load double, ptr %3, align 16
  %161 = fdiv double %5, %6
  %162 = fdiv double %161, %7
  %163 = fdiv double %162, %8
  %164 = fdiv double %163, %9
  %165 = fdiv double %164, %10
  %166 = fdiv double %165, %11
  %167 = fdiv double %166, %12
  %168 = fdiv double %167, %13
  %169 = fdiv double %168, %14
  %170 = fdiv double %169, %15
  %171 = fdiv double %170, %16
  %172 = fdiv double %171, %17
  %173 = fdiv double %172, %18
  %174 = fdiv double %173, %19
  %175 = fdiv double %174, %20
  %176 = fdiv double %175, %21
  %177 = fdiv double %176, %22
  %178 = fdiv double %177, %23
  %179 = fdiv double %178, %24
  %180 = fdiv double %179, %25
  %181 = fdiv double %180, %26
  %182 = fdiv double %181, %27
  %183 = fdiv double %182, %28
  %184 = fdiv double %183, %29
  %185 = fdiv double %184, %30
  %186 = fdiv double %185, %31
  %187 = fdiv double %186, %32
  %188 = fdiv double %187, %33
  %189 = fdiv double %188, %34
  %190 = fdiv double %189, %35
  %191 = fdiv double %190, %36
  %192 = fdiv double %191, %37
  %193 = fdiv double %192, %38
  %194 = fdiv double %193, %39
  %195 = fdiv double %194, %40
  %196 = fdiv double %195, %41
  %197 = fdiv double %196, %42
  %198 = fdiv double %197, %43
  %199 = fdiv double %198, %160
  %200 = bitcast double %160 to i64
  %201 = trunc i64 %200 to i32
  %202 = sdiv i32 %0, %44
  %203 = sdiv i32 %202, %45
  %204 = sdiv i32 %203, %46
  %205 = sdiv i32 %204, %47
  %206 = sdiv i32 %205, %48
  %207 = sdiv i32 %206, %49
  %208 = sdiv i32 %207, %50
  %209 = sdiv i32 %208, %51
  %210 = sdiv i32 %209, %52
  %211 = sdiv i32 %210, %53
  %212 = sdiv i32 %211, %54
  %213 = sdiv i32 %212, %55
  %214 = sdiv i32 %213, %56
  %215 = sdiv i32 %214, %57
  %216 = sdiv i32 %215, %58
  %217 = sdiv i32 %216, %59
  %218 = sdiv i32 %217, %60
  %219 = sdiv i32 %218, %61
  %220 = sdiv i32 %219, %62
  %221 = sdiv i32 %220, %63
  %222 = sdiv i32 %221, %64
  %223 = sdiv i32 %222, %65
  %224 = sdiv i32 %223, %66
  %225 = sdiv i32 %224, %67
  %226 = sdiv i32 %225, %68
  %227 = sdiv i32 %226, %69
  %228 = sdiv i32 %227, %70
  %229 = sdiv i32 %228, %71
  %230 = sdiv i32 %229, %72
  %231 = sdiv i32 %230, %73
  %232 = sdiv i32 %231, %74
  %233 = sdiv i32 %232, %75
  %234 = sdiv i32 %233, %76
  %235 = sdiv i32 %234, %77
  %236 = sdiv i32 %235, %78
  %237 = sdiv i32 %236, %79
  %238 = sdiv i32 %237, %80
  %239 = sdiv i32 %238, %81
  %240 = sdiv i32 %239, %201
  %241 = sitofp i32 %240 to double
  %242 = fadd double %199, %241
  %243 = fptosi double %242 to i32
  %244 = load volatile i32, ptr %1, align 4, !tbaa !7
  %245 = add nsw i32 %244, %243
  store volatile i32 %245, ptr %1, align 4, !tbaa !7
  %246 = load ptr, ptr %4, align 8, !tbaa !40
  %247 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %246, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 2, i1 noundef zeroext false, i32 poison, i32 noundef 2048, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef -1) #23
          to label %248 unwind label %254

248:                                              ; preds = %2
  %249 = load ptr, ptr %4, align 8, !tbaa !40
  %250 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %251 = icmp eq ptr %249, %250
  br i1 %251, label %253, label %252

252:                                              ; preds = %248
  call void @_ZdlPv(ptr noundef %249) #24
  br label %253

253:                                              ; preds = %252, %248
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %247

254:                                              ; preds = %2
  %255 = landingpad { ptr, i32 }
          cleanup
  %256 = load ptr, ptr %4, align 8, !tbaa !40
  %257 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %258 = icmp eq ptr %256, %257
  br i1 %258, label %260, label %259

259:                                              ; preds = %254
  call void @_ZdlPv(ptr noundef %256) #24
  br label %260

260:                                              ; preds = %259, %254
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %255
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb1ELb1ELb0ELb1ELb0EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  call void @_Z10test_frameILj4096ELb1ELj2048ELb0ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
  %160 = load double, ptr %3, align 16
  %161 = fdiv double %5, %6
  %162 = fdiv double %161, %7
  %163 = fdiv double %162, %8
  %164 = fdiv double %163, %9
  %165 = fdiv double %164, %10
  %166 = fdiv double %165, %11
  %167 = fdiv double %166, %12
  %168 = fdiv double %167, %13
  %169 = fdiv double %168, %14
  %170 = fdiv double %169, %15
  %171 = fdiv double %170, %16
  %172 = fdiv double %171, %17
  %173 = fdiv double %172, %18
  %174 = fdiv double %173, %19
  %175 = fdiv double %174, %20
  %176 = fdiv double %175, %21
  %177 = fdiv double %176, %22
  %178 = fdiv double %177, %23
  %179 = fdiv double %178, %24
  %180 = fdiv double %179, %25
  %181 = fdiv double %180, %26
  %182 = fdiv double %181, %27
  %183 = fdiv double %182, %28
  %184 = fdiv double %183, %29
  %185 = fdiv double %184, %30
  %186 = fdiv double %185, %31
  %187 = fdiv double %186, %32
  %188 = fdiv double %187, %33
  %189 = fdiv double %188, %34
  %190 = fdiv double %189, %35
  %191 = fdiv double %190, %36
  %192 = fdiv double %191, %37
  %193 = fdiv double %192, %38
  %194 = fdiv double %193, %39
  %195 = fdiv double %194, %40
  %196 = fdiv double %195, %41
  %197 = fdiv double %196, %42
  %198 = fdiv double %197, %43
  %199 = fdiv double %198, %160
  %200 = bitcast double %160 to i64
  %201 = trunc i64 %200 to i32
  %202 = sdiv i32 %0, %44
  %203 = sdiv i32 %202, %45
  %204 = sdiv i32 %203, %46
  %205 = sdiv i32 %204, %47
  %206 = sdiv i32 %205, %48
  %207 = sdiv i32 %206, %49
  %208 = sdiv i32 %207, %50
  %209 = sdiv i32 %208, %51
  %210 = sdiv i32 %209, %52
  %211 = sdiv i32 %210, %53
  %212 = sdiv i32 %211, %54
  %213 = sdiv i32 %212, %55
  %214 = sdiv i32 %213, %56
  %215 = sdiv i32 %214, %57
  %216 = sdiv i32 %215, %58
  %217 = sdiv i32 %216, %59
  %218 = sdiv i32 %217, %60
  %219 = sdiv i32 %218, %61
  %220 = sdiv i32 %219, %62
  %221 = sdiv i32 %220, %63
  %222 = sdiv i32 %221, %64
  %223 = sdiv i32 %222, %65
  %224 = sdiv i32 %223, %66
  %225 = sdiv i32 %224, %67
  %226 = sdiv i32 %225, %68
  %227 = sdiv i32 %226, %69
  %228 = sdiv i32 %227, %70
  %229 = sdiv i32 %228, %71
  %230 = sdiv i32 %229, %72
  %231 = sdiv i32 %230, %73
  %232 = sdiv i32 %231, %74
  %233 = sdiv i32 %232, %75
  %234 = sdiv i32 %233, %76
  %235 = sdiv i32 %234, %77
  %236 = sdiv i32 %235, %78
  %237 = sdiv i32 %236, %79
  %238 = sdiv i32 %237, %80
  %239 = sdiv i32 %238, %81
  %240 = sdiv i32 %239, %201
  %241 = sitofp i32 %240 to double
  %242 = fadd double %199, %241
  %243 = fptosi double %242 to i32
  %244 = load volatile i32, ptr %1, align 4, !tbaa !7
  %245 = add nsw i32 %244, %243
  store volatile i32 %245, ptr %1, align 4, !tbaa !7
  %246 = load ptr, ptr %4, align 8, !tbaa !40
  %247 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %246, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 4096, i1 noundef zeroext true, i32 poison, i32 noundef 2048, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef -1) #23
          to label %248 unwind label %254

248:                                              ; preds = %2
  %249 = load ptr, ptr %4, align 8, !tbaa !40
  %250 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %251 = icmp eq ptr %249, %250
  br i1 %251, label %253, label %252

252:                                              ; preds = %248
  call void @_ZdlPv(ptr noundef %249) #24
  br label %253

253:                                              ; preds = %252, %248
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %247

254:                                              ; preds = %2
  %255 = landingpad { ptr, i32 }
          cleanup
  %256 = load ptr, ptr %4, align 8, !tbaa !40
  %257 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %258 = icmp eq ptr %256, %257
  br i1 %258, label %260, label %259

259:                                              ; preds = %254
  call void @_ZdlPv(ptr noundef %256) #24
  br label %260

260:                                              ; preds = %259, %254
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %255
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb0ELb1ELb0ELb1ELb0EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  call void @_Z10test_frameILj2ELb1ELj2048ELb0ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
  %160 = load double, ptr %3, align 16
  %161 = fdiv double %5, %6
  %162 = fdiv double %161, %7
  %163 = fdiv double %162, %8
  %164 = fdiv double %163, %9
  %165 = fdiv double %164, %10
  %166 = fdiv double %165, %11
  %167 = fdiv double %166, %12
  %168 = fdiv double %167, %13
  %169 = fdiv double %168, %14
  %170 = fdiv double %169, %15
  %171 = fdiv double %170, %16
  %172 = fdiv double %171, %17
  %173 = fdiv double %172, %18
  %174 = fdiv double %173, %19
  %175 = fdiv double %174, %20
  %176 = fdiv double %175, %21
  %177 = fdiv double %176, %22
  %178 = fdiv double %177, %23
  %179 = fdiv double %178, %24
  %180 = fdiv double %179, %25
  %181 = fdiv double %180, %26
  %182 = fdiv double %181, %27
  %183 = fdiv double %182, %28
  %184 = fdiv double %183, %29
  %185 = fdiv double %184, %30
  %186 = fdiv double %185, %31
  %187 = fdiv double %186, %32
  %188 = fdiv double %187, %33
  %189 = fdiv double %188, %34
  %190 = fdiv double %189, %35
  %191 = fdiv double %190, %36
  %192 = fdiv double %191, %37
  %193 = fdiv double %192, %38
  %194 = fdiv double %193, %39
  %195 = fdiv double %194, %40
  %196 = fdiv double %195, %41
  %197 = fdiv double %196, %42
  %198 = fdiv double %197, %43
  %199 = fdiv double %198, %160
  %200 = bitcast double %160 to i64
  %201 = trunc i64 %200 to i32
  %202 = sdiv i32 %0, %44
  %203 = sdiv i32 %202, %45
  %204 = sdiv i32 %203, %46
  %205 = sdiv i32 %204, %47
  %206 = sdiv i32 %205, %48
  %207 = sdiv i32 %206, %49
  %208 = sdiv i32 %207, %50
  %209 = sdiv i32 %208, %51
  %210 = sdiv i32 %209, %52
  %211 = sdiv i32 %210, %53
  %212 = sdiv i32 %211, %54
  %213 = sdiv i32 %212, %55
  %214 = sdiv i32 %213, %56
  %215 = sdiv i32 %214, %57
  %216 = sdiv i32 %215, %58
  %217 = sdiv i32 %216, %59
  %218 = sdiv i32 %217, %60
  %219 = sdiv i32 %218, %61
  %220 = sdiv i32 %219, %62
  %221 = sdiv i32 %220, %63
  %222 = sdiv i32 %221, %64
  %223 = sdiv i32 %222, %65
  %224 = sdiv i32 %223, %66
  %225 = sdiv i32 %224, %67
  %226 = sdiv i32 %225, %68
  %227 = sdiv i32 %226, %69
  %228 = sdiv i32 %227, %70
  %229 = sdiv i32 %228, %71
  %230 = sdiv i32 %229, %72
  %231 = sdiv i32 %230, %73
  %232 = sdiv i32 %231, %74
  %233 = sdiv i32 %232, %75
  %234 = sdiv i32 %233, %76
  %235 = sdiv i32 %234, %77
  %236 = sdiv i32 %235, %78
  %237 = sdiv i32 %236, %79
  %238 = sdiv i32 %237, %80
  %239 = sdiv i32 %238, %81
  %240 = sdiv i32 %239, %201
  %241 = sitofp i32 %240 to double
  %242 = fadd double %199, %241
  %243 = fptosi double %242 to i32
  %244 = load volatile i32, ptr %1, align 4, !tbaa !7
  %245 = add nsw i32 %244, %243
  store volatile i32 %245, ptr %1, align 4, !tbaa !7
  %246 = load ptr, ptr %4, align 8, !tbaa !40
  %247 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %246, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 2, i1 noundef zeroext true, i32 poison, i32 noundef 2048, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef -1) #23
          to label %248 unwind label %254

248:                                              ; preds = %2
  %249 = load ptr, ptr %4, align 8, !tbaa !40
  %250 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %251 = icmp eq ptr %249, %250
  br i1 %251, label %253, label %252

252:                                              ; preds = %248
  call void @_ZdlPv(ptr noundef %249) #24
  br label %253

253:                                              ; preds = %252, %248
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %247

254:                                              ; preds = %2
  %255 = landingpad { ptr, i32 }
          cleanup
  %256 = load ptr, ptr %4, align 8, !tbaa !40
  %257 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %258 = icmp eq ptr %256, %257
  br i1 %258, label %260, label %259

259:                                              ; preds = %254
  call void @_ZdlPv(ptr noundef %256) #24
  br label %260

260:                                              ; preds = %259, %254
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %255
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb1ELb0ELb1ELb1ELb0EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj4096ELb0ELj2048ELb1ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 4096, i1 noundef zeroext false, i32 poison, i32 noundef 2048, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb0ELb0ELb1ELb1ELb0EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj2ELb0ELj2048ELb1ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 2, i1 noundef zeroext false, i32 poison, i32 noundef 2048, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb1ELb1ELb1ELb1ELb0EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj4096ELb1ELj2048ELb1ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 4096, i1 noundef zeroext true, i32 poison, i32 noundef 2048, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb0ELb1ELb1ELb1ELb0EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj2ELb1ELj2048ELb1ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 2, i1 noundef zeroext true, i32 poison, i32 noundef 2048, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb1ELb0ELb0ELb0ELb1EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj4096ELb0ELj2048ELb0ELb1EJEEvDpT4_jPKcP13trace_elementd(i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 4096, i1 noundef zeroext false, i32 poison, i32 noundef 2048, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb0ELb0ELb0ELb0ELb1EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj2ELb0ELj2048ELb0ELb1EJEEvDpT4_jPKcP13trace_elementd(i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 2, i1 noundef zeroext false, i32 poison, i32 noundef 2048, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb1ELb1ELb0ELb0ELb1EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj4096ELb1ELj2048ELb0ELb1EJEEvDpT4_jPKcP13trace_elementd(i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 4096, i1 noundef zeroext true, i32 poison, i32 noundef 2048, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb0ELb1ELb0ELb0ELb1EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj2ELb1ELj2048ELb0ELb1EJEEvDpT4_jPKcP13trace_elementd(i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 2, i1 noundef zeroext true, i32 poison, i32 noundef 2048, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb1ELb0ELb1ELb0ELb1EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj4096ELb0ELj2048ELb1ELb1EJEEvDpT4_jPKcP13trace_elementd(i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 4096, i1 noundef zeroext false, i32 poison, i32 noundef 2048, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb0ELb0ELb1ELb0ELb1EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj2ELb0ELj2048ELb1ELb1EJEEvDpT4_jPKcP13trace_elementd(i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 2, i1 noundef zeroext false, i32 poison, i32 noundef 2048, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb1ELb1ELb1ELb0ELb1EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj4096ELb1ELj2048ELb1ELb1EJEEvDpT4_jPKcP13trace_elementd(i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 4096, i1 noundef zeroext true, i32 poison, i32 noundef 2048, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb0ELb1ELb1ELb0ELb1EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj2ELb1ELj2048ELb1ELb1EJEEvDpT4_jPKcP13trace_elementd(i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 2, i1 noundef zeroext true, i32 poison, i32 noundef 2048, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb1ELb0ELb0ELb1ELb1EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj4096ELb0ELj2048ELb0ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 4096, i1 noundef zeroext false, i32 poison, i32 noundef 2048, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb0ELb0ELb0ELb1ELb1EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj2ELb0ELj2048ELb0ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 2, i1 noundef zeroext false, i32 poison, i32 noundef 2048, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb1ELb1ELb0ELb1ELb1EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj4096ELb1ELj2048ELb0ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 4096, i1 noundef zeroext true, i32 poison, i32 noundef 2048, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb0ELb1ELb0ELb1ELb1EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj2ELb1ELj2048ELb0ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 2, i1 noundef zeroext true, i32 poison, i32 noundef 2048, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb1ELb0ELb1ELb1ELb1EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj4096ELb0ELj2048ELb1ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 4096, i1 noundef zeroext false, i32 poison, i32 noundef 2048, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb0ELb0ELb1ELb1ELb1EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj2ELb0ELj2048ELb1ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 2, i1 noundef zeroext false, i32 poison, i32 noundef 2048, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb1ELb1ELb1ELb1ELb1EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj4096ELb1ELj2048ELb1ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 4096, i1 noundef zeroext true, i32 poison, i32 noundef 2048, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal noundef zeroext i1 @_Z19check_frame_variantILb0ELb1ELb1ELb1ELb1EEbiRVi(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #13 comdat personality ptr @__gxx_personality_v0 {
  %3 = alloca [100 x %union.trace_element], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_Z24getTestDescriptionStringB5cxx11bbbbb(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) #23
  %5 = sitofp i32 %0 to double
  %6 = fadd double %5, %5
  %7 = fadd double %6, %5
  %8 = fadd double %7, %5
  %9 = fadd double %8, %5
  %10 = fadd double %9, %5
  %11 = fadd double %10, %5
  %12 = fadd double %11, %5
  %13 = fadd double %12, %5
  %14 = fadd double %13, %5
  %15 = fadd double %14, %5
  %16 = fadd double %15, %5
  %17 = fadd double %16, %5
  %18 = fadd double %17, %5
  %19 = fadd double %18, %5
  %20 = fadd double %19, %5
  %21 = fadd double %20, %5
  %22 = fadd double %21, %5
  %23 = fadd double %22, %5
  %24 = fadd double %23, %5
  %25 = fadd double %24, %5
  %26 = fadd double %25, %5
  %27 = fadd double %26, %5
  %28 = fadd double %27, %5
  %29 = fadd double %28, %5
  %30 = fadd double %29, %5
  %31 = fadd double %30, %5
  %32 = fadd double %31, %5
  %33 = fadd double %32, %5
  %34 = fadd double %33, %5
  %35 = fadd double %34, %5
  %36 = fadd double %35, %5
  %37 = fadd double %36, %5
  %38 = fadd double %37, %5
  %39 = fadd double %38, %5
  %40 = fadd double %39, %5
  %41 = fadd double %40, %5
  %42 = fadd double %41, %5
  %43 = fadd double %42, %5
  %44 = shl nsw i32 %0, 1
  %45 = mul nsw i32 %0, 3
  %46 = shl nsw i32 %0, 2
  %47 = mul nsw i32 %0, 5
  %48 = mul nsw i32 %0, 6
  %49 = mul nsw i32 %0, 7
  %50 = shl nsw i32 %0, 3
  %51 = mul nsw i32 %0, 9
  %52 = mul nsw i32 %0, 10
  %53 = mul nsw i32 %0, 11
  %54 = mul nsw i32 %0, 12
  %55 = mul nsw i32 %0, 13
  %56 = mul nsw i32 %0, 14
  %57 = mul nsw i32 %0, 15
  %58 = shl nsw i32 %0, 4
  %59 = mul nsw i32 %0, 17
  %60 = mul nsw i32 %0, 18
  %61 = mul nsw i32 %0, 19
  %62 = mul nsw i32 %0, 20
  %63 = mul nsw i32 %0, 21
  %64 = mul nsw i32 %0, 22
  %65 = mul nsw i32 %0, 23
  %66 = mul nsw i32 %0, 24
  %67 = mul nsw i32 %0, 25
  %68 = mul nsw i32 %0, 26
  %69 = mul nsw i32 %0, 27
  %70 = mul nsw i32 %0, 28
  %71 = mul nsw i32 %0, 29
  %72 = mul nsw i32 %0, 30
  %73 = mul nsw i32 %0, 31
  %74 = shl nsw i32 %0, 5
  %75 = mul nsw i32 %0, 33
  %76 = mul nsw i32 %0, 34
  %77 = mul nsw i32 %0, 35
  %78 = mul nsw i32 %0, 36
  %79 = mul nsw i32 %0, 37
  %80 = mul nsw i32 %0, 38
  %81 = mul nsw i32 %0, 39
  %82 = fdiv double %43, %42
  %83 = fdiv double %82, %41
  %84 = fdiv double %83, %40
  %85 = fdiv double %84, %39
  %86 = fdiv double %85, %38
  %87 = fdiv double %86, %37
  %88 = fdiv double %87, %36
  %89 = fdiv double %88, %35
  %90 = fdiv double %89, %34
  %91 = fdiv double %90, %33
  %92 = fdiv double %91, %32
  %93 = fdiv double %92, %31
  %94 = fdiv double %93, %30
  %95 = fdiv double %94, %29
  %96 = fdiv double %95, %28
  %97 = fdiv double %96, %27
  %98 = fdiv double %97, %26
  %99 = fdiv double %98, %25
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %23
  %102 = fdiv double %101, %22
  %103 = fdiv double %102, %21
  %104 = fdiv double %103, %20
  %105 = fdiv double %104, %19
  %106 = fdiv double %105, %18
  %107 = fdiv double %106, %17
  %108 = fdiv double %107, %16
  %109 = fdiv double %108, %15
  %110 = fdiv double %109, %14
  %111 = fdiv double %110, %13
  %112 = fdiv double %111, %12
  %113 = fdiv double %112, %11
  %114 = fdiv double %113, %10
  %115 = fdiv double %114, %9
  %116 = fdiv double %115, %8
  %117 = fdiv double %116, %7
  %118 = fdiv double %117, %6
  %119 = fdiv double %118, %5
  %120 = sdiv i32 %81, %80
  %121 = sdiv i32 %120, %79
  %122 = sdiv i32 %121, %78
  %123 = sdiv i32 %122, %77
  %124 = sdiv i32 %123, %76
  %125 = sdiv i32 %124, %75
  %126 = sdiv i32 %125, %74
  %127 = sdiv i32 %126, %73
  %128 = sdiv i32 %127, %72
  %129 = sdiv i32 %128, %71
  %130 = sdiv i32 %129, %70
  %131 = sdiv i32 %130, %69
  %132 = sdiv i32 %131, %68
  %133 = sdiv i32 %132, %67
  %134 = sdiv i32 %133, %66
  %135 = sdiv i32 %134, %65
  %136 = sdiv i32 %135, %64
  %137 = sdiv i32 %136, %63
  %138 = sdiv i32 %137, %62
  %139 = sdiv i32 %138, %61
  %140 = sdiv i32 %139, %60
  %141 = sdiv i32 %140, %59
  %142 = sdiv i32 %141, %58
  %143 = sdiv i32 %142, %57
  %144 = sdiv i32 %143, %56
  %145 = sdiv i32 %144, %55
  %146 = sdiv i32 %145, %54
  %147 = sdiv i32 %146, %53
  %148 = sdiv i32 %147, %52
  %149 = sdiv i32 %148, %51
  %150 = sdiv i32 %149, %50
  %151 = sdiv i32 %150, %49
  %152 = sdiv i32 %151, %48
  %153 = sdiv i32 %152, %47
  %154 = sdiv i32 %153, %46
  %155 = sdiv i32 %154, %45
  %156 = sdiv i32 %155, %44
  %157 = sdiv i32 %156, %0
  %158 = sitofp i32 %157 to double
  %159 = fadd double %119, %158
  invoke void @_Z10test_frameILj2ELb1ELj2048ELb1ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 100, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159) #23
          to label %160 unwind label %247

160:                                              ; preds = %2
  %161 = load double, ptr %3, align 16
  %162 = fdiv double %5, %6
  %163 = fdiv double %162, %7
  %164 = fdiv double %163, %8
  %165 = fdiv double %164, %9
  %166 = fdiv double %165, %10
  %167 = fdiv double %166, %11
  %168 = fdiv double %167, %12
  %169 = fdiv double %168, %13
  %170 = fdiv double %169, %14
  %171 = fdiv double %170, %15
  %172 = fdiv double %171, %16
  %173 = fdiv double %172, %17
  %174 = fdiv double %173, %18
  %175 = fdiv double %174, %19
  %176 = fdiv double %175, %20
  %177 = fdiv double %176, %21
  %178 = fdiv double %177, %22
  %179 = fdiv double %178, %23
  %180 = fdiv double %179, %24
  %181 = fdiv double %180, %25
  %182 = fdiv double %181, %26
  %183 = fdiv double %182, %27
  %184 = fdiv double %183, %28
  %185 = fdiv double %184, %29
  %186 = fdiv double %185, %30
  %187 = fdiv double %186, %31
  %188 = fdiv double %187, %32
  %189 = fdiv double %188, %33
  %190 = fdiv double %189, %34
  %191 = fdiv double %190, %35
  %192 = fdiv double %191, %36
  %193 = fdiv double %192, %37
  %194 = fdiv double %193, %38
  %195 = fdiv double %194, %39
  %196 = fdiv double %195, %40
  %197 = fdiv double %196, %41
  %198 = fdiv double %197, %42
  %199 = fdiv double %198, %43
  %200 = fdiv double %199, %161
  %201 = bitcast double %161 to i64
  %202 = trunc i64 %201 to i32
  %203 = sdiv i32 %0, %44
  %204 = sdiv i32 %203, %45
  %205 = sdiv i32 %204, %46
  %206 = sdiv i32 %205, %47
  %207 = sdiv i32 %206, %48
  %208 = sdiv i32 %207, %49
  %209 = sdiv i32 %208, %50
  %210 = sdiv i32 %209, %51
  %211 = sdiv i32 %210, %52
  %212 = sdiv i32 %211, %53
  %213 = sdiv i32 %212, %54
  %214 = sdiv i32 %213, %55
  %215 = sdiv i32 %214, %56
  %216 = sdiv i32 %215, %57
  %217 = sdiv i32 %216, %58
  %218 = sdiv i32 %217, %59
  %219 = sdiv i32 %218, %60
  %220 = sdiv i32 %219, %61
  %221 = sdiv i32 %220, %62
  %222 = sdiv i32 %221, %63
  %223 = sdiv i32 %222, %64
  %224 = sdiv i32 %223, %65
  %225 = sdiv i32 %224, %66
  %226 = sdiv i32 %225, %67
  %227 = sdiv i32 %226, %68
  %228 = sdiv i32 %227, %69
  %229 = sdiv i32 %228, %70
  %230 = sdiv i32 %229, %71
  %231 = sdiv i32 %230, %72
  %232 = sdiv i32 %231, %73
  %233 = sdiv i32 %232, %74
  %234 = sdiv i32 %233, %75
  %235 = sdiv i32 %234, %76
  %236 = sdiv i32 %235, %77
  %237 = sdiv i32 %236, %78
  %238 = sdiv i32 %237, %79
  %239 = sdiv i32 %238, %80
  %240 = sdiv i32 %239, %81
  %241 = sdiv i32 %240, %202
  %242 = sitofp i32 %241 to double
  %243 = fadd double %200, %242
  %244 = fptosi double %243 to i32
  %245 = load volatile i32, ptr %1, align 4, !tbaa !7
  %246 = add nsw i32 %245, %244
  store volatile i32 %246, ptr %1, align 4, !tbaa !7
  br label %256

247:                                              ; preds = %2
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIi
  %249 = extractvalue { ptr, i32 } %248, 1
  %250 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIi) #21
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %268

252:                                              ; preds = %247
  %253 = extractvalue { ptr, i32 } %248, 0
  %254 = call ptr @__cxa_begin_catch(ptr %253) #21
  %255 = load i32, ptr %254, align 4, !tbaa !7
  call void @__cxa_end_catch() #21
  br label %256

256:                                              ; preds = %252, %160
  %257 = phi i32 [ -1, %160 ], [ %255, %252 ]
  %258 = load ptr, ptr %4, align 8, !tbaa !40
  %259 = invoke noundef zeroext i1 @_Z11check_tracePKcS0_PK13trace_elementdjbjjbbi(ptr noundef %258, ptr noundef nonnull @.str.37, ptr noundef nonnull %3, double noundef %159, i32 noundef 2, i1 noundef zeroext true, i32 poison, i32 noundef 2048, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %257) #23
          to label %260 unwind label %266

260:                                              ; preds = %256
  %261 = load ptr, ptr %4, align 8, !tbaa !40
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call void @_ZdlPv(ptr noundef %261) #24
  br label %265

265:                                              ; preds = %264, %260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  ret i1 %259

266:                                              ; preds = %256
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %268

268:                                              ; preds = %266, %247
  %269 = phi { ptr, i32 } [ %267, %266 ], [ %248, %247 ]
  %270 = load ptr, ptr %4, align 8, !tbaa !40
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %272 = icmp eq ptr %270, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %270) #24
  br label %274

274:                                              ; preds = %273, %268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #21
  resume { ptr, i32 } %269
}

; Function Attrs: noinline optsize uwtable
define internal void @_Z10test_frameILj2ELb1ELj2048ELb1ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, double noundef %20, double noundef %21, double noundef %22, double noundef %23, double noundef %24, double noundef %25, double noundef %26, double noundef %27, double noundef %28, double noundef %29, double noundef %30, double noundef %31, double noundef %32, double noundef %33, double noundef %34, double noundef %35, double noundef %36, double noundef %37, double noundef %38, double noundef %39, i32 noundef %40, ptr noundef %41, ptr noundef %42, double noundef %43) #13 comdat {
  %45 = alloca i32, align 4
  %46 = alloca double, align 8
  %47 = getelementptr inbounds %union.trace_element, ptr %42, i64 1
  store double %43, ptr %42, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #21
  %48 = getelementptr inbounds i8, ptr %41, i64 1
  %49 = load i8, ptr %41, align 1, !tbaa !12
  %50 = sext i8 %49 to i32
  store volatile i32 %50, ptr %45, align 4, !tbaa !7
  %51 = getelementptr inbounds i8, ptr %41, i64 2
  %52 = load i8, ptr %48, align 1, !tbaa !12
  %53 = sitofp i8 %52 to double
  store volatile double %53, ptr %46, align 8, !tbaa !57
  %54 = load volatile i32, ptr %45, align 4, !tbaa !7
  %55 = getelementptr inbounds %union.trace_element, ptr %42, i64 2
  store i32 %54, ptr %47, align 8, !tbaa !12
  %56 = getelementptr inbounds %union.trace_element, ptr %42, i64 3
  store ptr %45, ptr %55, align 8, !tbaa !12
  %57 = load volatile double, ptr %46, align 8, !tbaa !57
  %58 = getelementptr inbounds %union.trace_element, ptr %42, i64 4
  store double %57, ptr %56, align 8, !tbaa !12
  %59 = getelementptr inbounds %union.trace_element, ptr %42, i64 5
  store ptr %46, ptr %58, align 8, !tbaa !12
  %60 = zext i32 %40 to i64
  %61 = call ptr @llvm.stacksave()
  %62 = alloca i8, i64 %60, align 2048
  %63 = getelementptr inbounds i8, ptr %41, i64 3
  %64 = load i8, ptr %51, align 1, !tbaa !12
  store volatile i8 %64, ptr %62, align 2048, !tbaa !12
  %65 = load i8, ptr %63, align 1, !tbaa !12
  %66 = add i32 %40, -1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %62, i64 %67
  store volatile i8 %65, ptr %68, align 1, !tbaa !12
  %69 = load volatile i8, ptr %62, align 2048, !tbaa !12
  %70 = sext i8 %69 to i32
  %71 = getelementptr inbounds %union.trace_element, ptr %42, i64 6
  store i32 %70, ptr %59, align 8, !tbaa !12
  %72 = getelementptr inbounds %union.trace_element, ptr %42, i64 7
  store ptr %62, ptr %71, align 8, !tbaa !12
  %73 = load volatile i8, ptr %68, align 1, !tbaa !12
  %74 = sext i8 %73 to i32
  %75 = getelementptr inbounds %union.trace_element, ptr %42, i64 8
  store i32 %74, ptr %72, align 8, !tbaa !12
  %76 = getelementptr inbounds %union.trace_element, ptr %42, i64 9
  store ptr %68, ptr %75, align 8, !tbaa !12
  call void @llvm.stackrestore(ptr %61)
  %77 = call i32 @_wyvern_slice__Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__189058803(ptr %41)
  %78 = getelementptr inbounds %union.trace_element, ptr %42, i64 10
  store i32 %77, ptr %76, align 8, !tbaa !12
  %79 = call double @_wyvern_slice__Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__264686497(ptr %41)
  store double %79, ptr %78, align 8, !tbaa !12
  call void @_Z27function_throwing_exceptionv() #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #21
  ret void
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #16

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #17

; Function Attrs: noinline optsize uwtable
define internal void @_Z10test_frameILj4096ELb1ELj2048ELb1ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, double noundef %20, double noundef %21, double noundef %22, double noundef %23, double noundef %24, double noundef %25, double noundef %26, double noundef %27, double noundef %28, double noundef %29, double noundef %30, double noundef %31, double noundef %32, double noundef %33, double noundef %34, double noundef %35, double noundef %36, double noundef %37, double noundef %38, double noundef %39, i32 noundef %40, ptr noundef %41, ptr noundef %42, double noundef %43) #13 comdat {
  %45 = alloca i32, align 4096
  %46 = alloca double, align 4096
  %47 = getelementptr inbounds %union.trace_element, ptr %42, i64 1
  store double %43, ptr %42, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #21
  %48 = getelementptr inbounds i8, ptr %41, i64 1
  %49 = load i8, ptr %41, align 1, !tbaa !12
  %50 = sext i8 %49 to i32
  store volatile i32 %50, ptr %45, align 4096, !tbaa !7
  %51 = getelementptr inbounds i8, ptr %41, i64 2
  %52 = load i8, ptr %48, align 1, !tbaa !12
  %53 = sitofp i8 %52 to double
  store volatile double %53, ptr %46, align 4096, !tbaa !57
  %54 = load volatile i32, ptr %45, align 4096, !tbaa !7
  %55 = getelementptr inbounds %union.trace_element, ptr %42, i64 2
  store i32 %54, ptr %47, align 8, !tbaa !12
  %56 = getelementptr inbounds %union.trace_element, ptr %42, i64 3
  store ptr %45, ptr %55, align 8, !tbaa !12
  %57 = load volatile double, ptr %46, align 4096, !tbaa !57
  %58 = getelementptr inbounds %union.trace_element, ptr %42, i64 4
  store double %57, ptr %56, align 8, !tbaa !12
  %59 = getelementptr inbounds %union.trace_element, ptr %42, i64 5
  store ptr %46, ptr %58, align 8, !tbaa !12
  %60 = zext i32 %40 to i64
  %61 = call ptr @llvm.stacksave()
  %62 = alloca i8, i64 %60, align 2048
  %63 = getelementptr inbounds i8, ptr %41, i64 3
  %64 = load i8, ptr %51, align 1, !tbaa !12
  store volatile i8 %64, ptr %62, align 2048, !tbaa !12
  %65 = load i8, ptr %63, align 1, !tbaa !12
  %66 = add i32 %40, -1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %62, i64 %67
  store volatile i8 %65, ptr %68, align 1, !tbaa !12
  %69 = load volatile i8, ptr %62, align 2048, !tbaa !12
  %70 = sext i8 %69 to i32
  %71 = getelementptr inbounds %union.trace_element, ptr %42, i64 6
  store i32 %70, ptr %59, align 8, !tbaa !12
  %72 = getelementptr inbounds %union.trace_element, ptr %42, i64 7
  store ptr %62, ptr %71, align 8, !tbaa !12
  %73 = load volatile i8, ptr %68, align 1, !tbaa !12
  %74 = sext i8 %73 to i32
  %75 = getelementptr inbounds %union.trace_element, ptr %42, i64 8
  store i32 %74, ptr %72, align 8, !tbaa !12
  %76 = getelementptr inbounds %union.trace_element, ptr %42, i64 9
  store ptr %68, ptr %75, align 8, !tbaa !12
  call void @llvm.stackrestore(ptr %61)
  %77 = call i32 @_wyvern_slice__Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__189058803(ptr %41)
  %78 = getelementptr inbounds %union.trace_element, ptr %42, i64 10
  store i32 %77, ptr %76, align 8, !tbaa !12
  %79 = call double @_wyvern_slice__Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__264686497(ptr %41)
  store double %79, ptr %78, align 8, !tbaa !12
  call void @_Z27function_throwing_exceptionv() #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_Z10test_frameILj2ELb0ELj2048ELb1ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, double noundef %20, double noundef %21, double noundef %22, double noundef %23, double noundef %24, double noundef %25, double noundef %26, double noundef %27, double noundef %28, double noundef %29, double noundef %30, double noundef %31, double noundef %32, double noundef %33, double noundef %34, double noundef %35, double noundef %36, double noundef %37, double noundef %38, double noundef %39, i32 noundef %40, ptr noundef %41, ptr noundef %42, double noundef %43) #13 comdat {
  %45 = alloca i32, align 4
  %46 = alloca double, align 8
  %47 = getelementptr inbounds %union.trace_element, ptr %42, i64 1
  store double %43, ptr %42, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #21
  %48 = getelementptr inbounds i8, ptr %41, i64 1
  %49 = load i8, ptr %41, align 1, !tbaa !12
  %50 = sext i8 %49 to i32
  store volatile i32 %50, ptr %45, align 4, !tbaa !7
  %51 = load i8, ptr %48, align 1, !tbaa !12
  %52 = sitofp i8 %51 to double
  store volatile double %52, ptr %46, align 8, !tbaa !57
  %53 = load volatile i32, ptr %45, align 4, !tbaa !7
  %54 = getelementptr inbounds %union.trace_element, ptr %42, i64 2
  store i32 %53, ptr %47, align 8, !tbaa !12
  %55 = getelementptr inbounds %union.trace_element, ptr %42, i64 3
  store ptr %45, ptr %54, align 8, !tbaa !12
  %56 = load volatile double, ptr %46, align 8, !tbaa !57
  %57 = getelementptr inbounds %union.trace_element, ptr %42, i64 4
  store double %56, ptr %55, align 8, !tbaa !12
  %58 = getelementptr inbounds %union.trace_element, ptr %42, i64 5
  store ptr %46, ptr %57, align 8, !tbaa !12
  %59 = call i32 @_wyvern_slice__Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__461115967(ptr %41)
  %60 = getelementptr inbounds %union.trace_element, ptr %42, i64 6
  store i32 %59, ptr %58, align 8, !tbaa !12
  %61 = call double @_wyvern_slice__Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__248217697(ptr %41)
  store double %61, ptr %60, align 8, !tbaa !12
  call void @_Z27function_throwing_exceptionv() #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_Z10test_frameILj4096ELb0ELj2048ELb1ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, double noundef %20, double noundef %21, double noundef %22, double noundef %23, double noundef %24, double noundef %25, double noundef %26, double noundef %27, double noundef %28, double noundef %29, double noundef %30, double noundef %31, double noundef %32, double noundef %33, double noundef %34, double noundef %35, double noundef %36, double noundef %37, double noundef %38, double noundef %39, i32 noundef %40, ptr noundef %41, ptr noundef %42, double noundef %43) #13 comdat {
  %45 = alloca i32, align 4096
  %46 = alloca double, align 4096
  %47 = getelementptr inbounds %union.trace_element, ptr %42, i64 1
  store double %43, ptr %42, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #21
  %48 = getelementptr inbounds i8, ptr %41, i64 1
  %49 = load i8, ptr %41, align 1, !tbaa !12
  %50 = sext i8 %49 to i32
  store volatile i32 %50, ptr %45, align 4096, !tbaa !7
  %51 = load i8, ptr %48, align 1, !tbaa !12
  %52 = sitofp i8 %51 to double
  store volatile double %52, ptr %46, align 4096, !tbaa !57
  %53 = load volatile i32, ptr %45, align 4096, !tbaa !7
  %54 = getelementptr inbounds %union.trace_element, ptr %42, i64 2
  store i32 %53, ptr %47, align 8, !tbaa !12
  %55 = getelementptr inbounds %union.trace_element, ptr %42, i64 3
  store ptr %45, ptr %54, align 8, !tbaa !12
  %56 = load volatile double, ptr %46, align 4096, !tbaa !57
  %57 = getelementptr inbounds %union.trace_element, ptr %42, i64 4
  store double %56, ptr %55, align 8, !tbaa !12
  %58 = getelementptr inbounds %union.trace_element, ptr %42, i64 5
  store ptr %46, ptr %57, align 8, !tbaa !12
  %59 = call i32 @_wyvern_slice__Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__461115967(ptr %41)
  %60 = getelementptr inbounds %union.trace_element, ptr %42, i64 6
  store i32 %59, ptr %58, align 8, !tbaa !12
  %61 = call double @_wyvern_slice__Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__248217697(ptr %41)
  store double %61, ptr %60, align 8, !tbaa !12
  call void @_Z27function_throwing_exceptionv() #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_Z10test_frameILj2ELb1ELj2048ELb0ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, double noundef %20, double noundef %21, double noundef %22, double noundef %23, double noundef %24, double noundef %25, double noundef %26, double noundef %27, double noundef %28, double noundef %29, double noundef %30, double noundef %31, double noundef %32, double noundef %33, double noundef %34, double noundef %35, double noundef %36, double noundef %37, double noundef %38, double noundef %39, i32 noundef %40, ptr noundef %41, ptr noundef %42, double noundef %43) #18 comdat {
  %45 = alloca i32, align 4
  %46 = alloca double, align 8
  %47 = getelementptr inbounds %union.trace_element, ptr %42, i64 1
  store double %43, ptr %42, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #21
  %48 = getelementptr inbounds i8, ptr %41, i64 1
  %49 = load i8, ptr %41, align 1, !tbaa !12
  %50 = sext i8 %49 to i32
  store volatile i32 %50, ptr %45, align 4, !tbaa !7
  %51 = getelementptr inbounds i8, ptr %41, i64 2
  %52 = load i8, ptr %48, align 1, !tbaa !12
  %53 = sitofp i8 %52 to double
  store volatile double %53, ptr %46, align 8, !tbaa !57
  %54 = load volatile i32, ptr %45, align 4, !tbaa !7
  %55 = getelementptr inbounds %union.trace_element, ptr %42, i64 2
  store i32 %54, ptr %47, align 8, !tbaa !12
  %56 = getelementptr inbounds %union.trace_element, ptr %42, i64 3
  store ptr %45, ptr %55, align 8, !tbaa !12
  %57 = load volatile double, ptr %46, align 8, !tbaa !57
  %58 = getelementptr inbounds %union.trace_element, ptr %42, i64 4
  store double %57, ptr %56, align 8, !tbaa !12
  %59 = getelementptr inbounds %union.trace_element, ptr %42, i64 5
  store ptr %46, ptr %58, align 8, !tbaa !12
  %60 = zext i32 %40 to i64
  %61 = call ptr @llvm.stacksave()
  %62 = alloca i8, i64 %60, align 2048
  %63 = getelementptr inbounds i8, ptr %41, i64 3
  %64 = load i8, ptr %51, align 1, !tbaa !12
  store volatile i8 %64, ptr %62, align 2048, !tbaa !12
  %65 = load i8, ptr %63, align 1, !tbaa !12
  %66 = add i32 %40, -1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %62, i64 %67
  store volatile i8 %65, ptr %68, align 1, !tbaa !12
  %69 = load volatile i8, ptr %62, align 2048, !tbaa !12
  %70 = sext i8 %69 to i32
  %71 = getelementptr inbounds %union.trace_element, ptr %42, i64 6
  store i32 %70, ptr %59, align 8, !tbaa !12
  %72 = getelementptr inbounds %union.trace_element, ptr %42, i64 7
  store ptr %62, ptr %71, align 8, !tbaa !12
  %73 = load volatile i8, ptr %68, align 1, !tbaa !12
  %74 = sext i8 %73 to i32
  %75 = getelementptr inbounds %union.trace_element, ptr %42, i64 8
  store i32 %74, ptr %72, align 8, !tbaa !12
  store ptr %68, ptr %75, align 8, !tbaa !12
  call void @llvm.stackrestore(ptr %61)
  call void @_Z27function_throwing_exceptionv() #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_Z10test_frameILj4096ELb1ELj2048ELb0ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, double noundef %20, double noundef %21, double noundef %22, double noundef %23, double noundef %24, double noundef %25, double noundef %26, double noundef %27, double noundef %28, double noundef %29, double noundef %30, double noundef %31, double noundef %32, double noundef %33, double noundef %34, double noundef %35, double noundef %36, double noundef %37, double noundef %38, double noundef %39, i32 noundef %40, ptr noundef %41, ptr noundef %42, double noundef %43) #18 comdat {
  %45 = alloca i32, align 4096
  %46 = alloca double, align 4096
  %47 = getelementptr inbounds %union.trace_element, ptr %42, i64 1
  store double %43, ptr %42, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #21
  %48 = getelementptr inbounds i8, ptr %41, i64 1
  %49 = load i8, ptr %41, align 1, !tbaa !12
  %50 = sext i8 %49 to i32
  store volatile i32 %50, ptr %45, align 4096, !tbaa !7
  %51 = getelementptr inbounds i8, ptr %41, i64 2
  %52 = load i8, ptr %48, align 1, !tbaa !12
  %53 = sitofp i8 %52 to double
  store volatile double %53, ptr %46, align 4096, !tbaa !57
  %54 = load volatile i32, ptr %45, align 4096, !tbaa !7
  %55 = getelementptr inbounds %union.trace_element, ptr %42, i64 2
  store i32 %54, ptr %47, align 8, !tbaa !12
  %56 = getelementptr inbounds %union.trace_element, ptr %42, i64 3
  store ptr %45, ptr %55, align 8, !tbaa !12
  %57 = load volatile double, ptr %46, align 4096, !tbaa !57
  %58 = getelementptr inbounds %union.trace_element, ptr %42, i64 4
  store double %57, ptr %56, align 8, !tbaa !12
  %59 = getelementptr inbounds %union.trace_element, ptr %42, i64 5
  store ptr %46, ptr %58, align 8, !tbaa !12
  %60 = zext i32 %40 to i64
  %61 = call ptr @llvm.stacksave()
  %62 = alloca i8, i64 %60, align 2048
  %63 = getelementptr inbounds i8, ptr %41, i64 3
  %64 = load i8, ptr %51, align 1, !tbaa !12
  store volatile i8 %64, ptr %62, align 2048, !tbaa !12
  %65 = load i8, ptr %63, align 1, !tbaa !12
  %66 = add i32 %40, -1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %62, i64 %67
  store volatile i8 %65, ptr %68, align 1, !tbaa !12
  %69 = load volatile i8, ptr %62, align 2048, !tbaa !12
  %70 = sext i8 %69 to i32
  %71 = getelementptr inbounds %union.trace_element, ptr %42, i64 6
  store i32 %70, ptr %59, align 8, !tbaa !12
  %72 = getelementptr inbounds %union.trace_element, ptr %42, i64 7
  store ptr %62, ptr %71, align 8, !tbaa !12
  %73 = load volatile i8, ptr %68, align 1, !tbaa !12
  %74 = sext i8 %73 to i32
  %75 = getelementptr inbounds %union.trace_element, ptr %42, i64 8
  store i32 %74, ptr %72, align 8, !tbaa !12
  store ptr %68, ptr %75, align 8, !tbaa !12
  call void @llvm.stackrestore(ptr %61)
  call void @_Z27function_throwing_exceptionv() #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_Z10test_frameILj2ELb0ELj2048ELb0ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, double noundef %20, double noundef %21, double noundef %22, double noundef %23, double noundef %24, double noundef %25, double noundef %26, double noundef %27, double noundef %28, double noundef %29, double noundef %30, double noundef %31, double noundef %32, double noundef %33, double noundef %34, double noundef %35, double noundef %36, double noundef %37, double noundef %38, double noundef %39, i32 noundef %40, ptr noundef %41, ptr noundef %42, double noundef %43) #18 comdat {
  %45 = alloca i32, align 4
  %46 = alloca double, align 8
  %47 = getelementptr inbounds %union.trace_element, ptr %42, i64 1
  store double %43, ptr %42, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #21
  %48 = getelementptr inbounds i8, ptr %41, i64 1
  %49 = load i8, ptr %41, align 1, !tbaa !12
  %50 = sext i8 %49 to i32
  store volatile i32 %50, ptr %45, align 4, !tbaa !7
  %51 = load i8, ptr %48, align 1, !tbaa !12
  %52 = sitofp i8 %51 to double
  store volatile double %52, ptr %46, align 8, !tbaa !57
  %53 = load volatile i32, ptr %45, align 4, !tbaa !7
  %54 = getelementptr inbounds %union.trace_element, ptr %42, i64 2
  store i32 %53, ptr %47, align 8, !tbaa !12
  %55 = getelementptr inbounds %union.trace_element, ptr %42, i64 3
  store ptr %45, ptr %54, align 8, !tbaa !12
  %56 = load volatile double, ptr %46, align 8, !tbaa !57
  %57 = getelementptr inbounds %union.trace_element, ptr %42, i64 4
  store double %56, ptr %55, align 8, !tbaa !12
  store ptr %46, ptr %57, align 8, !tbaa !12
  call void @_Z27function_throwing_exceptionv() #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_Z10test_frameILj4096ELb0ELj2048ELb0ELb1EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, double noundef %20, double noundef %21, double noundef %22, double noundef %23, double noundef %24, double noundef %25, double noundef %26, double noundef %27, double noundef %28, double noundef %29, double noundef %30, double noundef %31, double noundef %32, double noundef %33, double noundef %34, double noundef %35, double noundef %36, double noundef %37, double noundef %38, double noundef %39, i32 noundef %40, ptr noundef %41, ptr noundef %42, double noundef %43) #18 comdat {
  %45 = alloca i32, align 4096
  %46 = alloca double, align 4096
  %47 = getelementptr inbounds %union.trace_element, ptr %42, i64 1
  store double %43, ptr %42, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #21
  %48 = getelementptr inbounds i8, ptr %41, i64 1
  %49 = load i8, ptr %41, align 1, !tbaa !12
  %50 = sext i8 %49 to i32
  store volatile i32 %50, ptr %45, align 4096, !tbaa !7
  %51 = load i8, ptr %48, align 1, !tbaa !12
  %52 = sitofp i8 %51 to double
  store volatile double %52, ptr %46, align 4096, !tbaa !57
  %53 = load volatile i32, ptr %45, align 4096, !tbaa !7
  %54 = getelementptr inbounds %union.trace_element, ptr %42, i64 2
  store i32 %53, ptr %47, align 8, !tbaa !12
  %55 = getelementptr inbounds %union.trace_element, ptr %42, i64 3
  store ptr %45, ptr %54, align 8, !tbaa !12
  %56 = load volatile double, ptr %46, align 4096, !tbaa !57
  %57 = getelementptr inbounds %union.trace_element, ptr %42, i64 4
  store double %56, ptr %55, align 8, !tbaa !12
  store ptr %46, ptr %57, align 8, !tbaa !12
  call void @_Z27function_throwing_exceptionv() #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_Z10test_frameILj2ELb1ELj2048ELb1ELb1EJEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) #13 comdat {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = getelementptr inbounds %union.trace_element, ptr %2, i64 1
  store double %3, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %1, align 1, !tbaa !12
  %10 = sext i8 %9 to i32
  store volatile i32 %10, ptr %5, align 4, !tbaa !7
  %11 = getelementptr inbounds i8, ptr %1, i64 2
  %12 = load i8, ptr %8, align 1, !tbaa !12
  %13 = sitofp i8 %12 to double
  store volatile double %13, ptr %6, align 8, !tbaa !57
  %14 = load volatile i32, ptr %5, align 4, !tbaa !7
  %15 = getelementptr inbounds %union.trace_element, ptr %2, i64 2
  store i32 %14, ptr %7, align 8, !tbaa !12
  %16 = getelementptr inbounds %union.trace_element, ptr %2, i64 3
  store ptr %5, ptr %15, align 8, !tbaa !12
  %17 = load volatile double, ptr %6, align 8, !tbaa !57
  %18 = getelementptr inbounds %union.trace_element, ptr %2, i64 4
  store double %17, ptr %16, align 8, !tbaa !12
  %19 = getelementptr inbounds %union.trace_element, ptr %2, i64 5
  store ptr %6, ptr %18, align 8, !tbaa !12
  %20 = zext i32 %0 to i64
  %21 = call ptr @llvm.stacksave()
  %22 = alloca i8, i64 %20, align 2048
  %23 = getelementptr inbounds i8, ptr %1, i64 3
  %24 = load i8, ptr %11, align 1, !tbaa !12
  store volatile i8 %24, ptr %22, align 2048, !tbaa !12
  %25 = load i8, ptr %23, align 1, !tbaa !12
  %26 = add i32 %0, -1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %22, i64 %27
  store volatile i8 %25, ptr %28, align 1, !tbaa !12
  %29 = load volatile i8, ptr %22, align 2048, !tbaa !12
  %30 = sext i8 %29 to i32
  %31 = getelementptr inbounds %union.trace_element, ptr %2, i64 6
  store i32 %30, ptr %19, align 8, !tbaa !12
  %32 = getelementptr inbounds %union.trace_element, ptr %2, i64 7
  store ptr %22, ptr %31, align 8, !tbaa !12
  %33 = load volatile i8, ptr %28, align 1, !tbaa !12
  %34 = sext i8 %33 to i32
  %35 = getelementptr inbounds %union.trace_element, ptr %2, i64 8
  store i32 %34, ptr %32, align 8, !tbaa !12
  %36 = getelementptr inbounds %union.trace_element, ptr %2, i64 9
  store ptr %28, ptr %35, align 8, !tbaa !12
  call void @llvm.stackrestore(ptr %21)
  %37 = call i32 @_wyvern_slice__Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__189058803(ptr %1)
  %38 = getelementptr inbounds %union.trace_element, ptr %2, i64 10
  store i32 %37, ptr %36, align 8, !tbaa !12
  %39 = call double @_wyvern_slice__Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__264686497(ptr %1)
  store double %39, ptr %38, align 8, !tbaa !12
  call void @_Z27function_throwing_exceptionv() #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_Z10test_frameILj4096ELb1ELj2048ELb1ELb1EJEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) #13 comdat {
  %5 = alloca i32, align 4096
  %6 = alloca double, align 4096
  %7 = getelementptr inbounds %union.trace_element, ptr %2, i64 1
  store double %3, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %1, align 1, !tbaa !12
  %10 = sext i8 %9 to i32
  store volatile i32 %10, ptr %5, align 4096, !tbaa !7
  %11 = getelementptr inbounds i8, ptr %1, i64 2
  %12 = load i8, ptr %8, align 1, !tbaa !12
  %13 = sitofp i8 %12 to double
  store volatile double %13, ptr %6, align 4096, !tbaa !57
  %14 = load volatile i32, ptr %5, align 4096, !tbaa !7
  %15 = getelementptr inbounds %union.trace_element, ptr %2, i64 2
  store i32 %14, ptr %7, align 8, !tbaa !12
  %16 = getelementptr inbounds %union.trace_element, ptr %2, i64 3
  store ptr %5, ptr %15, align 8, !tbaa !12
  %17 = load volatile double, ptr %6, align 4096, !tbaa !57
  %18 = getelementptr inbounds %union.trace_element, ptr %2, i64 4
  store double %17, ptr %16, align 8, !tbaa !12
  %19 = getelementptr inbounds %union.trace_element, ptr %2, i64 5
  store ptr %6, ptr %18, align 8, !tbaa !12
  %20 = zext i32 %0 to i64
  %21 = call ptr @llvm.stacksave()
  %22 = alloca i8, i64 %20, align 2048
  %23 = getelementptr inbounds i8, ptr %1, i64 3
  %24 = load i8, ptr %11, align 1, !tbaa !12
  store volatile i8 %24, ptr %22, align 2048, !tbaa !12
  %25 = load i8, ptr %23, align 1, !tbaa !12
  %26 = add i32 %0, -1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %22, i64 %27
  store volatile i8 %25, ptr %28, align 1, !tbaa !12
  %29 = load volatile i8, ptr %22, align 2048, !tbaa !12
  %30 = sext i8 %29 to i32
  %31 = getelementptr inbounds %union.trace_element, ptr %2, i64 6
  store i32 %30, ptr %19, align 8, !tbaa !12
  %32 = getelementptr inbounds %union.trace_element, ptr %2, i64 7
  store ptr %22, ptr %31, align 8, !tbaa !12
  %33 = load volatile i8, ptr %28, align 1, !tbaa !12
  %34 = sext i8 %33 to i32
  %35 = getelementptr inbounds %union.trace_element, ptr %2, i64 8
  store i32 %34, ptr %32, align 8, !tbaa !12
  %36 = getelementptr inbounds %union.trace_element, ptr %2, i64 9
  store ptr %28, ptr %35, align 8, !tbaa !12
  call void @llvm.stackrestore(ptr %21)
  %37 = call i32 @_wyvern_slice__Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__189058803(ptr %1)
  %38 = getelementptr inbounds %union.trace_element, ptr %2, i64 10
  store i32 %37, ptr %36, align 8, !tbaa !12
  %39 = call double @_wyvern_slice__Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__264686497(ptr %1)
  store double %39, ptr %38, align 8, !tbaa !12
  call void @_Z27function_throwing_exceptionv() #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_Z10test_frameILj2ELb0ELj2048ELb1ELb1EJEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) #13 comdat {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = getelementptr inbounds %union.trace_element, ptr %2, i64 1
  store double %3, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %1, align 1, !tbaa !12
  %10 = sext i8 %9 to i32
  store volatile i32 %10, ptr %5, align 4, !tbaa !7
  %11 = load i8, ptr %8, align 1, !tbaa !12
  %12 = sitofp i8 %11 to double
  store volatile double %12, ptr %6, align 8, !tbaa !57
  %13 = load volatile i32, ptr %5, align 4, !tbaa !7
  %14 = getelementptr inbounds %union.trace_element, ptr %2, i64 2
  store i32 %13, ptr %7, align 8, !tbaa !12
  %15 = getelementptr inbounds %union.trace_element, ptr %2, i64 3
  store ptr %5, ptr %14, align 8, !tbaa !12
  %16 = load volatile double, ptr %6, align 8, !tbaa !57
  %17 = getelementptr inbounds %union.trace_element, ptr %2, i64 4
  store double %16, ptr %15, align 8, !tbaa !12
  %18 = getelementptr inbounds %union.trace_element, ptr %2, i64 5
  store ptr %6, ptr %17, align 8, !tbaa !12
  %19 = call i32 @_wyvern_slice__Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__461115967(ptr %1)
  %20 = getelementptr inbounds %union.trace_element, ptr %2, i64 6
  store i32 %19, ptr %18, align 8, !tbaa !12
  %21 = call double @_wyvern_slice__Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__248217697(ptr %1)
  store double %21, ptr %20, align 8, !tbaa !12
  call void @_Z27function_throwing_exceptionv() #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_Z10test_frameILj4096ELb0ELj2048ELb1ELb1EJEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) #13 comdat {
  %5 = alloca i32, align 4096
  %6 = alloca double, align 4096
  %7 = getelementptr inbounds %union.trace_element, ptr %2, i64 1
  store double %3, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %1, align 1, !tbaa !12
  %10 = sext i8 %9 to i32
  store volatile i32 %10, ptr %5, align 4096, !tbaa !7
  %11 = load i8, ptr %8, align 1, !tbaa !12
  %12 = sitofp i8 %11 to double
  store volatile double %12, ptr %6, align 4096, !tbaa !57
  %13 = load volatile i32, ptr %5, align 4096, !tbaa !7
  %14 = getelementptr inbounds %union.trace_element, ptr %2, i64 2
  store i32 %13, ptr %7, align 8, !tbaa !12
  %15 = getelementptr inbounds %union.trace_element, ptr %2, i64 3
  store ptr %5, ptr %14, align 8, !tbaa !12
  %16 = load volatile double, ptr %6, align 4096, !tbaa !57
  %17 = getelementptr inbounds %union.trace_element, ptr %2, i64 4
  store double %16, ptr %15, align 8, !tbaa !12
  %18 = getelementptr inbounds %union.trace_element, ptr %2, i64 5
  store ptr %6, ptr %17, align 8, !tbaa !12
  %19 = call i32 @_wyvern_slice__Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__461115967(ptr %1)
  %20 = getelementptr inbounds %union.trace_element, ptr %2, i64 6
  store i32 %19, ptr %18, align 8, !tbaa !12
  %21 = call double @_wyvern_slice__Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__248217697(ptr %1)
  store double %21, ptr %20, align 8, !tbaa !12
  call void @_Z27function_throwing_exceptionv() #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_Z10test_frameILj2ELb1ELj2048ELb0ELb1EJEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) #18 comdat {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = getelementptr inbounds %union.trace_element, ptr %2, i64 1
  store double %3, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %1, align 1, !tbaa !12
  %10 = sext i8 %9 to i32
  store volatile i32 %10, ptr %5, align 4, !tbaa !7
  %11 = getelementptr inbounds i8, ptr %1, i64 2
  %12 = load i8, ptr %8, align 1, !tbaa !12
  %13 = sitofp i8 %12 to double
  store volatile double %13, ptr %6, align 8, !tbaa !57
  %14 = load volatile i32, ptr %5, align 4, !tbaa !7
  %15 = getelementptr inbounds %union.trace_element, ptr %2, i64 2
  store i32 %14, ptr %7, align 8, !tbaa !12
  %16 = getelementptr inbounds %union.trace_element, ptr %2, i64 3
  store ptr %5, ptr %15, align 8, !tbaa !12
  %17 = load volatile double, ptr %6, align 8, !tbaa !57
  %18 = getelementptr inbounds %union.trace_element, ptr %2, i64 4
  store double %17, ptr %16, align 8, !tbaa !12
  %19 = getelementptr inbounds %union.trace_element, ptr %2, i64 5
  store ptr %6, ptr %18, align 8, !tbaa !12
  %20 = zext i32 %0 to i64
  %21 = call ptr @llvm.stacksave()
  %22 = alloca i8, i64 %20, align 2048
  %23 = getelementptr inbounds i8, ptr %1, i64 3
  %24 = load i8, ptr %11, align 1, !tbaa !12
  store volatile i8 %24, ptr %22, align 2048, !tbaa !12
  %25 = load i8, ptr %23, align 1, !tbaa !12
  %26 = add i32 %0, -1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %22, i64 %27
  store volatile i8 %25, ptr %28, align 1, !tbaa !12
  %29 = load volatile i8, ptr %22, align 2048, !tbaa !12
  %30 = sext i8 %29 to i32
  %31 = getelementptr inbounds %union.trace_element, ptr %2, i64 6
  store i32 %30, ptr %19, align 8, !tbaa !12
  %32 = getelementptr inbounds %union.trace_element, ptr %2, i64 7
  store ptr %22, ptr %31, align 8, !tbaa !12
  %33 = load volatile i8, ptr %28, align 1, !tbaa !12
  %34 = sext i8 %33 to i32
  %35 = getelementptr inbounds %union.trace_element, ptr %2, i64 8
  store i32 %34, ptr %32, align 8, !tbaa !12
  store ptr %28, ptr %35, align 8, !tbaa !12
  call void @llvm.stackrestore(ptr %21)
  call void @_Z27function_throwing_exceptionv() #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_Z10test_frameILj4096ELb1ELj2048ELb0ELb1EJEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) #18 comdat {
  %5 = alloca i32, align 4096
  %6 = alloca double, align 4096
  %7 = getelementptr inbounds %union.trace_element, ptr %2, i64 1
  store double %3, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %1, align 1, !tbaa !12
  %10 = sext i8 %9 to i32
  store volatile i32 %10, ptr %5, align 4096, !tbaa !7
  %11 = getelementptr inbounds i8, ptr %1, i64 2
  %12 = load i8, ptr %8, align 1, !tbaa !12
  %13 = sitofp i8 %12 to double
  store volatile double %13, ptr %6, align 4096, !tbaa !57
  %14 = load volatile i32, ptr %5, align 4096, !tbaa !7
  %15 = getelementptr inbounds %union.trace_element, ptr %2, i64 2
  store i32 %14, ptr %7, align 8, !tbaa !12
  %16 = getelementptr inbounds %union.trace_element, ptr %2, i64 3
  store ptr %5, ptr %15, align 8, !tbaa !12
  %17 = load volatile double, ptr %6, align 4096, !tbaa !57
  %18 = getelementptr inbounds %union.trace_element, ptr %2, i64 4
  store double %17, ptr %16, align 8, !tbaa !12
  %19 = getelementptr inbounds %union.trace_element, ptr %2, i64 5
  store ptr %6, ptr %18, align 8, !tbaa !12
  %20 = zext i32 %0 to i64
  %21 = call ptr @llvm.stacksave()
  %22 = alloca i8, i64 %20, align 2048
  %23 = getelementptr inbounds i8, ptr %1, i64 3
  %24 = load i8, ptr %11, align 1, !tbaa !12
  store volatile i8 %24, ptr %22, align 2048, !tbaa !12
  %25 = load i8, ptr %23, align 1, !tbaa !12
  %26 = add i32 %0, -1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %22, i64 %27
  store volatile i8 %25, ptr %28, align 1, !tbaa !12
  %29 = load volatile i8, ptr %22, align 2048, !tbaa !12
  %30 = sext i8 %29 to i32
  %31 = getelementptr inbounds %union.trace_element, ptr %2, i64 6
  store i32 %30, ptr %19, align 8, !tbaa !12
  %32 = getelementptr inbounds %union.trace_element, ptr %2, i64 7
  store ptr %22, ptr %31, align 8, !tbaa !12
  %33 = load volatile i8, ptr %28, align 1, !tbaa !12
  %34 = sext i8 %33 to i32
  %35 = getelementptr inbounds %union.trace_element, ptr %2, i64 8
  store i32 %34, ptr %32, align 8, !tbaa !12
  store ptr %28, ptr %35, align 8, !tbaa !12
  call void @llvm.stackrestore(ptr %21)
  call void @_Z27function_throwing_exceptionv() #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_Z10test_frameILj2ELb0ELj2048ELb0ELb1EJEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) #18 comdat {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = getelementptr inbounds %union.trace_element, ptr %2, i64 1
  store double %3, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %1, align 1, !tbaa !12
  %10 = sext i8 %9 to i32
  store volatile i32 %10, ptr %5, align 4, !tbaa !7
  %11 = load i8, ptr %8, align 1, !tbaa !12
  %12 = sitofp i8 %11 to double
  store volatile double %12, ptr %6, align 8, !tbaa !57
  %13 = load volatile i32, ptr %5, align 4, !tbaa !7
  %14 = getelementptr inbounds %union.trace_element, ptr %2, i64 2
  store i32 %13, ptr %7, align 8, !tbaa !12
  %15 = getelementptr inbounds %union.trace_element, ptr %2, i64 3
  store ptr %5, ptr %14, align 8, !tbaa !12
  %16 = load volatile double, ptr %6, align 8, !tbaa !57
  %17 = getelementptr inbounds %union.trace_element, ptr %2, i64 4
  store double %16, ptr %15, align 8, !tbaa !12
  store ptr %6, ptr %17, align 8, !tbaa !12
  call void @_Z27function_throwing_exceptionv() #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_Z10test_frameILj4096ELb0ELj2048ELb0ELb1EJEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) #18 comdat {
  %5 = alloca i32, align 4096
  %6 = alloca double, align 4096
  %7 = getelementptr inbounds %union.trace_element, ptr %2, i64 1
  store double %3, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %1, align 1, !tbaa !12
  %10 = sext i8 %9 to i32
  store volatile i32 %10, ptr %5, align 4096, !tbaa !7
  %11 = load i8, ptr %8, align 1, !tbaa !12
  %12 = sitofp i8 %11 to double
  store volatile double %12, ptr %6, align 4096, !tbaa !57
  %13 = load volatile i32, ptr %5, align 4096, !tbaa !7
  %14 = getelementptr inbounds %union.trace_element, ptr %2, i64 2
  store i32 %13, ptr %7, align 8, !tbaa !12
  %15 = getelementptr inbounds %union.trace_element, ptr %2, i64 3
  store ptr %5, ptr %14, align 8, !tbaa !12
  %16 = load volatile double, ptr %6, align 4096, !tbaa !57
  %17 = getelementptr inbounds %union.trace_element, ptr %2, i64 4
  store double %16, ptr %15, align 8, !tbaa !12
  store ptr %6, ptr %17, align 8, !tbaa !12
  call void @_Z27function_throwing_exceptionv() #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_Z10test_frameILj2ELb1ELj2048ELb1ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, double noundef %20, double noundef %21, double noundef %22, double noundef %23, double noundef %24, double noundef %25, double noundef %26, double noundef %27, double noundef %28, double noundef %29, double noundef %30, double noundef %31, double noundef %32, double noundef %33, double noundef %34, double noundef %35, double noundef %36, double noundef %37, double noundef %38, double noundef %39, i32 noundef %40, ptr noundef %41, ptr noundef %42, double noundef %43) #13 comdat {
  %45 = alloca i32, align 4
  %46 = alloca double, align 8
  %47 = getelementptr inbounds %union.trace_element, ptr %42, i64 1
  store double %43, ptr %42, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #21
  %48 = getelementptr inbounds i8, ptr %41, i64 1
  %49 = load i8, ptr %41, align 1, !tbaa !12
  %50 = sext i8 %49 to i32
  store volatile i32 %50, ptr %45, align 4, !tbaa !7
  %51 = getelementptr inbounds i8, ptr %41, i64 2
  %52 = load i8, ptr %48, align 1, !tbaa !12
  %53 = sitofp i8 %52 to double
  store volatile double %53, ptr %46, align 8, !tbaa !57
  %54 = load volatile i32, ptr %45, align 4, !tbaa !7
  %55 = getelementptr inbounds %union.trace_element, ptr %42, i64 2
  store i32 %54, ptr %47, align 8, !tbaa !12
  %56 = getelementptr inbounds %union.trace_element, ptr %42, i64 3
  store ptr %45, ptr %55, align 8, !tbaa !12
  %57 = load volatile double, ptr %46, align 8, !tbaa !57
  %58 = getelementptr inbounds %union.trace_element, ptr %42, i64 4
  store double %57, ptr %56, align 8, !tbaa !12
  %59 = getelementptr inbounds %union.trace_element, ptr %42, i64 5
  store ptr %46, ptr %58, align 8, !tbaa !12
  %60 = zext i32 %40 to i64
  %61 = call ptr @llvm.stacksave()
  %62 = alloca i8, i64 %60, align 2048
  %63 = getelementptr inbounds i8, ptr %41, i64 3
  %64 = load i8, ptr %51, align 1, !tbaa !12
  store volatile i8 %64, ptr %62, align 2048, !tbaa !12
  %65 = load i8, ptr %63, align 1, !tbaa !12
  %66 = add i32 %40, -1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %62, i64 %67
  store volatile i8 %65, ptr %68, align 1, !tbaa !12
  %69 = load volatile i8, ptr %62, align 2048, !tbaa !12
  %70 = sext i8 %69 to i32
  %71 = getelementptr inbounds %union.trace_element, ptr %42, i64 6
  store i32 %70, ptr %59, align 8, !tbaa !12
  %72 = getelementptr inbounds %union.trace_element, ptr %42, i64 7
  store ptr %62, ptr %71, align 8, !tbaa !12
  %73 = load volatile i8, ptr %68, align 1, !tbaa !12
  %74 = sext i8 %73 to i32
  %75 = getelementptr inbounds %union.trace_element, ptr %42, i64 8
  store i32 %74, ptr %72, align 8, !tbaa !12
  %76 = getelementptr inbounds %union.trace_element, ptr %42, i64 9
  store ptr %68, ptr %75, align 8, !tbaa !12
  call void @llvm.stackrestore(ptr %61)
  %77 = call i32 @_wyvern_slice__Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__189058803(ptr %41)
  %78 = getelementptr inbounds %union.trace_element, ptr %42, i64 10
  store i32 %77, ptr %76, align 8, !tbaa !12
  %79 = call double @_wyvern_slice__Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__264686497(ptr %41)
  store double %79, ptr %78, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_Z10test_frameILj4096ELb1ELj2048ELb1ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, double noundef %20, double noundef %21, double noundef %22, double noundef %23, double noundef %24, double noundef %25, double noundef %26, double noundef %27, double noundef %28, double noundef %29, double noundef %30, double noundef %31, double noundef %32, double noundef %33, double noundef %34, double noundef %35, double noundef %36, double noundef %37, double noundef %38, double noundef %39, i32 noundef %40, ptr noundef %41, ptr noundef %42, double noundef %43) #13 comdat {
  %45 = alloca i32, align 4096
  %46 = alloca double, align 4096
  %47 = getelementptr inbounds %union.trace_element, ptr %42, i64 1
  store double %43, ptr %42, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #21
  %48 = getelementptr inbounds i8, ptr %41, i64 1
  %49 = load i8, ptr %41, align 1, !tbaa !12
  %50 = sext i8 %49 to i32
  store volatile i32 %50, ptr %45, align 4096, !tbaa !7
  %51 = getelementptr inbounds i8, ptr %41, i64 2
  %52 = load i8, ptr %48, align 1, !tbaa !12
  %53 = sitofp i8 %52 to double
  store volatile double %53, ptr %46, align 4096, !tbaa !57
  %54 = load volatile i32, ptr %45, align 4096, !tbaa !7
  %55 = getelementptr inbounds %union.trace_element, ptr %42, i64 2
  store i32 %54, ptr %47, align 8, !tbaa !12
  %56 = getelementptr inbounds %union.trace_element, ptr %42, i64 3
  store ptr %45, ptr %55, align 8, !tbaa !12
  %57 = load volatile double, ptr %46, align 4096, !tbaa !57
  %58 = getelementptr inbounds %union.trace_element, ptr %42, i64 4
  store double %57, ptr %56, align 8, !tbaa !12
  %59 = getelementptr inbounds %union.trace_element, ptr %42, i64 5
  store ptr %46, ptr %58, align 8, !tbaa !12
  %60 = zext i32 %40 to i64
  %61 = call ptr @llvm.stacksave()
  %62 = alloca i8, i64 %60, align 2048
  %63 = getelementptr inbounds i8, ptr %41, i64 3
  %64 = load i8, ptr %51, align 1, !tbaa !12
  store volatile i8 %64, ptr %62, align 2048, !tbaa !12
  %65 = load i8, ptr %63, align 1, !tbaa !12
  %66 = add i32 %40, -1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %62, i64 %67
  store volatile i8 %65, ptr %68, align 1, !tbaa !12
  %69 = load volatile i8, ptr %62, align 2048, !tbaa !12
  %70 = sext i8 %69 to i32
  %71 = getelementptr inbounds %union.trace_element, ptr %42, i64 6
  store i32 %70, ptr %59, align 8, !tbaa !12
  %72 = getelementptr inbounds %union.trace_element, ptr %42, i64 7
  store ptr %62, ptr %71, align 8, !tbaa !12
  %73 = load volatile i8, ptr %68, align 1, !tbaa !12
  %74 = sext i8 %73 to i32
  %75 = getelementptr inbounds %union.trace_element, ptr %42, i64 8
  store i32 %74, ptr %72, align 8, !tbaa !12
  %76 = getelementptr inbounds %union.trace_element, ptr %42, i64 9
  store ptr %68, ptr %75, align 8, !tbaa !12
  call void @llvm.stackrestore(ptr %61)
  %77 = call i32 @_wyvern_slice__Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__189058803(ptr %41)
  %78 = getelementptr inbounds %union.trace_element, ptr %42, i64 10
  store i32 %77, ptr %76, align 8, !tbaa !12
  %79 = call double @_wyvern_slice__Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__264686497(ptr %41)
  store double %79, ptr %78, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_Z10test_frameILj2ELb0ELj2048ELb1ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, double noundef %20, double noundef %21, double noundef %22, double noundef %23, double noundef %24, double noundef %25, double noundef %26, double noundef %27, double noundef %28, double noundef %29, double noundef %30, double noundef %31, double noundef %32, double noundef %33, double noundef %34, double noundef %35, double noundef %36, double noundef %37, double noundef %38, double noundef %39, i32 noundef %40, ptr noundef %41, ptr noundef %42, double noundef %43) #13 comdat {
  %45 = alloca i32, align 4
  %46 = alloca double, align 8
  %47 = getelementptr inbounds %union.trace_element, ptr %42, i64 1
  store double %43, ptr %42, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #21
  %48 = getelementptr inbounds i8, ptr %41, i64 1
  %49 = load i8, ptr %41, align 1, !tbaa !12
  %50 = sext i8 %49 to i32
  store volatile i32 %50, ptr %45, align 4, !tbaa !7
  %51 = load i8, ptr %48, align 1, !tbaa !12
  %52 = sitofp i8 %51 to double
  store volatile double %52, ptr %46, align 8, !tbaa !57
  %53 = load volatile i32, ptr %45, align 4, !tbaa !7
  %54 = getelementptr inbounds %union.trace_element, ptr %42, i64 2
  store i32 %53, ptr %47, align 8, !tbaa !12
  %55 = getelementptr inbounds %union.trace_element, ptr %42, i64 3
  store ptr %45, ptr %54, align 8, !tbaa !12
  %56 = load volatile double, ptr %46, align 8, !tbaa !57
  %57 = getelementptr inbounds %union.trace_element, ptr %42, i64 4
  store double %56, ptr %55, align 8, !tbaa !12
  %58 = getelementptr inbounds %union.trace_element, ptr %42, i64 5
  store ptr %46, ptr %57, align 8, !tbaa !12
  %59 = call i32 @_wyvern_slice__Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__461115967(ptr %41)
  %60 = getelementptr inbounds %union.trace_element, ptr %42, i64 6
  store i32 %59, ptr %58, align 8, !tbaa !12
  %61 = call double @_wyvern_slice__Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__248217697(ptr %41)
  store double %61, ptr %60, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_Z10test_frameILj4096ELb0ELj2048ELb1ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, double noundef %20, double noundef %21, double noundef %22, double noundef %23, double noundef %24, double noundef %25, double noundef %26, double noundef %27, double noundef %28, double noundef %29, double noundef %30, double noundef %31, double noundef %32, double noundef %33, double noundef %34, double noundef %35, double noundef %36, double noundef %37, double noundef %38, double noundef %39, i32 noundef %40, ptr noundef %41, ptr noundef %42, double noundef %43) #13 comdat {
  %45 = alloca i32, align 4096
  %46 = alloca double, align 4096
  %47 = getelementptr inbounds %union.trace_element, ptr %42, i64 1
  store double %43, ptr %42, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #21
  %48 = getelementptr inbounds i8, ptr %41, i64 1
  %49 = load i8, ptr %41, align 1, !tbaa !12
  %50 = sext i8 %49 to i32
  store volatile i32 %50, ptr %45, align 4096, !tbaa !7
  %51 = load i8, ptr %48, align 1, !tbaa !12
  %52 = sitofp i8 %51 to double
  store volatile double %52, ptr %46, align 4096, !tbaa !57
  %53 = load volatile i32, ptr %45, align 4096, !tbaa !7
  %54 = getelementptr inbounds %union.trace_element, ptr %42, i64 2
  store i32 %53, ptr %47, align 8, !tbaa !12
  %55 = getelementptr inbounds %union.trace_element, ptr %42, i64 3
  store ptr %45, ptr %54, align 8, !tbaa !12
  %56 = load volatile double, ptr %46, align 4096, !tbaa !57
  %57 = getelementptr inbounds %union.trace_element, ptr %42, i64 4
  store double %56, ptr %55, align 8, !tbaa !12
  %58 = getelementptr inbounds %union.trace_element, ptr %42, i64 5
  store ptr %46, ptr %57, align 8, !tbaa !12
  %59 = call i32 @_wyvern_slice__Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__461115967(ptr %41)
  %60 = getelementptr inbounds %union.trace_element, ptr %42, i64 6
  store i32 %59, ptr %58, align 8, !tbaa !12
  %61 = call double @_wyvern_slice__Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__248217697(ptr %41)
  store double %61, ptr %60, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal void @_Z10test_frameILj2ELb1ELj2048ELb0ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, double noundef %20, double noundef %21, double noundef %22, double noundef %23, double noundef %24, double noundef %25, double noundef %26, double noundef %27, double noundef %28, double noundef %29, double noundef %30, double noundef %31, double noundef %32, double noundef %33, double noundef %34, double noundef %35, double noundef %36, double noundef %37, double noundef %38, double noundef %39, i32 noundef %40, ptr noundef %41, ptr noundef %42, double noundef %43) #19 comdat {
  %45 = alloca i32, align 4
  %46 = alloca double, align 8
  %47 = getelementptr inbounds %union.trace_element, ptr %42, i64 1
  store double %43, ptr %42, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #21
  %48 = getelementptr inbounds i8, ptr %41, i64 1
  %49 = load i8, ptr %41, align 1, !tbaa !12
  %50 = sext i8 %49 to i32
  store volatile i32 %50, ptr %45, align 4, !tbaa !7
  %51 = getelementptr inbounds i8, ptr %41, i64 2
  %52 = load i8, ptr %48, align 1, !tbaa !12
  %53 = sitofp i8 %52 to double
  store volatile double %53, ptr %46, align 8, !tbaa !57
  %54 = load volatile i32, ptr %45, align 4, !tbaa !7
  %55 = getelementptr inbounds %union.trace_element, ptr %42, i64 2
  store i32 %54, ptr %47, align 8, !tbaa !12
  %56 = getelementptr inbounds %union.trace_element, ptr %42, i64 3
  store ptr %45, ptr %55, align 8, !tbaa !12
  %57 = load volatile double, ptr %46, align 8, !tbaa !57
  %58 = getelementptr inbounds %union.trace_element, ptr %42, i64 4
  store double %57, ptr %56, align 8, !tbaa !12
  %59 = getelementptr inbounds %union.trace_element, ptr %42, i64 5
  store ptr %46, ptr %58, align 8, !tbaa !12
  %60 = zext i32 %40 to i64
  %61 = call ptr @llvm.stacksave()
  %62 = alloca i8, i64 %60, align 2048
  %63 = getelementptr inbounds i8, ptr %41, i64 3
  %64 = load i8, ptr %51, align 1, !tbaa !12
  store volatile i8 %64, ptr %62, align 2048, !tbaa !12
  %65 = load i8, ptr %63, align 1, !tbaa !12
  %66 = add i32 %40, -1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %62, i64 %67
  store volatile i8 %65, ptr %68, align 1, !tbaa !12
  %69 = load volatile i8, ptr %62, align 2048, !tbaa !12
  %70 = sext i8 %69 to i32
  %71 = getelementptr inbounds %union.trace_element, ptr %42, i64 6
  store i32 %70, ptr %59, align 8, !tbaa !12
  %72 = getelementptr inbounds %union.trace_element, ptr %42, i64 7
  store ptr %62, ptr %71, align 8, !tbaa !12
  %73 = load volatile i8, ptr %68, align 1, !tbaa !12
  %74 = sext i8 %73 to i32
  %75 = getelementptr inbounds %union.trace_element, ptr %42, i64 8
  store i32 %74, ptr %72, align 8, !tbaa !12
  store ptr %68, ptr %75, align 8, !tbaa !12
  call void @llvm.stackrestore(ptr %61)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal void @_Z10test_frameILj4096ELb1ELj2048ELb0ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, double noundef %20, double noundef %21, double noundef %22, double noundef %23, double noundef %24, double noundef %25, double noundef %26, double noundef %27, double noundef %28, double noundef %29, double noundef %30, double noundef %31, double noundef %32, double noundef %33, double noundef %34, double noundef %35, double noundef %36, double noundef %37, double noundef %38, double noundef %39, i32 noundef %40, ptr noundef %41, ptr noundef %42, double noundef %43) #19 comdat {
  %45 = alloca i32, align 4096
  %46 = alloca double, align 4096
  %47 = getelementptr inbounds %union.trace_element, ptr %42, i64 1
  store double %43, ptr %42, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #21
  %48 = getelementptr inbounds i8, ptr %41, i64 1
  %49 = load i8, ptr %41, align 1, !tbaa !12
  %50 = sext i8 %49 to i32
  store volatile i32 %50, ptr %45, align 4096, !tbaa !7
  %51 = getelementptr inbounds i8, ptr %41, i64 2
  %52 = load i8, ptr %48, align 1, !tbaa !12
  %53 = sitofp i8 %52 to double
  store volatile double %53, ptr %46, align 4096, !tbaa !57
  %54 = load volatile i32, ptr %45, align 4096, !tbaa !7
  %55 = getelementptr inbounds %union.trace_element, ptr %42, i64 2
  store i32 %54, ptr %47, align 8, !tbaa !12
  %56 = getelementptr inbounds %union.trace_element, ptr %42, i64 3
  store ptr %45, ptr %55, align 8, !tbaa !12
  %57 = load volatile double, ptr %46, align 4096, !tbaa !57
  %58 = getelementptr inbounds %union.trace_element, ptr %42, i64 4
  store double %57, ptr %56, align 8, !tbaa !12
  %59 = getelementptr inbounds %union.trace_element, ptr %42, i64 5
  store ptr %46, ptr %58, align 8, !tbaa !12
  %60 = zext i32 %40 to i64
  %61 = call ptr @llvm.stacksave()
  %62 = alloca i8, i64 %60, align 2048
  %63 = getelementptr inbounds i8, ptr %41, i64 3
  %64 = load i8, ptr %51, align 1, !tbaa !12
  store volatile i8 %64, ptr %62, align 2048, !tbaa !12
  %65 = load i8, ptr %63, align 1, !tbaa !12
  %66 = add i32 %40, -1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %62, i64 %67
  store volatile i8 %65, ptr %68, align 1, !tbaa !12
  %69 = load volatile i8, ptr %62, align 2048, !tbaa !12
  %70 = sext i8 %69 to i32
  %71 = getelementptr inbounds %union.trace_element, ptr %42, i64 6
  store i32 %70, ptr %59, align 8, !tbaa !12
  %72 = getelementptr inbounds %union.trace_element, ptr %42, i64 7
  store ptr %62, ptr %71, align 8, !tbaa !12
  %73 = load volatile i8, ptr %68, align 1, !tbaa !12
  %74 = sext i8 %73 to i32
  %75 = getelementptr inbounds %union.trace_element, ptr %42, i64 8
  store i32 %74, ptr %72, align 8, !tbaa !12
  store ptr %68, ptr %75, align 8, !tbaa !12
  call void @llvm.stackrestore(ptr %61)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal void @_Z10test_frameILj2ELb0ELj2048ELb0ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, double noundef %20, double noundef %21, double noundef %22, double noundef %23, double noundef %24, double noundef %25, double noundef %26, double noundef %27, double noundef %28, double noundef %29, double noundef %30, double noundef %31, double noundef %32, double noundef %33, double noundef %34, double noundef %35, double noundef %36, double noundef %37, double noundef %38, double noundef %39, i32 noundef %40, ptr noundef %41, ptr noundef %42, double noundef %43) #19 comdat {
  %45 = alloca i32, align 4
  %46 = alloca double, align 8
  %47 = getelementptr inbounds %union.trace_element, ptr %42, i64 1
  store double %43, ptr %42, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #21
  %48 = getelementptr inbounds i8, ptr %41, i64 1
  %49 = load i8, ptr %41, align 1, !tbaa !12
  %50 = sext i8 %49 to i32
  store volatile i32 %50, ptr %45, align 4, !tbaa !7
  %51 = load i8, ptr %48, align 1, !tbaa !12
  %52 = sitofp i8 %51 to double
  store volatile double %52, ptr %46, align 8, !tbaa !57
  %53 = load volatile i32, ptr %45, align 4, !tbaa !7
  %54 = getelementptr inbounds %union.trace_element, ptr %42, i64 2
  store i32 %53, ptr %47, align 8, !tbaa !12
  %55 = getelementptr inbounds %union.trace_element, ptr %42, i64 3
  store ptr %45, ptr %54, align 8, !tbaa !12
  %56 = load volatile double, ptr %46, align 8, !tbaa !57
  %57 = getelementptr inbounds %union.trace_element, ptr %42, i64 4
  store double %56, ptr %55, align 8, !tbaa !12
  store ptr %46, ptr %57, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal void @_Z10test_frameILj4096ELb0ELj2048ELb0ELb0EJiiiiiiiiiiiiiiiiiiiiddddddddddddddddddddEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, double noundef %20, double noundef %21, double noundef %22, double noundef %23, double noundef %24, double noundef %25, double noundef %26, double noundef %27, double noundef %28, double noundef %29, double noundef %30, double noundef %31, double noundef %32, double noundef %33, double noundef %34, double noundef %35, double noundef %36, double noundef %37, double noundef %38, double noundef %39, i32 noundef %40, ptr noundef %41, ptr noundef %42, double noundef %43) #19 comdat {
  %45 = alloca i32, align 4096
  %46 = alloca double, align 4096
  %47 = getelementptr inbounds %union.trace_element, ptr %42, i64 1
  store double %43, ptr %42, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #21
  %48 = getelementptr inbounds i8, ptr %41, i64 1
  %49 = load i8, ptr %41, align 1, !tbaa !12
  %50 = sext i8 %49 to i32
  store volatile i32 %50, ptr %45, align 4096, !tbaa !7
  %51 = load i8, ptr %48, align 1, !tbaa !12
  %52 = sitofp i8 %51 to double
  store volatile double %52, ptr %46, align 4096, !tbaa !57
  %53 = load volatile i32, ptr %45, align 4096, !tbaa !7
  %54 = getelementptr inbounds %union.trace_element, ptr %42, i64 2
  store i32 %53, ptr %47, align 8, !tbaa !12
  %55 = getelementptr inbounds %union.trace_element, ptr %42, i64 3
  store ptr %45, ptr %54, align 8, !tbaa !12
  %56 = load volatile double, ptr %46, align 4096, !tbaa !57
  %57 = getelementptr inbounds %union.trace_element, ptr %42, i64 4
  store double %56, ptr %55, align 8, !tbaa !12
  store ptr %46, ptr %57, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) #13 comdat {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = getelementptr inbounds %union.trace_element, ptr %2, i64 1
  store double %3, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %1, align 1, !tbaa !12
  %10 = sext i8 %9 to i32
  store volatile i32 %10, ptr %5, align 4, !tbaa !7
  %11 = getelementptr inbounds i8, ptr %1, i64 2
  %12 = load i8, ptr %8, align 1, !tbaa !12
  %13 = sitofp i8 %12 to double
  store volatile double %13, ptr %6, align 8, !tbaa !57
  %14 = load volatile i32, ptr %5, align 4, !tbaa !7
  %15 = getelementptr inbounds %union.trace_element, ptr %2, i64 2
  store i32 %14, ptr %7, align 8, !tbaa !12
  %16 = getelementptr inbounds %union.trace_element, ptr %2, i64 3
  store ptr %5, ptr %15, align 8, !tbaa !12
  %17 = load volatile double, ptr %6, align 8, !tbaa !57
  %18 = getelementptr inbounds %union.trace_element, ptr %2, i64 4
  store double %17, ptr %16, align 8, !tbaa !12
  %19 = getelementptr inbounds %union.trace_element, ptr %2, i64 5
  store ptr %6, ptr %18, align 8, !tbaa !12
  %20 = zext i32 %0 to i64
  %21 = call ptr @llvm.stacksave()
  %22 = alloca i8, i64 %20, align 2048
  %23 = getelementptr inbounds i8, ptr %1, i64 3
  %24 = load i8, ptr %11, align 1, !tbaa !12
  store volatile i8 %24, ptr %22, align 2048, !tbaa !12
  %25 = load i8, ptr %23, align 1, !tbaa !12
  %26 = add i32 %0, -1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %22, i64 %27
  store volatile i8 %25, ptr %28, align 1, !tbaa !12
  %29 = load volatile i8, ptr %22, align 2048, !tbaa !12
  %30 = sext i8 %29 to i32
  %31 = getelementptr inbounds %union.trace_element, ptr %2, i64 6
  store i32 %30, ptr %19, align 8, !tbaa !12
  %32 = getelementptr inbounds %union.trace_element, ptr %2, i64 7
  store ptr %22, ptr %31, align 8, !tbaa !12
  %33 = load volatile i8, ptr %28, align 1, !tbaa !12
  %34 = sext i8 %33 to i32
  %35 = getelementptr inbounds %union.trace_element, ptr %2, i64 8
  store i32 %34, ptr %32, align 8, !tbaa !12
  %36 = getelementptr inbounds %union.trace_element, ptr %2, i64 9
  store ptr %28, ptr %35, align 8, !tbaa !12
  call void @llvm.stackrestore(ptr %21)
  %37 = call i32 @_wyvern_slice__Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__189058803(ptr %1)
  %38 = getelementptr inbounds %union.trace_element, ptr %2, i64 10
  store i32 %37, ptr %36, align 8, !tbaa !12
  %39 = call double @_wyvern_slice__Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__264686497(ptr %1)
  store double %39, ptr %38, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_Z10test_frameILj4096ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) #13 comdat {
  %5 = alloca i32, align 4096
  %6 = alloca double, align 4096
  %7 = getelementptr inbounds %union.trace_element, ptr %2, i64 1
  store double %3, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %1, align 1, !tbaa !12
  %10 = sext i8 %9 to i32
  store volatile i32 %10, ptr %5, align 4096, !tbaa !7
  %11 = getelementptr inbounds i8, ptr %1, i64 2
  %12 = load i8, ptr %8, align 1, !tbaa !12
  %13 = sitofp i8 %12 to double
  store volatile double %13, ptr %6, align 4096, !tbaa !57
  %14 = load volatile i32, ptr %5, align 4096, !tbaa !7
  %15 = getelementptr inbounds %union.trace_element, ptr %2, i64 2
  store i32 %14, ptr %7, align 8, !tbaa !12
  %16 = getelementptr inbounds %union.trace_element, ptr %2, i64 3
  store ptr %5, ptr %15, align 8, !tbaa !12
  %17 = load volatile double, ptr %6, align 4096, !tbaa !57
  %18 = getelementptr inbounds %union.trace_element, ptr %2, i64 4
  store double %17, ptr %16, align 8, !tbaa !12
  %19 = getelementptr inbounds %union.trace_element, ptr %2, i64 5
  store ptr %6, ptr %18, align 8, !tbaa !12
  %20 = zext i32 %0 to i64
  %21 = call ptr @llvm.stacksave()
  %22 = alloca i8, i64 %20, align 2048
  %23 = getelementptr inbounds i8, ptr %1, i64 3
  %24 = load i8, ptr %11, align 1, !tbaa !12
  store volatile i8 %24, ptr %22, align 2048, !tbaa !12
  %25 = load i8, ptr %23, align 1, !tbaa !12
  %26 = add i32 %0, -1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %22, i64 %27
  store volatile i8 %25, ptr %28, align 1, !tbaa !12
  %29 = load volatile i8, ptr %22, align 2048, !tbaa !12
  %30 = sext i8 %29 to i32
  %31 = getelementptr inbounds %union.trace_element, ptr %2, i64 6
  store i32 %30, ptr %19, align 8, !tbaa !12
  %32 = getelementptr inbounds %union.trace_element, ptr %2, i64 7
  store ptr %22, ptr %31, align 8, !tbaa !12
  %33 = load volatile i8, ptr %28, align 1, !tbaa !12
  %34 = sext i8 %33 to i32
  %35 = getelementptr inbounds %union.trace_element, ptr %2, i64 8
  store i32 %34, ptr %32, align 8, !tbaa !12
  %36 = getelementptr inbounds %union.trace_element, ptr %2, i64 9
  store ptr %28, ptr %35, align 8, !tbaa !12
  call void @llvm.stackrestore(ptr %21)
  %37 = call i32 @_wyvern_slice__Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__189058803(ptr %1)
  %38 = getelementptr inbounds %union.trace_element, ptr %2, i64 10
  store i32 %37, ptr %36, align 8, !tbaa !12
  %39 = call double @_wyvern_slice__Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__264686497(ptr %1)
  store double %39, ptr %38, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) #13 comdat {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = getelementptr inbounds %union.trace_element, ptr %2, i64 1
  store double %3, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %1, align 1, !tbaa !12
  %10 = sext i8 %9 to i32
  store volatile i32 %10, ptr %5, align 4, !tbaa !7
  %11 = load i8, ptr %8, align 1, !tbaa !12
  %12 = sitofp i8 %11 to double
  store volatile double %12, ptr %6, align 8, !tbaa !57
  %13 = load volatile i32, ptr %5, align 4, !tbaa !7
  %14 = getelementptr inbounds %union.trace_element, ptr %2, i64 2
  store i32 %13, ptr %7, align 8, !tbaa !12
  %15 = getelementptr inbounds %union.trace_element, ptr %2, i64 3
  store ptr %5, ptr %14, align 8, !tbaa !12
  %16 = load volatile double, ptr %6, align 8, !tbaa !57
  %17 = getelementptr inbounds %union.trace_element, ptr %2, i64 4
  store double %16, ptr %15, align 8, !tbaa !12
  %18 = getelementptr inbounds %union.trace_element, ptr %2, i64 5
  store ptr %6, ptr %17, align 8, !tbaa !12
  %19 = call i32 @_wyvern_slice__Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__461115967(ptr %1)
  %20 = getelementptr inbounds %union.trace_element, ptr %2, i64 6
  store i32 %19, ptr %18, align 8, !tbaa !12
  %21 = call double @_wyvern_slice__Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__248217697(ptr %1)
  store double %21, ptr %20, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_Z10test_frameILj4096ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) #13 comdat {
  %5 = alloca i32, align 4096
  %6 = alloca double, align 4096
  %7 = getelementptr inbounds %union.trace_element, ptr %2, i64 1
  store double %3, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %1, align 1, !tbaa !12
  %10 = sext i8 %9 to i32
  store volatile i32 %10, ptr %5, align 4096, !tbaa !7
  %11 = load i8, ptr %8, align 1, !tbaa !12
  %12 = sitofp i8 %11 to double
  store volatile double %12, ptr %6, align 4096, !tbaa !57
  %13 = load volatile i32, ptr %5, align 4096, !tbaa !7
  %14 = getelementptr inbounds %union.trace_element, ptr %2, i64 2
  store i32 %13, ptr %7, align 8, !tbaa !12
  %15 = getelementptr inbounds %union.trace_element, ptr %2, i64 3
  store ptr %5, ptr %14, align 8, !tbaa !12
  %16 = load volatile double, ptr %6, align 4096, !tbaa !57
  %17 = getelementptr inbounds %union.trace_element, ptr %2, i64 4
  store double %16, ptr %15, align 8, !tbaa !12
  %18 = getelementptr inbounds %union.trace_element, ptr %2, i64 5
  store ptr %6, ptr %17, align 8, !tbaa !12
  %19 = call i32 @_wyvern_slice__Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__461115967(ptr %1)
  %20 = getelementptr inbounds %union.trace_element, ptr %2, i64 6
  store i32 %19, ptr %18, align 8, !tbaa !12
  %21 = call double @_wyvern_slice__Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__248217697(ptr %1)
  store double %21, ptr %20, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal void @_Z10test_frameILj2ELb1ELj2048ELb0ELb0EJEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) #19 comdat {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = getelementptr inbounds %union.trace_element, ptr %2, i64 1
  store double %3, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %1, align 1, !tbaa !12
  %10 = sext i8 %9 to i32
  store volatile i32 %10, ptr %5, align 4, !tbaa !7
  %11 = getelementptr inbounds i8, ptr %1, i64 2
  %12 = load i8, ptr %8, align 1, !tbaa !12
  %13 = sitofp i8 %12 to double
  store volatile double %13, ptr %6, align 8, !tbaa !57
  %14 = load volatile i32, ptr %5, align 4, !tbaa !7
  %15 = getelementptr inbounds %union.trace_element, ptr %2, i64 2
  store i32 %14, ptr %7, align 8, !tbaa !12
  %16 = getelementptr inbounds %union.trace_element, ptr %2, i64 3
  store ptr %5, ptr %15, align 8, !tbaa !12
  %17 = load volatile double, ptr %6, align 8, !tbaa !57
  %18 = getelementptr inbounds %union.trace_element, ptr %2, i64 4
  store double %17, ptr %16, align 8, !tbaa !12
  %19 = getelementptr inbounds %union.trace_element, ptr %2, i64 5
  store ptr %6, ptr %18, align 8, !tbaa !12
  %20 = zext i32 %0 to i64
  %21 = call ptr @llvm.stacksave()
  %22 = alloca i8, i64 %20, align 2048
  %23 = getelementptr inbounds i8, ptr %1, i64 3
  %24 = load i8, ptr %11, align 1, !tbaa !12
  store volatile i8 %24, ptr %22, align 2048, !tbaa !12
  %25 = load i8, ptr %23, align 1, !tbaa !12
  %26 = add i32 %0, -1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %22, i64 %27
  store volatile i8 %25, ptr %28, align 1, !tbaa !12
  %29 = load volatile i8, ptr %22, align 2048, !tbaa !12
  %30 = sext i8 %29 to i32
  %31 = getelementptr inbounds %union.trace_element, ptr %2, i64 6
  store i32 %30, ptr %19, align 8, !tbaa !12
  %32 = getelementptr inbounds %union.trace_element, ptr %2, i64 7
  store ptr %22, ptr %31, align 8, !tbaa !12
  %33 = load volatile i8, ptr %28, align 1, !tbaa !12
  %34 = sext i8 %33 to i32
  %35 = getelementptr inbounds %union.trace_element, ptr %2, i64 8
  store i32 %34, ptr %32, align 8, !tbaa !12
  store ptr %28, ptr %35, align 8, !tbaa !12
  call void @llvm.stackrestore(ptr %21)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal void @_Z10test_frameILj4096ELb1ELj2048ELb0ELb0EJEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) #19 comdat {
  %5 = alloca i32, align 4096
  %6 = alloca double, align 4096
  %7 = getelementptr inbounds %union.trace_element, ptr %2, i64 1
  store double %3, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %1, align 1, !tbaa !12
  %10 = sext i8 %9 to i32
  store volatile i32 %10, ptr %5, align 4096, !tbaa !7
  %11 = getelementptr inbounds i8, ptr %1, i64 2
  %12 = load i8, ptr %8, align 1, !tbaa !12
  %13 = sitofp i8 %12 to double
  store volatile double %13, ptr %6, align 4096, !tbaa !57
  %14 = load volatile i32, ptr %5, align 4096, !tbaa !7
  %15 = getelementptr inbounds %union.trace_element, ptr %2, i64 2
  store i32 %14, ptr %7, align 8, !tbaa !12
  %16 = getelementptr inbounds %union.trace_element, ptr %2, i64 3
  store ptr %5, ptr %15, align 8, !tbaa !12
  %17 = load volatile double, ptr %6, align 4096, !tbaa !57
  %18 = getelementptr inbounds %union.trace_element, ptr %2, i64 4
  store double %17, ptr %16, align 8, !tbaa !12
  %19 = getelementptr inbounds %union.trace_element, ptr %2, i64 5
  store ptr %6, ptr %18, align 8, !tbaa !12
  %20 = zext i32 %0 to i64
  %21 = call ptr @llvm.stacksave()
  %22 = alloca i8, i64 %20, align 2048
  %23 = getelementptr inbounds i8, ptr %1, i64 3
  %24 = load i8, ptr %11, align 1, !tbaa !12
  store volatile i8 %24, ptr %22, align 2048, !tbaa !12
  %25 = load i8, ptr %23, align 1, !tbaa !12
  %26 = add i32 %0, -1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %22, i64 %27
  store volatile i8 %25, ptr %28, align 1, !tbaa !12
  %29 = load volatile i8, ptr %22, align 2048, !tbaa !12
  %30 = sext i8 %29 to i32
  %31 = getelementptr inbounds %union.trace_element, ptr %2, i64 6
  store i32 %30, ptr %19, align 8, !tbaa !12
  %32 = getelementptr inbounds %union.trace_element, ptr %2, i64 7
  store ptr %22, ptr %31, align 8, !tbaa !12
  %33 = load volatile i8, ptr %28, align 1, !tbaa !12
  %34 = sext i8 %33 to i32
  %35 = getelementptr inbounds %union.trace_element, ptr %2, i64 8
  store i32 %34, ptr %32, align 8, !tbaa !12
  store ptr %28, ptr %35, align 8, !tbaa !12
  call void @llvm.stackrestore(ptr %21)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal void @_Z10test_frameILj2ELb0ELj2048ELb0ELb0EJEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) #19 comdat {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = getelementptr inbounds %union.trace_element, ptr %2, i64 1
  store double %3, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %1, align 1, !tbaa !12
  %10 = sext i8 %9 to i32
  store volatile i32 %10, ptr %5, align 4, !tbaa !7
  %11 = load i8, ptr %8, align 1, !tbaa !12
  %12 = sitofp i8 %11 to double
  store volatile double %12, ptr %6, align 8, !tbaa !57
  %13 = load volatile i32, ptr %5, align 4, !tbaa !7
  %14 = getelementptr inbounds %union.trace_element, ptr %2, i64 2
  store i32 %13, ptr %7, align 8, !tbaa !12
  %15 = getelementptr inbounds %union.trace_element, ptr %2, i64 3
  store ptr %5, ptr %14, align 8, !tbaa !12
  %16 = load volatile double, ptr %6, align 8, !tbaa !57
  %17 = getelementptr inbounds %union.trace_element, ptr %2, i64 4
  store double %16, ptr %15, align 8, !tbaa !12
  store ptr %6, ptr %17, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal void @_Z10test_frameILj4096ELb0ELj2048ELb0ELb0EJEEvDpT4_jPKcP13trace_elementd(i32 noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) #19 comdat {
  %5 = alloca i32, align 4096
  %6 = alloca double, align 4096
  %7 = getelementptr inbounds %union.trace_element, ptr %2, i64 1
  store double %3, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %1, align 1, !tbaa !12
  %10 = sext i8 %9 to i32
  store volatile i32 %10, ptr %5, align 4096, !tbaa !7
  %11 = load i8, ptr %8, align 1, !tbaa !12
  %12 = sitofp i8 %11 to double
  store volatile double %12, ptr %6, align 4096, !tbaa !57
  %13 = load volatile i32, ptr %5, align 4096, !tbaa !7
  %14 = getelementptr inbounds %union.trace_element, ptr %2, i64 2
  store i32 %13, ptr %7, align 8, !tbaa !12
  %15 = getelementptr inbounds %union.trace_element, ptr %2, i64 3
  store ptr %5, ptr %14, align 8, !tbaa !12
  %16 = load volatile double, ptr %6, align 4096, !tbaa !57
  %17 = getelementptr inbounds %union.trace_element, ptr %2, i64 4
  store double %16, ptr %15, align 8, !tbaa !12
  store ptr %6, ptr %17, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i64 @_wyvern_slice__ZNSt6vectorIPKcSaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag__846410069(ptr %0, ptr %1) #20 {
sliceclone_:
  %2 = ptrtoint ptr %1 to i64
  %3 = ptrtoint ptr %0 to i64
  %4 = sub i64 %2, %3
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i32 @_wyvern_slice__Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__189058803(ptr %0) #20 {
sliceclone_:
  %1 = getelementptr inbounds i8, ptr %0, i64 4
  %2 = load i8, ptr %1, align 1, !tbaa !12
  %3 = sext i8 %2 to i32
  %4 = shl nsw i32 %3, 1
  %5 = shl nsw i32 %3, 2
  %6 = shl nsw i32 %3, 3
  %7 = shl nsw i32 %3, 4
  %8 = shl nsw i32 %3, 5
  %9 = sext i8 %2 to i16
  %10 = mul nsw i16 %9, 39
  %11 = sext i8 %2 to i16
  %12 = mul nsw i16 %11, 38
  %13 = sdiv i16 %10, %12
  %14 = sext i8 %2 to i16
  %15 = mul nsw i16 %14, 37
  %16 = sdiv i16 %13, %15
  %17 = sext i8 %2 to i16
  %18 = mul nsw i16 %17, 36
  %19 = sdiv i16 %16, %18
  %20 = sext i8 %2 to i16
  %21 = mul nsw i16 %20, 35
  %22 = sdiv i16 %19, %21
  %23 = sext i8 %2 to i16
  %24 = mul nsw i16 %23, 34
  %25 = sdiv i16 %22, %24
  %26 = sext i8 %2 to i16
  %27 = mul nsw i16 %26, 33
  %28 = sdiv i16 %25, %27
  %29 = sext i16 %28 to i32
  %30 = sdiv i32 %29, %8
  %31 = trunc i32 %30 to i16
  %32 = sext i8 %2 to i16
  %33 = mul nsw i16 %32, 31
  %34 = sdiv i16 %31, %33
  %35 = sext i8 %2 to i16
  %36 = mul nsw i16 %35, 30
  %37 = sdiv i16 %34, %36
  %38 = sext i8 %2 to i16
  %39 = mul nsw i16 %38, 29
  %40 = sdiv i16 %37, %39
  %41 = sext i8 %2 to i16
  %42 = mul nsw i16 %41, 28
  %43 = sdiv i16 %40, %42
  %44 = sext i8 %2 to i16
  %45 = mul nsw i16 %44, 27
  %46 = sdiv i16 %43, %45
  %47 = sext i8 %2 to i16
  %48 = mul nsw i16 %47, 26
  %49 = sdiv i16 %46, %48
  %50 = sext i8 %2 to i16
  %51 = mul nsw i16 %50, 25
  %52 = sdiv i16 %49, %51
  %53 = sext i8 %2 to i16
  %54 = mul nsw i16 %53, 24
  %55 = sdiv i16 %52, %54
  %56 = sext i8 %2 to i16
  %57 = mul nsw i16 %56, 23
  %58 = sdiv i16 %55, %57
  %59 = sext i8 %2 to i16
  %60 = mul nsw i16 %59, 22
  %61 = sdiv i16 %58, %60
  %62 = sext i8 %2 to i16
  %63 = mul nsw i16 %62, 21
  %64 = sdiv i16 %61, %63
  %65 = sext i8 %2 to i16
  %66 = mul nsw i16 %65, 20
  %67 = sdiv i16 %64, %66
  %68 = sext i8 %2 to i16
  %69 = mul nsw i16 %68, 19
  %70 = sdiv i16 %67, %69
  %71 = sext i8 %2 to i16
  %72 = mul nsw i16 %71, 18
  %73 = sdiv i16 %70, %72
  %74 = sext i8 %2 to i16
  %75 = mul nsw i16 %74, 17
  %76 = sdiv i16 %73, %75
  %77 = sext i16 %76 to i32
  %78 = sdiv i32 %77, %7
  %79 = trunc i32 %78 to i16
  %80 = sext i8 %2 to i16
  %81 = mul nsw i16 %80, 15
  %82 = sdiv i16 %79, %81
  %83 = sext i8 %2 to i16
  %84 = mul nsw i16 %83, 14
  %85 = sdiv i16 %82, %84
  %86 = sext i8 %2 to i16
  %87 = mul nsw i16 %86, 13
  %88 = sdiv i16 %85, %87
  %89 = sext i8 %2 to i16
  %90 = mul nsw i16 %89, 12
  %91 = sdiv i16 %88, %90
  %92 = sext i8 %2 to i16
  %93 = mul nsw i16 %92, 11
  %94 = sdiv i16 %91, %93
  %95 = sext i8 %2 to i16
  %96 = mul nsw i16 %95, 10
  %97 = sdiv i16 %94, %96
  %98 = sext i8 %2 to i16
  %99 = mul nsw i16 %98, 9
  %100 = sdiv i16 %97, %99
  %101 = sext i16 %100 to i32
  %102 = sdiv i32 %101, %6
  %103 = trunc i32 %102 to i16
  %104 = sext i8 %2 to i16
  %105 = mul nsw i16 %104, 7
  %106 = sdiv i16 %103, %105
  %107 = sext i8 %2 to i16
  %108 = mul nsw i16 %107, 6
  %109 = sdiv i16 %106, %108
  %110 = sext i8 %2 to i16
  %111 = mul nsw i16 %110, 5
  %112 = sdiv i16 %109, %111
  %113 = sext i16 %112 to i32
  %114 = sdiv i32 %113, %5
  %115 = trunc i32 %114 to i16
  %116 = sext i8 %2 to i16
  %117 = mul nsw i16 %116, 3
  %118 = sdiv i16 %115, %117
  %119 = sext i16 %118 to i32
  %120 = sdiv i32 %119, %4
  %121 = trunc i32 %120 to i16
  %122 = sext i8 %2 to i16
  %123 = sdiv i16 %121, %122
  %124 = sext i16 %123 to i32
  %125 = sdiv i32 %3, %4
  %126 = trunc i32 %125 to i16
  %127 = sdiv i16 %126, %117
  %128 = sext i16 %127 to i32
  %129 = sdiv i32 %128, %5
  %130 = trunc i32 %129 to i16
  %131 = sdiv i16 %130, %111
  %132 = sdiv i16 %131, %108
  %133 = sdiv i16 %132, %105
  %134 = sext i16 %133 to i32
  %135 = sdiv i32 %134, %6
  %136 = trunc i32 %135 to i16
  %137 = sdiv i16 %136, %99
  %138 = sdiv i16 %137, %96
  %139 = sdiv i16 %138, %93
  %140 = sdiv i16 %139, %90
  %141 = sdiv i16 %140, %87
  %142 = sdiv i16 %141, %84
  %143 = sdiv i16 %142, %81
  %144 = sext i16 %143 to i32
  %145 = sdiv i32 %144, %7
  %146 = trunc i32 %145 to i16
  %147 = sdiv i16 %146, %75
  %148 = sdiv i16 %147, %72
  %149 = sdiv i16 %148, %69
  %150 = sdiv i16 %149, %66
  %151 = sdiv i16 %150, %63
  %152 = sdiv i16 %151, %60
  %153 = sdiv i16 %152, %57
  %154 = sdiv i16 %153, %54
  %155 = sdiv i16 %154, %51
  %156 = sdiv i16 %155, %48
  %157 = sdiv i16 %156, %45
  %158 = sdiv i16 %157, %42
  %159 = sdiv i16 %158, %39
  %160 = sdiv i16 %159, %36
  %161 = sdiv i16 %160, %33
  %162 = sext i16 %161 to i32
  %163 = sdiv i32 %162, %8
  %164 = trunc i32 %163 to i16
  %165 = sdiv i16 %164, %27
  %166 = sdiv i16 %165, %24
  %167 = sdiv i16 %166, %21
  %168 = sdiv i16 %167, %18
  %169 = sdiv i16 %168, %15
  %170 = sdiv i16 %169, %12
  %171 = sdiv i16 %170, %10
  %172 = sdiv i16 %171, %122
  %173 = sext i16 %172 to i32
  %174 = mul nsw i32 %173, %124
  ret i32 %174
}

; Function Attrs: noinline nounwind optsize willreturn
define internal double @_wyvern_slice__Z10test_frameILj2ELb1ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__264686497(ptr %0) #20 {
sliceclone_:
  %1 = getelementptr inbounds i8, ptr %0, i64 5
  %2 = load i8, ptr %1, align 1, !tbaa !12
  %3 = sitofp i8 %2 to double
  %4 = fadd double %3, %3
  %5 = fadd double %4, %3
  %6 = fadd double %5, %3
  %7 = fadd double %6, %3
  %8 = fadd double %7, %3
  %9 = fadd double %8, %3
  %10 = fadd double %9, %3
  %11 = fadd double %10, %3
  %12 = fadd double %11, %3
  %13 = fadd double %12, %3
  %14 = fadd double %13, %3
  %15 = fadd double %14, %3
  %16 = fadd double %15, %3
  %17 = fadd double %16, %3
  %18 = fadd double %17, %3
  %19 = fadd double %18, %3
  %20 = fadd double %19, %3
  %21 = fadd double %20, %3
  %22 = fadd double %21, %3
  %23 = fadd double %22, %3
  %24 = fadd double %23, %3
  %25 = fadd double %24, %3
  %26 = fadd double %25, %3
  %27 = fadd double %26, %3
  %28 = fadd double %27, %3
  %29 = fadd double %28, %3
  %30 = fadd double %29, %3
  %31 = fadd double %30, %3
  %32 = fadd double %31, %3
  %33 = fadd double %32, %3
  %34 = fadd double %33, %3
  %35 = fadd double %34, %3
  %36 = fadd double %35, %3
  %37 = fadd double %36, %3
  %38 = fadd double %37, %3
  %39 = fadd double %38, %3
  %40 = fadd double %39, %3
  %41 = fadd double %40, %3
  %42 = fdiv double %41, %40
  %43 = fdiv double %42, %39
  %44 = fdiv double %43, %38
  %45 = fdiv double %44, %37
  %46 = fdiv double %45, %36
  %47 = fdiv double %46, %35
  %48 = fdiv double %47, %34
  %49 = fdiv double %48, %33
  %50 = fdiv double %49, %32
  %51 = fdiv double %50, %31
  %52 = fdiv double %51, %30
  %53 = fdiv double %52, %29
  %54 = fdiv double %53, %28
  %55 = fdiv double %54, %27
  %56 = fdiv double %55, %26
  %57 = fdiv double %56, %25
  %58 = fdiv double %57, %24
  %59 = fdiv double %58, %23
  %60 = fdiv double %59, %22
  %61 = fdiv double %60, %21
  %62 = fdiv double %61, %20
  %63 = fdiv double %62, %19
  %64 = fdiv double %63, %18
  %65 = fdiv double %64, %17
  %66 = fdiv double %65, %16
  %67 = fdiv double %66, %15
  %68 = fdiv double %67, %14
  %69 = fdiv double %68, %13
  %70 = fdiv double %69, %12
  %71 = fdiv double %70, %11
  %72 = fdiv double %71, %10
  %73 = fdiv double %72, %9
  %74 = fdiv double %73, %8
  %75 = fdiv double %74, %7
  %76 = fdiv double %75, %6
  %77 = fdiv double %76, %5
  %78 = fdiv double %77, %4
  %79 = fdiv double %78, %3
  %80 = fdiv double %3, %4
  %81 = fdiv double %80, %5
  %82 = fdiv double %81, %6
  %83 = fdiv double %82, %7
  %84 = fdiv double %83, %8
  %85 = fdiv double %84, %9
  %86 = fdiv double %85, %10
  %87 = fdiv double %86, %11
  %88 = fdiv double %87, %12
  %89 = fdiv double %88, %13
  %90 = fdiv double %89, %14
  %91 = fdiv double %90, %15
  %92 = fdiv double %91, %16
  %93 = fdiv double %92, %17
  %94 = fdiv double %93, %18
  %95 = fdiv double %94, %19
  %96 = fdiv double %95, %20
  %97 = fdiv double %96, %21
  %98 = fdiv double %97, %22
  %99 = fdiv double %98, %23
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %25
  %102 = fdiv double %101, %26
  %103 = fdiv double %102, %27
  %104 = fdiv double %103, %28
  %105 = fdiv double %104, %29
  %106 = fdiv double %105, %30
  %107 = fdiv double %106, %31
  %108 = fdiv double %107, %32
  %109 = fdiv double %108, %33
  %110 = fdiv double %109, %34
  %111 = fdiv double %110, %35
  %112 = fdiv double %111, %36
  %113 = fdiv double %112, %37
  %114 = fdiv double %113, %38
  %115 = fdiv double %114, %39
  %116 = fdiv double %115, %40
  %117 = fdiv double %116, %41
  %118 = fdiv double %117, %3
  %119 = fmul double %118, %79
  ret double %119
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i32 @_wyvern_slice__Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__461115967(ptr %0) #20 {
sliceclone_:
  %1 = getelementptr inbounds i8, ptr %0, i64 2
  %2 = load i8, ptr %1, align 1, !tbaa !12
  %3 = sext i8 %2 to i32
  %4 = shl nsw i32 %3, 1
  %5 = shl nsw i32 %3, 2
  %6 = shl nsw i32 %3, 3
  %7 = shl nsw i32 %3, 4
  %8 = shl nsw i32 %3, 5
  %9 = sext i8 %2 to i16
  %10 = mul nsw i16 %9, 39
  %11 = sext i8 %2 to i16
  %12 = mul nsw i16 %11, 38
  %13 = sdiv i16 %10, %12
  %14 = sext i8 %2 to i16
  %15 = mul nsw i16 %14, 37
  %16 = sdiv i16 %13, %15
  %17 = sext i8 %2 to i16
  %18 = mul nsw i16 %17, 36
  %19 = sdiv i16 %16, %18
  %20 = sext i8 %2 to i16
  %21 = mul nsw i16 %20, 35
  %22 = sdiv i16 %19, %21
  %23 = sext i8 %2 to i16
  %24 = mul nsw i16 %23, 34
  %25 = sdiv i16 %22, %24
  %26 = sext i8 %2 to i16
  %27 = mul nsw i16 %26, 33
  %28 = sdiv i16 %25, %27
  %29 = sext i16 %28 to i32
  %30 = sdiv i32 %29, %8
  %31 = trunc i32 %30 to i16
  %32 = sext i8 %2 to i16
  %33 = mul nsw i16 %32, 31
  %34 = sdiv i16 %31, %33
  %35 = sext i8 %2 to i16
  %36 = mul nsw i16 %35, 30
  %37 = sdiv i16 %34, %36
  %38 = sext i8 %2 to i16
  %39 = mul nsw i16 %38, 29
  %40 = sdiv i16 %37, %39
  %41 = sext i8 %2 to i16
  %42 = mul nsw i16 %41, 28
  %43 = sdiv i16 %40, %42
  %44 = sext i8 %2 to i16
  %45 = mul nsw i16 %44, 27
  %46 = sdiv i16 %43, %45
  %47 = sext i8 %2 to i16
  %48 = mul nsw i16 %47, 26
  %49 = sdiv i16 %46, %48
  %50 = sext i8 %2 to i16
  %51 = mul nsw i16 %50, 25
  %52 = sdiv i16 %49, %51
  %53 = sext i8 %2 to i16
  %54 = mul nsw i16 %53, 24
  %55 = sdiv i16 %52, %54
  %56 = sext i8 %2 to i16
  %57 = mul nsw i16 %56, 23
  %58 = sdiv i16 %55, %57
  %59 = sext i8 %2 to i16
  %60 = mul nsw i16 %59, 22
  %61 = sdiv i16 %58, %60
  %62 = sext i8 %2 to i16
  %63 = mul nsw i16 %62, 21
  %64 = sdiv i16 %61, %63
  %65 = sext i8 %2 to i16
  %66 = mul nsw i16 %65, 20
  %67 = sdiv i16 %64, %66
  %68 = sext i8 %2 to i16
  %69 = mul nsw i16 %68, 19
  %70 = sdiv i16 %67, %69
  %71 = sext i8 %2 to i16
  %72 = mul nsw i16 %71, 18
  %73 = sdiv i16 %70, %72
  %74 = sext i8 %2 to i16
  %75 = mul nsw i16 %74, 17
  %76 = sdiv i16 %73, %75
  %77 = sext i16 %76 to i32
  %78 = sdiv i32 %77, %7
  %79 = trunc i32 %78 to i16
  %80 = sext i8 %2 to i16
  %81 = mul nsw i16 %80, 15
  %82 = sdiv i16 %79, %81
  %83 = sext i8 %2 to i16
  %84 = mul nsw i16 %83, 14
  %85 = sdiv i16 %82, %84
  %86 = sext i8 %2 to i16
  %87 = mul nsw i16 %86, 13
  %88 = sdiv i16 %85, %87
  %89 = sext i8 %2 to i16
  %90 = mul nsw i16 %89, 12
  %91 = sdiv i16 %88, %90
  %92 = sext i8 %2 to i16
  %93 = mul nsw i16 %92, 11
  %94 = sdiv i16 %91, %93
  %95 = sext i8 %2 to i16
  %96 = mul nsw i16 %95, 10
  %97 = sdiv i16 %94, %96
  %98 = sext i8 %2 to i16
  %99 = mul nsw i16 %98, 9
  %100 = sdiv i16 %97, %99
  %101 = sext i16 %100 to i32
  %102 = sdiv i32 %101, %6
  %103 = trunc i32 %102 to i16
  %104 = sext i8 %2 to i16
  %105 = mul nsw i16 %104, 7
  %106 = sdiv i16 %103, %105
  %107 = sext i8 %2 to i16
  %108 = mul nsw i16 %107, 6
  %109 = sdiv i16 %106, %108
  %110 = sext i8 %2 to i16
  %111 = mul nsw i16 %110, 5
  %112 = sdiv i16 %109, %111
  %113 = sext i16 %112 to i32
  %114 = sdiv i32 %113, %5
  %115 = trunc i32 %114 to i16
  %116 = sext i8 %2 to i16
  %117 = mul nsw i16 %116, 3
  %118 = sdiv i16 %115, %117
  %119 = sext i16 %118 to i32
  %120 = sdiv i32 %119, %4
  %121 = trunc i32 %120 to i16
  %122 = sext i8 %2 to i16
  %123 = sdiv i16 %121, %122
  %124 = sext i16 %123 to i32
  %125 = sdiv i32 %3, %4
  %126 = trunc i32 %125 to i16
  %127 = sdiv i16 %126, %117
  %128 = sext i16 %127 to i32
  %129 = sdiv i32 %128, %5
  %130 = trunc i32 %129 to i16
  %131 = sdiv i16 %130, %111
  %132 = sdiv i16 %131, %108
  %133 = sdiv i16 %132, %105
  %134 = sext i16 %133 to i32
  %135 = sdiv i32 %134, %6
  %136 = trunc i32 %135 to i16
  %137 = sdiv i16 %136, %99
  %138 = sdiv i16 %137, %96
  %139 = sdiv i16 %138, %93
  %140 = sdiv i16 %139, %90
  %141 = sdiv i16 %140, %87
  %142 = sdiv i16 %141, %84
  %143 = sdiv i16 %142, %81
  %144 = sext i16 %143 to i32
  %145 = sdiv i32 %144, %7
  %146 = trunc i32 %145 to i16
  %147 = sdiv i16 %146, %75
  %148 = sdiv i16 %147, %72
  %149 = sdiv i16 %148, %69
  %150 = sdiv i16 %149, %66
  %151 = sdiv i16 %150, %63
  %152 = sdiv i16 %151, %60
  %153 = sdiv i16 %152, %57
  %154 = sdiv i16 %153, %54
  %155 = sdiv i16 %154, %51
  %156 = sdiv i16 %155, %48
  %157 = sdiv i16 %156, %45
  %158 = sdiv i16 %157, %42
  %159 = sdiv i16 %158, %39
  %160 = sdiv i16 %159, %36
  %161 = sdiv i16 %160, %33
  %162 = sext i16 %161 to i32
  %163 = sdiv i32 %162, %8
  %164 = trunc i32 %163 to i16
  %165 = sdiv i16 %164, %27
  %166 = sdiv i16 %165, %24
  %167 = sdiv i16 %166, %21
  %168 = sdiv i16 %167, %18
  %169 = sdiv i16 %168, %15
  %170 = sdiv i16 %169, %12
  %171 = sdiv i16 %170, %10
  %172 = sdiv i16 %171, %122
  %173 = sext i16 %172 to i32
  %174 = mul nsw i32 %173, %124
  ret i32 %174
}

; Function Attrs: noinline nounwind optsize willreturn
define internal double @_wyvern_slice__Z10test_frameILj2ELb0ELj2048ELb1ELb0EJEEvDpT4_jPKcP13trace_elementd__248217697(ptr %0) #20 {
sliceclone_:
  %1 = getelementptr inbounds i8, ptr %0, i64 3
  %2 = load i8, ptr %1, align 1, !tbaa !12
  %3 = sitofp i8 %2 to double
  %4 = fadd double %3, %3
  %5 = fadd double %4, %3
  %6 = fadd double %5, %3
  %7 = fadd double %6, %3
  %8 = fadd double %7, %3
  %9 = fadd double %8, %3
  %10 = fadd double %9, %3
  %11 = fadd double %10, %3
  %12 = fadd double %11, %3
  %13 = fadd double %12, %3
  %14 = fadd double %13, %3
  %15 = fadd double %14, %3
  %16 = fadd double %15, %3
  %17 = fadd double %16, %3
  %18 = fadd double %17, %3
  %19 = fadd double %18, %3
  %20 = fadd double %19, %3
  %21 = fadd double %20, %3
  %22 = fadd double %21, %3
  %23 = fadd double %22, %3
  %24 = fadd double %23, %3
  %25 = fadd double %24, %3
  %26 = fadd double %25, %3
  %27 = fadd double %26, %3
  %28 = fadd double %27, %3
  %29 = fadd double %28, %3
  %30 = fadd double %29, %3
  %31 = fadd double %30, %3
  %32 = fadd double %31, %3
  %33 = fadd double %32, %3
  %34 = fadd double %33, %3
  %35 = fadd double %34, %3
  %36 = fadd double %35, %3
  %37 = fadd double %36, %3
  %38 = fadd double %37, %3
  %39 = fadd double %38, %3
  %40 = fadd double %39, %3
  %41 = fadd double %40, %3
  %42 = fdiv double %41, %40
  %43 = fdiv double %42, %39
  %44 = fdiv double %43, %38
  %45 = fdiv double %44, %37
  %46 = fdiv double %45, %36
  %47 = fdiv double %46, %35
  %48 = fdiv double %47, %34
  %49 = fdiv double %48, %33
  %50 = fdiv double %49, %32
  %51 = fdiv double %50, %31
  %52 = fdiv double %51, %30
  %53 = fdiv double %52, %29
  %54 = fdiv double %53, %28
  %55 = fdiv double %54, %27
  %56 = fdiv double %55, %26
  %57 = fdiv double %56, %25
  %58 = fdiv double %57, %24
  %59 = fdiv double %58, %23
  %60 = fdiv double %59, %22
  %61 = fdiv double %60, %21
  %62 = fdiv double %61, %20
  %63 = fdiv double %62, %19
  %64 = fdiv double %63, %18
  %65 = fdiv double %64, %17
  %66 = fdiv double %65, %16
  %67 = fdiv double %66, %15
  %68 = fdiv double %67, %14
  %69 = fdiv double %68, %13
  %70 = fdiv double %69, %12
  %71 = fdiv double %70, %11
  %72 = fdiv double %71, %10
  %73 = fdiv double %72, %9
  %74 = fdiv double %73, %8
  %75 = fdiv double %74, %7
  %76 = fdiv double %75, %6
  %77 = fdiv double %76, %5
  %78 = fdiv double %77, %4
  %79 = fdiv double %78, %3
  %80 = fdiv double %3, %4
  %81 = fdiv double %80, %5
  %82 = fdiv double %81, %6
  %83 = fdiv double %82, %7
  %84 = fdiv double %83, %8
  %85 = fdiv double %84, %9
  %86 = fdiv double %85, %10
  %87 = fdiv double %86, %11
  %88 = fdiv double %87, %12
  %89 = fdiv double %88, %13
  %90 = fdiv double %89, %14
  %91 = fdiv double %90, %15
  %92 = fdiv double %91, %16
  %93 = fdiv double %92, %17
  %94 = fdiv double %93, %18
  %95 = fdiv double %94, %19
  %96 = fdiv double %95, %20
  %97 = fdiv double %96, %21
  %98 = fdiv double %97, %22
  %99 = fdiv double %98, %23
  %100 = fdiv double %99, %24
  %101 = fdiv double %100, %25
  %102 = fdiv double %101, %26
  %103 = fdiv double %102, %27
  %104 = fdiv double %103, %28
  %105 = fdiv double %104, %29
  %106 = fdiv double %105, %30
  %107 = fdiv double %106, %31
  %108 = fdiv double %107, %32
  %109 = fdiv double %108, %33
  %110 = fdiv double %109, %34
  %111 = fdiv double %110, %35
  %112 = fdiv double %111, %36
  %113 = fdiv double %112, %37
  %114 = fdiv double %113, %38
  %115 = fdiv double %114, %39
  %116 = fdiv double %115, %40
  %117 = fdiv double %116, %41
  %118 = fdiv double %117, %3
  %119 = fmul double %118, %79
  ret double %119
}

attributes #0 = { mustprogress noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noinline nounwind optsize willreturn "Daedalus"="1" }
attributes #21 = { nounwind }
attributes #22 = { noreturn }
attributes #23 = { optsize }
attributes #24 = { builtin nounwind optsize }
attributes #25 = { noreturn optsize }
attributes #26 = { builtin optsize allocsize(0) }
attributes #27 = { nounwind optsize }

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
!10 = !{!"Simple C++ TBAA"}
!11 = !{i64 0, i64 128, !12}
!12 = !{!9, !9, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!14, !15, i64 16}
!17 = !{!14, !15, i64 8}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !10, i64 0}
!21 = !{!22, !25, i64 32}
!22 = !{!"_ZTSSt8ios_base", !23, i64 8, !23, i64 16, !24, i64 24, !25, i64 28, !25, i64 32, !15, i64 40, !26, i64 48, !9, i64 64, !8, i64 192, !15, i64 200, !27, i64 208}
!23 = !{!"long", !9, i64 0}
!24 = !{!"_ZTSSt13_Ios_Fmtflags", !9, i64 0}
!25 = !{!"_ZTSSt12_Ios_Iostate", !9, i64 0}
!26 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !23, i64 8}
!27 = !{!"_ZTSSt6locale", !15, i64 0}
!28 = !{!22, !23, i64 16}
!29 = !{!30, !15, i64 240}
!30 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !22, i64 0, !15, i64 216, !9, i64 224, !31, i64 225, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256}
!31 = !{!"bool", !9, i64 0}
!32 = !{!33, !9, i64 56}
!33 = !{!"_ZTSSt5ctypeIcE", !34, i64 0, !15, i64 16, !31, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !9, i64 56, !9, i64 57, !9, i64 313, !9, i64 569}
!34 = !{!"_ZTSNSt6locale5facetE", !8, i64 8}
!35 = !{!36, !15, i64 0}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: %agg.result"}
!39 = distinct !{!39, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!40 = !{!41, !15, i64 0}
!41 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !36, i64 0, !23, i64 8, !9, i64 16}
!42 = !{!41, !23, i64 8}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: %agg.result"}
!45 = distinct !{!45, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: %agg.result"}
!48 = distinct !{!48, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: %agg.result"}
!51 = distinct !{!51, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: %agg.result"}
!54 = distinct !{!54, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!55 = !{!23, !23, i64 0}
!56 = !{!15, !15, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"double", !9, i64 0}
