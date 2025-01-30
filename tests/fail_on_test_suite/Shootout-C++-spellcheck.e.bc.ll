; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Shootout-C++/Shootout-C++-spellcheck.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%class.spell_checker = type { %"class.std::map" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::pair<const char *, const char *>, std::pair<const std::pair<const char *, const char *>, int>, std::_Select1st<std::pair<const std::pair<const char *, const char *>, int>>, std::less<std::pair<const char *, const char *>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::pair<const char *, const char *>, std::pair<const std::pair<const char *, const char *>, int>, std::_Select1st<std::pair<const std::pair<const char *, const char *>, int>>, std::less<std::pair<const char *, const char *>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"class.std::ios_base::Init" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::basic_ifstream" = type { %"struct.std::ios_base::_Words", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [24 x i8] }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"class.std::locale" }

$_ZN13spell_checkerC2Ev = comdat any

$_ZN13spell_checker7processERSi = comdat any

$_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EED2Ev = comdat any

$_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE4findERS4_ = comdat any

$_ZNSt3mapISt4pairIPKcS2_EiSt4lessIS3_ESaIS0_IKS3_iEEEixEOS3_ = comdat any

$_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_ = comdat any

$_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_ = comdat any

$_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSD_PSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE24_M_get_insert_unique_posERS4_ = comdat any

$_ZSt19piecewise_construct = comdat any

@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_spellcheck.cpp, ptr null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str = private unnamed_addr constant [15 x i8] c"Usr.Dict.Words\00", align 1
@_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE = external unnamed_addr constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVSt13basic_filebufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZSt19piecewise_construct = internal constant %"class.std::ios_base::Init" zeroinitializer, comdat, align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: optsize uwtable
define internal void @_GLOBAL__sub_I_spellcheck.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #16
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #17
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: norecurse optsize uwtable
define dso_local noundef i32 @main() #4 personality ptr @__gxx_personality_v0 {
  %1 = alloca %class.spell_checker, align 8
  %2 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %1) #17
  call void @_ZN13spell_checkerC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #17
  %3 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !7
  %4 = getelementptr i8, ptr %3, i64 -24
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %5
  %7 = getelementptr inbounds %"class.std::basic_ios", ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %2, i64 noundef 4096) #16
          to label %13 unwind label %15

13:                                               ; preds = %0
  invoke void @_ZN13spell_checker7processERSi(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin) #16
          to label %14 unwind label %15

14:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #17
  call void @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %1) #17
  ret i32 0

15:                                               ; preds = %13, %0
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #17
  call void @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %1) #17
  resume { ptr, i32 } %16
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize uwtable
define internal void @_ZN13spell_checkerC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::basic_ifstream", align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca %"struct.std::pair", align 8
  %5 = alloca %"struct.std::pair", align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 0, ptr %6, align 8, !tbaa !22
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr null, ptr %7, align 8, !tbaa !26
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr %6, ptr %8, align 8, !tbaa !27
  %9 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr %6, ptr %9, align 8, !tbaa !28
  %10 = getelementptr inbounds i8, ptr %0, i64 40
  store i64 0, ptr %10, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %2) #17
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %2, ptr noundef nonnull @.str, i32 noundef 8) #16
          to label %11 unwind label %54

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %12 = getelementptr i8, ptr %3, i64 -1
  %13 = getelementptr inbounds %"class.std::basic_istream", ptr %2, i64 0, i32 1
  %14 = getelementptr inbounds %"struct.std::pair", ptr %4, i64 0, i32 1
  %15 = ptrtoint ptr %3 to i64
  %16 = getelementptr inbounds %"struct.std::pair", ptr %5, i64 0, i32 1
  br label %17

17:                                               ; preds = %53, %11
  %18 = load ptr, ptr %2, align 8, !tbaa !7
  %19 = getelementptr i8, ptr %18, i64 -24
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds i8, ptr %2, i64 %20
  %22 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %21, i8 noundef signext 10) #16
          to label %23 unwind label %56

23:                                               ; preds = %17
  %24 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %3, i64 noundef 32, i8 noundef signext %22) #16
          to label %25 unwind label %56

25:                                               ; preds = %23
  %26 = load ptr, ptr %24, align 8, !tbaa !7
  %27 = getelementptr i8, ptr %26, i64 -24
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds i8, ptr %24, i64 %28
  %30 = getelementptr inbounds %"class.std::ios_base", ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !30
  %32 = and i32 %31, 5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %25
  %35 = load i64, ptr %13, align 8, !tbaa !31
  %36 = getelementptr i8, ptr %12, i64 %35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  store ptr %3, ptr %4, align 8, !tbaa !33
  store ptr %36, ptr %14, align 8, !tbaa !35
  %37 = invoke ptr @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE4findERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %4) #16
          to label %38 unwind label %58

38:                                               ; preds = %34
  %39 = icmp eq ptr %6, %37
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  br i1 %39, label %40, label %53

40:                                               ; preds = %38
  %41 = ptrtoint ptr %36 to i64
  %42 = sub i64 %41, %15
  %43 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %42) #19
          to label %44 unwind label %60

44:                                               ; preds = %40
  %45 = icmp eq ptr %36, %3
  br i1 %45, label %47, label %46

46:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %43, ptr nonnull align 16 %3, i64 %42, i1 false)
  br label %47

47:                                               ; preds = %46, %44
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %48 = getelementptr inbounds i8, ptr %43, i64 %42
  store ptr %43, ptr %5, align 8, !tbaa !33
  store ptr %48, ptr %16, align 8, !tbaa !35
  %49 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapISt4pairIPKcS2_EiSt4lessIS3_ESaIS0_IKS3_iEEEixEOS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #16
          to label %50 unwind label %62

50:                                               ; preds = %47
  %51 = load i32, ptr %49, align 4, !tbaa !36
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %49, align 4, !tbaa !36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  br label %53

53:                                               ; preds = %50, %38
  br label %17, !llvm.loop !37

54:                                               ; preds = %1
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %67

56:                                               ; preds = %23, %17
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %65

58:                                               ; preds = %34
  %59 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  br label %65

60:                                               ; preds = %40
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %65

62:                                               ; preds = %47
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  br label %65

64:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %2) #18
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %2) #17
  ret void

65:                                               ; preds = %62, %60, %58, %56
  %66 = phi { ptr, i32 } [ %57, %56 ], [ %59, %58 ], [ %63, %62 ], [ %61, %60 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %2) #18
  br label %67

67:                                               ; preds = %65, %54
  %68 = phi { ptr, i32 } [ %66, %65 ], [ %55, %54 ]
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %2) #17
  call void @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %68
}

; Function Attrs: optsize uwtable
define internal void @_ZN13spell_checker7processERSi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
  %3 = alloca i8, align 1
  %4 = alloca [32 x i8], align 16
  %5 = alloca %"struct.std::pair", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  %6 = getelementptr i8, ptr %4, i64 -1
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  %8 = getelementptr inbounds %"class.std::basic_istream", ptr %1, i64 0, i32 1
  %9 = getelementptr inbounds %"struct.std::pair", ptr %5, i64 0, i32 1
  br label %10

10:                                               ; preds = %44, %2
  %11 = load ptr, ptr %1, align 8, !tbaa !7
  %12 = getelementptr i8, ptr %11, i64 -24
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds i8, ptr %1, i64 %13
  %15 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %14, i8 noundef signext 10) #16
  %16 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %4, i64 noundef 32, i8 noundef signext %15) #16
  %17 = load ptr, ptr %16, align 8, !tbaa !7
  %18 = getelementptr i8, ptr %17, i64 -24
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds i8, ptr %16, i64 %19
  %21 = getelementptr inbounds %"class.std::ios_base", ptr %20, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !30
  %23 = and i32 %22, 5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %26 = load i64, ptr %8, align 8, !tbaa !31
  %27 = getelementptr i8, ptr %6, i64 %26
  store ptr %4, ptr %5, align 8, !tbaa !33
  store ptr %27, ptr %9, align 8, !tbaa !35
  %28 = call ptr @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE4findERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  %29 = icmp eq ptr %7, %28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #18
  %32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %4, i64 noundef %31) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 10, ptr %3, align 1, !tbaa !39
  %33 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !7
  %34 = getelementptr i8, ptr %33, i64 -24
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr i8, ptr getelementptr inbounds (%"class.std::basic_ostream", ptr @_ZSt4cout, i64 0, i32 1, i32 0, i32 1), i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !40
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %3, i64 noundef 1) #16
  br label %43

41:                                               ; preds = %30
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 10) #16
  br label %43

43:                                               ; preds = %41, %39
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %44

44:                                               ; preds = %43, %25
  br label %10, !llvm.loop !41

45:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind optsize uwtable
define internal void @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !26
  invoke void @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %3) #16
          to label %4 unwind label %5

4:                                                ; preds = %1
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #20
  unreachable
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  tail call void @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7) #16
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  tail call void @_ZdlPv(ptr noundef nonnull %5) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !44

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define internal void @__clang_call_terminate(ptr noundef %0) #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress optsize uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %0, i8 noundef signext %1) local_unnamed_addr #7 align 2 {
  %3 = getelementptr inbounds %"class.std::basic_ios", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::ctype", ptr %4, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !46
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = zext i8 %1 to i64
  %13 = getelementptr inbounds %"class.std::ctype", ptr %4, i64 0, i32 9, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !39
  br label %20

15:                                               ; preds = %7
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %4) #16
  %16 = load ptr, ptr %4, align 8, !tbaa !7
  %17 = getelementptr inbounds ptr, ptr %16, i64 6
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef signext i8 %18(ptr noundef nonnull align 8 dereferenceable(570) %4, i8 noundef signext %1) #16
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i8 [ %14, %11 ], [ %19, %15 ]
  ret i8 %21
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize uwtable
define internal ptr @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE4findERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !26
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  %6 = icmp eq ptr %4, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !33
  %9 = getelementptr inbounds %"struct.std::pair", ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %27, %7
  %12 = phi ptr [ %4, %7 ], [ %30, %27 ]
  %13 = phi ptr [ %5, %7 ], [ %28, %27 ]
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  %16 = icmp ult ptr %15, %8
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = icmp ult ptr %8, %15
  br i1 %18, label %23, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1, i32 0, i64 8
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = icmp ult ptr %21, %10
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %17
  %24 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %12, i64 0, i32 2
  br label %27

25:                                               ; preds = %19, %11
  %26 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %12, i64 0, i32 3
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi ptr [ %13, %25 ], [ %12, %23 ]
  %29 = phi ptr [ %26, %25 ], [ %24, %23 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !49
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %11, !llvm.loop !50

32:                                               ; preds = %27
  %.lcssa = phi ptr [ %28, %27 ]
  %33 = icmp eq ptr %.lcssa, %5
  br i1 %33, label %45, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %.lcssa, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !33
  %37 = icmp ult ptr %8, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = icmp ult ptr %36, %8
  br i1 %39, label %44, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %.lcssa, i64 0, i32 1, i32 0, i64 8
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  %43 = icmp ult ptr %10, %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %40, %38
  br label %45

45:                                               ; preds = %44, %40, %34, %32, %2
  %46 = phi ptr [ %.lcssa, %44 ], [ %5, %40 ], [ %5, %32 ], [ %5, %2 ], [ %5, %34 ]
  ret ptr %46
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: noreturn optsize
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #11

; Function Attrs: optsize
declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

; Function Attrs: optsize uwtable
define available_externally void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 256
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216) %4) #18
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !7
  %5 = getelementptr inbounds i8, ptr %0, i64 472
  store ptr null, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds i8, ptr %0, i64 480
  store i8 0, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds i8, ptr %0, i64 481
  store i8 0, ptr %7, align 1, !tbaa !53
  %8 = getelementptr inbounds i8, ptr %0, i64 488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %9 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 1), align 8
  store ptr %9, ptr %0, align 8, !tbaa !7
  %10 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 2), align 8
  %11 = getelementptr i8, ptr %9, i64 -24
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  store ptr %10, ptr %13, align 8, !tbaa !7
  %14 = getelementptr inbounds %"class.std::basic_istream", ptr %0, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !31
  %15 = load ptr, ptr %0, align 8, !tbaa !7
  %16 = getelementptr i8, ptr %15, i64 -24
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds i8, ptr %0, i64 %17
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %18, ptr noundef null) #16
          to label %19 unwind label %28

19:                                               ; preds = %3
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 3), ptr %0, align 8, !tbaa !7
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, inrange i32 1, i64 3), ptr %4, align 8, !tbaa !7
  %20 = getelementptr inbounds %"class.std::basic_ifstream", ptr %0, i64 0, i32 1
  invoke void @_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %20) #16
          to label %21 unwind label %30

21:                                               ; preds = %19
  %22 = load ptr, ptr %0, align 8, !tbaa !7
  %23 = getelementptr i8, ptr %22, i64 -24
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds i8, ptr %0, i64 %24
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %25, ptr noundef nonnull %20) #16
          to label %26 unwind label %32

26:                                               ; preds = %21
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1, i32 noundef %2) #16
          to label %27 unwind label %32

27:                                               ; preds = %26
  ret void

28:                                               ; preds = %3
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %38

30:                                               ; preds = %19
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %34

32:                                               ; preds = %26, %21
  %33 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240) %20) #18
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %31, %30 ]
  store ptr %9, ptr %0, align 8, !tbaa !7
  %36 = load i64, ptr %11, align 8
  %37 = getelementptr inbounds i8, ptr %0, i64 %36
  store ptr %10, ptr %37, align 8, !tbaa !7
  store i64 0, ptr %14, align 8, !tbaa !31
  br label %38

38:                                               ; preds = %34, %28
  %39 = phi { ptr, i32 } [ %35, %34 ], [ %29, %28 ]
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %4) #18
  resume { ptr, i32 } %39
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: optsize uwtable
define internal noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapISt4pairIPKcS2_EiSt4lessIS3_ESaIS0_IKS3_iEEEixEOS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::tuple", align 8
  %4 = alloca %"class.std::ios_base::Init", align 1
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  %8 = icmp eq ptr %6, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 8, !tbaa !33
  %11 = getelementptr inbounds %"struct.std::pair", ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8
  br label %13

13:                                               ; preds = %29, %9
  %14 = phi ptr [ %6, %9 ], [ %32, %29 ]
  %15 = phi ptr [ %7, %9 ], [ %30, %29 ]
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !33
  %18 = icmp ult ptr %17, %10
  br i1 %18, label %27, label %19

19:                                               ; preds = %13
  %20 = icmp ult ptr %10, %17
  br i1 %20, label %25, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %14, i64 0, i32 1, i32 0, i64 8
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = icmp ult ptr %23, %12
  br i1 %24, label %27, label %25

25:                                               ; preds = %21, %19
  %26 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %14, i64 0, i32 2
  br label %29

27:                                               ; preds = %21, %13
  %28 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %14, i64 0, i32 3
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi ptr [ %15, %27 ], [ %14, %25 ]
  %31 = phi ptr [ %28, %27 ], [ %26, %25 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !49
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %13, !llvm.loop !50

34:                                               ; preds = %29
  %.lcssa = phi ptr [ %30, %29 ]
  %35 = icmp eq ptr %.lcssa, %7
  br i1 %35, label %46, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %.lcssa, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !33
  %39 = icmp ult ptr %10, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = icmp ult ptr %38, %10
  br i1 %41, label %49, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %.lcssa, i64 0, i32 1, i32 0, i64 8
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  %45 = icmp ult ptr %12, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %36, %34, %2
  %47 = phi ptr [ %.lcssa, %42 ], [ %7, %34 ], [ %7, %2 ], [ %.lcssa, %36 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store ptr %1, ptr %3, align 8, !tbaa !49, !alias.scope !54
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #17
  %48 = call ptr @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %47, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  br label %49

49:                                               ; preds = %46, %42, %40
  %50 = phi ptr [ %48, %46 ], [ %.lcssa, %42 ], [ %.lcssa, %40 ]
  %51 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %50, i64 0, i32 1, i32 0, i64 16
  ret ptr %51
}

; Function Attrs: nounwind optsize uwtable
define available_externally void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #6 align 2 {
  %2 = load ptr, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, align 8
  store ptr %2, ptr %0, align 8, !tbaa !7
  %3 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 3), align 8
  %4 = getelementptr i8, ptr %2, i64 -24
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  store ptr %3, ptr %6, align 8, !tbaa !7
  %7 = getelementptr inbounds %"class.std::basic_ifstream", ptr %0, i64 0, i32 1
  tail call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240) %7) #18
  %8 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 1), align 8
  store ptr %8, ptr %0, align 8, !tbaa !7
  %9 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 0, i64 2), align 8
  %10 = getelementptr i8, ptr %8, i64 -24
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  store ptr %9, ptr %12, align 8, !tbaa !7
  %13 = getelementptr inbounds %"class.std::basic_istream", ptr %0, i64 0, i32 1
  store i64 0, ptr %13, align 8, !tbaa !31
  %14 = getelementptr inbounds i8, ptr %0, i64 256
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %14) #18
  ret void
}

; Function Attrs: nounwind optsize uwtable
define available_externally void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !7
  %2 = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %0) #16
          to label %7 unwind label %3

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = tail call ptr @__cxa_begin_catch(ptr %5) #17
  invoke void @__cxa_end_catch()
          to label %7 unwind label %10

7:                                                ; preds = %3, %1
  %8 = getelementptr inbounds %"class.std::basic_filebuf", ptr %0, i64 0, i32 2
  tail call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dereferenceable(9) %8) #18
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !7
  %9 = getelementptr inbounds %"class.std::basic_streambuf", ptr %0, i64 0, i32 7
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #18
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #20
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #1

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dereferenceable(9)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: optsize uwtable
define internal ptr @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1
  %8 = load i64, ptr %3, align 8, !tbaa !49
  %9 = inttoptr i64 %8 to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1, i32 0, i64 16
  store i32 0, ptr %10, align 8, !tbaa !57
  %11 = invoke { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %7) #16
          to label %12 unwind label %18

12:                                               ; preds = %5
  %13 = extractvalue { ptr, ptr } %11, 0
  %14 = extractvalue { ptr, ptr } %11, 1
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = invoke ptr @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSD_PSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %13, ptr noundef nonnull %14, ptr noundef nonnull %6) #16
          to label %21 unwind label %18

18:                                               ; preds = %16, %5
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %6) #21
  resume { ptr, i32 } %19

20:                                               ; preds = %12
  tail call void @_ZdlPv(ptr noundef nonnull %6) #21
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi ptr [ %13, %20 ], [ %17, %16 ]
  ret ptr %22
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: optsize uwtable
define internal { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #0 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %0, i64 40
  %8 = load i64, ptr %7, align 8, !tbaa !29
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %0, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !33
  %15 = load ptr, ptr %2, align 8, !tbaa !33
  %16 = icmp ult ptr %14, %15
  br i1 %16, label %102, label %17

17:                                               ; preds = %10
  %18 = icmp ult ptr %15, %14
  br i1 %18, label %25, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1, i32 0, i64 8
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = getelementptr inbounds %"struct.std::pair", ptr %2, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = icmp ult ptr %21, %23
  br i1 %24, label %102, label %25

25:                                               ; preds = %19, %17, %6
  %26 = tail call { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE24_M_get_insert_unique_posERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  %27 = extractvalue { ptr, ptr } %26, 0
  %28 = extractvalue { ptr, ptr } %26, 1
  br label %102

29:                                               ; preds = %3
  %30 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %2, align 8, !tbaa !33
  %32 = load ptr, ptr %30, align 8, !tbaa !33
  %33 = icmp ult ptr %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = icmp ult ptr %32, %31
  br i1 %35, label %75, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %"struct.std::pair", ptr %2, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !35
  %39 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 8
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  %41 = icmp ult ptr %38, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %36, %29
  %43 = getelementptr inbounds i8, ptr %0, i64 24
  %44 = load ptr, ptr %43, align 8, !tbaa !49
  %45 = icmp eq ptr %44, %1
  br i1 %45, label %102, label %46

46:                                               ; preds = %42
  %47 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #23
  %48 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !33
  %50 = icmp ult ptr %49, %31
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = icmp ult ptr %31, %49
  br i1 %52, label %65, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %47, i64 0, i32 1, i32 0, i64 8
  %55 = load ptr, ptr %54, align 8, !tbaa !35
  %56 = getelementptr inbounds %"struct.std::pair", ptr %2, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !35
  %58 = icmp ult ptr %55, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53, %46
  %60 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %47, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !42
  %62 = icmp eq ptr %61, null
  %63 = select i1 %62, ptr null, ptr %1
  %64 = select i1 %62, ptr %47, ptr %1
  br label %102

65:                                               ; preds = %53, %51
  %66 = tail call { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE24_M_get_insert_unique_posERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  %67 = extractvalue { ptr, ptr } %66, 0
  %68 = extractvalue { ptr, ptr } %66, 1
  br label %102

69:                                               ; preds = %36
  %70 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 8
  %71 = load ptr, ptr %70, align 8, !tbaa !35
  %72 = getelementptr inbounds %"struct.std::pair", ptr %2, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !35
  %74 = icmp ult ptr %71, %73
  br i1 %74, label %75, label %102

75:                                               ; preds = %69, %34
  %76 = getelementptr inbounds i8, ptr %0, i64 32
  %77 = load ptr, ptr %76, align 8, !tbaa !49
  %78 = icmp eq ptr %77, %1
  br i1 %78, label %102, label %79

79:                                               ; preds = %75
  %80 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #23
  %81 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !33
  %83 = icmp ult ptr %31, %82
  br i1 %83, label %92, label %84

84:                                               ; preds = %79
  %85 = icmp ult ptr %82, %31
  br i1 %85, label %98, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %"struct.std::pair", ptr %2, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !35
  %89 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %80, i64 0, i32 1, i32 0, i64 8
  %90 = load ptr, ptr %89, align 8, !tbaa !35
  %91 = icmp ult ptr %88, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %86, %79
  %93 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !42
  %95 = icmp eq ptr %94, null
  %96 = select i1 %95, ptr null, ptr %80
  %97 = select i1 %95, ptr %1, ptr %80
  br label %102

98:                                               ; preds = %86, %84
  %99 = tail call { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE24_M_get_insert_unique_posERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  %100 = extractvalue { ptr, ptr } %99, 0
  %101 = extractvalue { ptr, ptr } %99, 1
  br label %102

102:                                              ; preds = %98, %92, %75, %69, %65, %59, %42, %25, %19, %10
  %103 = phi ptr [ %27, %25 ], [ null, %19 ], [ %67, %65 ], [ %1, %42 ], [ %100, %98 ], [ null, %75 ], [ %1, %69 ], [ null, %10 ], [ %63, %59 ], [ %96, %92 ]
  %104 = phi ptr [ %28, %25 ], [ %12, %19 ], [ %68, %65 ], [ %1, %42 ], [ %101, %98 ], [ %1, %75 ], [ null, %69 ], [ %12, %10 ], [ %64, %59 ], [ %97, %92 ]
  %105 = insertvalue { ptr, ptr } poison, ptr %103, 0
  %106 = insertvalue { ptr, ptr } %105, ptr %104, 1
  ret { ptr, ptr } %106
}

; Function Attrs: optsize uwtable
define internal ptr @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSD_PSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat align 2 {
  %5 = icmp ne ptr %1, null
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = icmp eq ptr %6, %2
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %23, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %3, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %10, align 8, !tbaa !33
  %13 = load ptr, ptr %11, align 8, !tbaa !33
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  %16 = icmp ult ptr %13, %12
  br i1 %16, label %23, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %3, i64 0, i32 1, i32 0, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %2, i64 0, i32 1, i32 0, i64 8
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = icmp ult ptr %19, %21
  br label %23

23:                                               ; preds = %17, %15, %9, %4
  %24 = phi i1 [ true, %4 ], [ true, %9 ], [ false, %15 ], [ %22, %17 ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %24, ptr noundef %3, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %6) #18
  %25 = getelementptr inbounds i8, ptr %0, i64 40
  %26 = load i64, ptr %25, align 8, !tbaa !29
  %27 = add i64 %26, 1
  store i64 %27, ptr %25, align 8, !tbaa !29
  ret ptr %3
}

; Function Attrs: nounwind optsize
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: optsize uwtable
define internal { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIPKcS2_ES0_IKS3_iESt10_Select1stIS5_ESt4lessIS3_ESaIS5_EE24_M_get_insert_unique_posERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %3, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !33
  %9 = getelementptr inbounds %"struct.std::pair", ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %26, %7
  %12 = phi ptr [ %5, %7 ], [ %29, %26 ]
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !33
  %15 = icmp ult ptr %8, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = icmp ult ptr %14, %8
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1, i32 0, i64 8
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = icmp ult ptr %10, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %11
  %23 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %12, i64 0, i32 2
  br label %26

24:                                               ; preds = %18, %16
  %25 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %12, i64 0, i32 3
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i1 [ true, %22 ], [ false, %24 ]
  %28 = phi ptr [ %23, %22 ], [ %25, %24 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !49
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %11, !llvm.loop !59

31:                                               ; preds = %26
  %.lcssa1 = phi i1 [ %27, %26 ]
  %.lcssa = phi ptr [ %12, %26 ]
  br i1 %.lcssa1, label %32, label %39

32:                                               ; preds = %31, %2
  %33 = phi ptr [ %.lcssa, %31 ], [ %4, %2 ]
  %34 = getelementptr inbounds i8, ptr %0, i64 24
  %35 = load ptr, ptr %34, align 8, !tbaa !27
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %55, label %37

37:                                               ; preds = %32
  %38 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %33) #23
  br label %39

39:                                               ; preds = %37, %31
  %40 = phi ptr [ %33, %37 ], [ %.lcssa, %31 ]
  %41 = phi ptr [ %38, %37 ], [ %.lcssa, %31 ]
  %42 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !33
  %44 = load ptr, ptr %1, align 8, !tbaa !33
  %45 = icmp ult ptr %43, %44
  br i1 %45, label %55, label %46

46:                                               ; preds = %39
  %47 = icmp ult ptr %44, %43
  br i1 %47, label %54, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %41, i64 0, i32 1, i32 0, i64 8
  %50 = load ptr, ptr %49, align 8, !tbaa !35
  %51 = getelementptr inbounds %"struct.std::pair", ptr %1, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !35
  %53 = icmp ult ptr %50, %52
  br i1 %53, label %55, label %54

54:                                               ; preds = %48, %46
  br label %55

55:                                               ; preds = %54, %48, %39, %32
  %56 = phi ptr [ %41, %54 ], [ null, %32 ], [ null, %48 ], [ null, %39 ]
  %57 = phi ptr [ null, %54 ], [ %33, %32 ], [ %40, %48 ], [ %40, %39 ]
  %58 = insertvalue { ptr, ptr } poison, ptr %56, 0
  %59 = insertvalue { ptr, ptr } %58, ptr %57, 1
  ret { ptr, ptr } %59
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: optsize
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(240)) unnamed_addr #1

; Function Attrs: mustprogress optsize uwtable
define available_externally void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 {
  %4 = getelementptr inbounds %"class.std::basic_ifstream", ptr %0, i64 0, i32 1
  %5 = or i32 %2, 8
  %6 = tail call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240) %4, ptr noundef %1, i32 noundef %5) #16
  %7 = icmp eq ptr %6, null
  %8 = load ptr, ptr %0, align 8, !tbaa !7
  %9 = getelementptr i8, ptr %8, i64 -24
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  br i1 %7, label %12, label %16

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.std::ios_base", ptr %11, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !30
  %15 = or i32 %14, 4
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i32 [ %15, %12 ], [ 0, %3 ]
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %11, i32 noundef %17) #16
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #1

attributes #0 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { optsize }
attributes #17 = { nounwind }
attributes #18 = { nounwind optsize }
attributes #19 = { builtin optsize allocsize(0) }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind optsize }
attributes #22 = { noreturn optsize }
attributes #23 = { nounwind optsize willreturn memory(read) }

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
!8 = !{!"vtable pointer", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !17, i64 232}
!11 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !12, i64 0, !17, i64 216, !14, i64 224, !21, i64 225, !17, i64 232, !17, i64 240, !17, i64 248, !17, i64 256}
!12 = !{!"_ZTSSt8ios_base", !13, i64 8, !13, i64 16, !15, i64 24, !16, i64 28, !16, i64 32, !17, i64 40, !18, i64 48, !14, i64 64, !19, i64 192, !17, i64 200, !20, i64 208}
!13 = !{!"long", !14, i64 0}
!14 = !{!"omnipotent char", !9, i64 0}
!15 = !{!"_ZTSSt13_Ios_Fmtflags", !14, i64 0}
!16 = !{!"_ZTSSt12_Ios_Iostate", !14, i64 0}
!17 = !{!"any pointer", !14, i64 0}
!18 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !13, i64 8}
!19 = !{!"int", !14, i64 0}
!20 = !{!"_ZTSSt6locale", !17, i64 0}
!21 = !{!"bool", !14, i64 0}
!22 = !{!23, !25, i64 0}
!23 = !{!"_ZTSSt15_Rb_tree_header", !24, i64 0, !13, i64 32}
!24 = !{!"_ZTSSt18_Rb_tree_node_base", !25, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!25 = !{!"_ZTSSt14_Rb_tree_color", !14, i64 0}
!26 = !{!23, !17, i64 8}
!27 = !{!23, !17, i64 16}
!28 = !{!23, !17, i64 24}
!29 = !{!23, !13, i64 32}
!30 = !{!12, !16, i64 32}
!31 = !{!32, !13, i64 8}
!32 = !{!"_ZTSSi", !13, i64 8}
!33 = !{!34, !17, i64 0}
!34 = !{!"_ZTSSt4pairIPKcS1_E", !17, i64 0, !17, i64 8}
!35 = !{!34, !17, i64 8}
!36 = !{!19, !19, i64 0}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!14, !14, i64 0}
!40 = !{!12, !13, i64 16}
!41 = distinct !{!41, !38}
!42 = !{!24, !17, i64 24}
!43 = !{!24, !17, i64 16}
!44 = distinct !{!44, !38}
!45 = !{!11, !17, i64 240}
!46 = !{!47, !14, i64 56}
!47 = !{!"_ZTSSt5ctypeIcE", !48, i64 0, !17, i64 16, !21, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !14, i64 56, !14, i64 57, !14, i64 313, !14, i64 569}
!48 = !{!"_ZTSNSt6locale5facetE", !19, i64 8}
!49 = !{!17, !17, i64 0}
!50 = distinct !{!50, !38}
!51 = !{!11, !17, i64 216}
!52 = !{!11, !14, i64 224}
!53 = !{!11, !21, i64 225}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZSt16forward_as_tupleIJSt4pairIPKcS2_EEESt5tupleIJDpOT_EES7_: %agg.result"}
!56 = distinct !{!56, !"_ZSt16forward_as_tupleIJSt4pairIPKcS2_EEESt5tupleIJDpOT_EES7_"}
!57 = !{!58, !19, i64 16}
!58 = !{!"_ZTSSt4pairIKS_IPKcS1_EiE", !34, i64 0, !19, i64 16}
!59 = distinct !{!59, !38}
