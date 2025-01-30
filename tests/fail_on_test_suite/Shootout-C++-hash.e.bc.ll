; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Shootout-C++/Shootout-C++-hash.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.std::pair" = type <{ ptr, i32, [4 x i8] }>
%"class.__gnu_cxx::hash_map" = type { %"class.__gnu_cxx::hashtable" }
%"class.__gnu_cxx::hashtable" = type { %"class.std::ios_base::Init", %"class.std::ios_base::Init", %"class.std::ios_base::Init", %"class.std::ios_base::Init", %"class.std::vector", i64 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *>>::_Vector_impl" }
%"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *>>::_Vector_impl" = type { %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.__gnu_cxx::_Hashtable_node" = type { ptr, %"struct.std::pair" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

$_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEEC2EmRKS7_RKSA_RKSaIS5_E = comdat any

$_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE14find_or_insertERKS5_ = comdat any

$_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEED2Ev = comdat any

$_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE5clearEv = comdat any

$__clang_call_terminate = comdat any

$_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm = comdat any

$_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEC2EmRKS8_RKS9_ = comdat any

$_ZNSt15__new_allocatorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEE8allocateEmPKv = comdat any

$_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm = comdat any

$_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE7reserveEm = comdat any

$_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_ = comdat any

$_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE12_M_check_lenEmS4_ = comdat any

$_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE = comdat any

@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_hash.cpp, ptr null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE = internal constant [29 x i64] [i64 5, i64 53, i64 97, i64 193, i64 389, i64 769, i64 1543, i64 3079, i64 6151, i64 12289, i64 24593, i64 49157, i64 98317, i64 196613, i64 393241, i64 786433, i64 1572869, i64 3145739, i64 6291469, i64 12582917, i64 25165843, i64 50331653, i64 100663319, i64 201326611, i64 402653189, i64 805306457, i64 1610612741, i64 3221225473, i64 4294967291], comdat, align 16
@.str.2 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: optsize uwtable
define internal void @_GLOBAL__sub_I_hash.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #19
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #20
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
  %3 = alloca %"struct.std::pair", align 8
  %4 = alloca %"struct.std::pair", align 8
  %5 = alloca %"class.std::ios_base::Init", align 1
  %6 = alloca %"class.std::ios_base::Init", align 1
  %7 = alloca %"class.std::ios_base::Init", align 1
  %8 = alloca [16 x i8], align 16
  %9 = alloca %"class.__gnu_cxx::hash_map", align 8
  %10 = icmp eq i32 %0, 2
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #20
  call void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEEC2EmRKS7_RKSA_RKSaIS5_E(ptr noundef nonnull align 8 dereferenceable(40) %9, i64 noundef 100, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  br label %17

12:                                               ; preds = %2
  %13 = getelementptr inbounds ptr, ptr %1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !7
  %15 = tail call i32 @atoi(ptr nocapture noundef %14) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #20
  call void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEEC2EmRKS7_RKSA_RKSaIS5_E(ptr noundef nonnull align 8 dereferenceable(40) %9, i64 noundef 100, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %35, label %17

17:                                               ; preds = %12, %11
  %18 = phi i32 [ 500000, %11 ], [ %15, %12 ]
  %19 = getelementptr inbounds %"struct.std::pair", ptr %4, i64 0, i32 1
  br label %24

20:                                               ; preds = %29
  %21 = icmp sgt i32 %18, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %20
  %23 = getelementptr inbounds %"struct.std::pair", ptr %3, i64 0, i32 1
  br label %38

24:                                               ; preds = %29, %17
  %25 = phi i32 [ 1, %17 ], [ %31, %29 ]
  %26 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %25) #22
  %27 = call noalias ptr @strdup(ptr noundef nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  store ptr %27, ptr %4, align 8, !tbaa !11
  store i32 0, ptr %19, align 8, !tbaa !14
  %28 = invoke noundef nonnull align 8 dereferenceable(12) ptr @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE14find_or_insertERKS5_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(12) %4) #19
          to label %29 unwind label %33

29:                                               ; preds = %24
  %30 = getelementptr inbounds %"struct.std::pair", ptr %28, i64 0, i32 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  store i32 %25, ptr %30, align 8, !tbaa !15
  %31 = add nuw i32 %25, 1
  %32 = icmp eq i32 %25, %18
  br i1 %32, label %20, label %24, !llvm.loop !16

33:                                               ; preds = %24
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %67

35:                                               ; preds = %44, %20, %12
  %36 = phi i32 [ 0, %20 ], [ 0, %12 ], [ %49, %44 ]
  %37 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %36) #19
          to label %54 unwind label %65

38:                                               ; preds = %44, %22
  %39 = phi i32 [ %18, %22 ], [ %50, %44 ]
  %40 = phi i32 [ 0, %22 ], [ %49, %44 ]
  %41 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %39) #22
  %42 = call noalias ptr @strdup(ptr noundef nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  store ptr %42, ptr %3, align 8, !tbaa !11
  store i32 0, ptr %23, align 8, !tbaa !14
  %43 = invoke noundef nonnull align 8 dereferenceable(12) ptr @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE14find_or_insertERKS5_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(12) %3) #19
          to label %44 unwind label %52

44:                                               ; preds = %38
  %45 = getelementptr inbounds %"struct.std::pair", ptr %43, i64 0, i32 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  %46 = load i32, ptr %45, align 8, !tbaa !15
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = add nuw nsw i32 %40, %48
  %50 = add nsw i32 %39, -1
  %51 = icmp sgt i32 %39, 1
  br i1 %51, label %38, label %35, !llvm.loop !18

52:                                               ; preds = %38
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %67

54:                                               ; preds = %35
  %55 = load ptr, ptr %37, align 8, !tbaa !19
  %56 = getelementptr i8, ptr %55, i64 -24
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds i8, ptr %37, i64 %57
  %59 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %58, i8 noundef signext 10) #19
          to label %60 unwind label %65

60:                                               ; preds = %54
  %61 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %37, i8 noundef signext %59) #19
          to label %62 unwind label %65

62:                                               ; preds = %60
  %63 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %61) #19
          to label %64 unwind label %65

64:                                               ; preds = %62
  call void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %9) #22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #20
  ret i32 0

65:                                               ; preds = %62, %60, %54, %35
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %67

67:                                               ; preds = %65, %52, %33
  %68 = phi { ptr, i32 } [ %34, %33 ], [ %53, %52 ], [ %66, %65 ]
  call void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %9) #22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #20
  resume { ptr, i32 } %68
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize uwtable
define internal void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEEC2EmRKS7_RKSA_RKSaIS5_E(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = getelementptr inbounds %"class.__gnu_cxx::hashtable", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  invoke void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) #19
          to label %7 unwind label %8

7:                                                ; preds = %5
  ret void

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = load ptr, ptr %6, align 8, !tbaa !21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @_ZdlPv(ptr noundef nonnull %10) #23
  br label %13

13:                                               ; preds = %12, %8
  resume { ptr, i32 } %9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: optsize uwtable
define internal noundef nonnull align 8 dereferenceable(12) ptr @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE14find_or_insertERKS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #0 comdat align 2 {
  %3 = getelementptr inbounds %"class.__gnu_cxx::hashtable", ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !23
  %5 = add i64 %4, 1
  tail call void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %5) #19
  %6 = getelementptr inbounds %"class.__gnu_cxx::hashtable", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.__gnu_cxx::hashtable", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !33
  %9 = load ptr, ptr %6, align 8, !tbaa !21
  %10 = load ptr, ptr %1, align 8, !tbaa !7
  %11 = load i8, ptr %10, align 1, !tbaa !34
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %13, %2
  %14 = phi i8 [ %21, %13 ], [ %11, %2 ]
  %15 = phi i64 [ %19, %13 ], [ 0, %2 ]
  %16 = phi ptr [ %20, %13 ], [ %10, %2 ]
  %17 = mul i64 %15, 5
  %18 = sext i8 %14 to i64
  %19 = add i64 %17, %18
  %20 = getelementptr inbounds i8, ptr %16, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !34
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %13, !llvm.loop !35

23:                                               ; preds = %13, %2
  %24 = phi i64 [ 0, %2 ], [ %19, %13 ]
  %25 = ptrtoint ptr %8 to i64
  %26 = ptrtoint ptr %9 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 3
  %29 = urem i64 %24, %28
  %30 = getelementptr inbounds ptr, ptr %9, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !7
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %39, %23
  %34 = phi ptr [ %40, %39 ], [ %31, %23 ]
  %35 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node", ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !7
  %37 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(1) %10) #21
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %34, align 8, !tbaa !36
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %33, !llvm.loop !38

42:                                               ; preds = %39, %23
  %43 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
  %44 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node", ptr %43, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  store ptr %31, ptr %43, align 8, !tbaa !36
  store ptr %43, ptr %30, align 8, !tbaa !7
  %45 = load i64, ptr %3, align 8, !tbaa !23
  %46 = add i64 %45, 1
  store i64 %46, ptr %3, align 8, !tbaa !23
  br label %49

47:                                               ; preds = %33
  %.lcssa = phi ptr [ %34, %33 ]
  %48 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node", ptr %.lcssa, i64 0, i32 1
  br label %49

49:                                               ; preds = %47, %42
  %50 = phi ptr [ %44, %42 ], [ %48, %47 ]
  ret ptr %50
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress optsize uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %0, i8 noundef signext %1) local_unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds %"class.std::basic_ios", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::ctype", ptr %4, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !47
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = zext i8 %1 to i64
  %13 = getelementptr inbounds %"class.std::ctype", ptr %4, i64 0, i32 9, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !34
  br label %20

15:                                               ; preds = %7
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %4) #19
  %16 = load ptr, ptr %4, align 8, !tbaa !19
  %17 = getelementptr inbounds ptr, ptr %16, i64 6
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef signext i8 %18(ptr noundef nonnull align 8 dereferenceable(570) %4, i8 noundef signext %1) #19
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i8 [ %14, %11 ], [ %19, %15 ]
  ret i8 %21
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
  invoke void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE5clearEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
          to label %2 unwind label %8

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::hashtable", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @_ZdlPv(ptr noundef nonnull %4) #23
  br label %7

7:                                                ; preds = %6, %2
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #26
  unreachable
}

; Function Attrs: optsize uwtable
define internal void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE5clearEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"class.__gnu_cxx::hashtable", ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !23
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.__gnu_cxx::hashtable", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.__gnu_cxx::hashtable", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !33
  %9 = load ptr, ptr %6, align 8, !tbaa !21
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %24, %5
  store i64 0, ptr %2, align 8, !tbaa !23
  br label %35

12:                                               ; preds = %24, %5
  %13 = phi ptr [ %29, %24 ], [ %9, %5 ]
  %14 = phi i64 [ %27, %24 ], [ 0, %5 ]
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %18, %12
  %19 = phi ptr [ %20, %18 ], [ %16, %12 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !36
  tail call void @_ZdlPv(ptr noundef nonnull %19) #23
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %18, !llvm.loop !50

22:                                               ; preds = %18
  %23 = load ptr, ptr %6, align 8, !tbaa !21
  br label %24

24:                                               ; preds = %22, %12
  %25 = phi ptr [ %23, %22 ], [ %13, %12 ]
  %26 = getelementptr inbounds ptr, ptr %25, i64 %14
  store ptr null, ptr %26, align 8, !tbaa !7
  %27 = add nuw i64 %14, 1
  %28 = load ptr, ptr %7, align 8, !tbaa !33
  %29 = load ptr, ptr %6, align 8, !tbaa !21
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = ashr exact i64 %32, 3
  %34 = icmp ult i64 %27, %33
  br i1 %34, label %12, label %11, !llvm.loop !51

35:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: noinline noreturn nounwind optsize uwtable
define internal void @__clang_call_terminate(ptr noundef %0) #12 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: noreturn optsize
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #13

; Function Attrs: optsize
declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

; Function Attrs: optsize uwtable
define internal void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::vector", align 16
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::ios_base::Init", align 1
  %6 = getelementptr inbounds %"class.__gnu_cxx::hashtable", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.__gnu_cxx::hashtable", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !33
  %9 = load ptr, ptr %6, align 8, !tbaa !21
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 3
  %14 = icmp ult i64 %13, %1
  br i1 %14, label %15, label %88

15:                                               ; preds = %15, %2
  %16 = phi ptr [ %26, %15 ], [ @_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE, %2 ]
  %17 = phi i64 [ %25, %15 ], [ 29, %2 ]
  %18 = lshr i64 %17, 1
  %19 = getelementptr inbounds i64, ptr %16, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !52
  %21 = icmp ult i64 %20, %1
  %22 = getelementptr inbounds i64, ptr %19, i64 1
  %23 = xor i64 %18, -1
  %24 = add nsw i64 %17, %23
  %25 = select i1 %21, i64 %24, i64 %18
  %26 = select i1 %21, ptr %22, ptr %16
  %27 = icmp sgt i64 %25, 0
  br i1 %27, label %15, label %28, !llvm.loop !53

28:                                               ; preds = %15
  %.lcssa = phi ptr [ %26, %15 ]
  %29 = icmp eq ptr %.lcssa, getelementptr inbounds ([29 x i64], ptr @_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE, i64 1, i64 0)
  %30 = select i1 %29, ptr getelementptr inbounds ([29 x i64], ptr @_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE, i64 0, i64 28), ptr %.lcssa
  %31 = load i64, ptr %30, align 8, !tbaa !52
  %32 = icmp ugt i64 %31, %13
  br i1 %32, label %33, label %88

33:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  call void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEC2EmRKS8_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %31, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  %34 = icmp eq ptr %8, %9
  %35 = load ptr, ptr %6, align 8, !tbaa !21
  br i1 %34, label %44, label %36

36:                                               ; preds = %33
  %37 = call i64 @llvm.umax.i64(i64 %13, i64 1)
  br label %38

38:                                               ; preds = %84, %36
  %39 = phi ptr [ %85, %84 ], [ %35, %36 ]
  %40 = phi i64 [ %86, %84 ], [ 0, %36 ]
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !7
  %43 = icmp eq ptr %42, null
  br i1 %43, label %84, label %55

44:                                               ; preds = %84, %33
  %45 = phi ptr [ %35, %33 ], [ %85, %84 ]
  %46 = getelementptr inbounds %"class.__gnu_cxx::hashtable", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 2
  %47 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %48 = load <2 x ptr>, ptr %3, align 16, !tbaa !7
  %49 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *>>::_Vector_impl_data", ptr %3, i64 0, i32 2
  %50 = load ptr, ptr %49, align 16, !tbaa !54
  store ptr %45, ptr %3, align 16, !tbaa !21
  %51 = load <2 x ptr>, ptr %7, align 8, !tbaa !7
  store <2 x ptr> %48, ptr %6, align 8, !tbaa !7
  store ptr %50, ptr %46, align 8, !tbaa !54
  store <2 x ptr> %51, ptr %47, align 8, !tbaa !7
  %52 = icmp eq ptr %45, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  call void @_ZdlPv(ptr noundef nonnull %45) #23
  br label %54

54:                                               ; preds = %53, %44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %88

55:                                               ; preds = %72, %38
  %56 = phi ptr [ %80, %72 ], [ %39, %38 ]
  %57 = phi ptr [ %82, %72 ], [ %42, %38 ]
  %58 = getelementptr inbounds %"struct.__gnu_cxx::_Hashtable_node", ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !7
  %60 = load i8, ptr %59, align 1, !tbaa !34
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %62, %55
  %63 = phi i8 [ %70, %62 ], [ %60, %55 ]
  %64 = phi i64 [ %68, %62 ], [ 0, %55 ]
  %65 = phi ptr [ %69, %62 ], [ %59, %55 ]
  %66 = mul i64 %64, 5
  %67 = sext i8 %63 to i64
  %68 = add i64 %66, %67
  %69 = getelementptr inbounds i8, ptr %65, i64 1
  %70 = load i8, ptr %69, align 1, !tbaa !34
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %62, !llvm.loop !35

72:                                               ; preds = %62, %55
  %73 = phi i64 [ 0, %55 ], [ %68, %62 ]
  %74 = urem i64 %73, %31
  %75 = load ptr, ptr %57, align 8, !tbaa !36
  %76 = getelementptr inbounds ptr, ptr %56, i64 %40
  store ptr %75, ptr %76, align 8, !tbaa !7
  %77 = load ptr, ptr %3, align 16, !tbaa !21
  %78 = getelementptr inbounds ptr, ptr %77, i64 %74
  %79 = load ptr, ptr %78, align 8, !tbaa !7
  store ptr %79, ptr %57, align 8, !tbaa !36
  store ptr %57, ptr %78, align 8, !tbaa !7
  %80 = load ptr, ptr %6, align 8, !tbaa !21
  %81 = getelementptr inbounds ptr, ptr %80, i64 %40
  %82 = load ptr, ptr %81, align 8, !tbaa !7
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %55, !llvm.loop !55

84:                                               ; preds = %72, %38
  %85 = phi ptr [ %39, %38 ], [ %80, %72 ]
  %86 = add nuw i64 %40, 1
  %87 = icmp eq i64 %86, %37
  br i1 %87, label %44, label %38, !llvm.loop !56

88:                                               ; preds = %54, %28, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: optsize uwtable
define internal void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EEC2EmRKS8_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = icmp ugt i64 %1, 1152921504606846975
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

7:                                                ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %21

11:                                               ; preds = %7
  %12 = tail call noundef ptr @_ZNSt15__new_allocatorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #19
  store ptr %12, ptr %0, align 8, !tbaa !21
  %13 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !33
  %14 = getelementptr inbounds ptr, ptr %12, i64 %1
  %15 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !54
  %16 = load ptr, ptr %2, align 8, !tbaa !7
  br label %17

17:                                               ; preds = %17, %11
  %18 = phi ptr [ %19, %17 ], [ %12, %11 ]
  store ptr %16, ptr %18, align 8, !tbaa !7
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = icmp eq ptr %19, %14
  br i1 %20, label %21, label %17, !llvm.loop !57

21:                                               ; preds = %17, %9
  %22 = phi ptr [ %10, %9 ], [ %13, %17 ]
  %23 = phi ptr [ null, %9 ], [ %14, %17 ]
  store ptr %23, ptr %22, align 8, !tbaa !33
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZNSt15__new_allocatorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) #9 comdat align 2 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !58

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
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #24
  ret ptr %11
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: optsize uwtable
define internal void @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ @_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE, %2 ], [ %15, %4 ]
  %6 = phi i64 [ 29, %2 ], [ %14, %4 ]
  %7 = lshr i64 %6, 1
  %8 = getelementptr inbounds i64, ptr %5, i64 %7
  %9 = load i64, ptr %8, align 8, !tbaa !52
  %10 = icmp ult i64 %9, %1
  %11 = getelementptr inbounds i64, ptr %8, i64 1
  %12 = xor i64 %7, -1
  %13 = add nsw i64 %6, %12
  %14 = select i1 %10, i64 %13, i64 %7
  %15 = select i1 %10, ptr %11, ptr %5
  %16 = icmp sgt i64 %14, 0
  br i1 %16, label %4, label %17, !llvm.loop !53

17:                                               ; preds = %4
  %.lcssa = phi ptr [ %15, %4 ]
  %18 = icmp eq ptr %.lcssa, getelementptr inbounds ([29 x i64], ptr @_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE, i64 1, i64 0)
  %19 = select i1 %18, ptr getelementptr inbounds ([29 x i64], ptr @_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE, i64 0, i64 28), ptr %.lcssa
  %20 = load i64, ptr %19, align 8, !tbaa !52
  %21 = getelementptr inbounds %"class.__gnu_cxx::hashtable", ptr %0, i64 0, i32 4
  tail call void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef %20) #19
  %22 = getelementptr inbounds %"class.__gnu_cxx::hashtable", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store ptr null, ptr %3, align 8, !tbaa !7
  %24 = load ptr, ptr %21, align 8, !tbaa !7
  %25 = ptrtoint ptr %23 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 3
  %29 = getelementptr inbounds ptr, ptr %24, i64 %28
  call void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr %29, i64 noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  %30 = getelementptr inbounds %"class.__gnu_cxx::hashtable", ptr %0, i64 0, i32 5
  store i64 0, ptr %30, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp ugt i64 %1, 1152921504606846975
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = load ptr, ptr %0, align 8, !tbaa !21
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ult i64 %12, %1
  br i1 %13, label %14, label %36

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !33
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %10
  %19 = ashr exact i64 %18, 3
  %20 = tail call noundef ptr @_ZNSt15__new_allocatorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !21
  %22 = load ptr, ptr %15, align 8, !tbaa !33
  %23 = ptrtoint ptr %22 to i64
  %24 = ptrtoint ptr %21 to i64
  %25 = sub i64 %23, %24
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %20, ptr align 8 %21, i64 %25, i1 false)
  %28 = load ptr, ptr %0, align 8, !tbaa !21
  br label %29

29:                                               ; preds = %27, %14
  %30 = phi ptr [ %21, %14 ], [ %28, %27 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @_ZdlPv(ptr noundef nonnull %30) #23
  br label %33

33:                                               ; preds = %32, %29
  store ptr %20, ptr %0, align 8, !tbaa !21
  %34 = getelementptr inbounds ptr, ptr %20, i64 %19
  store ptr %34, ptr %15, align 8, !tbaa !33
  %35 = getelementptr inbounds ptr, ptr %20, i64 %1
  store ptr %35, ptr %6, align 8, !tbaa !54
  br label %36

36:                                               ; preds = %33, %5
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %104, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = ptrtoint ptr %8 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 3
  %15 = icmp ult i64 %14, %2
  br i1 %15, label %62, label %16

16:                                               ; preds = %6
  %17 = load ptr, ptr %3, align 8, !tbaa !7
  %18 = ptrtoint ptr %1 to i64
  %19 = sub i64 %12, %18
  %20 = ashr exact i64 %19, 3
  %21 = icmp ugt i64 %20, %2
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = sub i64 0, %2
  %24 = getelementptr inbounds ptr, ptr %10, i64 %23
  %25 = shl i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %10, ptr nonnull align 8 %24, i64 %25, i1 false)
  %26 = load ptr, ptr %9, align 8, !tbaa !33
  %27 = getelementptr inbounds ptr, ptr %26, i64 %2
  store ptr %27, ptr %9, align 8, !tbaa !33
  %28 = icmp eq ptr %24, %1
  br i1 %28, label %35, label %29

29:                                               ; preds = %22
  %30 = ptrtoint ptr %24 to i64
  %31 = sub i64 %30, %18
  %32 = ashr exact i64 %31, 3
  %33 = sub nsw i64 0, %32
  %34 = getelementptr inbounds ptr, ptr %10, i64 %33
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %34, ptr align 8 %1, i64 %31, i1 false)
  br label %35

35:                                               ; preds = %29, %22
  %36 = getelementptr inbounds ptr, ptr %1, i64 %2
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi ptr [ %39, %37 ], [ %1, %35 ]
  store ptr %17, ptr %38, align 8, !tbaa !7
  %39 = getelementptr inbounds ptr, ptr %38, i64 1
  %40 = icmp eq ptr %39, %36
  br i1 %40, label %104, label %37, !llvm.loop !57

41:                                               ; preds = %16
  %42 = icmp eq i64 %20, %2
  br i1 %42, label %50, label %43

43:                                               ; preds = %41
  %44 = sub i64 %2, %20
  %45 = getelementptr inbounds ptr, ptr %10, i64 %44
  br label %46

46:                                               ; preds = %46, %43
  %47 = phi ptr [ %48, %46 ], [ %10, %43 ]
  store ptr %17, ptr %47, align 8, !tbaa !7
  %48 = getelementptr inbounds ptr, ptr %47, i64 1
  %49 = icmp eq ptr %48, %45
  br i1 %49, label %50, label %46, !llvm.loop !57

50:                                               ; preds = %46, %41
  %51 = phi ptr [ %10, %41 ], [ %45, %46 ]
  store ptr %51, ptr %9, align 8, !tbaa !33
  %52 = icmp eq ptr %10, %1
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = getelementptr inbounds ptr, ptr %51, i64 %20
  store ptr %54, ptr %9, align 8, !tbaa !33
  br label %104

55:                                               ; preds = %50
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %51, ptr align 8 %1, i64 %19, i1 false)
  %56 = load ptr, ptr %9, align 8, !tbaa !33
  %57 = getelementptr inbounds ptr, ptr %56, i64 %20
  store ptr %57, ptr %9, align 8, !tbaa !33
  br label %58

58:                                               ; preds = %58, %55
  %59 = phi ptr [ %60, %58 ], [ %1, %55 ]
  store ptr %17, ptr %59, align 8, !tbaa !7
  %60 = getelementptr inbounds ptr, ptr %59, i64 1
  %61 = icmp eq ptr %60, %10
  br i1 %61, label %104, label %58, !llvm.loop !57

62:                                               ; preds = %6
  %63 = tail call noundef i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE12_M_check_lenEmS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2, ptr noundef nonnull @.str.3) #19
  %64 = load ptr, ptr %0, align 8, !tbaa !7
  %65 = ptrtoint ptr %1 to i64
  %66 = ptrtoint ptr %64 to i64
  %67 = sub i64 %65, %66
  %68 = ashr exact i64 %67, 3
  %69 = icmp eq i64 %63, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %62
  %71 = tail call noundef ptr @_ZNSt15__new_allocatorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %63, ptr noundef null) #19
  br label %72

72:                                               ; preds = %70, %62
  %73 = phi ptr [ %71, %70 ], [ null, %62 ]
  %74 = getelementptr inbounds ptr, ptr %73, i64 %68
  %75 = getelementptr inbounds ptr, ptr %74, i64 %2
  %76 = load ptr, ptr %3, align 8, !tbaa !7
  br label %77

77:                                               ; preds = %77, %72
  %78 = phi ptr [ %79, %77 ], [ %74, %72 ]
  store ptr %76, ptr %78, align 8, !tbaa !7
  %79 = getelementptr inbounds ptr, ptr %78, i64 1
  %80 = icmp eq ptr %79, %75
  br i1 %80, label %81, label %77, !llvm.loop !57

81:                                               ; preds = %77
  %82 = load ptr, ptr %0, align 8, !tbaa !21
  %83 = ptrtoint ptr %82 to i64
  %84 = sub i64 %65, %83
  %85 = icmp eq ptr %82, %1
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %73, ptr align 8 %82, i64 %84, i1 false)
  br label %87

87:                                               ; preds = %86, %81
  %88 = ashr exact i64 %84, 3
  %89 = getelementptr inbounds ptr, ptr %73, i64 %88
  %90 = getelementptr inbounds ptr, ptr %89, i64 %2
  %91 = load ptr, ptr %9, align 8, !tbaa !33
  %92 = ptrtoint ptr %91 to i64
  %93 = sub i64 %92, %65
  %94 = icmp eq ptr %91, %1
  br i1 %94, label %96, label %95

95:                                               ; preds = %87
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %90, ptr align 8 %1, i64 %93, i1 false)
  br label %96

96:                                               ; preds = %95, %87
  %97 = ashr exact i64 %93, 3
  %98 = getelementptr inbounds ptr, ptr %90, i64 %97
  %99 = load ptr, ptr %0, align 8, !tbaa !21
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  tail call void @_ZdlPv(ptr noundef nonnull %99) #23
  br label %102

102:                                              ; preds = %101, %96
  store ptr %73, ptr %0, align 8, !tbaa !21
  store ptr %98, ptr %9, align 8, !tbaa !33
  %103 = getelementptr inbounds ptr, ptr %73, i64 %63
  store ptr %103, ptr %7, align 8, !tbaa !54
  br label %104

104:                                              ; preds = %102, %58, %53, %37, %4
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #16

; Function Attrs: mustprogress optsize uwtable
define internal noundef i64 @_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE12_M_check_lenEmS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *, std::allocator<__gnu_cxx::_Hashtable_node<std::pair<const char *const, int>> *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !33
  %6 = load ptr, ptr %0, align 8, !tbaa !21
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = sub nsw i64 1152921504606846975, %10
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #25
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

attributes #0 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { optsize }
attributes #20 = { nounwind }
attributes #21 = { nounwind optsize willreturn memory(read) }
attributes #22 = { nounwind optsize }
attributes #23 = { builtin nounwind optsize }
attributes #24 = { builtin optsize allocsize(0) }
attributes #25 = { noreturn optsize }
attributes #26 = { noreturn nounwind }

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
!11 = !{!12, !8, i64 0}
!12 = !{!"_ZTSSt4pairIKPKciE", !8, i64 0, !13, i64 8}
!13 = !{!"int", !9, i64 0}
!14 = !{!12, !13, i64 8}
!15 = !{!13, !13, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !10, i64 0}
!21 = !{!22, !8, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE17_Vector_impl_dataE", !8, i64 0, !8, i64 8, !8, i64 16}
!23 = !{!24, !32, i64 32}
!24 = !{!"_ZTSN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEEE", !25, i64 0, !26, i64 1, !27, i64 2, !28, i64 3, !29, i64 8, !32, i64 32}
!25 = !{!"_ZTSSaIN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEEE"}
!26 = !{!"_ZTSN9__gnu_cxx4hashIPKcEE"}
!27 = !{!"_ZTS5eqstr"}
!28 = !{!"_ZTSSt10_Select1stISt4pairIKPKciEE"}
!29 = !{!"_ZTSSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE12_Vector_implE", !22, i64 0}
!32 = !{!"long", !9, i64 0}
!33 = !{!22, !8, i64 8}
!34 = !{!9, !9, i64 0}
!35 = distinct !{!35, !17}
!36 = !{!37, !8, i64 0}
!37 = !{!"_ZTSN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEE", !8, i64 0, !12, i64 8}
!38 = distinct !{!38, !17}
!39 = !{!40, !8, i64 240}
!40 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !41, i64 0, !8, i64 216, !9, i64 224, !46, i64 225, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256}
!41 = !{!"_ZTSSt8ios_base", !32, i64 8, !32, i64 16, !42, i64 24, !43, i64 28, !43, i64 32, !8, i64 40, !44, i64 48, !9, i64 64, !13, i64 192, !8, i64 200, !45, i64 208}
!42 = !{!"_ZTSSt13_Ios_Fmtflags", !9, i64 0}
!43 = !{!"_ZTSSt12_Ios_Iostate", !9, i64 0}
!44 = !{!"_ZTSNSt8ios_base6_WordsE", !8, i64 0, !32, i64 8}
!45 = !{!"_ZTSSt6locale", !8, i64 0}
!46 = !{!"bool", !9, i64 0}
!47 = !{!48, !9, i64 56}
!48 = !{!"_ZTSSt5ctypeIcE", !49, i64 0, !8, i64 16, !46, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !9, i64 56, !9, i64 57, !9, i64 313, !9, i64 569}
!49 = !{!"_ZTSNSt6locale5facetE", !13, i64 8}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17}
!52 = !{!32, !32, i64 0}
!53 = distinct !{!53, !17}
!54 = !{!22, !8, i64 16}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = !{!"branch_weights", i32 1, i32 2000}
