; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Misc-C++/stepanov_container.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl" }
%"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl" = type { %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data" }
%"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<double, std::allocator<double>>::_List_impl" }
%"struct.std::__cxx11::_List_base<double, std::allocator<double>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"struct.std::__detail::_Scratch_list" = type { %"struct.std::__detail::_List_node_base" }
%"struct.std::_List_node" = type { %"struct.std::__detail::_List_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [8 x i8] }
%"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>>::_Alloc_node" = type { ptr }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"class.std::multiset" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"class.std::ios_base::Init" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }

$_ZNSt6vectorIdSaIdEED2Ev = comdat any

$_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ = comdat any

$_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ = comdat any

$_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_ = comdat any

$_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_ = comdat any

$_ZNSt6vectorIdSaIdEEC2IPdvEET_S4_RKS0_ = comdat any

$_ZNSt6vectorIdSaIdEE19_M_range_initializeIPdEEvT_S4_St20forward_iterator_tag = comdat any

$_ZNSt15__new_allocatorIdE8allocateEmPKv = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ = comdat any

$_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ = comdat any

$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_ = comdat any

$_ZNSt5dequeIdSaIdEEC2EmRKdRKS0_ = comdat any

$_ZSt14__copy_move_a1ILb0EPddEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_ = comdat any

$_ZSt16__introsort_loopISt15_Deque_iteratorIdRdPdElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_ = comdat any

$_ZSt8__uniqueISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S7_S7_T0_ = comdat any

$_ZNSt11_Deque_baseIdSaIdEED2Ev = comdat any

$_ZSt16__insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_ = comdat any

$_ZSt23__copy_move_backward_a1ILb1EdRdPddESt15_Deque_iteratorIT3_RS3_PS3_ES2_IT0_T1_T2_ESA_S6_ = comdat any

$_ZSt24__copy_move_backward_ditILb1EdRdPdSt15_Deque_iteratorIdS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_ = comdat any

$_ZSt23__copy_move_backward_a1ILb1EPddEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_ = comdat any

$_ZNSt15_Deque_iteratorIdRdPdEpLEl = comdat any

$_ZSt13__heap_selectISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_ = comdat any

$_ZSt11__sort_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_ = comdat any

$_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_T0_ = comdat any

$_ZSt22__move_median_to_firstISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_S7_T0_ = comdat any

$_ZSt21__unguarded_partitionISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_S7_T0_ = comdat any

$_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_ = comdat any

$_ZSt11__push_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S8_T1_RT2_ = comdat any

$_ZSt11__make_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_ = comdat any

$_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEm = comdat any

$_ZNSt5dequeIdSaIdEE18_M_fill_initializeERKd = comdat any

$_ZNSt15__new_allocatorIPdE8allocateEmPKv = comdat any

$_ZNSt11_Deque_baseIdSaIdEE15_M_create_nodesEPPdS3_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt7__cxx114listIdSaIdEEC2IPdvEET_S5_RKS1_ = comdat any

$_ZNSt7__cxx114listIdSaIdEE4sortEv = comdat any

$_ZNSt7__cxx114listIdSaIdEE6uniqueEv = comdat any

$_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIdEvEEEEvRNS_15_List_node_baseET_ = comdat any

$_ZNSt7__cxx114listIdSaIdEE22_M_initialize_dispatchIPdEEvT_S5_St12__false_type = comdat any

$_ZNSt3setIdSt4lessIdESaIdEEC2IPdEET_S6_ = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE17_M_insert_unique_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdEOT_RT0_ = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIdERKd = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE10_M_insert_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdEPSt18_Rb_tree_node_baseSC_OT_RT0_ = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE24_M_get_insert_unique_posERKd = comdat any

$_ZNSt8multisetIdSt4lessIdESaIdEEC2IPdEET_S6_ = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIdE = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE16_M_insert_equal_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdEOT_RT0_ = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE28_M_get_insert_hint_equal_posESt23_Rb_tree_const_iteratorIdERKd = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE21_M_insert_equal_lowerIRdEESt17_Rb_tree_iteratorIdEOT_ = comdat any

$_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE15_M_insert_lowerIRdEESt17_Rb_tree_iteratorIdEPSt18_Rb_tree_node_baseOT_ = comdat any

$_ZNSt6vectorIdSaIdEEC2EmRKS0_ = comdat any

@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_stepanov_container.cpp, ptr null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@result_times = internal global %"class.std::vector" zeroinitializer, align 8
@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1

; Function Attrs: optsize uwtable
define internal void @_GLOBAL__sub_I_stepanov_container.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #20
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @result_times, i8 0, i64 24, i1 false)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIdSaIdEED2Ev, ptr nonnull @result_times, ptr nonnull @__dso_handle) #21
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind optsize uwtable
define internal void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef nonnull %2) #22
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z10array_testPdS_i(ptr noundef %0, ptr noundef %1, i32 %2) #7 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = tail call i64 @llvm.smax.i64(i64 %6, i64 -1)
  %8 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %7) #23
  %9 = icmp eq ptr %1, %0
  br i1 %9, label %40, label %10

10:                                               ; preds = %3
  %11 = ashr exact i64 %6, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %8, ptr align 8 %0, i64 %6, i1 false)
  %12 = getelementptr inbounds double, ptr %8, i64 %11
  %13 = tail call i64 @llvm.ctlz.i64(i64 %11, i1 true), !range !12
  %14 = shl nuw nsw i64 %13, 1
  %15 = xor i64 %14, 126
  tail call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %8, ptr noundef nonnull %12, i64 noundef %15) #20
  tail call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %8, ptr noundef nonnull %12) #20
  br label %16

16:                                               ; preds = %20, %10
  %17 = phi ptr [ %18, %20 ], [ %8, %10 ]
  %18 = getelementptr inbounds double, ptr %17, i64 1
  %19 = icmp eq ptr %18, %12
  br i1 %19, label %40, label %20

20:                                               ; preds = %16
  %21 = load double, ptr %17, align 8, !tbaa !13
  %22 = load double, ptr %18, align 8, !tbaa !13
  %23 = fcmp oeq double %21, %22
  br i1 %23, label %24, label %16, !llvm.loop !15

24:                                               ; preds = %20
  %.lcssa1 = phi double [ %21, %20 ]
  %.lcssa = phi ptr [ %17, %20 ]
  %25 = getelementptr inbounds double, ptr %.lcssa, i64 2
  %26 = icmp eq ptr %25, %12
  br i1 %26, label %40, label %27

27:                                               ; preds = %35, %24
  %28 = phi double [ %36, %35 ], [ %.lcssa1, %24 ]
  %29 = phi ptr [ %38, %35 ], [ %25, %24 ]
  %30 = phi ptr [ %37, %35 ], [ %.lcssa, %24 ]
  %31 = load double, ptr %29, align 8, !tbaa !13
  %32 = fcmp oeq double %28, %31
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds double, ptr %30, i64 1
  store double %31, ptr %34, align 8, !tbaa !13
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi double [ %28, %27 ], [ %31, %33 ]
  %37 = phi ptr [ %30, %27 ], [ %34, %33 ]
  %38 = getelementptr inbounds double, ptr %29, i64 1
  %39 = icmp eq ptr %38, %12
  br i1 %39, label %40, label %27, !llvm.loop !17

40:                                               ; preds = %35, %24, %16, %3
  tail call void @_ZdaPv(ptr noundef nonnull %8) #22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) #7 comdat {
  %4 = alloca %"class.std::ios_base::Init", align 1
  %5 = alloca %"class.std::ios_base::Init", align 1
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %7, %6
  %9 = icmp sgt i64 %8, 128
  br i1 %9, label %10, label %44

10:                                               ; preds = %3
  %11 = getelementptr inbounds double, ptr %0, i64 1
  br label %12

12:                                               ; preds = %39, %10
  %13 = phi i64 [ %8, %10 ], [ %42, %39 ]
  %14 = phi ptr [ %1, %10 ], [ %.lcssa2.lcssa.lcssa, %39 ]
  %15 = phi i64 [ %2, %10 ], [ %40, %39 ]
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  %.lcssa5 = phi ptr [ %14, %12 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.lcssa5, ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  call void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.lcssa5, ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br label %44

18:                                               ; preds = %12
  %19 = lshr i64 %13, 4
  %20 = getelementptr inbounds double, ptr %0, i64 %19
  %21 = getelementptr inbounds double, ptr %14, i64 -1
  tail call void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %20, ptr noundef nonnull %21) #20
  br label %22

22:                                               ; preds = %38, %18
  %23 = phi ptr [ %14, %18 ], [ %.lcssa4, %38 ]
  %24 = phi ptr [ %11, %18 ], [ %.lcssa.lcssa, %38 ]
  %25 = load double, ptr %0, align 8, !tbaa !13
  br label %26

26:                                               ; preds = %26, %22
  %27 = phi ptr [ %24, %22 ], [ %30, %26 ]
  %28 = load double, ptr %27, align 8, !tbaa !13
  %29 = fcmp olt double %28, %25
  %30 = getelementptr inbounds double, ptr %27, i64 1
  br i1 %29, label %26, label %31, !llvm.loop !18

31:                                               ; preds = %31, %26
  %.lcssa2 = phi ptr [ %.lcssa2, %31 ], [ %27, %26 ]
  %.lcssa1 = phi double [ %.lcssa1, %31 ], [ %28, %26 ]
  %.lcssa = phi ptr [ %.lcssa, %31 ], [ %30, %26 ]
  %32 = phi ptr [ %33, %31 ], [ %23, %26 ]
  %33 = getelementptr inbounds double, ptr %32, i64 -1
  %34 = load double, ptr %33, align 8, !tbaa !13
  %35 = fcmp olt double %25, %34
  br i1 %35, label %31, label %36, !llvm.loop !19

36:                                               ; preds = %31
  %.lcssa4 = phi ptr [ %33, %31 ]
  %.lcssa3 = phi double [ %34, %31 ]
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %31 ]
  %.lcssa1.lcssa = phi double [ %.lcssa1, %31 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %31 ]
  %37 = icmp ult ptr %.lcssa2.lcssa, %.lcssa4
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store double %.lcssa3, ptr %.lcssa2.lcssa, align 8, !tbaa !13
  store double %.lcssa1.lcssa, ptr %.lcssa4, align 8, !tbaa !13
  br label %22, !llvm.loop !20

39:                                               ; preds = %36
  %.lcssa2.lcssa.lcssa = phi ptr [ %.lcssa2.lcssa, %36 ]
  %40 = add nsw i64 %15, -1
  tail call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.lcssa2.lcssa.lcssa, ptr noundef %14, i64 noundef %40) #20
  %41 = ptrtoint ptr %.lcssa2.lcssa.lcssa to i64
  %42 = sub i64 %41, %6
  %43 = icmp sgt i64 %42, 128
  br i1 %43, label %12, label %44, !llvm.loop !21

44:                                               ; preds = %39, %17, %3
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) #7 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = icmp sgt i64 %5, 128
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = getelementptr inbounds double, ptr %0, i64 16
  tail call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef nonnull %8) #20
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %28, label %10

10:                                               ; preds = %23, %7
  %11 = phi ptr [ %25, %23 ], [ %8, %7 ]
  %12 = load double, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds double, ptr %11, i64 -1
  %14 = load double, ptr %13, align 8, !tbaa !13
  %15 = fcmp olt double %12, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %16, %10
  %17 = phi double [ %21, %16 ], [ %14, %10 ]
  %18 = phi ptr [ %20, %16 ], [ %13, %10 ]
  %19 = phi ptr [ %18, %16 ], [ %11, %10 ]
  store double %17, ptr %19, align 8, !tbaa !13
  %20 = getelementptr inbounds double, ptr %18, i64 -1
  %21 = load double, ptr %20, align 8, !tbaa !13
  %22 = fcmp olt double %12, %21
  br i1 %22, label %16, label %23, !llvm.loop !22

23:                                               ; preds = %16, %10
  %24 = phi ptr [ %11, %10 ], [ %18, %16 ]
  store double %12, ptr %24, align 8, !tbaa !13
  %25 = getelementptr inbounds double, ptr %11, i64 1
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %28, label %10, !llvm.loop !23

27:                                               ; preds = %2
  tail call void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) #20
  br label %28

28:                                               ; preds = %27, %23, %7
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) #7 comdat {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %38, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %38, label %7

7:                                                ; preds = %4
  %8 = ptrtoint ptr %0 to i64
  br label %9

9:                                                ; preds = %34, %7
  %10 = phi ptr [ %5, %7 ], [ %36, %34 ]
  %11 = phi ptr [ %0, %7 ], [ %10, %34 ]
  %12 = load double, ptr %10, align 8, !tbaa !13
  %13 = load double, ptr %0, align 8, !tbaa !13
  %14 = fcmp olt double %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = icmp eq ptr %10, %0
  br i1 %16, label %34, label %17

17:                                               ; preds = %15
  %18 = ptrtoint ptr %10 to i64
  %19 = sub i64 %18, %8
  %20 = ashr exact i64 %19, 3
  %21 = sub nsw i64 0, %20
  %22 = getelementptr inbounds double, ptr %11, i64 2
  %23 = getelementptr inbounds double, ptr %22, i64 %21
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %23, ptr nonnull align 8 %0, i64 %19, i1 false)
  br label %34

24:                                               ; preds = %9
  %25 = load double, ptr %11, align 8, !tbaa !13
  %26 = fcmp olt double %12, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %27, %24
  %28 = phi double [ %32, %27 ], [ %25, %24 ]
  %29 = phi ptr [ %31, %27 ], [ %11, %24 ]
  %30 = phi ptr [ %29, %27 ], [ %10, %24 ]
  store double %28, ptr %30, align 8, !tbaa !13
  %31 = getelementptr inbounds double, ptr %29, i64 -1
  %32 = load double, ptr %31, align 8, !tbaa !13
  %33 = fcmp olt double %12, %32
  br i1 %33, label %27, label %34, !llvm.loop !22

34:                                               ; preds = %27, %24, %17, %15
  %35 = phi ptr [ %0, %15 ], [ %0, %17 ], [ %10, %24 ], [ %29, %27 ]
  store double %12, ptr %35, align 8, !tbaa !13
  %36 = getelementptr inbounds double, ptr %10, i64 1
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %38, label %9, !llvm.loop !24

38:                                               ; preds = %34, %4, %2
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #7 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp slt i64 %6, 16
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = add nsw i64 %7, -2
  %11 = lshr i64 %10, 1
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i64 [ %11, %9 ], [ %17, %12 ]
  %14 = getelementptr inbounds double, ptr %0, i64 %13
  %15 = load double, ptr %14, align 8, !tbaa !13
  tail call void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %13, i64 noundef %7, double noundef %15) #20
  %16 = icmp eq i64 %13, 0
  %17 = add nsw i64 %13, -1
  br i1 %16, label %18, label %12, !llvm.loop !25

18:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZSt11__sort_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #7 comdat {
  %4 = ptrtoint ptr %0 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %5, %4
  %7 = icmp sgt i64 %6, 8
  br i1 %7, label %8, label %17

8:                                                ; preds = %8, %3
  %9 = phi ptr [ %10, %8 ], [ %1, %3 ]
  %10 = getelementptr inbounds double, ptr %9, i64 -1
  %11 = load double, ptr %10, align 8, !tbaa !13
  %12 = load double, ptr %0, align 8, !tbaa !13
  store double %12, ptr %10, align 8, !tbaa !13
  %13 = ptrtoint ptr %10 to i64
  %14 = sub i64 %13, %4
  %15 = ashr exact i64 %14, 3
  tail call void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %15, double noundef %11) #20
  %16 = icmp sgt i64 %14, 8
  br i1 %16, label %8, label %17, !llvm.loop !26

17:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7 comdat {
  %5 = load double, ptr %1, align 8, !tbaa !13
  %6 = load double, ptr %2, align 8, !tbaa !13
  %7 = fcmp olt double %5, %6
  %8 = load double, ptr %3, align 8, !tbaa !13
  br i1 %7, label %9, label %18

9:                                                ; preds = %4
  %10 = fcmp olt double %6, %8
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = load double, ptr %0, align 8, !tbaa !13
  store double %6, ptr %0, align 8, !tbaa !13
  store double %12, ptr %2, align 8, !tbaa !13
  br label %27

13:                                               ; preds = %9
  %14 = fcmp olt double %5, %8
  %15 = load double, ptr %0, align 8, !tbaa !13
  br i1 %14, label %16, label %17

16:                                               ; preds = %13
  store double %8, ptr %0, align 8, !tbaa !13
  store double %15, ptr %3, align 8, !tbaa !13
  br label %27

17:                                               ; preds = %13
  store double %5, ptr %0, align 8, !tbaa !13
  store double %15, ptr %1, align 8, !tbaa !13
  br label %27

18:                                               ; preds = %4
  %19 = fcmp olt double %5, %8
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = load double, ptr %0, align 8, !tbaa !13
  store double %5, ptr %0, align 8, !tbaa !13
  store double %21, ptr %1, align 8, !tbaa !13
  br label %27

22:                                               ; preds = %18
  %23 = fcmp olt double %6, %8
  %24 = load double, ptr %0, align 8, !tbaa !13
  br i1 %23, label %25, label %26

25:                                               ; preds = %22
  store double %8, ptr %0, align 8, !tbaa !13
  store double %24, ptr %3, align 8, !tbaa !13
  br label %27

26:                                               ; preds = %22
  store double %6, ptr %0, align 8, !tbaa !13
  store double %24, ptr %2, align 8, !tbaa !13
  br label %27

27:                                               ; preds = %26, %25, %20, %17, %16, %11
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3) #0 comdat {
  %5 = add nsw i64 %2, -1
  %6 = sdiv i64 %5, 2
  %7 = icmp sgt i64 %6, %1
  br i1 %7, label %8, label %23

8:                                                ; preds = %8, %4
  %9 = phi i64 [ %18, %8 ], [ %1, %4 ]
  %10 = shl i64 %9, 1
  %11 = add i64 %10, 2
  %12 = getelementptr inbounds double, ptr %0, i64 %11
  %13 = or i64 %10, 1
  %14 = getelementptr inbounds double, ptr %0, i64 %13
  %15 = load double, ptr %12, align 8, !tbaa !13
  %16 = load double, ptr %14, align 8, !tbaa !13
  %17 = fcmp olt double %15, %16
  %18 = select i1 %17, i64 %13, i64 %11
  %19 = getelementptr inbounds double, ptr %0, i64 %18
  %20 = load double, ptr %19, align 8, !tbaa !13
  %21 = getelementptr inbounds double, ptr %0, i64 %9
  store double %20, ptr %21, align 8, !tbaa !13
  %22 = icmp slt i64 %18, %6
  br i1 %22, label %8, label %23, !llvm.loop !27

23:                                               ; preds = %8, %4
  %24 = phi i64 [ %1, %4 ], [ %18, %8 ]
  %25 = and i64 %2, 1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = add nsw i64 %2, -2
  %29 = sdiv i64 %28, 2
  %30 = icmp eq i64 %24, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = shl i64 %24, 1
  %33 = or i64 %32, 1
  %34 = getelementptr inbounds double, ptr %0, i64 %33
  %35 = load double, ptr %34, align 8, !tbaa !13
  %36 = getelementptr inbounds double, ptr %0, i64 %24
  store double %35, ptr %36, align 8, !tbaa !13
  br label %37

37:                                               ; preds = %31, %27, %23
  %38 = phi i64 [ %33, %31 ], [ %24, %27 ], [ %24, %23 ]
  %39 = icmp sgt i64 %38, %1
  br i1 %39, label %40, label %50

40:                                               ; preds = %47, %37
  %41 = phi i64 [ %43, %47 ], [ %38, %37 ]
  %42 = add nsw i64 %41, -1
  %43 = sdiv i64 %42, 2
  %44 = getelementptr inbounds double, ptr %0, i64 %43
  %45 = load double, ptr %44, align 8, !tbaa !13
  %46 = fcmp olt double %45, %3
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = getelementptr inbounds double, ptr %0, i64 %41
  store double %45, ptr %48, align 8, !tbaa !13
  %49 = icmp sgt i64 %43, %1
  br i1 %49, label %40, label %50, !llvm.loop !28

50:                                               ; preds = %47, %40, %37
  %51 = phi i64 [ %38, %37 ], [ %41, %40 ], [ %43, %47 ]
  %52 = getelementptr inbounds double, ptr %0, i64 %51
  store double %3, ptr %52, align 8, !tbaa !13
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_Z19vector_pointer_testPdS_i(ptr noundef %0, ptr noundef %1, i32 %2) #0 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::vector", align 8
  %5 = alloca %"class.std::ios_base::Init", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #21
  call void @_ZNSt6vectorIdSaIdEEC2IPdvEET_S4_RKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #21
  %6 = load ptr, ptr %4, align 8, !tbaa !29
  %7 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %47, label %10

10:                                               ; preds = %3
  %11 = ptrtoint ptr %8 to i64
  %12 = ptrtoint ptr %6 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 3
  %15 = call i64 @llvm.ctlz.i64(i64 %14, i1 true), !range !12
  %16 = shl nuw nsw i64 %15, 1
  %17 = xor i64 %16, 126
  invoke void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %6, ptr noundef %8, i64 noundef %17) #20
          to label %18 unwind label %52

18:                                               ; preds = %10
  invoke void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %6, ptr noundef %8) #20
          to label %19 unwind label %52

19:                                               ; preds = %18
  %20 = load ptr, ptr %4, align 8, !tbaa !29
  %21 = load ptr, ptr %7, align 8, !tbaa !29
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %47, label %23

23:                                               ; preds = %27, %19
  %24 = phi ptr [ %25, %27 ], [ %20, %19 ]
  %25 = getelementptr inbounds double, ptr %24, i64 1
  %26 = icmp eq ptr %25, %21
  br i1 %26, label %47, label %27

27:                                               ; preds = %23
  %28 = load double, ptr %24, align 8, !tbaa !13
  %29 = load double, ptr %25, align 8, !tbaa !13
  %30 = fcmp oeq double %28, %29
  br i1 %30, label %31, label %23, !llvm.loop !15

31:                                               ; preds = %27
  %.lcssa1 = phi double [ %28, %27 ]
  %.lcssa = phi ptr [ %24, %27 ]
  %32 = getelementptr inbounds double, ptr %.lcssa, i64 2
  %33 = icmp eq ptr %32, %21
  br i1 %33, label %47, label %34

34:                                               ; preds = %42, %31
  %35 = phi double [ %43, %42 ], [ %.lcssa1, %31 ]
  %36 = phi ptr [ %45, %42 ], [ %32, %31 ]
  %37 = phi ptr [ %44, %42 ], [ %.lcssa, %31 ]
  %38 = load double, ptr %36, align 8, !tbaa !13
  %39 = fcmp oeq double %35, %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds double, ptr %37, i64 1
  store double %38, ptr %41, align 8, !tbaa !13
  br label %42

42:                                               ; preds = %40, %34
  %43 = phi double [ %35, %34 ], [ %38, %40 ]
  %44 = phi ptr [ %37, %34 ], [ %41, %40 ]
  %45 = getelementptr inbounds double, ptr %36, i64 1
  %46 = icmp eq ptr %45, %21
  br i1 %46, label %47, label %34, !llvm.loop !17

47:                                               ; preds = %42, %31, %23, %19, %3
  %48 = phi ptr [ %20, %19 ], [ %20, %31 ], [ %6, %3 ], [ %20, %42 ], [ %20, %23 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef nonnull %48) #22
  br label %51

51:                                               ; preds = %50, %47
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  ret void

52:                                               ; preds = %18, %10
  %53 = landingpad { ptr, i32 }
          cleanup
  %54 = load ptr, ptr %4, align 8, !tbaa !7
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  call void @_ZdlPv(ptr noundef nonnull %54) #22
  br label %57

57:                                               ; preds = %56, %52
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  resume { ptr, i32 } %53
}

; Function Attrs: optsize uwtable
define internal void @_ZNSt6vectorIdSaIdEEC2IPdvEET_S4_RKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIdSaIdEE19_M_range_initializeIPdEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) #20
          to label %5 unwind label %6

5:                                                ; preds = %4
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = load ptr, ptr %0, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef nonnull %8) #22
  br label %11

11:                                               ; preds = %10, %6
  resume { ptr, i32 } %7
}

; Function Attrs: optsize uwtable
define internal void @_ZNSt6vectorIdSaIdEE19_M_range_initializeIPdEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp ugt i64 %6, 9223372036854775800
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
  unreachable

10:                                               ; preds = %3
  %11 = icmp eq ptr %2, %1
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  store ptr null, ptr %0, align 8, !tbaa !7
  %13 = getelementptr inbounds double, ptr null, i64 %7
  %14 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !30
  br label %19

15:                                               ; preds = %10
  %16 = tail call noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %7, ptr noundef null) #20
  store ptr %16, ptr %0, align 8, !tbaa !7
  %17 = getelementptr inbounds double, ptr %16, i64 %7
  %18 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !30
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %16, ptr align 8 %1, i64 %6, i1 false)
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi ptr [ %13, %12 ], [ %17, %15 ]
  %21 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !31
  ret void
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) #7 comdat align 2 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !32

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #23
  ret ptr %11
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize uwtable
define internal void @_Z20vector_iterator_testPdS_i(ptr noundef %0, ptr noundef %1, i32 %2) #0 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::vector", align 8
  %5 = alloca %"class.std::ios_base::Init", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #21
  call void @_ZNSt6vectorIdSaIdEEC2IPdvEET_S4_RKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #21
  %6 = load ptr, ptr %4, align 8, !tbaa !29
  %7 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %47, label %10

10:                                               ; preds = %3
  %11 = ptrtoint ptr %8 to i64
  %12 = ptrtoint ptr %6 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 3
  %15 = call i64 @llvm.ctlz.i64(i64 %14, i1 true), !range !12
  %16 = shl nuw nsw i64 %15, 1
  %17 = xor i64 %16, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %6, ptr %8, i64 noundef %17) #20
          to label %18 unwind label %52

18:                                               ; preds = %10
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %6, ptr %8) #20
          to label %19 unwind label %52

19:                                               ; preds = %18
  %20 = load ptr, ptr %4, align 8, !tbaa !29
  %21 = load ptr, ptr %7, align 8, !tbaa !29
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %47, label %23

23:                                               ; preds = %27, %19
  %24 = phi ptr [ %25, %27 ], [ %20, %19 ]
  %25 = getelementptr inbounds double, ptr %24, i64 1
  %26 = icmp eq ptr %25, %21
  br i1 %26, label %47, label %27

27:                                               ; preds = %23
  %28 = load double, ptr %24, align 8, !tbaa !13
  %29 = load double, ptr %25, align 8, !tbaa !13
  %30 = fcmp oeq double %28, %29
  br i1 %30, label %31, label %23, !llvm.loop !33

31:                                               ; preds = %27
  %.lcssa1 = phi double [ %28, %27 ]
  %.lcssa = phi ptr [ %24, %27 ]
  %32 = getelementptr inbounds double, ptr %.lcssa, i64 2
  %33 = icmp eq ptr %32, %21
  br i1 %33, label %47, label %34

34:                                               ; preds = %42, %31
  %35 = phi double [ %43, %42 ], [ %.lcssa1, %31 ]
  %36 = phi ptr [ %45, %42 ], [ %32, %31 ]
  %37 = phi ptr [ %44, %42 ], [ %.lcssa, %31 ]
  %38 = load double, ptr %36, align 8, !tbaa !13
  %39 = fcmp oeq double %35, %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds double, ptr %37, i64 1
  store double %38, ptr %41, align 8, !tbaa !13
  br label %42

42:                                               ; preds = %40, %34
  %43 = phi double [ %35, %34 ], [ %38, %40 ]
  %44 = phi ptr [ %37, %34 ], [ %41, %40 ]
  %45 = getelementptr inbounds double, ptr %36, i64 1
  %46 = icmp eq ptr %45, %21
  br i1 %46, label %47, label %34, !llvm.loop !34

47:                                               ; preds = %42, %31, %23, %19, %3
  %48 = phi ptr [ %20, %19 ], [ %20, %31 ], [ %6, %3 ], [ %20, %42 ], [ %20, %23 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef nonnull %48) #22
  br label %51

51:                                               ; preds = %50, %47
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  ret void

52:                                               ; preds = %18, %10
  %53 = landingpad { ptr, i32 }
          cleanup
  %54 = load ptr, ptr %4, align 8, !tbaa !7
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  call void @_ZdlPv(ptr noundef nonnull %54) #22
  br label %57

57:                                               ; preds = %56, %52
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  resume { ptr, i32 } %53
}

; Function Attrs: optsize uwtable
define internal void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) #0 comdat {
  %4 = alloca %"class.std::ios_base::Init", align 1
  %5 = alloca %"class.std::ios_base::Init", align 1
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %7, %6
  %9 = icmp sgt i64 %8, 128
  br i1 %9, label %10, label %44

10:                                               ; preds = %3
  %11 = getelementptr inbounds double, ptr %0, i64 1
  br label %12

12:                                               ; preds = %39, %10
  %13 = phi i64 [ %8, %10 ], [ %42, %39 ]
  %14 = phi i64 [ %2, %10 ], [ %40, %39 ]
  %15 = phi ptr [ %1, %10 ], [ %.lcssa2.lcssa.lcssa, %39 ]
  %16 = icmp eq i64 %14, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  %.lcssa5 = phi ptr [ %15, %12 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %.lcssa5, ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %.lcssa5, ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br label %44

18:                                               ; preds = %12
  %19 = lshr i64 %13, 4
  %20 = getelementptr inbounds double, ptr %0, i64 %19
  %21 = getelementptr inbounds double, ptr %15, i64 -1
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_(ptr %0, ptr nonnull %11, ptr %20, ptr nonnull %21) #20
  br label %22

22:                                               ; preds = %38, %18
  %23 = phi ptr [ %11, %18 ], [ %.lcssa.lcssa, %38 ]
  %24 = phi ptr [ %15, %18 ], [ %.lcssa4, %38 ]
  %25 = load double, ptr %0, align 8, !tbaa !13
  br label %26

26:                                               ; preds = %26, %22
  %27 = phi ptr [ %23, %22 ], [ %30, %26 ]
  %28 = load double, ptr %27, align 8, !tbaa !13
  %29 = fcmp olt double %28, %25
  %30 = getelementptr inbounds double, ptr %27, i64 1
  br i1 %29, label %26, label %31, !llvm.loop !35

31:                                               ; preds = %31, %26
  %.lcssa2 = phi ptr [ %.lcssa2, %31 ], [ %27, %26 ]
  %.lcssa1 = phi double [ %.lcssa1, %31 ], [ %28, %26 ]
  %.lcssa = phi ptr [ %.lcssa, %31 ], [ %30, %26 ]
  %32 = phi ptr [ %33, %31 ], [ %24, %26 ]
  %33 = getelementptr inbounds double, ptr %32, i64 -1
  %34 = load double, ptr %33, align 8, !tbaa !13
  %35 = fcmp olt double %25, %34
  br i1 %35, label %31, label %36, !llvm.loop !36

36:                                               ; preds = %31
  %.lcssa4 = phi ptr [ %33, %31 ]
  %.lcssa3 = phi double [ %34, %31 ]
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %31 ]
  %.lcssa1.lcssa = phi double [ %.lcssa1, %31 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %31 ]
  %37 = icmp ult ptr %.lcssa2.lcssa, %.lcssa4
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store double %.lcssa3, ptr %.lcssa2.lcssa, align 8, !tbaa !13
  store double %.lcssa1.lcssa, ptr %.lcssa4, align 8, !tbaa !13
  br label %22, !llvm.loop !37

39:                                               ; preds = %36
  %.lcssa2.lcssa.lcssa = phi ptr [ %.lcssa2.lcssa, %36 ]
  %40 = add nsw i64 %14, -1
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.lcssa2.lcssa.lcssa, ptr %15, i64 noundef %40) #20
  %41 = ptrtoint ptr %.lcssa2.lcssa.lcssa to i64
  %42 = sub i64 %41, %6
  %43 = icmp sgt i64 %42, 128
  br i1 %43, label %12, label %44, !llvm.loop !38

44:                                               ; preds = %39, %17, %3
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) #0 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = icmp sgt i64 %5, 128
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = getelementptr inbounds double, ptr %0, i64 16
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr nonnull %8) #20
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %28, label %10

10:                                               ; preds = %23, %7
  %11 = phi ptr [ %25, %23 ], [ %8, %7 ]
  %12 = load double, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds double, ptr %11, i64 -1
  %14 = load double, ptr %13, align 8, !tbaa !13
  %15 = fcmp olt double %12, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %16, %10
  %17 = phi double [ %21, %16 ], [ %14, %10 ]
  %18 = phi ptr [ %20, %16 ], [ %13, %10 ]
  %19 = phi ptr [ %18, %16 ], [ %11, %10 ]
  store double %17, ptr %19, align 8, !tbaa !13
  %20 = getelementptr inbounds double, ptr %18, i64 -1
  %21 = load double, ptr %20, align 8, !tbaa !13
  %22 = fcmp olt double %12, %21
  br i1 %22, label %16, label %23, !llvm.loop !39

23:                                               ; preds = %16, %10
  %24 = phi ptr [ %11, %10 ], [ %18, %16 ]
  store double %12, ptr %24, align 8, !tbaa !13
  %25 = getelementptr inbounds double, ptr %11, i64 1
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %28, label %10, !llvm.loop !40

27:                                               ; preds = %2
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) #20
  br label %28

28:                                               ; preds = %27, %23, %7
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) #0 comdat {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %38, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %38, label %7

7:                                                ; preds = %4
  %8 = ptrtoint ptr %0 to i64
  br label %9

9:                                                ; preds = %34, %7
  %10 = phi ptr [ %5, %7 ], [ %36, %34 ]
  %11 = phi ptr [ %0, %7 ], [ %10, %34 ]
  %12 = load double, ptr %10, align 8, !tbaa !13
  %13 = load double, ptr %0, align 8, !tbaa !13
  %14 = fcmp olt double %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = icmp eq ptr %10, %0
  br i1 %16, label %34, label %17

17:                                               ; preds = %15
  %18 = ptrtoint ptr %10 to i64
  %19 = sub i64 %18, %8
  %20 = ashr exact i64 %19, 3
  %21 = sub nsw i64 0, %20
  %22 = getelementptr inbounds double, ptr %11, i64 2
  %23 = getelementptr inbounds double, ptr %22, i64 %21
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %23, ptr nonnull align 8 %0, i64 %19, i1 false)
  br label %34

24:                                               ; preds = %9
  %25 = load double, ptr %11, align 8, !tbaa !13
  %26 = fcmp olt double %12, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %27, %24
  %28 = phi double [ %32, %27 ], [ %25, %24 ]
  %29 = phi ptr [ %31, %27 ], [ %11, %24 ]
  %30 = phi ptr [ %29, %27 ], [ %10, %24 ]
  store double %28, ptr %30, align 8, !tbaa !13
  %31 = getelementptr inbounds double, ptr %29, i64 -1
  %32 = load double, ptr %31, align 8, !tbaa !13
  %33 = fcmp olt double %12, %32
  br i1 %33, label %27, label %34, !llvm.loop !39

34:                                               ; preds = %27, %24, %17, %15
  %35 = phi ptr [ %0, %15 ], [ %0, %17 ], [ %10, %24 ], [ %29, %27 ]
  store double %12, ptr %35, align 8, !tbaa !13
  %36 = getelementptr inbounds double, ptr %10, i64 1
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %38, label %9, !llvm.loop !41

38:                                               ; preds = %34, %4, %2
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp slt i64 %6, 16
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = add nsw i64 %7, -2
  %11 = lshr i64 %10, 1
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i64 [ %11, %9 ], [ %17, %12 ]
  %14 = getelementptr inbounds double, ptr %0, i64 %13
  %15 = load double, ptr %14, align 8, !tbaa !13
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_(ptr %0, i64 noundef %13, i64 noundef %7, double noundef %15) #20
  %16 = icmp eq i64 %13, 0
  %17 = add nsw i64 %13, -1
  br i1 %16, label %18, label %12, !llvm.loop !42

18:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #7 comdat {
  %4 = ptrtoint ptr %0 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %5, %4
  %7 = icmp sgt i64 %6, 8
  br i1 %7, label %8, label %17

8:                                                ; preds = %8, %3
  %9 = phi ptr [ %10, %8 ], [ %1, %3 ]
  %10 = getelementptr inbounds double, ptr %9, i64 -1
  %11 = load double, ptr %10, align 8, !tbaa !13
  %12 = load double, ptr %0, align 8, !tbaa !13
  store double %12, ptr %10, align 8, !tbaa !13
  %13 = ptrtoint ptr %10 to i64
  %14 = sub i64 %13, %4
  %15 = ashr exact i64 %14, 3
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %15, double noundef %11) #20
  %16 = icmp sgt i64 %14, 8
  br i1 %16, label %8, label %17, !llvm.loop !43

17:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_(ptr %0, ptr %1, ptr %2, ptr %3) #7 comdat {
  %5 = load double, ptr %1, align 8, !tbaa !13
  %6 = load double, ptr %2, align 8, !tbaa !13
  %7 = fcmp olt double %5, %6
  %8 = load double, ptr %3, align 8, !tbaa !13
  br i1 %7, label %9, label %18

9:                                                ; preds = %4
  %10 = fcmp olt double %6, %8
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = load double, ptr %0, align 8, !tbaa !13
  store double %6, ptr %0, align 8, !tbaa !13
  store double %12, ptr %2, align 8, !tbaa !13
  br label %27

13:                                               ; preds = %9
  %14 = fcmp olt double %5, %8
  %15 = load double, ptr %0, align 8, !tbaa !13
  br i1 %14, label %16, label %17

16:                                               ; preds = %13
  store double %8, ptr %0, align 8, !tbaa !13
  store double %15, ptr %3, align 8, !tbaa !13
  br label %27

17:                                               ; preds = %13
  store double %5, ptr %0, align 8, !tbaa !13
  store double %15, ptr %1, align 8, !tbaa !13
  br label %27

18:                                               ; preds = %4
  %19 = fcmp olt double %5, %8
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = load double, ptr %0, align 8, !tbaa !13
  store double %5, ptr %0, align 8, !tbaa !13
  store double %21, ptr %1, align 8, !tbaa !13
  br label %27

22:                                               ; preds = %18
  %23 = fcmp olt double %6, %8
  %24 = load double, ptr %0, align 8, !tbaa !13
  br i1 %23, label %25, label %26

25:                                               ; preds = %22
  store double %8, ptr %0, align 8, !tbaa !13
  store double %24, ptr %3, align 8, !tbaa !13
  br label %27

26:                                               ; preds = %22
  store double %6, ptr %0, align 8, !tbaa !13
  store double %24, ptr %2, align 8, !tbaa !13
  br label %27

27:                                               ; preds = %26, %25, %20, %17, %16, %11
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, double noundef %3) #0 comdat {
  %5 = add nsw i64 %2, -1
  %6 = sdiv i64 %5, 2
  %7 = icmp sgt i64 %6, %1
  br i1 %7, label %8, label %23

8:                                                ; preds = %8, %4
  %9 = phi i64 [ %18, %8 ], [ %1, %4 ]
  %10 = shl i64 %9, 1
  %11 = add i64 %10, 2
  %12 = getelementptr inbounds double, ptr %0, i64 %11
  %13 = or i64 %10, 1
  %14 = getelementptr inbounds double, ptr %0, i64 %13
  %15 = load double, ptr %12, align 8, !tbaa !13
  %16 = load double, ptr %14, align 8, !tbaa !13
  %17 = fcmp olt double %15, %16
  %18 = select i1 %17, i64 %13, i64 %11
  %19 = getelementptr inbounds double, ptr %0, i64 %18
  %20 = load double, ptr %19, align 8, !tbaa !13
  %21 = getelementptr inbounds double, ptr %0, i64 %9
  store double %20, ptr %21, align 8, !tbaa !13
  %22 = icmp slt i64 %18, %6
  br i1 %22, label %8, label %23, !llvm.loop !44

23:                                               ; preds = %8, %4
  %24 = phi i64 [ %1, %4 ], [ %18, %8 ]
  %25 = and i64 %2, 1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = add nsw i64 %2, -2
  %29 = sdiv i64 %28, 2
  %30 = icmp eq i64 %24, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = shl i64 %24, 1
  %33 = or i64 %32, 1
  %34 = getelementptr inbounds double, ptr %0, i64 %33
  %35 = load double, ptr %34, align 8, !tbaa !13
  %36 = getelementptr inbounds double, ptr %0, i64 %24
  store double %35, ptr %36, align 8, !tbaa !13
  br label %37

37:                                               ; preds = %31, %27, %23
  %38 = phi i64 [ %33, %31 ], [ %24, %27 ], [ %24, %23 ]
  %39 = icmp sgt i64 %38, %1
  br i1 %39, label %40, label %50

40:                                               ; preds = %47, %37
  %41 = phi i64 [ %43, %47 ], [ %38, %37 ]
  %42 = add nsw i64 %41, -1
  %43 = sdiv i64 %42, 2
  %44 = getelementptr inbounds double, ptr %0, i64 %43
  %45 = load double, ptr %44, align 8, !tbaa !13
  %46 = fcmp olt double %45, %3
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = getelementptr inbounds double, ptr %0, i64 %41
  store double %45, ptr %48, align 8, !tbaa !13
  %49 = icmp sgt i64 %43, %1
  br i1 %49, label %40, label %50, !llvm.loop !45

50:                                               ; preds = %47, %40, %37
  %51 = phi i64 [ %38, %37 ], [ %41, %40 ], [ %43, %47 ]
  %52 = getelementptr inbounds double, ptr %0, i64 %51
  store double %3, ptr %52, align 8, !tbaa !13
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_Z10deque_testPdS_i(ptr noundef %0, ptr noundef %1, i32 %2) #0 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"struct.std::_Deque_iterator", align 8
  %5 = alloca %"struct.std::_Deque_iterator", align 16
  %6 = alloca %"struct.std::_Deque_iterator", align 8
  %7 = alloca %"struct.std::_Deque_iterator", align 8
  %8 = alloca %"struct.std::_Deque_iterator", align 8
  %9 = alloca %"struct.std::_Deque_iterator", align 8
  %10 = alloca %"struct.std::_Deque_iterator", align 8
  %11 = alloca %"struct.std::_Deque_iterator", align 16
  %12 = alloca %"class.std::deque", align 8
  %13 = alloca double, align 8
  %14 = alloca %"class.std::ios_base::Init", align 1
  %15 = alloca %"struct.std::_Deque_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %12) #21
  %16 = ptrtoint ptr %1 to i64
  %17 = ptrtoint ptr %0 to i64
  %18 = sub i64 %16, %17
  %19 = ashr exact i64 %18, 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #21
  store double 0.000000e+00, ptr %13, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #21
  call void @_ZNSt5dequeIdSaIdEEC2EmRKdRKS0_(ptr noundef nonnull align 8 dereferenceable(80) %12, i64 noundef %19, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 1 dereferenceable(1) %14) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  %20 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %12, i64 0, i32 2
  %21 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %12, i64 0, i32 2, i32 1
  %22 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %12, i64 0, i32 2, i32 2
  %23 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %12, i64 0, i32 2, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10), !noalias !46
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11), !noalias !46
  %24 = load <2 x ptr>, ptr %20, align 8, !tbaa !29, !noalias !49
  store <2 x ptr> %24, ptr %11, align 16, !tbaa !29, !alias.scope !52, !noalias !55
  %25 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %11, i64 0, i32 2
  %26 = load <2 x ptr>, ptr %22, align 8, !tbaa !29, !noalias !49
  store <2 x ptr> %26, ptr %25, align 16, !tbaa !29, !alias.scope !52, !noalias !55
  invoke void @_ZSt14__copy_move_a1ILb0EPddEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_(ptr nonnull sret(%"struct.std::_Deque_iterator") align 8 %10, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11) #20
          to label %27 unwind label %100

27:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10), !noalias !46
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11), !noalias !46
  %28 = load ptr, ptr %20, align 8, !tbaa !58, !noalias !60
  %29 = load ptr, ptr %21, align 8, !tbaa !61, !noalias !60
  %30 = load ptr, ptr %22, align 8, !tbaa !62, !noalias !60
  %31 = load ptr, ptr %23, align 8, !tbaa !63, !noalias !60
  %32 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %12, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !58, !noalias !60
  %34 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %12, i64 0, i32 3, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !61, !noalias !60
  %36 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %12, i64 0, i32 3, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !62, !noalias !60
  %38 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %12, i64 0, i32 3, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !63, !noalias !60
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9)
  %40 = icmp eq ptr %28, %33
  %41 = insertelement <2 x ptr> poison, ptr %28, i64 0
  %42 = insertelement <2 x ptr> %41, ptr %35, i64 1
  br i1 %40, label %86, label %43

43:                                               ; preds = %27
  store ptr %28, ptr %6, align 8, !tbaa !58
  %44 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 1
  store ptr %29, ptr %44, align 8, !tbaa !61
  %45 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 2
  store ptr %30, ptr %45, align 8, !tbaa !62
  %46 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 3
  store ptr %31, ptr %46, align 8, !tbaa !63
  store ptr %33, ptr %7, align 8, !tbaa !58
  %47 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %7, i64 0, i32 1
  store ptr %35, ptr %47, align 8, !tbaa !61
  %48 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %7, i64 0, i32 2
  store ptr %37, ptr %48, align 8, !tbaa !62
  %49 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %7, i64 0, i32 3
  store ptr %39, ptr %49, align 8, !tbaa !63
  %50 = ptrtoint ptr %39 to i64
  %51 = ptrtoint ptr %31 to i64
  %52 = sub i64 %50, %51
  %53 = ashr exact i64 %52, 3
  %54 = icmp ne ptr %39, null
  %55 = sext i1 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = shl nsw i64 %56, 6
  %58 = ptrtoint ptr %33 to i64
  %59 = ptrtoint ptr %35 to i64
  %60 = sub i64 %58, %59
  %61 = ashr exact i64 %60, 3
  %62 = ptrtoint ptr %30 to i64
  %63 = ptrtoint ptr %28 to i64
  %64 = sub i64 %62, %63
  %65 = ashr exact i64 %64, 3
  %66 = add nsw i64 %61, %65
  %67 = add i64 %66, %57
  %68 = call i64 @llvm.ctlz.i64(i64 %67, i1 true), !range !12
  %69 = shl nuw nsw i64 %68, 1
  %70 = xor i64 %69, 126
  invoke void @_ZSt16__introsort_loopISt15_Deque_iteratorIdRdPdElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_(ptr noundef nonnull %6, ptr noundef nonnull %7, i64 noundef %70) #20
          to label %71 unwind label %102

71:                                               ; preds = %43
  store ptr %28, ptr %8, align 8, !tbaa !58
  %72 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %8, i64 0, i32 1
  store ptr %29, ptr %72, align 8, !tbaa !61
  %73 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %8, i64 0, i32 2
  store ptr %30, ptr %73, align 8, !tbaa !62
  %74 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %8, i64 0, i32 3
  store ptr %31, ptr %74, align 8, !tbaa !63
  store ptr %33, ptr %9, align 8, !tbaa !58
  %75 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %9, i64 0, i32 1
  store ptr %35, ptr %75, align 8, !tbaa !61
  %76 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %9, i64 0, i32 2
  store ptr %37, ptr %76, align 8, !tbaa !62
  %77 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %9, i64 0, i32 3
  store ptr %39, ptr %77, align 8, !tbaa !63
  invoke void @_ZSt22__final_insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(ptr noundef nonnull %8, ptr noundef nonnull %9) #20
          to label %78 unwind label %102

78:                                               ; preds = %71
  %79 = load ptr, ptr %20, align 8, !tbaa !58, !noalias !64
  %80 = load ptr, ptr %21, align 8, !tbaa !61, !noalias !64
  %81 = load ptr, ptr %22, align 8, !tbaa !62, !noalias !64
  %82 = load ptr, ptr %23, align 8, !tbaa !63, !noalias !64
  %83 = load <2 x ptr>, ptr %32, align 8, !tbaa !29, !noalias !67
  %84 = load ptr, ptr %36, align 8, !tbaa !62, !noalias !67
  %85 = load ptr, ptr %38, align 8, !tbaa !63, !noalias !67
  br label %86

86:                                               ; preds = %78, %27
  %87 = phi ptr [ %85, %78 ], [ %39, %27 ]
  %88 = phi ptr [ %84, %78 ], [ %37, %27 ]
  %89 = phi ptr [ %82, %78 ], [ %31, %27 ]
  %90 = phi ptr [ %81, %78 ], [ %30, %27 ]
  %91 = phi ptr [ %80, %78 ], [ %29, %27 ]
  %92 = phi ptr [ %79, %78 ], [ %28, %27 ]
  %93 = phi <2 x ptr> [ %83, %78 ], [ %42, %27 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5)
  store ptr %92, ptr %4, align 8, !tbaa !58, !noalias !70
  %94 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 1
  store ptr %91, ptr %94, align 8, !tbaa !61, !noalias !70
  %95 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 2
  store ptr %90, ptr %95, align 8, !tbaa !62, !noalias !70
  %96 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 3
  store ptr %89, ptr %96, align 8, !tbaa !63, !noalias !70
  store <2 x ptr> %93, ptr %5, align 16, !tbaa !29, !noalias !70
  %97 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i64 0, i32 2
  store ptr %88, ptr %97, align 16, !tbaa !62, !noalias !70
  %98 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i64 0, i32 3
  store ptr %87, ptr %98, align 8, !tbaa !63, !noalias !70
  invoke void @_ZSt8__uniqueISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S7_S7_T0_(ptr nonnull sret(%"struct.std::_Deque_iterator") align 8 %15, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
          to label %99 unwind label %104

99:                                               ; preds = %86
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #21
  call void @_ZNSt11_Deque_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %12) #25
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %12) #21
  ret void

100:                                              ; preds = %3
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %106

102:                                              ; preds = %71, %43
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %106

104:                                              ; preds = %86
  %105 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #21
  br label %106

106:                                              ; preds = %104, %102, %100
  %107 = phi { ptr, i32 } [ %105, %104 ], [ %103, %102 ], [ %101, %100 ]
  call void @_ZNSt11_Deque_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %12) #25
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %12) #21
  resume { ptr, i32 } %107
}

; Function Attrs: optsize uwtable
define internal void @_ZNSt5dequeIdSaIdEEC2EmRKdRKS0_(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = icmp ugt i64 %1, 1152921504606846975
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #24
  unreachable

7:                                                ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  tail call void @_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) #20
  invoke void @_ZNSt5dequeIdSaIdEE18_M_fill_initializeERKd(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #20
          to label %8 unwind label %9

8:                                                ; preds = %7
  ret void

9:                                                ; preds = %7
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt11_Deque_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #25
  resume { ptr, i32 } %10
}

; Function Attrs: optsize uwtable
define internal void @_ZSt14__copy_move_a1ILb0EPddEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_(ptr noalias sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %4
  %10 = lshr exact i64 %7, 3
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 2
  br label %12

12:                                               ; preds = %26, %9
  %13 = phi ptr [ %1, %9 ], [ %22, %26 ]
  %14 = phi i64 [ %10, %9 ], [ %28, %26 ]
  %15 = load ptr, ptr %11, align 8, !tbaa !62
  %16 = load ptr, ptr %3, align 8, !tbaa !58
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = ashr exact i64 %19, 3
  %21 = tail call i64 @llvm.smin.i64(i64 %20, i64 %14)
  %22 = getelementptr inbounds double, ptr %13, i64 %21
  %23 = icmp eq i64 %21, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %12
  %25 = shl nsw i64 %21, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %16, ptr align 8 %13, i64 %25, i1 false)
  br label %26

26:                                               ; preds = %24, %12
  %27 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt15_Deque_iteratorIdRdPdEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %21) #25
  %28 = sub nsw i64 %14, %21
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %12, label %30, !llvm.loop !73

30:                                               ; preds = %26, %4
  %31 = load <2 x ptr>, ptr %3, align 8, !tbaa !29
  store <2 x ptr> %31, ptr %0, align 8, !tbaa !29
  %32 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  %33 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 2
  %34 = load <2 x ptr>, ptr %33, align 8, !tbaa !29
  store <2 x ptr> %34, ptr %32, align 8, !tbaa !29
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZSt16__introsort_loopISt15_Deque_iteratorIdRdPdElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
  %4 = alloca %"class.std::ios_base::Init", align 1
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = alloca %"struct.std::_Deque_iterator", align 8
  %7 = alloca %"struct.std::_Deque_iterator", align 8
  %8 = alloca %"struct.std::_Deque_iterator", align 8
  %9 = alloca %"struct.std::_Deque_iterator", align 8
  %10 = alloca %"struct.std::_Deque_iterator", align 16
  %11 = alloca %"struct.std::_Deque_iterator", align 8
  %12 = alloca %"struct.std::_Deque_iterator", align 8
  %13 = alloca %"struct.std::_Deque_iterator", align 16
  %14 = alloca %"struct.std::_Deque_iterator", align 16
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 3
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 1
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %11, i64 0, i32 1
  %20 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  %21 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %11, i64 0, i32 2
  %22 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %11, i64 0, i32 3
  %23 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %12, i64 0, i32 1
  %24 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %12, i64 0, i32 2
  %25 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %26 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %12, i64 0, i32 3
  %27 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %13, i64 0, i32 2
  %28 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %10, i64 0, i32 2
  %29 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %14, i64 0, i32 2
  br label %30

30:                                               ; preds = %77, %3
  %31 = phi i64 [ %2, %3 ], [ %78, %77 ]
  %32 = load ptr, ptr %15, align 8, !tbaa !63
  %33 = load ptr, ptr %16, align 8, !tbaa !63
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = ashr exact i64 %36, 3
  %38 = icmp ne ptr %32, null
  %39 = sext i1 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = shl nsw i64 %40, 6
  %42 = load ptr, ptr %1, align 8, !tbaa !58
  %43 = load ptr, ptr %17, align 8, !tbaa !61
  %44 = ptrtoint ptr %42 to i64
  %45 = ptrtoint ptr %43 to i64
  %46 = sub i64 %44, %45
  %47 = ashr exact i64 %46, 3
  %48 = add nsw i64 %41, %47
  %49 = load ptr, ptr %18, align 8, !tbaa !62
  %50 = load ptr, ptr %0, align 8, !tbaa !58
  %51 = ptrtoint ptr %49 to i64
  %52 = ptrtoint ptr %50 to i64
  %53 = sub i64 %51, %52
  %54 = ashr exact i64 %53, 3
  %55 = add nsw i64 %48, %54
  %56 = icmp sgt i64 %55, 16
  br i1 %56, label %57, label %85

57:                                               ; preds = %30
  %58 = icmp eq i64 %31, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %57
  %.lcssa11 = phi ptr [ %32, %57 ]
  %.lcssa9 = phi ptr [ %33, %57 ]
  %.lcssa7 = phi ptr [ %42, %57 ]
  %.lcssa5 = phi ptr [ %43, %57 ]
  %.lcssa3 = phi ptr [ %49, %57 ]
  %.lcssa1 = phi ptr [ %50, %57 ]
  %60 = load ptr, ptr %20, align 8, !tbaa !61
  %61 = load ptr, ptr %25, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9)
  store ptr %.lcssa1, ptr %5, align 8, !tbaa !58
  %62 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i64 0, i32 1
  store ptr %60, ptr %62, align 8, !tbaa !61
  %63 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i64 0, i32 2
  store ptr %.lcssa3, ptr %63, align 8, !tbaa !62
  %64 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i64 0, i32 3
  store ptr %.lcssa9, ptr %64, align 8, !tbaa !63
  store ptr %.lcssa7, ptr %6, align 8, !tbaa !58
  %65 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 1
  store ptr %.lcssa5, ptr %65, align 8, !tbaa !61
  %66 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 2
  store ptr %61, ptr %66, align 8, !tbaa !62
  %67 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 3
  store ptr %.lcssa11, ptr %67, align 8, !tbaa !63
  store ptr %.lcssa7, ptr %7, align 8, !tbaa !58
  %68 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %7, i64 0, i32 1
  store ptr %.lcssa5, ptr %68, align 8, !tbaa !61
  %69 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %7, i64 0, i32 2
  store ptr %61, ptr %69, align 8, !tbaa !62
  %70 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %7, i64 0, i32 3
  store ptr %.lcssa11, ptr %70, align 8, !tbaa !63
  call void @_ZSt13__heap_selectISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  store ptr %.lcssa1, ptr %8, align 8, !tbaa !58
  %71 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %8, i64 0, i32 1
  store ptr %60, ptr %71, align 8, !tbaa !61
  %72 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %8, i64 0, i32 2
  store ptr %.lcssa3, ptr %72, align 8, !tbaa !62
  %73 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %8, i64 0, i32 3
  store ptr %.lcssa9, ptr %73, align 8, !tbaa !63
  store ptr %.lcssa7, ptr %9, align 8, !tbaa !58
  %74 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %9, i64 0, i32 1
  store ptr %.lcssa5, ptr %74, align 8, !tbaa !61
  %75 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %9, i64 0, i32 2
  store ptr %61, ptr %75, align 8, !tbaa !62
  %76 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %9, i64 0, i32 3
  store ptr %.lcssa11, ptr %76, align 8, !tbaa !63
  call void @_ZSt11__sort_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9)
  br label %85

77:                                               ; preds = %57
  %78 = add nsw i64 %31, -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #21
  store ptr %50, ptr %11, align 8, !tbaa !58
  %79 = load ptr, ptr %20, align 8, !tbaa !61
  store ptr %79, ptr %19, align 8, !tbaa !61
  store ptr %49, ptr %21, align 8, !tbaa !62
  store ptr %33, ptr %22, align 8, !tbaa !63
  store ptr %42, ptr %12, align 8, !tbaa !58
  store ptr %43, ptr %23, align 8, !tbaa !61
  %80 = load ptr, ptr %25, align 8, !tbaa !62
  store ptr %80, ptr %24, align 8, !tbaa !62
  store ptr %32, ptr %26, align 8, !tbaa !63
  call void @_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_T0_(ptr nonnull sret(%"struct.std::_Deque_iterator") align 8 %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #20
  %81 = load <2 x ptr>, ptr %10, align 16, !tbaa !29
  store <2 x ptr> %81, ptr %13, align 16, !tbaa !29
  %82 = load <2 x ptr>, ptr %28, align 16, !tbaa !29
  store <2 x ptr> %82, ptr %27, align 16, !tbaa !29
  %83 = load <2 x ptr>, ptr %1, align 8, !tbaa !29
  store <2 x ptr> %83, ptr %14, align 16, !tbaa !29
  %84 = load <2 x ptr>, ptr %25, align 8, !tbaa !29
  store <2 x ptr> %84, ptr %29, align 16, !tbaa !29
  call void @_ZSt16__introsort_loopISt15_Deque_iteratorIdRdPdElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef %78) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %10, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #21
  br label %30, !llvm.loop !75

85:                                               ; preds = %59, %30
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZSt22__final_insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  %4 = alloca %"struct.std::_Deque_iterator", align 8
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = alloca %"struct.std::_Deque_iterator", align 8
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = ptrtoint ptr %8 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 3
  %15 = icmp ne ptr %8, null
  %16 = sext i1 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = shl nsw i64 %17, 6
  %19 = load ptr, ptr %1, align 8, !tbaa !58
  %20 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !61
  %22 = ptrtoint ptr %19 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = ashr exact i64 %24, 3
  %26 = add nsw i64 %18, %25
  %27 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !62
  %29 = load ptr, ptr %0, align 8, !tbaa !58
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = ashr exact i64 %32, 3
  %34 = add nsw i64 %26, %33
  %35 = icmp sgt i64 %34, 16
  %36 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  br i1 %35, label %37, label %153

37:                                               ; preds = %2
  store ptr %29, ptr %3, align 8, !tbaa !58
  %38 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 1
  %39 = load ptr, ptr %36, align 8, !tbaa !61
  store ptr %39, ptr %38, align 8, !tbaa !61
  %40 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 2
  store ptr %28, ptr %40, align 8, !tbaa !62
  %41 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 3
  store ptr %10, ptr %41, align 8, !tbaa !63
  %42 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 1
  store ptr %39, ptr %42, align 8, !tbaa !61, !alias.scope !76
  %43 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 2
  store ptr %28, ptr %43, align 8, !tbaa !62, !alias.scope !76
  %44 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 3
  store ptr %10, ptr %44, align 8, !tbaa !63, !alias.scope !76
  %45 = ptrtoint ptr %39 to i64
  %46 = sub i64 %31, %45
  %47 = ashr exact i64 %46, 3
  %48 = add nsw i64 %47, 16
  %49 = icmp sgt i64 %46, -136
  br i1 %49, label %50, label %56

50:                                               ; preds = %37
  %51 = icmp ult i64 %48, 64
  br i1 %51, label %52, label %54

52:                                               ; preds = %50
  %53 = getelementptr inbounds double, ptr %29, i64 16
  br label %67

54:                                               ; preds = %50
  %55 = lshr i64 %48, 6
  br label %59

56:                                               ; preds = %37
  %57 = lshr i64 %48, 6
  %58 = or i64 %57, -288230376151711744
  br label %59

59:                                               ; preds = %56, %54
  %60 = phi i64 [ %55, %54 ], [ %58, %56 ]
  %61 = getelementptr inbounds ptr, ptr %10, i64 %60
  store ptr %61, ptr %44, align 8, !tbaa !63
  %62 = load ptr, ptr %61, align 8, !tbaa !29
  store ptr %62, ptr %42, align 8, !tbaa !61
  %63 = getelementptr inbounds double, ptr %62, i64 64
  store ptr %63, ptr %43, align 8, !tbaa !62
  %64 = shl nsw i64 %60, 6
  %65 = sub nsw i64 %48, %64
  %66 = getelementptr inbounds double, ptr %62, i64 %65
  br label %67

67:                                               ; preds = %59, %52
  %68 = phi ptr [ %66, %59 ], [ %53, %52 ]
  store ptr %68, ptr %4, align 8, !tbaa !58
  call void @_ZSt16__insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %69 = load ptr, ptr %0, align 8, !tbaa !58, !noalias !79
  %70 = load ptr, ptr %36, align 8, !tbaa !61, !noalias !79
  %71 = load ptr, ptr %27, align 8, !tbaa !62, !noalias !79
  %72 = load ptr, ptr %9, align 8, !tbaa !63, !noalias !79
  %73 = ptrtoint ptr %69 to i64
  %74 = ptrtoint ptr %70 to i64
  %75 = sub i64 %73, %74
  %76 = ashr exact i64 %75, 3
  %77 = add nsw i64 %76, 16
  %78 = icmp sgt i64 %75, -136
  br i1 %78, label %79, label %85

79:                                               ; preds = %67
  %80 = icmp ult i64 %77, 64
  br i1 %80, label %81, label %83

81:                                               ; preds = %79
  %82 = getelementptr inbounds double, ptr %69, i64 16
  br label %96

83:                                               ; preds = %79
  %84 = lshr i64 %77, 6
  br label %88

85:                                               ; preds = %67
  %86 = lshr i64 %77, 6
  %87 = or i64 %86, -288230376151711744
  br label %88

88:                                               ; preds = %85, %83
  %89 = phi i64 [ %84, %83 ], [ %87, %85 ]
  %90 = getelementptr inbounds ptr, ptr %72, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !29
  %92 = getelementptr inbounds double, ptr %91, i64 64
  %93 = shl nsw i64 %89, 6
  %94 = sub nsw i64 %77, %93
  %95 = getelementptr inbounds double, ptr %91, i64 %94
  br label %96

96:                                               ; preds = %88, %81
  %97 = phi ptr [ %70, %81 ], [ %91, %88 ]
  %98 = phi ptr [ %71, %81 ], [ %92, %88 ]
  %99 = phi ptr [ %72, %81 ], [ %90, %88 ]
  %100 = phi ptr [ %82, %81 ], [ %95, %88 ]
  %101 = load ptr, ptr %1, align 8, !tbaa !58
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %163, label %103

103:                                              ; preds = %147, %96
  %104 = phi ptr [ %151, %147 ], [ %100, %96 ]
  %105 = phi ptr [ %150, %147 ], [ %97, %96 ]
  %106 = phi ptr [ %149, %147 ], [ %98, %96 ]
  %107 = phi ptr [ %148, %147 ], [ %99, %96 ]
  %108 = load double, ptr %104, align 8, !tbaa !13
  %109 = icmp eq ptr %104, %105
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = getelementptr inbounds ptr, ptr %107, i64 -1
  %112 = load ptr, ptr %111, align 8, !tbaa !29
  %113 = getelementptr inbounds double, ptr %112, i64 64
  br label %114

114:                                              ; preds = %110, %103
  %115 = phi ptr [ %112, %110 ], [ %105, %103 ]
  %116 = phi ptr [ %111, %110 ], [ %107, %103 ]
  %117 = phi ptr [ %113, %110 ], [ %104, %103 ]
  %118 = getelementptr inbounds double, ptr %117, i64 -1
  %119 = load double, ptr %118, align 8, !tbaa !13
  %120 = fcmp olt double %108, %119
  br i1 %120, label %121, label %139

121:                                              ; preds = %132, %114
  %122 = phi ptr [ %124, %132 ], [ %104, %114 ]
  %123 = phi double [ %137, %132 ], [ %119, %114 ]
  %124 = phi ptr [ %136, %132 ], [ %118, %114 ]
  %125 = phi ptr [ %134, %132 ], [ %116, %114 ]
  %126 = phi ptr [ %133, %132 ], [ %115, %114 ]
  store double %123, ptr %122, align 8, !tbaa !13
  %127 = icmp eq ptr %124, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = getelementptr inbounds ptr, ptr %125, i64 -1
  %130 = load ptr, ptr %129, align 8, !tbaa !29
  %131 = getelementptr inbounds double, ptr %130, i64 64
  br label %132

132:                                              ; preds = %128, %121
  %133 = phi ptr [ %130, %128 ], [ %126, %121 ]
  %134 = phi ptr [ %129, %128 ], [ %125, %121 ]
  %135 = phi ptr [ %131, %128 ], [ %124, %121 ]
  %136 = getelementptr inbounds double, ptr %135, i64 -1
  %137 = load double, ptr %136, align 8, !tbaa !13
  %138 = fcmp olt double %108, %137
  br i1 %138, label %121, label %139, !llvm.loop !82

139:                                              ; preds = %132, %114
  %140 = phi ptr [ %104, %114 ], [ %124, %132 ]
  store double %108, ptr %140, align 8, !tbaa !13
  %141 = getelementptr inbounds double, ptr %104, i64 1
  %142 = icmp eq ptr %141, %106
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = getelementptr inbounds ptr, ptr %107, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !29
  %146 = getelementptr inbounds double, ptr %145, i64 64
  br label %147

147:                                              ; preds = %143, %139
  %148 = phi ptr [ %144, %143 ], [ %107, %139 ]
  %149 = phi ptr [ %146, %143 ], [ %106, %139 ]
  %150 = phi ptr [ %145, %143 ], [ %105, %139 ]
  %151 = phi ptr [ %145, %143 ], [ %141, %139 ]
  %152 = icmp eq ptr %151, %101
  br i1 %152, label %163, label %103, !llvm.loop !83

153:                                              ; preds = %2
  store ptr %29, ptr %5, align 8, !tbaa !58
  %154 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i64 0, i32 1
  %155 = load ptr, ptr %36, align 8, !tbaa !61
  store ptr %155, ptr %154, align 8, !tbaa !61
  %156 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i64 0, i32 2
  store ptr %28, ptr %156, align 8, !tbaa !62
  %157 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i64 0, i32 3
  store ptr %10, ptr %157, align 8, !tbaa !63
  store ptr %19, ptr %6, align 8, !tbaa !58
  %158 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 1
  store ptr %21, ptr %158, align 8, !tbaa !61
  %159 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 2
  %160 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !62
  store ptr %161, ptr %159, align 8, !tbaa !62
  %162 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 3
  store ptr %8, ptr %162, align 8, !tbaa !63
  call void @_ZSt16__insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  br label %163

163:                                              ; preds = %153, %147, %96
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZSt8__uniqueISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S7_S7_T0_(ptr noalias sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = load ptr, ptr %1, align 8, !tbaa !58
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %2, align 8, !tbaa !58
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !63
  %15 = icmp eq ptr %4, %8
  br i1 %15, label %41, label %16

16:                                               ; preds = %3
  %17 = load ptr, ptr %7, align 8, !tbaa !63
  %18 = load ptr, ptr %6, align 8, !tbaa !62
  %19 = load ptr, ptr %5, align 8, !tbaa !61
  br label %20

20:                                               ; preds = %37, %16
  %21 = phi ptr [ %32, %37 ], [ %4, %16 ]
  %22 = phi ptr [ %33, %37 ], [ %19, %16 ]
  %23 = phi ptr [ %34, %37 ], [ %18, %16 ]
  %24 = phi ptr [ %35, %37 ], [ %17, %16 ]
  %25 = getelementptr inbounds double, ptr %21, i64 1
  %26 = icmp eq ptr %25, %23
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = getelementptr inbounds ptr, ptr %24, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !29, !noalias !84
  %30 = getelementptr inbounds double, ptr %29, i64 64
  br label %31

31:                                               ; preds = %27, %20
  %32 = phi ptr [ %29, %27 ], [ %25, %20 ]
  %33 = phi ptr [ %29, %27 ], [ %22, %20 ]
  %34 = phi ptr [ %30, %27 ], [ %23, %20 ]
  %35 = phi ptr [ %28, %27 ], [ %24, %20 ]
  %36 = icmp eq ptr %32, %8
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load double, ptr %21, align 8, !tbaa !13, !noalias !84
  %39 = load double, ptr %32, align 8, !tbaa !13, !noalias !84
  %40 = fcmp oeq double %38, %39
  br i1 %40, label %41, label %20, !llvm.loop !87

41:                                               ; preds = %37, %31, %3
  %42 = phi ptr [ %4, %3 ], [ %8, %31 ], [ %21, %37 ]
  %43 = phi ptr [ %10, %3 ], [ %10, %31 ], [ %22, %37 ]
  %44 = phi ptr [ %12, %3 ], [ %12, %31 ], [ %23, %37 ]
  %45 = phi ptr [ %14, %3 ], [ %14, %31 ], [ %24, %37 ]
  store ptr %42, ptr %1, align 8, !tbaa.struct !74
  store ptr %43, ptr %5, align 8, !tbaa.struct !88
  store ptr %44, ptr %6, align 8, !tbaa.struct !89
  store ptr %45, ptr %7, align 8, !tbaa.struct !90
  %46 = load ptr, ptr %2, align 8, !tbaa !58
  %47 = icmp eq ptr %42, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  store ptr %42, ptr %0, align 8, !tbaa !58
  %49 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  %50 = load <2 x ptr>, ptr %9, align 8, !tbaa !29
  store <2 x ptr> %50, ptr %49, align 8, !tbaa !29
  %51 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  %52 = load ptr, ptr %13, align 8, !tbaa !63
  store ptr %52, ptr %51, align 8, !tbaa !63
  br label %119

53:                                               ; preds = %41
  %54 = getelementptr inbounds double, ptr %42, i64 1
  store ptr %54, ptr %1, align 8, !tbaa !58
  %55 = icmp eq ptr %54, %44
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = getelementptr inbounds ptr, ptr %45, i64 1
  store ptr %57, ptr %7, align 8, !tbaa !63
  %58 = load ptr, ptr %57, align 8, !tbaa !29
  store ptr %58, ptr %5, align 8, !tbaa !61
  %59 = getelementptr inbounds double, ptr %58, i64 64
  store ptr %59, ptr %6, align 8, !tbaa !62
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi ptr [ %57, %56 ], [ %45, %53 ]
  %62 = phi ptr [ %58, %56 ], [ %54, %53 ]
  %63 = phi ptr [ %59, %56 ], [ %44, %53 ]
  br label %64

64:                                               ; preds = %99, %60
  %65 = phi ptr [ %61, %60 ], [ %.lcssa3, %99 ]
  %66 = phi ptr [ %62, %60 ], [ %.lcssa5, %99 ]
  %67 = phi ptr [ %63, %60 ], [ %.lcssa1, %99 ]
  %68 = phi ptr [ %45, %60 ], [ %100, %99 ]
  %69 = phi ptr [ %44, %60 ], [ %101, %99 ]
  %70 = phi ptr [ %43, %60 ], [ %102, %99 ]
  %71 = phi ptr [ %42, %60 ], [ %103, %99 ]
  br label %72

72:                                               ; preds = %88, %64
  %73 = phi ptr [ %84, %88 ], [ %65, %64 ]
  %74 = phi ptr [ %83, %88 ], [ %66, %64 ]
  %75 = phi ptr [ %85, %88 ], [ %67, %64 ]
  %76 = getelementptr inbounds double, ptr %74, i64 1
  store ptr %76, ptr %1, align 8, !tbaa !58
  %77 = icmp eq ptr %76, %75
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = getelementptr inbounds ptr, ptr %73, i64 1
  store ptr %79, ptr %7, align 8, !tbaa !63
  %80 = load ptr, ptr %79, align 8, !tbaa !29
  store ptr %80, ptr %5, align 8, !tbaa !61
  %81 = getelementptr inbounds double, ptr %80, i64 64
  store ptr %81, ptr %6, align 8, !tbaa !62
  store ptr %80, ptr %1, align 8, !tbaa !58
  br label %82

82:                                               ; preds = %78, %72
  %83 = phi ptr [ %76, %72 ], [ %80, %78 ]
  %84 = phi ptr [ %73, %72 ], [ %79, %78 ]
  %85 = phi ptr [ %75, %72 ], [ %81, %78 ]
  %86 = load ptr, ptr %2, align 8, !tbaa !58
  %87 = icmp eq ptr %83, %86
  br i1 %87, label %104, label %88

88:                                               ; preds = %82
  %89 = load double, ptr %71, align 8, !tbaa !13
  %90 = load double, ptr %83, align 8, !tbaa !13
  %91 = fcmp oeq double %89, %90
  br i1 %91, label %72, label %92, !llvm.loop !91

92:                                               ; preds = %88
  %.lcssa6 = phi double [ %90, %88 ]
  %.lcssa5 = phi ptr [ %83, %88 ]
  %.lcssa3 = phi ptr [ %84, %88 ]
  %.lcssa1 = phi ptr [ %85, %88 ]
  %93 = getelementptr inbounds double, ptr %71, i64 1
  %94 = icmp eq ptr %93, %69
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = getelementptr inbounds ptr, ptr %68, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !29
  %98 = getelementptr inbounds double, ptr %97, i64 64
  br label %99

99:                                               ; preds = %95, %92
  %100 = phi ptr [ %96, %95 ], [ %68, %92 ]
  %101 = phi ptr [ %98, %95 ], [ %69, %92 ]
  %102 = phi ptr [ %97, %95 ], [ %70, %92 ]
  %103 = phi ptr [ %97, %95 ], [ %93, %92 ]
  store double %.lcssa6, ptr %103, align 8, !tbaa !13
  br label %64, !llvm.loop !91

104:                                              ; preds = %82
  %.lcssa9 = phi ptr [ %68, %82 ]
  %.lcssa8 = phi ptr [ %69, %82 ]
  %.lcssa7 = phi ptr [ %70, %82 ]
  %.lcssa = phi ptr [ %71, %82 ]
  %105 = getelementptr inbounds double, ptr %.lcssa, i64 1
  %106 = icmp eq ptr %105, %.lcssa8
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = getelementptr inbounds ptr, ptr %.lcssa9, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !29
  %110 = getelementptr inbounds double, ptr %109, i64 64
  br label %111

111:                                              ; preds = %107, %104
  %112 = phi ptr [ %108, %107 ], [ %.lcssa9, %104 ]
  %113 = phi ptr [ %110, %107 ], [ %.lcssa8, %104 ]
  %114 = phi ptr [ %109, %107 ], [ %.lcssa7, %104 ]
  %115 = phi ptr [ %109, %107 ], [ %105, %104 ]
  store ptr %115, ptr %0, align 8, !tbaa !58
  %116 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  store ptr %114, ptr %116, align 8, !tbaa !61
  %117 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  store ptr %113, ptr %117, align 8, !tbaa !62
  %118 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  store ptr %112, ptr %118, align 8, !tbaa !63
  br label %119

119:                                              ; preds = %111, %48
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZNSt11_Deque_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !92
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  %9 = getelementptr inbounds ptr, ptr %8, i64 1
  %10 = icmp ult ptr %6, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %11, %4
  %12 = phi ptr [ %14, %11 ], [ %6, %4 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !29
  tail call void @_ZdlPv(ptr noundef %13) #22
  %14 = getelementptr inbounds ptr, ptr %12, i64 1
  %15 = icmp ult ptr %12, %8
  br i1 %15, label %11, label %16, !llvm.loop !97

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 8, !tbaa !92
  br label %18

18:                                               ; preds = %16, %4
  %19 = phi ptr [ %17, %16 ], [ %2, %4 ]
  tail call void @_ZdlPv(ptr noundef %19) #22
  br label %20

20:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZSt16__insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(ptr noundef %0, ptr noundef %1) #0 comdat {
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  %4 = alloca %"struct.std::_Deque_iterator", align 8
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = alloca %"struct.std::_Deque_iterator", align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !58
  %8 = load ptr, ptr %1, align 8, !tbaa !58
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %143, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !61, !noalias !98
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !62, !noalias !98
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !63, !noalias !98
  %17 = ptrtoint ptr %7 to i64
  %18 = ptrtoint ptr %12 to i64
  %19 = sub i64 %17, %18
  %20 = ashr exact i64 %19, 3
  %21 = add nsw i64 %20, 1
  %22 = icmp sgt i64 %19, -16
  br i1 %22, label %23, label %29

23:                                               ; preds = %10
  %24 = icmp ult i64 %21, 64
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds double, ptr %7, i64 1
  br label %40

27:                                               ; preds = %23
  %28 = lshr i64 %21, 6
  br label %32

29:                                               ; preds = %10
  %30 = lshr i64 %21, 6
  %31 = or i64 %30, -288230376151711744
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi i64 [ %28, %27 ], [ %31, %29 ]
  %34 = getelementptr inbounds ptr, ptr %16, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !29
  %36 = getelementptr inbounds double, ptr %35, i64 64
  %37 = shl nsw i64 %33, 6
  %38 = sub nsw i64 %21, %37
  %39 = getelementptr inbounds double, ptr %35, i64 %38
  br label %40

40:                                               ; preds = %32, %25
  %41 = phi ptr [ %12, %25 ], [ %35, %32 ]
  %42 = phi ptr [ %14, %25 ], [ %36, %32 ]
  %43 = phi ptr [ %16, %25 ], [ %34, %32 ]
  %44 = phi ptr [ %26, %25 ], [ %39, %32 ]
  %45 = icmp eq ptr %44, %8
  br i1 %45, label %143, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 1
  %48 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 3
  %49 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i64 0, i32 1
  %50 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i64 0, i32 2
  %51 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i64 0, i32 3
  %52 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 1
  %53 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 2
  %54 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 3
  br label %55

55:                                               ; preds = %136, %46
  %56 = phi ptr [ %7, %46 ], [ %129, %136 ]
  %57 = phi ptr [ %43, %46 ], [ %140, %136 ]
  %58 = phi ptr [ %42, %46 ], [ %139, %136 ]
  %59 = phi ptr [ %41, %46 ], [ %138, %136 ]
  %60 = phi ptr [ %44, %46 ], [ %137, %136 ]
  %61 = load double, ptr %60, align 8, !tbaa !13
  %62 = load double, ptr %56, align 8, !tbaa !13
  %63 = fcmp olt double %61, %62
  br i1 %63, label %64, label %96

64:                                               ; preds = %55
  %65 = load <2 x ptr>, ptr %11, align 8, !tbaa !29
  %66 = load ptr, ptr %15, align 8, !tbaa !63
  %67 = ptrtoint ptr %60 to i64
  %68 = ptrtoint ptr %59 to i64
  %69 = sub i64 %67, %68
  %70 = ashr exact i64 %69, 3
  %71 = add nsw i64 %70, 1
  %72 = icmp sgt i64 %69, -16
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = icmp ult i64 %71, 64
  br i1 %74, label %75, label %77

75:                                               ; preds = %73
  %76 = getelementptr inbounds double, ptr %60, i64 1
  br label %90

77:                                               ; preds = %73
  %78 = lshr i64 %71, 6
  br label %82

79:                                               ; preds = %64
  %80 = lshr i64 %71, 6
  %81 = or i64 %80, -288230376151711744
  br label %82

82:                                               ; preds = %79, %77
  %83 = phi i64 [ %78, %77 ], [ %81, %79 ]
  %84 = getelementptr inbounds ptr, ptr %57, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !29
  %86 = getelementptr inbounds double, ptr %85, i64 64
  %87 = shl nsw i64 %83, 6
  %88 = sub nsw i64 %71, %87
  %89 = getelementptr inbounds double, ptr %85, i64 %88
  br label %90

90:                                               ; preds = %82, %75
  %91 = phi ptr [ %57, %75 ], [ %84, %82 ]
  %92 = phi ptr [ %58, %75 ], [ %86, %82 ]
  %93 = phi ptr [ %59, %75 ], [ %85, %82 ]
  %94 = phi ptr [ %76, %75 ], [ %89, %82 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3), !noalias !101
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4), !noalias !101
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5), !noalias !101
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6), !noalias !101
  store ptr %56, ptr %4, align 8, !tbaa !58, !alias.scope !104, !noalias !107
  store <2 x ptr> %65, ptr %47, align 8, !tbaa !29, !alias.scope !104, !noalias !107
  store ptr %66, ptr %48, align 8, !tbaa !63, !alias.scope !104, !noalias !107
  store ptr %60, ptr %5, align 8, !tbaa !58, !alias.scope !110, !noalias !107
  store ptr %59, ptr %49, align 8, !tbaa !61, !alias.scope !110, !noalias !107
  store ptr %58, ptr %50, align 8, !tbaa !62, !alias.scope !110, !noalias !107
  store ptr %57, ptr %51, align 8, !tbaa !63, !alias.scope !110, !noalias !107
  store ptr %94, ptr %6, align 8, !tbaa !58, !alias.scope !113, !noalias !107
  store ptr %93, ptr %52, align 8, !tbaa !61, !alias.scope !113, !noalias !107
  store ptr %92, ptr %53, align 8, !tbaa !62, !alias.scope !113, !noalias !107
  store ptr %91, ptr %54, align 8, !tbaa !63, !alias.scope !113, !noalias !107
  call void @_ZSt23__copy_move_backward_a1ILb1EdRdPddESt15_Deque_iteratorIT3_RS3_PS3_ES2_IT0_T1_T2_ESA_S6_(ptr nonnull sret(%"struct.std::_Deque_iterator") align 8 %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #20, !noalias !107
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3), !noalias !101
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4), !noalias !101
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5), !noalias !101
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6), !noalias !101
  %95 = load ptr, ptr %0, align 8, !tbaa !58
  br label %127

96:                                               ; preds = %55
  %97 = icmp eq ptr %60, %59
  br i1 %97, label %98, label %102

98:                                               ; preds = %96
  %99 = getelementptr inbounds ptr, ptr %57, i64 -1
  %100 = load ptr, ptr %99, align 8, !tbaa !29
  %101 = getelementptr inbounds double, ptr %100, i64 64
  br label %102

102:                                              ; preds = %98, %96
  %103 = phi ptr [ %100, %98 ], [ %59, %96 ]
  %104 = phi ptr [ %99, %98 ], [ %57, %96 ]
  %105 = phi ptr [ %101, %98 ], [ %60, %96 ]
  %106 = getelementptr inbounds double, ptr %105, i64 -1
  %107 = load double, ptr %106, align 8, !tbaa !13
  %108 = fcmp olt double %61, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %120, %102
  %110 = phi ptr [ %112, %120 ], [ %60, %102 ]
  %111 = phi double [ %125, %120 ], [ %107, %102 ]
  %112 = phi ptr [ %124, %120 ], [ %106, %102 ]
  %113 = phi ptr [ %122, %120 ], [ %104, %102 ]
  %114 = phi ptr [ %121, %120 ], [ %103, %102 ]
  store double %111, ptr %110, align 8, !tbaa !13
  %115 = icmp eq ptr %112, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = getelementptr inbounds ptr, ptr %113, i64 -1
  %118 = load ptr, ptr %117, align 8, !tbaa !29
  %119 = getelementptr inbounds double, ptr %118, i64 64
  br label %120

120:                                              ; preds = %116, %109
  %121 = phi ptr [ %118, %116 ], [ %114, %109 ]
  %122 = phi ptr [ %117, %116 ], [ %113, %109 ]
  %123 = phi ptr [ %119, %116 ], [ %112, %109 ]
  %124 = getelementptr inbounds double, ptr %123, i64 -1
  %125 = load double, ptr %124, align 8, !tbaa !13
  %126 = fcmp olt double %61, %125
  br i1 %126, label %109, label %127, !llvm.loop !82

127:                                              ; preds = %120, %102, %90
  %128 = phi ptr [ %95, %90 ], [ %60, %102 ], [ %112, %120 ]
  %129 = phi ptr [ %95, %90 ], [ %56, %102 ], [ %56, %120 ]
  store double %61, ptr %128, align 8, !tbaa !13
  %130 = getelementptr inbounds double, ptr %60, i64 1
  %131 = icmp eq ptr %130, %58
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = getelementptr inbounds ptr, ptr %57, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !29
  %135 = getelementptr inbounds double, ptr %134, i64 64
  br label %136

136:                                              ; preds = %132, %127
  %137 = phi ptr [ %134, %132 ], [ %130, %127 ]
  %138 = phi ptr [ %134, %132 ], [ %59, %127 ]
  %139 = phi ptr [ %135, %132 ], [ %58, %127 ]
  %140 = phi ptr [ %133, %132 ], [ %57, %127 ]
  %141 = load ptr, ptr %1, align 8, !tbaa !58
  %142 = icmp eq ptr %137, %141
  br i1 %142, label %143, label %55, !llvm.loop !116

143:                                              ; preds = %136, %40, %2
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZSt23__copy_move_backward_a1ILb1EdRdPddESt15_Deque_iteratorIT3_RS3_PS3_ES2_IT0_T1_T2_ESA_S6_(ptr noalias sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca %"struct.std::_Deque_iterator", align 16
  %6 = alloca %"struct.std::_Deque_iterator", align 16
  %7 = alloca %"struct.std::_Deque_iterator", align 16
  %8 = load <2 x ptr>, ptr %1, align 8, !tbaa !29
  store <2 x ptr> %8, ptr %5, align 16, !tbaa !29
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i64 0, i32 2
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %11 = load <2 x ptr>, ptr %10, align 8, !tbaa !29
  store <2 x ptr> %11, ptr %9, align 16, !tbaa !29
  %12 = load <2 x ptr>, ptr %2, align 8, !tbaa !29
  store <2 x ptr> %12, ptr %6, align 16, !tbaa !29
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 2
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 2
  %15 = load <2 x ptr>, ptr %14, align 8, !tbaa !29
  store <2 x ptr> %15, ptr %13, align 16, !tbaa !29
  %16 = load <2 x ptr>, ptr %3, align 8, !tbaa !29
  store <2 x ptr> %16, ptr %7, align 16, !tbaa !29
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %7, i64 0, i32 2
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 2
  %19 = load <2 x ptr>, ptr %18, align 8, !tbaa !29
  store <2 x ptr> %19, ptr %17, align 16, !tbaa !29
  call void @_ZSt24__copy_move_backward_ditILb1EdRdPdSt15_Deque_iteratorIdS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_(ptr sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZSt24__copy_move_backward_ditILb1EdRdPdSt15_Deque_iteratorIdS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_(ptr noalias sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = alloca %"struct.std::_Deque_iterator", align 16
  %7 = alloca %"struct.std::_Deque_iterator", align 8
  %8 = alloca %"struct.std::_Deque_iterator", align 16
  %9 = alloca %"struct.std::_Deque_iterator", align 16
  %10 = alloca %"struct.std::_Deque_iterator", align 16
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !63
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %46, label %16

16:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  %19 = load ptr, ptr %2, align 8, !tbaa !58
  %20 = load <2 x ptr>, ptr %3, align 8, !tbaa !29
  store <2 x ptr> %20, ptr %6, align 16, !tbaa !29
  %21 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 2
  %22 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 2
  %23 = load <2 x ptr>, ptr %22, align 8, !tbaa !29
  store <2 x ptr> %23, ptr %21, align 16, !tbaa !29
  call void @_ZSt23__copy_move_backward_a1ILb1EPddEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_(ptr nonnull sret(%"struct.std::_Deque_iterator") align 8 %5, ptr noundef %18, ptr noundef %19, ptr noundef nonnull %6) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  %24 = load ptr, ptr %13, align 8, !tbaa !63
  %25 = getelementptr inbounds ptr, ptr %24, i64 -1
  %26 = load ptr, ptr %11, align 8, !tbaa !63
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %30, label %28

28:                                               ; preds = %16
  %29 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %8, i64 0, i32 2
  br label %37

30:                                               ; preds = %37, %16
  %31 = load ptr, ptr %1, align 8, !tbaa !58
  %32 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !62
  %34 = load <2 x ptr>, ptr %3, align 8, !tbaa !29
  store <2 x ptr> %34, ptr %9, align 16, !tbaa !29
  %35 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %9, i64 0, i32 2
  %36 = load <2 x ptr>, ptr %22, align 8, !tbaa !29
  store <2 x ptr> %36, ptr %35, align 16, !tbaa !29
  call void @_ZSt23__copy_move_backward_a1ILb1EPddEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_(ptr sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %31, ptr noundef %33, ptr noundef nonnull %9) #20
  br label %53

37:                                               ; preds = %37, %28
  %38 = phi ptr [ %25, %28 ], [ %43, %37 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  %39 = load ptr, ptr %38, align 8, !tbaa !29
  %40 = getelementptr inbounds double, ptr %39, i64 64
  %41 = load <2 x ptr>, ptr %3, align 8, !tbaa !29
  store <2 x ptr> %41, ptr %8, align 16, !tbaa !29
  %42 = load <2 x ptr>, ptr %22, align 8, !tbaa !29
  store <2 x ptr> %42, ptr %29, align 16, !tbaa !29
  call void @_ZSt23__copy_move_backward_a1ILb1EPddEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_(ptr nonnull sret(%"struct.std::_Deque_iterator") align 8 %7, ptr noundef %39, ptr noundef nonnull %40, ptr noundef nonnull %8) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  %43 = getelementptr inbounds ptr, ptr %38, i64 -1
  %44 = load ptr, ptr %11, align 8, !tbaa !63
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %30, label %37, !llvm.loop !117

46:                                               ; preds = %4
  %47 = load ptr, ptr %1, align 8, !tbaa !58
  %48 = load ptr, ptr %2, align 8, !tbaa !58
  %49 = load <2 x ptr>, ptr %3, align 8, !tbaa !29
  store <2 x ptr> %49, ptr %10, align 16, !tbaa !29
  %50 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %10, i64 0, i32 2
  %51 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 2
  %52 = load <2 x ptr>, ptr %51, align 8, !tbaa !29
  store <2 x ptr> %52, ptr %50, align 16, !tbaa !29
  call void @_ZSt23__copy_move_backward_a1ILb1EPddEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_(ptr sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %47, ptr noundef %48, ptr noundef nonnull %10) #20
  br label %53

53:                                               ; preds = %46, %30
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZSt23__copy_move_backward_a1ILb1EPddEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_(ptr noalias sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %4
  %10 = lshr exact i64 %7, 3
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 1
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 3
  br label %13

13:                                               ; preds = %40, %9
  %14 = phi ptr [ %2, %9 ], [ %33, %40 ]
  %15 = phi i64 [ %10, %9 ], [ %42, %40 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !58
  %17 = load ptr, ptr %11, align 8, !tbaa !61
  %18 = ptrtoint ptr %16 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = ashr exact i64 %20, 3
  %22 = icmp eq ptr %16, %17
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load ptr, ptr %12, align 8, !tbaa !63
  %25 = getelementptr inbounds ptr, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8, !tbaa !29
  %27 = getelementptr inbounds double, ptr %26, i64 64
  br label %28

28:                                               ; preds = %23, %13
  %29 = phi i64 [ 64, %23 ], [ %21, %13 ]
  %30 = phi ptr [ %27, %23 ], [ %16, %13 ]
  %31 = tail call i64 @llvm.smin.i64(i64 %29, i64 %15)
  %32 = sub nsw i64 0, %31
  %33 = getelementptr inbounds double, ptr %14, i64 %32
  %34 = icmp eq i64 %31, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = shl i64 %31, 3
  %37 = ashr exact i64 %36, 3
  %38 = sub nsw i64 0, %37
  %39 = getelementptr inbounds double, ptr %30, i64 %38
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %39, ptr nonnull align 8 %33, i64 %36, i1 false)
  br label %40

40:                                               ; preds = %35, %28
  %41 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt15_Deque_iteratorIdRdPdEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %32) #25
  %42 = sub nsw i64 %15, %31
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %13, label %44, !llvm.loop !118

44:                                               ; preds = %40, %4
  %45 = load <2 x ptr>, ptr %3, align 8, !tbaa !29
  store <2 x ptr> %45, ptr %0, align 8, !tbaa !29
  %46 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  %47 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 2
  %48 = load <2 x ptr>, ptr %47, align 8, !tbaa !29
  store <2 x ptr> %48, ptr %46, align 8, !tbaa !29
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt15_Deque_iteratorIdRdPdEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = add nsw i64 %9, %1
  %11 = icmp sgt i64 %10, -1
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = icmp ult i64 %10, 64
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = getelementptr inbounds double, ptr %3, i64 %1
  br label %32

16:                                               ; preds = %12
  %17 = lshr i64 %10, 6
  br label %21

18:                                               ; preds = %2
  %19 = lshr i64 %10, 6
  %20 = or i64 %19, -288230376151711744
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi i64 [ %17, %16 ], [ %20, %18 ]
  %23 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = getelementptr inbounds ptr, ptr %24, i64 %22
  store ptr %25, ptr %23, align 8, !tbaa !63
  %26 = load ptr, ptr %25, align 8, !tbaa !29
  store ptr %26, ptr %4, align 8, !tbaa !61
  %27 = getelementptr inbounds double, ptr %26, i64 64
  %28 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !62
  %29 = shl nsw i64 %22, 6
  %30 = sub nsw i64 %10, %29
  %31 = getelementptr inbounds double, ptr %26, i64 %30
  br label %32

32:                                               ; preds = %21, %14
  %33 = phi ptr [ %31, %21 ], [ %15, %14 ]
  store ptr %33, ptr %0, align 8, !tbaa !58
  ret ptr %0
}

; Function Attrs: optsize uwtable
define internal void @_ZSt13__heap_selectISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca %"struct.std::_Deque_iterator", align 8
  %5 = alloca %"class.std::ios_base::Init", align 1
  %6 = alloca %"struct.std::_Deque_iterator", align 16
  %7 = alloca %"struct.std::_Deque_iterator", align 16
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  %9 = load <2 x ptr>, ptr %0, align 8, !tbaa !29
  store <2 x ptr> %9, ptr %6, align 16, !tbaa !29
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 2
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  %13 = load <2 x ptr>, ptr %11, align 8, !tbaa !29
  store <2 x ptr> %13, ptr %10, align 16, !tbaa !29
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 1
  %15 = load <2 x ptr>, ptr %1, align 8, !tbaa !29
  store <2 x ptr> %15, ptr %7, align 16, !tbaa !29
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %7, i64 0, i32 2
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 3
  %19 = load <2 x ptr>, ptr %17, align 8, !tbaa !29
  store <2 x ptr> %19, ptr %16, align 16, !tbaa !29
  call void @_ZSt11__make_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  %20 = load ptr, ptr %1, align 8, !tbaa !58
  %21 = load ptr, ptr %18, align 8, !tbaa !63
  %22 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !63
  %24 = icmp eq ptr %21, %23
  %25 = load ptr, ptr %2, align 8
  %26 = icmp ult ptr %20, %25
  %27 = icmp ult ptr %21, %23
  %28 = select i1 %24, i1 %26, i1 %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load ptr, ptr %17, align 8, !tbaa !62
  %31 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 2
  %33 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 3
  br label %35

34:                                               ; preds = %75, %3
  ret void

35:                                               ; preds = %75, %29
  %36 = phi ptr [ %21, %29 ], [ %78, %75 ]
  %37 = phi ptr [ %30, %29 ], [ %77, %75 ]
  %38 = phi ptr [ %20, %29 ], [ %76, %75 ]
  %39 = load ptr, ptr %0, align 8, !tbaa !58
  %40 = load double, ptr %38, align 8, !tbaa !13
  %41 = load double, ptr %39, align 8, !tbaa !13
  %42 = fcmp olt double %40, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %35
  %44 = load ptr, ptr %8, align 8, !tbaa !61
  %45 = load ptr, ptr %11, align 8, !tbaa !62
  %46 = load ptr, ptr %12, align 8, !tbaa !63
  %47 = load ptr, ptr %1, align 8, !tbaa !58
  %48 = load ptr, ptr %14, align 8, !tbaa !61
  %49 = load ptr, ptr %18, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4)
  store double %41, ptr %38, align 8, !tbaa !13
  store ptr %39, ptr %4, align 8, !tbaa !58
  store ptr %44, ptr %31, align 8, !tbaa !61
  store ptr %45, ptr %32, align 8, !tbaa !62
  store ptr %46, ptr %33, align 8, !tbaa !63
  %50 = ptrtoint ptr %49 to i64
  %51 = ptrtoint ptr %46 to i64
  %52 = sub i64 %50, %51
  %53 = ashr exact i64 %52, 3
  %54 = icmp ne ptr %49, null
  %55 = sext i1 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = shl nsw i64 %56, 6
  %58 = ptrtoint ptr %47 to i64
  %59 = ptrtoint ptr %48 to i64
  %60 = sub i64 %58, %59
  %61 = ashr exact i64 %60, 3
  %62 = ptrtoint ptr %45 to i64
  %63 = ptrtoint ptr %39 to i64
  %64 = sub i64 %62, %63
  %65 = ashr exact i64 %64, 3
  %66 = add nsw i64 %61, %65
  %67 = add i64 %66, %57
  call void @_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_(ptr noundef nonnull %4, i64 noundef 0, i64 noundef %67, double noundef %40) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4)
  br label %68

68:                                               ; preds = %43, %35
  %69 = getelementptr inbounds double, ptr %38, i64 1
  %70 = icmp eq ptr %69, %37
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = getelementptr inbounds ptr, ptr %36, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !29
  %74 = getelementptr inbounds double, ptr %73, i64 64
  br label %75

75:                                               ; preds = %71, %68
  %76 = phi ptr [ %73, %71 ], [ %69, %68 ]
  %77 = phi ptr [ %74, %71 ], [ %37, %68 ]
  %78 = phi ptr [ %72, %71 ], [ %36, %68 ]
  %79 = load ptr, ptr %22, align 8, !tbaa !63
  %80 = icmp eq ptr %78, %79
  %81 = load ptr, ptr %2, align 8
  %82 = icmp ult ptr %76, %81
  %83 = icmp ult ptr %78, %79
  %84 = select i1 %80, i1 %82, i1 %83
  br i1 %84, label %35, label %34, !llvm.loop !119
}

; Function Attrs: optsize uwtable
define internal void @_ZSt11__sort_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca %"struct.std::_Deque_iterator", align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 3
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 1
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 2
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 3
  br label %14

14:                                               ; preds = %54, %3
  %15 = load ptr, ptr %5, align 8, !tbaa !63
  %16 = load ptr, ptr %6, align 8, !tbaa !63
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = ashr exact i64 %19, 3
  %21 = icmp ne ptr %15, null
  %22 = sext i1 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = shl nsw i64 %23, 6
  %25 = load ptr, ptr %1, align 8, !tbaa !58
  %26 = load ptr, ptr %7, align 8, !tbaa !61
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = ashr exact i64 %29, 3
  %31 = add nsw i64 %24, %30
  %32 = load ptr, ptr %8, align 8, !tbaa !62
  %33 = load ptr, ptr %0, align 8, !tbaa !58
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = ashr exact i64 %36, 3
  %38 = add nsw i64 %31, %37
  %39 = icmp sgt i64 %38, 1
  br i1 %39, label %40, label %79

40:                                               ; preds = %14
  %41 = icmp eq ptr %25, %26
  br i1 %41, label %42, label %54

42:                                               ; preds = %40
  %43 = getelementptr inbounds ptr, ptr %15, i64 -1
  store ptr %43, ptr %5, align 8, !tbaa !63
  %44 = load ptr, ptr %43, align 8, !tbaa !29
  store ptr %44, ptr %7, align 8, !tbaa !61
  %45 = getelementptr inbounds double, ptr %44, i64 64
  store ptr %45, ptr %9, align 8, !tbaa !62
  %46 = load ptr, ptr %8, align 8, !tbaa !62
  %47 = load ptr, ptr %6, align 8, !tbaa !63
  %48 = ptrtoint ptr %43 to i64
  %49 = ptrtoint ptr %47 to i64
  %50 = sub i64 %48, %49
  %51 = ashr exact i64 %50, 3
  %52 = ptrtoint ptr %44 to i64
  %53 = ptrtoint ptr %46 to i64
  br label %54

54:                                               ; preds = %42, %40
  %55 = phi i64 [ %34, %40 ], [ %53, %42 ]
  %56 = phi i64 [ %28, %40 ], [ %52, %42 ]
  %57 = phi i64 [ %20, %40 ], [ %51, %42 ]
  %58 = phi ptr [ %15, %40 ], [ %43, %42 ]
  %59 = phi ptr [ %16, %40 ], [ %47, %42 ]
  %60 = phi ptr [ %32, %40 ], [ %46, %42 ]
  %61 = phi ptr [ %25, %40 ], [ %45, %42 ]
  %62 = getelementptr inbounds double, ptr %61, i64 -1
  store ptr %62, ptr %1, align 8, !tbaa !58
  %63 = load ptr, ptr %0, align 8, !tbaa !58
  %64 = load ptr, ptr %10, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4)
  %65 = load double, ptr %62, align 8, !tbaa !13
  %66 = load double, ptr %63, align 8, !tbaa !13
  store double %66, ptr %62, align 8, !tbaa !13
  store ptr %63, ptr %4, align 8, !tbaa !58
  store ptr %64, ptr %11, align 8, !tbaa !61
  store ptr %60, ptr %12, align 8, !tbaa !62
  store ptr %59, ptr %13, align 8, !tbaa !63
  %67 = icmp ne ptr %58, null
  %68 = sext i1 %67 to i64
  %69 = add nsw i64 %57, %68
  %70 = shl nsw i64 %69, 6
  %71 = ptrtoint ptr %62 to i64
  %72 = sub i64 %71, %56
  %73 = ashr exact i64 %72, 3
  %74 = ptrtoint ptr %63 to i64
  %75 = sub i64 %55, %74
  %76 = ashr exact i64 %75, 3
  %77 = add nsw i64 %73, %76
  %78 = add i64 %77, %70
  call void @_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_(ptr noundef nonnull %4, i64 noundef 0, i64 noundef %78, double noundef %65) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4)
  br label %14, !llvm.loop !120

79:                                               ; preds = %14
  ret void
}

; Function Attrs: inlinehint optsize uwtable
define internal void @_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_T0_(ptr noalias sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1, ptr noundef %2) #14 comdat {
  %4 = alloca %"struct.std::_Deque_iterator", align 8
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = alloca %"struct.std::_Deque_iterator", align 8
  %7 = alloca %"struct.std::_Deque_iterator", align 8
  %8 = alloca %"struct.std::_Deque_iterator", align 8
  %9 = alloca %"struct.std::_Deque_iterator", align 16
  %10 = alloca %"struct.std::_Deque_iterator", align 8
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !63
  %15 = ptrtoint ptr %12 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = ashr exact i64 %17, 3
  %19 = icmp ne ptr %12, null
  %20 = sext i1 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = shl nsw i64 %21, 6
  %23 = load ptr, ptr %2, align 8, !tbaa !58
  %24 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !61
  %26 = ptrtoint ptr %23 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = ashr exact i64 %28, 3
  %30 = add nsw i64 %22, %29
  %31 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !62
  %33 = load ptr, ptr %1, align 8, !tbaa !58
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = ashr exact i64 %36, 3
  %38 = add nsw i64 %30, %37
  %39 = sdiv i64 %38, 2
  %40 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !61
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %35, %42
  %44 = ashr exact i64 %43, 3
  %45 = add nsw i64 %39, %44
  %46 = icmp sgt i64 %45, -1
  br i1 %46, label %47, label %53

47:                                               ; preds = %3
  %48 = icmp ult i64 %45, 64
  br i1 %48, label %49, label %51

49:                                               ; preds = %47
  %50 = getelementptr inbounds double, ptr %33, i64 %39
  br label %64

51:                                               ; preds = %47
  %52 = lshr i64 %45, 6
  br label %56

53:                                               ; preds = %3
  %54 = lshr i64 %45, 6
  %55 = or i64 %54, -288230376151711744
  br label %56

56:                                               ; preds = %53, %51
  %57 = phi i64 [ %52, %51 ], [ %55, %53 ]
  %58 = getelementptr inbounds ptr, ptr %14, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !29
  %60 = getelementptr inbounds double, ptr %59, i64 64
  %61 = shl nsw i64 %57, 6
  %62 = sub nsw i64 %45, %61
  %63 = getelementptr inbounds double, ptr %59, i64 %62
  br label %64

64:                                               ; preds = %56, %49
  %65 = phi ptr [ %14, %49 ], [ %58, %56 ]
  %66 = phi ptr [ %32, %49 ], [ %60, %56 ]
  %67 = phi ptr [ %41, %49 ], [ %59, %56 ]
  %68 = phi ptr [ %50, %49 ], [ %63, %56 ]
  store ptr %33, ptr %4, align 8, !tbaa !58
  %69 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 1
  store ptr %41, ptr %69, align 8, !tbaa !61
  %70 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 2
  store ptr %32, ptr %70, align 8, !tbaa !62
  %71 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 3
  store ptr %14, ptr %71, align 8, !tbaa !63
  %72 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i64 0, i32 1
  store ptr %41, ptr %72, align 8, !tbaa !61, !alias.scope !121
  %73 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i64 0, i32 2
  store ptr %32, ptr %73, align 8, !tbaa !62, !alias.scope !121
  %74 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i64 0, i32 3
  store ptr %14, ptr %74, align 8, !tbaa !63, !alias.scope !121
  %75 = add nsw i64 %44, 1
  %76 = icmp sgt i64 %43, -16
  br i1 %76, label %77, label %83

77:                                               ; preds = %64
  %78 = icmp ult i64 %75, 64
  br i1 %78, label %79, label %81

79:                                               ; preds = %77
  %80 = getelementptr inbounds double, ptr %33, i64 1
  br label %94

81:                                               ; preds = %77
  %82 = lshr i64 %75, 6
  br label %86

83:                                               ; preds = %64
  %84 = lshr i64 %75, 6
  %85 = or i64 %84, -288230376151711744
  br label %86

86:                                               ; preds = %83, %81
  %87 = phi i64 [ %82, %81 ], [ %85, %83 ]
  %88 = getelementptr inbounds ptr, ptr %14, i64 %87
  store ptr %88, ptr %74, align 8, !tbaa !63
  %89 = load ptr, ptr %88, align 8, !tbaa !29
  store ptr %89, ptr %72, align 8, !tbaa !61
  %90 = getelementptr inbounds double, ptr %89, i64 64
  store ptr %90, ptr %73, align 8, !tbaa !62
  %91 = shl nsw i64 %87, 6
  %92 = sub nsw i64 %75, %91
  %93 = getelementptr inbounds double, ptr %89, i64 %92
  br label %94

94:                                               ; preds = %86, %79
  %95 = phi ptr [ %93, %86 ], [ %80, %79 ]
  store ptr %95, ptr %5, align 8, !tbaa !58
  store ptr %68, ptr %6, align 8, !tbaa !58
  %96 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 1
  store ptr %67, ptr %96, align 8, !tbaa !61
  %97 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 2
  store ptr %66, ptr %97, align 8, !tbaa !62
  %98 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 3
  store ptr %65, ptr %98, align 8, !tbaa !63
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %99 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %7, i64 0, i32 1
  store ptr %25, ptr %99, align 8, !tbaa !61, !alias.scope !124
  %100 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %7, i64 0, i32 2
  %101 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !62, !noalias !124
  store ptr %102, ptr %100, align 8, !tbaa !62, !alias.scope !124
  %103 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %7, i64 0, i32 3
  store ptr %12, ptr %103, align 8, !tbaa !63, !alias.scope !124
  %104 = add nsw i64 %29, -1
  %105 = icmp sgt i64 %28, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %94
  %107 = icmp ult i64 %28, 520
  br i1 %107, label %108, label %110

108:                                              ; preds = %106
  %109 = getelementptr inbounds double, ptr %23, i64 -1
  br label %123

110:                                              ; preds = %106
  %111 = lshr i64 %104, 6
  br label %115

112:                                              ; preds = %94
  %113 = lshr i64 %104, 6
  %114 = or i64 %113, -288230376151711744
  br label %115

115:                                              ; preds = %112, %110
  %116 = phi i64 [ %111, %110 ], [ %114, %112 ]
  %117 = getelementptr inbounds ptr, ptr %12, i64 %116
  store ptr %117, ptr %103, align 8, !tbaa !63
  %118 = load ptr, ptr %117, align 8, !tbaa !29
  store ptr %118, ptr %99, align 8, !tbaa !61
  %119 = getelementptr inbounds double, ptr %118, i64 64
  store ptr %119, ptr %100, align 8, !tbaa !62
  %120 = shl nsw i64 %116, 6
  %121 = sub nsw i64 %104, %120
  %122 = getelementptr inbounds double, ptr %118, i64 %121
  br label %123

123:                                              ; preds = %115, %108
  %124 = phi ptr [ %122, %115 ], [ %109, %108 ]
  store ptr %124, ptr %7, align 8, !tbaa !58
  call void @_ZSt22__move_median_to_firstISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_S7_T0_(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %125 = load ptr, ptr %1, align 8, !tbaa !58
  %126 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %8, i64 0, i32 1
  %127 = load ptr, ptr %40, align 8, !tbaa !61
  store ptr %127, ptr %126, align 8, !tbaa !61, !alias.scope !127
  %128 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %8, i64 0, i32 2
  %129 = load ptr, ptr %31, align 8, !tbaa !62
  store ptr %129, ptr %128, align 8, !tbaa !62, !alias.scope !127
  %130 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %8, i64 0, i32 3
  %131 = load ptr, ptr %13, align 8, !tbaa !63
  store ptr %131, ptr %130, align 8, !tbaa !63, !alias.scope !127
  %132 = ptrtoint ptr %125 to i64
  %133 = ptrtoint ptr %127 to i64
  %134 = sub i64 %132, %133
  %135 = ashr exact i64 %134, 3
  %136 = add nsw i64 %135, 1
  %137 = icmp sgt i64 %134, -16
  br i1 %137, label %138, label %144

138:                                              ; preds = %123
  %139 = icmp ult i64 %136, 64
  br i1 %139, label %140, label %142

140:                                              ; preds = %138
  %141 = getelementptr inbounds double, ptr %125, i64 1
  br label %155

142:                                              ; preds = %138
  %143 = lshr i64 %136, 6
  br label %147

144:                                              ; preds = %123
  %145 = lshr i64 %136, 6
  %146 = or i64 %145, -288230376151711744
  br label %147

147:                                              ; preds = %144, %142
  %148 = phi i64 [ %143, %142 ], [ %146, %144 ]
  %149 = getelementptr inbounds ptr, ptr %131, i64 %148
  store ptr %149, ptr %130, align 8, !tbaa !63
  %150 = load ptr, ptr %149, align 8, !tbaa !29
  store ptr %150, ptr %126, align 8, !tbaa !61
  %151 = getelementptr inbounds double, ptr %150, i64 64
  store ptr %151, ptr %128, align 8, !tbaa !62
  %152 = shl nsw i64 %148, 6
  %153 = sub nsw i64 %136, %152
  %154 = getelementptr inbounds double, ptr %150, i64 %153
  br label %155

155:                                              ; preds = %147, %140
  %156 = phi ptr [ %154, %147 ], [ %141, %140 ]
  store ptr %156, ptr %8, align 8, !tbaa !58
  %157 = load <2 x ptr>, ptr %2, align 8, !tbaa !29
  store <2 x ptr> %157, ptr %9, align 16, !tbaa !29
  %158 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %9, i64 0, i32 2
  %159 = load <2 x ptr>, ptr %101, align 8, !tbaa !29
  store <2 x ptr> %159, ptr %158, align 16, !tbaa !29
  store ptr %125, ptr %10, align 8, !tbaa !58
  %160 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %10, i64 0, i32 1
  store ptr %127, ptr %160, align 8, !tbaa !61
  %161 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %10, i64 0, i32 2
  store ptr %129, ptr %161, align 8, !tbaa !62
  %162 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %10, i64 0, i32 3
  store ptr %131, ptr %162, align 8, !tbaa !63
  call void @_ZSt21__unguarded_partitionISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_S7_T0_(ptr sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: optsize uwtable
define internal void @_ZSt22__move_median_to_firstISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = load ptr, ptr %1, align 8, !tbaa !58
  %6 = load ptr, ptr %2, align 8, !tbaa !58
  %7 = load double, ptr %5, align 8, !tbaa !13
  %8 = load double, ptr %6, align 8, !tbaa !13
  %9 = fcmp olt double %7, %8
  %10 = load ptr, ptr %3, align 8, !tbaa !58
  %11 = load double, ptr %10, align 8, !tbaa !13
  br i1 %9, label %12, label %23

12:                                               ; preds = %4
  %13 = fcmp olt double %8, %11
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8, !tbaa !58
  %16 = load double, ptr %15, align 8, !tbaa !13
  store double %8, ptr %15, align 8, !tbaa !13
  store double %16, ptr %6, align 8, !tbaa !13
  br label %34

17:                                               ; preds = %12
  %18 = fcmp olt double %7, %11
  %19 = load ptr, ptr %0, align 8, !tbaa !58
  %20 = load double, ptr %19, align 8, !tbaa !13
  br i1 %18, label %21, label %22

21:                                               ; preds = %17
  store double %11, ptr %19, align 8, !tbaa !13
  store double %20, ptr %10, align 8, !tbaa !13
  br label %34

22:                                               ; preds = %17
  store double %7, ptr %19, align 8, !tbaa !13
  store double %20, ptr %5, align 8, !tbaa !13
  br label %34

23:                                               ; preds = %4
  %24 = fcmp olt double %7, %11
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load ptr, ptr %0, align 8, !tbaa !58
  %27 = load double, ptr %26, align 8, !tbaa !13
  store double %7, ptr %26, align 8, !tbaa !13
  store double %27, ptr %5, align 8, !tbaa !13
  br label %34

28:                                               ; preds = %23
  %29 = fcmp olt double %8, %11
  %30 = load ptr, ptr %0, align 8, !tbaa !58
  %31 = load double, ptr %30, align 8, !tbaa !13
  br i1 %29, label %32, label %33

32:                                               ; preds = %28
  store double %11, ptr %30, align 8, !tbaa !13
  store double %31, ptr %10, align 8, !tbaa !13
  br label %34

33:                                               ; preds = %28
  store double %8, ptr %30, align 8, !tbaa !13
  store double %31, ptr %6, align 8, !tbaa !13
  br label %34

34:                                               ; preds = %33, %32, %25, %22, %21, %14
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZSt21__unguarded_partitionISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_S7_T0_(ptr noalias sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 comdat {
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 1
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 2
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %1, align 8, !tbaa !58
  br label %12

12:                                               ; preds = %90, %4
  %13 = phi ptr [ %11, %4 ], [ %91, %90 ]
  %14 = load ptr, ptr %3, align 8, !tbaa !58
  %15 = load double, ptr %13, align 8, !tbaa !13
  %16 = load double, ptr %14, align 8, !tbaa !13
  %17 = fcmp olt double %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load ptr, ptr %6, align 8, !tbaa !62
  br label %20

20:                                               ; preds = %30, %18
  %21 = phi ptr [ %19, %18 ], [ %32, %30 ]
  %22 = phi ptr [ %13, %18 ], [ %31, %30 ]
  %23 = getelementptr inbounds double, ptr %22, i64 1
  store ptr %23, ptr %1, align 8, !tbaa !58
  %24 = icmp eq ptr %23, %21
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load ptr, ptr %7, align 8, !tbaa !63
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  store ptr %27, ptr %7, align 8, !tbaa !63
  %28 = load ptr, ptr %27, align 8, !tbaa !29
  store ptr %28, ptr %5, align 8, !tbaa !61
  %29 = getelementptr inbounds double, ptr %28, i64 64
  store ptr %29, ptr %6, align 8, !tbaa !62
  store ptr %28, ptr %1, align 8, !tbaa !58
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi ptr [ %23, %20 ], [ %28, %25 ]
  %32 = phi ptr [ %21, %20 ], [ %29, %25 ]
  %33 = load ptr, ptr %3, align 8, !tbaa !58
  %34 = load double, ptr %31, align 8, !tbaa !13
  %35 = load double, ptr %33, align 8, !tbaa !13
  %36 = fcmp olt double %34, %35
  br i1 %36, label %20, label %37, !llvm.loop !130

37:                                               ; preds = %30, %12
  %38 = load ptr, ptr %2, align 8, !tbaa !58
  %39 = load ptr, ptr %8, align 8, !tbaa !61
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load ptr, ptr %10, align 8, !tbaa !63
  %43 = getelementptr inbounds ptr, ptr %42, i64 -1
  store ptr %43, ptr %10, align 8, !tbaa !63
  %44 = load ptr, ptr %43, align 8, !tbaa !29
  store ptr %44, ptr %8, align 8, !tbaa !61
  %45 = getelementptr inbounds double, ptr %44, i64 64
  store ptr %45, ptr %9, align 8, !tbaa !62
  br label %46

46:                                               ; preds = %41, %37
  %47 = phi ptr [ %44, %41 ], [ %39, %37 ]
  %48 = phi ptr [ %45, %41 ], [ %38, %37 ]
  %49 = getelementptr inbounds double, ptr %48, i64 -1
  store ptr %49, ptr %2, align 8, !tbaa !58
  %50 = load ptr, ptr %3, align 8, !tbaa !58
  %51 = load double, ptr %50, align 8, !tbaa !13
  %52 = load double, ptr %49, align 8, !tbaa !13
  %53 = fcmp olt double %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %63, %46
  %55 = phi ptr [ %64, %63 ], [ %47, %46 ]
  %56 = phi ptr [ %66, %63 ], [ %49, %46 ]
  %57 = icmp eq ptr %56, %55
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load ptr, ptr %10, align 8, !tbaa !63
  %60 = getelementptr inbounds ptr, ptr %59, i64 -1
  store ptr %60, ptr %10, align 8, !tbaa !63
  %61 = load ptr, ptr %60, align 8, !tbaa !29
  store ptr %61, ptr %8, align 8, !tbaa !61
  %62 = getelementptr inbounds double, ptr %61, i64 64
  store ptr %62, ptr %9, align 8, !tbaa !62
  br label %63

63:                                               ; preds = %58, %54
  %64 = phi ptr [ %61, %58 ], [ %55, %54 ]
  %65 = phi ptr [ %62, %58 ], [ %56, %54 ]
  %66 = getelementptr inbounds double, ptr %65, i64 -1
  store ptr %66, ptr %2, align 8, !tbaa !58
  %67 = load ptr, ptr %3, align 8, !tbaa !58
  %68 = load double, ptr %67, align 8, !tbaa !13
  %69 = load double, ptr %66, align 8, !tbaa !13
  %70 = fcmp olt double %68, %69
  br i1 %70, label %54, label %71, !llvm.loop !131

71:                                               ; preds = %63, %46
  %72 = phi ptr [ %49, %46 ], [ %66, %63 ]
  %73 = phi double [ %52, %46 ], [ %69, %63 ]
  %74 = load ptr, ptr %7, align 8, !tbaa !63
  %75 = load ptr, ptr %10, align 8, !tbaa !63
  %76 = icmp eq ptr %74, %75
  %77 = load ptr, ptr %1, align 8
  %78 = icmp ult ptr %77, %72
  %79 = icmp ult ptr %74, %75
  %80 = select i1 %76, i1 %78, i1 %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %71
  %.lcssa1 = phi ptr [ %74, %71 ]
  %.lcssa = phi ptr [ %77, %71 ]
  store ptr %.lcssa, ptr %0, align 8, !tbaa !58
  %82 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  %83 = load <2 x ptr>, ptr %5, align 8, !tbaa !29
  store <2 x ptr> %83, ptr %82, align 8, !tbaa !29
  %84 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  store ptr %.lcssa1, ptr %84, align 8, !tbaa !63
  ret void

85:                                               ; preds = %71
  %86 = load double, ptr %77, align 8, !tbaa !13
  store double %73, ptr %77, align 8, !tbaa !13
  store double %86, ptr %72, align 8, !tbaa !13
  %87 = getelementptr inbounds double, ptr %77, i64 1
  store ptr %87, ptr %1, align 8, !tbaa !58
  %88 = load ptr, ptr %6, align 8, !tbaa !62
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %92, label %90

90:                                               ; preds = %92, %85
  %91 = phi ptr [ %87, %85 ], [ %94, %92 ]
  br label %12, !llvm.loop !132

92:                                               ; preds = %85
  %93 = getelementptr inbounds ptr, ptr %74, i64 1
  store ptr %93, ptr %7, align 8, !tbaa !63
  %94 = load ptr, ptr %93, align 8, !tbaa !29
  store ptr %94, ptr %5, align 8, !tbaa !61
  %95 = getelementptr inbounds double, ptr %94, i64 64
  store ptr %95, ptr %6, align 8, !tbaa !62
  store ptr %94, ptr %1, align 8, !tbaa !58
  br label %90
}

; Function Attrs: optsize uwtable
define internal void @_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3) #0 comdat {
  %5 = alloca %"class.std::ios_base::Init", align 1
  %6 = alloca %"struct.std::_Deque_iterator", align 16
  %7 = add nsw i64 %2, -1
  %8 = sdiv i64 %7, 2
  %9 = icmp sgt i64 %8, %1
  br i1 %9, label %10, label %111

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !58, !noalias !60
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !61, !noalias !60
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !63, !noalias !60
  %16 = ptrtoint ptr %11 to i64
  %17 = ptrtoint ptr %13 to i64
  %18 = sub i64 %16, %17
  %19 = ashr exact i64 %18, 3
  br label %20

20:                                               ; preds = %108, %10
  %21 = phi i64 [ %1, %10 ], [ %68, %108 ]
  %22 = shl i64 %21, 1
  %23 = add i64 %22, 2
  %24 = add nsw i64 %19, %23
  %25 = icmp sgt i64 %24, -1
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = icmp ult i64 %24, 64
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = getelementptr inbounds double, ptr %11, i64 %23
  br label %42

30:                                               ; preds = %26
  %31 = lshr i64 %24, 6
  br label %35

32:                                               ; preds = %20
  %33 = lshr i64 %24, 6
  %34 = or i64 %33, -288230376151711744
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi i64 [ %31, %30 ], [ %34, %32 ]
  %37 = getelementptr inbounds ptr, ptr %15, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !29
  %39 = shl nsw i64 %36, 6
  %40 = sub nsw i64 %24, %39
  %41 = getelementptr inbounds double, ptr %38, i64 %40
  br label %42

42:                                               ; preds = %35, %28
  %43 = phi ptr [ %41, %35 ], [ %29, %28 ]
  %44 = or i64 %22, 1
  %45 = add nsw i64 %19, %44
  %46 = icmp sgt i64 %45, -1
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = icmp ult i64 %45, 64
  br i1 %48, label %49, label %51

49:                                               ; preds = %47
  %50 = getelementptr inbounds double, ptr %11, i64 %44
  br label %63

51:                                               ; preds = %47
  %52 = lshr i64 %45, 6
  br label %56

53:                                               ; preds = %42
  %54 = lshr i64 %45, 6
  %55 = or i64 %54, -288230376151711744
  br label %56

56:                                               ; preds = %53, %51
  %57 = phi i64 [ %52, %51 ], [ %55, %53 ]
  %58 = getelementptr inbounds ptr, ptr %15, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !29
  %60 = shl nsw i64 %57, 6
  %61 = sub nsw i64 %45, %60
  %62 = getelementptr inbounds double, ptr %59, i64 %61
  br label %63

63:                                               ; preds = %56, %49
  %64 = phi ptr [ %62, %56 ], [ %50, %49 ]
  %65 = load double, ptr %43, align 8, !tbaa !13
  %66 = load double, ptr %64, align 8, !tbaa !13
  %67 = fcmp olt double %65, %66
  %68 = select i1 %67, i64 %44, i64 %23
  %69 = add nsw i64 %68, %19
  %70 = icmp sgt i64 %69, -1
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = icmp ult i64 %69, 64
  br i1 %72, label %73, label %75

73:                                               ; preds = %71
  %74 = getelementptr inbounds double, ptr %11, i64 %68
  br label %87

75:                                               ; preds = %71
  %76 = lshr i64 %69, 6
  br label %80

77:                                               ; preds = %63
  %78 = lshr i64 %69, 6
  %79 = or i64 %78, -288230376151711744
  br label %80

80:                                               ; preds = %77, %75
  %81 = phi i64 [ %76, %75 ], [ %79, %77 ]
  %82 = getelementptr inbounds ptr, ptr %15, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !29
  %84 = shl nsw i64 %81, 6
  %85 = sub nsw i64 %69, %84
  %86 = getelementptr inbounds double, ptr %83, i64 %85
  br label %87

87:                                               ; preds = %80, %73
  %88 = phi ptr [ %86, %80 ], [ %74, %73 ]
  %89 = load double, ptr %88, align 8, !tbaa !13
  %90 = add nsw i64 %19, %21
  %91 = icmp sgt i64 %90, -1
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = icmp ult i64 %90, 64
  br i1 %93, label %94, label %96

94:                                               ; preds = %92
  %95 = getelementptr inbounds double, ptr %11, i64 %21
  br label %108

96:                                               ; preds = %92
  %97 = lshr i64 %90, 6
  br label %101

98:                                               ; preds = %87
  %99 = lshr i64 %90, 6
  %100 = or i64 %99, -288230376151711744
  br label %101

101:                                              ; preds = %98, %96
  %102 = phi i64 [ %97, %96 ], [ %100, %98 ]
  %103 = getelementptr inbounds ptr, ptr %15, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !29
  %105 = shl nsw i64 %102, 6
  %106 = sub nsw i64 %90, %105
  %107 = getelementptr inbounds double, ptr %104, i64 %106
  br label %108

108:                                              ; preds = %101, %94
  %109 = phi ptr [ %107, %101 ], [ %95, %94 ]
  store double %89, ptr %109, align 8, !tbaa !13
  %110 = icmp slt i64 %68, %8
  br i1 %110, label %20, label %111, !llvm.loop !133

111:                                              ; preds = %108, %4
  %112 = phi i64 [ %1, %4 ], [ %68, %108 ]
  %113 = and i64 %2, 1
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %172

115:                                              ; preds = %111
  %116 = add nsw i64 %2, -2
  %117 = sdiv i64 %116, 2
  %118 = icmp eq i64 %112, %117
  br i1 %118, label %119, label %172

119:                                              ; preds = %115
  %120 = shl i64 %112, 1
  %121 = or i64 %120, 1
  %122 = load ptr, ptr %0, align 8, !tbaa !58, !noalias !60
  %123 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !61, !noalias !60
  %125 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !63, !noalias !60
  %127 = ptrtoint ptr %122 to i64
  %128 = ptrtoint ptr %124 to i64
  %129 = sub i64 %127, %128
  %130 = ashr exact i64 %129, 3
  %131 = add nsw i64 %130, %121
  %132 = icmp sgt i64 %131, -1
  br i1 %132, label %133, label %139

133:                                              ; preds = %119
  %134 = icmp ult i64 %131, 64
  br i1 %134, label %135, label %137

135:                                              ; preds = %133
  %136 = getelementptr inbounds double, ptr %122, i64 %121
  br label %149

137:                                              ; preds = %133
  %138 = lshr i64 %131, 6
  br label %142

139:                                              ; preds = %119
  %140 = lshr i64 %131, 6
  %141 = or i64 %140, -288230376151711744
  br label %142

142:                                              ; preds = %139, %137
  %143 = phi i64 [ %138, %137 ], [ %141, %139 ]
  %144 = getelementptr inbounds ptr, ptr %126, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !29
  %146 = shl nsw i64 %143, 6
  %147 = sub nsw i64 %131, %146
  %148 = getelementptr inbounds double, ptr %145, i64 %147
  br label %149

149:                                              ; preds = %142, %135
  %150 = phi ptr [ %148, %142 ], [ %136, %135 ]
  %151 = load double, ptr %150, align 8, !tbaa !13
  %152 = add nsw i64 %130, %112
  %153 = icmp sgt i64 %152, -1
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = icmp ult i64 %152, 64
  br i1 %155, label %156, label %158

156:                                              ; preds = %154
  %157 = getelementptr inbounds double, ptr %122, i64 %112
  br label %170

158:                                              ; preds = %154
  %159 = lshr i64 %152, 6
  br label %163

160:                                              ; preds = %149
  %161 = lshr i64 %152, 6
  %162 = or i64 %161, -288230376151711744
  br label %163

163:                                              ; preds = %160, %158
  %164 = phi i64 [ %159, %158 ], [ %162, %160 ]
  %165 = getelementptr inbounds ptr, ptr %126, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !29
  %167 = shl nsw i64 %164, 6
  %168 = sub nsw i64 %152, %167
  %169 = getelementptr inbounds double, ptr %166, i64 %168
  br label %170

170:                                              ; preds = %163, %156
  %171 = phi ptr [ %169, %163 ], [ %157, %156 ]
  store double %151, ptr %171, align 8, !tbaa !13
  br label %172

172:                                              ; preds = %170, %115, %111
  %173 = phi i64 [ %121, %170 ], [ %112, %115 ], [ %112, %111 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #21
  %174 = load <2 x ptr>, ptr %0, align 8, !tbaa !29
  store <2 x ptr> %174, ptr %6, align 16, !tbaa !29
  %175 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 2
  %176 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  %177 = load <2 x ptr>, ptr %176, align 8, !tbaa !29
  store <2 x ptr> %177, ptr %175, align 16, !tbaa !29
  call void @_ZSt11__push_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S8_T1_RT2_(ptr noundef nonnull %6, i64 noundef %173, i64 noundef %1, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #21
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZSt11__push_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S8_T1_RT2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #0 comdat {
  %6 = icmp sgt i64 %1, %2
  %7 = load ptr, ptr %0, align 8, !tbaa !58, !noalias !60
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !61, !noalias !60
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !63, !noalias !60
  %12 = ptrtoint ptr %7 to i64
  %13 = ptrtoint ptr %9 to i64
  %14 = sub i64 %12, %13
  %15 = ashr exact i64 %14, 3
  br i1 %6, label %16, label %76

16:                                               ; preds = %73, %5
  %17 = phi i64 [ %19, %73 ], [ %1, %5 ]
  %18 = add nsw i64 %17, -1
  %19 = sdiv i64 %18, 2
  %20 = add nsw i64 %15, %19
  %21 = icmp sgt i64 %20, -1
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = icmp ult i64 %20, 64
  br i1 %23, label %42, label %24

24:                                               ; preds = %22
  %25 = lshr i64 %20, 6
  %26 = getelementptr inbounds ptr, ptr %11, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !29
  %28 = and i64 %20, 63
  %29 = getelementptr inbounds double, ptr %27, i64 %28
  %30 = load double, ptr %29, align 8, !tbaa !13
  %31 = fcmp olt double %30, %3
  br i1 %31, label %46, label %76

32:                                               ; preds = %16
  %33 = lshr i64 %20, 6
  %34 = or i64 %33, -288230376151711744
  %35 = getelementptr inbounds ptr, ptr %11, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !29
  %37 = shl nsw i64 %34, 6
  %38 = sub nsw i64 %20, %37
  %39 = getelementptr inbounds double, ptr %36, i64 %38
  %40 = load double, ptr %39, align 8, !tbaa !13
  %41 = fcmp olt double %40, %3
  br i1 %41, label %48, label %76

42:                                               ; preds = %22
  %43 = getelementptr inbounds double, ptr %7, i64 %19
  %44 = load double, ptr %43, align 8, !tbaa !13
  %45 = fcmp olt double %44, %3
  br i1 %45, label %53, label %76

46:                                               ; preds = %24
  %47 = and i64 %20, 63
  br label %48

48:                                               ; preds = %46, %32
  %49 = phi i64 [ %47, %46 ], [ %38, %32 ]
  %50 = phi ptr [ %27, %46 ], [ %36, %32 ]
  %51 = getelementptr inbounds double, ptr %50, i64 %49
  %52 = load double, ptr %51, align 8, !tbaa !13
  br label %53

53:                                               ; preds = %48, %42
  %54 = phi double [ %52, %48 ], [ %44, %42 ]
  %55 = add nsw i64 %15, %17
  %56 = icmp sgt i64 %55, -1
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = icmp ult i64 %55, 64
  br i1 %58, label %59, label %61

59:                                               ; preds = %57
  %60 = getelementptr inbounds double, ptr %7, i64 %17
  br label %73

61:                                               ; preds = %57
  %62 = lshr i64 %55, 6
  br label %66

63:                                               ; preds = %53
  %64 = lshr i64 %55, 6
  %65 = or i64 %64, -288230376151711744
  br label %66

66:                                               ; preds = %63, %61
  %67 = phi i64 [ %62, %61 ], [ %65, %63 ]
  %68 = getelementptr inbounds ptr, ptr %11, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !29
  %70 = shl nsw i64 %67, 6
  %71 = sub nsw i64 %55, %70
  %72 = getelementptr inbounds double, ptr %69, i64 %71
  br label %73

73:                                               ; preds = %66, %59
  %74 = phi ptr [ %72, %66 ], [ %60, %59 ]
  store double %54, ptr %74, align 8, !tbaa !13
  %75 = icmp sgt i64 %19, %2
  br i1 %75, label %16, label %76, !llvm.loop !134

76:                                               ; preds = %73, %42, %32, %24, %5
  %77 = phi i64 [ %1, %5 ], [ %17, %32 ], [ %17, %42 ], [ %19, %73 ], [ %17, %24 ]
  %78 = add nsw i64 %15, %77
  %79 = icmp sgt i64 %78, -1
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = icmp ult i64 %78, 64
  br i1 %81, label %82, label %84

82:                                               ; preds = %80
  %83 = getelementptr inbounds double, ptr %7, i64 %77
  br label %96

84:                                               ; preds = %80
  %85 = lshr i64 %78, 6
  br label %89

86:                                               ; preds = %76
  %87 = lshr i64 %78, 6
  %88 = or i64 %87, -288230376151711744
  br label %89

89:                                               ; preds = %86, %84
  %90 = phi i64 [ %85, %84 ], [ %88, %86 ]
  %91 = getelementptr inbounds ptr, ptr %11, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !29
  %93 = shl nsw i64 %90, 6
  %94 = sub nsw i64 %78, %93
  %95 = getelementptr inbounds double, ptr %92, i64 %94
  br label %96

96:                                               ; preds = %89, %82
  %97 = phi ptr [ %95, %89 ], [ %83, %82 ]
  store double %3, ptr %97, align 8, !tbaa !13
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZSt11__make_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = alloca %"struct.std::_Deque_iterator", align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 6
  %17 = load ptr, ptr %1, align 8, !tbaa !58
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 3
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !62
  %27 = load ptr, ptr %0, align 8, !tbaa !58
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = ashr exact i64 %30, 3
  %32 = add nsw i64 %24, %31
  %33 = icmp slt i64 %32, 2
  br i1 %33, label %74, label %34

34:                                               ; preds = %3
  %35 = add nsw i64 %32, -2
  %36 = lshr i64 %35, 1
  %37 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  %38 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 1
  %39 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 2
  %40 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 3
  br label %41

41:                                               ; preds = %68, %34
  %42 = phi i64 [ %36, %34 ], [ %73, %68 ]
  %43 = load ptr, ptr %0, align 8, !tbaa !58
  %44 = load ptr, ptr %37, align 8, !tbaa !61
  %45 = load ptr, ptr %7, align 8, !tbaa !63
  %46 = ptrtoint ptr %43 to i64
  %47 = ptrtoint ptr %44 to i64
  %48 = sub i64 %46, %47
  %49 = ashr exact i64 %48, 3
  %50 = add nsw i64 %49, %42
  %51 = icmp sgt i64 %50, -1
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = icmp ult i64 %50, 64
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  %55 = getelementptr inbounds double, ptr %43, i64 %42
  br label %68

56:                                               ; preds = %52
  %57 = lshr i64 %50, 6
  br label %61

58:                                               ; preds = %41
  %59 = lshr i64 %50, 6
  %60 = or i64 %59, -288230376151711744
  br label %61

61:                                               ; preds = %58, %56
  %62 = phi i64 [ %57, %56 ], [ %60, %58 ]
  %63 = getelementptr inbounds ptr, ptr %45, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !29
  %65 = shl nsw i64 %62, 6
  %66 = sub nsw i64 %50, %65
  %67 = getelementptr inbounds double, ptr %64, i64 %66
  br label %68

68:                                               ; preds = %61, %54
  %69 = phi ptr [ %67, %61 ], [ %55, %54 ]
  %70 = load double, ptr %69, align 8, !tbaa !13
  store ptr %43, ptr %4, align 8, !tbaa !58
  store ptr %44, ptr %38, align 8, !tbaa !61
  %71 = load ptr, ptr %25, align 8, !tbaa !62
  store ptr %71, ptr %39, align 8, !tbaa !62
  store ptr %45, ptr %40, align 8, !tbaa !63
  call void @_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_(ptr noundef nonnull %4, i64 noundef %42, i64 noundef %32, double noundef %70) #20
  %72 = icmp eq i64 %42, 0
  %73 = add nsw i64 %42, -1
  br i1 %72, label %74, label %41, !llvm.loop !135

74:                                               ; preds = %68, %3
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::ios_base::Init", align 1
  %4 = lshr i64 %1, 6
  %5 = add nuw nsw i64 %4, 1
  %6 = tail call i64 @llvm.umax.i64(i64 %4, i64 5)
  %7 = add nuw nsw i64 %6, 3
  %8 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  store i64 %7, ptr %8, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #21
  %9 = call noundef ptr @_ZNSt15__new_allocatorIPdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %7, ptr noundef null) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #21
  store ptr %9, ptr %0, align 8, !tbaa !92
  %10 = load i64, ptr %8, align 8, !tbaa !136
  %11 = sub i64 %10, %5
  %12 = lshr i64 %11, 1
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = getelementptr inbounds ptr, ptr %13, i64 %5
  invoke void @_ZNSt11_Deque_baseIdSaIdEE15_M_create_nodesEPPdS3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %13, ptr noundef nonnull %14) #20
          to label %23 unwind label %15

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  %18 = call ptr @__cxa_begin_catch(ptr %17) #21
  %19 = load ptr, ptr %0, align 8, !tbaa !92
  call void @_ZdlPv(ptr noundef %19) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #26
          to label %42 unwind label %20

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %22 unwind label %39

22:                                               ; preds = %20
  resume { ptr, i32 } %21

23:                                               ; preds = %2
  %24 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %25 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  store ptr %13, ptr %25, align 8, !tbaa !63
  %26 = load ptr, ptr %13, align 8, !tbaa !29
  %27 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !61
  %28 = getelementptr inbounds double, ptr %26, i64 64
  %29 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !62
  %30 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %31 = getelementptr inbounds ptr, ptr %13, i64 %4
  %32 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !63
  %33 = load ptr, ptr %31, align 8, !tbaa !29
  %34 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  store ptr %33, ptr %34, align 8, !tbaa !61
  %35 = getelementptr inbounds double, ptr %33, i64 64
  %36 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 2
  store ptr %35, ptr %36, align 8, !tbaa !62
  store ptr %26, ptr %24, align 8, !tbaa !137
  %37 = and i64 %1, 63
  %38 = getelementptr inbounds double, ptr %33, i64 %37
  store ptr %38, ptr %30, align 8, !tbaa !138
  ret void

39:                                               ; preds = %20
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #27
  unreachable

42:                                               ; preds = %15
  unreachable
}

; Function Attrs: optsize uwtable
define internal void @_ZNSt5dequeIdSaIdEE18_M_fill_initializeERKd(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %19, %2
  %9 = phi ptr [ %20, %19 ], [ %4, %2 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !29
  %11 = load double, ptr %1, align 8, !tbaa !13
  %12 = insertelement <2 x double> poison, double %11, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  br label %14

14:                                               ; preds = %14, %8
  %15 = phi i64 [ 0, %8 ], [ %17, %14 ]
  %16 = getelementptr inbounds double, ptr %10, i64 %15
  store <2 x double> %13, ptr %16, align 8, !tbaa !13
  %17 = add nuw i64 %15, 2
  %18 = icmp eq i64 %17, 64
  br i1 %18, label %19, label %14, !llvm.loop !139

19:                                               ; preds = %14
  %20 = getelementptr inbounds ptr, ptr %9, i64 1
  %21 = icmp ult ptr %20, %6
  br i1 %21, label %8, label %22, !llvm.loop !142

22:                                               ; preds = %19, %2
  %23 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %24 = getelementptr inbounds %"struct.std::_Deque_base<double, std::allocator<double>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !143
  %26 = load ptr, ptr %23, align 8, !tbaa !138
  %27 = load double, ptr %1, align 8, !tbaa !13
  %28 = icmp eq ptr %25, %26
  br i1 %28, label %33, label %29

29:                                               ; preds = %29, %22
  %30 = phi ptr [ %31, %29 ], [ %25, %22 ]
  store double %27, ptr %30, align 8, !tbaa !13
  %31 = getelementptr inbounds double, ptr %30, i64 1
  %32 = icmp eq ptr %31, %26
  br i1 %32, label %33, label %29, !llvm.loop !144

33:                                               ; preds = %29, %22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZNSt15__new_allocatorIPdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) #7 comdat align 2 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !32

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #23
  ret ptr %11
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZNSt11_Deque_baseIdSaIdEE15_M_create_nodesEPPdS3_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = icmp ult ptr %1, %2
  br i1 %4, label %5, label %25

5:                                                ; preds = %8, %3
  %6 = phi ptr [ %9, %8 ], [ %1, %3 ]
  %7 = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #23
          to label %8 unwind label %11

8:                                                ; preds = %5
  store ptr %7, ptr %6, align 8, !tbaa !29
  %9 = getelementptr inbounds ptr, ptr %6, i64 1
  %10 = icmp ult ptr %9, %2
  br i1 %10, label %5, label %25, !llvm.loop !145

11:                                               ; preds = %5
  %.lcssa = phi ptr [ %6, %5 ]
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #21
  %15 = icmp ugt ptr %.lcssa, %1
  br i1 %15, label %16, label %21

16:                                               ; preds = %16, %11
  %17 = phi ptr [ %19, %16 ], [ %1, %11 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !29
  tail call void @_ZdlPv(ptr noundef %18) #22
  %19 = getelementptr inbounds ptr, ptr %17, i64 1
  %20 = icmp ult ptr %19, %.lcssa
  br i1 %20, label %16, label %21, !llvm.loop !97

21:                                               ; preds = %16, %11
  invoke void @__cxa_rethrow() #26
          to label %29 unwind label %22

22:                                               ; preds = %21
  %23 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %24 unwind label %26

24:                                               ; preds = %22
  resume { ptr, i32 } %23

25:                                               ; preds = %8, %3
  ret void

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #27
  unreachable

29:                                               ; preds = %21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define internal void @__clang_call_terminate(ptr noundef %0) #16 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #21
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: optsize uwtable
define internal void @_Z9list_testPdS_i(ptr noundef %0, ptr noundef %1, i32 %2) #0 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__cxx11::list", align 8
  %5 = alloca %"class.std::ios_base::Init", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #21
  call void @_ZNSt7__cxx114listIdSaIdEEC2IPdvEET_S5_RKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #21
  invoke void @_ZNSt7__cxx114listIdSaIdEE4sortEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
          to label %6 unwind label %14

6:                                                ; preds = %3
  call void @_ZNSt7__cxx114listIdSaIdEE6uniqueEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  %7 = load ptr, ptr %4, align 8, !tbaa !146
  %8 = icmp eq ptr %7, %4
  br i1 %8, label %13, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %11, %9 ], [ %7, %6 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !146
  call void @_ZdlPv(ptr noundef %10) #22
  %12 = icmp eq ptr %11, %4
  br i1 %12, label %13, label %9, !llvm.loop !148

13:                                               ; preds = %9, %6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  ret void

14:                                               ; preds = %3
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = load ptr, ptr %4, align 8, !tbaa !146
  %17 = icmp eq ptr %16, %4
  br i1 %17, label %22, label %18

18:                                               ; preds = %18, %14
  %19 = phi ptr [ %20, %18 ], [ %16, %14 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !146
  call void @_ZdlPv(ptr noundef %19) #22
  %21 = icmp eq ptr %20, %4
  br i1 %21, label %22, label %18, !llvm.loop !148

22:                                               ; preds = %18, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  resume { ptr, i32 } %15
}

; Function Attrs: optsize uwtable
define internal void @_ZNSt7__cxx114listIdSaIdEEC2IPdvEET_S5_RKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = getelementptr inbounds %"struct.std::__detail::_List_node_base", ptr %0, i64 0, i32 1
  store ptr %0, ptr %5, align 8, !tbaa !149
  store ptr %0, ptr %0, align 8, !tbaa !146
  %6 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %0, i64 0, i32 1
  store i64 0, ptr %6, align 8, !tbaa !150
  invoke void @_ZNSt7__cxx114listIdSaIdEE22_M_initialize_dispatchIPdEEvT_S5_St12__false_type(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) #20
          to label %7 unwind label %8

7:                                                ; preds = %4
  ret void

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = load ptr, ptr %0, align 8, !tbaa !146
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %16, label %12

12:                                               ; preds = %12, %8
  %13 = phi ptr [ %14, %12 ], [ %10, %8 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !146
  tail call void @_ZdlPv(ptr noundef %13) #22
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %12, !llvm.loop !148

16:                                               ; preds = %12, %8
  resume { ptr, i32 } %9
}

; Function Attrs: optsize uwtable
define internal void @_ZNSt7__cxx114listIdSaIdEE4sortEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"struct.std::__detail::_Scratch_list", align 8
  %3 = alloca [64 x %"struct.std::__detail::_Scratch_list"], align 16
  %4 = load ptr, ptr %0, align 8, !tbaa !146
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %71, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !tbaa !146
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %71, label %9

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  %10 = getelementptr inbounds %"struct.std::__detail::_List_node_base", ptr %2, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !149
  store ptr %2, ptr %2, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #21
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %15, %11 ]
  %13 = getelementptr inbounds %"struct.std::__detail::_Scratch_list", ptr %3, i64 %12
  %14 = getelementptr inbounds %"struct.std::__detail::_List_node_base", ptr %13, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !149
  store ptr %13, ptr %13, align 16, !tbaa !146
  %15 = add nuw nsw i64 %12, 1
  %16 = icmp eq i64 %15, 64
  br i1 %16, label %17, label %11

17:                                               ; preds = %43, %11
  %18 = phi ptr [ %48, %43 ], [ %4, %11 ]
  %19 = phi ptr [ %47, %43 ], [ %3, %11 ]
  %20 = load ptr, ptr %18, align 8, !tbaa !146
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %18, ptr noundef %20) #25
  %21 = icmp eq ptr %3, %19
  br i1 %21, label %43, label %22

22:                                               ; preds = %27, %17
  %23 = phi ptr [ %28, %27 ], [ %3, %17 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !146
  %25 = icmp ne ptr %24, %23
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  invoke void @_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIdEvEEEEvRNS_15_List_node_baseET_(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %2) #20
          to label %27 unwind label %32

27:                                               ; preds = %26
  call void @_ZNSt8__detail15_List_node_base4swapERS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %23) #25
  %28 = getelementptr inbounds %"struct.std::__detail::_Scratch_list", ptr %23, i64 1
  %29 = icmp eq ptr %28, %19
  br i1 %29, label %43, label %22, !llvm.loop !152

30:                                               ; preds = %54
  %31 = landingpad { ptr, i32 }
          catch ptr null
  br label %34

32:                                               ; preds = %26
  %33 = landingpad { ptr, i32 }
          catch ptr null
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi { ptr, i32 } [ %31, %30 ], [ %33, %32 ]
  %36 = extractvalue { ptr, i32 } %35, 0
  %37 = call ptr @__cxa_begin_catch(ptr %36) #21
  %38 = load ptr, ptr %2, align 8, !tbaa !146
  %39 = icmp eq ptr %38, %2
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %38, ptr noundef nonnull %2) #25
  br label %41

41:                                               ; preds = %40, %34
  br label %59

42:                                               ; preds = %65
  invoke void @__cxa_rethrow() #26
          to label %75 unwind label %68

43:                                               ; preds = %27, %22, %17
  %44 = phi ptr [ %3, %17 ], [ %19, %27 ], [ %23, %22 ]
  %45 = phi i1 [ true, %17 ], [ %25, %27 ], [ %25, %22 ]
  call void @_ZNSt8__detail15_List_node_base4swapERS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %44) #25
  %46 = zext i1 %45 to i64
  %47 = getelementptr inbounds %"struct.std::__detail::_Scratch_list", ptr %19, i64 %46
  %48 = load ptr, ptr %0, align 8, !tbaa !146
  %49 = icmp eq ptr %48, %0
  br i1 %49, label %50, label %17, !llvm.loop !153

50:                                               ; preds = %54, %43
  %.lcssa4 = phi i1 [ %.lcssa4, %54 ], [ %45, %43 ]
  %.lcssa3 = phi ptr [ %.lcssa3, %54 ], [ %47, %43 ]
  %.lcssa1 = phi ptr [ %.lcssa1, %54 ], [ %19, %43 ]
  %51 = phi ptr [ %52, %54 ], [ %3, %43 ]
  %52 = getelementptr inbounds %"struct.std::__detail::_Scratch_list", ptr %51, i64 1
  %53 = icmp eq ptr %52, %.lcssa3
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  invoke void @_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIdEvEEEEvRNS_15_List_node_baseET_(ptr noundef nonnull align 8 dereferenceable(16) %52, ptr noundef nonnull align 8 dereferenceable(16) %51) #20
          to label %50 unwind label %30, !llvm.loop !154

55:                                               ; preds = %50
  %.lcssa4.lcssa = phi i1 [ %.lcssa4, %50 ]
  %.lcssa1.lcssa = phi ptr [ %.lcssa1, %50 ]
  %56 = xor i1 %.lcssa4.lcssa, true
  %57 = sext i1 %56 to i64
  %58 = getelementptr inbounds %"struct.std::__detail::_Scratch_list", ptr %.lcssa1.lcssa, i64 %57
  call void @_ZNSt8__detail15_List_node_base4swapERS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %58, ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  br label %71

59:                                               ; preds = %65, %41
  %60 = phi i64 [ %66, %65 ], [ 0, %41 ]
  %61 = getelementptr inbounds [64 x %"struct.std::__detail::_Scratch_list"], ptr %3, i64 0, i64 %60
  %62 = load ptr, ptr %61, align 16, !tbaa !146
  %63 = icmp eq ptr %62, %61
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %62, ptr noundef nonnull %61) #25
  br label %65

65:                                               ; preds = %64, %59
  %66 = add nuw nsw i64 %60, 1
  %67 = icmp eq i64 %66, 64
  br i1 %67, label %42, label %59, !llvm.loop !155

68:                                               ; preds = %42
  %69 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %70 unwind label %72

70:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  resume { ptr, i32 } %69

71:                                               ; preds = %55, %6, %1
  ret void

72:                                               ; preds = %68
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  call void @__clang_call_terminate(ptr %74) #27
  unreachable

75:                                               ; preds = %42
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZNSt7__cxx114listIdSaIdEE6uniqueEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::list", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !146
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %43, label %5

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  %6 = getelementptr inbounds %"struct.std::__detail::_List_node_base", ptr %2, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !149
  store ptr %2, ptr %2, align 8, !tbaa !146
  %7 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %2, i64 0, i32 1
  store i64 0, ptr %7, align 8, !tbaa !150
  %8 = load ptr, ptr %3, align 8, !tbaa !146
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %42, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %0, i64 0, i32 1
  br label %12

12:                                               ; preds = %31, %10
  %13 = phi ptr [ %8, %10 ], [ %33, %31 ]
  %14 = phi ptr [ %3, %10 ], [ %32, %31 ]
  %15 = getelementptr inbounds %"struct.std::_List_node", ptr %14, i64 0, i32 1
  %16 = load double, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds %"struct.std::_List_node", ptr %13, i64 0, i32 1
  %18 = load double, ptr %17, align 8, !tbaa !13
  %19 = fcmp oeq double %16, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %12
  %21 = load ptr, ptr %2, align 8, !tbaa !146
  %22 = load ptr, ptr %13, align 8, !tbaa !146
  %23 = icmp eq ptr %21, %13
  %24 = icmp eq ptr %22, %21
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull %13, ptr noundef %22) #25
  %27 = load i64, ptr %7, align 8, !tbaa !156
  %28 = add i64 %27, 1
  store i64 %28, ptr %7, align 8, !tbaa !156
  %29 = load i64, ptr %11, align 8, !tbaa !156
  %30 = add i64 %29, -1
  store i64 %30, ptr %11, align 8, !tbaa !156
  br label %31

31:                                               ; preds = %26, %20, %12
  %32 = phi ptr [ %14, %20 ], [ %14, %26 ], [ %13, %12 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !146
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %35, label %12, !llvm.loop !159

35:                                               ; preds = %31
  %36 = load ptr, ptr %2, align 8, !tbaa !146
  %37 = icmp eq ptr %36, %2
  br i1 %37, label %42, label %38

38:                                               ; preds = %38, %35
  %39 = phi ptr [ %40, %38 ], [ %36, %35 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !146
  call void @_ZdlPv(ptr noundef %39) #22
  %41 = icmp eq ptr %40, %2
  br i1 %41, label %42, label %38, !llvm.loop !148

42:                                               ; preds = %38, %35, %5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #21
  br label %43

43:                                               ; preds = %42, %1
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize uwtable
define internal void @_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIdEvEEEEvRNS_15_List_node_baseET_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !146
  %4 = load ptr, ptr %1, align 8, !tbaa !146
  %5 = icmp ne ptr %3, %0
  %6 = icmp ne ptr %4, %1
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %26

8:                                                ; preds = %20, %2
  %9 = phi ptr [ %22, %20 ], [ %3, %2 ]
  %10 = phi ptr [ %21, %20 ], [ %4, %2 ]
  %11 = getelementptr inbounds %"struct.std::_List_node", ptr %10, i64 0, i32 1
  %12 = load double, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds %"struct.std::_List_node", ptr %9, i64 0, i32 1
  %14 = load double, ptr %13, align 8, !tbaa !13
  %15 = fcmp olt double %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = load ptr, ptr %10, align 8, !tbaa !146
  tail call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %10, ptr noundef %17) #25
  br label %20

18:                                               ; preds = %8
  %19 = load ptr, ptr %9, align 8, !tbaa !146
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %17, %16 ], [ %10, %18 ]
  %22 = phi ptr [ %9, %16 ], [ %19, %18 ]
  %23 = icmp ne ptr %22, %0
  %24 = icmp ne ptr %21, %1
  %25 = and i1 %23, %24
  br i1 %25, label %8, label %26, !llvm.loop !160

26:                                               ; preds = %20, %2
  %27 = phi ptr [ %4, %2 ], [ %21, %20 ]
  %28 = phi i1 [ %6, %2 ], [ %24, %20 ]
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %27, ptr noundef nonnull %1) #25
  br label %30

30:                                               ; preds = %29, %26
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZNSt8__detail15_List_node_base4swapERS0_S1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: optsize uwtable
define internal void @_ZNSt7__cxx114listIdSaIdEE22_M_initialize_dispatchIPdEEvT_S5_St12__false_type(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %1, %5 ], [ %14, %7 ]
  %9 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
  %10 = getelementptr inbounds %"struct.std::_List_node", ptr %9, i64 0, i32 1
  %11 = load double, ptr %8, align 8, !tbaa !13
  store double %11, ptr %10, align 8, !tbaa !13
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %0) #25
  %12 = load i64, ptr %6, align 8, !tbaa !156
  %13 = add i64 %12, 1
  store i64 %13, ptr %6, align 8, !tbaa !156
  %14 = getelementptr inbounds double, ptr %8, i64 1
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %16, label %7, !llvm.loop !161

16:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize uwtable
define internal void @_ZNSt3setIdSt4lessIdESaIdEEC2IPdEET_S6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>>::_Alloc_node", align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  %6 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr %5, ptr %6, align 8, !tbaa !162
  %7 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr %5, ptr %7, align 8, !tbaa !166
  %8 = getelementptr inbounds i8, ptr %0, i64 40
  store i64 0, ptr %8, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store ptr %0, ptr %4, align 8, !tbaa !29
  %9 = icmp eq ptr %1, %2
  br i1 %9, label %16, label %10

10:                                               ; preds = %13, %3
  %11 = phi ptr [ %14, %13 ], [ %1, %3 ]
  %12 = invoke ptr @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE17_M_insert_unique_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdEOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull %5, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
          to label %13 unwind label %17

13:                                               ; preds = %10
  %14 = getelementptr inbounds double, ptr %11, i64 1
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %16, label %10, !llvm.loop !168

16:                                               ; preds = %13, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void

17:                                               ; preds = %10
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  resume { ptr, i32 } %18
}

; Function Attrs: optsize uwtable
define internal ptr @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE17_M_insert_unique_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdEOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #0 comdat align 2 {
  %5 = tail call { ptr, ptr } @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIdERKd(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %6 = extractvalue { ptr, ptr } %5, 0
  %7 = extractvalue { ptr, ptr } %5, 1
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE10_M_insert_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdEPSt18_Rb_tree_node_baseSC_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %6, %4 ]
  ret ptr %12
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  invoke void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %3) #20
          to label %4 unwind label %5

4:                                                ; preds = %1
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #27
  unreachable
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !170
  tail call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7) #20
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !171
  tail call void @_ZdlPv(ptr noundef nonnull %5) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !172

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: optsize uwtable
define internal { ptr, ptr } @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIdERKd(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %0, i64 40
  %8 = load i64, ptr %7, align 8, !tbaa !167
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %0, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !29
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1
  %14 = load double, ptr %13, align 8, !tbaa !13
  %15 = load double, ptr %2, align 8, !tbaa !13
  %16 = fcmp olt double %14, %15
  br i1 %16, label %66, label %17

17:                                               ; preds = %10, %6
  %18 = tail call { ptr, ptr } @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE24_M_get_insert_unique_posERKd(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %19 = extractvalue { ptr, ptr } %18, 0
  %20 = extractvalue { ptr, ptr } %18, 1
  br label %66

21:                                               ; preds = %3
  %22 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %23 = load double, ptr %2, align 8, !tbaa !13
  %24 = load double, ptr %22, align 8, !tbaa !13
  %25 = fcmp olt double %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, ptr %0, i64 24
  %28 = load ptr, ptr %27, align 8, !tbaa !29
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %66, label %30

30:                                               ; preds = %26
  %31 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #28
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %31, i64 0, i32 1
  %33 = load double, ptr %32, align 8, !tbaa !13
  %34 = fcmp olt double %33, %23
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %31, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !170
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, ptr null, ptr %1
  %40 = select i1 %38, ptr %31, ptr %1
  br label %66

41:                                               ; preds = %30
  %42 = tail call { ptr, ptr } @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE24_M_get_insert_unique_posERKd(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %43 = extractvalue { ptr, ptr } %42, 0
  %44 = extractvalue { ptr, ptr } %42, 1
  br label %66

45:                                               ; preds = %21
  %46 = fcmp olt double %24, %23
  br i1 %46, label %47, label %66

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8, ptr %0, i64 32
  %49 = load ptr, ptr %48, align 8, !tbaa !29
  %50 = icmp eq ptr %49, %1
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #28
  %53 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %52, i64 0, i32 1
  %54 = load double, ptr %53, align 8, !tbaa !13
  %55 = fcmp olt double %23, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !170
  %59 = icmp eq ptr %58, null
  %60 = select i1 %59, ptr null, ptr %52
  %61 = select i1 %59, ptr %1, ptr %52
  br label %66

62:                                               ; preds = %51
  %63 = tail call { ptr, ptr } @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE24_M_get_insert_unique_posERKd(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %64 = extractvalue { ptr, ptr } %63, 0
  %65 = extractvalue { ptr, ptr } %63, 1
  br label %66

66:                                               ; preds = %62, %56, %47, %45, %41, %35, %26, %17, %10
  %67 = phi ptr [ %19, %17 ], [ null, %10 ], [ %43, %41 ], [ %1, %26 ], [ %64, %62 ], [ null, %47 ], [ %1, %45 ], [ %39, %35 ], [ %60, %56 ]
  %68 = phi ptr [ %20, %17 ], [ %12, %10 ], [ %44, %41 ], [ %1, %26 ], [ %65, %62 ], [ %1, %47 ], [ null, %45 ], [ %40, %35 ], [ %61, %56 ]
  %69 = insertvalue { ptr, ptr } poison, ptr %67, 0
  %70 = insertvalue { ptr, ptr } %69, ptr %68, 1
  ret { ptr, ptr } %70
}

; Function Attrs: optsize uwtable
define internal ptr @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE10_M_insert_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdEPSt18_Rb_tree_node_baseSC_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #0 comdat align 2 {
  %6 = icmp ne ptr %1, null
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  %8 = icmp eq ptr %7, %2
  %9 = select i1 %6, i1 true, i1 %8
  %10 = load double, ptr %3, align 8, !tbaa !13
  br i1 %9, label %15, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %2, i64 0, i32 1
  %13 = load double, ptr %12, align 8, !tbaa !13
  %14 = fcmp olt double %10, %13
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi i1 [ true, %5 ], [ %14, %11 ]
  %17 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %17, i64 0, i32 1
  store double %10, ptr %18, align 8, !tbaa !13
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %16, ptr noundef nonnull %17, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %7) #25
  %19 = getelementptr inbounds i8, ptr %0, i64 40
  %20 = load i64, ptr %19, align 8, !tbaa !167
  %21 = add i64 %20, 1
  store i64 %21, ptr %19, align 8, !tbaa !167
  ret ptr %17
}

; Function Attrs: nounwind optsize
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: optsize uwtable
define internal { ptr, ptr } @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE24_M_get_insert_unique_posERKd(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %3, align 8, !tbaa !29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = load double, ptr %1, align 8, !tbaa !13
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi ptr [ %5, %7 ], [ %17, %9 ]
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %10, i64 0, i32 1
  %12 = load double, ptr %11, align 8, !tbaa !13
  %13 = fcmp olt double %8, %12
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %10, i64 0, i32 2
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %10, i64 0, i32 3
  %16 = select i1 %13, ptr %14, ptr %15
  %17 = load ptr, ptr %16, align 8, !tbaa !29
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !173

19:                                               ; preds = %9
  %.lcssa1 = phi ptr [ %10, %9 ]
  %.lcssa = phi i1 [ %13, %9 ]
  br i1 %.lcssa, label %20, label %27

20:                                               ; preds = %19, %2
  %21 = phi ptr [ %.lcssa1, %19 ], [ %4, %2 ]
  %22 = getelementptr inbounds i8, ptr %0, i64 24
  %23 = load ptr, ptr %22, align 8, !tbaa !162
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %21) #28
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi ptr [ %21, %25 ], [ %.lcssa1, %19 ]
  %29 = phi ptr [ %26, %25 ], [ %.lcssa1, %19 ]
  %30 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %29, i64 0, i32 1
  %31 = load double, ptr %30, align 8, !tbaa !13
  %32 = load double, ptr %1, align 8, !tbaa !13
  %33 = fcmp olt double %31, %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %27, %20
  %36 = phi ptr [ %29, %34 ], [ null, %20 ], [ null, %27 ]
  %37 = phi ptr [ null, %34 ], [ %21, %20 ], [ %28, %27 ]
  %38 = insertvalue { ptr, ptr } poison, ptr %36, 0
  %39 = insertvalue { ptr, ptr } %38, ptr %37, 1
  ret { ptr, ptr } %39
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: optsize uwtable
define internal void @_Z13multiset_testPdS_i(ptr noundef %0, ptr noundef %1, i32 %2) #0 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::multiset", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #21
  call void @_ZNSt8multisetIdSt4lessIdESaIdEEC2IPdEET_S6_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds i8, ptr %4, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !162
  %7 = getelementptr inbounds i8, ptr %4, i64 8
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %26, label %9

9:                                                ; preds = %23, %3
  %10 = phi ptr [ %24, %23 ], [ %6, %3 ]
  %11 = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %10) #28
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %10, i64 0, i32 1
  %15 = load double, ptr %14, align 8, !tbaa !13
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1
  %17 = load double, ptr %16, align 8, !tbaa !13
  %18 = fcmp oeq double %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = invoke ptr @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIdE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr nonnull %11) #20
          to label %23 unwind label %21

21:                                               ; preds = %19
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #25
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #21
  resume { ptr, i32 } %22

23:                                               ; preds = %19, %13
  %24 = phi ptr [ %10, %19 ], [ %11, %13 ]
  %25 = icmp eq ptr %24, %7
  br i1 %25, label %26, label %9

26:                                               ; preds = %23, %9, %3
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #25
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #21
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZNSt8multisetIdSt4lessIdESaIdEEC2IPdEET_S6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"struct.std::_Rb_tree<double, double, std::_Identity<double>, std::less<double>>::_Alloc_node", align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  %6 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr %5, ptr %6, align 8, !tbaa !162
  %7 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr %5, ptr %7, align 8, !tbaa !166
  %8 = getelementptr inbounds i8, ptr %0, i64 40
  store i64 0, ptr %8, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store ptr %0, ptr %4, align 8, !tbaa !29
  %9 = icmp eq ptr %1, %2
  br i1 %9, label %16, label %10

10:                                               ; preds = %13, %3
  %11 = phi ptr [ %14, %13 ], [ %1, %3 ]
  %12 = invoke ptr @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE16_M_insert_equal_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdEOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull %5, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
          to label %13 unwind label %17

13:                                               ; preds = %10
  %14 = getelementptr inbounds double, ptr %11, i64 1
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %16, label %10, !llvm.loop !174

16:                                               ; preds = %13, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void

17:                                               ; preds = %10
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: optsize uwtable
define internal ptr @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIdE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %1) #28
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = tail call noundef ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %4) #25
  tail call void @_ZdlPv(ptr noundef %5) #22
  %6 = getelementptr inbounds i8, ptr %0, i64 40
  %7 = load i64, ptr %6, align 8, !tbaa !167
  %8 = add i64 %7, -1
  store i64 %8, ptr %6, align 8, !tbaa !167
  ret ptr %3
}

; Function Attrs: nounwind optsize
declare noundef ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress optsize uwtable
define internal ptr @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE16_M_insert_equal_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdEOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #7 comdat align 2 {
  %5 = tail call { ptr, ptr } @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE28_M_get_insert_hint_equal_posESt23_Rb_tree_const_iteratorIdERKd(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %6 = extractvalue { ptr, ptr } %5, 1
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = extractvalue { ptr, ptr } %5, 0
  %10 = tail call ptr @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE10_M_insert_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdEPSt18_Rb_tree_node_baseSC_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %9, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  br label %13

11:                                               ; preds = %4
  %12 = tail call ptr @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE21_M_insert_equal_lowerIRdEESt17_Rb_tree_iteratorIdEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi ptr [ %10, %8 ], [ %12, %11 ]
  ret ptr %14
}

; Function Attrs: optsize uwtable
define internal { ptr, ptr } @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE28_M_get_insert_hint_equal_posESt23_Rb_tree_const_iteratorIdERKd(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %33

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %0, i64 40
  %8 = load i64, ptr %7, align 8, !tbaa !167
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %0, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !29
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1
  %14 = load double, ptr %2, align 8, !tbaa !13
  %15 = load double, ptr %13, align 8, !tbaa !13
  %16 = fcmp olt double %14, %15
  br i1 %16, label %17, label %82

17:                                               ; preds = %10, %6
  %18 = getelementptr inbounds i8, ptr %0, i64 16
  %19 = load ptr, ptr %18, align 8, !tbaa !29
  %20 = icmp eq ptr %19, null
  br i1 %20, label %82, label %21

21:                                               ; preds = %17
  %22 = load double, ptr %2, align 8, !tbaa !13
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi ptr [ %19, %21 ], [ %31, %23 ]
  %25 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %24, i64 0, i32 1
  %26 = load double, ptr %25, align 8, !tbaa !13
  %27 = fcmp olt double %22, %26
  %28 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %24, i64 0, i32 2
  %29 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %24, i64 0, i32 3
  %30 = select i1 %27, ptr %28, ptr %29
  %31 = load ptr, ptr %30, align 8, !tbaa !29
  %32 = icmp eq ptr %31, null
  br i1 %32, label %82, label %23, !llvm.loop !175

33:                                               ; preds = %3
  %34 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %35 = load double, ptr %34, align 8, !tbaa !13
  %36 = load double, ptr %2, align 8, !tbaa !13
  %37 = fcmp olt double %35, %36
  br i1 %37, label %67, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds i8, ptr %0, i64 24
  %40 = load ptr, ptr %39, align 8, !tbaa !29
  %41 = icmp eq ptr %40, %1
  br i1 %41, label %82, label %42

42:                                               ; preds = %38
  %43 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #28
  %44 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %43, i64 0, i32 1
  %45 = load double, ptr %44, align 8, !tbaa !13
  %46 = fcmp olt double %36, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %43, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !170
  %50 = icmp eq ptr %49, null
  %51 = select i1 %50, ptr null, ptr %1
  %52 = select i1 %50, ptr %43, ptr %1
  br label %82

53:                                               ; preds = %42
  %54 = getelementptr inbounds i8, ptr %0, i64 16
  %55 = load ptr, ptr %54, align 8, !tbaa !29
  %56 = icmp eq ptr %55, null
  br i1 %56, label %82, label %57

57:                                               ; preds = %57, %53
  %58 = phi ptr [ %65, %57 ], [ %55, %53 ]
  %59 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %58, i64 0, i32 1
  %60 = load double, ptr %59, align 8, !tbaa !13
  %61 = fcmp olt double %36, %60
  %62 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %58, i64 0, i32 2
  %63 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %58, i64 0, i32 3
  %64 = select i1 %61, ptr %62, ptr %63
  %65 = load ptr, ptr %64, align 8, !tbaa !29
  %66 = icmp eq ptr %65, null
  br i1 %66, label %82, label %57, !llvm.loop !175

67:                                               ; preds = %33
  %68 = getelementptr inbounds i8, ptr %0, i64 32
  %69 = load ptr, ptr %68, align 8, !tbaa !29
  %70 = icmp eq ptr %69, %1
  br i1 %70, label %82, label %71

71:                                               ; preds = %67
  %72 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #28
  %73 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %72, i64 0, i32 1
  %74 = load double, ptr %73, align 8, !tbaa !13
  %75 = fcmp olt double %74, %36
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !170
  %79 = icmp eq ptr %78, null
  %80 = select i1 %79, ptr null, ptr %72
  %81 = select i1 %79, ptr %1, ptr %72
  br label %82

82:                                               ; preds = %76, %71, %67, %57, %53, %47, %38, %23, %17, %10
  %83 = phi ptr [ null, %10 ], [ %1, %38 ], [ null, %67 ], [ null, %71 ], [ %51, %47 ], [ %80, %76 ], [ null, %17 ], [ null, %53 ], [ null, %23 ], [ null, %57 ]
  %84 = phi ptr [ %12, %10 ], [ %1, %38 ], [ %1, %67 ], [ null, %71 ], [ %52, %47 ], [ %81, %76 ], [ %1, %17 ], [ %4, %53 ], [ %24, %23 ], [ %58, %57 ]
  %85 = insertvalue { ptr, ptr } poison, ptr %83, 0
  %86 = insertvalue { ptr, ptr } %85, ptr %84, 1
  ret { ptr, ptr } %86
}

; Function Attrs: mustprogress optsize uwtable
define internal ptr @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE21_M_insert_equal_lowerIRdEESt17_Rb_tree_iteratorIdEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %3, align 8, !tbaa !29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = load double, ptr %1, align 8, !tbaa !13
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi ptr [ %5, %7 ], [ %17, %9 ]
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %10, i64 0, i32 1
  %12 = load double, ptr %11, align 8, !tbaa !13
  %13 = fcmp olt double %12, %8
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %10, i64 0, i32 2
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %10, i64 0, i32 3
  %16 = select i1 %13, ptr %15, ptr %14
  %17 = load ptr, ptr %16, align 8, !tbaa !29
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !176

19:                                               ; preds = %9, %2
  %20 = phi ptr [ %4, %2 ], [ %10, %9 ]
  %21 = tail call ptr @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE15_M_insert_lowerIRdEESt17_Rb_tree_iteratorIdEPSt18_Rb_tree_node_baseOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %20, ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  ret ptr %21
}

; Function Attrs: optsize uwtable
define internal ptr @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE15_M_insert_lowerIRdEESt17_Rb_tree_iteratorIdEPSt18_Rb_tree_node_baseOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = icmp eq ptr %4, %1
  %6 = load double, ptr %2, align 8, !tbaa !13
  br i1 %5, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %9 = load double, ptr %8, align 8, !tbaa !13
  %10 = fcmp uge double %9, %6
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i1 [ true, %3 ], [ %10, %7 ]
  %13 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %13, i64 0, i32 1
  store double %6, ptr %14, align 8, !tbaa !13
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %12, ptr noundef nonnull %13, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %4) #25
  %15 = getelementptr inbounds i8, ptr %0, i64 40
  %16 = load i64, ptr %15, align 8, !tbaa !167
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8, !tbaa !167
  ret ptr %13
}

; Function Attrs: optsize uwtable
define internal void @_Z9run_testsi(i32 noundef %0) #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::multiset", align 8
  %3 = alloca %"class.std::vector", align 8
  %4 = alloca %"class.std::ios_base::Init", align 1
  %5 = sitofp i32 %0 to double
  %6 = tail call double @log(double noundef %5) #25
  %7 = fdiv double %6, 0x3FE62E42FEFA39EF
  %8 = fmul double %7, %5
  %9 = fdiv double 0x4173021B091BF3AA, %8
  %10 = tail call double @llvm.floor.f64(double %9)
  %11 = fptosi double %10 to i32
  %12 = shl nsw i32 %0, 1
  %13 = sext i32 %12 to i64
  %14 = load ptr, ptr @result_times, align 8, !tbaa !7
  %15 = load ptr, ptr getelementptr inbounds (%"class.std::vector", ptr @result_times, i64 0, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !31
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store ptr %14, ptr getelementptr inbounds (%"class.std::vector", ptr @result_times, i64 0, i32 0, i32 0, i32 0, i32 1), align 8, !tbaa !31
  br label %18

18:                                               ; preds = %17, %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #21
  call void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %13, ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #21
  %19 = load ptr, ptr %3, align 8, !tbaa !7
  %20 = getelementptr inbounds double, ptr %19, i64 %13
  %21 = sext i32 %0 to i64
  %22 = getelementptr inbounds double, ptr %19, i64 %21
  %23 = icmp eq i32 %0, 0
  br i1 %23, label %56, label %24

24:                                               ; preds = %24, %18
  %25 = phi double [ %28, %24 ], [ 0.000000e+00, %18 ]
  %26 = phi ptr [ %27, %24 ], [ %19, %18 ]
  %27 = getelementptr inbounds double, ptr %26, i64 1
  store double %25, ptr %26, align 8, !tbaa !13
  %28 = fadd double %25, 1.000000e+00
  %29 = icmp eq ptr %27, %22
  br i1 %29, label %30, label %24, !llvm.loop !177

30:                                               ; preds = %30, %24
  %31 = phi double [ %34, %30 ], [ 0.000000e+00, %24 ]
  %32 = phi ptr [ %33, %30 ], [ %22, %24 ]
  %33 = getelementptr inbounds double, ptr %32, i64 1
  store double %31, ptr %32, align 8, !tbaa !13
  %34 = fadd double %31, 1.000000e+00
  %35 = icmp eq ptr %33, %20
  br i1 %35, label %36, label %30, !llvm.loop !177

36:                                               ; preds = %30
  %37 = getelementptr inbounds double, ptr %19, i64 1
  %38 = ptrtoint ptr %19 to i64
  br label %39

39:                                               ; preds = %53, %36
  %40 = phi ptr [ %37, %36 ], [ %54, %53 ]
  %41 = call i32 @rand() #25
  %42 = sext i32 %41 to i64
  %43 = ptrtoint ptr %40 to i64
  %44 = sub i64 %43, %38
  %45 = ashr exact i64 %44, 3
  %46 = add nsw i64 %45, 1
  %47 = srem i64 %42, %46
  %48 = getelementptr inbounds double, ptr %19, i64 %47
  %49 = icmp eq ptr %40, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %39
  %51 = load double, ptr %40, align 8, !tbaa !13
  %52 = load double, ptr %48, align 8, !tbaa !13
  store double %52, ptr %40, align 8, !tbaa !13
  store double %51, ptr %48, align 8, !tbaa !13
  br label %53

53:                                               ; preds = %50, %39
  %54 = getelementptr inbounds double, ptr %40, i64 1
  %55 = icmp eq ptr %54, %20
  br i1 %55, label %56, label %39, !llvm.loop !178

56:                                               ; preds = %53, %18
  %57 = icmp sgt i32 %11, 0
  br i1 %57, label %58, label %93

58:                                               ; preds = %60, %56
  %59 = phi i32 [ %61, %60 ], [ %11, %56 ]
  invoke void @_Z10array_testPdS_i(ptr noundef %19, ptr noundef %20, i32 poison) #20
          to label %60 unwind label %110

60:                                               ; preds = %58
  %61 = add nsw i32 %59, -1
  %62 = icmp ugt i32 %59, 1
  br i1 %62, label %58, label %63, !llvm.loop !179

63:                                               ; preds = %65, %60
  %64 = phi i32 [ %66, %65 ], [ %11, %60 ]
  invoke void @_Z19vector_pointer_testPdS_i(ptr noundef %19, ptr noundef %20, i32 poison) #20
          to label %65 unwind label %108

65:                                               ; preds = %63
  %66 = add nsw i32 %64, -1
  %67 = icmp ugt i32 %64, 1
  br i1 %67, label %63, label %68, !llvm.loop !179

68:                                               ; preds = %70, %65
  %69 = phi i32 [ %71, %70 ], [ %11, %65 ]
  invoke void @_Z20vector_iterator_testPdS_i(ptr noundef %19, ptr noundef %20, i32 poison) #20
          to label %70 unwind label %106

70:                                               ; preds = %68
  %71 = add nsw i32 %69, -1
  %72 = icmp ugt i32 %69, 1
  br i1 %72, label %68, label %73, !llvm.loop !179

73:                                               ; preds = %75, %70
  %74 = phi i32 [ %76, %75 ], [ %11, %70 ]
  invoke void @_Z10deque_testPdS_i(ptr noundef %19, ptr noundef %20, i32 poison) #20
          to label %75 unwind label %104

75:                                               ; preds = %73
  %76 = add nsw i32 %74, -1
  %77 = icmp ugt i32 %74, 1
  br i1 %77, label %73, label %78, !llvm.loop !179

78:                                               ; preds = %80, %75
  %79 = phi i32 [ %81, %80 ], [ %11, %75 ]
  invoke void @_Z9list_testPdS_i(ptr noundef %19, ptr noundef %20, i32 poison) #20
          to label %80 unwind label %102

80:                                               ; preds = %78
  %81 = add nsw i32 %79, -1
  %82 = icmp ugt i32 %79, 1
  br i1 %82, label %78, label %83, !llvm.loop !179

83:                                               ; preds = %85, %80
  %84 = phi i32 [ %86, %85 ], [ %11, %80 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #21
  invoke void @_ZNSt3setIdSt4lessIdESaIdEEC2IPdEET_S6_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %19, ptr noundef %20) #20
          to label %85 unwind label %100

85:                                               ; preds = %83
  %86 = add nsw i32 %84, -1
  call void @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #25
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #21
  %87 = icmp ugt i32 %84, 1
  br i1 %87, label %83, label %88, !llvm.loop !179

88:                                               ; preds = %90, %85
  %89 = phi i32 [ %91, %90 ], [ %11, %85 ]
  invoke void @_Z13multiset_testPdS_i(ptr noundef %19, ptr noundef %20, i32 poison) #20
          to label %90 unwind label %98

90:                                               ; preds = %88
  %91 = add nsw i32 %89, -1
  %92 = icmp ugt i32 %89, 1
  br i1 %92, label %88, label %93, !llvm.loop !179

93:                                               ; preds = %90, %56
  %94 = load ptr, ptr %3, align 8, !tbaa !7
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  call void @_ZdlPv(ptr noundef nonnull %94) #22
  br label %97

97:                                               ; preds = %96, %93
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  ret void

98:                                               ; preds = %88
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %112

100:                                              ; preds = %83
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %112

102:                                              ; preds = %78
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %112

104:                                              ; preds = %73
  %105 = landingpad { ptr, i32 }
          cleanup
  br label %112

106:                                              ; preds = %68
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %112

108:                                              ; preds = %63
  %109 = landingpad { ptr, i32 }
          cleanup
  br label %112

110:                                              ; preds = %58
  %111 = landingpad { ptr, i32 }
          cleanup
  br label %112

112:                                              ; preds = %110, %108, %106, %104, %102, %100, %98
  %113 = phi { ptr, i32 } [ %99, %98 ], [ %101, %100 ], [ %103, %102 ], [ %105, %104 ], [ %107, %106 ], [ %109, %108 ], [ %111, %110 ]
  %114 = load ptr, ptr %3, align 8, !tbaa !7
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  call void @_ZdlPv(ptr noundef nonnull %114) #22
  br label %117

117:                                              ; preds = %116, %112
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  resume { ptr, i32 } %113
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

; Function Attrs: optsize uwtable
define internal void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
  unreachable

6:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %18

9:                                                ; preds = %6
  %10 = tail call noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #20
  store ptr %10, ptr %0, align 8, !tbaa !7
  %11 = getelementptr inbounds double, ptr %10, i64 %1
  %12 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !30
  store double 0.000000e+00, ptr %10, align 8, !tbaa !13
  %13 = getelementptr double, ptr %10, i64 1
  %14 = icmp eq i64 %1, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = shl nuw nsw i64 %1, 3
  %17 = add nsw i64 %16, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %13, i8 0, i64 %17, i1 false), !tbaa !13
  br label %18

18:                                               ; preds = %15, %9, %8
  %19 = phi ptr [ %13, %9 ], [ %11, %15 ], [ null, %8 ]
  %20 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !31
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @rand() local_unnamed_addr #2

; Function Attrs: mustprogress norecurse optsize uwtable
define dso_local noundef i32 @main() #19 {
  tail call void @_Z9run_testsi(i32 noundef 100000) #20
  ret i32 0
}

attributes #0 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { optsize }
attributes #21 = { nounwind }
attributes #22 = { builtin nounwind optsize }
attributes #23 = { builtin optsize allocsize(0) }
attributes #24 = { noreturn optsize }
attributes #25 = { nounwind optsize }
attributes #26 = { noreturn }
attributes #27 = { noreturn nounwind }
attributes #28 = { nounwind optsize willreturn memory(read) }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{i64 0, i64 65}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !10, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = !{!9, !9, i64 0}
!30 = !{!8, !9, i64 16}
!31 = !{!8, !9, i64 8}
!32 = !{!"branch_weights", i32 1, i32 2000}
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
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZSt4copyIPdSt15_Deque_iteratorIdRdS0_EET0_T_S5_S4_: %agg.result"}
!48 = distinct !{!48, !"_ZSt4copyIPdSt15_Deque_iteratorIdRdS0_EET0_T_S5_S4_"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZNSt5dequeIdSaIdEE5beginEv: %agg.result"}
!51 = distinct !{!51, !"_ZNSt5dequeIdSaIdEE5beginEv"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZSt12__niter_baseISt15_Deque_iteratorIdRdPdEET_S4_: %agg.result"}
!54 = distinct !{!54, !"_ZSt12__niter_baseISt15_Deque_iteratorIdRdPdEET_S4_"}
!55 = !{!56, !47}
!56 = distinct !{!56, !57, !"_ZSt13__copy_move_aILb0EPdSt15_Deque_iteratorIdRdS0_EET1_T0_S5_S4_: %agg.result"}
!57 = distinct !{!57, !"_ZSt13__copy_move_aILb0EPdSt15_Deque_iteratorIdRdS0_EET1_T0_S5_S4_"}
!58 = !{!59, !9, i64 0}
!59 = !{!"_ZTSSt15_Deque_iteratorIdRdPdE", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!60 = !{}
!61 = !{!59, !9, i64 8}
!62 = !{!59, !9, i64 16}
!63 = !{!59, !9, i64 24}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZNSt5dequeIdSaIdEE5beginEv: %agg.result"}
!66 = distinct !{!66, !"_ZNSt5dequeIdSaIdEE5beginEv"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZNSt5dequeIdSaIdEE3endEv: %agg.result"}
!69 = distinct !{!69, !"_ZNSt5dequeIdSaIdEE3endEv"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZSt6uniqueISt15_Deque_iteratorIdRdPdEET_S4_S4_: %agg.result"}
!72 = distinct !{!72, !"_ZSt6uniqueISt15_Deque_iteratorIdRdPdEET_S4_S4_"}
!73 = distinct !{!73, !16}
!74 = !{i64 0, i64 8, !29, i64 8, i64 8, !29, i64 16, i64 8, !29, i64 24, i64 8, !29}
!75 = distinct !{!75, !16}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZStplRKSt15_Deque_iteratorIdRdPdEl: %agg.result"}
!78 = distinct !{!78, !"_ZStplRKSt15_Deque_iteratorIdRdPdEl"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZStplRKSt15_Deque_iteratorIdRdPdEl: %agg.result"}
!81 = distinct !{!81, !"_ZStplRKSt15_Deque_iteratorIdRdPdEl"}
!82 = distinct !{!82, !16}
!83 = distinct !{!83, !16}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZSt15__adjacent_findISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S7_S7_T0_: %agg.result"}
!86 = distinct !{!86, !"_ZSt15__adjacent_findISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S7_S7_T0_"}
!87 = distinct !{!87, !16}
!88 = !{i64 0, i64 8, !29, i64 8, i64 8, !29, i64 16, i64 8, !29}
!89 = !{i64 0, i64 8, !29, i64 8, i64 8, !29}
!90 = !{i64 0, i64 8, !29}
!91 = distinct !{!91, !16}
!92 = !{!93, !9, i64 0}
!93 = !{!"_ZTSNSt11_Deque_baseIdSaIdEE16_Deque_impl_dataE", !9, i64 0, !94, i64 8, !59, i64 16, !59, i64 48}
!94 = !{!"long", !10, i64 0}
!95 = !{!93, !9, i64 40}
!96 = !{!93, !9, i64 72}
!97 = distinct !{!97, !16}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZStplRKSt15_Deque_iteratorIdRdPdEl: %agg.result"}
!100 = distinct !{!100, !"_ZStplRKSt15_Deque_iteratorIdRdPdEl"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZSt13move_backwardISt15_Deque_iteratorIdRdPdES3_ET0_T_S5_S4_: %agg.result"}
!103 = distinct !{!103, !"_ZSt13move_backwardISt15_Deque_iteratorIdRdPdES3_ET0_T_S5_S4_"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZSt12__niter_baseISt15_Deque_iteratorIdRdPdEET_S4_: %agg.result"}
!106 = distinct !{!106, !"_ZSt12__niter_baseISt15_Deque_iteratorIdRdPdEET_S4_"}
!107 = !{!108, !102}
!108 = distinct !{!108, !109, !"_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIdRdPdES3_ET1_T0_S5_S4_: %agg.result"}
!109 = distinct !{!109, !"_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIdRdPdES3_ET1_T0_S5_S4_"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZSt12__niter_baseISt15_Deque_iteratorIdRdPdEET_S4_: %agg.result"}
!112 = distinct !{!112, !"_ZSt12__niter_baseISt15_Deque_iteratorIdRdPdEET_S4_"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZSt12__niter_baseISt15_Deque_iteratorIdRdPdEET_S4_: %agg.result"}
!115 = distinct !{!115, !"_ZSt12__niter_baseISt15_Deque_iteratorIdRdPdEET_S4_"}
!116 = distinct !{!116, !16}
!117 = distinct !{!117, !16}
!118 = distinct !{!118, !16}
!119 = distinct !{!119, !16}
!120 = distinct !{!120, !16}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZStplRKSt15_Deque_iteratorIdRdPdEl: %agg.result"}
!123 = distinct !{!123, !"_ZStplRKSt15_Deque_iteratorIdRdPdEl"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZStmiRKSt15_Deque_iteratorIdRdPdEl: %agg.result"}
!126 = distinct !{!126, !"_ZStmiRKSt15_Deque_iteratorIdRdPdEl"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZStplRKSt15_Deque_iteratorIdRdPdEl: %agg.result"}
!129 = distinct !{!129, !"_ZStplRKSt15_Deque_iteratorIdRdPdEl"}
!130 = distinct !{!130, !16}
!131 = distinct !{!131, !16}
!132 = distinct !{!132, !16}
!133 = distinct !{!133, !16}
!134 = distinct !{!134, !16}
!135 = distinct !{!135, !16}
!136 = !{!93, !94, i64 8}
!137 = !{!93, !9, i64 16}
!138 = !{!93, !9, i64 48}
!139 = distinct !{!139, !16, !140, !141}
!140 = !{!"llvm.loop.isvectorized", i32 1}
!141 = !{!"llvm.loop.unroll.runtime.disable"}
!142 = distinct !{!142, !16}
!143 = !{!93, !9, i64 56}
!144 = distinct !{!144, !16}
!145 = distinct !{!145, !16}
!146 = !{!147, !9, i64 0}
!147 = !{!"_ZTSNSt8__detail15_List_node_baseE", !9, i64 0, !9, i64 8}
!148 = distinct !{!148, !16}
!149 = !{!147, !9, i64 8}
!150 = !{!151, !94, i64 16}
!151 = !{!"_ZTSNSt8__detail17_List_node_headerE", !147, i64 0, !94, i64 16}
!152 = distinct !{!152, !16}
!153 = distinct !{!153, !16}
!154 = distinct !{!154, !16}
!155 = distinct !{!155, !16}
!156 = !{!157, !94, i64 16}
!157 = !{!"_ZTSNSt7__cxx1110_List_baseIdSaIdEEE", !158, i64 0}
!158 = !{!"_ZTSNSt7__cxx1110_List_baseIdSaIdEE10_List_implE", !151, i64 0}
!159 = distinct !{!159, !16}
!160 = distinct !{!160, !16}
!161 = distinct !{!161, !16}
!162 = !{!163, !9, i64 16}
!163 = !{!"_ZTSSt15_Rb_tree_header", !164, i64 0, !94, i64 32}
!164 = !{!"_ZTSSt18_Rb_tree_node_base", !165, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!165 = !{!"_ZTSSt14_Rb_tree_color", !10, i64 0}
!166 = !{!163, !9, i64 24}
!167 = !{!163, !94, i64 32}
!168 = distinct !{!168, !16}
!169 = !{!163, !9, i64 8}
!170 = !{!164, !9, i64 24}
!171 = !{!164, !9, i64 16}
!172 = distinct !{!172, !16}
!173 = distinct !{!173, !16}
!174 = distinct !{!174, !16}
!175 = distinct !{!175, !16}
!176 = distinct !{!176, !16}
!177 = distinct !{!177, !16}
!178 = distinct !{!178, !16}
!179 = distinct !{!179, !16}
